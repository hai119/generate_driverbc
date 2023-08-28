; ModuleID = '../bcout/drivers/acpi/acpica/hwvalid.llvm.bc'
source_filename = "drivers/acpi/acpica/hwvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_port_info = type { i8*, i16, i16, i8 }

@acpi_gbl_truncate_io_addresses = external dso_local global i8, align 1
@_acpi_module_name = internal constant [8 x i8] c"hwvalid\00", align 1, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"Bad BitWidth parameter: %8.8X\00", align 1
@acpi_protected_ports = internal constant [17 x %struct.acpi_port_info] [%struct.acpi_port_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i16 0, i16 15, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i16 32, i16 33, i8 0 }, %struct.acpi_port_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i16 64, i16 67, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i16 72, i16 75, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i16 112, i16 113, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i16 116, i16 118, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i16 129, i16 131, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i16 135, i16 135, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i16 137, i16 139, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i16 143, i16 143, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i16 144, i16 145, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i16 147, i16 148, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i16 150, i16 151, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i16 160, i16 161, i8 0 }, %struct.acpi_port_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i16 192, i16 223, i8 2 }, %struct.acpi_port_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i16 1232, i16 1233, i8 0 }, %struct.acpi_port_info { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i16 3320, i16 3327, i8 2 }], align 16, !dbg !21
@.str.1 = private unnamed_addr constant [59 x i8] c"Illegal I/O port address/length above 64K: %8.8X%8.8X/0x%X\00", align 1
@acpi_gbl_osi_data = external dso_local global i8, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PIC0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PIT1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PIT2\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"RTC\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"CMOS\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"DMA1\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"DMA1L\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"DMA2\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"DMA2L\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ARBC\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"SETUP\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"POS\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"PIC1\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"IDMA\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"ELCR\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_read_port(i64 %address, i32* %value, i32 %width) #0 !dbg !48 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %value.addr = alloca i32*, align 8
  %width.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %one_byte = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !52, metadata !DIExpression()), !dbg !53
  store i32* %value, i32** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %value.addr, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %status, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %one_byte, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i8, i8* @acpi_gbl_truncate_io_addresses, align 1, !dbg !64
  %tobool = icmp ne i8 %0, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.end, !dbg !66

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %address.addr, align 8, !dbg !67
  %and = and i64 %1, 65535, !dbg !67
  store i64 %and, i64* %address.addr, align 8, !dbg !67
  br label %if.end, !dbg !69

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %address.addr, align 8, !dbg !70
  %3 = load i32, i32* %width.addr, align 4, !dbg !71
  %call = call i32 @acpi_hw_validate_io_request(i64 %2, i32 %3) #3, !dbg !72
  store i32 %call, i32* %status, align 4, !dbg !73
  %4 = load i32, i32* %status, align 4, !dbg !74
  %tobool1 = icmp ne i32 %4, 0, !dbg !74
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !76

if.then2:                                         ; preds = %if.end
  %5 = load i64, i64* %address.addr, align 8, !dbg !77
  %6 = load i32*, i32** %value.addr, align 8, !dbg !79
  %7 = load i32, i32* %width.addr, align 4, !dbg !80
  %call3 = call i32 @acpi_os_read_port(i64 %5, i32* %6, i32 %7) #3, !dbg !81
  store i32 %call3, i32* %status, align 4, !dbg !82
  %8 = load i32, i32* %status, align 4, !dbg !83
  store i32 %8, i32* %retval, align 4, !dbg !84
  br label %return, !dbg !84

if.end4:                                          ; preds = %if.end
  %9 = load i32, i32* %status, align 4, !dbg !85
  %cmp = icmp ne i32 %9, 12320, !dbg !87
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !88

if.then5:                                         ; preds = %if.end4
  %10 = load i32, i32* %status, align 4, !dbg !89
  store i32 %10, i32* %retval, align 4, !dbg !91
  br label %return, !dbg !91

if.end6:                                          ; preds = %if.end4
  store i32 0, i32* %i, align 4, !dbg !92
  %11 = load i32*, i32** %value.addr, align 8, !dbg !94
  store i32 0, i32* %11, align 4, !dbg !95
  br label %for.cond, !dbg !96

for.cond:                                         ; preds = %for.inc, %if.end6
  %12 = load i32, i32* %i, align 4, !dbg !97
  %13 = load i32, i32* %width.addr, align 4, !dbg !99
  %cmp7 = icmp ult i32 %12, %13, !dbg !100
  br i1 %cmp7, label %for.body, label %for.end, !dbg !101

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %address.addr, align 8, !dbg !102
  %call8 = call i32 @acpi_hw_validate_io_request(i64 %14, i32 8) #3, !dbg !105
  %cmp9 = icmp eq i32 %call8, 0, !dbg !106
  br i1 %cmp9, label %if.then10, label %if.end15, !dbg !107

if.then10:                                        ; preds = %for.body
  %15 = load i64, i64* %address.addr, align 8, !dbg !108
  %call11 = call i32 @acpi_os_read_port(i64 %15, i32* %one_byte, i32 8) #3, !dbg !110
  store i32 %call11, i32* %status, align 4, !dbg !111
  %16 = load i32, i32* %status, align 4, !dbg !112
  %tobool12 = icmp ne i32 %16, 0, !dbg !112
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !114

if.then13:                                        ; preds = %if.then10
  %17 = load i32, i32* %status, align 4, !dbg !115
  store i32 %17, i32* %retval, align 4, !dbg !117
  br label %return, !dbg !117

if.end14:                                         ; preds = %if.then10
  %18 = load i32, i32* %one_byte, align 4, !dbg !118
  %19 = load i32, i32* %i, align 4, !dbg !119
  %shl = shl i32 %18, %19, !dbg !120
  %20 = load i32*, i32** %value.addr, align 8, !dbg !121
  %21 = load i32, i32* %20, align 4, !dbg !122
  %or = or i32 %21, %shl, !dbg !122
  store i32 %or, i32* %20, align 4, !dbg !122
  br label %if.end15, !dbg !123

if.end15:                                         ; preds = %if.end14, %for.body
  %22 = load i64, i64* %address.addr, align 8, !dbg !124
  %inc = add i64 %22, 1, !dbg !124
  store i64 %inc, i64* %address.addr, align 8, !dbg !124
  br label %for.inc, !dbg !125

for.inc:                                          ; preds = %if.end15
  %23 = load i32, i32* %i, align 4, !dbg !126
  %add = add i32 %23, 8, !dbg !126
  store i32 %add, i32* %i, align 4, !dbg !126
  br label %for.cond, !dbg !127, !llvm.loop !128

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !130
  br label %return, !dbg !130

return:                                           ; preds = %for.end, %if.then13, %if.then5, %if.then2
  %24 = load i32, i32* %retval, align 4, !dbg !131
  ret i32 %24, !dbg !131
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_hw_validate_io_request(i64 %address, i32 %bit_width) #0 !dbg !132 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %byte_width = alloca i32, align 4
  %last_address = alloca i64, align 8
  %port_info = alloca %struct.acpi_port_info*, align 8
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !135, metadata !DIExpression()), !dbg !136
  store i32 %bit_width, i32* %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bit_width.addr, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %i, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %byte_width, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i64* %last_address, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata %struct.acpi_port_info** %port_info, metadata !145, metadata !DIExpression()), !dbg !147
  %0 = load i32, i32* %bit_width.addr, align 4, !dbg !148
  %cmp = icmp ne i32 %0, 8, !dbg !150
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !151

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %bit_width.addr, align 4, !dbg !152
  %cmp1 = icmp ne i32 %1, 16, !dbg !153
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !154

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %bit_width.addr, align 4, !dbg !155
  %cmp3 = icmp ne i32 %2, 32, !dbg !156
  br i1 %cmp3, label %if.then, label %if.end, !dbg !157

if.then:                                          ; preds = %land.lhs.true2
  %3 = load i32, i32* %bit_width.addr, align 4, !dbg !158
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %3) #3, !dbg !158
  store i32 4097, i32* %retval, align 4, !dbg !160
  br label %return, !dbg !160

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store %struct.acpi_port_info* getelementptr inbounds ([17 x %struct.acpi_port_info], [17 x %struct.acpi_port_info]* @acpi_protected_ports, i64 0, i64 0), %struct.acpi_port_info** %port_info, align 8, !dbg !161
  %4 = load i32, i32* %bit_width.addr, align 4, !dbg !162
  %shr = lshr i32 %4, 3, !dbg !162
  store i32 %shr, i32* %byte_width, align 4, !dbg !163
  %5 = load i64, i64* %address.addr, align 8, !dbg !164
  %6 = load i32, i32* %byte_width, align 4, !dbg !165
  %conv = zext i32 %6 to i64, !dbg !165
  %add = add i64 %5, %conv, !dbg !166
  %sub = sub i64 %add, 1, !dbg !167
  store i64 %sub, i64* %last_address, align 8, !dbg !168
  %7 = load i64, i64* %last_address, align 8, !dbg !169
  %cmp4 = icmp ugt i64 %7, 65535, !dbg !171
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !172

if.then6:                                         ; preds = %if.end
  %8 = load i64, i64* %address.addr, align 8, !dbg !173
  %shr7 = lshr i64 %8, 32, !dbg !173
  %conv8 = trunc i64 %shr7 to i32, !dbg !173
  %9 = load i64, i64* %address.addr, align 8, !dbg !173
  %conv9 = trunc i64 %9 to i32, !dbg !173
  %10 = load i32, i32* %byte_width, align 4, !dbg !173
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 119, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %conv8, i32 %conv9, i32 %10) #3, !dbg !173
  store i32 16, i32* %retval, align 4, !dbg !175
  br label %return, !dbg !175

if.end10:                                         ; preds = %if.end
  %11 = load i64, i64* %address.addr, align 8, !dbg !176
  %12 = load i16, i16* getelementptr inbounds ([17 x %struct.acpi_port_info], [17 x %struct.acpi_port_info]* @acpi_protected_ports, i64 0, i64 16, i32 2), align 2, !dbg !178
  %conv11 = zext i16 %12 to i64, !dbg !179
  %cmp12 = icmp ugt i64 %11, %conv11, !dbg !180
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !181

if.then14:                                        ; preds = %if.end10
  store i32 0, i32* %retval, align 4, !dbg !182
  br label %return, !dbg !182

if.end15:                                         ; preds = %if.end10
  store i32 0, i32* %i, align 4, !dbg !184
  br label %for.cond, !dbg !186

for.cond:                                         ; preds = %for.inc, %if.end15
  %13 = load i32, i32* %i, align 4, !dbg !187
  %conv16 = zext i32 %13 to i64, !dbg !187
  %cmp17 = icmp ult i64 %conv16, 17, !dbg !189
  br i1 %cmp17, label %for.body, label %for.end, !dbg !190

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %address.addr, align 8, !dbg !191
  %15 = load %struct.acpi_port_info*, %struct.acpi_port_info** %port_info, align 8, !dbg !194
  %end = getelementptr inbounds %struct.acpi_port_info, %struct.acpi_port_info* %15, i32 0, i32 2, !dbg !195
  %16 = load i16, i16* %end, align 2, !dbg !195
  %conv19 = zext i16 %16 to i64, !dbg !194
  %cmp20 = icmp ule i64 %14, %conv19, !dbg !196
  br i1 %cmp20, label %land.lhs.true22, label %if.end33, !dbg !197

land.lhs.true22:                                  ; preds = %for.body
  %17 = load i64, i64* %last_address, align 8, !dbg !198
  %18 = load %struct.acpi_port_info*, %struct.acpi_port_info** %port_info, align 8, !dbg !199
  %start = getelementptr inbounds %struct.acpi_port_info, %struct.acpi_port_info* %18, i32 0, i32 1, !dbg !200
  %19 = load i16, i16* %start, align 8, !dbg !200
  %conv23 = zext i16 %19 to i64, !dbg !199
  %cmp24 = icmp uge i64 %17, %conv23, !dbg !201
  br i1 %cmp24, label %if.then26, label %if.end33, !dbg !202

if.then26:                                        ; preds = %land.lhs.true22
  %20 = load i8, i8* @acpi_gbl_osi_data, align 1, !dbg !203
  %conv27 = zext i8 %20 to i32, !dbg !203
  %21 = load %struct.acpi_port_info*, %struct.acpi_port_info** %port_info, align 8, !dbg !206
  %osi_dependency = getelementptr inbounds %struct.acpi_port_info, %struct.acpi_port_info* %21, i32 0, i32 3, !dbg !207
  %22 = load i8, i8* %osi_dependency, align 4, !dbg !207
  %conv28 = zext i8 %22 to i32, !dbg !206
  %cmp29 = icmp sge i32 %conv27, %conv28, !dbg !208
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !209

if.then31:                                        ; preds = %if.then26
  store i32 12320, i32* %retval, align 4, !dbg !210
  br label %return, !dbg !210

if.end32:                                         ; preds = %if.then26
  br label %if.end33, !dbg !212

if.end33:                                         ; preds = %if.end32, %land.lhs.true22, %for.body
  %23 = load i64, i64* %last_address, align 8, !dbg !213
  %24 = load %struct.acpi_port_info*, %struct.acpi_port_info** %port_info, align 8, !dbg !215
  %end34 = getelementptr inbounds %struct.acpi_port_info, %struct.acpi_port_info* %24, i32 0, i32 2, !dbg !216
  %25 = load i16, i16* %end34, align 2, !dbg !216
  %conv35 = zext i16 %25 to i64, !dbg !215
  %cmp36 = icmp ule i64 %23, %conv35, !dbg !217
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !218

if.then38:                                        ; preds = %if.end33
  br label %for.end, !dbg !219

if.end39:                                         ; preds = %if.end33
  br label %for.inc, !dbg !221

for.inc:                                          ; preds = %if.end39
  %26 = load i32, i32* %i, align 4, !dbg !222
  %inc = add i32 %26, 1, !dbg !222
  store i32 %inc, i32* %i, align 4, !dbg !222
  %27 = load %struct.acpi_port_info*, %struct.acpi_port_info** %port_info, align 8, !dbg !223
  %incdec.ptr = getelementptr %struct.acpi_port_info, %struct.acpi_port_info* %27, i32 1, !dbg !223
  store %struct.acpi_port_info* %incdec.ptr, %struct.acpi_port_info** %port_info, align 8, !dbg !223
  br label %for.cond, !dbg !224, !llvm.loop !225

for.end:                                          ; preds = %if.then38, %for.cond
  store i32 0, i32* %retval, align 4, !dbg !227
  br label %return, !dbg !227

return:                                           ; preds = %for.end, %if.then31, %if.then14, %if.then6, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !228
  ret i32 %28, !dbg !228
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_read_port(i64, i32*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_write_port(i64 %address, i32 %value, i32 %width) #0 !dbg !229 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %value.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !232, metadata !DIExpression()), !dbg !233
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !234, metadata !DIExpression()), !dbg !235
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32* %status, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %i, metadata !240, metadata !DIExpression()), !dbg !241
  %0 = load i8, i8* @acpi_gbl_truncate_io_addresses, align 1, !dbg !242
  %tobool = icmp ne i8 %0, 0, !dbg !242
  br i1 %tobool, label %if.then, label %if.end, !dbg !244

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %address.addr, align 8, !dbg !245
  %and = and i64 %1, 65535, !dbg !245
  store i64 %and, i64* %address.addr, align 8, !dbg !245
  br label %if.end, !dbg !247

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %address.addr, align 8, !dbg !248
  %3 = load i32, i32* %width.addr, align 4, !dbg !249
  %call = call i32 @acpi_hw_validate_io_request(i64 %2, i32 %3) #3, !dbg !250
  store i32 %call, i32* %status, align 4, !dbg !251
  %4 = load i32, i32* %status, align 4, !dbg !252
  %tobool1 = icmp ne i32 %4, 0, !dbg !252
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !254

if.then2:                                         ; preds = %if.end
  %5 = load i64, i64* %address.addr, align 8, !dbg !255
  %6 = load i32, i32* %value.addr, align 4, !dbg !257
  %7 = load i32, i32* %width.addr, align 4, !dbg !258
  %call3 = call i32 @acpi_os_write_port(i64 %5, i32 %6, i32 %7) #3, !dbg !259
  store i32 %call3, i32* %status, align 4, !dbg !260
  %8 = load i32, i32* %status, align 4, !dbg !261
  store i32 %8, i32* %retval, align 4, !dbg !262
  br label %return, !dbg !262

if.end4:                                          ; preds = %if.end
  %9 = load i32, i32* %status, align 4, !dbg !263
  %cmp = icmp ne i32 %9, 12320, !dbg !265
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !266

if.then5:                                         ; preds = %if.end4
  %10 = load i32, i32* %status, align 4, !dbg !267
  store i32 %10, i32* %retval, align 4, !dbg !269
  br label %return, !dbg !269

if.end6:                                          ; preds = %if.end4
  store i32 0, i32* %i, align 4, !dbg !270
  br label %for.cond, !dbg !272

for.cond:                                         ; preds = %for.inc, %if.end6
  %11 = load i32, i32* %i, align 4, !dbg !273
  %12 = load i32, i32* %width.addr, align 4, !dbg !275
  %cmp7 = icmp ult i32 %11, %12, !dbg !276
  br i1 %cmp7, label %for.body, label %for.end, !dbg !277

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %address.addr, align 8, !dbg !278
  %call8 = call i32 @acpi_hw_validate_io_request(i64 %13, i32 8) #3, !dbg !281
  %cmp9 = icmp eq i32 %call8, 0, !dbg !282
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !283

if.then10:                                        ; preds = %for.body
  %14 = load i64, i64* %address.addr, align 8, !dbg !284
  %15 = load i32, i32* %value.addr, align 4, !dbg !286
  %16 = load i32, i32* %i, align 4, !dbg !287
  %shr = lshr i32 %15, %16, !dbg !288
  %and11 = and i32 %shr, 255, !dbg !289
  %call12 = call i32 @acpi_os_write_port(i64 %14, i32 %and11, i32 8) #3, !dbg !290
  store i32 %call12, i32* %status, align 4, !dbg !291
  %17 = load i32, i32* %status, align 4, !dbg !292
  %tobool13 = icmp ne i32 %17, 0, !dbg !292
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !294

if.then14:                                        ; preds = %if.then10
  %18 = load i32, i32* %status, align 4, !dbg !295
  store i32 %18, i32* %retval, align 4, !dbg !297
  br label %return, !dbg !297

if.end15:                                         ; preds = %if.then10
  br label %if.end16, !dbg !298

if.end16:                                         ; preds = %if.end15, %for.body
  %19 = load i64, i64* %address.addr, align 8, !dbg !299
  %inc = add i64 %19, 1, !dbg !299
  store i64 %inc, i64* %address.addr, align 8, !dbg !299
  br label %for.inc, !dbg !300

for.inc:                                          ; preds = %if.end16
  %20 = load i32, i32* %i, align 4, !dbg !301
  %add = add i32 %20, 8, !dbg !301
  store i32 %add, i32* %i, align 4, !dbg !301
  br label %for.cond, !dbg !302, !llvm.loop !303

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !305
  br label %return, !dbg !305

return:                                           ; preds = %for.end, %if.then14, %if.then5, %if.then2
  %21 = load i32, i32* %retval, align 4, !dbg !306
  ret i32 %21, !dbg !306
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_write_port(i64, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_validate_io_block(i64 %address, i32 %bit_width, i32 %count) #0 !dbg !307 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !310, metadata !DIExpression()), !dbg !311
  store i32 %bit_width, i32* %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bit_width.addr, metadata !312, metadata !DIExpression()), !dbg !313
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !314, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata i32* %status, metadata !316, metadata !DIExpression()), !dbg !317
  br label %while.cond, !dbg !318

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %count.addr, align 4, !dbg !319
  %dec = add i32 %0, -1, !dbg !319
  store i32 %dec, i32* %count.addr, align 4, !dbg !319
  %tobool = icmp ne i32 %0, 0, !dbg !318
  br i1 %tobool, label %while.body, label %while.end, !dbg !318

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %address.addr, align 8, !dbg !320
  %2 = load i32, i32* %bit_width.addr, align 4, !dbg !322
  %call = call i32 @acpi_hw_validate_io_request(i64 %1, i32 %2) #3, !dbg !323
  store i32 %call, i32* %status, align 4, !dbg !324
  %3 = load i32, i32* %status, align 4, !dbg !325
  %tobool1 = icmp ne i32 %3, 0, !dbg !325
  br i1 %tobool1, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %status, align 4, !dbg !328
  store i32 %4, i32* %retval, align 4, !dbg !328
  br label %return, !dbg !328

if.end:                                           ; preds = %while.body
  %5 = load i32, i32* %bit_width.addr, align 4, !dbg !329
  %shr = lshr i32 %5, 3, !dbg !329
  %conv = zext i32 %shr to i64, !dbg !329
  %6 = load i64, i64* %address.addr, align 8, !dbg !330
  %add = add i64 %6, %conv, !dbg !330
  store i64 %add, i64* %address.addr, align 8, !dbg !330
  br label %while.cond, !dbg !318, !llvm.loop !331

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !333
  br label %return, !dbg !333

return:                                           ; preds = %while.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !334
  ret i32 %7, !dbg !334
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !39, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !20, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwvalid.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !11, !16, !13, !17}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !12, line: 421, baseType: !13)
!12 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !15)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !12, line: 128, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !19)
!19 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!0, !21}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "acpi_protected_ports", scope: !2, file: !3, line: 51, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2176, elements: !37)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_port_info", file: !26, line: 1058, size: 128, elements: !27)
!26 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !31, !32, !33}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !26, line: 1059, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !25, file: !26, line: 1060, baseType: !6, size: 16, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !25, file: !26, line: 1061, baseType: !6, size: 16, offset: 80)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "osi_dependency", scope: !25, file: !26, line: 1062, baseType: !34, size: 8, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !{!38}
!38 = !DISubrange(count: 17)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !41)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!41 = !{!42}
!42 = !DISubrange(count: 8)
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"Code Model", i32 2}
!47 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!48 = distinct !DISubprogram(name: "acpi_hw_read_port", scope: !3, file: !3, line: 186, type: !49, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!49 = !DISubroutineType(types: !50)
!50 = !{!11, !16, !51, !13}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!52 = !DILocalVariable(name: "address", arg: 1, scope: !48, file: !3, line: 186, type: !16)
!53 = !DILocation(line: 186, column: 47, scope: !48)
!54 = !DILocalVariable(name: "value", arg: 2, scope: !48, file: !3, line: 186, type: !51)
!55 = !DILocation(line: 186, column: 61, scope: !48)
!56 = !DILocalVariable(name: "width", arg: 3, scope: !48, file: !3, line: 186, type: !13)
!57 = !DILocation(line: 186, column: 72, scope: !48)
!58 = !DILocalVariable(name: "status", scope: !48, file: !3, line: 188, type: !11)
!59 = !DILocation(line: 188, column: 14, scope: !48)
!60 = !DILocalVariable(name: "one_byte", scope: !48, file: !3, line: 189, type: !13)
!61 = !DILocation(line: 189, column: 6, scope: !48)
!62 = !DILocalVariable(name: "i", scope: !48, file: !3, line: 190, type: !13)
!63 = !DILocation(line: 190, column: 6, scope: !48)
!64 = !DILocation(line: 194, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !48, file: !3, line: 194, column: 6)
!66 = !DILocation(line: 194, column: 6, scope: !48)
!67 = !DILocation(line: 195, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !3, line: 194, column: 38)
!69 = !DILocation(line: 196, column: 2, scope: !68)
!70 = !DILocation(line: 200, column: 39, scope: !48)
!71 = !DILocation(line: 200, column: 48, scope: !48)
!72 = !DILocation(line: 200, column: 11, scope: !48)
!73 = !DILocation(line: 200, column: 9, scope: !48)
!74 = !DILocation(line: 201, column: 6, scope: !75)
!75 = distinct !DILexicalBlock(scope: !48, file: !3, line: 201, column: 6)
!76 = !DILocation(line: 201, column: 6, scope: !48)
!77 = !DILocation(line: 202, column: 30, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !3, line: 201, column: 28)
!79 = !DILocation(line: 202, column: 39, scope: !78)
!80 = !DILocation(line: 202, column: 46, scope: !78)
!81 = !DILocation(line: 202, column: 12, scope: !78)
!82 = !DILocation(line: 202, column: 10, scope: !78)
!83 = !DILocation(line: 203, column: 11, scope: !78)
!84 = !DILocation(line: 203, column: 3, scope: !78)
!85 = !DILocation(line: 206, column: 6, scope: !86)
!86 = distinct !DILexicalBlock(scope: !48, file: !3, line: 206, column: 6)
!87 = !DILocation(line: 206, column: 13, scope: !86)
!88 = !DILocation(line: 206, column: 6, scope: !48)
!89 = !DILocation(line: 207, column: 11, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !3, line: 206, column: 40)
!91 = !DILocation(line: 207, column: 3, scope: !90)
!92 = !DILocation(line: 215, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !48, file: !3, line: 215, column: 2)
!94 = !DILocation(line: 215, column: 15, scope: !93)
!95 = !DILocation(line: 215, column: 21, scope: !93)
!96 = !DILocation(line: 215, column: 7, scope: !93)
!97 = !DILocation(line: 215, column: 26, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !3, line: 215, column: 2)
!99 = !DILocation(line: 215, column: 30, scope: !98)
!100 = !DILocation(line: 215, column: 28, scope: !98)
!101 = !DILocation(line: 215, column: 2, scope: !93)
!102 = !DILocation(line: 219, column: 35, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !3, line: 219, column: 7)
!104 = distinct !DILexicalBlock(scope: !98, file: !3, line: 215, column: 45)
!105 = !DILocation(line: 219, column: 7, scope: !103)
!106 = !DILocation(line: 219, column: 47, scope: !103)
!107 = !DILocation(line: 219, column: 7, scope: !104)
!108 = !DILocation(line: 220, column: 31, scope: !109)
!109 = distinct !DILexicalBlock(scope: !103, file: !3, line: 219, column: 57)
!110 = !DILocation(line: 220, column: 13, scope: !109)
!111 = !DILocation(line: 220, column: 11, scope: !109)
!112 = !DILocation(line: 221, column: 8, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !3, line: 221, column: 8)
!114 = !DILocation(line: 221, column: 8, scope: !109)
!115 = !DILocation(line: 222, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !3, line: 221, column: 30)
!117 = !DILocation(line: 222, column: 5, scope: !116)
!118 = !DILocation(line: 225, column: 15, scope: !109)
!119 = !DILocation(line: 225, column: 27, scope: !109)
!120 = !DILocation(line: 225, column: 24, scope: !109)
!121 = !DILocation(line: 225, column: 5, scope: !109)
!122 = !DILocation(line: 225, column: 11, scope: !109)
!123 = !DILocation(line: 226, column: 3, scope: !109)
!124 = !DILocation(line: 228, column: 10, scope: !104)
!125 = !DILocation(line: 229, column: 2, scope: !104)
!126 = !DILocation(line: 215, column: 39, scope: !98)
!127 = !DILocation(line: 215, column: 2, scope: !98)
!128 = distinct !{!128, !101, !129}
!129 = !DILocation(line: 229, column: 2, scope: !93)
!130 = !DILocation(line: 231, column: 2, scope: !48)
!131 = !DILocation(line: 232, column: 1, scope: !48)
!132 = distinct !DISubprogram(name: "acpi_hw_validate_io_request", scope: !3, file: !3, line: 90, type: !133, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!133 = !DISubroutineType(types: !134)
!134 = !{!11, !16, !13}
!135 = !DILocalVariable(name: "address", arg: 1, scope: !132, file: !3, line: 90, type: !16)
!136 = !DILocation(line: 90, column: 45, scope: !132)
!137 = !DILocalVariable(name: "bit_width", arg: 2, scope: !132, file: !3, line: 90, type: !13)
!138 = !DILocation(line: 90, column: 58, scope: !132)
!139 = !DILocalVariable(name: "i", scope: !132, file: !3, line: 92, type: !13)
!140 = !DILocation(line: 92, column: 6, scope: !132)
!141 = !DILocalVariable(name: "byte_width", scope: !132, file: !3, line: 93, type: !13)
!142 = !DILocation(line: 93, column: 6, scope: !132)
!143 = !DILocalVariable(name: "last_address", scope: !132, file: !3, line: 94, type: !16)
!144 = !DILocation(line: 94, column: 18, scope: !132)
!145 = !DILocalVariable(name: "port_info", scope: !132, file: !3, line: 95, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!147 = !DILocation(line: 95, column: 31, scope: !132)
!148 = !DILocation(line: 101, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !132, file: !3, line: 101, column: 6)
!150 = !DILocation(line: 101, column: 17, scope: !149)
!151 = !DILocation(line: 101, column: 23, scope: !149)
!152 = !DILocation(line: 101, column: 27, scope: !149)
!153 = !DILocation(line: 101, column: 37, scope: !149)
!154 = !DILocation(line: 101, column: 44, scope: !149)
!155 = !DILocation(line: 101, column: 48, scope: !149)
!156 = !DILocation(line: 101, column: 58, scope: !149)
!157 = !DILocation(line: 101, column: 6, scope: !132)
!158 = !DILocation(line: 102, column: 3, scope: !159)
!159 = distinct !DILexicalBlock(scope: !149, file: !3, line: 101, column: 66)
!160 = !DILocation(line: 104, column: 3, scope: !159)
!161 = !DILocation(line: 107, column: 12, scope: !132)
!162 = !DILocation(line: 108, column: 15, scope: !132)
!163 = !DILocation(line: 108, column: 13, scope: !132)
!164 = !DILocation(line: 109, column: 17, scope: !132)
!165 = !DILocation(line: 109, column: 27, scope: !132)
!166 = !DILocation(line: 109, column: 25, scope: !132)
!167 = !DILocation(line: 109, column: 38, scope: !132)
!168 = !DILocation(line: 109, column: 15, scope: !132)
!169 = !DILocation(line: 118, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !132, file: !3, line: 118, column: 6)
!171 = !DILocation(line: 118, column: 19, scope: !170)
!172 = !DILocation(line: 118, column: 6, scope: !132)
!173 = !DILocation(line: 119, column: 3, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !3, line: 118, column: 38)
!175 = !DILocation(line: 122, column: 3, scope: !174)
!176 = !DILocation(line: 127, column: 6, scope: !177)
!177 = distinct !DILexicalBlock(scope: !132, file: !3, line: 127, column: 6)
!178 = !DILocation(line: 127, column: 65, scope: !177)
!179 = !DILocation(line: 127, column: 16, scope: !177)
!180 = !DILocation(line: 127, column: 14, scope: !177)
!181 = !DILocation(line: 127, column: 6, scope: !132)
!182 = !DILocation(line: 128, column: 3, scope: !183)
!183 = distinct !DILexicalBlock(scope: !177, file: !3, line: 127, column: 70)
!184 = !DILocation(line: 133, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !132, file: !3, line: 133, column: 2)
!186 = !DILocation(line: 133, column: 7, scope: !185)
!187 = !DILocation(line: 133, column: 14, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 133, column: 2)
!189 = !DILocation(line: 133, column: 16, scope: !188)
!190 = !DILocation(line: 133, column: 2, scope: !185)
!191 = !DILocation(line: 143, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 143, column: 7)
!193 = distinct !DILexicalBlock(scope: !188, file: !3, line: 133, column: 60)
!194 = !DILocation(line: 143, column: 19, scope: !192)
!195 = !DILocation(line: 143, column: 30, scope: !192)
!196 = !DILocation(line: 143, column: 16, scope: !192)
!197 = !DILocation(line: 144, column: 7, scope: !192)
!198 = !DILocation(line: 144, column: 11, scope: !192)
!199 = !DILocation(line: 144, column: 27, scope: !192)
!200 = !DILocation(line: 144, column: 38, scope: !192)
!201 = !DILocation(line: 144, column: 24, scope: !192)
!202 = !DILocation(line: 143, column: 7, scope: !193)
!203 = !DILocation(line: 148, column: 8, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 148, column: 8)
!205 = distinct !DILexicalBlock(scope: !192, file: !3, line: 144, column: 46)
!206 = !DILocation(line: 148, column: 29, scope: !204)
!207 = !DILocation(line: 148, column: 40, scope: !204)
!208 = !DILocation(line: 148, column: 26, scope: !204)
!209 = !DILocation(line: 148, column: 8, scope: !205)
!210 = !DILocation(line: 156, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !204, file: !3, line: 148, column: 56)
!212 = !DILocation(line: 158, column: 3, scope: !205)
!213 = !DILocation(line: 162, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !193, file: !3, line: 162, column: 7)
!215 = !DILocation(line: 162, column: 23, scope: !214)
!216 = !DILocation(line: 162, column: 34, scope: !214)
!217 = !DILocation(line: 162, column: 20, scope: !214)
!218 = !DILocation(line: 162, column: 7, scope: !193)
!219 = !DILocation(line: 163, column: 4, scope: !220)
!220 = distinct !DILexicalBlock(scope: !214, file: !3, line: 162, column: 39)
!221 = !DILocation(line: 165, column: 2, scope: !193)
!222 = !DILocation(line: 133, column: 43, scope: !188)
!223 = !DILocation(line: 133, column: 56, scope: !188)
!224 = !DILocation(line: 133, column: 2, scope: !188)
!225 = distinct !{!225, !190, !226}
!226 = !DILocation(line: 165, column: 2, scope: !185)
!227 = !DILocation(line: 167, column: 2, scope: !132)
!228 = !DILocation(line: 168, column: 1, scope: !132)
!229 = distinct !DISubprogram(name: "acpi_hw_write_port", scope: !3, file: !3, line: 250, type: !230, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!230 = !DISubroutineType(types: !231)
!231 = !{!11, !16, !13, !13}
!232 = !DILocalVariable(name: "address", arg: 1, scope: !229, file: !3, line: 250, type: !16)
!233 = !DILocation(line: 250, column: 48, scope: !229)
!234 = !DILocalVariable(name: "value", arg: 2, scope: !229, file: !3, line: 250, type: !13)
!235 = !DILocation(line: 250, column: 61, scope: !229)
!236 = !DILocalVariable(name: "width", arg: 3, scope: !229, file: !3, line: 250, type: !13)
!237 = !DILocation(line: 250, column: 72, scope: !229)
!238 = !DILocalVariable(name: "status", scope: !229, file: !3, line: 252, type: !11)
!239 = !DILocation(line: 252, column: 14, scope: !229)
!240 = !DILocalVariable(name: "i", scope: !229, file: !3, line: 253, type: !13)
!241 = !DILocation(line: 253, column: 6, scope: !229)
!242 = !DILocation(line: 257, column: 6, scope: !243)
!243 = distinct !DILexicalBlock(scope: !229, file: !3, line: 257, column: 6)
!244 = !DILocation(line: 257, column: 6, scope: !229)
!245 = !DILocation(line: 258, column: 11, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !3, line: 257, column: 38)
!247 = !DILocation(line: 259, column: 2, scope: !246)
!248 = !DILocation(line: 263, column: 39, scope: !229)
!249 = !DILocation(line: 263, column: 48, scope: !229)
!250 = !DILocation(line: 263, column: 11, scope: !229)
!251 = !DILocation(line: 263, column: 9, scope: !229)
!252 = !DILocation(line: 264, column: 6, scope: !253)
!253 = distinct !DILexicalBlock(scope: !229, file: !3, line: 264, column: 6)
!254 = !DILocation(line: 264, column: 6, scope: !229)
!255 = !DILocation(line: 265, column: 31, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 264, column: 28)
!257 = !DILocation(line: 265, column: 40, scope: !256)
!258 = !DILocation(line: 265, column: 47, scope: !256)
!259 = !DILocation(line: 265, column: 12, scope: !256)
!260 = !DILocation(line: 265, column: 10, scope: !256)
!261 = !DILocation(line: 266, column: 11, scope: !256)
!262 = !DILocation(line: 266, column: 3, scope: !256)
!263 = !DILocation(line: 269, column: 6, scope: !264)
!264 = distinct !DILexicalBlock(scope: !229, file: !3, line: 269, column: 6)
!265 = !DILocation(line: 269, column: 13, scope: !264)
!266 = !DILocation(line: 269, column: 6, scope: !229)
!267 = !DILocation(line: 270, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !3, line: 269, column: 40)
!269 = !DILocation(line: 270, column: 3, scope: !268)
!270 = !DILocation(line: 278, column: 9, scope: !271)
!271 = distinct !DILexicalBlock(scope: !229, file: !3, line: 278, column: 2)
!272 = !DILocation(line: 278, column: 7, scope: !271)
!273 = !DILocation(line: 278, column: 14, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !3, line: 278, column: 2)
!275 = !DILocation(line: 278, column: 18, scope: !274)
!276 = !DILocation(line: 278, column: 16, scope: !274)
!277 = !DILocation(line: 278, column: 2, scope: !271)
!278 = !DILocation(line: 282, column: 35, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 282, column: 7)
!280 = distinct !DILexicalBlock(scope: !274, file: !3, line: 278, column: 33)
!281 = !DILocation(line: 282, column: 7, scope: !279)
!282 = !DILocation(line: 282, column: 47, scope: !279)
!283 = !DILocation(line: 282, column: 7, scope: !280)
!284 = !DILocation(line: 284, column: 27, scope: !285)
!285 = distinct !DILexicalBlock(scope: !279, file: !3, line: 282, column: 57)
!286 = !DILocation(line: 284, column: 37, scope: !285)
!287 = !DILocation(line: 284, column: 46, scope: !285)
!288 = !DILocation(line: 284, column: 43, scope: !285)
!289 = !DILocation(line: 284, column: 49, scope: !285)
!290 = !DILocation(line: 284, column: 8, scope: !285)
!291 = !DILocation(line: 283, column: 11, scope: !285)
!292 = !DILocation(line: 285, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !285, file: !3, line: 285, column: 8)
!294 = !DILocation(line: 285, column: 8, scope: !285)
!295 = !DILocation(line: 286, column: 13, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !3, line: 285, column: 30)
!297 = !DILocation(line: 286, column: 5, scope: !296)
!298 = !DILocation(line: 288, column: 3, scope: !285)
!299 = !DILocation(line: 290, column: 10, scope: !280)
!300 = !DILocation(line: 291, column: 2, scope: !280)
!301 = !DILocation(line: 278, column: 27, scope: !274)
!302 = !DILocation(line: 278, column: 2, scope: !274)
!303 = distinct !{!303, !277, !304}
!304 = !DILocation(line: 291, column: 2, scope: !271)
!305 = !DILocation(line: 293, column: 2, scope: !229)
!306 = !DILocation(line: 294, column: 1, scope: !229)
!307 = distinct !DISubprogram(name: "acpi_hw_validate_io_block", scope: !3, file: !3, line: 310, type: !308, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!308 = !DISubroutineType(types: !309)
!309 = !{!11, !17, !13, !13}
!310 = !DILocalVariable(name: "address", arg: 1, scope: !307, file: !3, line: 310, type: !17)
!311 = !DILocation(line: 310, column: 43, scope: !307)
!312 = !DILocalVariable(name: "bit_width", arg: 2, scope: !307, file: !3, line: 310, type: !13)
!313 = !DILocation(line: 310, column: 56, scope: !307)
!314 = !DILocalVariable(name: "count", arg: 3, scope: !307, file: !3, line: 310, type: !13)
!315 = !DILocation(line: 310, column: 71, scope: !307)
!316 = !DILocalVariable(name: "status", scope: !307, file: !3, line: 312, type: !11)
!317 = !DILocation(line: 312, column: 14, scope: !307)
!318 = !DILocation(line: 314, column: 2, scope: !307)
!319 = !DILocation(line: 314, column: 14, scope: !307)
!320 = !DILocation(line: 315, column: 57, scope: !321)
!321 = distinct !DILexicalBlock(scope: !307, file: !3, line: 314, column: 18)
!322 = !DILocation(line: 316, column: 12, scope: !321)
!323 = !DILocation(line: 315, column: 12, scope: !321)
!324 = !DILocation(line: 315, column: 10, scope: !321)
!325 = !DILocation(line: 317, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !3, line: 317, column: 7)
!327 = !DILocation(line: 317, column: 7, scope: !321)
!328 = !DILocation(line: 318, column: 4, scope: !326)
!329 = !DILocation(line: 320, column: 14, scope: !321)
!330 = !DILocation(line: 320, column: 11, scope: !321)
!331 = distinct !{!331, !318, !332}
!332 = !DILocation(line: 321, column: 2, scope: !307)
!333 = !DILocation(line: 323, column: 2, scope: !307)
!334 = !DILocation(line: 324, column: 1, scope: !307)
