; ModuleID = '../bcout/drivers/acpi/acpica/tbfadt.llvm.bc'
source_filename = "drivers/acpi/acpica/tbfadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_list = type { %struct.acpi_table_desc*, i32, i32, i8 }
%struct.acpi_table_desc = type { i64, %struct.acpi_table_header*, i32, %union.acpi_name_union, i16, i8, i16 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%union.acpi_name_union = type { i32 }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_fadt_info = type { i8*, i16, i16, i16, i8, i8 }
%struct.acpi_fadt_pm_info = type { %struct.acpi_generic_address*, i16, i8 }

@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8
@acpi_gbl_fadt_index = external dso_local global i32, align 4
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_dsdt_index = external dso_local global i32, align 4
@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@acpi_gbl_facs_index = external dso_local global i32, align 4
@acpi_gbl_xfacs_index = external dso_local global i32, align 4
@_acpi_module_name = internal constant [7 x i8] c"tbfadt\00", align 1, !dbg !0
@.str = private unnamed_addr constant [72 x i8] c"FADT (revision %u) is longer than %s length, truncating length %u to %u\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ACPI 6.1 (FADT version 6)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1
@fadt_info_table = internal global [8 x %struct.acpi_fadt_info] [%struct.acpi_fadt_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i16 148, i16 56, i16 88, i8 32, i8 1 }, %struct.acpi_fadt_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i16 160, i16 60, i16 88, i8 32, i8 0 }, %struct.acpi_fadt_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i16 172, i16 64, i16 89, i8 16, i8 1 }, %struct.acpi_fadt_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i16 184, i16 68, i16 89, i8 16, i8 0 }, %struct.acpi_fadt_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i16 196, i16 72, i16 90, i8 8, i8 2 }, %struct.acpi_fadt_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i16 208, i16 76, i16 91, i8 32, i8 2 }, %struct.acpi_fadt_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i16 220, i16 80, i16 92, i8 0, i8 6 }, %struct.acpi_fadt_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i16 232, i16 84, i16 93, i8 0, i8 6 }], align 16, !dbg !118
@.str.3 = private unnamed_addr constant [79 x i8] c"32/64X address mismatch in FADT/%s: 0x%8.8X/0x%8.8X%8.8X, using %u-bit address\00", align 1
@acpi_gbl_use32_bit_fadt_addresses = external dso_local global i8, align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"32/64X length mismatch in FADT/%s: %u/%u\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Required FADT field %s has zero address and/or length: 0x%8.8X%8.8X/0x%X\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"Optional FADT field %s has valid %s but zero %s: 0x%8.8X%8.8X/0x%X\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Address\00", align 1
@.str.9 = private unnamed_addr constant [79 x i8] c"32/64X %s address mismatch in FADT: 0x%8.8X/0x%8.8X%8.8X, using %u-bit address\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Pm1aEventBlock\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Pm1bEventBlock\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Pm1aControlBlock\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Pm1bControlBlock\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Pm2ControlBlock\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"PmTimerBlock\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Gpe0Block\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Gpe1Block\00", align 1
@.str.18 = private unnamed_addr constant [110 x i8] c"%s - 32-bit FADT register is too long (%u bytes, %u bits) to convert to GAS struct - 255 bits max, truncating\00", align 1
@acpi_gbl_use_default_register_widths = external dso_local global i8, align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"Invalid length for FADT/%s: %u, using default %u\00", align 1
@fadt_pm_info_table = internal global [4 x %struct.acpi_fadt_pm_info] [%struct.acpi_fadt_pm_info { %struct.acpi_generic_address* @acpi_gbl_xpm1a_status, i16 148, i8 0 }, %struct.acpi_fadt_pm_info { %struct.acpi_generic_address* @acpi_gbl_xpm1a_enable, i16 148, i8 1 }, %struct.acpi_fadt_pm_info { %struct.acpi_generic_address* @acpi_gbl_xpm1b_status, i16 160, i8 0 }, %struct.acpi_fadt_pm_info { %struct.acpi_generic_address* @acpi_gbl_xpm1b_enable, i16 160, i8 1 }], align 16, !dbg !131
@.str.20 = private unnamed_addr constant [12 x i8] c"PmRegisters\00", align 1
@acpi_gbl_xpm1a_status = external dso_local global %struct.acpi_generic_address, align 1
@acpi_gbl_xpm1a_enable = external dso_local global %struct.acpi_generic_address, align 1
@acpi_gbl_xpm1b_status = external dso_local global %struct.acpi_generic_address, align 1
@acpi_gbl_xpm1b_enable = external dso_local global %struct.acpi_generic_address, align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_parse_fadt() #0 !dbg !147 {
entry:
  %length = alloca i32, align 4
  %table = alloca %struct.acpi_table_header*, align 8
  %fadt_desc = alloca %struct.acpi_table_desc*, align 8
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %length, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !152, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %fadt_desc, metadata !155, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %status, metadata !172, metadata !DIExpression()), !dbg !174
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !175
  %1 = load i32, i32* @acpi_gbl_fadt_index, align 4, !dbg !176
  %idxprom = zext i32 %1 to i64, !dbg !177
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %0, i64 %idxprom, !dbg !177
  store %struct.acpi_table_desc* %arrayidx, %struct.acpi_table_desc** %fadt_desc, align 8, !dbg !178
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %fadt_desc, align 8, !dbg !179
  %call = call i32 @acpi_tb_get_table(%struct.acpi_table_desc* %2, %struct.acpi_table_header** %table) #4, !dbg !180
  store i32 %call, i32* %status, align 4, !dbg !181
  %3 = load i32, i32* %status, align 4, !dbg !182
  %tobool = icmp ne i32 %3, 0, !dbg !182
  br i1 %tobool, label %if.then, label %if.end, !dbg !184

if.then:                                          ; preds = %entry
  br label %if.end14, !dbg !185

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %fadt_desc, align 8, !dbg !187
  %length1 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %4, i32 0, i32 2, !dbg !188
  %5 = load i32, i32* %length1, align 8, !dbg !188
  store i32 %5, i32* %length, align 4, !dbg !189
  %6 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !190
  %7 = load i32, i32* %length, align 4, !dbg !191
  %call2 = call i32 @acpi_tb_verify_checksum(%struct.acpi_table_header* %6, i32 %7) #4, !dbg !192
  %8 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !193
  %9 = load i32, i32* %length, align 4, !dbg !194
  call void @acpi_tb_create_local_fadt(%struct.acpi_table_header* %8, i32 %9) #4, !dbg !195
  %10 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %fadt_desc, align 8, !dbg !196
  call void @acpi_tb_put_table(%struct.acpi_table_desc* %10) #4, !dbg !197
  %11 = load i64, i64* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 44), align 1, !dbg !198
  %call3 = call i32 @acpi_tb_install_standard_table(i64 %11, i8 zeroext 1, i8 zeroext 0, i8 zeroext 1, i32* @acpi_gbl_dsdt_index) #4, !dbg !199
  %12 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !200
  %tobool4 = icmp ne i8 %12, 0, !dbg !200
  br i1 %tobool4, label %if.end14, label %if.then5, !dbg !202

if.then5:                                         ; preds = %if.end
  %13 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 1), align 1, !dbg !203
  %tobool6 = icmp ne i32 %13, 0, !dbg !206
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !207

if.then7:                                         ; preds = %if.then5
  %14 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 1), align 1, !dbg !208
  %conv = zext i32 %14 to i64, !dbg !210
  %call8 = call i32 @acpi_tb_install_standard_table(i64 %conv, i8 zeroext 1, i8 zeroext 0, i8 zeroext 1, i32* @acpi_gbl_facs_index) #4, !dbg !211
  br label %if.end9, !dbg !212

if.end9:                                          ; preds = %if.then7, %if.then5
  %15 = load i64, i64* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 43), align 1, !dbg !213
  %tobool10 = icmp ne i64 %15, 0, !dbg !215
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !216

if.then11:                                        ; preds = %if.end9
  %16 = load i64, i64* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 43), align 1, !dbg !217
  %call12 = call i32 @acpi_tb_install_standard_table(i64 %16, i8 zeroext 1, i8 zeroext 0, i8 zeroext 1, i32* @acpi_gbl_xfacs_index) #4, !dbg !219
  br label %if.end13, !dbg !220

if.end13:                                         ; preds = %if.then11, %if.end9
  br label %if.end14, !dbg !221

if.end14:                                         ; preds = %if.then, %if.end13, %if.end
  ret void, !dbg !222
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_get_table(%struct.acpi_table_desc*, %struct.acpi_table_header**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_verify_checksum(%struct.acpi_table_header*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_create_local_fadt(%struct.acpi_table_header* %table, i32 %length) #0 !dbg !223 {
entry:
  %table.addr = alloca %struct.acpi_table_header*, align 8
  %length.addr = alloca i32, align 4
  store %struct.acpi_table_header* %table, %struct.acpi_table_header** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table.addr, metadata !226, metadata !DIExpression()), !dbg !227
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !228, metadata !DIExpression()), !dbg !229
  %0 = load i32, i32* %length.addr, align 4, !dbg !230
  %conv = zext i32 %0 to i64, !dbg !230
  %cmp = icmp ugt i64 %conv, 276, !dbg !232
  br i1 %cmp, label %if.then, label %if.end, !dbg !233

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !234
  %revision = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %1, i32 0, i32 2, !dbg !234
  %2 = load i8, i8* %revision, align 1, !dbg !234
  %conv2 = zext i8 %2 to i32, !dbg !234
  %3 = load i32, i32* %length.addr, align 4, !dbg !234
  call void (i8*, i32, i8*, ...) @acpi_bios_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 362, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %conv2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %3, i32 276) #4, !dbg !234
  br label %if.end, !dbg !236

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 0, i32 0, i32 0), i8 0, i64 276, i1 false), !dbg !237
  %4 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !238
  %5 = bitcast %struct.acpi_table_header* %4 to i8*, !dbg !239
  %6 = load i32, i32* %length.addr, align 4, !dbg !240
  %conv3 = zext i32 %6 to i64, !dbg !240
  %cmp4 = icmp ult i64 %conv3, 276, !dbg !240
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !240

cond.true:                                        ; preds = %if.end
  %7 = load i32, i32* %length.addr, align 4, !dbg !240
  %conv6 = zext i32 %7 to i64, !dbg !240
  br label %cond.end, !dbg !240

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !240

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv6, %cond.true ], [ 276, %cond.false ], !dbg !240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 0, i32 0, i32 0), i8* align 1 %5, i64 %cond, i1 false), !dbg !239
  store i8 0, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !241
  %8 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 38), align 1, !dbg !242
  %and = and i32 %8, 1048576, !dbg !244
  %tobool = icmp ne i32 %and, 0, !dbg !244
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !245

if.then7:                                         ; preds = %cond.end
  store i8 1, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !246
  br label %if.end8, !dbg !248

if.end8:                                          ; preds = %if.then7, %cond.end
  call void @acpi_tb_convert_fadt() #4, !dbg !249
  call void @acpi_tb_setup_fadt_registers() #4, !dbg !250
  ret void, !dbg !251
}

; Function Attrs: noredzone
declare dso_local void @acpi_tb_put_table(%struct.acpi_table_desc*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_install_standard_table(i64, i8 zeroext, i8 zeroext, i8 zeroext, i32*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_bios_warning(i8*, i32, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_tb_convert_fadt() #0 !dbg !252 {
entry:
  %name = alloca i8*, align 8
  %address64 = alloca %struct.acpi_generic_address*, align 8
  %address32 = alloca i32, align 4
  %length = alloca i8, align 1
  %flags = alloca i8, align 1
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %name, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %address64, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata i32* %address32, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata i8* %length, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %i, metadata !263, metadata !DIExpression()), !dbg !264
  %0 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 0, i32 1), align 1, !dbg !265
  %cmp = icmp ule i32 %0, add (i32 zext (i16 ptrtoint (i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* null, i32 0, i32 42) to i16) to i32), i32 1), !dbg !267
  br i1 %cmp, label %if.then, label %if.end, !dbg !268

if.then:                                          ; preds = %entry
  store i8 0, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 4), align 1, !dbg !269
  store i8 0, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 10), align 1, !dbg !271
  store i8 0, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 26), align 1, !dbg !272
  store i16 0, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 36), align 1, !dbg !273
  br label %if.end, !dbg !274

if.end:                                           ; preds = %if.then, %entry
  store i32 276, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 0, i32 1), align 1, !dbg !275
  %1 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 2), align 1, !dbg !276
  %2 = load i64, i64* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 44), align 1, !dbg !277
  %call = call i64 @acpi_tb_select_address(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %1, i64 %2) #4, !dbg !278
  store i64 %call, i64* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 44), align 1, !dbg !279
  %3 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !280
  %tobool = icmp ne i8 %3, 0, !dbg !280
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !282

if.then1:                                         ; preds = %if.end
  br label %for.end, !dbg !283

if.end2:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !285
  br label %for.cond, !dbg !287

for.cond:                                         ; preds = %for.inc, %if.end2
  %4 = load i32, i32* %i, align 4, !dbg !288
  %conv = zext i32 %4 to i64, !dbg !288
  %cmp3 = icmp ult i64 %conv, 8, !dbg !290
  br i1 %cmp3, label %for.body, label %for.end, !dbg !291

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !292
  %idxprom = zext i32 %5 to i64, !dbg !292
  %arrayidx = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom, !dbg !292
  %address325 = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx, i32 0, i32 2, !dbg !292
  %6 = load i16, i16* %address325, align 2, !dbg !292
  %conv6 = zext i16 %6 to i64, !dbg !292
  %add.ptr = getelementptr i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 0, i32 0, i32 0), i64 %conv6, !dbg !292
  %7 = bitcast i8* %add.ptr to i32*, !dbg !292
  %8 = load i32, i32* %7, align 4, !dbg !294
  store i32 %8, i32* %address32, align 4, !dbg !295
  %9 = load i32, i32* %i, align 4, !dbg !296
  %idxprom7 = zext i32 %9 to i64, !dbg !296
  %arrayidx8 = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom7, !dbg !296
  %address649 = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx8, i32 0, i32 1, !dbg !296
  %10 = load i16, i16* %address649, align 8, !dbg !296
  %conv10 = zext i16 %10 to i64, !dbg !296
  %add.ptr11 = getelementptr i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 0, i32 0, i32 0), i64 %conv10, !dbg !296
  %11 = bitcast i8* %add.ptr11 to %struct.acpi_generic_address*, !dbg !296
  store %struct.acpi_generic_address* %11, %struct.acpi_generic_address** %address64, align 8, !dbg !297
  %12 = load i32, i32* %i, align 4, !dbg !298
  %idxprom12 = zext i32 %12 to i64, !dbg !298
  %arrayidx13 = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom12, !dbg !298
  %length14 = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx13, i32 0, i32 3, !dbg !298
  %13 = load i16, i16* %length14, align 4, !dbg !298
  %conv15 = zext i16 %13 to i64, !dbg !298
  %add.ptr16 = getelementptr i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 0, i32 0, i32 0), i64 %conv15, !dbg !298
  %14 = load i8, i8* %add.ptr16, align 1, !dbg !299
  store i8 %14, i8* %length, align 1, !dbg !300
  %15 = load i32, i32* %i, align 4, !dbg !301
  %idxprom17 = zext i32 %15 to i64, !dbg !302
  %arrayidx18 = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom17, !dbg !302
  %name19 = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx18, i32 0, i32 0, !dbg !303
  %16 = load i8*, i8** %name19, align 16, !dbg !303
  store i8* %16, i8** %name, align 8, !dbg !304
  %17 = load i32, i32* %i, align 4, !dbg !305
  %idxprom20 = zext i32 %17 to i64, !dbg !306
  %arrayidx21 = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom20, !dbg !306
  %flags22 = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx21, i32 0, i32 5, !dbg !307
  %18 = load i8, i8* %flags22, align 1, !dbg !307
  store i8 %18, i8* %flags, align 1, !dbg !308
  %19 = load i32, i32* %address32, align 4, !dbg !309
  %tobool23 = icmp ne i32 %19, 0, !dbg !309
  br i1 %tobool23, label %if.then24, label %if.end62, !dbg !311

if.then24:                                        ; preds = %for.body
  %20 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !312
  %address = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %20, i32 0, i32 4, !dbg !315
  %21 = load i64, i64* %address, align 1, !dbg !315
  %tobool25 = icmp ne i64 %21, 0, !dbg !312
  br i1 %tobool25, label %if.then26, label %if.end54, !dbg !316

if.then26:                                        ; preds = %if.then24
  %22 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !317
  %address27 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %22, i32 0, i32 4, !dbg !320
  %23 = load i64, i64* %address27, align 1, !dbg !320
  %24 = load i32, i32* %address32, align 4, !dbg !321
  %conv28 = zext i32 %24 to i64, !dbg !322
  %cmp29 = icmp ne i64 %23, %conv28, !dbg !323
  br i1 %cmp29, label %if.then31, label %if.end39, !dbg !324

if.then31:                                        ; preds = %if.then26
  %25 = load i8*, i8** %name, align 8, !dbg !325
  %26 = load i32, i32* %address32, align 4, !dbg !325
  %27 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !325
  %address33 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %27, i32 0, i32 4, !dbg !325
  %28 = load i64, i64* %address33, align 1, !dbg !325
  %shr = lshr i64 %28, 32, !dbg !325
  %conv34 = trunc i64 %shr to i32, !dbg !325
  %29 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !325
  %address35 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %29, i32 0, i32 4, !dbg !325
  %30 = load i64, i64* %address35, align 1, !dbg !325
  %conv36 = trunc i64 %30 to i32, !dbg !325
  %31 = load i8, i8* @acpi_gbl_use32_bit_fadt_addresses, align 1, !dbg !325
  %conv37 = zext i8 %31 to i32, !dbg !325
  %tobool38 = icmp ne i32 %conv37, 0, !dbg !325
  %32 = zext i1 %tobool38 to i64, !dbg !325
  %cond = select i1 %tobool38, i32 32, i32 64, !dbg !325
  call void (i8*, i32, i8*, ...) @acpi_bios_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 543, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i8* %25, i32 %26, i32 %conv34, i32 %conv36, i32 %cond) #4, !dbg !325
  br label %if.end39, !dbg !327

if.end39:                                         ; preds = %if.then31, %if.then26
  %33 = load i8, i8* %length, align 1, !dbg !328
  %conv40 = zext i8 %33 to i32, !dbg !328
  %shl = shl i32 %conv40, 3, !dbg !328
  %cmp41 = icmp ule i32 %shl, 255, !dbg !330
  br i1 %cmp41, label %land.lhs.true, label %if.end53, !dbg !331

land.lhs.true:                                    ; preds = %if.end39
  %34 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !332
  %bit_width = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %34, i32 0, i32 1, !dbg !333
  %35 = load i8, i8* %bit_width, align 1, !dbg !333
  %conv43 = zext i8 %35 to i32, !dbg !332
  %36 = load i8, i8* %length, align 1, !dbg !334
  %conv44 = zext i8 %36 to i32, !dbg !334
  %shl45 = shl i32 %conv44, 3, !dbg !334
  %cmp46 = icmp ne i32 %conv43, %shl45, !dbg !335
  br i1 %cmp46, label %if.then48, label %if.end53, !dbg !336

if.then48:                                        ; preds = %land.lhs.true
  %37 = load i8*, i8** %name, align 8, !dbg !337
  %38 = load i8, i8* %length, align 1, !dbg !337
  %conv49 = zext i8 %38 to i32, !dbg !337
  %shl50 = shl i32 %conv49, 3, !dbg !337
  %39 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !337
  %bit_width51 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %39, i32 0, i32 1, !dbg !337
  %40 = load i8, i8* %bit_width51, align 1, !dbg !337
  %conv52 = zext i8 %40 to i32, !dbg !337
  call void (i8*, i32, i8*, ...) @acpi_bios_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 564, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %37, i32 %shl50, i32 %conv52) #4, !dbg !337
  br label %if.end53, !dbg !339

if.end53:                                         ; preds = %if.then48, %land.lhs.true, %if.end39
  br label %if.end54, !dbg !340

if.end54:                                         ; preds = %if.end53, %if.then24
  %41 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !341
  %address55 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %41, i32 0, i32 4, !dbg !343
  %42 = load i64, i64* %address55, align 1, !dbg !343
  %tobool56 = icmp ne i64 %42, 0, !dbg !341
  br i1 %tobool56, label %lor.lhs.false, label %if.then59, !dbg !344

lor.lhs.false:                                    ; preds = %if.end54
  %43 = load i8, i8* @acpi_gbl_use32_bit_fadt_addresses, align 1, !dbg !345
  %conv57 = zext i8 %43 to i32, !dbg !345
  %tobool58 = icmp ne i32 %conv57, 0, !dbg !345
  br i1 %tobool58, label %if.then59, label %if.end61, !dbg !346

if.then59:                                        ; preds = %lor.lhs.false, %if.end54
  %44 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !347
  %45 = load i8, i8* %length, align 1, !dbg !349
  %46 = load i32, i32* %address32, align 4, !dbg !350
  %conv60 = zext i32 %46 to i64, !dbg !351
  %47 = load i8*, i8** %name, align 8, !dbg !352
  %48 = load i8, i8* %flags, align 1, !dbg !353
  call void @acpi_tb_init_generic_address(%struct.acpi_generic_address* %44, i8 zeroext 1, i8 zeroext %45, i64 %conv60, i8* %47, i8 zeroext %48) #4, !dbg !354
  br label %if.end61, !dbg !355

if.end61:                                         ; preds = %if.then59, %lor.lhs.false
  br label %if.end62, !dbg !356

if.end62:                                         ; preds = %if.end61, %for.body
  %49 = load i32, i32* %i, align 4, !dbg !357
  %idxprom63 = zext i32 %49 to i64, !dbg !359
  %arrayidx64 = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom63, !dbg !359
  %flags65 = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx64, i32 0, i32 5, !dbg !360
  %50 = load i8, i8* %flags65, align 1, !dbg !360
  %conv66 = zext i8 %50 to i32, !dbg !359
  %and = and i32 %conv66, 1, !dbg !361
  %tobool67 = icmp ne i32 %and, 0, !dbg !361
  br i1 %tobool67, label %if.then68, label %if.else, !dbg !362

if.then68:                                        ; preds = %if.end62
  %51 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !363
  %address69 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %51, i32 0, i32 4, !dbg !366
  %52 = load i64, i64* %address69, align 1, !dbg !366
  %tobool70 = icmp ne i64 %52, 0, !dbg !363
  br i1 %tobool70, label %lor.lhs.false71, label %if.then73, !dbg !367

lor.lhs.false71:                                  ; preds = %if.then68
  %53 = load i8, i8* %length, align 1, !dbg !368
  %tobool72 = icmp ne i8 %53, 0, !dbg !368
  br i1 %tobool72, label %if.end80, label %if.then73, !dbg !369

if.then73:                                        ; preds = %lor.lhs.false71, %if.then68
  %54 = load i8*, i8** %name, align 8, !dbg !370
  %55 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !370
  %address74 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %55, i32 0, i32 4, !dbg !370
  %56 = load i64, i64* %address74, align 1, !dbg !370
  %shr75 = lshr i64 %56, 32, !dbg !370
  %conv76 = trunc i64 %shr75 to i32, !dbg !370
  %57 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !370
  %address77 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %57, i32 0, i32 4, !dbg !370
  %58 = load i64, i64* %address77, align 1, !dbg !370
  %conv78 = trunc i64 %58 to i32, !dbg !370
  %59 = load i8, i8* %length, align 1, !dbg !370
  %conv79 = zext i8 %59 to i32, !dbg !370
  call void (i8*, i32, i8*, ...) @acpi_bios_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 599, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i8* %54, i32 %conv76, i32 %conv78, i32 %conv79) #4, !dbg !370
  br label %if.end80, !dbg !372

if.end80:                                         ; preds = %if.then73, %lor.lhs.false71
  br label %if.end113, !dbg !373

if.else:                                          ; preds = %if.end62
  %60 = load i32, i32* %i, align 4, !dbg !374
  %idxprom81 = zext i32 %60 to i64, !dbg !376
  %arrayidx82 = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom81, !dbg !376
  %flags83 = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx82, i32 0, i32 5, !dbg !377
  %61 = load i8, i8* %flags83, align 1, !dbg !377
  %conv84 = zext i8 %61 to i32, !dbg !376
  %and85 = and i32 %conv84, 2, !dbg !378
  %tobool86 = icmp ne i32 %and85, 0, !dbg !378
  br i1 %tobool86, label %if.then87, label %if.end112, !dbg !379

if.then87:                                        ; preds = %if.else
  %62 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !380
  %address88 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %62, i32 0, i32 4, !dbg !383
  %63 = load i64, i64* %address88, align 1, !dbg !383
  %tobool89 = icmp ne i64 %63, 0, !dbg !380
  br i1 %tobool89, label %land.lhs.true90, label %lor.lhs.false92, !dbg !384

land.lhs.true90:                                  ; preds = %if.then87
  %64 = load i8, i8* %length, align 1, !dbg !385
  %tobool91 = icmp ne i8 %64, 0, !dbg !385
  br i1 %tobool91, label %lor.lhs.false92, label %if.then98, !dbg !386

lor.lhs.false92:                                  ; preds = %land.lhs.true90, %if.then87
  %65 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !387
  %address93 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %65, i32 0, i32 4, !dbg !388
  %66 = load i64, i64* %address93, align 1, !dbg !388
  %tobool94 = icmp ne i64 %66, 0, !dbg !387
  br i1 %tobool94, label %if.end111, label %land.lhs.true95, !dbg !389

land.lhs.true95:                                  ; preds = %lor.lhs.false92
  %67 = load i8, i8* %length, align 1, !dbg !390
  %conv96 = zext i8 %67 to i32, !dbg !390
  %tobool97 = icmp ne i32 %conv96, 0, !dbg !390
  br i1 %tobool97, label %if.then98, label %if.end111, !dbg !391

if.then98:                                        ; preds = %land.lhs.true95, %land.lhs.true90
  %68 = load i8*, i8** %name, align 8, !dbg !392
  %69 = load i8, i8* %length, align 1, !dbg !392
  %conv99 = zext i8 %69 to i32, !dbg !392
  %tobool100 = icmp ne i32 %conv99, 0, !dbg !392
  %70 = zext i1 %tobool100 to i64, !dbg !392
  %cond101 = select i1 %tobool100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), !dbg !392
  %71 = load i8, i8* %length, align 1, !dbg !392
  %conv102 = zext i8 %71 to i32, !dbg !392
  %tobool103 = icmp ne i32 %conv102, 0, !dbg !392
  %72 = zext i1 %tobool103 to i64, !dbg !392
  %cond104 = select i1 %tobool103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), !dbg !392
  %73 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !392
  %address105 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %73, i32 0, i32 4, !dbg !392
  %74 = load i64, i64* %address105, align 1, !dbg !392
  %shr106 = lshr i64 %74, 32, !dbg !392
  %conv107 = trunc i64 %shr106 to i32, !dbg !392
  %75 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %address64, align 8, !dbg !392
  %address108 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %75, i32 0, i32 4, !dbg !392
  %76 = load i64, i64* %address108, align 1, !dbg !392
  %conv109 = trunc i64 %76 to i32, !dbg !392
  %77 = load i8, i8* %length, align 1, !dbg !392
  %conv110 = zext i8 %77 to i32, !dbg !392
  call void (i8*, i32, i8*, ...) @acpi_bios_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 615, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i8* %68, i8* %cond101, i8* %cond104, i32 %conv107, i32 %conv109, i32 %conv110) #4, !dbg !392
  br label %if.end111, !dbg !394

if.end111:                                        ; preds = %if.then98, %land.lhs.true95, %lor.lhs.false92
  br label %if.end112, !dbg !395

if.end112:                                        ; preds = %if.end111, %if.else
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end80
  br label %for.inc, !dbg !396

for.inc:                                          ; preds = %if.end113
  %78 = load i32, i32* %i, align 4, !dbg !397
  %inc = add i32 %78, 1, !dbg !397
  store i32 %inc, i32* %i, align 4, !dbg !397
  br label %for.cond, !dbg !398, !llvm.loop !399

for.end:                                          ; preds = %if.then1, %for.cond
  ret void, !dbg !401
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_tb_setup_fadt_registers() #0 !dbg !402 {
entry:
  %target64 = alloca %struct.acpi_generic_address*, align 8
  %source64 = alloca %struct.acpi_generic_address*, align 8
  %pm1_register_byte_width = alloca i8, align 1
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %target64, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %source64, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata i8* %pm1_register_byte_width, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata i32* %i, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load i8, i8* @acpi_gbl_use_default_register_widths, align 1, !dbg !411
  %tobool = icmp ne i8 %0, 0, !dbg !411
  br i1 %tobool, label %if.then, label %if.end30, !dbg !413

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !414
  br label %for.cond, !dbg !417

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !418
  %conv = zext i32 %1 to i64, !dbg !418
  %cmp = icmp ult i64 %conv, 8, !dbg !420
  br i1 %cmp, label %for.body, label %for.end, !dbg !421

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !422
  %idxprom = zext i32 %2 to i64, !dbg !422
  %arrayidx = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom, !dbg !422
  %address64 = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx, i32 0, i32 1, !dbg !422
  %3 = load i16, i16* %address64, align 8, !dbg !422
  %conv2 = zext i16 %3 to i64, !dbg !422
  %add.ptr = getelementptr i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 0, i32 0, i32 0), i64 %conv2, !dbg !422
  %4 = bitcast i8* %add.ptr to %struct.acpi_generic_address*, !dbg !422
  store %struct.acpi_generic_address* %4, %struct.acpi_generic_address** %target64, align 8, !dbg !424
  %5 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %target64, align 8, !dbg !425
  %address = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %5, i32 0, i32 4, !dbg !427
  %6 = load i64, i64* %address, align 1, !dbg !427
  %tobool3 = icmp ne i64 %6, 0, !dbg !428
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !429

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !430
  %idxprom4 = zext i32 %7 to i64, !dbg !431
  %arrayidx5 = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom4, !dbg !431
  %default_length = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx5, i32 0, i32 4, !dbg !432
  %8 = load i8, i8* %default_length, align 2, !dbg !432
  %conv6 = zext i8 %8 to i32, !dbg !431
  %cmp7 = icmp sgt i32 %conv6, 0, !dbg !433
  br i1 %cmp7, label %land.lhs.true9, label %if.end, !dbg !434

land.lhs.true9:                                   ; preds = %land.lhs.true
  %9 = load i32, i32* %i, align 4, !dbg !435
  %idxprom10 = zext i32 %9 to i64, !dbg !436
  %arrayidx11 = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom10, !dbg !436
  %default_length12 = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx11, i32 0, i32 4, !dbg !437
  %10 = load i8, i8* %default_length12, align 2, !dbg !437
  %conv13 = zext i8 %10 to i32, !dbg !436
  %11 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %target64, align 8, !dbg !438
  %bit_width = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %11, i32 0, i32 1, !dbg !439
  %12 = load i8, i8* %bit_width, align 1, !dbg !439
  %conv14 = zext i8 %12 to i32, !dbg !438
  %cmp15 = icmp ne i32 %conv13, %conv14, !dbg !440
  br i1 %cmp15, label %if.then17, label %if.end, !dbg !441

if.then17:                                        ; preds = %land.lhs.true9
  %13 = load i32, i32* %i, align 4, !dbg !442
  %idxprom18 = zext i32 %13 to i64, !dbg !442
  %arrayidx19 = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom18, !dbg !442
  %name = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx19, i32 0, i32 0, !dbg !442
  %14 = load i8*, i8** %name, align 16, !dbg !442
  %15 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %target64, align 8, !dbg !442
  %bit_width20 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %15, i32 0, i32 1, !dbg !442
  %16 = load i8, i8* %bit_width20, align 1, !dbg !442
  %conv21 = zext i8 %16 to i32, !dbg !442
  %17 = load i32, i32* %i, align 4, !dbg !442
  %idxprom22 = zext i32 %17 to i64, !dbg !442
  %arrayidx23 = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom22, !dbg !442
  %default_length24 = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx23, i32 0, i32 4, !dbg !442
  %18 = load i8, i8* %default_length24, align 2, !dbg !442
  %conv25 = zext i8 %18 to i32, !dbg !442
  call void (i8*, i32, i8*, ...) @acpi_bios_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 669, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0), i8* %14, i32 %conv21, i32 %conv25) #4, !dbg !442
  %19 = load i32, i32* %i, align 4, !dbg !444
  %idxprom26 = zext i32 %19 to i64, !dbg !445
  %arrayidx27 = getelementptr [8 x %struct.acpi_fadt_info], [8 x %struct.acpi_fadt_info]* @fadt_info_table, i64 0, i64 %idxprom26, !dbg !445
  %default_length28 = getelementptr inbounds %struct.acpi_fadt_info, %struct.acpi_fadt_info* %arrayidx27, i32 0, i32 4, !dbg !446
  %20 = load i8, i8* %default_length28, align 2, !dbg !446
  %21 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %target64, align 8, !dbg !447
  %bit_width29 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %21, i32 0, i32 1, !dbg !448
  store i8 %20, i8* %bit_width29, align 1, !dbg !449
  br label %if.end, !dbg !450

if.end:                                           ; preds = %if.then17, %land.lhs.true9, %land.lhs.true, %for.body
  br label %for.inc, !dbg !451

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4, !dbg !452
  %inc = add i32 %22, 1, !dbg !452
  store i32 %inc, i32* %i, align 4, !dbg !452
  br label %for.cond, !dbg !453, !llvm.loop !454

for.end:                                          ; preds = %for.cond
  br label %if.end30, !dbg !456

if.end30:                                         ; preds = %for.end, %entry
  %23 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 45, i32 1), align 1, !dbg !457
  %conv31 = zext i8 %23 to i32, !dbg !457
  %shr = ashr i32 %conv31, 4, !dbg !457
  %conv32 = trunc i32 %shr to i8, !dbg !458
  store i8 %conv32, i8* %pm1_register_byte_width, align 1, !dbg !459
  store i32 0, i32* %i, align 4, !dbg !460
  br label %for.cond33, !dbg !462

for.cond33:                                       ; preds = %for.inc54, %if.end30
  %24 = load i32, i32* %i, align 4, !dbg !463
  %conv34 = zext i32 %24 to i64, !dbg !463
  %cmp35 = icmp ult i64 %conv34, 4, !dbg !465
  br i1 %cmp35, label %for.body37, label %for.end56, !dbg !466

for.body37:                                       ; preds = %for.cond33
  %25 = load i32, i32* %i, align 4, !dbg !467
  %idxprom38 = zext i32 %25 to i64, !dbg !467
  %arrayidx39 = getelementptr [4 x %struct.acpi_fadt_pm_info], [4 x %struct.acpi_fadt_pm_info]* @fadt_pm_info_table, i64 0, i64 %idxprom38, !dbg !467
  %source = getelementptr inbounds %struct.acpi_fadt_pm_info, %struct.acpi_fadt_pm_info* %arrayidx39, i32 0, i32 1, !dbg !467
  %26 = load i16, i16* %source, align 8, !dbg !467
  %conv40 = zext i16 %26 to i64, !dbg !467
  %add.ptr41 = getelementptr i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 0, i32 0, i32 0), i64 %conv40, !dbg !467
  %27 = bitcast i8* %add.ptr41 to %struct.acpi_generic_address*, !dbg !467
  store %struct.acpi_generic_address* %27, %struct.acpi_generic_address** %source64, align 8, !dbg !469
  %28 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %source64, align 8, !dbg !470
  %address42 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %28, i32 0, i32 4, !dbg !472
  %29 = load i64, i64* %address42, align 1, !dbg !472
  %tobool43 = icmp ne i64 %29, 0, !dbg !470
  br i1 %tobool43, label %if.then44, label %if.end53, !dbg !473

if.then44:                                        ; preds = %for.body37
  %30 = load i32, i32* %i, align 4, !dbg !474
  %idxprom45 = zext i32 %30 to i64, !dbg !476
  %arrayidx46 = getelementptr [4 x %struct.acpi_fadt_pm_info], [4 x %struct.acpi_fadt_pm_info]* @fadt_pm_info_table, i64 0, i64 %idxprom45, !dbg !476
  %target = getelementptr inbounds %struct.acpi_fadt_pm_info, %struct.acpi_fadt_pm_info* %arrayidx46, i32 0, i32 0, !dbg !477
  %31 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %target, align 16, !dbg !477
  %32 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %source64, align 8, !dbg !478
  %space_id = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %32, i32 0, i32 0, !dbg !479
  %33 = load i8, i8* %space_id, align 1, !dbg !479
  %34 = load i8, i8* %pm1_register_byte_width, align 1, !dbg !480
  %35 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %source64, align 8, !dbg !481
  %address47 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %35, i32 0, i32 4, !dbg !482
  %36 = load i64, i64* %address47, align 1, !dbg !482
  %37 = load i32, i32* %i, align 4, !dbg !483
  %idxprom48 = zext i32 %37 to i64, !dbg !484
  %arrayidx49 = getelementptr [4 x %struct.acpi_fadt_pm_info], [4 x %struct.acpi_fadt_pm_info]* @fadt_pm_info_table, i64 0, i64 %idxprom48, !dbg !484
  %register_num = getelementptr inbounds %struct.acpi_fadt_pm_info, %struct.acpi_fadt_pm_info* %arrayidx49, i32 0, i32 2, !dbg !485
  %38 = load i8, i8* %register_num, align 2, !dbg !485
  %conv50 = zext i8 %38 to i32, !dbg !484
  %39 = load i8, i8* %pm1_register_byte_width, align 1, !dbg !486
  %conv51 = zext i8 %39 to i32, !dbg !486
  %mul = mul i32 %conv50, %conv51, !dbg !487
  %conv52 = sext i32 %mul to i64, !dbg !488
  %add = add i64 %36, %conv52, !dbg !489
  call void @acpi_tb_init_generic_address(%struct.acpi_generic_address* %31, i8 zeroext %33, i8 zeroext %34, i64 %add, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8 zeroext 0) #4, !dbg !490
  br label %if.end53, !dbg !491

if.end53:                                         ; preds = %if.then44, %for.body37
  br label %for.inc54, !dbg !492

for.inc54:                                        ; preds = %if.end53
  %40 = load i32, i32* %i, align 4, !dbg !493
  %inc55 = add i32 %40, 1, !dbg !493
  store i32 %inc55, i32* %i, align 4, !dbg !493
  br label %for.cond33, !dbg !494, !llvm.loop !495

for.end56:                                        ; preds = %for.cond33
  ret void, !dbg !497
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_tb_select_address(i8* %register_name, i32 %address32, i64 %address64) #0 !dbg !498 {
entry:
  %retval = alloca i64, align 8
  %register_name.addr = alloca i8*, align 8
  %address32.addr = alloca i32, align 4
  %address64.addr = alloca i64, align 8
  store i8* %register_name, i8** %register_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %register_name.addr, metadata !502, metadata !DIExpression()), !dbg !503
  store i32 %address32, i32* %address32.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %address32.addr, metadata !504, metadata !DIExpression()), !dbg !505
  store i64 %address64, i64* %address64.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address64.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load i64, i64* %address64.addr, align 8, !dbg !508
  %tobool = icmp ne i64 %0, 0, !dbg !508
  br i1 %tobool, label %if.end, label %if.then, !dbg !510

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %address32.addr, align 4, !dbg !511
  %conv = zext i32 %1 to i64, !dbg !513
  store i64 %conv, i64* %retval, align 8, !dbg !514
  br label %return, !dbg !514

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %address32.addr, align 4, !dbg !515
  %tobool1 = icmp ne i32 %2, 0, !dbg !515
  br i1 %tobool1, label %land.lhs.true, label %if.end13, !dbg !517

land.lhs.true:                                    ; preds = %if.end
  %3 = load i64, i64* %address64.addr, align 8, !dbg !518
  %4 = load i32, i32* %address32.addr, align 4, !dbg !519
  %conv2 = zext i32 %4 to i64, !dbg !520
  %cmp = icmp ne i64 %3, %conv2, !dbg !521
  br i1 %cmp, label %if.then4, label %if.end13, !dbg !522

if.then4:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %register_name.addr, align 8, !dbg !523
  %6 = load i32, i32* %address32.addr, align 4, !dbg !523
  %7 = load i64, i64* %address64.addr, align 8, !dbg !523
  %shr = lshr i64 %7, 32, !dbg !523
  %conv5 = trunc i64 %shr to i32, !dbg !523
  %8 = load i64, i64* %address64.addr, align 8, !dbg !523
  %conv6 = trunc i64 %8 to i32, !dbg !523
  %9 = load i8, i8* @acpi_gbl_use32_bit_fadt_addresses, align 1, !dbg !523
  %conv7 = zext i8 %9 to i32, !dbg !523
  %tobool8 = icmp ne i32 %conv7, 0, !dbg !523
  %10 = zext i1 %tobool8 to i64, !dbg !523
  %cond = select i1 %tobool8, i32 32, i32 64, !dbg !523
  call void (i8*, i32, i8*, ...) @acpi_bios_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 243, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.9, i64 0, i64 0), i8* %5, i32 %6, i32 %conv5, i32 %conv6, i32 %cond) #4, !dbg !523
  %11 = load i8, i8* @acpi_gbl_use32_bit_fadt_addresses, align 1, !dbg !525
  %tobool9 = icmp ne i8 %11, 0, !dbg !525
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !527

if.then10:                                        ; preds = %if.then4
  %12 = load i32, i32* %address32.addr, align 4, !dbg !528
  %conv11 = zext i32 %12 to i64, !dbg !530
  store i64 %conv11, i64* %retval, align 8, !dbg !531
  br label %return, !dbg !531

if.end12:                                         ; preds = %if.then4
  br label %if.end13, !dbg !532

if.end13:                                         ; preds = %if.end12, %land.lhs.true, %if.end
  %13 = load i64, i64* %address64.addr, align 8, !dbg !533
  store i64 %13, i64* %retval, align 8, !dbg !534
  br label %return, !dbg !534

return:                                           ; preds = %if.end13, %if.then10, %if.then
  %14 = load i64, i64* %retval, align 8, !dbg !535
  ret i64 %14, !dbg !535
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_tb_init_generic_address(%struct.acpi_generic_address* %generic_address, i8 zeroext %space_id, i8 zeroext %byte_width, i64 %address, i8* %register_name, i8 zeroext %flags) #0 !dbg !536 {
entry:
  %generic_address.addr = alloca %struct.acpi_generic_address*, align 8
  %space_id.addr = alloca i8, align 1
  %byte_width.addr = alloca i8, align 1
  %address.addr = alloca i64, align 8
  %register_name.addr = alloca i8*, align 8
  %flags.addr = alloca i8, align 1
  %bit_width = alloca i8, align 1
  store %struct.acpi_generic_address* %generic_address, %struct.acpi_generic_address** %generic_address.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %generic_address.addr, metadata !539, metadata !DIExpression()), !dbg !540
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !541, metadata !DIExpression()), !dbg !542
  store i8 %byte_width, i8* %byte_width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte_width.addr, metadata !543, metadata !DIExpression()), !dbg !544
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !545, metadata !DIExpression()), !dbg !546
  store i8* %register_name, i8** %register_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %register_name.addr, metadata !547, metadata !DIExpression()), !dbg !548
  store i8 %flags, i8* %flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flags.addr, metadata !549, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata i8* %bit_width, metadata !551, metadata !DIExpression()), !dbg !552
  %0 = load i8, i8* %byte_width.addr, align 1, !dbg !553
  %conv = zext i8 %0 to i32, !dbg !553
  %mul = mul i32 %conv, 8, !dbg !554
  %conv1 = trunc i32 %mul to i8, !dbg !555
  store i8 %conv1, i8* %bit_width, align 1, !dbg !556
  %1 = load i8, i8* %byte_width.addr, align 1, !dbg !557
  %conv2 = zext i8 %1 to i32, !dbg !557
  %cmp = icmp sgt i32 %conv2, 31, !dbg !559
  br i1 %cmp, label %if.then, label %if.end9, !dbg !560

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %flags.addr, align 1, !dbg !561
  %conv4 = zext i8 %2 to i32, !dbg !561
  %and = and i32 %conv4, 4, !dbg !564
  %tobool = icmp ne i32 %and, 0, !dbg !564
  br i1 %tobool, label %if.end, label %if.then5, !dbg !565

if.then5:                                         ; preds = %if.then
  %3 = load i8*, i8** %register_name.addr, align 8, !dbg !566
  %4 = load i8, i8* %byte_width.addr, align 1, !dbg !566
  %conv6 = zext i8 %4 to i32, !dbg !566
  %5 = load i8, i8* %byte_width.addr, align 1, !dbg !566
  %conv7 = zext i8 %5 to i32, !dbg !566
  %mul8 = mul i32 %conv7, 8, !dbg !566
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 177, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.18, i64 0, i64 0), i8* %3, i32 %conv6, i32 %mul8) #4, !dbg !566
  br label %if.end, !dbg !568

if.end:                                           ; preds = %if.then5, %if.then
  store i8 -1, i8* %bit_width, align 1, !dbg !569
  br label %if.end9, !dbg !570

if.end9:                                          ; preds = %if.end, %entry
  %6 = bitcast i64* %address.addr to i8*, !dbg !571
  %7 = bitcast i8* %6 to i64*, !dbg !571
  %8 = load i64, i64* %7, align 8, !dbg !571
  %9 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %generic_address.addr, align 8, !dbg !571
  %address10 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %9, i32 0, i32 4, !dbg !571
  %10 = bitcast i64* %address10 to i8*, !dbg !571
  %11 = bitcast i8* %10 to i64*, !dbg !571
  store i64 %8, i64* %11, align 8, !dbg !571
  %12 = load i8, i8* %space_id.addr, align 1, !dbg !572
  %13 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %generic_address.addr, align 8, !dbg !573
  %space_id11 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %13, i32 0, i32 0, !dbg !574
  store i8 %12, i8* %space_id11, align 1, !dbg !575
  %14 = load i8, i8* %bit_width, align 1, !dbg !576
  %15 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %generic_address.addr, align 8, !dbg !577
  %bit_width12 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %15, i32 0, i32 1, !dbg !578
  store i8 %14, i8* %bit_width12, align 1, !dbg !579
  %16 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %generic_address.addr, align 8, !dbg !580
  %bit_offset = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %16, i32 0, i32 2, !dbg !581
  store i8 0, i8* %bit_offset, align 1, !dbg !582
  %17 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %generic_address.addr, align 8, !dbg !583
  %access_width = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %17, i32 0, i32 3, !dbg !584
  store i8 0, i8* %access_width, align 1, !dbg !585
  ret void, !dbg !586
}

; Function Attrs: noredzone
declare dso_local void @acpi_bios_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !139, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !117, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbfadt.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !16, !19, !20, !24, !25, !113, !114, !8, !21, !115, !116}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !15)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !18)
!18 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !8)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !23)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_fadt", file: !27, line: 199, size: 2208, elements: !28)
!27 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!28 = !{!29, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !26, file: !27, line: 200, baseType: !30, size: 288)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !27, line: 68, size: 288, elements: !31)
!31 = !{!32, !37, !38, !39, !40, !44, !48, !49, !50}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !30, file: !27, line: 69, baseType: !33, size: 32)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !35)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !{!36}
!36 = !DISubrange(count: 4)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !30, file: !27, line: 70, baseType: !13, size: 32, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !30, file: !27, line: 71, baseType: !21, size: 8, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !30, file: !27, line: 72, baseType: !21, size: 8, offset: 72)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !30, file: !27, line: 73, baseType: !41, size: 48, offset: 80)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 48, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 6)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !30, file: !27, line: 74, baseType: !45, size: 64, offset: 128)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 8)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !30, file: !27, line: 75, baseType: !13, size: 32, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !30, file: !27, line: 76, baseType: !33, size: 32, offset: 224)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !30, file: !27, line: 77, baseType: !13, size: 32, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "facs", scope: !26, file: !27, line: 201, baseType: !13, size: 32, offset: 288)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "dsdt", scope: !26, file: !27, line: 202, baseType: !13, size: 32, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !26, file: !27, line: 203, baseType: !21, size: 8, offset: 352)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_profile", scope: !26, file: !27, line: 204, baseType: !21, size: 8, offset: 360)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "sci_interrupt", scope: !26, file: !27, line: 205, baseType: !16, size: 16, offset: 368)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "smi_command", scope: !26, file: !27, line: 206, baseType: !13, size: 32, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_enable", scope: !26, file: !27, line: 207, baseType: !21, size: 8, offset: 416)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_disable", scope: !26, file: !27, line: 208, baseType: !21, size: 8, offset: 424)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "s4_bios_request", scope: !26, file: !27, line: 209, baseType: !21, size: 8, offset: 432)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pstate_control", scope: !26, file: !27, line: 210, baseType: !21, size: 8, offset: 440)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pm1a_event_block", scope: !26, file: !27, line: 211, baseType: !13, size: 32, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "pm1b_event_block", scope: !26, file: !27, line: 212, baseType: !13, size: 32, offset: 480)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "pm1a_control_block", scope: !26, file: !27, line: 213, baseType: !13, size: 32, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pm1b_control_block", scope: !26, file: !27, line: 214, baseType: !13, size: 32, offset: 544)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pm2_control_block", scope: !26, file: !27, line: 215, baseType: !13, size: 32, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pm_timer_block", scope: !26, file: !27, line: 216, baseType: !13, size: 32, offset: 608)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "gpe0_block", scope: !26, file: !27, line: 217, baseType: !13, size: 32, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "gpe1_block", scope: !26, file: !27, line: 218, baseType: !13, size: 32, offset: 672)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "pm1_event_length", scope: !26, file: !27, line: 219, baseType: !21, size: 8, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pm1_control_length", scope: !26, file: !27, line: 220, baseType: !21, size: 8, offset: 712)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pm2_control_length", scope: !26, file: !27, line: 221, baseType: !21, size: 8, offset: 720)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pm_timer_length", scope: !26, file: !27, line: 222, baseType: !21, size: 8, offset: 728)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "gpe0_block_length", scope: !26, file: !27, line: 223, baseType: !21, size: 8, offset: 736)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "gpe1_block_length", scope: !26, file: !27, line: 224, baseType: !21, size: 8, offset: 744)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "gpe1_base", scope: !26, file: !27, line: 225, baseType: !21, size: 8, offset: 752)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "cst_control", scope: !26, file: !27, line: 226, baseType: !21, size: 8, offset: 760)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "c2_latency", scope: !26, file: !27, line: 227, baseType: !16, size: 16, offset: 768)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "c3_latency", scope: !26, file: !27, line: 228, baseType: !16, size: 16, offset: 784)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flush_size", scope: !26, file: !27, line: 229, baseType: !16, size: 16, offset: 800)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flush_stride", scope: !26, file: !27, line: 230, baseType: !16, size: 16, offset: 816)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "duty_offset", scope: !26, file: !27, line: 231, baseType: !21, size: 8, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "duty_width", scope: !26, file: !27, line: 232, baseType: !21, size: 8, offset: 840)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "day_alarm", scope: !26, file: !27, line: 233, baseType: !21, size: 8, offset: 848)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "month_alarm", scope: !26, file: !27, line: 234, baseType: !21, size: 8, offset: 856)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "century", scope: !26, file: !27, line: 235, baseType: !21, size: 8, offset: 864)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "boot_flags", scope: !26, file: !27, line: 236, baseType: !16, size: 16, offset: 872)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !26, file: !27, line: 237, baseType: !21, size: 8, offset: 888)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !26, file: !27, line: 238, baseType: !13, size: 32, offset: 896)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reset_register", scope: !26, file: !27, line: 239, baseType: !90, size: 96, offset: 928)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !27, line: 90, size: 96, elements: !91)
!91 = !{!92, !93, !94, !95, !96}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !90, file: !27, line: 91, baseType: !21, size: 8)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !90, file: !27, line: 92, baseType: !21, size: 8, offset: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !90, file: !27, line: 93, baseType: !21, size: 8, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !90, file: !27, line: 94, baseType: !21, size: 8, offset: 24)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !90, file: !27, line: 95, baseType: !8, size: 64, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reset_value", scope: !26, file: !27, line: 240, baseType: !21, size: 8, offset: 1024)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "arm_boot_flags", scope: !26, file: !27, line: 241, baseType: !16, size: 16, offset: 1032)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "minor_revision", scope: !26, file: !27, line: 242, baseType: !21, size: 8, offset: 1048)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "Xfacs", scope: !26, file: !27, line: 243, baseType: !8, size: 64, offset: 1056)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "Xdsdt", scope: !26, file: !27, line: 244, baseType: !8, size: 64, offset: 1120)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "xpm1a_event_block", scope: !26, file: !27, line: 245, baseType: !90, size: 96, offset: 1184)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "xpm1b_event_block", scope: !26, file: !27, line: 246, baseType: !90, size: 96, offset: 1280)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "xpm1a_control_block", scope: !26, file: !27, line: 247, baseType: !90, size: 96, offset: 1376)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "xpm1b_control_block", scope: !26, file: !27, line: 248, baseType: !90, size: 96, offset: 1472)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "xpm2_control_block", scope: !26, file: !27, line: 249, baseType: !90, size: 96, offset: 1568)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "xpm_timer_block", scope: !26, file: !27, line: 250, baseType: !90, size: 96, offset: 1664)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "xgpe0_block", scope: !26, file: !27, line: 251, baseType: !90, size: 96, offset: 1760)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "xgpe1_block", scope: !26, file: !27, line: 252, baseType: !90, size: 96, offset: 1856)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_control", scope: !26, file: !27, line: 253, baseType: !90, size: 96, offset: 1952)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_status", scope: !26, file: !27, line: 254, baseType: !90, size: 96, offset: 2048)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "hypervisor_id", scope: !26, file: !27, line: 255, baseType: !8, size: 64, offset: 2144)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !7, line: 805, baseType: !21)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!117 = !{!0, !118, !131}
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "fadt_info_table", scope: !2, file: !3, line: 48, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1024, elements: !46)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fadt_info", file: !3, line: 33, size: 128, elements: !122)
!122 = !{!123, !126, !127, !128, !129, !130}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !121, file: !3, line: 34, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !121, file: !3, line: 35, baseType: !16, size: 16, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !121, file: !3, line: 36, baseType: !16, size: 16, offset: 80)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !121, file: !3, line: 37, baseType: !16, size: 16, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "default_length", scope: !121, file: !3, line: 38, baseType: !21, size: 8, offset: 112)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !3, line: 39, baseType: !21, size: 8, offset: 120)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "fadt_pm_info_table", scope: !2, file: !3, line: 118, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 512, elements: !35)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fadt_pm_info", file: !3, line: 111, size: 128, elements: !135)
!135 = !{!136, !137, !138}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !134, file: !3, line: 112, baseType: !114, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !134, file: !3, line: 113, baseType: !16, size: 16, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "register_num", scope: !134, file: !3, line: 114, baseType: !21, size: 8, offset: 80)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 56, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 7)
!142 = !{i32 7, !"Dwarf Version", i32 4}
!143 = !{i32 2, !"Debug Info Version", i32 3}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"Code Model", i32 2}
!146 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!147 = distinct !DISubprogram(name: "acpi_tb_parse_fadt", scope: !3, file: !3, line: 276, type: !148, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!148 = !DISubroutineType(types: !149)
!149 = !{null}
!150 = !DILocalVariable(name: "length", scope: !147, file: !3, line: 278, type: !13)
!151 = !DILocation(line: 278, column: 6, scope: !147)
!152 = !DILocalVariable(name: "table", scope: !147, file: !3, line: 279, type: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!154 = !DILocation(line: 279, column: 28, scope: !147)
!155 = !DILocalVariable(name: "fadt_desc", scope: !147, file: !3, line: 280, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !27, line: 334, size: 256, elements: !158)
!158 = !{!159, !160, !161, !162, !167, !169, !170}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !157, file: !27, line: 335, baseType: !6, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !157, file: !27, line: 336, baseType: !153, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !157, file: !27, line: 337, baseType: !13, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !157, file: !27, line: 338, baseType: !163, size: 32, offset: 160)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !27, line: 327, size: 32, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !163, file: !27, line: 328, baseType: !13, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !163, file: !27, line: 329, baseType: !33, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !157, file: !27, line: 339, baseType: !168, size: 16, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !16)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !27, line: 340, baseType: !21, size: 8, offset: 208)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !157, file: !27, line: 341, baseType: !16, size: 16, offset: 224)
!171 = !DILocation(line: 280, column: 26, scope: !147)
!172 = !DILocalVariable(name: "status", scope: !147, file: !3, line: 281, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !13)
!174 = !DILocation(line: 281, column: 14, scope: !147)
!175 = !DILocation(line: 290, column: 40, scope: !147)
!176 = !DILocation(line: 290, column: 47, scope: !147)
!177 = !DILocation(line: 290, column: 15, scope: !147)
!178 = !DILocation(line: 290, column: 12, scope: !147)
!179 = !DILocation(line: 291, column: 29, scope: !147)
!180 = !DILocation(line: 291, column: 11, scope: !147)
!181 = !DILocation(line: 291, column: 9, scope: !147)
!182 = !DILocation(line: 292, column: 6, scope: !183)
!183 = distinct !DILexicalBlock(scope: !147, file: !3, line: 292, column: 6)
!184 = !DILocation(line: 292, column: 6, scope: !147)
!185 = !DILocation(line: 293, column: 3, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !3, line: 292, column: 28)
!187 = !DILocation(line: 295, column: 11, scope: !147)
!188 = !DILocation(line: 295, column: 22, scope: !147)
!189 = !DILocation(line: 295, column: 9, scope: !147)
!190 = !DILocation(line: 301, column: 32, scope: !147)
!191 = !DILocation(line: 301, column: 39, scope: !147)
!192 = !DILocation(line: 301, column: 8, scope: !147)
!193 = !DILocation(line: 305, column: 28, scope: !147)
!194 = !DILocation(line: 305, column: 35, scope: !147)
!195 = !DILocation(line: 305, column: 2, scope: !147)
!196 = !DILocation(line: 309, column: 20, scope: !147)
!197 = !DILocation(line: 309, column: 2, scope: !147)
!198 = !DILocation(line: 314, column: 12, scope: !147)
!199 = !DILocation(line: 313, column: 2, scope: !147)
!200 = !DILocation(line: 320, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !147, file: !3, line: 320, column: 6)
!202 = !DILocation(line: 320, column: 6, scope: !147)
!203 = !DILocation(line: 321, column: 21, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 321, column: 7)
!205 = distinct !DILexicalBlock(scope: !201, file: !3, line: 320, column: 34)
!206 = !DILocation(line: 321, column: 7, scope: !204)
!207 = !DILocation(line: 321, column: 7, scope: !205)
!208 = !DILocation(line: 323, column: 28, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !3, line: 321, column: 27)
!210 = !DILocation(line: 322, column: 35, scope: !209)
!211 = !DILocation(line: 322, column: 4, scope: !209)
!212 = !DILocation(line: 327, column: 3, scope: !209)
!213 = !DILocation(line: 328, column: 21, scope: !214)
!214 = distinct !DILexicalBlock(scope: !205, file: !3, line: 328, column: 7)
!215 = !DILocation(line: 328, column: 7, scope: !214)
!216 = !DILocation(line: 328, column: 7, scope: !205)
!217 = !DILocation(line: 330, column: 28, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !3, line: 328, column: 28)
!219 = !DILocation(line: 329, column: 4, scope: !218)
!220 = !DILocation(line: 334, column: 3, scope: !218)
!221 = !DILocation(line: 335, column: 2, scope: !205)
!222 = !DILocation(line: 336, column: 1, scope: !147)
!223 = distinct !DISubprogram(name: "acpi_tb_create_local_fadt", scope: !3, file: !3, line: 354, type: !224, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !153, !13}
!226 = !DILocalVariable(name: "table", arg: 1, scope: !223, file: !3, line: 354, type: !153)
!227 = !DILocation(line: 354, column: 58, scope: !223)
!228 = !DILocalVariable(name: "length", arg: 2, scope: !223, file: !3, line: 354, type: !13)
!229 = !DILocation(line: 354, column: 69, scope: !223)
!230 = !DILocation(line: 361, column: 6, scope: !231)
!231 = distinct !DILexicalBlock(scope: !223, file: !3, line: 361, column: 6)
!232 = !DILocation(line: 361, column: 13, scope: !231)
!233 = !DILocation(line: 361, column: 6, scope: !223)
!234 = !DILocation(line: 362, column: 3, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !3, line: 361, column: 47)
!236 = !DILocation(line: 368, column: 2, scope: !235)
!237 = !DILocation(line: 372, column: 2, scope: !223)
!238 = !DILocation(line: 376, column: 25, scope: !223)
!239 = !DILocation(line: 376, column: 2, scope: !223)
!240 = !DILocation(line: 377, column: 9, scope: !223)
!241 = !DILocation(line: 381, column: 28, scope: !223)
!242 = !DILocation(line: 382, column: 20, scope: !243)
!243 = distinct !DILexicalBlock(scope: !223, file: !3, line: 382, column: 6)
!244 = !DILocation(line: 382, column: 26, scope: !243)
!245 = !DILocation(line: 382, column: 6, scope: !223)
!246 = !DILocation(line: 383, column: 29, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !3, line: 382, column: 50)
!248 = !DILocation(line: 384, column: 2, scope: !247)
!249 = !DILocation(line: 388, column: 2, scope: !223)
!250 = !DILocation(line: 392, column: 2, scope: !223)
!251 = !DILocation(line: 393, column: 1, scope: !223)
!252 = distinct !DISubprogram(name: "acpi_tb_convert_fadt", scope: !3, file: !3, line: 439, type: !148, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!253 = !DILocalVariable(name: "name", scope: !252, file: !3, line: 441, type: !124)
!254 = !DILocation(line: 441, column: 14, scope: !252)
!255 = !DILocalVariable(name: "address64", scope: !252, file: !3, line: 442, type: !114)
!256 = !DILocation(line: 442, column: 31, scope: !252)
!257 = !DILocalVariable(name: "address32", scope: !252, file: !3, line: 443, type: !13)
!258 = !DILocation(line: 443, column: 6, scope: !252)
!259 = !DILocalVariable(name: "length", scope: !252, file: !3, line: 444, type: !21)
!260 = !DILocation(line: 444, column: 5, scope: !252)
!261 = !DILocalVariable(name: "flags", scope: !252, file: !3, line: 445, type: !21)
!262 = !DILocation(line: 445, column: 5, scope: !252)
!263 = !DILocalVariable(name: "i", scope: !252, file: !3, line: 446, type: !13)
!264 = !DILocation(line: 446, column: 6, scope: !252)
!265 = !DILocation(line: 459, column: 27, scope: !266)
!266 = distinct !DILexicalBlock(scope: !252, file: !3, line: 459, column: 6)
!267 = !DILocation(line: 459, column: 34, scope: !266)
!268 = !DILocation(line: 459, column: 6, scope: !252)
!269 = !DILocation(line: 460, column: 35, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !3, line: 459, column: 56)
!271 = !DILocation(line: 461, column: 32, scope: !270)
!272 = !DILocation(line: 462, column: 29, scope: !270)
!273 = !DILocation(line: 463, column: 28, scope: !270)
!274 = !DILocation(line: 464, column: 2, scope: !270)
!275 = !DILocation(line: 471, column: 30, scope: !252)
!276 = !DILocation(line: 478, column: 26, scope: !252)
!277 = !DILocation(line: 479, column: 26, scope: !252)
!278 = !DILocation(line: 477, column: 24, scope: !252)
!279 = !DILocation(line: 477, column: 22, scope: !252)
!280 = !DILocation(line: 483, column: 6, scope: !281)
!281 = distinct !DILexicalBlock(scope: !252, file: !3, line: 483, column: 6)
!282 = !DILocation(line: 483, column: 6, scope: !252)
!283 = !DILocation(line: 484, column: 3, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !3, line: 483, column: 33)
!285 = !DILocation(line: 489, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !252, file: !3, line: 489, column: 2)
!287 = !DILocation(line: 489, column: 7, scope: !286)
!288 = !DILocation(line: 489, column: 14, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !3, line: 489, column: 2)
!290 = !DILocation(line: 489, column: 16, scope: !289)
!291 = !DILocation(line: 489, column: 2, scope: !286)
!292 = !DILocation(line: 494, column: 16, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !3, line: 489, column: 47)
!294 = !DILocation(line: 494, column: 15, scope: !293)
!295 = !DILocation(line: 494, column: 13, scope: !293)
!296 = !DILocation(line: 498, column: 15, scope: !293)
!297 = !DILocation(line: 498, column: 13, scope: !293)
!298 = !DILocation(line: 502, column: 13, scope: !293)
!299 = !DILocation(line: 502, column: 12, scope: !293)
!300 = !DILocation(line: 502, column: 10, scope: !293)
!301 = !DILocation(line: 506, column: 26, scope: !293)
!302 = !DILocation(line: 506, column: 10, scope: !293)
!303 = !DILocation(line: 506, column: 29, scope: !293)
!304 = !DILocation(line: 506, column: 8, scope: !293)
!305 = !DILocation(line: 507, column: 27, scope: !293)
!306 = !DILocation(line: 507, column: 11, scope: !293)
!307 = !DILocation(line: 507, column: 30, scope: !293)
!308 = !DILocation(line: 507, column: 9, scope: !293)
!309 = !DILocation(line: 537, column: 7, scope: !310)
!310 = distinct !DILexicalBlock(scope: !293, file: !3, line: 537, column: 7)
!311 = !DILocation(line: 537, column: 7, scope: !293)
!312 = !DILocation(line: 538, column: 8, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 538, column: 8)
!314 = distinct !DILexicalBlock(scope: !310, file: !3, line: 537, column: 18)
!315 = !DILocation(line: 538, column: 19, scope: !313)
!316 = !DILocation(line: 538, column: 8, scope: !314)
!317 = !DILocation(line: 539, column: 9, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 539, column: 9)
!319 = distinct !DILexicalBlock(scope: !313, file: !3, line: 538, column: 28)
!320 = !DILocation(line: 539, column: 20, scope: !318)
!321 = !DILocation(line: 539, column: 36, scope: !318)
!322 = !DILocation(line: 539, column: 31, scope: !318)
!323 = !DILocation(line: 539, column: 28, scope: !318)
!324 = !DILocation(line: 539, column: 9, scope: !319)
!325 = !DILocation(line: 543, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !318, file: !3, line: 539, column: 47)
!327 = !DILocation(line: 551, column: 5, scope: !326)
!328 = !DILocation(line: 561, column: 10, scope: !329)
!329 = distinct !DILexicalBlock(scope: !319, file: !3, line: 561, column: 9)
!330 = !DILocation(line: 561, column: 29, scope: !329)
!331 = !DILocation(line: 561, column: 48, scope: !329)
!332 = !DILocation(line: 562, column: 10, scope: !329)
!333 = !DILocation(line: 562, column: 21, scope: !329)
!334 = !DILocation(line: 563, column: 10, scope: !329)
!335 = !DILocation(line: 562, column: 31, scope: !329)
!336 = !DILocation(line: 561, column: 9, scope: !319)
!337 = !DILocation(line: 564, column: 6, scope: !338)
!338 = distinct !DILexicalBlock(scope: !329, file: !3, line: 563, column: 31)
!339 = !DILocation(line: 570, column: 5, scope: !338)
!340 = !DILocation(line: 571, column: 4, scope: !319)
!341 = !DILocation(line: 583, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !314, file: !3, line: 583, column: 8)
!343 = !DILocation(line: 583, column: 20, scope: !342)
!344 = !DILocation(line: 584, column: 8, scope: !342)
!345 = !DILocation(line: 584, column: 11, scope: !342)
!346 = !DILocation(line: 583, column: 8, scope: !314)
!347 = !DILocation(line: 585, column: 34, scope: !348)
!348 = distinct !DILexicalBlock(scope: !342, file: !3, line: 584, column: 46)
!349 = !DILocation(line: 587, column: 13, scope: !348)
!350 = !DILocation(line: 588, column: 18, scope: !348)
!351 = !DILocation(line: 588, column: 13, scope: !348)
!352 = !DILocation(line: 589, column: 13, scope: !348)
!353 = !DILocation(line: 589, column: 19, scope: !348)
!354 = !DILocation(line: 585, column: 5, scope: !348)
!355 = !DILocation(line: 590, column: 4, scope: !348)
!356 = !DILocation(line: 591, column: 3, scope: !314)
!357 = !DILocation(line: 593, column: 23, scope: !358)
!358 = distinct !DILexicalBlock(scope: !293, file: !3, line: 593, column: 7)
!359 = !DILocation(line: 593, column: 7, scope: !358)
!360 = !DILocation(line: 593, column: 26, scope: !358)
!361 = !DILocation(line: 593, column: 32, scope: !358)
!362 = !DILocation(line: 593, column: 7, scope: !293)
!363 = !DILocation(line: 598, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 598, column: 8)
!365 = distinct !DILexicalBlock(scope: !358, file: !3, line: 593, column: 54)
!366 = !DILocation(line: 598, column: 20, scope: !364)
!367 = !DILocation(line: 598, column: 28, scope: !364)
!368 = !DILocation(line: 598, column: 32, scope: !364)
!369 = !DILocation(line: 598, column: 8, scope: !365)
!370 = !DILocation(line: 599, column: 5, scope: !371)
!371 = distinct !DILexicalBlock(scope: !364, file: !3, line: 598, column: 40)
!372 = !DILocation(line: 606, column: 4, scope: !371)
!373 = !DILocation(line: 607, column: 3, scope: !365)
!374 = !DILocation(line: 607, column: 30, scope: !375)
!375 = distinct !DILexicalBlock(scope: !358, file: !3, line: 607, column: 14)
!376 = !DILocation(line: 607, column: 14, scope: !375)
!377 = !DILocation(line: 607, column: 33, scope: !375)
!378 = !DILocation(line: 607, column: 39, scope: !375)
!379 = !DILocation(line: 607, column: 14, scope: !358)
!380 = !DILocation(line: 613, column: 9, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 613, column: 8)
!382 = distinct !DILexicalBlock(scope: !375, file: !3, line: 607, column: 68)
!383 = !DILocation(line: 613, column: 20, scope: !381)
!384 = !DILocation(line: 613, column: 28, scope: !381)
!385 = !DILocation(line: 613, column: 32, scope: !381)
!386 = !DILocation(line: 613, column: 40, scope: !381)
!387 = !DILocation(line: 614, column: 10, scope: !381)
!388 = !DILocation(line: 614, column: 21, scope: !381)
!389 = !DILocation(line: 614, column: 29, scope: !381)
!390 = !DILocation(line: 614, column: 32, scope: !381)
!391 = !DILocation(line: 613, column: 8, scope: !382)
!392 = !DILocation(line: 615, column: 5, scope: !393)
!393 = distinct !DILexicalBlock(scope: !381, file: !3, line: 614, column: 41)
!394 = !DILocation(line: 625, column: 4, scope: !393)
!395 = !DILocation(line: 626, column: 3, scope: !382)
!396 = !DILocation(line: 627, column: 2, scope: !293)
!397 = !DILocation(line: 489, column: 43, scope: !289)
!398 = !DILocation(line: 489, column: 2, scope: !289)
!399 = distinct !{!399, !291, !400}
!400 = !DILocation(line: 627, column: 2, scope: !286)
!401 = !DILocation(line: 628, column: 1, scope: !252)
!402 = distinct !DISubprogram(name: "acpi_tb_setup_fadt_registers", scope: !3, file: !3, line: 643, type: !148, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!403 = !DILocalVariable(name: "target64", scope: !402, file: !3, line: 645, type: !114)
!404 = !DILocation(line: 645, column: 31, scope: !402)
!405 = !DILocalVariable(name: "source64", scope: !402, file: !3, line: 646, type: !114)
!406 = !DILocation(line: 646, column: 31, scope: !402)
!407 = !DILocalVariable(name: "pm1_register_byte_width", scope: !402, file: !3, line: 647, type: !21)
!408 = !DILocation(line: 647, column: 5, scope: !402)
!409 = !DILocalVariable(name: "i", scope: !402, file: !3, line: 648, type: !13)
!410 = !DILocation(line: 648, column: 6, scope: !402)
!411 = !DILocation(line: 654, column: 6, scope: !412)
!412 = distinct !DILexicalBlock(scope: !402, file: !3, line: 654, column: 6)
!413 = !DILocation(line: 654, column: 6, scope: !402)
!414 = !DILocation(line: 655, column: 10, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !3, line: 655, column: 3)
!416 = distinct !DILexicalBlock(scope: !412, file: !3, line: 654, column: 44)
!417 = !DILocation(line: 655, column: 8, scope: !415)
!418 = !DILocation(line: 655, column: 15, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !3, line: 655, column: 3)
!420 = !DILocation(line: 655, column: 17, scope: !419)
!421 = !DILocation(line: 655, column: 3, scope: !415)
!422 = !DILocation(line: 657, column: 8, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !3, line: 655, column: 48)
!424 = !DILocation(line: 656, column: 13, scope: !423)
!425 = !DILocation(line: 665, column: 9, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !3, line: 665, column: 8)
!427 = !DILocation(line: 665, column: 19, scope: !426)
!428 = !DILocation(line: 665, column: 8, scope: !426)
!429 = !DILocation(line: 665, column: 28, scope: !426)
!430 = !DILocation(line: 666, column: 25, scope: !426)
!431 = !DILocation(line: 666, column: 9, scope: !426)
!432 = !DILocation(line: 666, column: 28, scope: !426)
!433 = !DILocation(line: 666, column: 43, scope: !426)
!434 = !DILocation(line: 666, column: 48, scope: !426)
!435 = !DILocation(line: 667, column: 25, scope: !426)
!436 = !DILocation(line: 667, column: 9, scope: !426)
!437 = !DILocation(line: 667, column: 28, scope: !426)
!438 = !DILocation(line: 668, column: 9, scope: !426)
!439 = !DILocation(line: 668, column: 19, scope: !426)
!440 = !DILocation(line: 667, column: 43, scope: !426)
!441 = !DILocation(line: 665, column: 8, scope: !423)
!442 = !DILocation(line: 669, column: 5, scope: !443)
!443 = distinct !DILexicalBlock(scope: !426, file: !3, line: 668, column: 31)
!444 = !DILocation(line: 679, column: 25, scope: !443)
!445 = !DILocation(line: 679, column: 9, scope: !443)
!446 = !DILocation(line: 679, column: 28, scope: !443)
!447 = !DILocation(line: 678, column: 5, scope: !443)
!448 = !DILocation(line: 678, column: 15, scope: !443)
!449 = !DILocation(line: 678, column: 25, scope: !443)
!450 = !DILocation(line: 680, column: 4, scope: !443)
!451 = !DILocation(line: 681, column: 3, scope: !423)
!452 = !DILocation(line: 655, column: 44, scope: !419)
!453 = !DILocation(line: 655, column: 3, scope: !419)
!454 = distinct !{!454, !421, !455}
!455 = !DILocation(line: 681, column: 3, scope: !415)
!456 = !DILocation(line: 682, column: 2, scope: !416)
!457 = !DILocation(line: 690, column: 6, scope: !402)
!458 = !DILocation(line: 689, column: 28, scope: !402)
!459 = !DILocation(line: 689, column: 26, scope: !402)
!460 = !DILocation(line: 706, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !402, file: !3, line: 706, column: 2)
!462 = !DILocation(line: 706, column: 7, scope: !461)
!463 = !DILocation(line: 706, column: 14, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !3, line: 706, column: 2)
!465 = !DILocation(line: 706, column: 16, scope: !464)
!466 = !DILocation(line: 706, column: 2, scope: !461)
!467 = !DILocation(line: 708, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !3, line: 706, column: 50)
!469 = !DILocation(line: 707, column: 12, scope: !468)
!470 = !DILocation(line: 711, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !3, line: 711, column: 7)
!472 = !DILocation(line: 711, column: 17, scope: !471)
!473 = !DILocation(line: 711, column: 7, scope: !468)
!474 = !DILocation(line: 712, column: 52, scope: !475)
!475 = distinct !DILexicalBlock(scope: !471, file: !3, line: 711, column: 26)
!476 = !DILocation(line: 712, column: 33, scope: !475)
!477 = !DILocation(line: 713, column: 12, scope: !475)
!478 = !DILocation(line: 713, column: 20, scope: !475)
!479 = !DILocation(line: 713, column: 30, scope: !475)
!480 = !DILocation(line: 714, column: 12, scope: !475)
!481 = !DILocation(line: 715, column: 12, scope: !475)
!482 = !DILocation(line: 715, column: 22, scope: !475)
!483 = !DILocation(line: 716, column: 32, scope: !475)
!484 = !DILocation(line: 716, column: 13, scope: !475)
!485 = !DILocation(line: 717, column: 13, scope: !475)
!486 = !DILocation(line: 718, column: 13, scope: !475)
!487 = !DILocation(line: 717, column: 26, scope: !475)
!488 = !DILocation(line: 716, column: 12, scope: !475)
!489 = !DILocation(line: 715, column: 30, scope: !475)
!490 = !DILocation(line: 712, column: 4, scope: !475)
!491 = !DILocation(line: 720, column: 3, scope: !475)
!492 = !DILocation(line: 721, column: 2, scope: !468)
!493 = !DILocation(line: 706, column: 46, scope: !464)
!494 = !DILocation(line: 706, column: 2, scope: !464)
!495 = distinct !{!495, !466, !496}
!496 = !DILocation(line: 721, column: 2, scope: !461)
!497 = !DILocation(line: 722, column: 1, scope: !402)
!498 = distinct !DISubprogram(name: "acpi_tb_select_address", scope: !3, file: !3, line: 229, type: !499, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!499 = !DISubroutineType(types: !500)
!500 = !{!8, !501, !13, !8}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!502 = !DILocalVariable(name: "register_name", arg: 1, scope: !498, file: !3, line: 229, type: !501)
!503 = !DILocation(line: 229, column: 30, scope: !498)
!504 = !DILocalVariable(name: "address32", arg: 2, scope: !498, file: !3, line: 229, type: !13)
!505 = !DILocation(line: 229, column: 49, scope: !498)
!506 = !DILocalVariable(name: "address64", arg: 3, scope: !498, file: !3, line: 229, type: !8)
!507 = !DILocation(line: 229, column: 64, scope: !498)
!508 = !DILocation(line: 232, column: 7, scope: !509)
!509 = distinct !DILexicalBlock(scope: !498, file: !3, line: 232, column: 6)
!510 = !DILocation(line: 232, column: 6, scope: !498)
!511 = !DILocation(line: 236, column: 16, scope: !512)
!512 = distinct !DILexicalBlock(scope: !509, file: !3, line: 232, column: 18)
!513 = !DILocation(line: 236, column: 11, scope: !512)
!514 = !DILocation(line: 236, column: 3, scope: !512)
!515 = !DILocation(line: 239, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !498, file: !3, line: 239, column: 6)
!517 = !DILocation(line: 239, column: 16, scope: !516)
!518 = !DILocation(line: 239, column: 20, scope: !516)
!519 = !DILocation(line: 239, column: 38, scope: !516)
!520 = !DILocation(line: 239, column: 33, scope: !516)
!521 = !DILocation(line: 239, column: 30, scope: !516)
!522 = !DILocation(line: 239, column: 6, scope: !498)
!523 = !DILocation(line: 243, column: 3, scope: !524)
!524 = distinct !DILexicalBlock(scope: !516, file: !3, line: 239, column: 50)
!525 = !DILocation(line: 253, column: 7, scope: !526)
!526 = distinct !DILexicalBlock(scope: !524, file: !3, line: 253, column: 7)
!527 = !DILocation(line: 253, column: 7, scope: !524)
!528 = !DILocation(line: 254, column: 17, scope: !529)
!529 = distinct !DILexicalBlock(scope: !526, file: !3, line: 253, column: 42)
!530 = !DILocation(line: 254, column: 12, scope: !529)
!531 = !DILocation(line: 254, column: 4, scope: !529)
!532 = !DILocation(line: 256, column: 2, scope: !524)
!533 = !DILocation(line: 260, column: 10, scope: !498)
!534 = !DILocation(line: 260, column: 2, scope: !498)
!535 = !DILocation(line: 261, column: 1, scope: !498)
!536 = distinct !DISubprogram(name: "acpi_tb_init_generic_address", scope: !3, file: !3, line: 158, type: !537, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !114, !21, !21, !8, !124, !21}
!539 = !DILocalVariable(name: "generic_address", arg: 1, scope: !536, file: !3, line: 158, type: !114)
!540 = !DILocation(line: 158, column: 59, scope: !536)
!541 = !DILocalVariable(name: "space_id", arg: 2, scope: !536, file: !3, line: 159, type: !21)
!542 = !DILocation(line: 159, column: 12, scope: !536)
!543 = !DILocalVariable(name: "byte_width", arg: 3, scope: !536, file: !3, line: 160, type: !21)
!544 = !DILocation(line: 160, column: 12, scope: !536)
!545 = !DILocalVariable(name: "address", arg: 4, scope: !536, file: !3, line: 161, type: !8)
!546 = !DILocation(line: 161, column: 13, scope: !536)
!547 = !DILocalVariable(name: "register_name", arg: 5, scope: !536, file: !3, line: 161, type: !124)
!548 = !DILocation(line: 161, column: 34, scope: !536)
!549 = !DILocalVariable(name: "flags", arg: 6, scope: !536, file: !3, line: 161, type: !21)
!550 = !DILocation(line: 161, column: 52, scope: !536)
!551 = !DILocalVariable(name: "bit_width", scope: !536, file: !3, line: 163, type: !21)
!552 = !DILocation(line: 163, column: 5, scope: !536)
!553 = !DILocation(line: 169, column: 19, scope: !536)
!554 = !DILocation(line: 169, column: 30, scope: !536)
!555 = !DILocation(line: 169, column: 14, scope: !536)
!556 = !DILocation(line: 169, column: 12, scope: !536)
!557 = !DILocation(line: 170, column: 6, scope: !558)
!558 = distinct !DILexicalBlock(scope: !536, file: !3, line: 170, column: 6)
!559 = !DILocation(line: 170, column: 17, scope: !558)
!560 = !DILocation(line: 170, column: 6, scope: !536)
!561 = !DILocation(line: 176, column: 9, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 176, column: 7)
!563 = distinct !DILexicalBlock(scope: !558, file: !3, line: 170, column: 23)
!564 = !DILocation(line: 176, column: 15, scope: !562)
!565 = !DILocation(line: 176, column: 7, scope: !563)
!566 = !DILocation(line: 177, column: 4, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !3, line: 176, column: 42)
!568 = !DILocation(line: 182, column: 3, scope: !567)
!569 = !DILocation(line: 184, column: 13, scope: !563)
!570 = !DILocation(line: 185, column: 2, scope: !563)
!571 = !DILocation(line: 191, column: 2, scope: !536)
!572 = !DILocation(line: 195, column: 30, scope: !536)
!573 = !DILocation(line: 195, column: 2, scope: !536)
!574 = !DILocation(line: 195, column: 19, scope: !536)
!575 = !DILocation(line: 195, column: 28, scope: !536)
!576 = !DILocation(line: 196, column: 31, scope: !536)
!577 = !DILocation(line: 196, column: 2, scope: !536)
!578 = !DILocation(line: 196, column: 19, scope: !536)
!579 = !DILocation(line: 196, column: 29, scope: !536)
!580 = !DILocation(line: 197, column: 2, scope: !536)
!581 = !DILocation(line: 197, column: 19, scope: !536)
!582 = !DILocation(line: 197, column: 30, scope: !536)
!583 = !DILocation(line: 198, column: 2, scope: !536)
!584 = !DILocation(line: 198, column: 19, scope: !536)
!585 = !DILocation(line: 198, column: 32, scope: !536)
!586 = !DILocation(line: 199, column: 1, scope: !536)
