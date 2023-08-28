; ModuleID = '../bcout/drivers/acpi/acpica/tbfind.llvm.bc'
source_filename = "drivers/acpi/acpica/tbfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_list = type { %struct.acpi_table_desc*, i32, i32, i8 }
%struct.acpi_table_desc = type { i64, %struct.acpi_table_header*, i32, %union.acpi_name_union, i16, i8, i16 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%union.acpi_name_union = type { i32 }

@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_find_table(i8* %signature, i8* %oem_id, i8* %oem_table_id, i32* %table_index) #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %signature.addr = alloca i8*, align 8
  %oem_id.addr = alloca i8*, align 8
  %oem_table_id.addr = alloca i8*, align 8
  %table_index.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %header = alloca %struct.acpi_table_header, align 1
  %i = alloca i32, align 4
  store i8* %signature, i8** %signature.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %signature.addr, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %oem_id, i8** %oem_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %oem_id.addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i8* %oem_table_id, i8** %oem_table_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %oem_table_id.addr, metadata !27, metadata !DIExpression()), !dbg !28
  store i32* %table_index, i32** %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table_index.addr, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %status, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %status, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header* %header, metadata !33, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %i, metadata !59, metadata !DIExpression()), !dbg !60
  %0 = load i8*, i8** %signature.addr, align 8, !dbg !61
  %call = call zeroext i8 @acpi_ut_valid_nameseg(i8* %0) #4, !dbg !63
  %tobool = icmp ne i8 %call, 0, !dbg !63
  br i1 %tobool, label %if.end, label %if.then, !dbg !64

if.then:                                          ; preds = %entry
  store i32 8193, i32* %retval, align 4, !dbg !65
  br label %return, !dbg !65

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %oem_id.addr, align 8, !dbg !67
  %call1 = call i64 @strlen(i8* %1) #4, !dbg !69
  %cmp = icmp ugt i64 %call1, 6, !dbg !70
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !71

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8*, i8** %oem_table_id.addr, align 8, !dbg !72
  %call2 = call i64 @strlen(i8* %2) #4, !dbg !73
  %cmp3 = icmp ugt i64 %call2, 8, !dbg !74
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !75

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 12305, i32* %retval, align 4, !dbg !76
  br label %return, !dbg !76

if.end5:                                          ; preds = %lor.lhs.false
  %3 = bitcast %struct.acpi_table_header* %header to i8*, !dbg !78
  call void @llvm.memset.p0i8.i64(i8* align 1 %3, i8 0, i64 36, i1 false), !dbg !78
  %4 = load i8*, i8** %signature.addr, align 8, !dbg !79
  %5 = bitcast i8* %4 to i32*, !dbg !79
  %6 = load i32, i32* %5, align 4, !dbg !79
  %signature6 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 0, !dbg !79
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature6, i64 0, i64 0, !dbg !79
  %7 = bitcast i8* %arraydecay to i32*, !dbg !79
  store i32 %6, i32* %7, align 4, !dbg !79
  %oem_id7 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 4, !dbg !80
  %arraydecay8 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id7, i64 0, i64 0, !dbg !81
  %8 = load i8*, i8** %oem_id.addr, align 8, !dbg !82
  %call9 = call i8* @strncpy(i8* %arraydecay8, i8* %8, i64 6) #4, !dbg !83
  %oem_table_id10 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 5, !dbg !84
  %arraydecay11 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id10, i64 0, i64 0, !dbg !85
  %9 = load i8*, i8** %oem_table_id.addr, align 8, !dbg !86
  %call12 = call i8* @strncpy(i8* %arraydecay11, i8* %9, i64 8) #4, !dbg !87
  %call13 = call i32 @acpi_ut_acquire_mutex(i32 2) #4, !dbg !88
  store i32 0, i32* %i, align 4, !dbg !89
  br label %for.cond, !dbg !91

for.cond:                                         ; preds = %for.inc, %if.end5
  %10 = load i32, i32* %i, align 4, !dbg !92
  %11 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !94
  %cmp14 = icmp ult i32 %10, %11, !dbg !95
  br i1 %cmp14, label %for.body, label %for.end, !dbg !96

for.body:                                         ; preds = %for.cond
  %12 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !97
  %13 = load i32, i32* %i, align 4, !dbg !100
  %idxprom = zext i32 %13 to i64, !dbg !101
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %12, i64 %idxprom, !dbg !101
  %signature15 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx, i32 0, i32 3, !dbg !102
  %14 = bitcast %union.acpi_name_union* %signature15 to i8*, !dbg !103
  %signature16 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 0, !dbg !104
  %arraydecay17 = getelementptr inbounds [4 x i8], [4 x i8]* %signature16, i64 0, i64 0, !dbg !105
  %call18 = call i32 @memcmp(i8* %14, i8* %arraydecay17, i64 4) #4, !dbg !106
  %tobool19 = icmp ne i32 %call18, 0, !dbg !106
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !107

if.then20:                                        ; preds = %for.body
  br label %for.inc, !dbg !108

if.end21:                                         ; preds = %for.body
  %15 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !110
  %16 = load i32, i32* %i, align 4, !dbg !112
  %idxprom22 = zext i32 %16 to i64, !dbg !113
  %arrayidx23 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %15, i64 %idxprom22, !dbg !113
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx23, i32 0, i32 1, !dbg !114
  %17 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !114
  %tobool24 = icmp ne %struct.acpi_table_header* %17, null, !dbg !113
  br i1 %tobool24, label %if.end38, label %if.then25, !dbg !115

if.then25:                                        ; preds = %if.end21
  %18 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !116
  %19 = load i32, i32* %i, align 4, !dbg !118
  %idxprom26 = zext i32 %19 to i64, !dbg !119
  %arrayidx27 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %18, i64 %idxprom26, !dbg !119
  %call28 = call i32 @acpi_tb_validate_table(%struct.acpi_table_desc* %arrayidx27) #4, !dbg !120
  store i32 %call28, i32* %status, align 4, !dbg !121
  %20 = load i32, i32* %status, align 4, !dbg !122
  %tobool29 = icmp ne i32 %20, 0, !dbg !122
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !124

if.then30:                                        ; preds = %if.then25
  br label %unlock_and_exit, !dbg !125

if.end31:                                         ; preds = %if.then25
  %21 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !127
  %22 = load i32, i32* %i, align 4, !dbg !129
  %idxprom32 = zext i32 %22 to i64, !dbg !130
  %arrayidx33 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %21, i64 %idxprom32, !dbg !130
  %pointer34 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx33, i32 0, i32 1, !dbg !131
  %23 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer34, align 8, !dbg !131
  %tobool35 = icmp ne %struct.acpi_table_header* %23, null, !dbg !130
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !132

if.then36:                                        ; preds = %if.end31
  br label %for.inc, !dbg !133

if.end37:                                         ; preds = %if.end31
  br label %if.end38, !dbg !135

if.end38:                                         ; preds = %if.end37, %if.end21
  %24 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !136
  %25 = load i32, i32* %i, align 4, !dbg !138
  %idxprom39 = zext i32 %25 to i64, !dbg !139
  %arrayidx40 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %24, i64 %idxprom39, !dbg !139
  %pointer41 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx40, i32 0, i32 1, !dbg !140
  %26 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer41, align 8, !dbg !140
  %signature42 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %26, i32 0, i32 0, !dbg !141
  %arraydecay43 = getelementptr inbounds [4 x i8], [4 x i8]* %signature42, i64 0, i64 0, !dbg !139
  %signature44 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 0, !dbg !142
  %arraydecay45 = getelementptr inbounds [4 x i8], [4 x i8]* %signature44, i64 0, i64 0, !dbg !143
  %call46 = call i32 @memcmp(i8* %arraydecay43, i8* %arraydecay45, i64 4) #4, !dbg !144
  %tobool47 = icmp ne i32 %call46, 0, !dbg !144
  br i1 %tobool47, label %if.end74, label %land.lhs.true, !dbg !145

land.lhs.true:                                    ; preds = %if.end38
  %27 = load i8*, i8** %oem_id.addr, align 8, !dbg !146
  %arrayidx48 = getelementptr i8, i8* %27, i64 0, !dbg !146
  %28 = load i8, i8* %arrayidx48, align 1, !dbg !146
  %tobool49 = icmp ne i8 %28, 0, !dbg !146
  br i1 %tobool49, label %lor.lhs.false50, label %land.lhs.true60, !dbg !147

lor.lhs.false50:                                  ; preds = %land.lhs.true
  %29 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !148
  %30 = load i32, i32* %i, align 4, !dbg !149
  %idxprom51 = zext i32 %30 to i64, !dbg !150
  %arrayidx52 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %29, i64 %idxprom51, !dbg !150
  %pointer53 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx52, i32 0, i32 1, !dbg !151
  %31 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer53, align 8, !dbg !151
  %oem_id54 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %31, i32 0, i32 4, !dbg !152
  %arraydecay55 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id54, i64 0, i64 0, !dbg !150
  %oem_id56 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 4, !dbg !153
  %arraydecay57 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id56, i64 0, i64 0, !dbg !154
  %call58 = call i32 @memcmp(i8* %arraydecay55, i8* %arraydecay57, i64 6) #4, !dbg !155
  %tobool59 = icmp ne i32 %call58, 0, !dbg !155
  br i1 %tobool59, label %if.end74, label %land.lhs.true60, !dbg !156

land.lhs.true60:                                  ; preds = %lor.lhs.false50, %land.lhs.true
  %32 = load i8*, i8** %oem_table_id.addr, align 8, !dbg !157
  %arrayidx61 = getelementptr i8, i8* %32, i64 0, !dbg !157
  %33 = load i8, i8* %arrayidx61, align 1, !dbg !157
  %tobool62 = icmp ne i8 %33, 0, !dbg !157
  br i1 %tobool62, label %lor.lhs.false63, label %if.then73, !dbg !158

lor.lhs.false63:                                  ; preds = %land.lhs.true60
  %34 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !159
  %35 = load i32, i32* %i, align 4, !dbg !160
  %idxprom64 = zext i32 %35 to i64, !dbg !161
  %arrayidx65 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %34, i64 %idxprom64, !dbg !161
  %pointer66 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx65, i32 0, i32 1, !dbg !162
  %36 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer66, align 8, !dbg !162
  %oem_table_id67 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %36, i32 0, i32 5, !dbg !163
  %arraydecay68 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id67, i64 0, i64 0, !dbg !161
  %oem_table_id69 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 5, !dbg !164
  %arraydecay70 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id69, i64 0, i64 0, !dbg !165
  %call71 = call i32 @memcmp(i8* %arraydecay68, i8* %arraydecay70, i64 8) #4, !dbg !166
  %tobool72 = icmp ne i32 %call71, 0, !dbg !166
  br i1 %tobool72, label %if.end74, label %if.then73, !dbg !167

if.then73:                                        ; preds = %lor.lhs.false63, %land.lhs.true60
  %37 = load i32, i32* %i, align 4, !dbg !168
  %38 = load i32*, i32** %table_index.addr, align 8, !dbg !170
  store i32 %37, i32* %38, align 4, !dbg !171
  br label %unlock_and_exit, !dbg !172

if.end74:                                         ; preds = %lor.lhs.false63, %lor.lhs.false50, %if.end38
  br label %for.inc, !dbg !173

for.inc:                                          ; preds = %if.end74, %if.then36, %if.then20
  %39 = load i32, i32* %i, align 4, !dbg !174
  %inc = add i32 %39, 1, !dbg !174
  store i32 %inc, i32* %i, align 4, !dbg !174
  br label %for.cond, !dbg !175, !llvm.loop !176

for.end:                                          ; preds = %for.cond
  store i32 5, i32* %status, align 4, !dbg !178
  br label %unlock_and_exit, !dbg !179

unlock_and_exit:                                  ; preds = %for.end, %if.then73, %if.then30
  call void @llvm.dbg.label(metadata !180), !dbg !181
  %call75 = call i32 @acpi_ut_release_mutex(i32 2) #4, !dbg !182
  %40 = load i32, i32* %status, align 4, !dbg !183
  store i32 %40, i32* %retval, align 4, !dbg !183
  br label %return, !dbg !183

return:                                           ; preds = %unlock_and_exit, %if.then4, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !184
  ret i32 %41, !dbg !184
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_valid_nameseg(i8*) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_validate_table(%struct.acpi_table_desc*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/tbfind.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !11, !12}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !5, line: 421, baseType: !6)
!5 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"Code Model", i32 2}
!17 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!18 = distinct !DISubprogram(name: "acpi_tb_find_table", scope: !1, file: !1, line: 34, type: !19, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{!4, !21, !21, !21, !11}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DILocalVariable(name: "signature", arg: 1, scope: !18, file: !1, line: 34, type: !21)
!24 = !DILocation(line: 34, column: 26, scope: !18)
!25 = !DILocalVariable(name: "oem_id", arg: 2, scope: !18, file: !1, line: 35, type: !21)
!26 = !DILocation(line: 35, column: 12, scope: !18)
!27 = !DILocalVariable(name: "oem_table_id", arg: 3, scope: !18, file: !1, line: 35, type: !21)
!28 = !DILocation(line: 35, column: 26, scope: !18)
!29 = !DILocalVariable(name: "table_index", arg: 4, scope: !18, file: !1, line: 35, type: !11)
!30 = !DILocation(line: 35, column: 45, scope: !18)
!31 = !DILocalVariable(name: "status", scope: !18, file: !1, line: 37, type: !4)
!32 = !DILocation(line: 37, column: 14, scope: !18)
!33 = !DILocalVariable(name: "header", scope: !18, file: !1, line: 38, type: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !35, line: 68, size: 288, elements: !36)
!35 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !41, !42, !46, !47, !51, !55, !56, !57}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !34, file: !35, line: 69, baseType: !38, size: 32)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 4)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !34, file: !35, line: 70, baseType: !6, size: 32, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !34, file: !35, line: 71, baseType: !43, size: 8, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !45)
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !34, file: !35, line: 72, baseType: !43, size: 8, offset: 72)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !34, file: !35, line: 73, baseType: !48, size: 48, offset: 80)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 48, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 6)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !34, file: !35, line: 74, baseType: !52, size: 64, offset: 128)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 8)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !34, file: !35, line: 75, baseType: !6, size: 32, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !34, file: !35, line: 76, baseType: !38, size: 32, offset: 224)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !34, file: !35, line: 77, baseType: !6, size: 32, offset: 256)
!58 = !DILocation(line: 38, column: 27, scope: !18)
!59 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 39, type: !6)
!60 = !DILocation(line: 39, column: 6, scope: !18)
!61 = !DILocation(line: 45, column: 29, scope: !62)
!62 = distinct !DILexicalBlock(scope: !18, file: !1, line: 45, column: 6)
!63 = !DILocation(line: 45, column: 7, scope: !62)
!64 = !DILocation(line: 45, column: 6, scope: !18)
!65 = !DILocation(line: 46, column: 3, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 45, column: 41)
!67 = !DILocation(line: 51, column: 14, scope: !68)
!68 = distinct !DILexicalBlock(scope: !18, file: !1, line: 51, column: 6)
!69 = !DILocation(line: 51, column: 7, scope: !68)
!70 = !DILocation(line: 51, column: 22, scope: !68)
!71 = !DILocation(line: 51, column: 42, scope: !68)
!72 = !DILocation(line: 52, column: 14, scope: !68)
!73 = !DILocation(line: 52, column: 7, scope: !68)
!74 = !DILocation(line: 52, column: 28, scope: !68)
!75 = !DILocation(line: 51, column: 6, scope: !18)
!76 = !DILocation(line: 53, column: 3, scope: !77)
!77 = distinct !DILexicalBlock(scope: !68, file: !1, line: 52, column: 55)
!78 = !DILocation(line: 58, column: 2, scope: !18)
!79 = !DILocation(line: 59, column: 2, scope: !18)
!80 = !DILocation(line: 60, column: 17, scope: !18)
!81 = !DILocation(line: 60, column: 10, scope: !18)
!82 = !DILocation(line: 60, column: 25, scope: !18)
!83 = !DILocation(line: 60, column: 2, scope: !18)
!84 = !DILocation(line: 61, column: 17, scope: !18)
!85 = !DILocation(line: 61, column: 10, scope: !18)
!86 = !DILocation(line: 61, column: 31, scope: !18)
!87 = !DILocation(line: 61, column: 2, scope: !18)
!88 = !DILocation(line: 65, column: 8, scope: !18)
!89 = !DILocation(line: 66, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !18, file: !1, line: 66, column: 2)
!91 = !DILocation(line: 66, column: 7, scope: !90)
!92 = !DILocation(line: 66, column: 14, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !1, line: 66, column: 2)
!94 = !DILocation(line: 66, column: 43, scope: !93)
!95 = !DILocation(line: 66, column: 16, scope: !93)
!96 = !DILocation(line: 66, column: 2, scope: !90)
!97 = !DILocation(line: 67, column: 41, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 67, column: 7)
!99 = distinct !DILexicalBlock(scope: !93, file: !1, line: 66, column: 69)
!100 = !DILocation(line: 67, column: 48, scope: !98)
!101 = !DILocation(line: 67, column: 16, scope: !98)
!102 = !DILocation(line: 67, column: 51, scope: !98)
!103 = !DILocation(line: 67, column: 14, scope: !98)
!104 = !DILocation(line: 68, column: 14, scope: !98)
!105 = !DILocation(line: 68, column: 7, scope: !98)
!106 = !DILocation(line: 67, column: 7, scope: !98)
!107 = !DILocation(line: 67, column: 7, scope: !99)
!108 = !DILocation(line: 72, column: 4, scope: !109)
!109 = distinct !DILexicalBlock(scope: !98, file: !1, line: 68, column: 45)
!110 = !DILocation(line: 77, column: 33, scope: !111)
!111 = distinct !DILexicalBlock(scope: !99, file: !1, line: 77, column: 7)
!112 = !DILocation(line: 77, column: 40, scope: !111)
!113 = !DILocation(line: 77, column: 8, scope: !111)
!114 = !DILocation(line: 77, column: 43, scope: !111)
!115 = !DILocation(line: 77, column: 7, scope: !99)
!116 = !DILocation(line: 83, column: 10, scope: !117)
!117 = distinct !DILexicalBlock(scope: !111, file: !1, line: 77, column: 52)
!118 = !DILocation(line: 83, column: 17, scope: !117)
!119 = !DILocation(line: 82, column: 32, scope: !117)
!120 = !DILocation(line: 82, column: 8, scope: !117)
!121 = !DILocation(line: 81, column: 11, scope: !117)
!122 = !DILocation(line: 84, column: 8, scope: !123)
!123 = distinct !DILexicalBlock(scope: !117, file: !1, line: 84, column: 8)
!124 = !DILocation(line: 84, column: 8, scope: !117)
!125 = !DILocation(line: 85, column: 5, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !1, line: 84, column: 30)
!127 = !DILocation(line: 88, column: 34, scope: !128)
!128 = distinct !DILexicalBlock(scope: !117, file: !1, line: 88, column: 8)
!129 = !DILocation(line: 88, column: 41, scope: !128)
!130 = !DILocation(line: 88, column: 9, scope: !128)
!131 = !DILocation(line: 88, column: 44, scope: !128)
!132 = !DILocation(line: 88, column: 8, scope: !117)
!133 = !DILocation(line: 89, column: 5, scope: !134)
!134 = distinct !DILexicalBlock(scope: !128, file: !1, line: 88, column: 53)
!135 = !DILocation(line: 91, column: 3, scope: !117)
!136 = !DILocation(line: 96, column: 33, scope: !137)
!137 = distinct !DILexicalBlock(scope: !99, file: !1, line: 95, column: 7)
!138 = !DILocation(line: 96, column: 40, scope: !137)
!139 = !DILocation(line: 96, column: 8, scope: !137)
!140 = !DILocation(line: 96, column: 43, scope: !137)
!141 = !DILocation(line: 96, column: 52, scope: !137)
!142 = !DILocation(line: 97, column: 15, scope: !137)
!143 = !DILocation(line: 97, column: 8, scope: !137)
!144 = !DILocation(line: 95, column: 8, scope: !137)
!145 = !DILocation(line: 97, column: 45, scope: !137)
!146 = !DILocation(line: 97, column: 50, scope: !137)
!147 = !DILocation(line: 98, column: 14, scope: !137)
!148 = !DILocation(line: 101, column: 15, scope: !137)
!149 = !DILocation(line: 101, column: 22, scope: !137)
!150 = !DILocation(line: 100, column: 15, scope: !137)
!151 = !DILocation(line: 102, column: 15, scope: !137)
!152 = !DILocation(line: 102, column: 24, scope: !137)
!153 = !DILocation(line: 103, column: 22, scope: !137)
!154 = !DILocation(line: 103, column: 15, scope: !137)
!155 = !DILocation(line: 99, column: 15, scope: !137)
!156 = !DILocation(line: 105, column: 7, scope: !137)
!157 = !DILocation(line: 105, column: 12, scope: !137)
!158 = !DILocation(line: 106, column: 4, scope: !137)
!159 = !DILocation(line: 106, column: 40, scope: !137)
!160 = !DILocation(line: 106, column: 47, scope: !137)
!161 = !DILocation(line: 106, column: 15, scope: !137)
!162 = !DILocation(line: 106, column: 50, scope: !137)
!163 = !DILocation(line: 107, column: 8, scope: !137)
!164 = !DILocation(line: 107, column: 29, scope: !137)
!165 = !DILocation(line: 107, column: 22, scope: !137)
!166 = !DILocation(line: 106, column: 8, scope: !137)
!167 = !DILocation(line: 95, column: 7, scope: !99)
!168 = !DILocation(line: 109, column: 19, scope: !169)
!169 = distinct !DILexicalBlock(scope: !137, file: !1, line: 108, column: 34)
!170 = !DILocation(line: 109, column: 5, scope: !169)
!171 = !DILocation(line: 109, column: 17, scope: !169)
!172 = !DILocation(line: 114, column: 4, scope: !169)
!173 = !DILocation(line: 116, column: 2, scope: !99)
!174 = !DILocation(line: 66, column: 64, scope: !93)
!175 = !DILocation(line: 66, column: 2, scope: !93)
!176 = distinct !{!176, !96, !177}
!177 = !DILocation(line: 116, column: 2, scope: !90)
!178 = !DILocation(line: 117, column: 9, scope: !18)
!179 = !DILocation(line: 117, column: 2, scope: !18)
!180 = !DILabel(scope: !18, name: "unlock_and_exit", file: !1, line: 119)
!181 = !DILocation(line: 119, column: 1, scope: !18)
!182 = !DILocation(line: 120, column: 8, scope: !18)
!183 = !DILocation(line: 121, column: 2, scope: !18)
!184 = !DILocation(line: 122, column: 1, scope: !18)
