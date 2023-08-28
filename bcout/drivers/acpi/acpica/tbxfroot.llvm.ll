; ModuleID = '../bcout/drivers/acpi/acpica/tbxfroot.llvm.bc'
source_filename = "drivers/acpi/acpica/tbxfroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_rsdp = type <{ [8 x i8], i8, [6 x i8], i8, i32, i32, i64, i8, [3 x i8] }>

@.str = private unnamed_addr constant [9 x i8] c"RSD PTR \00", align 1
@_acpi_module_name = internal constant [9 x i8] c"tbxfroot\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not map memory at 0x%8.8X for length %u\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"A valid RSDP was not found\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_get_rsdp_length(%struct.acpi_table_rsdp* %rsdp) #0 !dbg !62 {
entry:
  %retval = alloca i32, align 4
  %rsdp.addr = alloca %struct.acpi_table_rsdp*, align 8
  store %struct.acpi_table_rsdp* %rsdp, %struct.acpi_table_rsdp** %rsdp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_rsdp** %rsdp.addr, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp.addr, align 8, !dbg !67
  %signature = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %0, i32 0, i32 0, !dbg !67
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %signature, i64 0, i64 0, !dbg !67
  %call = call i32 @strncmp(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 8) #4, !dbg !67
  %tobool = icmp ne i32 %call, 0, !dbg !67
  br i1 %tobool, label %if.then, label %if.end, !dbg !69

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !70
  br label %return, !dbg !70

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp.addr, align 8, !dbg !72
  %revision = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %1, i32 0, i32 3, !dbg !74
  %2 = load i8, i8* %revision, align 1, !dbg !74
  %conv = zext i8 %2 to i32, !dbg !72
  %cmp = icmp sge i32 %conv, 2, !dbg !75
  br i1 %cmp, label %if.then2, label %if.else, !dbg !76

if.then2:                                         ; preds = %if.end
  %3 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp.addr, align 8, !dbg !77
  %length = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %3, i32 0, i32 5, !dbg !79
  %4 = load i32, i32* %length, align 1, !dbg !79
  store i32 %4, i32* %retval, align 4, !dbg !80
  br label %return, !dbg !80

if.else:                                          ; preds = %if.end
  store i32 20, i32* %retval, align 4, !dbg !81
  br label %return, !dbg !81

return:                                           ; preds = %if.else, %if.then2, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !83
  ret i32 %5, !dbg !83
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_validate_rsdp(%struct.acpi_table_rsdp* %rsdp) #0 !dbg !84 {
entry:
  %retval = alloca i32, align 4
  %rsdp.addr = alloca %struct.acpi_table_rsdp*, align 8
  store %struct.acpi_table_rsdp* %rsdp, %struct.acpi_table_rsdp** %rsdp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_rsdp** %rsdp.addr, metadata !87, metadata !DIExpression()), !dbg !88
  %0 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp.addr, align 8, !dbg !89
  %signature = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %0, i32 0, i32 0, !dbg !89
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %signature, i64 0, i64 0, !dbg !89
  %call = call i32 @strncmp(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 8) #4, !dbg !89
  %tobool = icmp ne i32 %call, 0, !dbg !89
  br i1 %tobool, label %if.then, label %if.end, !dbg !91

if.then:                                          ; preds = %entry
  store i32 8193, i32* %retval, align 4, !dbg !92
  br label %return, !dbg !92

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp.addr, align 8, !dbg !94
  %2 = bitcast %struct.acpi_table_rsdp* %1 to i8*, !dbg !96
  %call1 = call zeroext i8 @acpi_tb_checksum(i8* %2, i32 20) #4, !dbg !97
  %conv = zext i8 %call1 to i32, !dbg !97
  %cmp = icmp ne i32 %conv, 0, !dbg !98
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !99

if.then3:                                         ; preds = %if.end
  store i32 8195, i32* %retval, align 4, !dbg !100
  br label %return, !dbg !100

if.end4:                                          ; preds = %if.end
  %3 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp.addr, align 8, !dbg !102
  %revision = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %3, i32 0, i32 3, !dbg !104
  %4 = load i8, i8* %revision, align 1, !dbg !104
  %conv5 = zext i8 %4 to i32, !dbg !102
  %cmp6 = icmp sge i32 %conv5, 2, !dbg !105
  br i1 %cmp6, label %land.lhs.true, label %if.end13, !dbg !106

land.lhs.true:                                    ; preds = %if.end4
  %5 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %rsdp.addr, align 8, !dbg !107
  %6 = bitcast %struct.acpi_table_rsdp* %5 to i8*, !dbg !108
  %call8 = call zeroext i8 @acpi_tb_checksum(i8* %6, i32 36) #4, !dbg !109
  %conv9 = zext i8 %call8 to i32, !dbg !109
  %cmp10 = icmp ne i32 %conv9, 0, !dbg !110
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !111

if.then12:                                        ; preds = %land.lhs.true
  store i32 8195, i32* %retval, align 4, !dbg !112
  br label %return, !dbg !112

if.end13:                                         ; preds = %land.lhs.true, %if.end4
  store i32 0, i32* %retval, align 4, !dbg !114
  br label %return, !dbg !114

return:                                           ; preds = %if.end13, %if.then12, %if.then3, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !115
  ret i32 %7, !dbg !115
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_tb_checksum(i8*, i32) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_find_root_pointer(i64* %table_address) #3 section ".init.text" !dbg !116 {
entry:
  %retval = alloca i32, align 4
  %table_address.addr = alloca i64*, align 8
  %table_ptr = alloca i8*, align 8
  %mem_rover = alloca i8*, align 8
  %physical_address = alloca i32, align 4
  store i64* %table_address, i64** %table_address.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %table_address.addr, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i8** %table_ptr, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata i8** %mem_rover, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %physical_address, metadata !126, metadata !DIExpression()), !dbg !127
  %call = call i8* @acpi_os_map_memory(i64 1038, i64 2) #4, !dbg !128
  store i8* %call, i8** %table_ptr, align 8, !dbg !129
  %0 = load i8*, i8** %table_ptr, align 8, !dbg !130
  %tobool = icmp ne i8* %0, null, !dbg !130
  br i1 %tobool, label %if.end, label %if.then, !dbg !132

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 126, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 1038, i32 2) #4, !dbg !133
  store i32 4, i32* %retval, align 4, !dbg !135
  br label %return, !dbg !135

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %table_ptr, align 8, !dbg !136
  %2 = bitcast i8* %1 to i16*, !dbg !136
  %3 = load i16, i16* %2, align 2, !dbg !136
  %conv = zext i16 %3 to i32, !dbg !136
  %4 = bitcast i32* %physical_address to i8*, !dbg !136
  %5 = bitcast i8* %4 to i32*, !dbg !136
  store i32 %conv, i32* %5, align 4, !dbg !136
  %6 = load i32, i32* %physical_address, align 4, !dbg !137
  %shl = shl i32 %6, 4, !dbg !137
  store i32 %shl, i32* %physical_address, align 4, !dbg !137
  %7 = load i8*, i8** %table_ptr, align 8, !dbg !138
  call void @acpi_os_unmap_memory(i8* %7, i64 2) #4, !dbg !139
  %8 = load i32, i32* %physical_address, align 4, !dbg !140
  %cmp = icmp ugt i32 %8, 1024, !dbg !142
  br i1 %cmp, label %if.then2, label %if.end14, !dbg !143

if.then2:                                         ; preds = %if.end
  %9 = load i32, i32* %physical_address, align 4, !dbg !144
  %conv3 = zext i32 %9 to i64, !dbg !146
  %call4 = call i8* @acpi_os_map_memory(i64 %conv3, i64 1024) #4, !dbg !147
  store i8* %call4, i8** %table_ptr, align 8, !dbg !148
  %10 = load i8*, i8** %table_ptr, align 8, !dbg !149
  %tobool5 = icmp ne i8* %10, null, !dbg !149
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !151

if.then6:                                         ; preds = %if.then2
  %11 = load i32, i32* %physical_address, align 4, !dbg !152
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 151, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 1024) #4, !dbg !152
  store i32 4, i32* %retval, align 4, !dbg !154
  br label %return, !dbg !154

if.end7:                                          ; preds = %if.then2
  %12 = load i8*, i8** %table_ptr, align 8, !dbg !155
  %call8 = call i8* @acpi_tb_scan_memory_for_rsdp(i8* %12, i32 1024) #4, !dbg !156
  store i8* %call8, i8** %mem_rover, align 8, !dbg !157
  %13 = load i8*, i8** %table_ptr, align 8, !dbg !158
  call void @acpi_os_unmap_memory(i8* %13, i64 1024) #4, !dbg !159
  %14 = load i8*, i8** %mem_rover, align 8, !dbg !160
  %tobool9 = icmp ne i8* %14, null, !dbg !160
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !162

if.then10:                                        ; preds = %if.end7
  %15 = load i8*, i8** %mem_rover, align 8, !dbg !163
  %16 = load i8*, i8** %table_ptr, align 8, !dbg !163
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64, !dbg !163
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64, !dbg !163
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !163
  %conv11 = trunc i64 %sub.ptr.sub to i32, !dbg !165
  %17 = load i32, i32* %physical_address, align 4, !dbg !166
  %add = add i32 %17, %conv11, !dbg !166
  store i32 %add, i32* %physical_address, align 4, !dbg !166
  %18 = load i32, i32* %physical_address, align 4, !dbg !167
  %conv12 = zext i32 %18 to i64, !dbg !168
  %19 = load i64*, i64** %table_address.addr, align 8, !dbg !169
  store i64 %conv12, i64* %19, align 8, !dbg !170
  store i32 0, i32* %retval, align 4, !dbg !171
  br label %return, !dbg !171

if.end13:                                         ; preds = %if.end7
  br label %if.end14, !dbg !172

if.end14:                                         ; preds = %if.end13, %if.end
  %call15 = call i8* @acpi_os_map_memory(i64 917504, i64 131072) #4, !dbg !173
  store i8* %call15, i8** %table_ptr, align 8, !dbg !174
  %20 = load i8*, i8** %table_ptr, align 8, !dbg !175
  %tobool16 = icmp ne i8* %20, null, !dbg !175
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !177

if.then17:                                        ; preds = %if.end14
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 184, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 917504, i32 131072) #4, !dbg !178
  store i32 4, i32* %retval, align 4, !dbg !180
  br label %return, !dbg !180

if.end18:                                         ; preds = %if.end14
  %21 = load i8*, i8** %table_ptr, align 8, !dbg !181
  %call19 = call i8* @acpi_tb_scan_memory_for_rsdp(i8* %21, i32 131072) #4, !dbg !182
  store i8* %call19, i8** %mem_rover, align 8, !dbg !183
  %22 = load i8*, i8** %table_ptr, align 8, !dbg !184
  call void @acpi_os_unmap_memory(i8* %22, i64 131072) #4, !dbg !185
  %23 = load i8*, i8** %mem_rover, align 8, !dbg !186
  %tobool20 = icmp ne i8* %23, null, !dbg !186
  br i1 %tobool20, label %if.then21, label %if.end28, !dbg !188

if.then21:                                        ; preds = %if.end18
  %24 = load i8*, i8** %mem_rover, align 8, !dbg !189
  %25 = load i8*, i8** %table_ptr, align 8, !dbg !189
  %sub.ptr.lhs.cast22 = ptrtoint i8* %24 to i64, !dbg !189
  %sub.ptr.rhs.cast23 = ptrtoint i8* %25 to i64, !dbg !189
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23, !dbg !189
  %add25 = add i64 917504, %sub.ptr.sub24, !dbg !191
  %conv26 = trunc i64 %add25 to i32, !dbg !192
  store i32 %conv26, i32* %physical_address, align 4, !dbg !193
  %26 = load i32, i32* %physical_address, align 4, !dbg !194
  %conv27 = zext i32 %26 to i64, !dbg !195
  %27 = load i64*, i64** %table_address.addr, align 8, !dbg !196
  store i64 %conv27, i64* %27, align 8, !dbg !197
  store i32 0, i32* %retval, align 4, !dbg !198
  br label %return, !dbg !198

if.end28:                                         ; preds = %if.end18
  call void (i8*, i32, i8*, ...) @acpi_bios_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 210, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !199
  store i32 5, i32* %retval, align 4, !dbg !200
  br label %return, !dbg !200

return:                                           ; preds = %if.end28, %if.then21, %if.then17, %if.then10, %if.then6, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !201
  ret i32 %28, !dbg !201
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_os_map_memory(i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_unmap_memory(i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_tb_scan_memory_for_rsdp(i8* %start_address, i32 %length) #0 !dbg !202 {
entry:
  %retval = alloca i8*, align 8
  %start_address.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %mem_rover = alloca i8*, align 8
  %end_address = alloca i8*, align 8
  store i8* %start_address, i8** %start_address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start_address.addr, metadata !205, metadata !DIExpression()), !dbg !206
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %status, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i8** %mem_rover, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i8** %end_address, metadata !213, metadata !DIExpression()), !dbg !214
  %0 = load i8*, i8** %start_address.addr, align 8, !dbg !215
  %1 = load i32, i32* %length.addr, align 4, !dbg !216
  %idx.ext = zext i32 %1 to i64, !dbg !217
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !217
  store i8* %add.ptr, i8** %end_address, align 8, !dbg !218
  %2 = load i8*, i8** %start_address.addr, align 8, !dbg !219
  store i8* %2, i8** %mem_rover, align 8, !dbg !221
  br label %for.cond, !dbg !222

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %mem_rover, align 8, !dbg !223
  %4 = load i8*, i8** %end_address, align 8, !dbg !225
  %cmp = icmp ult i8* %3, %4, !dbg !226
  br i1 %cmp, label %for.body, label %for.end, !dbg !227

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %mem_rover, align 8, !dbg !228
  %6 = bitcast i8* %5 to %struct.acpi_table_rsdp*, !dbg !228
  %call = call i32 @acpi_tb_validate_rsdp(%struct.acpi_table_rsdp* %6) #4, !dbg !230
  store i32 %call, i32* %status, align 4, !dbg !231
  %7 = load i32, i32* %status, align 4, !dbg !232
  %tobool = icmp ne i32 %7, 0, !dbg !232
  br i1 %tobool, label %if.end, label %if.then, !dbg !234

if.then:                                          ; preds = %for.body
  %8 = load i8*, i8** %mem_rover, align 8, !dbg !235
  store i8* %8, i8** %retval, align 8, !dbg !235
  br label %return, !dbg !235

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !237

for.inc:                                          ; preds = %if.end
  %9 = load i8*, i8** %mem_rover, align 8, !dbg !238
  %add.ptr1 = getelementptr i8, i8* %9, i64 16, !dbg !238
  store i8* %add.ptr1, i8** %mem_rover, align 8, !dbg !238
  br label %for.cond, !dbg !239, !llvm.loop !240

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, align 8, !dbg !242
  br label %return, !dbg !242

return:                                           ; preds = %for.end, %if.then
  %10 = load i8*, i8** %retval, align 8, !dbg !243
  ret i8* %10, !dbg !243
}

; Function Attrs: noredzone
declare dso_local void @acpi_bios_error(i8*, i32, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !53, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !52, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbxfroot.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !8, !9, !16, !20, !24, !28, !11, !29, !30}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !10, line: 421, baseType: !11)
!10 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !12, line: 21, baseType: !13)
!12 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !14, line: 27, baseType: !15)
!14 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !12, line: 17, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !14, line: 21, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !10, line: 129, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !12, line: 23, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !14, line: 31, baseType: !23)
!23 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !12, line: 19, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !14, line: 24, baseType: !27)
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !10, line: 127, baseType: !21)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_rsdp", file: !32, line: 105, size: 288, elements: !33)
!32 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !38, !39, !43, !44, !45, !46, !47, !48}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !31, file: !32, line: 106, baseType: !35, size: 64)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 8)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !31, file: !32, line: 107, baseType: !17, size: 8, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !31, file: !32, line: 108, baseType: !40, size: 48, offset: 72)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 48, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 6)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !31, file: !32, line: 109, baseType: !17, size: 8, offset: 120)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "rsdt_physical_address", scope: !31, file: !32, line: 110, baseType: !11, size: 32, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !31, file: !32, line: 111, baseType: !11, size: 32, offset: 160)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "xsdt_physical_address", scope: !31, file: !32, line: 112, baseType: !21, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "extended_checksum", scope: !31, file: !32, line: 113, baseType: !17, size: 8, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !31, file: !32, line: 114, baseType: !49, size: 24, offset: 264)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 3)
!52 = !{!0}
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 72, elements: !55)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!55 = !{!56}
!56 = !DISubrange(count: 9)
!57 = !{i32 7, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"Code Model", i32 2}
!61 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!62 = distinct !DISubprogram(name: "acpi_tb_get_rsdp_length", scope: !3, file: !3, line: 28, type: !63, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!63 = !DISubroutineType(types: !64)
!64 = !{!11, !30}
!65 = !DILocalVariable(name: "rsdp", arg: 1, scope: !62, file: !3, line: 28, type: !30)
!66 = !DILocation(line: 28, column: 53, scope: !62)
!67 = !DILocation(line: 31, column: 7, scope: !68)
!68 = distinct !DILexicalBlock(scope: !62, file: !3, line: 31, column: 6)
!69 = !DILocation(line: 31, column: 6, scope: !62)
!70 = !DILocation(line: 35, column: 3, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !3, line: 31, column: 48)
!72 = !DILocation(line: 40, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !62, file: !3, line: 40, column: 6)
!74 = !DILocation(line: 40, column: 12, scope: !73)
!75 = !DILocation(line: 40, column: 21, scope: !73)
!76 = !DILocation(line: 40, column: 6, scope: !62)
!77 = !DILocation(line: 41, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !3, line: 40, column: 27)
!79 = !DILocation(line: 41, column: 17, scope: !78)
!80 = !DILocation(line: 41, column: 3, scope: !78)
!81 = !DILocation(line: 43, column: 3, scope: !82)
!82 = distinct !DILexicalBlock(scope: !73, file: !3, line: 42, column: 9)
!83 = !DILocation(line: 45, column: 1, scope: !62)
!84 = distinct !DISubprogram(name: "acpi_tb_validate_rsdp", scope: !3, file: !3, line: 59, type: !85, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!85 = !DISubroutineType(types: !86)
!86 = !{!9, !30}
!87 = !DILocalVariable(name: "rsdp", arg: 1, scope: !84, file: !3, line: 59, type: !30)
!88 = !DILocation(line: 59, column: 59, scope: !84)
!89 = !DILocation(line: 68, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !84, file: !3, line: 68, column: 6)
!91 = !DILocation(line: 68, column: 6, scope: !84)
!92 = !DILocation(line: 72, column: 3, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !3, line: 68, column: 48)
!94 = !DILocation(line: 77, column: 30, scope: !95)
!95 = distinct !DILexicalBlock(scope: !84, file: !3, line: 77, column: 6)
!96 = !DILocation(line: 77, column: 23, scope: !95)
!97 = !DILocation(line: 77, column: 6, scope: !95)
!98 = !DILocation(line: 77, column: 63, scope: !95)
!99 = !DILocation(line: 77, column: 6, scope: !84)
!100 = !DILocation(line: 78, column: 3, scope: !101)
!101 = distinct !DILexicalBlock(scope: !95, file: !3, line: 77, column: 69)
!102 = !DILocation(line: 83, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !84, file: !3, line: 83, column: 6)
!104 = !DILocation(line: 83, column: 13, scope: !103)
!105 = !DILocation(line: 83, column: 22, scope: !103)
!106 = !DILocation(line: 83, column: 28, scope: !103)
!107 = !DILocation(line: 84, column: 31, scope: !103)
!108 = !DILocation(line: 84, column: 24, scope: !103)
!109 = !DILocation(line: 84, column: 7, scope: !103)
!110 = !DILocation(line: 84, column: 65, scope: !103)
!111 = !DILocation(line: 83, column: 6, scope: !84)
!112 = !DILocation(line: 85, column: 3, scope: !113)
!113 = distinct !DILexicalBlock(scope: !103, file: !3, line: 84, column: 72)
!114 = !DILocation(line: 88, column: 2, scope: !84)
!115 = !DILocation(line: 89, column: 1, scope: !84)
!116 = distinct !DISubprogram(name: "acpi_find_root_pointer", scope: !3, file: !3, line: 112, type: !117, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!117 = !DISubroutineType(types: !118)
!118 = !{!9, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!120 = !DILocalVariable(name: "table_address", arg: 1, scope: !116, file: !3, line: 112, type: !119)
!121 = !DILocation(line: 112, column: 47, scope: !116)
!122 = !DILocalVariable(name: "table_ptr", scope: !116, file: !3, line: 114, type: !16)
!123 = !DILocation(line: 114, column: 6, scope: !116)
!124 = !DILocalVariable(name: "mem_rover", scope: !116, file: !3, line: 115, type: !16)
!125 = !DILocation(line: 115, column: 6, scope: !116)
!126 = !DILocalVariable(name: "physical_address", scope: !116, file: !3, line: 116, type: !11)
!127 = !DILocation(line: 116, column: 6, scope: !116)
!128 = !DILocation(line: 122, column: 14, scope: !116)
!129 = !DILocation(line: 122, column: 12, scope: !116)
!130 = !DILocation(line: 125, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !116, file: !3, line: 125, column: 6)
!132 = !DILocation(line: 125, column: 6, scope: !116)
!133 = !DILocation(line: 126, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !3, line: 125, column: 18)
!135 = !DILocation(line: 130, column: 3, scope: !134)
!136 = !DILocation(line: 133, column: 2, scope: !116)
!137 = !DILocation(line: 137, column: 19, scope: !116)
!138 = !DILocation(line: 138, column: 23, scope: !116)
!139 = !DILocation(line: 138, column: 2, scope: !116)
!140 = !DILocation(line: 142, column: 6, scope: !141)
!141 = distinct !DILexicalBlock(scope: !116, file: !3, line: 142, column: 6)
!142 = !DILocation(line: 142, column: 23, scope: !141)
!143 = !DILocation(line: 142, column: 6, scope: !116)
!144 = !DILocation(line: 148, column: 13, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !3, line: 142, column: 32)
!146 = !DILocation(line: 147, column: 34, scope: !145)
!147 = !DILocation(line: 147, column: 15, scope: !145)
!148 = !DILocation(line: 147, column: 13, scope: !145)
!149 = !DILocation(line: 150, column: 8, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !3, line: 150, column: 7)
!151 = !DILocation(line: 150, column: 7, scope: !145)
!152 = !DILocation(line: 151, column: 4, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !3, line: 150, column: 19)
!154 = !DILocation(line: 155, column: 4, scope: !153)
!155 = !DILocation(line: 159, column: 36, scope: !145)
!156 = !DILocation(line: 159, column: 7, scope: !145)
!157 = !DILocation(line: 158, column: 13, scope: !145)
!158 = !DILocation(line: 161, column: 24, scope: !145)
!159 = !DILocation(line: 161, column: 3, scope: !145)
!160 = !DILocation(line: 163, column: 7, scope: !161)
!161 = distinct !DILexicalBlock(scope: !145, file: !3, line: 163, column: 7)
!162 = !DILocation(line: 163, column: 7, scope: !145)
!163 = !DILocation(line: 168, column: 14, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !3, line: 163, column: 18)
!165 = !DILocation(line: 168, column: 8, scope: !164)
!166 = !DILocation(line: 167, column: 21, scope: !164)
!167 = !DILocation(line: 171, column: 31, scope: !164)
!168 = !DILocation(line: 171, column: 8, scope: !164)
!169 = !DILocation(line: 170, column: 5, scope: !164)
!170 = !DILocation(line: 170, column: 19, scope: !164)
!171 = !DILocation(line: 172, column: 4, scope: !164)
!172 = !DILocation(line: 174, column: 2, scope: !145)
!173 = !DILocation(line: 179, column: 14, scope: !116)
!174 = !DILocation(line: 179, column: 12, scope: !116)
!175 = !DILocation(line: 183, column: 7, scope: !176)
!176 = distinct !DILexicalBlock(scope: !116, file: !3, line: 183, column: 6)
!177 = !DILocation(line: 183, column: 6, scope: !116)
!178 = !DILocation(line: 184, column: 3, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 183, column: 18)
!180 = !DILocation(line: 189, column: 3, scope: !179)
!181 = !DILocation(line: 193, column: 35, scope: !116)
!182 = !DILocation(line: 193, column: 6, scope: !116)
!183 = !DILocation(line: 192, column: 12, scope: !116)
!184 = !DILocation(line: 194, column: 23, scope: !116)
!185 = !DILocation(line: 194, column: 2, scope: !116)
!186 = !DILocation(line: 196, column: 6, scope: !187)
!187 = distinct !DILexicalBlock(scope: !116, file: !3, line: 196, column: 6)
!188 = !DILocation(line: 196, column: 6, scope: !116)
!189 = !DILocation(line: 202, column: 8, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !3, line: 196, column: 17)
!191 = !DILocation(line: 201, column: 33, scope: !190)
!192 = !DILocation(line: 200, column: 22, scope: !190)
!193 = !DILocation(line: 200, column: 20, scope: !190)
!194 = !DILocation(line: 204, column: 43, scope: !190)
!195 = !DILocation(line: 204, column: 20, scope: !190)
!196 = !DILocation(line: 204, column: 4, scope: !190)
!197 = !DILocation(line: 204, column: 18, scope: !190)
!198 = !DILocation(line: 205, column: 3, scope: !190)
!199 = !DILocation(line: 210, column: 2, scope: !116)
!200 = !DILocation(line: 211, column: 2, scope: !116)
!201 = !DILocation(line: 212, column: 1, scope: !116)
!202 = distinct !DISubprogram(name: "acpi_tb_scan_memory_for_rsdp", scope: !3, file: !3, line: 228, type: !203, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!203 = !DISubroutineType(types: !204)
!204 = !{!16, !16, !11}
!205 = !DILocalVariable(name: "start_address", arg: 1, scope: !202, file: !3, line: 228, type: !16)
!206 = !DILocation(line: 228, column: 38, scope: !202)
!207 = !DILocalVariable(name: "length", arg: 2, scope: !202, file: !3, line: 228, type: !11)
!208 = !DILocation(line: 228, column: 57, scope: !202)
!209 = !DILocalVariable(name: "status", scope: !202, file: !3, line: 230, type: !9)
!210 = !DILocation(line: 230, column: 14, scope: !202)
!211 = !DILocalVariable(name: "mem_rover", scope: !202, file: !3, line: 231, type: !16)
!212 = !DILocation(line: 231, column: 6, scope: !202)
!213 = !DILocalVariable(name: "end_address", scope: !202, file: !3, line: 232, type: !16)
!214 = !DILocation(line: 232, column: 6, scope: !202)
!215 = !DILocation(line: 236, column: 16, scope: !202)
!216 = !DILocation(line: 236, column: 32, scope: !202)
!217 = !DILocation(line: 236, column: 30, scope: !202)
!218 = !DILocation(line: 236, column: 14, scope: !202)
!219 = !DILocation(line: 240, column: 19, scope: !220)
!220 = distinct !DILexicalBlock(scope: !202, file: !3, line: 240, column: 2)
!221 = !DILocation(line: 240, column: 17, scope: !220)
!222 = !DILocation(line: 240, column: 7, scope: !220)
!223 = !DILocation(line: 240, column: 34, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !3, line: 240, column: 2)
!225 = !DILocation(line: 240, column: 46, scope: !224)
!226 = !DILocation(line: 240, column: 44, scope: !224)
!227 = !DILocation(line: 240, column: 2, scope: !220)
!228 = !DILocation(line: 246, column: 29, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !3, line: 241, column: 41)
!230 = !DILocation(line: 246, column: 7, scope: !229)
!231 = !DILocation(line: 245, column: 10, scope: !229)
!232 = !DILocation(line: 248, column: 7, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !3, line: 248, column: 7)
!234 = !DILocation(line: 248, column: 7, scope: !229)
!235 = !DILocation(line: 255, column: 4, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !3, line: 248, column: 29)
!237 = !DILocation(line: 259, column: 2, scope: !229)
!238 = !DILocation(line: 241, column: 17, scope: !224)
!239 = !DILocation(line: 240, column: 2, scope: !224)
!240 = distinct !{!240, !227, !241}
!241 = !DILocation(line: 259, column: 2, scope: !220)
!242 = !DILocation(line: 266, column: 2, scope: !202)
!243 = !DILocation(line: 267, column: 1, scope: !202)
