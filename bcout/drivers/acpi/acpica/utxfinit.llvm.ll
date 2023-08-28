; ModuleID = '../bcout/drivers/acpi/acpica/utxfinit.llvm.bc'
source_filename = "drivers/acpi/acpica/utxfinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@acpi_gbl_startup_flags = external dso_local global i32, align 4
@_acpi_module_name = internal constant [9 x i8] c"utxfinit\00", align 1, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"During OSL initialization\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"During initialization of globals\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"During Global Mutex creation\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"During Namespace initialization\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"During OSI interfaces initialization\00", align 1
@acpi_gbl_early_initialization = external dso_local global i8, align 1
@acpi_gbl_original_mode = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"AcpiEnable failed\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Could not map the FACS table\00", align 1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_initialize_subsystem() #0 section ".init.text" !dbg !24 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 1, i32* @acpi_gbl_startup_flags, align 4, !dbg !28
  %call = call i32 @acpi_os_initialize() #4, !dbg !29
  store i32 %call, i32* %status, align 4, !dbg !30
  %0 = load i32, i32* %status, align 4, !dbg !31
  %tobool = icmp ne i32 %0, 0, !dbg !31
  br i1 %tobool, label %if.then, label %if.end, !dbg !33

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !34
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 51, i32 %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #5, !dbg !34
  %2 = load i32, i32* %status, align 4, !dbg !36
  store i32 %2, i32* %retval, align 4, !dbg !36
  br label %return, !dbg !36

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_ut_init_globals() #5, !dbg !37
  store i32 %call1, i32* %status, align 4, !dbg !38
  %3 = load i32, i32* %status, align 4, !dbg !39
  %tobool2 = icmp ne i32 %3, 0, !dbg !39
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !41

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %status, align 4, !dbg !42
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 59, i32 %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !42
  %5 = load i32, i32* %status, align 4, !dbg !44
  store i32 %5, i32* %retval, align 4, !dbg !44
  br label %return, !dbg !44

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @acpi_ut_mutex_initialize() #5, !dbg !45
  store i32 %call5, i32* %status, align 4, !dbg !46
  %6 = load i32, i32* %status, align 4, !dbg !47
  %tobool6 = icmp ne i32 %6, 0, !dbg !47
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !49

if.then7:                                         ; preds = %if.end4
  %7 = load i32, i32* %status, align 4, !dbg !50
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 68, i32 %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !50
  %8 = load i32, i32* %status, align 4, !dbg !52
  store i32 %8, i32* %retval, align 4, !dbg !52
  br label %return, !dbg !52

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @acpi_ns_root_initialize() #5, !dbg !53
  store i32 %call9, i32* %status, align 4, !dbg !54
  %9 = load i32, i32* %status, align 4, !dbg !55
  %tobool10 = icmp ne i32 %9, 0, !dbg !55
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !57

if.then11:                                        ; preds = %if.end8
  %10 = load i32, i32* %status, align 4, !dbg !58
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 79, i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !58
  %11 = load i32, i32* %status, align 4, !dbg !60
  store i32 %11, i32* %retval, align 4, !dbg !60
  br label %return, !dbg !60

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @acpi_ut_initialize_interfaces() #5, !dbg !61
  store i32 %call13, i32* %status, align 4, !dbg !62
  %12 = load i32, i32* %status, align 4, !dbg !63
  %tobool14 = icmp ne i32 %12, 0, !dbg !63
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !65

if.then15:                                        ; preds = %if.end12
  %13 = load i32, i32* %status, align 4, !dbg !66
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 88, i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !66
  %14 = load i32, i32* %status, align 4, !dbg !68
  store i32 %14, i32* %retval, align 4, !dbg !68
  br label %return, !dbg !68

if.end16:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !69
  br label %return, !dbg !69

return:                                           ; preds = %if.end16, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !70
  ret i32 %15, !dbg !70
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @acpi_os_initialize() #2 section ".init.text"

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_init_globals() #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_mutex_initialize() #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_root_initialize() #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_initialize_interfaces() #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_enable_subsystem(i32 %flags) #0 section ".init.text" !dbg !71 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %status, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 0, i32* %status, align 4, !dbg !77
  store i8 0, i8* @acpi_gbl_early_initialization, align 1, !dbg !78
  %0 = load i32, i32* %flags.addr, align 4, !dbg !79
  %and = and i32 %0, 2, !dbg !81
  %tobool = icmp ne i32 %and, 0, !dbg !81
  br i1 %tobool, label %if.end4, label %if.then, !dbg !82

if.then:                                          ; preds = %entry
  %call = call i32 @acpi_hw_get_mode() #5, !dbg !83
  store i32 %call, i32* @acpi_gbl_original_mode, align 4, !dbg !85
  %call1 = call i32 @acpi_enable() #5, !dbg !86
  store i32 %call1, i32* %status, align 4, !dbg !87
  %1 = load i32, i32* %status, align 4, !dbg !88
  %tobool2 = icmp ne i32 %1, 0, !dbg !88
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !90

if.then3:                                         ; preds = %if.then
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !91
  %2 = load i32, i32* %status, align 4, !dbg !93
  store i32 %2, i32* %retval, align 4, !dbg !93
  br label %return, !dbg !93

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !94

if.end4:                                          ; preds = %if.end, %entry
  %3 = load i32, i32* %flags.addr, align 4, !dbg !95
  %and5 = and i32 %3, 1, !dbg !97
  %tobool6 = icmp ne i32 %and5, 0, !dbg !97
  br i1 %tobool6, label %if.end12, label %if.then7, !dbg !98

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @acpi_tb_initialize_facs() #5, !dbg !99
  store i32 %call8, i32* %status, align 4, !dbg !101
  %4 = load i32, i32* %status, align 4, !dbg !102
  %tobool9 = icmp ne i32 %4, 0, !dbg !102
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !104

if.then10:                                        ; preds = %if.then7
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !105
  %5 = load i32, i32* %status, align 4, !dbg !107
  store i32 %5, i32* %retval, align 4, !dbg !107
  br label %return, !dbg !107

if.end11:                                         ; preds = %if.then7
  br label %if.end12, !dbg !108

if.end12:                                         ; preds = %if.end11, %if.end4
  %6 = load i32, i32* %flags.addr, align 4, !dbg !109
  %and13 = and i32 %6, 8, !dbg !111
  %tobool14 = icmp ne i32 %and13, 0, !dbg !111
  br i1 %tobool14, label %if.end20, label %if.then15, !dbg !112

if.then15:                                        ; preds = %if.end12
  %call16 = call i32 @acpi_ev_initialize_events() #5, !dbg !113
  store i32 %call16, i32* %status, align 4, !dbg !115
  %7 = load i32, i32* %status, align 4, !dbg !116
  %tobool17 = icmp ne i32 %7, 0, !dbg !116
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !118

if.then18:                                        ; preds = %if.then15
  %8 = load i32, i32* %status, align 4, !dbg !119
  store i32 %8, i32* %retval, align 4, !dbg !119
  br label %return, !dbg !119

if.end19:                                         ; preds = %if.then15
  br label %if.end20, !dbg !121

if.end20:                                         ; preds = %if.end19, %if.end12
  %9 = load i32, i32* %flags.addr, align 4, !dbg !122
  %and21 = and i32 %9, 16, !dbg !124
  %tobool22 = icmp ne i32 %and21, 0, !dbg !124
  br i1 %tobool22, label %if.end28, label %if.then23, !dbg !125

if.then23:                                        ; preds = %if.end20
  %call24 = call i32 @acpi_ev_install_xrupt_handlers() #5, !dbg !126
  store i32 %call24, i32* %status, align 4, !dbg !128
  %10 = load i32, i32* %status, align 4, !dbg !129
  %tobool25 = icmp ne i32 %10, 0, !dbg !129
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !131

if.then26:                                        ; preds = %if.then23
  %11 = load i32, i32* %status, align 4, !dbg !132
  store i32 %11, i32* %retval, align 4, !dbg !132
  br label %return, !dbg !132

if.end27:                                         ; preds = %if.then23
  br label %if.end28, !dbg !134

if.end28:                                         ; preds = %if.end27, %if.end20
  %12 = load i32, i32* %status, align 4, !dbg !135
  store i32 %12, i32* %retval, align 4, !dbg !135
  br label %return, !dbg !135

return:                                           ; preds = %if.end28, %if.then26, %if.then18, %if.then10, %if.then3
  %13 = load i32, i32* %retval, align 4, !dbg !136
  ret i32 %13, !dbg !136
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_get_mode() #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_enable() #3

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_initialize_facs() #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_initialize_events() #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_install_xrupt_handlers() #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_initialize_objects(i32 %flags) #0 section ".init.text" !dbg !137 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %status, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 0, i32* %status, align 4, !dbg !141
  %0 = load i32, i32* %flags.addr, align 4, !dbg !142
  %and = and i32 %0, 192, !dbg !144
  %tobool = icmp ne i32 %and, 0, !dbg !144
  br i1 %tobool, label %if.end3, label %if.then, !dbg !145

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %flags.addr, align 4, !dbg !146
  %call = call i32 @acpi_ns_initialize_devices(i32 %1) #5, !dbg !148
  store i32 %call, i32* %status, align 4, !dbg !149
  %2 = load i32, i32* %status, align 4, !dbg !150
  %tobool1 = icmp ne i32 %2, 0, !dbg !150
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !152

if.then2:                                         ; preds = %if.then
  %3 = load i32, i32* %status, align 4, !dbg !153
  store i32 %3, i32* %retval, align 4, !dbg !153
  br label %return, !dbg !153

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !155

if.end3:                                          ; preds = %if.end, %entry
  %call4 = call i32 @acpi_purge_cached_objects() #5, !dbg !156
  store i32 %call4, i32* %status, align 4, !dbg !157
  %4 = load i32, i32* @acpi_gbl_startup_flags, align 4, !dbg !158
  %or = or i32 %4, 2, !dbg !158
  store i32 %or, i32* @acpi_gbl_startup_flags, align 4, !dbg !158
  %5 = load i32, i32* %status, align 4, !dbg !159
  store i32 %5, i32* %retval, align 4, !dbg !159
  br label %return, !dbg !159

return:                                           ; preds = %if.end3, %if.then2
  %6 = load i32, i32* %retval, align 4, !dbg !160
  ret i32 %6, !dbg !160
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_initialize_devices(i32) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_purge_cached_objects() #3

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 20, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utxfinit.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!0}
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 72, elements: !17)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18}
!18 = !DISubrange(count: 9)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"Code Model", i32 2}
!23 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!24 = distinct !DISubprogram(name: "acpi_initialize_subsystem", scope: !3, file: !3, line: 38, type: !25, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!25 = !DISubroutineType(types: !5)
!26 = !DILocalVariable(name: "status", scope: !24, file: !3, line: 40, type: !6)
!27 = !DILocation(line: 40, column: 14, scope: !24)
!28 = !DILocation(line: 44, column: 25, scope: !24)
!29 = !DILocation(line: 49, column: 11, scope: !24)
!30 = !DILocation(line: 49, column: 9, scope: !24)
!31 = !DILocation(line: 50, column: 6, scope: !32)
!32 = distinct !DILexicalBlock(scope: !24, file: !3, line: 50, column: 6)
!33 = !DILocation(line: 50, column: 6, scope: !24)
!34 = !DILocation(line: 51, column: 3, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !3, line: 50, column: 28)
!36 = !DILocation(line: 52, column: 3, scope: !35)
!37 = !DILocation(line: 57, column: 11, scope: !24)
!38 = !DILocation(line: 57, column: 9, scope: !24)
!39 = !DILocation(line: 58, column: 6, scope: !40)
!40 = distinct !DILexicalBlock(scope: !24, file: !3, line: 58, column: 6)
!41 = !DILocation(line: 58, column: 6, scope: !24)
!42 = !DILocation(line: 59, column: 3, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !3, line: 58, column: 28)
!44 = !DILocation(line: 61, column: 3, scope: !43)
!45 = !DILocation(line: 66, column: 11, scope: !24)
!46 = !DILocation(line: 66, column: 9, scope: !24)
!47 = !DILocation(line: 67, column: 6, scope: !48)
!48 = distinct !DILexicalBlock(scope: !24, file: !3, line: 67, column: 6)
!49 = !DILocation(line: 67, column: 6, scope: !24)
!50 = !DILocation(line: 68, column: 3, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !3, line: 67, column: 28)
!52 = !DILocation(line: 70, column: 3, scope: !51)
!53 = !DILocation(line: 77, column: 11, scope: !24)
!54 = !DILocation(line: 77, column: 9, scope: !24)
!55 = !DILocation(line: 78, column: 6, scope: !56)
!56 = distinct !DILexicalBlock(scope: !24, file: !3, line: 78, column: 6)
!57 = !DILocation(line: 78, column: 6, scope: !24)
!58 = !DILocation(line: 79, column: 3, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !3, line: 78, column: 28)
!60 = !DILocation(line: 81, column: 3, scope: !59)
!61 = !DILocation(line: 86, column: 11, scope: !24)
!62 = !DILocation(line: 86, column: 9, scope: !24)
!63 = !DILocation(line: 87, column: 6, scope: !64)
!64 = distinct !DILexicalBlock(scope: !24, file: !3, line: 87, column: 6)
!65 = !DILocation(line: 87, column: 6, scope: !24)
!66 = !DILocation(line: 88, column: 3, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !3, line: 87, column: 28)
!68 = !DILocation(line: 90, column: 3, scope: !67)
!69 = !DILocation(line: 93, column: 2, scope: !24)
!70 = !DILocation(line: 94, column: 1, scope: !24)
!71 = distinct !DISubprogram(name: "acpi_enable_subsystem", scope: !3, file: !3, line: 110, type: !72, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!72 = !DISubroutineType(types: !73)
!73 = !{!6, !8}
!74 = !DILocalVariable(name: "flags", arg: 1, scope: !71, file: !3, line: 110, type: !8)
!75 = !DILocation(line: 110, column: 58, scope: !71)
!76 = !DILocalVariable(name: "status", scope: !71, file: !3, line: 112, type: !6)
!77 = !DILocation(line: 112, column: 14, scope: !71)
!78 = !DILocation(line: 121, column: 32, scope: !71)
!79 = !DILocation(line: 127, column: 8, scope: !80)
!80 = distinct !DILexicalBlock(scope: !71, file: !3, line: 127, column: 6)
!81 = !DILocation(line: 127, column: 14, scope: !80)
!82 = !DILocation(line: 127, column: 6, scope: !71)
!83 = !DILocation(line: 131, column: 28, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !3, line: 127, column: 38)
!85 = !DILocation(line: 131, column: 26, scope: !84)
!86 = !DILocation(line: 133, column: 12, scope: !84)
!87 = !DILocation(line: 133, column: 10, scope: !84)
!88 = !DILocation(line: 134, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !3, line: 134, column: 7)
!90 = !DILocation(line: 134, column: 7, scope: !84)
!91 = !DILocation(line: 135, column: 4, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !3, line: 134, column: 29)
!93 = !DILocation(line: 136, column: 4, scope: !92)
!94 = !DILocation(line: 138, column: 2, scope: !84)
!95 = !DILocation(line: 144, column: 8, scope: !96)
!96 = distinct !DILexicalBlock(scope: !71, file: !3, line: 144, column: 6)
!97 = !DILocation(line: 144, column: 14, scope: !96)
!98 = !DILocation(line: 144, column: 6, scope: !71)
!99 = !DILocation(line: 145, column: 12, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !3, line: 144, column: 36)
!101 = !DILocation(line: 145, column: 10, scope: !100)
!102 = !DILocation(line: 146, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !3, line: 146, column: 7)
!104 = !DILocation(line: 146, column: 7, scope: !100)
!105 = !DILocation(line: 147, column: 4, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !3, line: 146, column: 29)
!107 = !DILocation(line: 148, column: 4, scope: !106)
!108 = !DILocation(line: 150, column: 2, scope: !100)
!109 = !DILocation(line: 166, column: 8, scope: !110)
!110 = distinct !DILexicalBlock(scope: !71, file: !3, line: 166, column: 6)
!111 = !DILocation(line: 166, column: 14, scope: !110)
!112 = !DILocation(line: 166, column: 6, scope: !71)
!113 = !DILocation(line: 170, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !3, line: 166, column: 37)
!115 = !DILocation(line: 170, column: 10, scope: !114)
!116 = !DILocation(line: 171, column: 7, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !3, line: 171, column: 7)
!118 = !DILocation(line: 171, column: 7, scope: !114)
!119 = !DILocation(line: 172, column: 4, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !3, line: 171, column: 29)
!121 = !DILocation(line: 174, column: 2, scope: !114)
!122 = !DILocation(line: 180, column: 8, scope: !123)
!123 = distinct !DILexicalBlock(scope: !71, file: !3, line: 180, column: 6)
!124 = !DILocation(line: 180, column: 14, scope: !123)
!125 = !DILocation(line: 180, column: 6, scope: !71)
!126 = !DILocation(line: 184, column: 12, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !3, line: 180, column: 39)
!128 = !DILocation(line: 184, column: 10, scope: !127)
!129 = !DILocation(line: 185, column: 7, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !3, line: 185, column: 7)
!131 = !DILocation(line: 185, column: 7, scope: !127)
!132 = !DILocation(line: 186, column: 4, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !3, line: 185, column: 29)
!134 = !DILocation(line: 188, column: 2, scope: !127)
!135 = !DILocation(line: 191, column: 2, scope: !71)
!136 = !DILocation(line: 192, column: 1, scope: !71)
!137 = distinct !DISubprogram(name: "acpi_initialize_objects", scope: !3, file: !3, line: 208, type: !72, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!138 = !DILocalVariable(name: "flags", arg: 1, scope: !137, file: !3, line: 208, type: !8)
!139 = !DILocation(line: 208, column: 60, scope: !137)
!140 = !DILocalVariable(name: "status", scope: !137, file: !3, line: 210, type: !6)
!141 = !DILocation(line: 210, column: 14, scope: !137)
!142 = !DILocation(line: 238, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !137, file: !3, line: 238, column: 6)
!144 = !DILocation(line: 238, column: 14, scope: !143)
!145 = !DILocation(line: 238, column: 6, scope: !137)
!146 = !DILocation(line: 239, column: 39, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !3, line: 238, column: 69)
!148 = !DILocation(line: 239, column: 12, scope: !147)
!149 = !DILocation(line: 239, column: 10, scope: !147)
!150 = !DILocation(line: 240, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !3, line: 240, column: 7)
!152 = !DILocation(line: 240, column: 7, scope: !147)
!153 = !DILocation(line: 241, column: 4, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !3, line: 240, column: 29)
!155 = !DILocation(line: 243, column: 2, scope: !147)
!156 = !DILocation(line: 250, column: 11, scope: !137)
!157 = !DILocation(line: 250, column: 9, scope: !137)
!158 = !DILocation(line: 252, column: 25, scope: !137)
!159 = !DILocation(line: 253, column: 2, scope: !137)
!160 = !DILocation(line: 254, column: 1, scope: !137)
