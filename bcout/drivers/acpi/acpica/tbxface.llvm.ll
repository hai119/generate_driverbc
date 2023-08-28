; ModuleID = '../bcout/drivers/acpi/acpica/tbxface.llvm.bc'
source_filename = "drivers/acpi/acpica/tbxface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_list = type { %struct.acpi_table_desc*, i32, i32, i8 }
%struct.acpi_table_desc = type { i64, %struct.acpi_table_header*, i32, %union.acpi_name_union, i16, i8, i16 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%union.acpi_name_union = type { i32 }

@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8
@acpi_gbl_enable_table_validation = external dso_local global i8, align 1
@_acpi_module_name = internal constant [8 x i8] c"tbxface\00", align 1, !dbg !0
@.str = private unnamed_addr constant [57 x i8] c"Table [%4.4s] is not invalidated during early boot stage\00", align 1
@acpi_gbl_table_handler = external dso_local global i32 (i32, i8*, i8*)*, align 8
@acpi_gbl_table_handler_context = external dso_local global i8*, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_allocate_root_table(i32 %initial_table_count) #0 !dbg !30 {
entry:
  %initial_table_count.addr = alloca i32, align 4
  store i32 %initial_table_count, i32* %initial_table_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %initial_table_count.addr, metadata !33, metadata !DIExpression()), !dbg !34
  %0 = load i32, i32* %initial_table_count.addr, align 4, !dbg !35
  store i32 %0, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 2), align 4, !dbg !36
  store i8 2, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !37
  %call = call i32 @acpi_tb_resize_root_table_list() #5, !dbg !38
  ret i32 %call, !dbg !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_resize_root_table_list() #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_initialize_tables(%struct.acpi_table_desc* %initial_table_array, i32 %initial_table_count, i8 zeroext %allow_resize) #3 section ".init.text" !dbg !40 {
entry:
  %retval = alloca i32, align 4
  %initial_table_array.addr = alloca %struct.acpi_table_desc*, align 8
  %initial_table_count.addr = alloca i32, align 4
  %allow_resize.addr = alloca i8, align 1
  %rsdp_address = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.acpi_table_desc* %initial_table_array, %struct.acpi_table_desc** %initial_table_array.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %initial_table_array.addr, metadata !85, metadata !DIExpression()), !dbg !86
  store i32 %initial_table_count, i32* %initial_table_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %initial_table_count.addr, metadata !87, metadata !DIExpression()), !dbg !88
  store i8 %allow_resize, i8* %allow_resize.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %allow_resize.addr, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i64* %rsdp_address, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %status, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %initial_table_array.addr, align 8, !dbg !95
  %tobool = icmp ne %struct.acpi_table_desc* %0, null, !dbg !95
  br i1 %tobool, label %if.else, label %if.then, !dbg !97

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %initial_table_count.addr, align 4, !dbg !98
  %call = call i32 @acpi_allocate_root_table(i32 %1) #5, !dbg !100
  store i32 %call, i32* %status, align 4, !dbg !101
  %2 = load i32, i32* %status, align 4, !dbg !102
  %tobool1 = icmp ne i32 %2, 0, !dbg !102
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !104

if.then2:                                         ; preds = %if.then
  %3 = load i32, i32* %status, align 4, !dbg !105
  store i32 %3, i32* %retval, align 4, !dbg !105
  br label %return, !dbg !105

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !107

if.else:                                          ; preds = %entry
  %4 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %initial_table_array.addr, align 8, !dbg !108
  %5 = bitcast %struct.acpi_table_desc* %4 to i8*, !dbg !110
  %6 = load i32, i32* %initial_table_count.addr, align 4, !dbg !111
  %conv = zext i32 %6 to i64, !dbg !112
  %mul = mul i64 %conv, 32, !dbg !113
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 %mul, i1 false), !dbg !110
  %7 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %initial_table_array.addr, align 8, !dbg !114
  store %struct.acpi_table_desc* %7, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !115
  %8 = load i32, i32* %initial_table_count.addr, align 4, !dbg !116
  store i32 %8, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 2), align 4, !dbg !117
  store i8 0, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !118
  %9 = load i8, i8* %allow_resize.addr, align 1, !dbg !119
  %tobool3 = icmp ne i8 %9, 0, !dbg !119
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !121

if.then4:                                         ; preds = %if.else
  %10 = load i8, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !122
  %conv5 = zext i8 %10 to i32, !dbg !122
  %or = or i32 %conv5, 2, !dbg !122
  %conv6 = trunc i32 %or to i8, !dbg !122
  store i8 %conv6, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !122
  br label %if.end7, !dbg !124

if.end7:                                          ; preds = %if.then4, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %call9 = call i64 @acpi_os_get_root_pointer() #5, !dbg !125
  store i64 %call9, i64* %rsdp_address, align 8, !dbg !126
  %11 = load i64, i64* %rsdp_address, align 8, !dbg !127
  %tobool10 = icmp ne i64 %11, 0, !dbg !127
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !129

if.then11:                                        ; preds = %if.end8
  store i32 5, i32* %retval, align 4, !dbg !130
  br label %return, !dbg !130

if.end12:                                         ; preds = %if.end8
  %12 = load i64, i64* %rsdp_address, align 8, !dbg !132
  %call13 = call i32 @acpi_tb_parse_root_table(i64 %12) #5, !dbg !133
  store i32 %call13, i32* %status, align 4, !dbg !134
  %13 = load i32, i32* %status, align 4, !dbg !135
  store i32 %13, i32* %retval, align 4, !dbg !135
  br label %return, !dbg !135

return:                                           ; preds = %if.end12, %if.then11, %if.then2
  %14 = load i32, i32* %retval, align 4, !dbg !136
  ret i32 %14, !dbg !136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_get_root_pointer() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_parse_root_table(i64) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_reallocate_root_table() #3 section ".init.text" !dbg !137 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %table_desc = alloca %struct.acpi_table_desc*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %i, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %j, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load i8, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !148
  %conv = zext i8 %0 to i32, !dbg !150
  %and = and i32 %conv, 1, !dbg !151
  %tobool = icmp ne i32 %and, 0, !dbg !151
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !152

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* @acpi_gbl_enable_table_validation, align 1, !dbg !153
  %conv1 = zext i8 %1 to i32, !dbg !153
  %tobool2 = icmp ne i32 %conv1, 0, !dbg !153
  br i1 %tobool2, label %if.then, label %if.end, !dbg !154

if.then:                                          ; preds = %land.lhs.true
  store i32 15, i32* %retval, align 4, !dbg !155
  br label %return, !dbg !155

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #5, !dbg !157
  store i32 0, i32* %i, align 4, !dbg !158
  br label %for.cond, !dbg !160

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !161
  %3 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !163
  %cmp = icmp ult i32 %2, %3, !dbg !164
  br i1 %cmp, label %for.body, label %for.end, !dbg !165

for.body:                                         ; preds = %for.cond
  %4 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !166
  %5 = load i32, i32* %i, align 4, !dbg !168
  %idxprom = zext i32 %5 to i64, !dbg !169
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %4, i64 %idxprom, !dbg !169
  store %struct.acpi_table_desc* %arrayidx, %struct.acpi_table_desc** %table_desc, align 8, !dbg !170
  %6 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !171
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %6, i32 0, i32 1, !dbg !173
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !173
  %tobool4 = icmp ne %struct.acpi_table_header* %7, null, !dbg !171
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !174

if.then5:                                         ; preds = %for.body
  %8 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !175
  %signature = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %8, i32 0, i32 3, !dbg !175
  %ascii = bitcast %union.acpi_name_union* %signature to [4 x i8]*, !dbg !175
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !175
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 163, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %arraydecay) #5, !dbg !175
  br label %if.end6, !dbg !177

if.end6:                                          ; preds = %if.then5, %for.body
  br label %for.inc, !dbg !178

for.inc:                                          ; preds = %if.end6
  %9 = load i32, i32* %i, align 4, !dbg !179
  %inc = add i32 %9, 1, !dbg !179
  store i32 %inc, i32* %i, align 4, !dbg !179
  br label %for.cond, !dbg !180, !llvm.loop !181

for.end:                                          ; preds = %for.cond
  %10 = load i8, i8* @acpi_gbl_enable_table_validation, align 1, !dbg !183
  %tobool7 = icmp ne i8 %10, 0, !dbg !183
  br i1 %tobool7, label %if.end27, label %if.then8, !dbg !185

if.then8:                                         ; preds = %for.end
  store i8 1, i8* @acpi_gbl_enable_table_validation, align 1, !dbg !186
  store i32 0, i32* %i, align 4, !dbg !188
  br label %for.cond9, !dbg !190

for.cond9:                                        ; preds = %for.inc24, %if.then8
  %11 = load i32, i32* %i, align 4, !dbg !191
  %12 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !193
  %cmp10 = icmp ult i32 %11, %12, !dbg !194
  br i1 %cmp10, label %for.body12, label %for.end26, !dbg !195

for.body12:                                       ; preds = %for.cond9
  %13 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !196
  %14 = load i32, i32* %i, align 4, !dbg !198
  %idxprom13 = zext i32 %14 to i64, !dbg !199
  %arrayidx14 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %13, i64 %idxprom13, !dbg !199
  store %struct.acpi_table_desc* %arrayidx14, %struct.acpi_table_desc** %table_desc, align 8, !dbg !200
  %15 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !201
  %flags = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %15, i32 0, i32 5, !dbg !203
  %16 = load i8, i8* %flags, align 2, !dbg !203
  %conv15 = zext i8 %16 to i32, !dbg !201
  %and16 = and i32 %conv15, 4, !dbg !204
  %tobool17 = icmp ne i32 %and16, 0, !dbg !204
  br i1 %tobool17, label %if.end23, label %if.then18, !dbg !205

if.then18:                                        ; preds = %for.body12
  %17 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !206
  %call19 = call i32 @acpi_tb_verify_temp_table(%struct.acpi_table_desc* %17, i8* null, i32* %j) #5, !dbg !208
  store i32 %call19, i32* %status, align 4, !dbg !209
  %18 = load i32, i32* %status, align 4, !dbg !210
  %tobool20 = icmp ne i32 %18, 0, !dbg !210
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !212

if.then21:                                        ; preds = %if.then18
  %19 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !213
  call void @acpi_tb_uninstall_table(%struct.acpi_table_desc* %19) #5, !dbg !215
  br label %if.end22, !dbg !216

if.end22:                                         ; preds = %if.then21, %if.then18
  br label %if.end23, !dbg !217

if.end23:                                         ; preds = %if.end22, %for.body12
  br label %for.inc24, !dbg !218

for.inc24:                                        ; preds = %if.end23
  %20 = load i32, i32* %i, align 4, !dbg !219
  %inc25 = add i32 %20, 1, !dbg !219
  store i32 %inc25, i32* %i, align 4, !dbg !219
  br label %for.cond9, !dbg !220, !llvm.loop !221

for.end26:                                        ; preds = %for.cond9
  br label %if.end27, !dbg !223

if.end27:                                         ; preds = %for.end26, %for.end
  %21 = load i8, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !224
  %conv28 = zext i8 %21 to i32, !dbg !224
  %or = or i32 %conv28, 2, !dbg !224
  %conv29 = trunc i32 %or to i8, !dbg !224
  store i8 %conv29, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !224
  %call30 = call i32 @acpi_tb_resize_root_table_list() #5, !dbg !225
  store i32 %call30, i32* %status, align 4, !dbg !226
  %22 = load i8, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !227
  %conv31 = zext i8 %22 to i32, !dbg !227
  %or32 = or i32 %conv31, 1, !dbg !227
  %conv33 = trunc i32 %or32 to i8, !dbg !227
  store i8 %conv33, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !227
  %call34 = call i32 @acpi_ut_release_mutex(i32 2) #5, !dbg !228
  %23 = load i32, i32* %status, align 4, !dbg !229
  store i32 %23, i32* %retval, align 4, !dbg !229
  br label %return, !dbg !229

return:                                           ; preds = %if.end27, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !230
  ret i32 %24, !dbg !230
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_verify_temp_table(%struct.acpi_table_desc*, i8*, i32*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_tb_uninstall_table(%struct.acpi_table_desc*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_table_header(i8* %signature, i32 %instance, %struct.acpi_table_header* %out_table_header) #0 !dbg !231 {
entry:
  %retval = alloca i32, align 4
  %signature.addr = alloca i8*, align 8
  %instance.addr = alloca i32, align 4
  %out_table_header.addr = alloca %struct.acpi_table_header*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %header = alloca %struct.acpi_table_header*, align 8
  store i8* %signature, i8** %signature.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %signature.addr, metadata !235, metadata !DIExpression()), !dbg !236
  store i32 %instance, i32* %instance.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %instance.addr, metadata !237, metadata !DIExpression()), !dbg !238
  store %struct.acpi_table_header* %out_table_header, %struct.acpi_table_header** %out_table_header.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %out_table_header.addr, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata i32* %i, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %j, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %header, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i8*, i8** %signature.addr, align 8, !dbg !247
  %tobool = icmp ne i8* %0, null, !dbg !247
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !249

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_table_header*, %struct.acpi_table_header** %out_table_header.addr, align 8, !dbg !250
  %tobool1 = icmp ne %struct.acpi_table_header* %1, null, !dbg !250
  br i1 %tobool1, label %if.end, label %if.then, !dbg !251

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !252
  br label %return, !dbg !252

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !254
  store i32 0, i32* %j, align 4, !dbg !256
  br label %for.cond, !dbg !257

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !258
  %3 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !260
  %cmp = icmp ult i32 %2, %3, !dbg !261
  br i1 %cmp, label %for.body, label %for.end, !dbg !262

for.body:                                         ; preds = %for.cond
  %4 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !263
  %5 = load i32, i32* %i, align 4, !dbg !263
  %idxprom = zext i32 %5 to i64, !dbg !263
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %4, i64 %idxprom, !dbg !263
  %signature2 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx, i32 0, i32 3, !dbg !263
  %6 = bitcast %union.acpi_name_union* %signature2 to i8*, !dbg !263
  %7 = bitcast i8* %6 to i32*, !dbg !263
  %8 = load i32, i32* %7, align 4, !dbg !263
  %9 = load i8*, i8** %signature.addr, align 8, !dbg !263
  %10 = bitcast i8* %9 to i32*, !dbg !263
  %11 = load i32, i32* %10, align 4, !dbg !263
  %cmp3 = icmp eq i32 %8, %11, !dbg !263
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !266

if.then4:                                         ; preds = %for.body
  br label %for.inc, !dbg !267

if.end5:                                          ; preds = %for.body
  %12 = load i32, i32* %j, align 4, !dbg !269
  %inc = add i32 %12, 1, !dbg !269
  store i32 %inc, i32* %j, align 4, !dbg !269
  %13 = load i32, i32* %instance.addr, align 4, !dbg !271
  %cmp6 = icmp ult i32 %inc, %13, !dbg !272
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !273

if.then7:                                         ; preds = %if.end5
  br label %for.inc, !dbg !274

if.end8:                                          ; preds = %if.end5
  %14 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !276
  %15 = load i32, i32* %i, align 4, !dbg !278
  %idxprom9 = zext i32 %15 to i64, !dbg !279
  %arrayidx10 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %14, i64 %idxprom9, !dbg !279
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx10, i32 0, i32 1, !dbg !280
  %16 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !280
  %tobool11 = icmp ne %struct.acpi_table_header* %16, null, !dbg !279
  br i1 %tobool11, label %if.else24, label %if.then12, !dbg !281

if.then12:                                        ; preds = %if.end8
  %17 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !282
  %18 = load i32, i32* %i, align 4, !dbg !285
  %idxprom13 = zext i32 %18 to i64, !dbg !286
  %arrayidx14 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %17, i64 %idxprom13, !dbg !286
  %flags = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx14, i32 0, i32 5, !dbg !287
  %19 = load i8, i8* %flags, align 2, !dbg !287
  %conv = zext i8 %19 to i32, !dbg !286
  %and = and i32 %conv, 3, !dbg !288
  %cmp15 = icmp eq i32 %and, 1, !dbg !289
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !290

if.then17:                                        ; preds = %if.then12
  %20 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !291
  %21 = load i32, i32* %i, align 4, !dbg !293
  %idxprom18 = zext i32 %21 to i64, !dbg !294
  %arrayidx19 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %20, i64 %idxprom18, !dbg !294
  %address = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx19, i32 0, i32 0, !dbg !295
  %22 = load i64, i64* %address, align 8, !dbg !295
  %call = call i8* @acpi_os_map_memory(i64 %22, i64 36) #5, !dbg !296
  %23 = bitcast i8* %call to %struct.acpi_table_header*, !dbg !296
  store %struct.acpi_table_header* %23, %struct.acpi_table_header** %header, align 8, !dbg !297
  %24 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header, align 8, !dbg !298
  %tobool20 = icmp ne %struct.acpi_table_header* %24, null, !dbg !298
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !300

if.then21:                                        ; preds = %if.then17
  store i32 4, i32* %retval, align 4, !dbg !301
  br label %return, !dbg !301

if.end22:                                         ; preds = %if.then17
  %25 = load %struct.acpi_table_header*, %struct.acpi_table_header** %out_table_header.addr, align 8, !dbg !303
  %26 = bitcast %struct.acpi_table_header* %25 to i8*, !dbg !304
  %27 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header, align 8, !dbg !305
  %28 = bitcast %struct.acpi_table_header* %27 to i8*, !dbg !304
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %28, i64 36, i1 false), !dbg !304
  %29 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header, align 8, !dbg !306
  %30 = bitcast %struct.acpi_table_header* %29 to i8*, !dbg !306
  call void @acpi_os_unmap_memory(i8* %30, i64 36) #5, !dbg !307
  br label %if.end23, !dbg !308

if.else:                                          ; preds = %if.then12
  store i32 5, i32* %retval, align 4, !dbg !309
  br label %return, !dbg !309

if.end23:                                         ; preds = %if.end22
  br label %if.end28, !dbg !311

if.else24:                                        ; preds = %if.end8
  %31 = load %struct.acpi_table_header*, %struct.acpi_table_header** %out_table_header.addr, align 8, !dbg !312
  %32 = bitcast %struct.acpi_table_header* %31 to i8*, !dbg !314
  %33 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !315
  %34 = load i32, i32* %i, align 4, !dbg !316
  %idxprom25 = zext i32 %34 to i64, !dbg !317
  %arrayidx26 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %33, i64 %idxprom25, !dbg !317
  %pointer27 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx26, i32 0, i32 1, !dbg !318
  %35 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer27, align 8, !dbg !318
  %36 = bitcast %struct.acpi_table_header* %35 to i8*, !dbg !314
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %36, i64 36, i1 false), !dbg !314
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.end23
  store i32 0, i32* %retval, align 4, !dbg !319
  br label %return, !dbg !319

for.inc:                                          ; preds = %if.then7, %if.then4
  %37 = load i32, i32* %i, align 4, !dbg !320
  %inc29 = add i32 %37, 1, !dbg !320
  store i32 %inc29, i32* %i, align 4, !dbg !320
  br label %for.cond, !dbg !321, !llvm.loop !322

for.end:                                          ; preds = %for.cond
  store i32 5, i32* %retval, align 4, !dbg !324
  br label %return, !dbg !324

return:                                           ; preds = %for.end, %if.end28, %if.else, %if.then21, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !325
  ret i32 %38, !dbg !325
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_os_map_memory(i64, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local void @acpi_os_unmap_memory(i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_table(i8* %signature, i32 %instance, %struct.acpi_table_header** %out_table) #0 !dbg !326 {
entry:
  %retval = alloca i32, align 4
  %signature.addr = alloca i8*, align 8
  %instance.addr = alloca i32, align 4
  %out_table.addr = alloca %struct.acpi_table_header**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %status = alloca i32, align 4
  %table_desc = alloca %struct.acpi_table_desc*, align 8
  store i8* %signature, i8** %signature.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %signature.addr, metadata !330, metadata !DIExpression()), !dbg !331
  store i32 %instance, i32* %instance.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %instance.addr, metadata !332, metadata !DIExpression()), !dbg !333
  store %struct.acpi_table_header** %out_table, %struct.acpi_table_header*** %out_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header*** %out_table.addr, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata i32* %i, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %j, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i32* %status, metadata !340, metadata !DIExpression()), !dbg !341
  store i32 5, i32* %status, align 4, !dbg !341
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i8*, i8** %signature.addr, align 8, !dbg !344
  %tobool = icmp ne i8* %0, null, !dbg !344
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !346

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %out_table.addr, align 8, !dbg !347
  %tobool1 = icmp ne %struct.acpi_table_header** %1, null, !dbg !347
  br i1 %tobool1, label %if.end, label %if.then, !dbg !348

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !349
  br label %return, !dbg !349

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %out_table.addr, align 8, !dbg !351
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %2, align 8, !dbg !352
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #5, !dbg !353
  store i32 0, i32* %i, align 4, !dbg !354
  store i32 0, i32* %j, align 4, !dbg !356
  br label %for.cond, !dbg !357

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !358
  %4 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !360
  %cmp = icmp ult i32 %3, %4, !dbg !361
  br i1 %cmp, label %for.body, label %for.end, !dbg !362

for.body:                                         ; preds = %for.cond
  %5 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !363
  %6 = load i32, i32* %i, align 4, !dbg !365
  %idxprom = zext i32 %6 to i64, !dbg !366
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %5, i64 %idxprom, !dbg !366
  store %struct.acpi_table_desc* %arrayidx, %struct.acpi_table_desc** %table_desc, align 8, !dbg !367
  %7 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !368
  %signature2 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %7, i32 0, i32 3, !dbg !368
  %8 = bitcast %union.acpi_name_union* %signature2 to i8*, !dbg !368
  %9 = bitcast i8* %8 to i32*, !dbg !368
  %10 = load i32, i32* %9, align 4, !dbg !368
  %11 = load i8*, i8** %signature.addr, align 8, !dbg !368
  %12 = bitcast i8* %11 to i32*, !dbg !368
  %13 = load i32, i32* %12, align 4, !dbg !368
  %cmp3 = icmp eq i32 %10, %13, !dbg !368
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !370

if.then4:                                         ; preds = %for.body
  br label %for.inc, !dbg !371

if.end5:                                          ; preds = %for.body
  %14 = load i32, i32* %j, align 4, !dbg !373
  %inc = add i32 %14, 1, !dbg !373
  store i32 %inc, i32* %j, align 4, !dbg !373
  %15 = load i32, i32* %instance.addr, align 4, !dbg !375
  %cmp6 = icmp ult i32 %inc, %15, !dbg !376
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !377

if.then7:                                         ; preds = %if.end5
  br label %for.inc, !dbg !378

if.end8:                                          ; preds = %if.end5
  %16 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !380
  %17 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %out_table.addr, align 8, !dbg !381
  %call9 = call i32 @acpi_tb_get_table(%struct.acpi_table_desc* %16, %struct.acpi_table_header** %17) #5, !dbg !382
  store i32 %call9, i32* %status, align 4, !dbg !383
  br label %for.end, !dbg !384

for.inc:                                          ; preds = %if.then7, %if.then4
  %18 = load i32, i32* %i, align 4, !dbg !385
  %inc10 = add i32 %18, 1, !dbg !385
  store i32 %inc10, i32* %i, align 4, !dbg !385
  br label %for.cond, !dbg !386, !llvm.loop !387

for.end:                                          ; preds = %if.end8, %for.cond
  %call11 = call i32 @acpi_ut_release_mutex(i32 2) #5, !dbg !389
  %19 = load i32, i32* %status, align 4, !dbg !390
  store i32 %19, i32* %retval, align 4, !dbg !391
  br label %return, !dbg !391

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !392
  ret i32 %20, !dbg !392
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_get_table(%struct.acpi_table_desc*, %struct.acpi_table_header**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_put_table(%struct.acpi_table_header* %table) #0 !dbg !393 {
entry:
  %table.addr = alloca %struct.acpi_table_header*, align 8
  %i = alloca i32, align 4
  %table_desc = alloca %struct.acpi_table_desc*, align 8
  store %struct.acpi_table_header* %table, %struct.acpi_table_header** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table.addr, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata i32* %i, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !402
  %tobool = icmp ne %struct.acpi_table_header* %0, null, !dbg !402
  br i1 %tobool, label %if.end, label %if.then, !dbg !404

if.then:                                          ; preds = %entry
  br label %return, !dbg !405

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #5, !dbg !407
  store i32 0, i32* %i, align 4, !dbg !408
  br label %for.cond, !dbg !410

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !411
  %2 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !413
  %cmp = icmp ult i32 %1, %2, !dbg !414
  br i1 %cmp, label %for.body, label %for.end, !dbg !415

for.body:                                         ; preds = %for.cond
  %3 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !416
  %4 = load i32, i32* %i, align 4, !dbg !418
  %idxprom = zext i32 %4 to i64, !dbg !419
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %3, i64 %idxprom, !dbg !419
  store %struct.acpi_table_desc* %arrayidx, %struct.acpi_table_desc** %table_desc, align 8, !dbg !420
  %5 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !421
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %5, i32 0, i32 1, !dbg !423
  %6 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !423
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !424
  %cmp1 = icmp ne %struct.acpi_table_header* %6, %7, !dbg !425
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !426

if.then2:                                         ; preds = %for.body
  br label %for.inc, !dbg !427

if.end3:                                          ; preds = %for.body
  %8 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc, align 8, !dbg !429
  call void @acpi_tb_put_table(%struct.acpi_table_desc* %8) #5, !dbg !430
  br label %for.end, !dbg !431

for.inc:                                          ; preds = %if.then2
  %9 = load i32, i32* %i, align 4, !dbg !432
  %inc = add i32 %9, 1, !dbg !432
  store i32 %inc, i32* %i, align 4, !dbg !432
  br label %for.cond, !dbg !433, !llvm.loop !434

for.end:                                          ; preds = %if.end3, %for.cond
  %call4 = call i32 @acpi_ut_release_mutex(i32 2) #5, !dbg !436
  br label %return, !dbg !437

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !438
}

; Function Attrs: noredzone
declare dso_local void @acpi_tb_put_table(%struct.acpi_table_desc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_table_by_index(i32 %table_index, %struct.acpi_table_header** %out_table) #0 !dbg !439 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %out_table.addr = alloca %struct.acpi_table_header**, align 8
  %status = alloca i32, align 4
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !442, metadata !DIExpression()), !dbg !443
  store %struct.acpi_table_header** %out_table, %struct.acpi_table_header*** %out_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header*** %out_table.addr, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata i32* %status, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %out_table.addr, align 8, !dbg !448
  %tobool = icmp ne %struct.acpi_table_header** %0, null, !dbg !448
  br i1 %tobool, label %if.end, label %if.then, !dbg !450

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !451
  br label %return, !dbg !451

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %out_table.addr, align 8, !dbg !453
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %1, align 8, !dbg !454
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #5, !dbg !455
  %2 = load i32, i32* %table_index.addr, align 4, !dbg !456
  %3 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !458
  %cmp = icmp uge i32 %2, %3, !dbg !459
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !460

if.then1:                                         ; preds = %if.end
  store i32 4097, i32* %status, align 4, !dbg !461
  br label %unlock_and_exit, !dbg !463

if.end2:                                          ; preds = %if.end
  %4 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !464
  %5 = load i32, i32* %table_index.addr, align 4, !dbg !465
  %idxprom = zext i32 %5 to i64, !dbg !466
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %4, i64 %idxprom, !dbg !466
  %6 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %out_table.addr, align 8, !dbg !467
  %call3 = call i32 @acpi_tb_get_table(%struct.acpi_table_desc* %arrayidx, %struct.acpi_table_header** %6) #5, !dbg !468
  store i32 %call3, i32* %status, align 4, !dbg !469
  br label %unlock_and_exit, !dbg !470

unlock_and_exit:                                  ; preds = %if.end2, %if.then1
  call void @llvm.dbg.label(metadata !471), !dbg !472
  %call4 = call i32 @acpi_ut_release_mutex(i32 2) #5, !dbg !473
  %7 = load i32, i32* %status, align 4, !dbg !474
  store i32 %7, i32* %retval, align 4, !dbg !474
  br label %return, !dbg !474

return:                                           ; preds = %unlock_and_exit, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !475
  ret i32 %8, !dbg !475
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_table_handler(i32 (i32, i8*, i8*)* %handler, i8* %context) #0 !dbg !476 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*, i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i32 (i32, i8*, i8*)* %handler, i32 (i32, i8*, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*, i8*)** %handler.addr, metadata !483, metadata !DIExpression()), !dbg !484
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !485, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.declare(metadata i32* %status, metadata !487, metadata !DIExpression()), !dbg !488
  %0 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %handler.addr, align 8, !dbg !489
  %tobool = icmp ne i32 (i32, i8*, i8*)* %0, null, !dbg !489
  br i1 %tobool, label %if.end, label %if.then, !dbg !491

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !492
  br label %return, !dbg !492

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #5, !dbg !494
  store i32 %call, i32* %status, align 4, !dbg !495
  %1 = load i32, i32* %status, align 4, !dbg !496
  %tobool1 = icmp ne i32 %1, 0, !dbg !496
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !498

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %status, align 4, !dbg !499
  store i32 %2, i32* %retval, align 4, !dbg !499
  br label %return, !dbg !499

if.end3:                                          ; preds = %if.end
  %3 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** @acpi_gbl_table_handler, align 8, !dbg !501
  %tobool4 = icmp ne i32 (i32, i8*, i8*)* %3, null, !dbg !501
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !503

if.then5:                                         ; preds = %if.end3
  store i32 7, i32* %status, align 4, !dbg !504
  br label %cleanup, !dbg !506

if.end6:                                          ; preds = %if.end3
  %4 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %handler.addr, align 8, !dbg !507
  store i32 (i32, i8*, i8*)* %4, i32 (i32, i8*, i8*)** @acpi_gbl_table_handler, align 8, !dbg !508
  %5 = load i8*, i8** %context.addr, align 8, !dbg !509
  store i8* %5, i8** @acpi_gbl_table_handler_context, align 8, !dbg !510
  br label %cleanup, !dbg !511

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.dbg.label(metadata !512), !dbg !513
  %call7 = call i32 @acpi_ut_release_mutex(i32 3) #5, !dbg !514
  %6 = load i32, i32* %status, align 4, !dbg !515
  store i32 %6, i32* %retval, align 4, !dbg !515
  br label %return, !dbg !515

return:                                           ; preds = %cleanup, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !516
  ret i32 %7, !dbg !516
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_remove_table_handler(i32 (i32, i8*, i8*)* %handler) #0 !dbg !517 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*, i8*)*, align 8
  %status = alloca i32, align 4
  store i32 (i32, i8*, i8*)* %handler, i32 (i32, i8*, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*, i8*)** %handler.addr, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.declare(metadata i32* %status, metadata !522, metadata !DIExpression()), !dbg !523
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #5, !dbg !524
  store i32 %call, i32* %status, align 4, !dbg !525
  %0 = load i32, i32* %status, align 4, !dbg !526
  %tobool = icmp ne i32 %0, 0, !dbg !526
  br i1 %tobool, label %if.then, label %if.end, !dbg !528

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !529
  store i32 %1, i32* %retval, align 4, !dbg !529
  br label %return, !dbg !529

if.end:                                           ; preds = %entry
  %2 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %handler.addr, align 8, !dbg !531
  %tobool1 = icmp ne i32 (i32, i8*, i8*)* %2, null, !dbg !531
  br i1 %tobool1, label %lor.lhs.false, label %if.then2, !dbg !533

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %handler.addr, align 8, !dbg !534
  %4 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** @acpi_gbl_table_handler, align 8, !dbg !535
  %cmp = icmp ne i32 (i32, i8*, i8*)* %3, %4, !dbg !536
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !537

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i32 4097, i32* %status, align 4, !dbg !538
  br label %cleanup, !dbg !540

if.end3:                                          ; preds = %lor.lhs.false
  store i32 (i32, i8*, i8*)* null, i32 (i32, i8*, i8*)** @acpi_gbl_table_handler, align 8, !dbg !541
  br label %cleanup, !dbg !542

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.dbg.label(metadata !543), !dbg !544
  %call4 = call i32 @acpi_ut_release_mutex(i32 3) #5, !dbg !545
  %5 = load i32, i32* %status, align 4, !dbg !546
  store i32 %5, i32* %retval, align 4, !dbg !546
  br label %return, !dbg !546

return:                                           ; preds = %cleanup, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !547
  ret i32 %6, !dbg !547
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbxface.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !17, !18}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !16)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !{!0}
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !23)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{!24}
!24 = !DISubrange(count: 8)
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"Code Model", i32 2}
!29 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!30 = distinct !DISubprogram(name: "acpi_allocate_root_table", scope: !3, file: !3, line: 32, type: !31, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!31 = !DISubroutineType(types: !32)
!32 = !{!13, !14}
!33 = !DILocalVariable(name: "initial_table_count", arg: 1, scope: !30, file: !3, line: 32, type: !14)
!34 = !DILocation(line: 32, column: 42, scope: !30)
!35 = !DILocation(line: 35, column: 45, scope: !30)
!36 = !DILocation(line: 35, column: 43, scope: !30)
!37 = !DILocation(line: 36, column: 33, scope: !30)
!38 = !DILocation(line: 38, column: 10, scope: !30)
!39 = !DILocation(line: 38, column: 2, scope: !30)
!40 = distinct !DISubprogram(name: "acpi_initialize_tables", scope: !3, file: !3, line: 68, type: !41, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!41 = !DISubroutineType(types: !42)
!42 = !{!13, !43, !14, !59}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !45, line: 334, size: 256, elements: !46)
!45 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !49, !72, !73, !78, !83, !84}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !44, file: !45, line: 335, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !8)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !44, file: !45, line: 336, baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !45, line: 68, size: 288, elements: !52)
!52 = !{!53, !57, !58, !62, !63, !67, !69, !70, !71}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !51, file: !45, line: 69, baseType: !54, size: 32)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 4)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !51, file: !45, line: 70, baseType: !14, size: 32, offset: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !51, file: !45, line: 71, baseType: !59, size: 8, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !61)
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !51, file: !45, line: 72, baseType: !59, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !51, file: !45, line: 73, baseType: !64, size: 48, offset: 80)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 48, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 6)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !51, file: !45, line: 74, baseType: !68, size: 64, offset: 128)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !23)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !51, file: !45, line: 75, baseType: !14, size: 32, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !51, file: !45, line: 76, baseType: !54, size: 32, offset: 224)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !51, file: !45, line: 77, baseType: !14, size: 32, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !44, file: !45, line: 337, baseType: !14, size: 32, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !44, file: !45, line: 338, baseType: !74, size: 32, offset: 160)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !45, line: 327, size: 32, elements: !75)
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !74, file: !45, line: 328, baseType: !14, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !74, file: !45, line: 329, baseType: !54, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !44, file: !45, line: 339, baseType: !79, size: 16, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !82)
!82 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !45, line: 340, baseType: !59, size: 8, offset: 208)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !44, file: !45, line: 341, baseType: !80, size: 16, offset: 224)
!85 = !DILocalVariable(name: "initial_table_array", arg: 1, scope: !40, file: !3, line: 68, type: !43)
!86 = !DILocation(line: 68, column: 48, scope: !40)
!87 = !DILocalVariable(name: "initial_table_count", arg: 2, scope: !40, file: !3, line: 69, type: !14)
!88 = !DILocation(line: 69, column: 14, scope: !40)
!89 = !DILocalVariable(name: "allow_resize", arg: 3, scope: !40, file: !3, line: 69, type: !59)
!90 = !DILocation(line: 69, column: 38, scope: !40)
!91 = !DILocalVariable(name: "rsdp_address", scope: !40, file: !3, line: 71, type: !48)
!92 = !DILocation(line: 71, column: 24, scope: !40)
!93 = !DILocalVariable(name: "status", scope: !40, file: !3, line: 72, type: !13)
!94 = !DILocation(line: 72, column: 14, scope: !40)
!95 = !DILocation(line: 80, column: 7, scope: !96)
!96 = distinct !DILexicalBlock(scope: !40, file: !3, line: 80, column: 6)
!97 = !DILocation(line: 80, column: 6, scope: !40)
!98 = !DILocation(line: 81, column: 37, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !3, line: 80, column: 28)
!100 = !DILocation(line: 81, column: 12, scope: !99)
!101 = !DILocation(line: 81, column: 10, scope: !99)
!102 = !DILocation(line: 82, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !3, line: 82, column: 7)
!104 = !DILocation(line: 82, column: 7, scope: !99)
!105 = !DILocation(line: 83, column: 4, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !3, line: 82, column: 29)
!107 = !DILocation(line: 85, column: 2, scope: !99)
!108 = !DILocation(line: 88, column: 10, scope: !109)
!109 = distinct !DILexicalBlock(scope: !96, file: !3, line: 85, column: 9)
!110 = !DILocation(line: 88, column: 3, scope: !109)
!111 = !DILocation(line: 89, column: 21, scope: !109)
!112 = !DILocation(line: 89, column: 10, scope: !109)
!113 = !DILocation(line: 89, column: 41, scope: !109)
!114 = !DILocation(line: 92, column: 37, scope: !109)
!115 = !DILocation(line: 92, column: 35, scope: !109)
!116 = !DILocation(line: 93, column: 46, scope: !109)
!117 = !DILocation(line: 93, column: 44, scope: !109)
!118 = !DILocation(line: 94, column: 34, scope: !109)
!119 = !DILocation(line: 95, column: 7, scope: !120)
!120 = distinct !DILexicalBlock(scope: !109, file: !3, line: 95, column: 7)
!121 = !DILocation(line: 95, column: 7, scope: !109)
!122 = !DILocation(line: 96, column: 35, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !3, line: 95, column: 21)
!124 = !DILocation(line: 98, column: 3, scope: !123)
!125 = !DILocation(line: 103, column: 17, scope: !40)
!126 = !DILocation(line: 103, column: 15, scope: !40)
!127 = !DILocation(line: 104, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !40, file: !3, line: 104, column: 6)
!129 = !DILocation(line: 104, column: 6, scope: !40)
!130 = !DILocation(line: 105, column: 3, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !3, line: 104, column: 21)
!132 = !DILocation(line: 113, column: 36, scope: !40)
!133 = !DILocation(line: 113, column: 11, scope: !40)
!134 = !DILocation(line: 113, column: 9, scope: !40)
!135 = !DILocation(line: 114, column: 2, scope: !40)
!136 = !DILocation(line: 115, column: 1, scope: !40)
!137 = distinct !DISubprogram(name: "acpi_reallocate_root_table", scope: !3, file: !3, line: 133, type: !138, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!138 = !DISubroutineType(types: !139)
!139 = !{!13}
!140 = !DILocalVariable(name: "status", scope: !137, file: !3, line: 135, type: !13)
!141 = !DILocation(line: 135, column: 14, scope: !137)
!142 = !DILocalVariable(name: "table_desc", scope: !137, file: !3, line: 136, type: !43)
!143 = !DILocation(line: 136, column: 26, scope: !137)
!144 = !DILocalVariable(name: "i", scope: !137, file: !3, line: 137, type: !14)
!145 = !DILocation(line: 137, column: 6, scope: !137)
!146 = !DILocalVariable(name: "j", scope: !137, file: !3, line: 137, type: !14)
!147 = !DILocation(line: 137, column: 9, scope: !137)
!148 = !DILocation(line: 147, column: 32, scope: !149)
!149 = distinct !DILexicalBlock(scope: !137, file: !3, line: 147, column: 6)
!150 = !DILocation(line: 147, column: 7, scope: !149)
!151 = !DILocation(line: 147, column: 38, scope: !149)
!152 = !DILocation(line: 147, column: 68, scope: !149)
!153 = !DILocation(line: 148, column: 6, scope: !149)
!154 = !DILocation(line: 147, column: 6, scope: !137)
!155 = !DILocation(line: 149, column: 3, scope: !156)
!156 = distinct !DILexicalBlock(scope: !149, file: !3, line: 148, column: 40)
!157 = !DILocation(line: 152, column: 8, scope: !137)
!158 = !DILocation(line: 160, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !137, file: !3, line: 160, column: 2)
!160 = !DILocation(line: 160, column: 7, scope: !159)
!161 = !DILocation(line: 160, column: 14, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !3, line: 160, column: 2)
!163 = !DILocation(line: 160, column: 43, scope: !162)
!164 = !DILocation(line: 160, column: 16, scope: !162)
!165 = !DILocation(line: 160, column: 2, scope: !159)
!166 = !DILocation(line: 161, column: 42, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !3, line: 160, column: 69)
!168 = !DILocation(line: 161, column: 49, scope: !167)
!169 = !DILocation(line: 161, column: 17, scope: !167)
!170 = !DILocation(line: 161, column: 14, scope: !167)
!171 = !DILocation(line: 162, column: 7, scope: !172)
!172 = distinct !DILexicalBlock(scope: !167, file: !3, line: 162, column: 7)
!173 = !DILocation(line: 162, column: 19, scope: !172)
!174 = !DILocation(line: 162, column: 7, scope: !167)
!175 = !DILocation(line: 163, column: 4, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !3, line: 162, column: 28)
!177 = !DILocation(line: 166, column: 3, scope: !176)
!178 = !DILocation(line: 167, column: 2, scope: !167)
!179 = !DILocation(line: 160, column: 64, scope: !162)
!180 = !DILocation(line: 160, column: 2, scope: !162)
!181 = distinct !{!181, !165, !182}
!182 = !DILocation(line: 167, column: 2, scope: !159)
!183 = !DILocation(line: 169, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !137, file: !3, line: 169, column: 6)
!185 = !DILocation(line: 169, column: 6, scope: !137)
!186 = !DILocation(line: 174, column: 36, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !3, line: 169, column: 41)
!188 = !DILocation(line: 175, column: 10, scope: !189)
!189 = distinct !DILexicalBlock(scope: !187, file: !3, line: 175, column: 3)
!190 = !DILocation(line: 175, column: 8, scope: !189)
!191 = !DILocation(line: 175, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !3, line: 175, column: 3)
!193 = !DILocation(line: 175, column: 44, scope: !192)
!194 = !DILocation(line: 175, column: 17, scope: !192)
!195 = !DILocation(line: 175, column: 3, scope: !189)
!196 = !DILocation(line: 177, column: 43, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !3, line: 176, column: 13)
!198 = !DILocation(line: 177, column: 50, scope: !197)
!199 = !DILocation(line: 177, column: 18, scope: !197)
!200 = !DILocation(line: 177, column: 15, scope: !197)
!201 = !DILocation(line: 178, column: 10, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !3, line: 178, column: 8)
!203 = !DILocation(line: 178, column: 22, scope: !202)
!204 = !DILocation(line: 178, column: 28, scope: !202)
!205 = !DILocation(line: 178, column: 8, scope: !197)
!206 = !DILocation(line: 180, column: 35, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !3, line: 178, column: 55)
!208 = !DILocation(line: 180, column: 9, scope: !207)
!209 = !DILocation(line: 179, column: 12, scope: !207)
!210 = !DILocation(line: 182, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !3, line: 182, column: 9)
!212 = !DILocation(line: 182, column: 9, scope: !207)
!213 = !DILocation(line: 183, column: 30, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !3, line: 182, column: 31)
!215 = !DILocation(line: 183, column: 6, scope: !214)
!216 = !DILocation(line: 184, column: 5, scope: !214)
!217 = !DILocation(line: 185, column: 4, scope: !207)
!218 = !DILocation(line: 186, column: 3, scope: !197)
!219 = !DILocation(line: 176, column: 8, scope: !192)
!220 = !DILocation(line: 175, column: 3, scope: !192)
!221 = distinct !{!221, !195, !222}
!222 = !DILocation(line: 186, column: 3, scope: !189)
!223 = !DILocation(line: 187, column: 2, scope: !187)
!224 = !DILocation(line: 189, column: 33, scope: !137)
!225 = !DILocation(line: 190, column: 11, scope: !137)
!226 = !DILocation(line: 190, column: 9, scope: !137)
!227 = !DILocation(line: 191, column: 33, scope: !137)
!228 = !DILocation(line: 193, column: 8, scope: !137)
!229 = !DILocation(line: 194, column: 2, scope: !137)
!230 = !DILocation(line: 195, column: 1, scope: !137)
!231 = distinct !DISubprogram(name: "acpi_get_table_header", scope: !3, file: !3, line: 216, type: !232, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!232 = !DISubroutineType(types: !233)
!233 = !{!13, !234, !14, !50}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!235 = !DILocalVariable(name: "signature", arg: 1, scope: !231, file: !3, line: 216, type: !234)
!236 = !DILocation(line: 216, column: 29, scope: !231)
!237 = !DILocalVariable(name: "instance", arg: 2, scope: !231, file: !3, line: 217, type: !14)
!238 = !DILocation(line: 217, column: 13, scope: !231)
!239 = !DILocalVariable(name: "out_table_header", arg: 3, scope: !231, file: !3, line: 217, type: !50)
!240 = !DILocation(line: 217, column: 49, scope: !231)
!241 = !DILocalVariable(name: "i", scope: !231, file: !3, line: 219, type: !14)
!242 = !DILocation(line: 219, column: 6, scope: !231)
!243 = !DILocalVariable(name: "j", scope: !231, file: !3, line: 220, type: !14)
!244 = !DILocation(line: 220, column: 6, scope: !231)
!245 = !DILocalVariable(name: "header", scope: !231, file: !3, line: 221, type: !50)
!246 = !DILocation(line: 221, column: 28, scope: !231)
!247 = !DILocation(line: 225, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !231, file: !3, line: 225, column: 6)
!249 = !DILocation(line: 225, column: 17, scope: !248)
!250 = !DILocation(line: 225, column: 21, scope: !248)
!251 = !DILocation(line: 225, column: 6, scope: !231)
!252 = !DILocation(line: 226, column: 3, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !3, line: 225, column: 39)
!254 = !DILocation(line: 231, column: 9, scope: !255)
!255 = distinct !DILexicalBlock(scope: !231, file: !3, line: 231, column: 2)
!256 = !DILocation(line: 231, column: 16, scope: !255)
!257 = !DILocation(line: 231, column: 7, scope: !255)
!258 = !DILocation(line: 231, column: 21, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !3, line: 231, column: 2)
!260 = !DILocation(line: 231, column: 50, scope: !259)
!261 = !DILocation(line: 231, column: 23, scope: !259)
!262 = !DILocation(line: 231, column: 2, scope: !255)
!263 = !DILocation(line: 233, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 233, column: 7)
!265 = distinct !DILexicalBlock(scope: !259, file: !3, line: 232, column: 12)
!266 = !DILocation(line: 233, column: 7, scope: !265)
!267 = !DILocation(line: 236, column: 4, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !3, line: 235, column: 20)
!269 = !DILocation(line: 239, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !3, line: 239, column: 7)
!271 = !DILocation(line: 239, column: 13, scope: !270)
!272 = !DILocation(line: 239, column: 11, scope: !270)
!273 = !DILocation(line: 239, column: 7, scope: !265)
!274 = !DILocation(line: 240, column: 4, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !3, line: 239, column: 23)
!276 = !DILocation(line: 243, column: 33, scope: !277)
!277 = distinct !DILexicalBlock(scope: !265, file: !3, line: 243, column: 7)
!278 = !DILocation(line: 243, column: 40, scope: !277)
!279 = !DILocation(line: 243, column: 8, scope: !277)
!280 = !DILocation(line: 243, column: 43, scope: !277)
!281 = !DILocation(line: 243, column: 7, scope: !265)
!282 = !DILocation(line: 244, column: 34, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 244, column: 8)
!284 = distinct !DILexicalBlock(scope: !277, file: !3, line: 243, column: 52)
!285 = !DILocation(line: 244, column: 41, scope: !283)
!286 = !DILocation(line: 244, column: 9, scope: !283)
!287 = !DILocation(line: 244, column: 44, scope: !283)
!288 = !DILocation(line: 244, column: 50, scope: !283)
!289 = !DILocation(line: 245, column: 33, scope: !283)
!290 = !DILocation(line: 244, column: 8, scope: !284)
!291 = !DILocation(line: 249, column: 14, scope: !292)
!292 = distinct !DILexicalBlock(scope: !283, file: !3, line: 246, column: 45)
!293 = !DILocation(line: 249, column: 21, scope: !292)
!294 = !DILocation(line: 248, column: 28, scope: !292)
!295 = !DILocation(line: 249, column: 24, scope: !292)
!296 = !DILocation(line: 248, column: 9, scope: !292)
!297 = !DILocation(line: 247, column: 12, scope: !292)
!298 = !DILocation(line: 252, column: 10, scope: !299)
!299 = distinct !DILexicalBlock(scope: !292, file: !3, line: 252, column: 9)
!300 = !DILocation(line: 252, column: 9, scope: !292)
!301 = !DILocation(line: 253, column: 6, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !3, line: 252, column: 18)
!303 = !DILocation(line: 256, column: 12, scope: !292)
!304 = !DILocation(line: 256, column: 5, scope: !292)
!305 = !DILocation(line: 256, column: 30, scope: !292)
!306 = !DILocation(line: 258, column: 26, scope: !292)
!307 = !DILocation(line: 258, column: 5, scope: !292)
!308 = !DILocation(line: 261, column: 4, scope: !292)
!309 = !DILocation(line: 262, column: 5, scope: !310)
!310 = distinct !DILexicalBlock(scope: !283, file: !3, line: 261, column: 11)
!311 = !DILocation(line: 264, column: 3, scope: !284)
!312 = !DILocation(line: 265, column: 11, scope: !313)
!313 = distinct !DILexicalBlock(scope: !277, file: !3, line: 264, column: 10)
!314 = !DILocation(line: 265, column: 4, scope: !313)
!315 = !DILocation(line: 266, column: 36, scope: !313)
!316 = !DILocation(line: 266, column: 43, scope: !313)
!317 = !DILocation(line: 266, column: 11, scope: !313)
!318 = !DILocation(line: 266, column: 46, scope: !313)
!319 = !DILocation(line: 269, column: 3, scope: !265)
!320 = !DILocation(line: 232, column: 8, scope: !259)
!321 = !DILocation(line: 231, column: 2, scope: !259)
!322 = distinct !{!322, !262, !323}
!323 = !DILocation(line: 270, column: 2, scope: !255)
!324 = !DILocation(line: 272, column: 2, scope: !231)
!325 = !DILocation(line: 273, column: 1, scope: !231)
!326 = distinct !DISubprogram(name: "acpi_get_table", scope: !3, file: !3, line: 297, type: !327, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!327 = !DISubroutineType(types: !328)
!328 = !{!13, !234, !14, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!330 = !DILocalVariable(name: "signature", arg: 1, scope: !326, file: !3, line: 297, type: !234)
!331 = !DILocation(line: 297, column: 22, scope: !326)
!332 = !DILocalVariable(name: "instance", arg: 2, scope: !326, file: !3, line: 298, type: !14)
!333 = !DILocation(line: 298, column: 13, scope: !326)
!334 = !DILocalVariable(name: "out_table", arg: 3, scope: !326, file: !3, line: 298, type: !329)
!335 = !DILocation(line: 298, column: 51, scope: !326)
!336 = !DILocalVariable(name: "i", scope: !326, file: !3, line: 300, type: !14)
!337 = !DILocation(line: 300, column: 6, scope: !326)
!338 = !DILocalVariable(name: "j", scope: !326, file: !3, line: 301, type: !14)
!339 = !DILocation(line: 301, column: 6, scope: !326)
!340 = !DILocalVariable(name: "status", scope: !326, file: !3, line: 302, type: !13)
!341 = !DILocation(line: 302, column: 14, scope: !326)
!342 = !DILocalVariable(name: "table_desc", scope: !326, file: !3, line: 303, type: !43)
!343 = !DILocation(line: 303, column: 26, scope: !326)
!344 = !DILocation(line: 307, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !326, file: !3, line: 307, column: 6)
!346 = !DILocation(line: 307, column: 17, scope: !345)
!347 = !DILocation(line: 307, column: 21, scope: !345)
!348 = !DILocation(line: 307, column: 6, scope: !326)
!349 = !DILocation(line: 308, column: 3, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !3, line: 307, column: 32)
!351 = !DILocation(line: 316, column: 3, scope: !326)
!352 = !DILocation(line: 316, column: 13, scope: !326)
!353 = !DILocation(line: 318, column: 8, scope: !326)
!354 = !DILocation(line: 322, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !326, file: !3, line: 322, column: 2)
!356 = !DILocation(line: 322, column: 16, scope: !355)
!357 = !DILocation(line: 322, column: 7, scope: !355)
!358 = !DILocation(line: 322, column: 21, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !3, line: 322, column: 2)
!360 = !DILocation(line: 322, column: 50, scope: !359)
!361 = !DILocation(line: 322, column: 23, scope: !359)
!362 = !DILocation(line: 322, column: 2, scope: !355)
!363 = !DILocation(line: 324, column: 42, scope: !364)
!364 = distinct !DILexicalBlock(scope: !359, file: !3, line: 323, column: 12)
!365 = !DILocation(line: 324, column: 49, scope: !364)
!366 = !DILocation(line: 324, column: 17, scope: !364)
!367 = !DILocation(line: 324, column: 14, scope: !364)
!368 = !DILocation(line: 326, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !364, file: !3, line: 326, column: 7)
!370 = !DILocation(line: 326, column: 7, scope: !364)
!371 = !DILocation(line: 327, column: 4, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !3, line: 326, column: 65)
!373 = !DILocation(line: 330, column: 7, scope: !374)
!374 = distinct !DILexicalBlock(scope: !364, file: !3, line: 330, column: 7)
!375 = !DILocation(line: 330, column: 13, scope: !374)
!376 = !DILocation(line: 330, column: 11, scope: !374)
!377 = !DILocation(line: 330, column: 7, scope: !364)
!378 = !DILocation(line: 331, column: 4, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !3, line: 330, column: 23)
!380 = !DILocation(line: 334, column: 30, scope: !364)
!381 = !DILocation(line: 334, column: 42, scope: !364)
!382 = !DILocation(line: 334, column: 12, scope: !364)
!383 = !DILocation(line: 334, column: 10, scope: !364)
!384 = !DILocation(line: 335, column: 3, scope: !364)
!385 = !DILocation(line: 323, column: 8, scope: !359)
!386 = !DILocation(line: 322, column: 2, scope: !359)
!387 = distinct !{!387, !362, !388}
!388 = !DILocation(line: 336, column: 2, scope: !355)
!389 = !DILocation(line: 338, column: 8, scope: !326)
!390 = !DILocation(line: 339, column: 10, scope: !326)
!391 = !DILocation(line: 339, column: 2, scope: !326)
!392 = !DILocation(line: 340, column: 1, scope: !326)
!393 = distinct !DISubprogram(name: "acpi_put_table", scope: !3, file: !3, line: 359, type: !394, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !50}
!396 = !DILocalVariable(name: "table", arg: 1, scope: !393, file: !3, line: 359, type: !50)
!397 = !DILocation(line: 359, column: 47, scope: !393)
!398 = !DILocalVariable(name: "i", scope: !393, file: !3, line: 361, type: !14)
!399 = !DILocation(line: 361, column: 6, scope: !393)
!400 = !DILocalVariable(name: "table_desc", scope: !393, file: !3, line: 362, type: !43)
!401 = !DILocation(line: 362, column: 26, scope: !393)
!402 = !DILocation(line: 366, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !393, file: !3, line: 366, column: 6)
!404 = !DILocation(line: 366, column: 6, scope: !393)
!405 = !DILocation(line: 367, column: 3, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !3, line: 366, column: 14)
!407 = !DILocation(line: 370, column: 8, scope: !393)
!408 = !DILocation(line: 374, column: 9, scope: !409)
!409 = distinct !DILexicalBlock(scope: !393, file: !3, line: 374, column: 2)
!410 = !DILocation(line: 374, column: 7, scope: !409)
!411 = !DILocation(line: 374, column: 14, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !3, line: 374, column: 2)
!413 = !DILocation(line: 374, column: 43, scope: !412)
!414 = !DILocation(line: 374, column: 16, scope: !412)
!415 = !DILocation(line: 374, column: 2, scope: !409)
!416 = !DILocation(line: 375, column: 42, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !3, line: 374, column: 69)
!418 = !DILocation(line: 375, column: 49, scope: !417)
!419 = !DILocation(line: 375, column: 17, scope: !417)
!420 = !DILocation(line: 375, column: 14, scope: !417)
!421 = !DILocation(line: 377, column: 7, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !3, line: 377, column: 7)
!423 = !DILocation(line: 377, column: 19, scope: !422)
!424 = !DILocation(line: 377, column: 30, scope: !422)
!425 = !DILocation(line: 377, column: 27, scope: !422)
!426 = !DILocation(line: 377, column: 7, scope: !417)
!427 = !DILocation(line: 378, column: 4, scope: !428)
!428 = distinct !DILexicalBlock(scope: !422, file: !3, line: 377, column: 37)
!429 = !DILocation(line: 381, column: 21, scope: !417)
!430 = !DILocation(line: 381, column: 3, scope: !417)
!431 = !DILocation(line: 382, column: 3, scope: !417)
!432 = !DILocation(line: 374, column: 65, scope: !412)
!433 = !DILocation(line: 374, column: 2, scope: !412)
!434 = distinct !{!434, !415, !435}
!435 = !DILocation(line: 383, column: 2, scope: !409)
!436 = !DILocation(line: 385, column: 8, scope: !393)
!437 = !DILocation(line: 386, column: 2, scope: !393)
!438 = !DILocation(line: 387, column: 1, scope: !393)
!439 = distinct !DISubprogram(name: "acpi_get_table_by_index", scope: !3, file: !3, line: 405, type: !440, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!440 = !DISubroutineType(types: !441)
!441 = !{!13, !14, !329}
!442 = !DILocalVariable(name: "table_index", arg: 1, scope: !439, file: !3, line: 405, type: !14)
!443 = !DILocation(line: 405, column: 29, scope: !439)
!444 = !DILocalVariable(name: "out_table", arg: 2, scope: !439, file: !3, line: 405, type: !329)
!445 = !DILocation(line: 405, column: 69, scope: !439)
!446 = !DILocalVariable(name: "status", scope: !439, file: !3, line: 407, type: !13)
!447 = !DILocation(line: 407, column: 14, scope: !439)
!448 = !DILocation(line: 413, column: 7, scope: !449)
!449 = distinct !DILexicalBlock(scope: !439, file: !3, line: 413, column: 6)
!450 = !DILocation(line: 413, column: 6, scope: !439)
!451 = !DILocation(line: 414, column: 3, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !3, line: 413, column: 18)
!453 = !DILocation(line: 422, column: 3, scope: !439)
!454 = !DILocation(line: 422, column: 13, scope: !439)
!455 = !DILocation(line: 424, column: 8, scope: !439)
!456 = !DILocation(line: 428, column: 6, scope: !457)
!457 = distinct !DILexicalBlock(scope: !439, file: !3, line: 428, column: 6)
!458 = !DILocation(line: 428, column: 46, scope: !457)
!459 = !DILocation(line: 428, column: 18, scope: !457)
!460 = !DILocation(line: 428, column: 6, scope: !439)
!461 = !DILocation(line: 429, column: 10, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !3, line: 428, column: 67)
!463 = !DILocation(line: 430, column: 3, scope: !462)
!464 = !DILocation(line: 434, column: 50, scope: !439)
!465 = !DILocation(line: 434, column: 57, scope: !439)
!466 = !DILocation(line: 434, column: 25, scope: !439)
!467 = !DILocation(line: 435, column: 10, scope: !439)
!468 = !DILocation(line: 434, column: 6, scope: !439)
!469 = !DILocation(line: 433, column: 9, scope: !439)
!470 = !DILocation(line: 433, column: 2, scope: !439)
!471 = !DILabel(scope: !439, name: "unlock_and_exit", file: !3, line: 437)
!472 = !DILocation(line: 437, column: 1, scope: !439)
!473 = !DILocation(line: 438, column: 8, scope: !439)
!474 = !DILocation(line: 439, column: 2, scope: !439)
!475 = !DILocation(line: 440, column: 1, scope: !439)
!476 = distinct !DISubprogram(name: "acpi_install_table_handler", scope: !3, file: !3, line: 457, type: !477, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!477 = !DISubroutineType(types: !478)
!478 = !{!13, !479, !18}
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_table_handler", file: !7, line: 1071, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!13, !14, !18, !18}
!483 = !DILocalVariable(name: "handler", arg: 1, scope: !476, file: !3, line: 457, type: !479)
!484 = !DILocation(line: 457, column: 47, scope: !476)
!485 = !DILocalVariable(name: "context", arg: 2, scope: !476, file: !3, line: 457, type: !18)
!486 = !DILocation(line: 457, column: 62, scope: !476)
!487 = !DILocalVariable(name: "status", scope: !476, file: !3, line: 459, type: !13)
!488 = !DILocation(line: 459, column: 14, scope: !476)
!489 = !DILocation(line: 463, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !476, file: !3, line: 463, column: 6)
!491 = !DILocation(line: 463, column: 6, scope: !476)
!492 = !DILocation(line: 464, column: 3, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !3, line: 463, column: 16)
!494 = !DILocation(line: 467, column: 11, scope: !476)
!495 = !DILocation(line: 467, column: 9, scope: !476)
!496 = !DILocation(line: 468, column: 6, scope: !497)
!497 = distinct !DILexicalBlock(scope: !476, file: !3, line: 468, column: 6)
!498 = !DILocation(line: 468, column: 6, scope: !476)
!499 = !DILocation(line: 469, column: 3, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !3, line: 468, column: 28)
!501 = !DILocation(line: 474, column: 6, scope: !502)
!502 = distinct !DILexicalBlock(scope: !476, file: !3, line: 474, column: 6)
!503 = !DILocation(line: 474, column: 6, scope: !476)
!504 = !DILocation(line: 475, column: 10, scope: !505)
!505 = distinct !DILexicalBlock(scope: !502, file: !3, line: 474, column: 30)
!506 = !DILocation(line: 476, column: 3, scope: !505)
!507 = !DILocation(line: 481, column: 27, scope: !476)
!508 = !DILocation(line: 481, column: 25, scope: !476)
!509 = !DILocation(line: 482, column: 35, scope: !476)
!510 = !DILocation(line: 482, column: 33, scope: !476)
!511 = !DILocation(line: 482, column: 2, scope: !476)
!512 = !DILabel(scope: !476, name: "cleanup", file: !3, line: 484)
!513 = !DILocation(line: 484, column: 1, scope: !476)
!514 = !DILocation(line: 485, column: 8, scope: !476)
!515 = !DILocation(line: 486, column: 2, scope: !476)
!516 = !DILocation(line: 487, column: 1, scope: !476)
!517 = distinct !DISubprogram(name: "acpi_remove_table_handler", scope: !3, file: !3, line: 503, type: !518, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!518 = !DISubroutineType(types: !519)
!519 = !{!13, !479}
!520 = !DILocalVariable(name: "handler", arg: 1, scope: !517, file: !3, line: 503, type: !479)
!521 = !DILocation(line: 503, column: 58, scope: !517)
!522 = !DILocalVariable(name: "status", scope: !517, file: !3, line: 505, type: !13)
!523 = !DILocation(line: 505, column: 14, scope: !517)
!524 = !DILocation(line: 509, column: 11, scope: !517)
!525 = !DILocation(line: 509, column: 9, scope: !517)
!526 = !DILocation(line: 510, column: 6, scope: !527)
!527 = distinct !DILexicalBlock(scope: !517, file: !3, line: 510, column: 6)
!528 = !DILocation(line: 510, column: 6, scope: !517)
!529 = !DILocation(line: 511, column: 3, scope: !530)
!530 = distinct !DILexicalBlock(scope: !527, file: !3, line: 510, column: 28)
!531 = !DILocation(line: 516, column: 7, scope: !532)
!532 = distinct !DILexicalBlock(scope: !517, file: !3, line: 516, column: 6)
!533 = !DILocation(line: 516, column: 15, scope: !532)
!534 = !DILocation(line: 516, column: 18, scope: !532)
!535 = !DILocation(line: 516, column: 29, scope: !532)
!536 = !DILocation(line: 516, column: 26, scope: !532)
!537 = !DILocation(line: 516, column: 6, scope: !517)
!538 = !DILocation(line: 517, column: 10, scope: !539)
!539 = distinct !DILexicalBlock(scope: !532, file: !3, line: 516, column: 53)
!540 = !DILocation(line: 518, column: 3, scope: !539)
!541 = !DILocation(line: 523, column: 25, scope: !517)
!542 = !DILocation(line: 523, column: 2, scope: !517)
!543 = !DILabel(scope: !517, name: "cleanup", file: !3, line: 525)
!544 = !DILocation(line: 525, column: 1, scope: !517)
!545 = !DILocation(line: 526, column: 8, scope: !517)
!546 = !DILocation(line: 527, column: 2, scope: !517)
!547 = !DILocation(line: 528, column: 1, scope: !517)
