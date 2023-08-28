; ModuleID = '../bcout/drivers/acpi/acpica/utpredef.llvm.bc'
source_filename = "drivers/acpi/acpica/utpredef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>

@acpi_gbl_predefined_methods = external dso_local constant [0 x %union.acpi_predefined_info], align 1
@.str = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@ut_rtype_names = internal global [5 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"/Integer\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/String\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/Buffer\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/Package\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"/Reference\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_predefined_info* @acpi_ut_get_next_predefined_method(%union.acpi_predefined_info* %this_name) #0 !dbg !25 {
entry:
  %this_name.addr = alloca %union.acpi_predefined_info*, align 8
  store %union.acpi_predefined_info* %this_name, %union.acpi_predefined_info** %this_name.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_predefined_info** %this_name.addr, metadata !85, metadata !DIExpression()), !dbg !86
  %0 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %this_name.addr, align 8, !dbg !87
  %info = bitcast %union.acpi_predefined_info* %0 to %struct.acpi_name_info*, !dbg !89
  %expected_btypes = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info, i32 0, i32 2, !dbg !90
  %1 = load i8, i8* %expected_btypes, align 1, !dbg !90
  %conv = zext i8 %1 to i32, !dbg !87
  %and = and i32 %conv, 16, !dbg !91
  %tobool = icmp ne i32 %and, 0, !dbg !91
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !92

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %this_name.addr, align 8, !dbg !93
  %info1 = bitcast %union.acpi_predefined_info* %2 to %struct.acpi_name_info*, !dbg !94
  %expected_btypes2 = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info1, i32 0, i32 2, !dbg !95
  %3 = load i8, i8* %expected_btypes2, align 1, !dbg !95
  %conv3 = zext i8 %3 to i32, !dbg !93
  %cmp = icmp ne i32 %conv3, 63, !dbg !96
  br i1 %cmp, label %if.then, label %if.end, !dbg !97

if.then:                                          ; preds = %land.lhs.true
  %4 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %this_name.addr, align 8, !dbg !98
  %incdec.ptr = getelementptr %union.acpi_predefined_info, %union.acpi_predefined_info* %4, i32 1, !dbg !98
  store %union.acpi_predefined_info* %incdec.ptr, %union.acpi_predefined_info** %this_name.addr, align 8, !dbg !98
  br label %if.end, !dbg !100

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %this_name.addr, align 8, !dbg !101
  %incdec.ptr5 = getelementptr %union.acpi_predefined_info, %union.acpi_predefined_info* %5, i32 1, !dbg !101
  store %union.acpi_predefined_info* %incdec.ptr5, %union.acpi_predefined_info** %this_name.addr, align 8, !dbg !101
  %6 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %this_name.addr, align 8, !dbg !102
  ret %union.acpi_predefined_info* %6, !dbg !103
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_predefined_info* @acpi_ut_match_predefined_method(i8* %name) #0 !dbg !104 {
entry:
  %retval = alloca %union.acpi_predefined_info*, align 8
  %name.addr = alloca i8*, align 8
  %this_name = alloca %union.acpi_predefined_info*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata %union.acpi_predefined_info** %this_name, metadata !110, metadata !DIExpression()), !dbg !111
  %0 = load i8*, i8** %name.addr, align 8, !dbg !112
  %arrayidx = getelementptr i8, i8* %0, i64 0, !dbg !112
  %1 = load i8, i8* %arrayidx, align 1, !dbg !112
  %conv = sext i8 %1 to i32, !dbg !112
  %cmp = icmp ne i32 %conv, 95, !dbg !114
  br i1 %cmp, label %if.then, label %if.end, !dbg !115

if.then:                                          ; preds = %entry
  store %union.acpi_predefined_info* null, %union.acpi_predefined_info** %retval, align 8, !dbg !116
  br label %return, !dbg !116

if.end:                                           ; preds = %entry
  store %union.acpi_predefined_info* getelementptr inbounds ([0 x %union.acpi_predefined_info], [0 x %union.acpi_predefined_info]* @acpi_gbl_predefined_methods, i64 0, i64 0), %union.acpi_predefined_info** %this_name, align 8, !dbg !118
  br label %while.cond, !dbg !119

while.cond:                                       ; preds = %if.end9, %if.end
  %2 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %this_name, align 8, !dbg !120
  %info = bitcast %union.acpi_predefined_info* %2 to %struct.acpi_name_info*, !dbg !121
  %name2 = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info, i32 0, i32 0, !dbg !122
  %arrayidx3 = getelementptr [4 x i8], [4 x i8]* %name2, i64 0, i64 0, !dbg !120
  %3 = load i8, i8* %arrayidx3, align 1, !dbg !120
  %tobool = icmp ne i8 %3, 0, !dbg !119
  br i1 %tobool, label %while.body, label %while.end, !dbg !119

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %name.addr, align 8, !dbg !123
  %5 = bitcast i8* %4 to i32*, !dbg !123
  %6 = load i32, i32* %5, align 4, !dbg !123
  %7 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %this_name, align 8, !dbg !123
  %info4 = bitcast %union.acpi_predefined_info* %7 to %struct.acpi_name_info*, !dbg !123
  %name5 = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info4, i32 0, i32 0, !dbg !123
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %name5, i64 0, i64 0, !dbg !123
  %8 = bitcast i8* %arraydecay to i32*, !dbg !123
  %9 = load i32, i32* %8, align 4, !dbg !123
  %cmp6 = icmp eq i32 %6, %9, !dbg !123
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !126

if.then8:                                         ; preds = %while.body
  %10 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %this_name, align 8, !dbg !127
  store %union.acpi_predefined_info* %10, %union.acpi_predefined_info** %retval, align 8, !dbg !129
  br label %return, !dbg !129

if.end9:                                          ; preds = %while.body
  %11 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %this_name, align 8, !dbg !130
  %call = call %union.acpi_predefined_info* @acpi_ut_get_next_predefined_method(%union.acpi_predefined_info* %11) #3, !dbg !131
  store %union.acpi_predefined_info* %call, %union.acpi_predefined_info** %this_name, align 8, !dbg !132
  br label %while.cond, !dbg !119, !llvm.loop !133

while.end:                                        ; preds = %while.cond
  store %union.acpi_predefined_info* null, %union.acpi_predefined_info** %retval, align 8, !dbg !135
  br label %return, !dbg !135

return:                                           ; preds = %while.end, %if.then8, %if.then
  %12 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %retval, align 8, !dbg !136
  ret %union.acpi_predefined_info* %12, !dbg !136
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_get_expected_return_types(i8* %buffer, i32 %expected_btypes) #0 !dbg !137 {
entry:
  %buffer.addr = alloca i8*, align 8
  %expected_btypes.addr = alloca i32, align 4
  %this_rtype = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 %expected_btypes, i32* %expected_btypes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %expected_btypes.addr, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %this_rtype, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %i, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %j, metadata !148, metadata !DIExpression()), !dbg !149
  %0 = load i32, i32* %expected_btypes.addr, align 4, !dbg !150
  %tobool = icmp ne i32 %0, 0, !dbg !150
  br i1 %tobool, label %if.end, label %if.then, !dbg !152

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buffer.addr, align 8, !dbg !153
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #3, !dbg !155
  br label %for.end, !dbg !156

if.end:                                           ; preds = %entry
  store i32 1, i32* %j, align 4, !dbg !157
  %2 = load i8*, i8** %buffer.addr, align 8, !dbg !158
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !158
  store i8 0, i8* %arrayidx, align 1, !dbg !159
  store i32 2, i32* %this_rtype, align 4, !dbg !160
  store i32 0, i32* %i, align 4, !dbg !161
  br label %for.cond, !dbg !163

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !164
  %cmp = icmp ult i32 %3, 5, !dbg !166
  br i1 %cmp, label %for.body, label %for.end, !dbg !167

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %expected_btypes.addr, align 4, !dbg !168
  %5 = load i32, i32* %this_rtype, align 4, !dbg !171
  %and = and i32 %4, %5, !dbg !172
  %tobool1 = icmp ne i32 %and, 0, !dbg !172
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !173

if.then2:                                         ; preds = %for.body
  %6 = load i8*, i8** %buffer.addr, align 8, !dbg !174
  %7 = load i32, i32* %i, align 4, !dbg !176
  %idxprom = zext i32 %7 to i64, !dbg !177
  %arrayidx3 = getelementptr [5 x i8*], [5 x i8*]* @ut_rtype_names, i64 0, i64 %idxprom, !dbg !177
  %8 = load i8*, i8** %arrayidx3, align 8, !dbg !177
  %9 = load i32, i32* %j, align 4, !dbg !178
  %idxprom4 = zext i32 %9 to i64, !dbg !177
  %arrayidx5 = getelementptr i8, i8* %8, i64 %idxprom4, !dbg !177
  %call6 = call i8* @strcat(i8* %6, i8* %arrayidx5) #3, !dbg !179
  store i32 0, i32* %j, align 4, !dbg !180
  br label %if.end7, !dbg !181

if.end7:                                          ; preds = %if.then2, %for.body
  %10 = load i32, i32* %this_rtype, align 4, !dbg !182
  %shl = shl i32 %10, 1, !dbg !182
  store i32 %shl, i32* %this_rtype, align 4, !dbg !182
  br label %for.inc, !dbg !183

for.inc:                                          ; preds = %if.end7
  %11 = load i32, i32* %i, align 4, !dbg !184
  %inc = add i32 %11, 1, !dbg !184
  store i32 %inc, i32* %i, align 4, !dbg !184
  br label %for.cond, !dbg !185, !llvm.loop !186

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !188
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @strcat(i8*, i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ut_rtype_names", scope: !2, file: !3, line: 21, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utpredef.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !12}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0}
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !18)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 5)
!20 = !{i32 7, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"Code Model", i32 2}
!24 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!25 = distinct !DISubprogram(name: "acpi_ut_get_next_predefined_method", scope: !3, file: !3, line: 43, type: !26, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !31, line: 351, size: 56, elements: !32)
!31 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !48, !57, !65, !76}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !30, file: !31, line: 352, baseType: !34, size: 56)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !31, line: 295, size: 56, elements: !35)
!35 = !{!36, !40, !44}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !31, line: 296, baseType: !37, size: 32)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 4)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !34, file: !31, line: 297, baseType: !41, size: 16, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !43)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !34, file: !31, line: 298, baseType: !45, size: 8, offset: 48)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !30, file: !31, line: 353, baseType: !49, size: 56)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !31, line: 314, size: 56, elements: !50)
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !31, line: 315, baseType: !45, size: 8)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !49, file: !31, line: 316, baseType: !45, size: 8, offset: 8)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !49, file: !31, line: 317, baseType: !45, size: 8, offset: 16)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !49, file: !31, line: 318, baseType: !45, size: 8, offset: 24)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !49, file: !31, line: 319, baseType: !45, size: 8, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !49, file: !31, line: 320, baseType: !41, size: 16, offset: 40)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !30, file: !31, line: 354, baseType: !58, size: 56)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !31, line: 325, size: 56, elements: !59)
!59 = !{!60, !61, !62, !64}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !31, line: 326, baseType: !45, size: 8)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !58, file: !31, line: 327, baseType: !45, size: 8, offset: 8)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !58, file: !31, line: 328, baseType: !63, size: 32, offset: 16)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !38)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !58, file: !31, line: 329, baseType: !45, size: 8, offset: 48)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !30, file: !31, line: 355, baseType: !66, size: 56)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !31, line: 334, size: 56, elements: !67)
!67 = !{!68, !69, !70, !74, !75}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !31, line: 335, baseType: !45, size: 8)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !66, file: !31, line: 336, baseType: !45, size: 8, offset: 8)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !66, file: !31, line: 337, baseType: !71, size: 16, offset: 16)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 2)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !66, file: !31, line: 338, baseType: !45, size: 8, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !66, file: !31, line: 339, baseType: !41, size: 16, offset: 40)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !30, file: !31, line: 356, baseType: !77, size: 56)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !31, line: 342, size: 56, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !31, line: 343, baseType: !45, size: 8)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !77, file: !31, line: 344, baseType: !45, size: 8, offset: 8)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !77, file: !31, line: 345, baseType: !45, size: 8, offset: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !77, file: !31, line: 346, baseType: !45, size: 8, offset: 24)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !77, file: !31, line: 347, baseType: !45, size: 8, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !77, file: !31, line: 348, baseType: !41, size: 16, offset: 40)
!85 = !DILocalVariable(name: "this_name", arg: 1, scope: !25, file: !3, line: 45, type: !28)
!86 = !DILocation(line: 45, column: 15, scope: !25)
!87 = !DILocation(line: 52, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !25, file: !3, line: 52, column: 6)
!89 = !DILocation(line: 52, column: 18, scope: !88)
!90 = !DILocation(line: 52, column: 23, scope: !88)
!91 = !DILocation(line: 52, column: 39, scope: !88)
!92 = !DILocation(line: 52, column: 61, scope: !88)
!93 = !DILocation(line: 53, column: 7, scope: !88)
!94 = !DILocation(line: 53, column: 18, scope: !88)
!95 = !DILocation(line: 53, column: 23, scope: !88)
!96 = !DILocation(line: 53, column: 39, scope: !88)
!97 = !DILocation(line: 52, column: 6, scope: !25)
!98 = !DILocation(line: 54, column: 12, scope: !99)
!99 = distinct !DILexicalBlock(scope: !88, file: !3, line: 53, column: 59)
!100 = !DILocation(line: 55, column: 2, scope: !99)
!101 = !DILocation(line: 57, column: 11, scope: !25)
!102 = !DILocation(line: 58, column: 10, scope: !25)
!103 = !DILocation(line: 58, column: 2, scope: !25)
!104 = distinct !DISubprogram(name: "acpi_ut_match_predefined_method", scope: !3, file: !3, line: 73, type: !105, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!105 = !DISubroutineType(types: !106)
!106 = !{!28, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!108 = !DILocalVariable(name: "name", arg: 1, scope: !104, file: !3, line: 73, type: !107)
!109 = !DILocation(line: 73, column: 73, scope: !104)
!110 = !DILocalVariable(name: "this_name", scope: !104, file: !3, line: 75, type: !28)
!111 = !DILocation(line: 75, column: 36, scope: !104)
!112 = !DILocation(line: 79, column: 6, scope: !113)
!113 = distinct !DILexicalBlock(scope: !104, file: !3, line: 79, column: 6)
!114 = !DILocation(line: 79, column: 14, scope: !113)
!115 = !DILocation(line: 79, column: 6, scope: !104)
!116 = !DILocation(line: 80, column: 3, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !3, line: 79, column: 22)
!118 = !DILocation(line: 85, column: 12, scope: !104)
!119 = !DILocation(line: 86, column: 2, scope: !104)
!120 = !DILocation(line: 86, column: 9, scope: !104)
!121 = !DILocation(line: 86, column: 20, scope: !104)
!122 = !DILocation(line: 86, column: 25, scope: !104)
!123 = !DILocation(line: 87, column: 7, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !3, line: 87, column: 7)
!125 = distinct !DILexicalBlock(scope: !104, file: !3, line: 86, column: 34)
!126 = !DILocation(line: 87, column: 7, scope: !125)
!127 = !DILocation(line: 88, column: 12, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !3, line: 87, column: 57)
!129 = !DILocation(line: 88, column: 4, scope: !128)
!130 = !DILocation(line: 91, column: 50, scope: !125)
!131 = !DILocation(line: 91, column: 15, scope: !125)
!132 = !DILocation(line: 91, column: 13, scope: !125)
!133 = distinct !{!133, !119, !134}
!134 = !DILocation(line: 92, column: 2, scope: !104)
!135 = !DILocation(line: 94, column: 2, scope: !104)
!136 = !DILocation(line: 95, column: 1, scope: !104)
!137 = distinct !DISubprogram(name: "acpi_ut_get_expected_return_types", scope: !3, file: !3, line: 110, type: !138, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !107, !7}
!140 = !DILocalVariable(name: "buffer", arg: 1, scope: !137, file: !3, line: 110, type: !107)
!141 = !DILocation(line: 110, column: 46, scope: !137)
!142 = !DILocalVariable(name: "expected_btypes", arg: 2, scope: !137, file: !3, line: 110, type: !7)
!143 = !DILocation(line: 110, column: 58, scope: !137)
!144 = !DILocalVariable(name: "this_rtype", scope: !137, file: !3, line: 112, type: !7)
!145 = !DILocation(line: 112, column: 6, scope: !137)
!146 = !DILocalVariable(name: "i", scope: !137, file: !3, line: 113, type: !7)
!147 = !DILocation(line: 113, column: 6, scope: !137)
!148 = !DILocalVariable(name: "j", scope: !137, file: !3, line: 114, type: !7)
!149 = !DILocation(line: 114, column: 6, scope: !137)
!150 = !DILocation(line: 116, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !137, file: !3, line: 116, column: 6)
!152 = !DILocation(line: 116, column: 6, scope: !137)
!153 = !DILocation(line: 117, column: 10, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !3, line: 116, column: 24)
!155 = !DILocation(line: 117, column: 3, scope: !154)
!156 = !DILocation(line: 118, column: 3, scope: !154)
!157 = !DILocation(line: 121, column: 4, scope: !137)
!158 = !DILocation(line: 122, column: 2, scope: !137)
!159 = !DILocation(line: 122, column: 12, scope: !137)
!160 = !DILocation(line: 123, column: 13, scope: !137)
!161 = !DILocation(line: 125, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !137, file: !3, line: 125, column: 2)
!163 = !DILocation(line: 125, column: 7, scope: !162)
!164 = !DILocation(line: 125, column: 14, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !3, line: 125, column: 2)
!166 = !DILocation(line: 125, column: 16, scope: !165)
!167 = !DILocation(line: 125, column: 2, scope: !162)
!168 = !DILocation(line: 129, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 129, column: 7)
!170 = distinct !DILexicalBlock(scope: !165, file: !3, line: 125, column: 40)
!171 = !DILocation(line: 129, column: 25, scope: !169)
!172 = !DILocation(line: 129, column: 23, scope: !169)
!173 = !DILocation(line: 129, column: 7, scope: !170)
!174 = !DILocation(line: 130, column: 11, scope: !175)
!175 = distinct !DILexicalBlock(scope: !169, file: !3, line: 129, column: 37)
!176 = !DILocation(line: 130, column: 35, scope: !175)
!177 = !DILocation(line: 130, column: 20, scope: !175)
!178 = !DILocation(line: 130, column: 38, scope: !175)
!179 = !DILocation(line: 130, column: 4, scope: !175)
!180 = !DILocation(line: 131, column: 6, scope: !175)
!181 = !DILocation(line: 132, column: 3, scope: !175)
!182 = !DILocation(line: 134, column: 14, scope: !170)
!183 = !DILocation(line: 135, column: 2, scope: !170)
!184 = !DILocation(line: 125, column: 36, scope: !165)
!185 = !DILocation(line: 125, column: 2, scope: !165)
!186 = distinct !{!186, !167, !187}
!187 = !DILocation(line: 135, column: 2, scope: !162)
!188 = !DILocation(line: 136, column: 1, scope: !137)
