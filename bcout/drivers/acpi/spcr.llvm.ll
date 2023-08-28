; ModuleID = '../bcout/drivers/acpi/spcr.llvm.bc'
source_filename = "drivers/acpi/spcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_spcr = type <{ %struct.acpi_table_header, i8, [3 x i8], %struct.acpi_generic_address, i8, i8, i32, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i32 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>

@acpi_parse_spcr.opts = internal global [64 x i8] zeroinitializer, align 16, !dbg !0
@acpi_disabled = external dso_local global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"SPCR\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\016ACPI: SPCR: SPCR table version %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"\013ACPI: SPCR: Unexpected SPCR Access Width.  Defaulting to byte size\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mmio\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"mmio16\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"mmio32\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"pl011\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@qdf2400_e44_present = dso_local global i8 0, align 1, !dbg !53
@.str.9 = private unnamed_addr constant [12 x i8] c"qdf2400_e44\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%s,%s,0x%llx\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"%s,%s,0x%llx,%d\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"\016ACPI: SPCR: console: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"QCOM  \00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"QDF2432 \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"QDF2400 \00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"APMC0D\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"HPE   \00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"XGENESPC\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"ProLiant\00", align 1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_parse_spcr(i1 zeroext %enable_earlycon, i1 zeroext %enable_console) #0 section ".init.text" !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %enable_earlycon.addr = alloca i8, align 1
  %enable_console.addr = alloca i8, align 1
  %table = alloca %struct.acpi_table_spcr*, align 8
  %status = alloca i32, align 4
  %uart = alloca i8*, align 8
  %iotype = alloca i8*, align 8
  %baud_rate = alloca i32, align 4
  %err = alloca i32, align 4
  %frombool = zext i1 %enable_earlycon to i8
  store i8 %frombool, i8* %enable_earlycon.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable_earlycon.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %frombool1 = zext i1 %enable_console to i8
  store i8 %frombool1, i8* %enable_console.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable_console.addr, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata %struct.acpi_table_spcr** %table, metadata !68, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %status, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %uart, metadata !114, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i8** %iotype, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %baud_rate, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %err, metadata !121, metadata !DIExpression()), !dbg !122
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !123
  %tobool = icmp ne i32 %0, 0, !dbg !123
  br i1 %tobool, label %if.then, label %if.end, !dbg !125

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !126
  br label %return, !dbg !126

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.acpi_table_spcr** %table to %struct.acpi_table_header**, !dbg !127
  %call = call i32 @acpi_get_table(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, %struct.acpi_table_header** %1) #5, !dbg !128
  store i32 %call, i32* %status, align 4, !dbg !129
  %2 = load i32, i32* %status, align 4, !dbg !130
  %tobool2 = icmp ne i32 %2, 0, !dbg !130
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !132

if.then3:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4, !dbg !133
  br label %return, !dbg !133

if.end4:                                          ; preds = %if.end
  %3 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %table, align 8, !dbg !134
  %header = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %3, i32 0, i32 0, !dbg !136
  %revision = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 2, !dbg !137
  %4 = load i8, i8* %revision, align 1, !dbg !137
  %conv = zext i8 %4 to i32, !dbg !134
  %cmp = icmp slt i32 %conv, 2, !dbg !138
  br i1 %cmp, label %if.then6, label %if.end11, !dbg !139

if.then6:                                         ; preds = %if.end4
  %5 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %table, align 8, !dbg !140
  %header7 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %5, i32 0, i32 0, !dbg !140
  %revision8 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header7, i32 0, i32 2, !dbg !140
  %6 = load i8, i8* %revision8, align 1, !dbg !140
  %conv9 = zext i8 %6 to i32, !dbg !140
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %conv9) #6, !dbg !140
  br label %if.end11, !dbg !140

if.end11:                                         ; preds = %if.then6, %if.end4
  %7 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %table, align 8, !dbg !141
  %serial_port = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %7, i32 0, i32 3, !dbg !143
  %space_id = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %serial_port, i32 0, i32 0, !dbg !144
  %8 = load i8, i8* %space_id, align 1, !dbg !144
  %conv12 = zext i8 %8 to i32, !dbg !141
  %cmp13 = icmp eq i32 %conv12, 0, !dbg !145
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !146

if.then15:                                        ; preds = %if.end11
  %9 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %table, align 8, !dbg !147
  %serial_port16 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %9, i32 0, i32 3, !dbg !147
  %access_width = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %serial_port16, i32 0, i32 3, !dbg !147
  %10 = load i8, i8* %access_width, align 1, !dbg !147
  %conv17 = zext i8 %10 to i32, !dbg !147
  %add = add i32 %conv17, 2, !dbg !147
  %shl = shl i32 1, %add, !dbg !147
  switch i32 %shl, label %sw.default [
    i32 8, label %sw.bb
    i32 16, label %sw.bb19
    i32 32, label %sw.bb20
  ], !dbg !149

sw.default:                                       ; preds = %if.then15
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !150
  br label %sw.bb, !dbg !150

sw.bb:                                            ; preds = %if.then15, %sw.default
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %iotype, align 8, !dbg !152
  br label %sw.epilog, !dbg !153

sw.bb19:                                          ; preds = %if.then15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %iotype, align 8, !dbg !154
  br label %sw.epilog, !dbg !155

sw.bb20:                                          ; preds = %if.then15
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %iotype, align 8, !dbg !156
  br label %sw.epilog, !dbg !157

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb19, %sw.bb
  br label %if.end21, !dbg !158

if.else:                                          ; preds = %if.end11
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %iotype, align 8, !dbg !159
  br label %if.end21

if.end21:                                         ; preds = %if.else, %sw.epilog
  %11 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %table, align 8, !dbg !160
  %interface_type = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %11, i32 0, i32 1, !dbg !161
  %12 = load i8, i8* %interface_type, align 1, !dbg !161
  %conv22 = zext i8 %12 to i32, !dbg !160
  switch i32 %conv22, label %sw.default26 [
    i32 13, label %sw.bb23
    i32 3, label %sw.bb24
    i32 14, label %sw.bb24
    i32 16, label %sw.bb24
    i32 0, label %sw.bb25
    i32 1, label %sw.bb25
  ], !dbg !162

sw.bb23:                                          ; preds = %if.end21
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %iotype, align 8, !dbg !163
  br label %sw.bb24, !dbg !165

sw.bb24:                                          ; preds = %if.end21, %if.end21, %if.end21, %sw.bb23
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %uart, align 8, !dbg !166
  br label %sw.epilog27, !dbg !167

sw.bb25:                                          ; preds = %if.end21, %if.end21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %uart, align 8, !dbg !168
  br label %sw.epilog27, !dbg !169

sw.default26:                                     ; preds = %if.end21
  store i32 -2, i32* %err, align 4, !dbg !170
  br label %done, !dbg !171

sw.epilog27:                                      ; preds = %sw.bb25, %sw.bb24
  %13 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %table, align 8, !dbg !172
  %baud_rate28 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %13, i32 0, i32 7, !dbg !173
  %14 = load i8, i8* %baud_rate28, align 1, !dbg !173
  %conv29 = zext i8 %14 to i32, !dbg !172
  switch i32 %conv29, label %sw.default35 [
    i32 0, label %sw.bb30
    i32 3, label %sw.bb31
    i32 4, label %sw.bb32
    i32 6, label %sw.bb33
    i32 7, label %sw.bb34
  ], !dbg !174

sw.bb30:                                          ; preds = %sw.epilog27
  store i32 0, i32* %baud_rate, align 4, !dbg !175
  br label %sw.epilog36, !dbg !177

sw.bb31:                                          ; preds = %sw.epilog27
  store i32 9600, i32* %baud_rate, align 4, !dbg !178
  br label %sw.epilog36, !dbg !179

sw.bb32:                                          ; preds = %sw.epilog27
  store i32 19200, i32* %baud_rate, align 4, !dbg !180
  br label %sw.epilog36, !dbg !181

sw.bb33:                                          ; preds = %sw.epilog27
  store i32 57600, i32* %baud_rate, align 4, !dbg !182
  br label %sw.epilog36, !dbg !183

sw.bb34:                                          ; preds = %sw.epilog27
  store i32 115200, i32* %baud_rate, align 4, !dbg !184
  br label %sw.epilog36, !dbg !185

sw.default35:                                     ; preds = %sw.epilog27
  store i32 -2, i32* %err, align 4, !dbg !186
  br label %done, !dbg !187

sw.epilog36:                                      ; preds = %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30
  %15 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %table, align 8, !dbg !188
  %header37 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %15, i32 0, i32 0, !dbg !190
  %call38 = call zeroext i1 @qdf2400_erratum_44_present(%struct.acpi_table_header* %header37) #5, !dbg !191
  br i1 %call38, label %if.then39, label %if.end43, !dbg !192

if.then39:                                        ; preds = %sw.epilog36
  store i8 1, i8* @qdf2400_e44_present, align 1, !dbg !193
  %16 = load i8, i8* %enable_earlycon.addr, align 1, !dbg !195
  %tobool40 = trunc i8 %16 to i1, !dbg !195
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !197

if.then41:                                        ; preds = %if.then39
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %uart, align 8, !dbg !198
  br label %if.end42, !dbg !199

if.end42:                                         ; preds = %if.then41, %if.then39
  br label %if.end43, !dbg !200

if.end43:                                         ; preds = %if.end42, %sw.epilog36
  %17 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %table, align 8, !dbg !201
  %call44 = call zeroext i1 @xgene_8250_erratum_present(%struct.acpi_table_spcr* %17) #5, !dbg !203
  br i1 %call44, label %if.then45, label %if.end46, !dbg !204

if.then45:                                        ; preds = %if.end43
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %iotype, align 8, !dbg !205
  store i32 0, i32* %baud_rate, align 4, !dbg !207
  br label %if.end46, !dbg !208

if.end46:                                         ; preds = %if.then45, %if.end43
  %18 = load i32, i32* %baud_rate, align 4, !dbg !209
  %tobool47 = icmp ne i32 %18, 0, !dbg !209
  br i1 %tobool47, label %if.else51, label %if.then48, !dbg !211

if.then48:                                        ; preds = %if.end46
  %19 = load i8*, i8** %uart, align 8, !dbg !212
  %20 = load i8*, i8** %iotype, align 8, !dbg !214
  %21 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %table, align 8, !dbg !215
  %serial_port49 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %21, i32 0, i32 3, !dbg !216
  %address = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %serial_port49, i32 0, i32 4, !dbg !217
  %22 = load i64, i64* %address, align 1, !dbg !217
  %call50 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @acpi_parse_spcr.opts, i64 0, i64 0), i64 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %19, i8* %20, i64 %22) #5, !dbg !218
  br label %if.end55, !dbg !219

if.else51:                                        ; preds = %if.end46
  %23 = load i8*, i8** %uart, align 8, !dbg !220
  %24 = load i8*, i8** %iotype, align 8, !dbg !222
  %25 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %table, align 8, !dbg !223
  %serial_port52 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %25, i32 0, i32 3, !dbg !224
  %address53 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %serial_port52, i32 0, i32 4, !dbg !225
  %26 = load i64, i64* %address53, align 1, !dbg !225
  %27 = load i32, i32* %baud_rate, align 4, !dbg !226
  %call54 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @acpi_parse_spcr.opts, i64 0, i64 0), i64 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %23, i8* %24, i64 %26, i32 %27) #5, !dbg !227
  br label %if.end55

if.end55:                                         ; preds = %if.else51, %if.then48
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @acpi_parse_spcr.opts, i64 0, i64 0)) #6, !dbg !228
  %28 = load i8, i8* %enable_earlycon.addr, align 1, !dbg !229
  %tobool57 = trunc i8 %28 to i1, !dbg !229
  br i1 %tobool57, label %if.then58, label %if.end60, !dbg !231

if.then58:                                        ; preds = %if.end55
  %call59 = call i32 @setup_earlycon(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @acpi_parse_spcr.opts, i64 0, i64 0)) #5, !dbg !232
  br label %if.end60, !dbg !232

if.end60:                                         ; preds = %if.then58, %if.end55
  %29 = load i8, i8* %enable_console.addr, align 1, !dbg !233
  %tobool61 = trunc i8 %29 to i1, !dbg !233
  br i1 %tobool61, label %if.then62, label %if.else66, !dbg !235

if.then62:                                        ; preds = %if.end60
  %30 = load i8*, i8** %uart, align 8, !dbg !236
  %31 = load i8*, i8** %uart, align 8, !dbg !237
  %call63 = call i64 @strlen(i8* %31) #5, !dbg !238
  %add.ptr = getelementptr i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @acpi_parse_spcr.opts, i64 0, i64 0), i64 %call63, !dbg !239
  %add.ptr64 = getelementptr i8, i8* %add.ptr, i64 1, !dbg !240
  %call65 = call i32 @add_preferred_console(i8* %30, i32 0, i8* %add.ptr64) #5, !dbg !241
  store i32 %call65, i32* %err, align 4, !dbg !242
  br label %if.end67, !dbg !243

if.else66:                                        ; preds = %if.end60
  store i32 0, i32* %err, align 4, !dbg !244
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then62
  br label %done, !dbg !233

done:                                             ; preds = %if.end67, %sw.default35, %sw.default26
  call void @llvm.dbg.label(metadata !245), !dbg !246
  %32 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %table, align 8, !dbg !247
  %33 = bitcast %struct.acpi_table_spcr* %32 to %struct.acpi_table_header*, !dbg !248
  call void @acpi_put_table(%struct.acpi_table_header* %33) #5, !dbg !249
  %34 = load i32, i32* %err, align 4, !dbg !250
  store i32 %34, i32* %retval, align 4, !dbg !251
  br label %return, !dbg !251

return:                                           ; preds = %done, %if.then3, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !252
  ret i32 %35, !dbg !252
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_table(i8*, i32, %struct.acpi_table_header**) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @qdf2400_erratum_44_present(%struct.acpi_table_header* %h) #4 !dbg !253 {
entry:
  %retval = alloca i1, align 1
  %h.addr = alloca %struct.acpi_table_header*, align 8
  store %struct.acpi_table_header* %h, %struct.acpi_table_header** %h.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %h.addr, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %h.addr, align 8, !dbg !258
  %oem_id = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %0, i32 0, i32 4, !dbg !260
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id, i64 0, i64 0, !dbg !258
  %call = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i64 6) #5, !dbg !261
  %tobool = icmp ne i32 %call, 0, !dbg !261
  br i1 %tobool, label %if.then, label %if.end, !dbg !262

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !263
  br label %return, !dbg !263

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_table_header*, %struct.acpi_table_header** %h.addr, align 8, !dbg !264
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %1, i32 0, i32 5, !dbg !266
  %arraydecay1 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id, i64 0, i64 0, !dbg !264
  %call2 = call i32 @memcmp(i8* %arraydecay1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i64 8) #5, !dbg !267
  %tobool3 = icmp ne i32 %call2, 0, !dbg !267
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !268

if.then4:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !269
  br label %return, !dbg !269

if.end5:                                          ; preds = %if.end
  %2 = load %struct.acpi_table_header*, %struct.acpi_table_header** %h.addr, align 8, !dbg !270
  %oem_table_id6 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %2, i32 0, i32 5, !dbg !272
  %arraydecay7 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id6, i64 0, i64 0, !dbg !270
  %call8 = call i32 @memcmp(i8* %arraydecay7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 8) #5, !dbg !273
  %tobool9 = icmp ne i32 %call8, 0, !dbg !273
  br i1 %tobool9, label %if.end11, label %land.lhs.true, !dbg !274

land.lhs.true:                                    ; preds = %if.end5
  %3 = load %struct.acpi_table_header*, %struct.acpi_table_header** %h.addr, align 8, !dbg !275
  %oem_revision = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %3, i32 0, i32 6, !dbg !276
  %4 = load i32, i32* %oem_revision, align 1, !dbg !276
  %cmp = icmp eq i32 %4, 1, !dbg !277
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !278

if.then10:                                        ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1, !dbg !279
  br label %return, !dbg !279

if.end11:                                         ; preds = %land.lhs.true, %if.end5
  store i1 false, i1* %retval, align 1, !dbg !280
  br label %return, !dbg !280

return:                                           ; preds = %if.end11, %if.then10, %if.then4, %if.then
  %5 = load i1, i1* %retval, align 1, !dbg !281
  ret i1 %5, !dbg !281
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @xgene_8250_erratum_present(%struct.acpi_table_spcr* %tb) #4 !dbg !282 {
entry:
  %retval = alloca i1, align 1
  %tb.addr = alloca %struct.acpi_table_spcr*, align 8
  %xgene_8250 = alloca i8, align 1
  store %struct.acpi_table_spcr* %tb, %struct.acpi_table_spcr** %tb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_spcr** %tb.addr, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i8* %xgene_8250, metadata !287, metadata !DIExpression()), !dbg !288
  store i8 0, i8* %xgene_8250, align 1, !dbg !288
  %0 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %tb.addr, align 8, !dbg !289
  %interface_type = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %0, i32 0, i32 1, !dbg !291
  %1 = load i8, i8* %interface_type, align 1, !dbg !291
  %conv = zext i8 %1 to i32, !dbg !289
  %cmp = icmp ne i32 %conv, 0, !dbg !292
  br i1 %cmp, label %if.then, label %if.end, !dbg !293

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !294
  br label %return, !dbg !294

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %tb.addr, align 8, !dbg !295
  %header = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %2, i32 0, i32 0, !dbg !297
  %oem_id = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 4, !dbg !298
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id, i64 0, i64 0, !dbg !295
  %call = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i64 6) #5, !dbg !299
  %tobool = icmp ne i32 %call, 0, !dbg !299
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !300

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %tb.addr, align 8, !dbg !301
  %header2 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %3, i32 0, i32 0, !dbg !302
  %oem_id3 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header2, i32 0, i32 4, !dbg !303
  %arraydecay4 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id3, i64 0, i64 0, !dbg !301
  %call5 = call i32 @memcmp(i8* %arraydecay4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 6) #5, !dbg !304
  %tobool6 = icmp ne i32 %call5, 0, !dbg !304
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !305

if.then7:                                         ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1, !dbg !306
  br label %return, !dbg !306

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %4 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %tb.addr, align 8, !dbg !307
  %header9 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %4, i32 0, i32 0, !dbg !309
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header9, i32 0, i32 5, !dbg !310
  %arraydecay10 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id, i64 0, i64 0, !dbg !307
  %call11 = call i32 @memcmp(i8* %arraydecay10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i64 8) #5, !dbg !311
  %tobool12 = icmp ne i32 %call11, 0, !dbg !311
  br i1 %tobool12, label %if.end18, label %land.lhs.true13, !dbg !312

land.lhs.true13:                                  ; preds = %if.end8
  %5 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %tb.addr, align 8, !dbg !313
  %header14 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %5, i32 0, i32 0, !dbg !314
  %oem_revision = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header14, i32 0, i32 6, !dbg !315
  %6 = load i32, i32* %oem_revision, align 1, !dbg !315
  %cmp15 = icmp eq i32 %6, 0, !dbg !316
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !317

if.then17:                                        ; preds = %land.lhs.true13
  store i8 1, i8* %xgene_8250, align 1, !dbg !318
  br label %if.end18, !dbg !319

if.end18:                                         ; preds = %if.then17, %land.lhs.true13, %if.end8
  %7 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %tb.addr, align 8, !dbg !320
  %header19 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %7, i32 0, i32 0, !dbg !322
  %oem_table_id20 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header19, i32 0, i32 5, !dbg !323
  %arraydecay21 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id20, i64 0, i64 0, !dbg !320
  %call22 = call i32 @memcmp(i8* %arraydecay21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i64 8) #5, !dbg !324
  %tobool23 = icmp ne i32 %call22, 0, !dbg !324
  br i1 %tobool23, label %if.end30, label %land.lhs.true24, !dbg !325

land.lhs.true24:                                  ; preds = %if.end18
  %8 = load %struct.acpi_table_spcr*, %struct.acpi_table_spcr** %tb.addr, align 8, !dbg !326
  %header25 = getelementptr inbounds %struct.acpi_table_spcr, %struct.acpi_table_spcr* %8, i32 0, i32 0, !dbg !327
  %oem_revision26 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header25, i32 0, i32 6, !dbg !328
  %9 = load i32, i32* %oem_revision26, align 1, !dbg !328
  %cmp27 = icmp eq i32 %9, 1, !dbg !329
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !330

if.then29:                                        ; preds = %land.lhs.true24
  store i8 1, i8* %xgene_8250, align 1, !dbg !331
  br label %if.end30, !dbg !332

if.end30:                                         ; preds = %if.then29, %land.lhs.true24, %if.end18
  %10 = load i8, i8* %xgene_8250, align 1, !dbg !333
  %tobool31 = trunc i8 %10 to i1, !dbg !333
  store i1 %tobool31, i1* %retval, align 1, !dbg !334
  br label %return, !dbg !334

return:                                           ; preds = %if.end30, %if.then7, %if.then
  %11 = load i1, i1* %retval, align 1, !dbg !335
  ret i1 %11, !dbg !335
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @setup_earlycon(i8* %buf) #4 !dbg !336 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !340, metadata !DIExpression()), !dbg !341
  ret i32 0, !dbg !342
}

; Function Attrs: noredzone
declare dso_local i32 @add_preferred_console(i8*, i32, i8*) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_put_table(%struct.acpi_table_header*) #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "opts", scope: !2, file: !3, line: 89, type: !56, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "acpi_parse_spcr", scope: !3, file: !3, line: 87, type: !4, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !55)
!3 = !DIFile(filename: "drivers/acpi/spcr.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !8, line: 30, baseType: !9)
!8 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !18, globals: !52, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 10, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!18 = !{!19, !50, !20}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !22, line: 68, size: 288, elements: !23)
!22 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !29, !34, !38, !39, !43, !47, !48, !49}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !21, file: !22, line: 69, baseType: !25, size: 32)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !27)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{!28}
!28 = !DISubrange(count: 4)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !21, file: !22, line: 70, baseType: !30, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !31, line: 21, baseType: !32)
!31 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !14)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!34 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !21, file: !22, line: 71, baseType: !35, size: 8, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !31, line: 17, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !37)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !21, file: !22, line: 72, baseType: !35, size: 8, offset: 72)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !21, file: !22, line: 73, baseType: !40, size: 48, offset: 80)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 48, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 6)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !21, file: !22, line: 74, baseType: !44, size: 64, offset: 128)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 8)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !21, file: !22, line: 75, baseType: !30, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !21, file: !22, line: 76, baseType: !25, size: 32, offset: 224)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !21, file: !22, line: 77, baseType: !30, size: 32, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !51, line: 805, baseType: !35)
!51 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!0, !53}
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "qdf2400_e44_present", scope: !10, file: !3, line: 22, type: !7, isLocal: false, isDefinition: true)
!55 = !{}
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 512, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 64)
!59 = !{i32 7, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"Code Model", i32 2}
!63 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!64 = !DILocalVariable(name: "enable_earlycon", arg: 1, scope: !2, file: !3, line: 87, type: !7)
!65 = !DILocation(line: 87, column: 33, scope: !2)
!66 = !DILocalVariable(name: "enable_console", arg: 2, scope: !2, file: !3, line: 87, type: !7)
!67 = !DILocation(line: 87, column: 55, scope: !2)
!68 = !DILocalVariable(name: "table", scope: !2, file: !3, line: 90, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_spcr", file: !71, line: 102, size: 640, elements: !72)
!71 = !DIFile(filename: "./include/acpi/actbl3.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !79, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !103, !104, !105, !106, !107, !108, !109}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !70, file: !71, line: 103, baseType: !21, size: 288)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "interface_type", scope: !70, file: !71, line: 104, baseType: !35, size: 8, offset: 288)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !70, file: !71, line: 105, baseType: !76, size: 24, offset: 296)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 24, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 3)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "serial_port", scope: !70, file: !71, line: 106, baseType: !80, size: 96, offset: 320)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !22, line: 90, size: 96, elements: !81)
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !80, file: !22, line: 91, baseType: !35, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !80, file: !22, line: 92, baseType: !35, size: 8, offset: 8)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !80, file: !22, line: 93, baseType: !35, size: 8, offset: 16)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !80, file: !22, line: 94, baseType: !35, size: 8, offset: 24)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !80, file: !22, line: 95, baseType: !87, size: 64, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !31, line: 23, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !33, line: 31, baseType: !89)
!89 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_type", scope: !70, file: !71, line: 107, baseType: !35, size: 8, offset: 416)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pc_interrupt", scope: !70, file: !71, line: 108, baseType: !35, size: 8, offset: 424)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !70, file: !71, line: 109, baseType: !30, size: 32, offset: 432)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "baud_rate", scope: !70, file: !71, line: 110, baseType: !35, size: 8, offset: 464)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !70, file: !71, line: 111, baseType: !35, size: 8, offset: 472)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !70, file: !71, line: 112, baseType: !35, size: 8, offset: 480)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !70, file: !71, line: 113, baseType: !35, size: 8, offset: 488)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "terminal_type", scope: !70, file: !71, line: 114, baseType: !35, size: 8, offset: 496)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !70, file: !71, line: 115, baseType: !35, size: 8, offset: 504)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pci_device_id", scope: !70, file: !71, line: 116, baseType: !100, size: 16, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !31, line: 19, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !102)
!102 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pci_vendor_id", scope: !70, file: !71, line: 117, baseType: !100, size: 16, offset: 528)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pci_bus", scope: !70, file: !71, line: 118, baseType: !35, size: 8, offset: 544)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pci_device", scope: !70, file: !71, line: 119, baseType: !35, size: 8, offset: 552)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pci_function", scope: !70, file: !71, line: 120, baseType: !35, size: 8, offset: 560)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "pci_flags", scope: !70, file: !71, line: 121, baseType: !30, size: 32, offset: 568)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pci_segment", scope: !70, file: !71, line: 122, baseType: !35, size: 8, offset: 600)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !70, file: !71, line: 123, baseType: !30, size: 32, offset: 608)
!110 = !DILocation(line: 90, column: 26, scope: !2)
!111 = !DILocalVariable(name: "status", scope: !2, file: !3, line: 91, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !51, line: 421, baseType: !30)
!113 = !DILocation(line: 91, column: 14, scope: !2)
!114 = !DILocalVariable(name: "uart", scope: !2, file: !3, line: 92, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!116 = !DILocation(line: 92, column: 8, scope: !2)
!117 = !DILocalVariable(name: "iotype", scope: !2, file: !3, line: 93, type: !115)
!118 = !DILocation(line: 93, column: 8, scope: !2)
!119 = !DILocalVariable(name: "baud_rate", scope: !2, file: !3, line: 94, type: !6)
!120 = !DILocation(line: 94, column: 6, scope: !2)
!121 = !DILocalVariable(name: "err", scope: !2, file: !3, line: 95, type: !6)
!122 = !DILocation(line: 95, column: 6, scope: !2)
!123 = !DILocation(line: 97, column: 6, scope: !124)
!124 = distinct !DILexicalBlock(scope: !2, file: !3, line: 97, column: 6)
!125 = !DILocation(line: 97, column: 6, scope: !2)
!126 = !DILocation(line: 98, column: 3, scope: !124)
!127 = !DILocation(line: 101, column: 5, scope: !2)
!128 = !DILocation(line: 100, column: 11, scope: !2)
!129 = !DILocation(line: 100, column: 9, scope: !2)
!130 = !DILocation(line: 103, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !2, file: !3, line: 103, column: 6)
!132 = !DILocation(line: 103, column: 6, scope: !2)
!133 = !DILocation(line: 104, column: 3, scope: !131)
!134 = !DILocation(line: 106, column: 6, scope: !135)
!135 = distinct !DILexicalBlock(scope: !2, file: !3, line: 106, column: 6)
!136 = !DILocation(line: 106, column: 13, scope: !135)
!137 = !DILocation(line: 106, column: 20, scope: !135)
!138 = !DILocation(line: 106, column: 29, scope: !135)
!139 = !DILocation(line: 106, column: 6, scope: !2)
!140 = !DILocation(line: 107, column: 3, scope: !135)
!141 = !DILocation(line: 109, column: 6, scope: !142)
!142 = distinct !DILexicalBlock(scope: !2, file: !3, line: 109, column: 6)
!143 = !DILocation(line: 109, column: 13, scope: !142)
!144 = !DILocation(line: 109, column: 25, scope: !142)
!145 = !DILocation(line: 109, column: 34, scope: !142)
!146 = !DILocation(line: 109, column: 6, scope: !2)
!147 = !DILocation(line: 110, column: 11, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !3, line: 109, column: 67)
!149 = !DILocation(line: 110, column: 3, scope: !148)
!150 = !DILocation(line: 113, column: 4, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !3, line: 111, column: 39)
!152 = !DILocation(line: 116, column: 11, scope: !151)
!153 = !DILocation(line: 117, column: 4, scope: !151)
!154 = !DILocation(line: 119, column: 11, scope: !151)
!155 = !DILocation(line: 120, column: 4, scope: !151)
!156 = !DILocation(line: 122, column: 11, scope: !151)
!157 = !DILocation(line: 123, column: 4, scope: !151)
!158 = !DILocation(line: 125, column: 2, scope: !148)
!159 = !DILocation(line: 126, column: 10, scope: !142)
!160 = !DILocation(line: 128, column: 10, scope: !2)
!161 = !DILocation(line: 128, column: 17, scope: !2)
!162 = !DILocation(line: 128, column: 2, scope: !2)
!163 = !DILocation(line: 130, column: 10, scope: !164)
!164 = distinct !DILexicalBlock(scope: !2, file: !3, line: 128, column: 33)
!165 = !DILocation(line: 130, column: 3, scope: !164)
!166 = !DILocation(line: 135, column: 8, scope: !164)
!167 = !DILocation(line: 136, column: 3, scope: !164)
!168 = !DILocation(line: 139, column: 8, scope: !164)
!169 = !DILocation(line: 140, column: 3, scope: !164)
!170 = !DILocation(line: 142, column: 7, scope: !164)
!171 = !DILocation(line: 143, column: 3, scope: !164)
!172 = !DILocation(line: 146, column: 10, scope: !2)
!173 = !DILocation(line: 146, column: 17, scope: !2)
!174 = !DILocation(line: 146, column: 2, scope: !2)
!175 = !DILocation(line: 152, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !2, file: !3, line: 146, column: 28)
!177 = !DILocation(line: 153, column: 3, scope: !176)
!178 = !DILocation(line: 155, column: 13, scope: !176)
!179 = !DILocation(line: 156, column: 3, scope: !176)
!180 = !DILocation(line: 158, column: 13, scope: !176)
!181 = !DILocation(line: 159, column: 3, scope: !176)
!182 = !DILocation(line: 161, column: 13, scope: !176)
!183 = !DILocation(line: 162, column: 3, scope: !176)
!184 = !DILocation(line: 164, column: 13, scope: !176)
!185 = !DILocation(line: 165, column: 3, scope: !176)
!186 = !DILocation(line: 167, column: 7, scope: !176)
!187 = !DILocation(line: 168, column: 3, scope: !176)
!188 = !DILocation(line: 189, column: 34, scope: !189)
!189 = distinct !DILexicalBlock(scope: !2, file: !3, line: 189, column: 6)
!190 = !DILocation(line: 189, column: 41, scope: !189)
!191 = !DILocation(line: 189, column: 6, scope: !189)
!192 = !DILocation(line: 189, column: 6, scope: !2)
!193 = !DILocation(line: 190, column: 23, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !3, line: 189, column: 50)
!195 = !DILocation(line: 191, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !194, file: !3, line: 191, column: 7)
!197 = !DILocation(line: 191, column: 7, scope: !194)
!198 = !DILocation(line: 192, column: 9, scope: !196)
!199 = !DILocation(line: 192, column: 4, scope: !196)
!200 = !DILocation(line: 193, column: 2, scope: !194)
!201 = !DILocation(line: 195, column: 33, scope: !202)
!202 = distinct !DILexicalBlock(scope: !2, file: !3, line: 195, column: 6)
!203 = !DILocation(line: 195, column: 6, scope: !202)
!204 = !DILocation(line: 195, column: 6, scope: !2)
!205 = !DILocation(line: 196, column: 10, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !3, line: 195, column: 41)
!207 = !DILocation(line: 202, column: 13, scope: !206)
!208 = !DILocation(line: 203, column: 2, scope: !206)
!209 = !DILocation(line: 205, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !2, file: !3, line: 205, column: 6)
!211 = !DILocation(line: 205, column: 6, scope: !2)
!212 = !DILocation(line: 206, column: 48, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !3, line: 205, column: 18)
!214 = !DILocation(line: 206, column: 54, scope: !213)
!215 = !DILocation(line: 207, column: 5, scope: !213)
!216 = !DILocation(line: 207, column: 12, scope: !213)
!217 = !DILocation(line: 207, column: 24, scope: !213)
!218 = !DILocation(line: 206, column: 3, scope: !213)
!219 = !DILocation(line: 208, column: 2, scope: !213)
!220 = !DILocation(line: 209, column: 51, scope: !221)
!221 = distinct !DILexicalBlock(scope: !210, file: !3, line: 208, column: 9)
!222 = !DILocation(line: 209, column: 57, scope: !221)
!223 = !DILocation(line: 210, column: 5, scope: !221)
!224 = !DILocation(line: 210, column: 12, scope: !221)
!225 = !DILocation(line: 210, column: 24, scope: !221)
!226 = !DILocation(line: 210, column: 33, scope: !221)
!227 = !DILocation(line: 209, column: 3, scope: !221)
!228 = !DILocation(line: 213, column: 2, scope: !2)
!229 = !DILocation(line: 215, column: 6, scope: !230)
!230 = distinct !DILexicalBlock(scope: !2, file: !3, line: 215, column: 6)
!231 = !DILocation(line: 215, column: 6, scope: !2)
!232 = !DILocation(line: 216, column: 3, scope: !230)
!233 = !DILocation(line: 218, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !2, file: !3, line: 218, column: 6)
!235 = !DILocation(line: 218, column: 6, scope: !2)
!236 = !DILocation(line: 219, column: 31, scope: !234)
!237 = !DILocation(line: 219, column: 54, scope: !234)
!238 = !DILocation(line: 219, column: 47, scope: !234)
!239 = !DILocation(line: 219, column: 45, scope: !234)
!240 = !DILocation(line: 219, column: 60, scope: !234)
!241 = !DILocation(line: 219, column: 9, scope: !234)
!242 = !DILocation(line: 219, column: 7, scope: !234)
!243 = !DILocation(line: 219, column: 3, scope: !234)
!244 = !DILocation(line: 221, column: 7, scope: !234)
!245 = !DILabel(scope: !2, name: "done", file: !3, line: 222)
!246 = !DILocation(line: 222, column: 1, scope: !2)
!247 = !DILocation(line: 223, column: 45, scope: !2)
!248 = !DILocation(line: 223, column: 17, scope: !2)
!249 = !DILocation(line: 223, column: 2, scope: !2)
!250 = !DILocation(line: 224, column: 9, scope: !2)
!251 = !DILocation(line: 224, column: 2, scope: !2)
!252 = !DILocation(line: 225, column: 1, scope: !2)
!253 = distinct !DISubprogram(name: "qdf2400_erratum_44_present", scope: !3, file: !3, line: 30, type: !254, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !55)
!254 = !DISubroutineType(types: !255)
!255 = !{!7, !20}
!256 = !DILocalVariable(name: "h", arg: 1, scope: !253, file: !3, line: 30, type: !20)
!257 = !DILocation(line: 30, column: 66, scope: !253)
!258 = !DILocation(line: 32, column: 13, scope: !259)
!259 = distinct !DILexicalBlock(scope: !253, file: !3, line: 32, column: 6)
!260 = !DILocation(line: 32, column: 16, scope: !259)
!261 = !DILocation(line: 32, column: 6, scope: !259)
!262 = !DILocation(line: 32, column: 6, scope: !253)
!263 = !DILocation(line: 33, column: 3, scope: !259)
!264 = !DILocation(line: 35, column: 14, scope: !265)
!265 = distinct !DILexicalBlock(scope: !253, file: !3, line: 35, column: 6)
!266 = !DILocation(line: 35, column: 17, scope: !265)
!267 = !DILocation(line: 35, column: 7, scope: !265)
!268 = !DILocation(line: 35, column: 6, scope: !253)
!269 = !DILocation(line: 36, column: 3, scope: !265)
!270 = !DILocation(line: 38, column: 14, scope: !271)
!271 = distinct !DILexicalBlock(scope: !253, file: !3, line: 38, column: 6)
!272 = !DILocation(line: 38, column: 17, scope: !271)
!273 = !DILocation(line: 38, column: 7, scope: !271)
!274 = !DILocation(line: 38, column: 67, scope: !271)
!275 = !DILocation(line: 39, column: 4, scope: !271)
!276 = !DILocation(line: 39, column: 7, scope: !271)
!277 = !DILocation(line: 39, column: 20, scope: !271)
!278 = !DILocation(line: 38, column: 6, scope: !253)
!279 = !DILocation(line: 40, column: 3, scope: !271)
!280 = !DILocation(line: 42, column: 2, scope: !253)
!281 = !DILocation(line: 43, column: 1, scope: !253)
!282 = distinct !DISubprogram(name: "xgene_8250_erratum_present", scope: !3, file: !3, line: 50, type: !283, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !55)
!283 = !DISubroutineType(types: !284)
!284 = !{!7, !69}
!285 = !DILocalVariable(name: "tb", arg: 1, scope: !282, file: !3, line: 50, type: !69)
!286 = !DILocation(line: 50, column: 64, scope: !282)
!287 = !DILocalVariable(name: "xgene_8250", scope: !282, file: !3, line: 52, type: !7)
!288 = !DILocation(line: 52, column: 7, scope: !282)
!289 = !DILocation(line: 54, column: 6, scope: !290)
!290 = distinct !DILexicalBlock(scope: !282, file: !3, line: 54, column: 6)
!291 = !DILocation(line: 54, column: 10, scope: !290)
!292 = !DILocation(line: 54, column: 25, scope: !290)
!293 = !DILocation(line: 54, column: 6, scope: !282)
!294 = !DILocation(line: 55, column: 3, scope: !290)
!295 = !DILocation(line: 57, column: 13, scope: !296)
!296 = distinct !DILexicalBlock(scope: !282, file: !3, line: 57, column: 6)
!297 = !DILocation(line: 57, column: 17, scope: !296)
!298 = !DILocation(line: 57, column: 24, scope: !296)
!299 = !DILocation(line: 57, column: 6, scope: !296)
!300 = !DILocation(line: 57, column: 60, scope: !296)
!301 = !DILocation(line: 58, column: 13, scope: !296)
!302 = !DILocation(line: 58, column: 17, scope: !296)
!303 = !DILocation(line: 58, column: 24, scope: !296)
!304 = !DILocation(line: 58, column: 6, scope: !296)
!305 = !DILocation(line: 57, column: 6, scope: !282)
!306 = !DILocation(line: 59, column: 3, scope: !296)
!307 = !DILocation(line: 61, column: 14, scope: !308)
!308 = distinct !DILexicalBlock(scope: !282, file: !3, line: 61, column: 6)
!309 = !DILocation(line: 61, column: 18, scope: !308)
!310 = !DILocation(line: 61, column: 25, scope: !308)
!311 = !DILocation(line: 61, column: 7, scope: !308)
!312 = !DILocation(line: 62, column: 30, scope: !308)
!313 = !DILocation(line: 62, column: 33, scope: !308)
!314 = !DILocation(line: 62, column: 37, scope: !308)
!315 = !DILocation(line: 62, column: 44, scope: !308)
!316 = !DILocation(line: 62, column: 57, scope: !308)
!317 = !DILocation(line: 61, column: 6, scope: !282)
!318 = !DILocation(line: 63, column: 14, scope: !308)
!319 = !DILocation(line: 63, column: 3, scope: !308)
!320 = !DILocation(line: 65, column: 14, scope: !321)
!321 = distinct !DILexicalBlock(scope: !282, file: !3, line: 65, column: 6)
!322 = !DILocation(line: 65, column: 18, scope: !321)
!323 = !DILocation(line: 65, column: 25, scope: !321)
!324 = !DILocation(line: 65, column: 7, scope: !321)
!325 = !DILocation(line: 66, column: 30, scope: !321)
!326 = !DILocation(line: 66, column: 33, scope: !321)
!327 = !DILocation(line: 66, column: 37, scope: !321)
!328 = !DILocation(line: 66, column: 44, scope: !321)
!329 = !DILocation(line: 66, column: 57, scope: !321)
!330 = !DILocation(line: 65, column: 6, scope: !282)
!331 = !DILocation(line: 67, column: 14, scope: !321)
!332 = !DILocation(line: 67, column: 3, scope: !321)
!333 = !DILocation(line: 69, column: 9, scope: !282)
!334 = !DILocation(line: 69, column: 2, scope: !282)
!335 = !DILocation(line: 70, column: 1, scope: !282)
!336 = distinct !DISubprogram(name: "setup_earlycon", scope: !337, file: !337, line: 394, type: !338, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !10, retainedNodes: !55)
!337 = !DIFile(filename: "./include/linux/serial_core.h", directory: "/home/lizy2001/genbc/linux")
!338 = !DISubroutineType(types: !339)
!339 = !{!6, !115}
!340 = !DILocalVariable(name: "buf", arg: 1, scope: !336, file: !337, line: 394, type: !115)
!341 = !DILocation(line: 394, column: 40, scope: !336)
!342 = !DILocation(line: 394, column: 47, scope: !336)
