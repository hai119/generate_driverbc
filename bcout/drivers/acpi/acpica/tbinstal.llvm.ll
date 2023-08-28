; ModuleID = '../bcout/drivers/acpi/acpica/tbinstal.llvm.bc'
source_filename = "drivers/acpi/acpica/tbinstal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_list = type { %struct.acpi_table_desc*, i32, i32, i8 }
%struct.acpi_table_desc = type { i64, %struct.acpi_table_header*, i32, %union.acpi_name_union, i16, i8, i16 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%union.acpi_name_union = type { i32 }

@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8
@acpi_gbl_dsdt_index = external dso_local global i32, align 4
@_acpi_module_name = internal constant [9 x i8] c"tbinstal\00", align 1, !dbg !0
@.str = private unnamed_addr constant [45 x i8] c"Could not acquire table length at %8.8X%8.8X\00", align 1
@acpi_gbl_disable_ssdt_table_install = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SSDT\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Ignoring installation of %4.4s at %8.8X%8.8X\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Logical\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Physical\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"%4.4s 0x%8.8X%8.8X %s table override, new table: 0x%8.8X%8.8X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_install_table_with_override(%struct.acpi_table_desc* %new_table_desc, i8 zeroext %override, i32* %table_index) #0 !dbg !34 {
entry:
  %new_table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  %override.addr = alloca i8, align 1
  %table_index.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_table_desc* %new_table_desc, %struct.acpi_table_desc** %new_table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %new_table_desc.addr, metadata !78, metadata !DIExpression()), !dbg !79
  store i8 %override, i8* %override.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %override.addr, metadata !80, metadata !DIExpression()), !dbg !81
  store i32* %table_index, i32** %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table_index.addr, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %i, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %status, metadata !86, metadata !DIExpression()), !dbg !87
  %call = call i32 @acpi_tb_get_next_table_descriptor(i32* %i, %struct.acpi_table_desc** null) #3, !dbg !88
  store i32 %call, i32* %status, align 4, !dbg !89
  %0 = load i32, i32* %status, align 4, !dbg !90
  %tobool = icmp ne i32 %0, 0, !dbg !90
  br i1 %tobool, label %if.then, label %if.end, !dbg !92

if.then:                                          ; preds = %entry
  br label %if.end8, !dbg !93

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %override.addr, align 1, !dbg !95
  %tobool1 = icmp ne i8 %1, 0, !dbg !95
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !97

if.then2:                                         ; preds = %if.end
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %new_table_desc.addr, align 8, !dbg !98
  call void @acpi_tb_override_table(%struct.acpi_table_desc* %2) #3, !dbg !100
  br label %if.end3, !dbg !101

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !102
  %4 = load i32, i32* %i, align 4, !dbg !103
  %idxprom = zext i32 %4 to i64, !dbg !104
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %3, i64 %idxprom, !dbg !104
  %5 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %new_table_desc.addr, align 8, !dbg !105
  %address = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %5, i32 0, i32 0, !dbg !106
  %6 = load i64, i64* %address, align 8, !dbg !106
  %7 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %new_table_desc.addr, align 8, !dbg !107
  %flags = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %7, i32 0, i32 5, !dbg !108
  %8 = load i8, i8* %flags, align 2, !dbg !108
  %9 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %new_table_desc.addr, align 8, !dbg !109
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %9, i32 0, i32 1, !dbg !110
  %10 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !110
  call void @acpi_tb_init_table_descriptor(%struct.acpi_table_desc* %arrayidx, i64 %6, i8 zeroext %8, %struct.acpi_table_header* %10) #3, !dbg !111
  %11 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %new_table_desc.addr, align 8, !dbg !112
  %address4 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %11, i32 0, i32 0, !dbg !113
  %12 = load i64, i64* %address4, align 8, !dbg !113
  %13 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %new_table_desc.addr, align 8, !dbg !114
  %pointer5 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %13, i32 0, i32 1, !dbg !115
  %14 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer5, align 8, !dbg !115
  call void @acpi_tb_print_table_header(i64 %12, %struct.acpi_table_header* %14) #3, !dbg !116
  %15 = load i32, i32* %i, align 4, !dbg !117
  %16 = load i32*, i32** %table_index.addr, align 8, !dbg !118
  store i32 %15, i32* %16, align 4, !dbg !119
  %17 = load i32, i32* %i, align 4, !dbg !120
  %18 = load i32, i32* @acpi_gbl_dsdt_index, align 4, !dbg !122
  %cmp = icmp eq i32 %17, %18, !dbg !123
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !124

if.then6:                                         ; preds = %if.end3
  %19 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %new_table_desc.addr, align 8, !dbg !125
  %pointer7 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %19, i32 0, i32 1, !dbg !127
  %20 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer7, align 8, !dbg !127
  %revision = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %20, i32 0, i32 2, !dbg !128
  %21 = load i8, i8* %revision, align 1, !dbg !128
  call void @acpi_ut_set_integer_width(i8 zeroext %21) #3, !dbg !129
  br label %if.end8, !dbg !130

if.end8:                                          ; preds = %if.then, %if.then6, %if.end3
  ret void, !dbg !131
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_get_next_table_descriptor(i32*, %struct.acpi_table_desc**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_override_table(%struct.acpi_table_desc* %old_table_desc) #0 !dbg !132 {
entry:
  %old_table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  %status = alloca i32, align 4
  %new_table_desc = alloca %struct.acpi_table_desc, align 8
  %table = alloca %struct.acpi_table_header*, align 8
  %address = alloca i64, align 8
  %length = alloca i32, align 4
  %override_type = alloca i8*, align 8
  store %struct.acpi_table_desc* %old_table_desc, %struct.acpi_table_desc** %old_table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %old_table_desc.addr, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %status, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc* %new_table_desc, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i64* %address, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %length, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i8** %override_type, metadata !147, metadata !DIExpression()), !dbg !149
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %old_table_desc.addr, align 8, !dbg !150
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %0, i32 0, i32 1, !dbg !151
  %1 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !151
  %call = call i32 @acpi_os_table_override(%struct.acpi_table_header* %1, %struct.acpi_table_header** %table) #3, !dbg !152
  store i32 %call, i32* %status, align 4, !dbg !153
  %2 = load i32, i32* %status, align 4, !dbg !154
  %tobool = icmp ne i32 %2, 0, !dbg !154
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !156

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !157
  %tobool1 = icmp ne %struct.acpi_table_header* %3, null, !dbg !157
  br i1 %tobool1, label %if.then, label %if.end, !dbg !158

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !159
  %5 = bitcast %struct.acpi_table_header* %4 to i8*, !dbg !159
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64, !dbg !159
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0, !dbg !159
  %call2 = call i32 @acpi_tb_acquire_temp_table(%struct.acpi_table_desc* %new_table_desc, i64 %sub.ptr.sub, i8 zeroext 0) #3, !dbg !161
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %override_type, align 8, !dbg !162
  br label %finish_override, !dbg !163

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %old_table_desc.addr, align 8, !dbg !164
  %pointer3 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %6, i32 0, i32 1, !dbg !165
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer3, align 8, !dbg !165
  %call4 = call i32 @acpi_os_physical_table_override(%struct.acpi_table_header* %7, i64* %address, i32* %length) #3, !dbg !166
  store i32 %call4, i32* %status, align 4, !dbg !167
  %8 = load i32, i32* %status, align 4, !dbg !168
  %tobool5 = icmp ne i32 %8, 0, !dbg !168
  br i1 %tobool5, label %if.end12, label %land.lhs.true6, !dbg !170

land.lhs.true6:                                   ; preds = %if.end
  %9 = load i64, i64* %address, align 8, !dbg !171
  %tobool7 = icmp ne i64 %9, 0, !dbg !171
  br i1 %tobool7, label %land.lhs.true8, label %if.end12, !dbg !172

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %10 = load i32, i32* %length, align 4, !dbg !173
  %tobool9 = icmp ne i32 %10, 0, !dbg !173
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !174

if.then10:                                        ; preds = %land.lhs.true8
  %11 = load i64, i64* %address, align 8, !dbg !175
  %call11 = call i32 @acpi_tb_acquire_temp_table(%struct.acpi_table_desc* %new_table_desc, i64 %11, i8 zeroext 1) #3, !dbg !177
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %override_type, align 8, !dbg !178
  br label %finish_override, !dbg !179

if.end12:                                         ; preds = %land.lhs.true8, %land.lhs.true6, %if.end
  br label %return, !dbg !180

finish_override:                                  ; preds = %if.then10, %if.then
  call void @llvm.dbg.label(metadata !181), !dbg !182
  %call13 = call i32 @acpi_tb_verify_temp_table(%struct.acpi_table_desc* %new_table_desc, i8* null, i32* null) #3, !dbg !183
  store i32 %call13, i32* %status, align 4, !dbg !184
  %12 = load i32, i32* %status, align 4, !dbg !185
  %tobool14 = icmp ne i32 %12, 0, !dbg !185
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !187

if.then15:                                        ; preds = %finish_override
  br label %return, !dbg !188

if.end16:                                         ; preds = %finish_override
  %13 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %old_table_desc.addr, align 8, !dbg !190
  %signature = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %13, i32 0, i32 3, !dbg !190
  %ascii = bitcast %union.acpi_name_union* %signature to [4 x i8]*, !dbg !190
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !190
  %14 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %old_table_desc.addr, align 8, !dbg !190
  %address17 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %14, i32 0, i32 0, !dbg !190
  %15 = load i64, i64* %address17, align 8, !dbg !190
  %shr = lshr i64 %15, 32, !dbg !190
  %conv = trunc i64 %shr to i32, !dbg !190
  %16 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %old_table_desc.addr, align 8, !dbg !190
  %address18 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %16, i32 0, i32 0, !dbg !190
  %17 = load i64, i64* %address18, align 8, !dbg !190
  %conv19 = trunc i64 %17 to i32, !dbg !190
  %18 = load i8*, i8** %override_type, align 8, !dbg !190
  %address20 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %new_table_desc, i32 0, i32 0, !dbg !190
  %19 = load i64, i64* %address20, align 8, !dbg !190
  %shr21 = lshr i64 %19, 32, !dbg !190
  %conv22 = trunc i64 %shr21 to i32, !dbg !190
  %address23 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %new_table_desc, i32 0, i32 0, !dbg !190
  %20 = load i64, i64* %address23, align 8, !dbg !190
  %conv24 = trunc i64 %20 to i32, !dbg !190
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay, i32 %conv, i32 %conv19, i8* %18, i32 %conv22, i32 %conv24) #3, !dbg !190
  %21 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %old_table_desc.addr, align 8, !dbg !191
  call void @acpi_tb_uninstall_table(%struct.acpi_table_desc* %21) #3, !dbg !192
  %22 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %old_table_desc.addr, align 8, !dbg !193
  %address25 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %new_table_desc, i32 0, i32 0, !dbg !194
  %23 = load i64, i64* %address25, align 8, !dbg !194
  %flags = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %new_table_desc, i32 0, i32 5, !dbg !195
  %24 = load i8, i8* %flags, align 2, !dbg !195
  %pointer26 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %new_table_desc, i32 0, i32 1, !dbg !196
  %25 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer26, align 8, !dbg !196
  call void @acpi_tb_init_table_descriptor(%struct.acpi_table_desc* %22, i64 %23, i8 zeroext %24, %struct.acpi_table_header* %25) #3, !dbg !197
  %26 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %old_table_desc.addr, align 8, !dbg !198
  %call27 = call i32 @acpi_tb_validate_temp_table(%struct.acpi_table_desc* %26) #3, !dbg !199
  call void @acpi_tb_release_temp_table(%struct.acpi_table_desc* %new_table_desc) #3, !dbg !200
  br label %return, !dbg !201

return:                                           ; preds = %if.end16, %if.then15, %if.end12
  ret void, !dbg !201
}

; Function Attrs: noredzone
declare dso_local void @acpi_tb_init_table_descriptor(%struct.acpi_table_desc*, i64, i8 zeroext, %struct.acpi_table_header*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_tb_print_table_header(i64, %struct.acpi_table_header*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_set_integer_width(i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_install_standard_table(i64 %address, i8 zeroext %flags, i8 zeroext %reload, i8 zeroext %override, i32* %table_index) #0 !dbg !202 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %flags.addr = alloca i8, align 1
  %reload.addr = alloca i8, align 1
  %override.addr = alloca i8, align 1
  %table_index.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %new_table_desc = alloca %struct.acpi_table_desc, align 8
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !205, metadata !DIExpression()), !dbg !206
  store i8 %flags, i8* %flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flags.addr, metadata !207, metadata !DIExpression()), !dbg !208
  store i8 %reload, i8* %reload.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reload.addr, metadata !209, metadata !DIExpression()), !dbg !210
  store i8 %override, i8* %override.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %override.addr, metadata !211, metadata !DIExpression()), !dbg !212
  store i32* %table_index, i32** %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table_index.addr, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %i, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %status, metadata !217, metadata !DIExpression()), !dbg !218
  store i32 0, i32* %status, align 4, !dbg !218
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc* %new_table_desc, metadata !219, metadata !DIExpression()), !dbg !220
  %0 = load i64, i64* %address.addr, align 8, !dbg !221
  %1 = load i8, i8* %flags.addr, align 1, !dbg !222
  %call = call i32 @acpi_tb_acquire_temp_table(%struct.acpi_table_desc* %new_table_desc, i64 %0, i8 zeroext %1) #3, !dbg !223
  store i32 %call, i32* %status, align 4, !dbg !224
  %2 = load i32, i32* %status, align 4, !dbg !225
  %tobool = icmp ne i32 %2, 0, !dbg !225
  br i1 %tobool, label %if.then, label %if.end, !dbg !227

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %address.addr, align 8, !dbg !228
  %shr = lshr i64 %3, 32, !dbg !228
  %conv = trunc i64 %shr to i32, !dbg !228
  %4 = load i64, i64* %address.addr, align 8, !dbg !228
  %conv1 = trunc i64 %4 to i32, !dbg !228
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %conv, i32 %conv1) #3, !dbg !228
  %5 = load i32, i32* %status, align 4, !dbg !230
  store i32 %5, i32* %retval, align 4, !dbg !230
  br label %return, !dbg !230

if.end:                                           ; preds = %entry
  %6 = load i8, i8* %reload.addr, align 1, !dbg !231
  %tobool2 = icmp ne i8 %6, 0, !dbg !231
  br i1 %tobool2, label %if.end12, label %land.lhs.true, !dbg !233

land.lhs.true:                                    ; preds = %if.end
  %7 = load i8, i8* @acpi_gbl_disable_ssdt_table_install, align 1, !dbg !234
  %conv3 = zext i8 %7 to i32, !dbg !234
  %tobool4 = icmp ne i32 %conv3, 0, !dbg !234
  br i1 %tobool4, label %land.lhs.true5, label %if.end12, !dbg !235

land.lhs.true5:                                   ; preds = %land.lhs.true
  %signature = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %new_table_desc, i32 0, i32 3, !dbg !236
  %8 = bitcast %union.acpi_name_union* %signature to i8*, !dbg !236
  %9 = bitcast i8* %8 to i32*, !dbg !236
  %10 = load i32, i32* %9, align 4, !dbg !236
  %11 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 4, !dbg !236
  %cmp = icmp eq i32 %10, %11, !dbg !236
  br i1 %cmp, label %if.then7, label %if.end12, !dbg !237

if.then7:                                         ; preds = %land.lhs.true5
  %signature8 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %new_table_desc, i32 0, i32 3, !dbg !238
  %ascii = bitcast %union.acpi_name_union* %signature8 to [4 x i8]*, !dbg !238
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !238
  %12 = load i64, i64* %address.addr, align 8, !dbg !238
  %shr9 = lshr i64 %12, 32, !dbg !238
  %conv10 = trunc i64 %shr9 to i32, !dbg !238
  %13 = load i64, i64* %address.addr, align 8, !dbg !238
  %conv11 = trunc i64 %13 to i32, !dbg !238
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay, i32 %conv10, i32 %conv11) #3, !dbg !238
  br label %release_and_exit, !dbg !240

if.end12:                                         ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %call13 = call i32 @acpi_ut_acquire_mutex(i32 2) #3, !dbg !241
  %call14 = call i32 @acpi_tb_verify_temp_table(%struct.acpi_table_desc* %new_table_desc, i8* null, i32* %i) #3, !dbg !242
  store i32 %call14, i32* %status, align 4, !dbg !243
  %14 = load i32, i32* %status, align 4, !dbg !244
  %tobool15 = icmp ne i32 %14, 0, !dbg !244
  br i1 %tobool15, label %if.then16, label %if.end22, !dbg !246

if.then16:                                        ; preds = %if.end12
  %15 = load i32, i32* %status, align 4, !dbg !247
  %cmp17 = icmp eq i32 %15, 16387, !dbg !250
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !251

if.then19:                                        ; preds = %if.then16
  call void @acpi_tb_uninstall_table(%struct.acpi_table_desc* %new_table_desc) #3, !dbg !252
  %call20 = call i32 @acpi_ut_release_mutex(i32 2) #3, !dbg !254
  %16 = load i32, i32* %i, align 4, !dbg !255
  %17 = load i32*, i32** %table_index.addr, align 8, !dbg !256
  store i32 %16, i32* %17, align 4, !dbg !257
  store i32 0, i32* %retval, align 4, !dbg !258
  br label %return, !dbg !258

if.end21:                                         ; preds = %if.then16
  br label %unlock_and_exit, !dbg !259

if.end22:                                         ; preds = %if.end12
  %18 = load i8, i8* %override.addr, align 1, !dbg !260
  %19 = load i32*, i32** %table_index.addr, align 8, !dbg !261
  call void @acpi_tb_install_table_with_override(%struct.acpi_table_desc* %new_table_desc, i8 zeroext %18, i32* %19) #3, !dbg !262
  %call23 = call i32 @acpi_ut_release_mutex(i32 2) #3, !dbg !263
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %new_table_desc, i32 0, i32 1, !dbg !264
  %20 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !264
  %21 = bitcast %struct.acpi_table_header* %20 to i8*, !dbg !265
  call void @acpi_tb_notify_table(i32 2, i8* %21) #3, !dbg !266
  %call24 = call i32 @acpi_ut_acquire_mutex(i32 2) #3, !dbg !267
  br label %unlock_and_exit, !dbg !268

unlock_and_exit:                                  ; preds = %if.end22, %if.end21
  call void @llvm.dbg.label(metadata !269), !dbg !270
  %call25 = call i32 @acpi_ut_release_mutex(i32 2) #3, !dbg !271
  br label %release_and_exit, !dbg !272

release_and_exit:                                 ; preds = %unlock_and_exit, %if.then7
  call void @llvm.dbg.label(metadata !273), !dbg !274
  call void @acpi_tb_release_temp_table(%struct.acpi_table_desc* %new_table_desc) #3, !dbg !275
  %22 = load i32, i32* %status, align 4, !dbg !276
  store i32 %22, i32* %retval, align 4, !dbg !276
  br label %return, !dbg !276

return:                                           ; preds = %release_and_exit, %if.then19, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !277
  ret i32 %23, !dbg !277
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_acquire_temp_table(%struct.acpi_table_desc*, i64, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_info(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_verify_temp_table(%struct.acpi_table_desc*, i8*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_uninstall_table(%struct.acpi_table_desc* %table_desc) #0 !dbg !278 {
entry:
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !279, metadata !DIExpression()), !dbg !280
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !281
  %address = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %0, i32 0, i32 0, !dbg !283
  %1 = load i64, i64* %address, align 8, !dbg !283
  %tobool = icmp ne i64 %1, 0, !dbg !281
  br i1 %tobool, label %if.end, label %if.then, !dbg !284

if.then:                                          ; preds = %entry
  br label %return, !dbg !285

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !287
  call void @acpi_tb_invalidate_table(%struct.acpi_table_desc* %2) #3, !dbg !288
  %3 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !289
  %flags = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %3, i32 0, i32 5, !dbg !291
  %4 = load i8, i8* %flags, align 2, !dbg !291
  %conv = zext i8 %4 to i32, !dbg !289
  %and = and i32 %conv, 3, !dbg !292
  %cmp = icmp eq i32 %and, 2, !dbg !293
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !294

if.then2:                                         ; preds = %if.end
  %5 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !295
  %address3 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %5, i32 0, i32 0, !dbg !295
  %6 = load i64, i64* %address3, align 8, !dbg !295
  %7 = inttoptr i64 %6 to i8*, !dbg !295
  call void @acpi_os_free(i8* %7) #3, !dbg !295
  br label %if.end4, !dbg !297

if.end4:                                          ; preds = %if.then2, %if.end
  %8 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !298
  %address5 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %8, i32 0, i32 0, !dbg !299
  store i64 0, i64* %address5, align 8, !dbg !300
  br label %return, !dbg !301

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !302
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_tb_notify_table(i32, i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_tb_release_temp_table(%struct.acpi_table_desc*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_table_override(%struct.acpi_table_header*, %struct.acpi_table_header**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_physical_table_override(%struct.acpi_table_header*, i64*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_validate_temp_table(%struct.acpi_table_desc*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_tb_invalidate_table(%struct.acpi_table_desc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !303 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !307, metadata !DIExpression()), !dbg !308
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !309
  call void @kfree(i8* %0) #3, !dbg !310
  ret void, !dbg !311
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !24, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !23, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbinstal.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !8, !13, !16, !17, !18, !19}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !15)
!15 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !13)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!0}
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 72, elements: !27)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{!28}
!28 = !DISubrange(count: 9)
!29 = !{i32 7, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"Code Model", i32 2}
!33 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!34 = distinct !DISubprogram(name: "acpi_tb_install_table_with_override", scope: !3, file: !3, line: 34, type: !35, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !20, !16}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !39, line: 334, size: 256, elements: !40)
!39 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!40 = !{!41, !43, !65, !66, !71, !76, !77}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !38, file: !39, line: 335, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !13)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !38, file: !39, line: 336, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !39, line: 68, size: 288, elements: !46)
!46 = !{!47, !51, !52, !53, !54, !58, !62, !63, !64}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !45, file: !39, line: 69, baseType: !48, size: 32)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 4)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !45, file: !39, line: 70, baseType: !8, size: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !45, file: !39, line: 71, baseType: !20, size: 8, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !45, file: !39, line: 72, baseType: !20, size: 8, offset: 72)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !45, file: !39, line: 73, baseType: !55, size: 48, offset: 80)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 48, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 6)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !45, file: !39, line: 74, baseType: !59, size: 64, offset: 128)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 8)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !45, file: !39, line: 75, baseType: !8, size: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !45, file: !39, line: 76, baseType: !48, size: 32, offset: 224)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !45, file: !39, line: 77, baseType: !8, size: 32, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !38, file: !39, line: 337, baseType: !8, size: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !38, file: !39, line: 338, baseType: !67, size: 32, offset: 160)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !39, line: 327, size: 32, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !67, file: !39, line: 328, baseType: !8, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !67, file: !39, line: 329, baseType: !48, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !38, file: !39, line: 339, baseType: !72, size: 16, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !75)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !39, line: 340, baseType: !20, size: 8, offset: 208)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !38, file: !39, line: 341, baseType: !73, size: 16, offset: 224)
!78 = !DILocalVariable(name: "new_table_desc", arg: 1, scope: !34, file: !3, line: 34, type: !37)
!79 = !DILocation(line: 34, column: 61, scope: !34)
!80 = !DILocalVariable(name: "override", arg: 2, scope: !34, file: !3, line: 35, type: !20)
!81 = !DILocation(line: 35, column: 12, scope: !34)
!82 = !DILocalVariable(name: "table_index", arg: 3, scope: !34, file: !3, line: 35, type: !16)
!83 = !DILocation(line: 35, column: 27, scope: !34)
!84 = !DILocalVariable(name: "i", scope: !34, file: !3, line: 37, type: !8)
!85 = !DILocation(line: 37, column: 6, scope: !34)
!86 = !DILocalVariable(name: "status", scope: !34, file: !3, line: 38, type: !6)
!87 = !DILocation(line: 38, column: 14, scope: !34)
!88 = !DILocation(line: 40, column: 11, scope: !34)
!89 = !DILocation(line: 40, column: 9, scope: !34)
!90 = !DILocation(line: 41, column: 6, scope: !91)
!91 = distinct !DILexicalBlock(scope: !34, file: !3, line: 41, column: 6)
!92 = !DILocation(line: 41, column: 6, scope: !34)
!93 = !DILocation(line: 42, column: 3, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !3, line: 41, column: 28)
!95 = !DILocation(line: 52, column: 6, scope: !96)
!96 = distinct !DILexicalBlock(scope: !34, file: !3, line: 52, column: 6)
!97 = !DILocation(line: 52, column: 6, scope: !34)
!98 = !DILocation(line: 53, column: 26, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !3, line: 52, column: 16)
!100 = !DILocation(line: 53, column: 3, scope: !99)
!101 = !DILocation(line: 54, column: 2, scope: !99)
!102 = !DILocation(line: 56, column: 58, scope: !34)
!103 = !DILocation(line: 56, column: 65, scope: !34)
!104 = !DILocation(line: 56, column: 33, scope: !34)
!105 = !DILocation(line: 57, column: 11, scope: !34)
!106 = !DILocation(line: 57, column: 27, scope: !34)
!107 = !DILocation(line: 58, column: 11, scope: !34)
!108 = !DILocation(line: 58, column: 27, scope: !34)
!109 = !DILocation(line: 59, column: 11, scope: !34)
!110 = !DILocation(line: 59, column: 27, scope: !34)
!111 = !DILocation(line: 56, column: 2, scope: !34)
!112 = !DILocation(line: 61, column: 29, scope: !34)
!113 = !DILocation(line: 61, column: 45, scope: !34)
!114 = !DILocation(line: 62, column: 8, scope: !34)
!115 = !DILocation(line: 62, column: 24, scope: !34)
!116 = !DILocation(line: 61, column: 2, scope: !34)
!117 = !DILocation(line: 66, column: 17, scope: !34)
!118 = !DILocation(line: 66, column: 3, scope: !34)
!119 = !DILocation(line: 66, column: 15, scope: !34)
!120 = !DILocation(line: 70, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !34, file: !3, line: 70, column: 6)
!122 = !DILocation(line: 70, column: 11, scope: !121)
!123 = !DILocation(line: 70, column: 8, scope: !121)
!124 = !DILocation(line: 70, column: 6, scope: !34)
!125 = !DILocation(line: 71, column: 29, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !3, line: 70, column: 32)
!127 = !DILocation(line: 71, column: 45, scope: !126)
!128 = !DILocation(line: 71, column: 54, scope: !126)
!129 = !DILocation(line: 71, column: 3, scope: !126)
!130 = !DILocation(line: 72, column: 2, scope: !126)
!131 = !DILocation(line: 73, column: 1, scope: !34)
!132 = distinct !DISubprogram(name: "acpi_tb_override_table", scope: !3, file: !3, line: 197, type: !133, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !37}
!135 = !DILocalVariable(name: "old_table_desc", arg: 1, scope: !132, file: !3, line: 197, type: !37)
!136 = !DILocation(line: 197, column: 53, scope: !132)
!137 = !DILocalVariable(name: "status", scope: !132, file: !3, line: 199, type: !6)
!138 = !DILocation(line: 199, column: 14, scope: !132)
!139 = !DILocalVariable(name: "new_table_desc", scope: !132, file: !3, line: 200, type: !38)
!140 = !DILocation(line: 200, column: 25, scope: !132)
!141 = !DILocalVariable(name: "table", scope: !132, file: !3, line: 201, type: !44)
!142 = !DILocation(line: 201, column: 28, scope: !132)
!143 = !DILocalVariable(name: "address", scope: !132, file: !3, line: 202, type: !42)
!144 = !DILocation(line: 202, column: 24, scope: !132)
!145 = !DILocalVariable(name: "length", scope: !132, file: !3, line: 203, type: !8)
!146 = !DILocation(line: 203, column: 6, scope: !132)
!147 = !DILocalVariable(name: "override_type", scope: !132, file: !3, line: 204, type: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!149 = !DILocation(line: 204, column: 2, scope: !132)
!150 = !DILocation(line: 208, column: 34, scope: !132)
!151 = !DILocation(line: 208, column: 50, scope: !132)
!152 = !DILocation(line: 208, column: 11, scope: !132)
!153 = !DILocation(line: 208, column: 9, scope: !132)
!154 = !DILocation(line: 209, column: 6, scope: !155)
!155 = distinct !DILexicalBlock(scope: !132, file: !3, line: 209, column: 6)
!156 = !DILocation(line: 209, column: 27, scope: !155)
!157 = !DILocation(line: 209, column: 30, scope: !155)
!158 = !DILocation(line: 209, column: 6, scope: !132)
!159 = !DILocation(line: 211, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !3, line: 209, column: 37)
!161 = !DILocation(line: 210, column: 3, scope: !160)
!162 = !DILocation(line: 213, column: 3, scope: !160)
!163 = !DILocation(line: 214, column: 3, scope: !160)
!164 = !DILocation(line: 219, column: 43, scope: !132)
!165 = !DILocation(line: 219, column: 59, scope: !132)
!166 = !DILocation(line: 219, column: 11, scope: !132)
!167 = !DILocation(line: 219, column: 9, scope: !132)
!168 = !DILocation(line: 221, column: 6, scope: !169)
!169 = distinct !DILexicalBlock(scope: !132, file: !3, line: 221, column: 6)
!170 = !DILocation(line: 221, column: 27, scope: !169)
!171 = !DILocation(line: 221, column: 30, scope: !169)
!172 = !DILocation(line: 221, column: 38, scope: !169)
!173 = !DILocation(line: 221, column: 41, scope: !169)
!174 = !DILocation(line: 221, column: 6, scope: !132)
!175 = !DILocation(line: 222, column: 47, scope: !176)
!176 = distinct !DILexicalBlock(scope: !169, file: !3, line: 221, column: 49)
!177 = !DILocation(line: 222, column: 3, scope: !176)
!178 = !DILocation(line: 224, column: 3, scope: !176)
!179 = !DILocation(line: 225, column: 3, scope: !176)
!180 = !DILocation(line: 228, column: 2, scope: !132)
!181 = !DILabel(scope: !132, name: "finish_override", file: !3, line: 230)
!182 = !DILocation(line: 230, column: 1, scope: !132)
!183 = !DILocation(line: 236, column: 11, scope: !132)
!184 = !DILocation(line: 236, column: 9, scope: !132)
!185 = !DILocation(line: 237, column: 6, scope: !186)
!186 = distinct !DILexicalBlock(scope: !132, file: !3, line: 237, column: 6)
!187 = !DILocation(line: 237, column: 6, scope: !132)
!188 = !DILocation(line: 238, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !3, line: 237, column: 28)
!190 = !DILocation(line: 241, column: 2, scope: !132)
!191 = !DILocation(line: 249, column: 26, scope: !132)
!192 = !DILocation(line: 249, column: 2, scope: !132)
!193 = !DILocation(line: 255, column: 32, scope: !132)
!194 = !DILocation(line: 255, column: 63, scope: !132)
!195 = !DILocation(line: 256, column: 26, scope: !132)
!196 = !DILocation(line: 257, column: 26, scope: !132)
!197 = !DILocation(line: 255, column: 2, scope: !132)
!198 = !DILocation(line: 258, column: 30, scope: !132)
!199 = !DILocation(line: 258, column: 2, scope: !132)
!200 = !DILocation(line: 262, column: 2, scope: !132)
!201 = !DILocation(line: 263, column: 1, scope: !132)
!202 = distinct !DISubprogram(name: "acpi_tb_install_standard_table", scope: !3, file: !3, line: 97, type: !203, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!203 = !DISubroutineType(types: !204)
!204 = !{!6, !42, !20, !20, !20, !16}
!205 = !DILocalVariable(name: "address", arg: 1, scope: !202, file: !3, line: 97, type: !42)
!206 = !DILocation(line: 97, column: 54, scope: !202)
!207 = !DILocalVariable(name: "flags", arg: 2, scope: !202, file: !3, line: 98, type: !20)
!208 = !DILocation(line: 98, column: 14, scope: !202)
!209 = !DILocalVariable(name: "reload", arg: 3, scope: !202, file: !3, line: 99, type: !20)
!210 = !DILocation(line: 99, column: 14, scope: !202)
!211 = !DILocalVariable(name: "override", arg: 4, scope: !202, file: !3, line: 99, type: !20)
!212 = !DILocation(line: 99, column: 25, scope: !202)
!213 = !DILocalVariable(name: "table_index", arg: 5, scope: !202, file: !3, line: 99, type: !16)
!214 = !DILocation(line: 99, column: 40, scope: !202)
!215 = !DILocalVariable(name: "i", scope: !202, file: !3, line: 101, type: !8)
!216 = !DILocation(line: 101, column: 6, scope: !202)
!217 = !DILocalVariable(name: "status", scope: !202, file: !3, line: 102, type: !6)
!218 = !DILocation(line: 102, column: 14, scope: !202)
!219 = !DILocalVariable(name: "new_table_desc", scope: !202, file: !3, line: 103, type: !38)
!220 = !DILocation(line: 103, column: 25, scope: !202)
!221 = !DILocation(line: 109, column: 55, scope: !202)
!222 = !DILocation(line: 109, column: 64, scope: !202)
!223 = !DILocation(line: 109, column: 11, scope: !202)
!224 = !DILocation(line: 109, column: 9, scope: !202)
!225 = !DILocation(line: 110, column: 6, scope: !226)
!226 = distinct !DILexicalBlock(scope: !202, file: !3, line: 110, column: 6)
!227 = !DILocation(line: 110, column: 6, scope: !202)
!228 = !DILocation(line: 111, column: 3, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 110, column: 28)
!230 = !DILocation(line: 114, column: 3, scope: !229)
!231 = !DILocation(line: 121, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !202, file: !3, line: 121, column: 6)
!233 = !DILocation(line: 121, column: 14, scope: !232)
!234 = !DILocation(line: 122, column: 6, scope: !232)
!235 = !DILocation(line: 122, column: 42, scope: !232)
!236 = !DILocation(line: 123, column: 6, scope: !232)
!237 = !DILocation(line: 121, column: 6, scope: !202)
!238 = !DILocation(line: 124, column: 3, scope: !239)
!239 = distinct !DILexicalBlock(scope: !232, file: !3, line: 123, column: 70)
!240 = !DILocation(line: 127, column: 3, scope: !239)
!241 = !DILocation(line: 132, column: 8, scope: !202)
!242 = !DILocation(line: 136, column: 11, scope: !202)
!243 = !DILocation(line: 136, column: 9, scope: !202)
!244 = !DILocation(line: 137, column: 6, scope: !245)
!245 = distinct !DILexicalBlock(scope: !202, file: !3, line: 137, column: 6)
!246 = !DILocation(line: 137, column: 6, scope: !202)
!247 = !DILocation(line: 138, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 138, column: 7)
!249 = distinct !DILexicalBlock(scope: !245, file: !3, line: 137, column: 28)
!250 = !DILocation(line: 138, column: 14, scope: !248)
!251 = !DILocation(line: 138, column: 7, scope: !249)
!252 = !DILocation(line: 147, column: 4, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !3, line: 138, column: 36)
!254 = !DILocation(line: 148, column: 10, scope: !253)
!255 = !DILocation(line: 149, column: 19, scope: !253)
!256 = !DILocation(line: 149, column: 5, scope: !253)
!257 = !DILocation(line: 149, column: 17, scope: !253)
!258 = !DILocation(line: 150, column: 4, scope: !253)
!259 = !DILocation(line: 152, column: 3, scope: !249)
!260 = !DILocation(line: 157, column: 55, scope: !202)
!261 = !DILocation(line: 158, column: 10, scope: !202)
!262 = !DILocation(line: 157, column: 2, scope: !202)
!263 = !DILocation(line: 162, column: 8, scope: !202)
!264 = !DILocation(line: 163, column: 64, scope: !202)
!265 = !DILocation(line: 163, column: 49, scope: !202)
!266 = !DILocation(line: 163, column: 2, scope: !202)
!267 = !DILocation(line: 164, column: 8, scope: !202)
!268 = !DILocation(line: 164, column: 2, scope: !202)
!269 = !DILabel(scope: !202, name: "unlock_and_exit", file: !3, line: 166)
!270 = !DILocation(line: 166, column: 1, scope: !202)
!271 = !DILocation(line: 170, column: 8, scope: !202)
!272 = !DILocation(line: 170, column: 2, scope: !202)
!273 = !DILabel(scope: !202, name: "release_and_exit", file: !3, line: 172)
!274 = !DILocation(line: 172, column: 1, scope: !202)
!275 = !DILocation(line: 176, column: 2, scope: !202)
!276 = !DILocation(line: 177, column: 2, scope: !202)
!277 = !DILocation(line: 178, column: 1, scope: !202)
!278 = distinct !DISubprogram(name: "acpi_tb_uninstall_table", scope: !3, file: !3, line: 277, type: !133, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!279 = !DILocalVariable(name: "table_desc", arg: 1, scope: !278, file: !3, line: 277, type: !37)
!280 = !DILocation(line: 277, column: 54, scope: !278)
!281 = !DILocation(line: 284, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !3, line: 284, column: 6)
!283 = !DILocation(line: 284, column: 19, scope: !282)
!284 = !DILocation(line: 284, column: 6, scope: !278)
!285 = !DILocation(line: 285, column: 3, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !3, line: 284, column: 28)
!287 = !DILocation(line: 288, column: 27, scope: !278)
!288 = !DILocation(line: 288, column: 2, scope: !278)
!289 = !DILocation(line: 290, column: 7, scope: !290)
!290 = distinct !DILexicalBlock(scope: !278, file: !3, line: 290, column: 6)
!291 = !DILocation(line: 290, column: 19, scope: !290)
!292 = !DILocation(line: 290, column: 25, scope: !290)
!293 = !DILocation(line: 290, column: 51, scope: !290)
!294 = !DILocation(line: 290, column: 6, scope: !278)
!295 = !DILocation(line: 292, column: 3, scope: !296)
!296 = distinct !DILexicalBlock(scope: !290, file: !3, line: 291, column: 42)
!297 = !DILocation(line: 293, column: 2, scope: !296)
!298 = !DILocation(line: 295, column: 2, scope: !278)
!299 = !DILocation(line: 295, column: 14, scope: !278)
!300 = !DILocation(line: 295, column: 22, scope: !278)
!301 = !DILocation(line: 296, column: 2, scope: !278)
!302 = !DILocation(line: 297, column: 1, scope: !278)
!303 = distinct !DISubprogram(name: "acpi_os_free", scope: !304, file: !304, line: 60, type: !305, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!304 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!305 = !DISubroutineType(types: !306)
!306 = !{null, !17}
!307 = !DILocalVariable(name: "memory", arg: 1, scope: !303, file: !304, line: 60, type: !17)
!308 = !DILocation(line: 60, column: 39, scope: !303)
!309 = !DILocation(line: 62, column: 8, scope: !303)
!310 = !DILocation(line: 62, column: 2, scope: !303)
!311 = !DILocation(line: 63, column: 1, scope: !303)
