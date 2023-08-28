; ModuleID = '../bcout/drivers/acpi/acpica/utownerid.llvm.bc'
source_filename = "drivers/acpi/acpica/utownerid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@_acpi_module_name = internal constant [10 x i8] c"utownerid\00", align 1, !dbg !0
@.str = private unnamed_addr constant [34 x i8] c"Owner ID [0x%3.3X] already exists\00", align 1
@acpi_gbl_last_owner_id_index = external dso_local global i8, align 1
@acpi_gbl_next_owner_id_offset = external dso_local global i8, align 1
@acpi_gbl_owner_id_mask = external dso_local global [128 x i32], align 16
@.str.1 = private unnamed_addr constant [61 x i8] c"Could not allocate new OwnerId (4095 max), AE_OWNER_ID_LIMIT\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid OwnerId: 0x%3.3X\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Attempted release of non-allocated OwnerId: 0x%3.3X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_allocate_owner_id(i16* %owner_id) #0 !dbg !31 {
entry:
  %retval = alloca i32, align 4
  %owner_id.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %status = alloca i32, align 4
  store i16* %owner_id, i16** %owner_id.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %owner_id.addr, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %j, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %k, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %status, metadata !43, metadata !DIExpression()), !dbg !44
  %0 = load i16*, i16** %owner_id.addr, align 8, !dbg !45
  %1 = load i16, i16* %0, align 2, !dbg !47
  %tobool = icmp ne i16 %1, 0, !dbg !47
  br i1 %tobool, label %if.then, label %if.end, !dbg !48

if.then:                                          ; preds = %entry
  %2 = load i16*, i16** %owner_id.addr, align 8, !dbg !49
  %3 = load i16, i16* %2, align 2, !dbg !49
  %conv = zext i16 %3 to i32, !dbg !49
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %conv) #3, !dbg !49
  store i32 7, i32* %retval, align 4, !dbg !51
  br label %return, !dbg !51

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 4) #3, !dbg !52
  store i32 %call, i32* %status, align 4, !dbg !53
  %4 = load i32, i32* %status, align 4, !dbg !54
  %tobool1 = icmp ne i32 %4, 0, !dbg !54
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !56

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %status, align 4, !dbg !57
  store i32 %5, i32* %retval, align 4, !dbg !57
  br label %return, !dbg !57

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !59
  %6 = load i8, i8* @acpi_gbl_last_owner_id_index, align 1, !dbg !61
  %conv4 = zext i8 %6 to i32, !dbg !61
  store i32 %conv4, i32* %j, align 4, !dbg !62
  br label %for.cond, !dbg !63

for.cond:                                         ; preds = %for.inc33, %if.end3
  %7 = load i32, i32* %i, align 4, !dbg !64
  %cmp = icmp ult i32 %7, 129, !dbg !66
  br i1 %cmp, label %for.body, label %for.end36, !dbg !67

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %j, align 4, !dbg !68
  %cmp6 = icmp uge i32 %8, 128, !dbg !71
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !72

if.then8:                                         ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !73
  br label %if.end9, !dbg !75

if.end9:                                          ; preds = %if.then8, %for.body
  %9 = load i8, i8* @acpi_gbl_next_owner_id_offset, align 1, !dbg !76
  %conv10 = zext i8 %9 to i32, !dbg !76
  store i32 %conv10, i32* %k, align 4, !dbg !78
  br label %for.cond11, !dbg !79

for.cond11:                                       ; preds = %for.inc, %if.end9
  %10 = load i32, i32* %k, align 4, !dbg !80
  %cmp12 = icmp ult i32 %10, 32, !dbg !82
  br i1 %cmp12, label %for.body14, label %for.end, !dbg !83

for.body14:                                       ; preds = %for.cond11
  %11 = load i32, i32* %j, align 4, !dbg !84
  %idxprom = zext i32 %11 to i64, !dbg !87
  %arrayidx = getelementptr [128 x i32], [128 x i32]* @acpi_gbl_owner_id_mask, i64 0, i64 %idxprom, !dbg !87
  %12 = load i32, i32* %arrayidx, align 4, !dbg !87
  %cmp15 = icmp eq i32 %12, -1, !dbg !88
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !89

if.then17:                                        ; preds = %for.body14
  br label %for.end, !dbg !90

if.end18:                                         ; preds = %for.body14
  %13 = load i32, i32* %j, align 4, !dbg !92
  %idxprom19 = zext i32 %13 to i64, !dbg !94
  %arrayidx20 = getelementptr [128 x i32], [128 x i32]* @acpi_gbl_owner_id_mask, i64 0, i64 %idxprom19, !dbg !94
  %14 = load i32, i32* %arrayidx20, align 4, !dbg !94
  %15 = load i32, i32* %k, align 4, !dbg !95
  %shl = shl i32 1, %15, !dbg !96
  %and = and i32 %14, %shl, !dbg !97
  %tobool21 = icmp ne i32 %and, 0, !dbg !97
  br i1 %tobool21, label %if.end32, label %if.then22, !dbg !98

if.then22:                                        ; preds = %if.end18
  %16 = load i32, i32* %k, align 4, !dbg !99
  %shl23 = shl i32 1, %16, !dbg !101
  %17 = load i32, i32* %j, align 4, !dbg !102
  %idxprom24 = zext i32 %17 to i64, !dbg !103
  %arrayidx25 = getelementptr [128 x i32], [128 x i32]* @acpi_gbl_owner_id_mask, i64 0, i64 %idxprom24, !dbg !103
  %18 = load i32, i32* %arrayidx25, align 4, !dbg !104
  %or = or i32 %18, %shl23, !dbg !104
  store i32 %or, i32* %arrayidx25, align 4, !dbg !104
  %19 = load i32, i32* %j, align 4, !dbg !105
  %conv26 = trunc i32 %19 to i8, !dbg !106
  store i8 %conv26, i8* @acpi_gbl_last_owner_id_index, align 1, !dbg !107
  %20 = load i32, i32* %k, align 4, !dbg !108
  %add = add i32 %20, 1, !dbg !109
  %conv27 = trunc i32 %add to i8, !dbg !110
  store i8 %conv27, i8* @acpi_gbl_next_owner_id_offset, align 1, !dbg !111
  %21 = load i32, i32* %k, align 4, !dbg !112
  %add28 = add i32 %21, 1, !dbg !113
  %22 = load i32, i32* %j, align 4, !dbg !114
  %shl29 = shl i32 %22, 5, !dbg !114
  %add30 = add i32 %add28, %shl29, !dbg !115
  %conv31 = trunc i32 %add30 to i16, !dbg !116
  %23 = load i16*, i16** %owner_id.addr, align 8, !dbg !117
  store i16 %conv31, i16* %23, align 2, !dbg !118
  br label %exit, !dbg !119

if.end32:                                         ; preds = %if.end18
  br label %for.inc, !dbg !120

for.inc:                                          ; preds = %if.end32
  %24 = load i32, i32* %k, align 4, !dbg !121
  %inc = add i32 %24, 1, !dbg !121
  store i32 %inc, i32* %k, align 4, !dbg !121
  br label %for.cond11, !dbg !122, !llvm.loop !123

for.end:                                          ; preds = %if.then17, %for.cond11
  store i8 0, i8* @acpi_gbl_next_owner_id_offset, align 1, !dbg !125
  br label %for.inc33, !dbg !126

for.inc33:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4, !dbg !127
  %inc34 = add i32 %25, 1, !dbg !127
  store i32 %inc34, i32* %i, align 4, !dbg !127
  %26 = load i32, i32* %j, align 4, !dbg !128
  %inc35 = add i32 %26, 1, !dbg !128
  store i32 %inc35, i32* %j, align 4, !dbg !128
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end36:                                        ; preds = %for.cond
  store i32 27, i32* %status, align 4, !dbg !132
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 118, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !133
  br label %exit, !dbg !133

exit:                                             ; preds = %for.end36, %if.then22
  call void @llvm.dbg.label(metadata !134), !dbg !135
  %call37 = call i32 @acpi_ut_release_mutex(i32 4) #3, !dbg !136
  %27 = load i32, i32* %status, align 4, !dbg !137
  store i32 %27, i32* %retval, align 4, !dbg !137
  br label %return, !dbg !137

return:                                           ; preds = %exit, %if.then2, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !138
  ret i32 %28, !dbg !138
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_release_owner_id(i16* %owner_id_ptr) #0 !dbg !139 {
entry:
  %owner_id_ptr.addr = alloca i16*, align 8
  %owner_id = alloca i16, align 2
  %status = alloca i32, align 4
  %index = alloca i32, align 4
  %bit = alloca i32, align 4
  store i16* %owner_id_ptr, i16** %owner_id_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %owner_id_ptr.addr, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i16* %owner_id, metadata !144, metadata !DIExpression()), !dbg !145
  %0 = load i16*, i16** %owner_id_ptr.addr, align 8, !dbg !146
  %1 = load i16, i16* %0, align 2, !dbg !147
  store i16 %1, i16* %owner_id, align 2, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %status, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i32* %index, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %bit, metadata !152, metadata !DIExpression()), !dbg !153
  %2 = load i16*, i16** %owner_id_ptr.addr, align 8, !dbg !154
  store i16 0, i16* %2, align 2, !dbg !155
  %3 = load i16, i16* %owner_id, align 2, !dbg !156
  %conv = zext i16 %3 to i32, !dbg !156
  %cmp = icmp eq i32 %conv, 0, !dbg !158
  br i1 %cmp, label %if.then, label %if.end, !dbg !159

if.then:                                          ; preds = %entry
  %4 = load i16, i16* %owner_id, align 2, !dbg !160
  %conv2 = zext i16 %4 to i32, !dbg !160
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %conv2) #3, !dbg !160
  br label %return, !dbg !162

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 4) #3, !dbg !163
  store i32 %call, i32* %status, align 4, !dbg !164
  %5 = load i32, i32* %status, align 4, !dbg !165
  %tobool = icmp ne i32 %5, 0, !dbg !165
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !167

if.then3:                                         ; preds = %if.end
  br label %return, !dbg !168

if.end4:                                          ; preds = %if.end
  %6 = load i16, i16* %owner_id, align 2, !dbg !170
  %dec = add i16 %6, -1, !dbg !170
  store i16 %dec, i16* %owner_id, align 2, !dbg !170
  %7 = load i16, i16* %owner_id, align 2, !dbg !171
  %conv5 = zext i16 %7 to i32, !dbg !171
  %shr = ashr i32 %conv5, 5, !dbg !171
  store i32 %shr, i32* %index, align 4, !dbg !172
  %8 = load i16, i16* %owner_id, align 2, !dbg !173
  %conv6 = zext i16 %8 to i32, !dbg !173
  %and = and i32 %conv6, 31, !dbg !173
  %shl = shl i32 1, %and, !dbg !174
  store i32 %shl, i32* %bit, align 4, !dbg !175
  %9 = load i32, i32* %index, align 4, !dbg !176
  %idxprom = zext i32 %9 to i64, !dbg !178
  %arrayidx = getelementptr [128 x i32], [128 x i32]* @acpi_gbl_owner_id_mask, i64 0, i64 %idxprom, !dbg !178
  %10 = load i32, i32* %arrayidx, align 4, !dbg !178
  %11 = load i32, i32* %bit, align 4, !dbg !179
  %and7 = and i32 %10, %11, !dbg !180
  %tobool8 = icmp ne i32 %and7, 0, !dbg !180
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !181

if.then9:                                         ; preds = %if.end4
  %12 = load i32, i32* %bit, align 4, !dbg !182
  %13 = load i32, i32* %index, align 4, !dbg !184
  %idxprom10 = zext i32 %13 to i64, !dbg !185
  %arrayidx11 = getelementptr [128 x i32], [128 x i32]* @acpi_gbl_owner_id_mask, i64 0, i64 %idxprom10, !dbg !185
  %14 = load i32, i32* %arrayidx11, align 4, !dbg !186
  %xor = xor i32 %14, %12, !dbg !186
  store i32 %xor, i32* %arrayidx11, align 4, !dbg !186
  br label %if.end13, !dbg !187

if.else:                                          ; preds = %if.end4
  %15 = load i16, i16* %owner_id, align 2, !dbg !188
  %conv12 = zext i16 %15 to i32, !dbg !188
  %add = add i32 %conv12, 1, !dbg !188
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 181, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %add) #3, !dbg !188
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %call14 = call i32 @acpi_ut_release_mutex(i32 4) #3, !dbg !190
  br label %return, !dbg !191

return:                                           ; preds = %if.end13, %if.then3, %if.then
  ret void, !dbg !192
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 13, type: !21, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !20, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utownerid.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !8, !13, !16}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !19)
!19 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!20 = !{!0}
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 80, elements: !24)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{!25}
!25 = !DISubrange(count: 10)
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"Code Model", i32 2}
!30 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!31 = distinct !DISubprogram(name: "acpi_ut_allocate_owner_id", scope: !3, file: !3, line: 28, type: !32, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!32 = !DISubroutineType(types: !33)
!33 = !{!6, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!35 = !DILocalVariable(name: "owner_id", arg: 1, scope: !31, file: !3, line: 28, type: !34)
!36 = !DILocation(line: 28, column: 54, scope: !31)
!37 = !DILocalVariable(name: "i", scope: !31, file: !3, line: 30, type: !8)
!38 = !DILocation(line: 30, column: 6, scope: !31)
!39 = !DILocalVariable(name: "j", scope: !31, file: !3, line: 31, type: !8)
!40 = !DILocation(line: 31, column: 6, scope: !31)
!41 = !DILocalVariable(name: "k", scope: !31, file: !3, line: 32, type: !8)
!42 = !DILocation(line: 32, column: 6, scope: !31)
!43 = !DILocalVariable(name: "status", scope: !31, file: !3, line: 33, type: !6)
!44 = !DILocation(line: 33, column: 14, scope: !31)
!45 = !DILocation(line: 39, column: 7, scope: !46)
!46 = distinct !DILexicalBlock(scope: !31, file: !3, line: 39, column: 6)
!47 = !DILocation(line: 39, column: 6, scope: !46)
!48 = !DILocation(line: 39, column: 6, scope: !31)
!49 = !DILocation(line: 40, column: 3, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !3, line: 39, column: 17)
!51 = !DILocation(line: 42, column: 3, scope: !50)
!52 = !DILocation(line: 47, column: 11, scope: !31)
!53 = !DILocation(line: 47, column: 9, scope: !31)
!54 = !DILocation(line: 48, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !31, file: !3, line: 48, column: 6)
!56 = !DILocation(line: 48, column: 6, scope: !31)
!57 = !DILocation(line: 49, column: 3, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !3, line: 48, column: 28)
!59 = !DILocation(line: 57, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !31, file: !3, line: 57, column: 2)
!61 = !DILocation(line: 57, column: 18, scope: !60)
!62 = !DILocation(line: 57, column: 16, scope: !60)
!63 = !DILocation(line: 57, column: 7, scope: !60)
!64 = !DILocation(line: 58, column: 7, scope: !65)
!65 = distinct !DILexicalBlock(scope: !60, file: !3, line: 57, column: 2)
!66 = !DILocation(line: 58, column: 9, scope: !65)
!67 = !DILocation(line: 57, column: 2, scope: !60)
!68 = !DILocation(line: 59, column: 7, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 59, column: 7)
!70 = distinct !DILexicalBlock(scope: !65, file: !3, line: 58, column: 51)
!71 = !DILocation(line: 59, column: 9, scope: !69)
!72 = !DILocation(line: 59, column: 7, scope: !70)
!73 = !DILocation(line: 60, column: 6, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !3, line: 59, column: 36)
!75 = !DILocation(line: 61, column: 3, scope: !74)
!76 = !DILocation(line: 63, column: 12, scope: !77)
!77 = distinct !DILexicalBlock(scope: !70, file: !3, line: 63, column: 3)
!78 = !DILocation(line: 63, column: 10, scope: !77)
!79 = !DILocation(line: 63, column: 8, scope: !77)
!80 = !DILocation(line: 63, column: 43, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !3, line: 63, column: 3)
!82 = !DILocation(line: 63, column: 45, scope: !81)
!83 = !DILocation(line: 63, column: 3, scope: !77)
!84 = !DILocation(line: 64, column: 31, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !3, line: 64, column: 8)
!86 = distinct !DILexicalBlock(scope: !81, file: !3, line: 63, column: 56)
!87 = !DILocation(line: 64, column: 8, scope: !85)
!88 = !DILocation(line: 64, column: 34, scope: !85)
!89 = !DILocation(line: 64, column: 8, scope: !86)
!90 = !DILocation(line: 68, column: 5, scope: !91)
!91 = distinct !DILexicalBlock(scope: !85, file: !3, line: 64, column: 54)
!92 = !DILocation(line: 77, column: 33, scope: !93)
!93 = distinct !DILexicalBlock(scope: !86, file: !3, line: 77, column: 8)
!94 = !DILocation(line: 77, column: 10, scope: !93)
!95 = !DILocation(line: 77, column: 49, scope: !93)
!96 = !DILocation(line: 77, column: 46, scope: !93)
!97 = !DILocation(line: 77, column: 36, scope: !93)
!98 = !DILocation(line: 77, column: 8, scope: !86)
!99 = !DILocation(line: 83, column: 45, scope: !100)
!100 = distinct !DILexicalBlock(scope: !93, file: !3, line: 77, column: 54)
!101 = !DILocation(line: 83, column: 42, scope: !100)
!102 = !DILocation(line: 83, column: 28, scope: !100)
!103 = !DILocation(line: 83, column: 5, scope: !100)
!104 = !DILocation(line: 83, column: 31, scope: !100)
!105 = !DILocation(line: 85, column: 40, scope: !100)
!106 = !DILocation(line: 85, column: 36, scope: !100)
!107 = !DILocation(line: 85, column: 34, scope: !100)
!108 = !DILocation(line: 86, column: 42, scope: !100)
!109 = !DILocation(line: 86, column: 44, scope: !100)
!110 = !DILocation(line: 86, column: 37, scope: !100)
!111 = !DILocation(line: 86, column: 35, scope: !100)
!112 = !DILocation(line: 95, column: 26, scope: !100)
!113 = !DILocation(line: 95, column: 28, scope: !100)
!114 = !DILocation(line: 95, column: 35, scope: !100)
!115 = !DILocation(line: 95, column: 33, scope: !100)
!116 = !DILocation(line: 95, column: 9, scope: !100)
!117 = !DILocation(line: 94, column: 6, scope: !100)
!118 = !DILocation(line: 94, column: 15, scope: !100)
!119 = !DILocation(line: 100, column: 5, scope: !100)
!120 = !DILocation(line: 102, column: 3, scope: !86)
!121 = !DILocation(line: 63, column: 52, scope: !81)
!122 = !DILocation(line: 63, column: 3, scope: !81)
!123 = distinct !{!123, !83, !124}
!124 = !DILocation(line: 102, column: 3, scope: !77)
!125 = !DILocation(line: 104, column: 33, scope: !70)
!126 = !DILocation(line: 105, column: 2, scope: !70)
!127 = !DILocation(line: 58, column: 42, scope: !65)
!128 = !DILocation(line: 58, column: 47, scope: !65)
!129 = !DILocation(line: 57, column: 2, scope: !65)
!130 = distinct !{!130, !67, !131}
!131 = !DILocation(line: 105, column: 2, scope: !60)
!132 = !DILocation(line: 117, column: 9, scope: !31)
!133 = !DILocation(line: 118, column: 2, scope: !31)
!134 = !DILabel(scope: !31, name: "exit", file: !3, line: 121)
!135 = !DILocation(line: 121, column: 1, scope: !31)
!136 = !DILocation(line: 122, column: 8, scope: !31)
!137 = !DILocation(line: 123, column: 2, scope: !31)
!138 = !DILocation(line: 124, column: 1, scope: !31)
!139 = distinct !DISubprogram(name: "acpi_ut_release_owner_id", scope: !3, file: !3, line: 140, type: !140, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !34}
!142 = !DILocalVariable(name: "owner_id_ptr", arg: 1, scope: !139, file: !3, line: 140, type: !34)
!143 = !DILocation(line: 140, column: 46, scope: !139)
!144 = !DILocalVariable(name: "owner_id", scope: !139, file: !3, line: 142, type: !16)
!145 = !DILocation(line: 142, column: 16, scope: !139)
!146 = !DILocation(line: 142, column: 28, scope: !139)
!147 = !DILocation(line: 142, column: 27, scope: !139)
!148 = !DILocalVariable(name: "status", scope: !139, file: !3, line: 143, type: !6)
!149 = !DILocation(line: 143, column: 14, scope: !139)
!150 = !DILocalVariable(name: "index", scope: !139, file: !3, line: 144, type: !8)
!151 = !DILocation(line: 144, column: 6, scope: !139)
!152 = !DILocalVariable(name: "bit", scope: !139, file: !3, line: 145, type: !8)
!153 = !DILocation(line: 145, column: 6, scope: !139)
!154 = !DILocation(line: 151, column: 3, scope: !139)
!155 = !DILocation(line: 151, column: 16, scope: !139)
!156 = !DILocation(line: 155, column: 6, scope: !157)
!157 = distinct !DILexicalBlock(scope: !139, file: !3, line: 155, column: 6)
!158 = !DILocation(line: 155, column: 15, scope: !157)
!159 = !DILocation(line: 155, column: 6, scope: !139)
!160 = !DILocation(line: 156, column: 3, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !3, line: 155, column: 21)
!162 = !DILocation(line: 157, column: 3, scope: !161)
!163 = !DILocation(line: 162, column: 11, scope: !139)
!164 = !DILocation(line: 162, column: 9, scope: !139)
!165 = !DILocation(line: 163, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !139, file: !3, line: 163, column: 6)
!167 = !DILocation(line: 163, column: 6, scope: !139)
!168 = !DILocation(line: 164, column: 3, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !3, line: 163, column: 28)
!170 = !DILocation(line: 169, column: 10, scope: !139)
!171 = !DILocation(line: 173, column: 10, scope: !139)
!172 = !DILocation(line: 173, column: 8, scope: !139)
!173 = !DILocation(line: 174, column: 18, scope: !139)
!174 = !DILocation(line: 174, column: 15, scope: !139)
!175 = !DILocation(line: 174, column: 6, scope: !139)
!176 = !DILocation(line: 178, column: 29, scope: !177)
!177 = distinct !DILexicalBlock(scope: !139, file: !3, line: 178, column: 6)
!178 = !DILocation(line: 178, column: 6, scope: !177)
!179 = !DILocation(line: 178, column: 38, scope: !177)
!180 = !DILocation(line: 178, column: 36, scope: !177)
!181 = !DILocation(line: 178, column: 6, scope: !139)
!182 = !DILocation(line: 179, column: 36, scope: !183)
!183 = distinct !DILexicalBlock(scope: !177, file: !3, line: 178, column: 43)
!184 = !DILocation(line: 179, column: 26, scope: !183)
!185 = !DILocation(line: 179, column: 3, scope: !183)
!186 = !DILocation(line: 179, column: 33, scope: !183)
!187 = !DILocation(line: 180, column: 2, scope: !183)
!188 = !DILocation(line: 181, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !177, file: !3, line: 180, column: 9)
!190 = !DILocation(line: 186, column: 8, scope: !139)
!191 = !DILocation(line: 187, column: 2, scope: !139)
!192 = !DILocation(line: 188, column: 1, scope: !139)
