; ModuleID = '../bcout/drivers/acpi/acpica/tbprint.llvm.bc'
source_filename = "drivers/acpi/acpica/tbprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_table_rsdp = type <{ [8 x i8], i8, [6 x i8], i8, i32, i32, i64, i8, [3 x i8] }>

@.str = private unnamed_addr constant [5 x i8] c"FACS\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%-4.4s 0x%8.8X%8.8X %06X\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"RSD PTR \00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"RSDP 0x%8.8X%8.8X %06X (v%.2d %-6.6s)\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"%-4.4s 0x%8.8X%8.8X %06X (v%.2d %-6.6s %-8.8s %08X %-4.4s %08X)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"S3PT\00", align 1
@_acpi_module_name = internal constant [8 x i8] c"tbprint\00", align 1, !dbg !0
@.str.6 = private unnamed_addr constant [65 x i8] c"Incorrect checksum in table [%4.4s] - 0x%2.2X, should be 0x%2.2X\00", align 1
@_ctype = external dso_local constant [0 x i8], align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_print_table_header(i64 %address, %struct.acpi_table_header* %header) #0 !dbg !55 {
entry:
  %address.addr = alloca i64, align 8
  %header.addr = alloca %struct.acpi_table_header*, align 8
  %local_header = alloca %struct.acpi_table_header, align 1
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !74, metadata !DIExpression()), !dbg !75
  store %struct.acpi_table_header* %header, %struct.acpi_table_header** %header.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %header.addr, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header* %local_header, metadata !78, metadata !DIExpression()), !dbg !79
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header.addr, align 8, !dbg !80
  %signature = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %0, i32 0, i32 0, !dbg !80
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i64 0, i64 0, !dbg !80
  %1 = bitcast i8* %arraydecay to i32*, !dbg !80
  %2 = load i32, i32* %1, align 4, !dbg !80
  %3 = load i32, i32* bitcast ([5 x i8]* @.str to i32*), align 4, !dbg !80
  %cmp = icmp eq i32 %2, %3, !dbg !80
  br i1 %cmp, label %if.then, label %if.else, !dbg !82

if.then:                                          ; preds = %entry
  %4 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header.addr, align 8, !dbg !83
  %signature1 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %4, i32 0, i32 0, !dbg !83
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %signature1, i64 0, i64 0, !dbg !83
  %5 = load i64, i64* %address.addr, align 8, !dbg !83
  %shr = lshr i64 %5, 32, !dbg !83
  %conv = trunc i64 %shr to i32, !dbg !83
  %6 = load i64, i64* %address.addr, align 8, !dbg !83
  %conv3 = trunc i64 %6 to i32, !dbg !83
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header.addr, align 8, !dbg !83
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %7, i32 0, i32 1, !dbg !83
  %8 = load i32, i32* %length, align 1, !dbg !83
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay2, i32 %conv, i32 %conv3, i32 %8) #4, !dbg !83
  br label %if.end36, !dbg !85

if.else:                                          ; preds = %entry
  %9 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header.addr, align 8, !dbg !86
  %signature4 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %9, i32 0, i32 0, !dbg !86
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %signature4, i64 0, i64 0, !dbg !86
  %call = call i32 @strncmp(i8* %arraydecay5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 8) #4, !dbg !86
  %tobool = icmp ne i32 %call, 0, !dbg !86
  br i1 %tobool, label %if.else23, label %if.then6, !dbg !88

if.then6:                                         ; preds = %if.else
  %oem_id = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %local_header, i32 0, i32 4, !dbg !89
  %arraydecay7 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id, i64 0, i64 0, !dbg !91
  %10 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header.addr, align 8, !dbg !92
  %11 = bitcast %struct.acpi_table_header* %10 to i8*, !dbg !92
  %12 = bitcast i8* %11 to %struct.acpi_table_rsdp*, !dbg !92
  %oem_id8 = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %12, i32 0, i32 2, !dbg !93
  %arraydecay9 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id8, i64 0, i64 0, !dbg !91
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arraydecay7, i8* align 1 %arraydecay9, i64 6, i1 false), !dbg !91
  %oem_id10 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %local_header, i32 0, i32 4, !dbg !94
  %arraydecay11 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id10, i64 0, i64 0, !dbg !95
  call void @acpi_tb_fix_string(i8* %arraydecay11, i64 6) #4, !dbg !96
  %13 = load i64, i64* %address.addr, align 8, !dbg !97
  %shr12 = lshr i64 %13, 32, !dbg !97
  %conv13 = trunc i64 %shr12 to i32, !dbg !97
  %14 = load i64, i64* %address.addr, align 8, !dbg !97
  %conv14 = trunc i64 %14 to i32, !dbg !97
  %15 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header.addr, align 8, !dbg !97
  %16 = bitcast %struct.acpi_table_header* %15 to i8*, !dbg !97
  %17 = bitcast i8* %16 to %struct.acpi_table_rsdp*, !dbg !97
  %revision = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %17, i32 0, i32 3, !dbg !97
  %18 = load i8, i8* %revision, align 1, !dbg !97
  %conv15 = zext i8 %18 to i32, !dbg !97
  %cmp16 = icmp sgt i32 %conv15, 0, !dbg !97
  br i1 %cmp16, label %cond.true, label %cond.false, !dbg !97

cond.true:                                        ; preds = %if.then6
  %19 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header.addr, align 8, !dbg !97
  %20 = bitcast %struct.acpi_table_header* %19 to i8*, !dbg !97
  %21 = bitcast i8* %20 to %struct.acpi_table_rsdp*, !dbg !97
  %length18 = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %21, i32 0, i32 5, !dbg !97
  %22 = load i32, i32* %length18, align 1, !dbg !97
  br label %cond.end, !dbg !97

cond.false:                                       ; preds = %if.then6
  br label %cond.end, !dbg !97

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ 20, %cond.false ], !dbg !97
  %23 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header.addr, align 8, !dbg !97
  %24 = bitcast %struct.acpi_table_header* %23 to i8*, !dbg !97
  %25 = bitcast i8* %24 to %struct.acpi_table_rsdp*, !dbg !97
  %revision19 = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %25, i32 0, i32 3, !dbg !97
  %26 = load i8, i8* %revision19, align 1, !dbg !97
  %conv20 = zext i8 %26 to i32, !dbg !97
  %oem_id21 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %local_header, i32 0, i32 4, !dbg !97
  %arraydecay22 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id21, i64 0, i64 0, !dbg !97
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %conv13, i32 %conv14, i32 %cond, i32 %conv20, i8* %arraydecay22) #4, !dbg !97
  br label %if.end, !dbg !98

if.else23:                                        ; preds = %if.else
  %27 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header.addr, align 8, !dbg !99
  call void @acpi_tb_cleanup_table_header(%struct.acpi_table_header* %local_header, %struct.acpi_table_header* %27) #4, !dbg !101
  %signature24 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %local_header, i32 0, i32 0, !dbg !102
  %arraydecay25 = getelementptr inbounds [4 x i8], [4 x i8]* %signature24, i64 0, i64 0, !dbg !102
  %28 = load i64, i64* %address.addr, align 8, !dbg !102
  %shr26 = lshr i64 %28, 32, !dbg !102
  %conv27 = trunc i64 %shr26 to i32, !dbg !102
  %29 = load i64, i64* %address.addr, align 8, !dbg !102
  %conv28 = trunc i64 %29 to i32, !dbg !102
  %length29 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %local_header, i32 0, i32 1, !dbg !102
  %30 = load i32, i32* %length29, align 1, !dbg !102
  %revision30 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %local_header, i32 0, i32 2, !dbg !102
  %31 = load i8, i8* %revision30, align 1, !dbg !102
  %conv31 = zext i8 %31 to i32, !dbg !102
  %oem_id32 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %local_header, i32 0, i32 4, !dbg !102
  %arraydecay33 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id32, i64 0, i64 0, !dbg !102
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %local_header, i32 0, i32 5, !dbg !102
  %arraydecay34 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id, i64 0, i64 0, !dbg !102
  %oem_revision = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %local_header, i32 0, i32 6, !dbg !102
  %32 = load i32, i32* %oem_revision, align 1, !dbg !102
  %asl_compiler_id = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %local_header, i32 0, i32 7, !dbg !102
  %arraydecay35 = getelementptr inbounds [4 x i8], [4 x i8]* %asl_compiler_id, i64 0, i64 0, !dbg !102
  %asl_compiler_revision = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %local_header, i32 0, i32 8, !dbg !102
  %33 = load i32, i32* %asl_compiler_revision, align 1, !dbg !102
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay25, i32 %conv27, i32 %conv28, i32 %30, i32 %conv31, i8* %arraydecay33, i8* %arraydecay34, i32 %32, i8* %arraydecay35, i32 %33) #4, !dbg !102
  br label %if.end

if.end:                                           ; preds = %if.else23, %cond.end
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.then
  ret void, !dbg !103
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_info(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_tb_fix_string(i8* %string, i64 %length) #0 !dbg !104 {
entry:
  %string.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !108, metadata !DIExpression()), !dbg !109
  store i64 %length, i64* %length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !110, metadata !DIExpression()), !dbg !111
  br label %while.cond, !dbg !112

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %length.addr, align 8, !dbg !113
  %tobool = icmp ne i64 %0, 0, !dbg !113
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !114

land.rhs:                                         ; preds = %while.cond
  %1 = load i8*, i8** %string.addr, align 8, !dbg !115
  %2 = load i8, i8* %1, align 1, !dbg !116
  %conv = sext i8 %2 to i32, !dbg !116
  %tobool1 = icmp ne i32 %conv, 0, !dbg !114
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ], !dbg !117
  br i1 %3, label %while.body, label %while.end, !dbg !112

while.body:                                       ; preds = %land.end
  %4 = load i8*, i8** %string.addr, align 8, !dbg !118
  %5 = load i8, i8* %4, align 1, !dbg !118
  %conv2 = sext i8 %5 to i32, !dbg !118
  %conv3 = trunc i32 %conv2 to i8, !dbg !118
  %conv4 = zext i8 %conv3 to i32, !dbg !118
  %idxprom = sext i32 %conv4 to i64, !dbg !118
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !118
  %6 = load i8, i8* %arrayidx, align 1, !dbg !118
  %conv5 = zext i8 %6 to i32, !dbg !118
  %and = and i32 %conv5, 151, !dbg !118
  %cmp = icmp ne i32 %and, 0, !dbg !118
  br i1 %cmp, label %if.end, label %if.then, !dbg !121

if.then:                                          ; preds = %while.body
  %7 = load i8*, i8** %string.addr, align 8, !dbg !122
  store i8 63, i8* %7, align 1, !dbg !124
  br label %if.end, !dbg !125

if.end:                                           ; preds = %if.then, %while.body
  %8 = load i8*, i8** %string.addr, align 8, !dbg !126
  %incdec.ptr = getelementptr i8, i8* %8, i32 1, !dbg !126
  store i8* %incdec.ptr, i8** %string.addr, align 8, !dbg !126
  %9 = load i64, i64* %length.addr, align 8, !dbg !127
  %dec = add i64 %9, -1, !dbg !127
  store i64 %dec, i64* %length.addr, align 8, !dbg !127
  br label %while.cond, !dbg !112, !llvm.loop !128

while.end:                                        ; preds = %land.end
  ret void, !dbg !130
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_tb_cleanup_table_header(%struct.acpi_table_header* %out_header, %struct.acpi_table_header* %header) #0 !dbg !131 {
entry:
  %out_header.addr = alloca %struct.acpi_table_header*, align 8
  %header.addr = alloca %struct.acpi_table_header*, align 8
  store %struct.acpi_table_header* %out_header, %struct.acpi_table_header** %out_header.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %out_header.addr, metadata !134, metadata !DIExpression()), !dbg !135
  store %struct.acpi_table_header* %header, %struct.acpi_table_header** %header.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %header.addr, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %out_header.addr, align 8, !dbg !138
  %1 = bitcast %struct.acpi_table_header* %0 to i8*, !dbg !139
  %2 = load %struct.acpi_table_header*, %struct.acpi_table_header** %header.addr, align 8, !dbg !140
  %3 = bitcast %struct.acpi_table_header* %2 to i8*, !dbg !139
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %3, i64 36, i1 false), !dbg !139
  %4 = load %struct.acpi_table_header*, %struct.acpi_table_header** %out_header.addr, align 8, !dbg !141
  %signature = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %4, i32 0, i32 0, !dbg !142
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i64 0, i64 0, !dbg !141
  call void @acpi_tb_fix_string(i8* %arraydecay, i64 4) #4, !dbg !143
  %5 = load %struct.acpi_table_header*, %struct.acpi_table_header** %out_header.addr, align 8, !dbg !144
  %oem_id = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %5, i32 0, i32 4, !dbg !145
  %arraydecay1 = getelementptr inbounds [6 x i8], [6 x i8]* %oem_id, i64 0, i64 0, !dbg !144
  call void @acpi_tb_fix_string(i8* %arraydecay1, i64 6) #4, !dbg !146
  %6 = load %struct.acpi_table_header*, %struct.acpi_table_header** %out_header.addr, align 8, !dbg !147
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %6, i32 0, i32 5, !dbg !148
  %arraydecay2 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id, i64 0, i64 0, !dbg !147
  call void @acpi_tb_fix_string(i8* %arraydecay2, i64 8) #4, !dbg !149
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %out_header.addr, align 8, !dbg !150
  %asl_compiler_id = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %7, i32 0, i32 7, !dbg !151
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %asl_compiler_id, i64 0, i64 0, !dbg !150
  call void @acpi_tb_fix_string(i8* %arraydecay3, i64 4) #4, !dbg !152
  ret void, !dbg !153
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_verify_checksum(%struct.acpi_table_header* %table, i32 %length) #0 !dbg !154 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.acpi_table_header*, align 8
  %length.addr = alloca i32, align 4
  %checksum = alloca i8, align 1
  store %struct.acpi_table_header* %table, %struct.acpi_table_header** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table.addr, metadata !157, metadata !DIExpression()), !dbg !158
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i8* %checksum, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !163
  %signature = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %0, i32 0, i32 0, !dbg !163
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i64 0, i64 0, !dbg !163
  %1 = bitcast i8* %arraydecay to i32*, !dbg !163
  %2 = load i32, i32* %1, align 4, !dbg !163
  %3 = load i32, i32* bitcast ([5 x i8]* @.str.5 to i32*), align 4, !dbg !163
  %cmp = icmp eq i32 %2, %3, !dbg !163
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !165

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !166
  %signature1 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %4, i32 0, i32 0, !dbg !166
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %signature1, i64 0, i64 0, !dbg !166
  %5 = bitcast i8* %arraydecay2 to i32*, !dbg !166
  %6 = load i32, i32* %5, align 4, !dbg !166
  %7 = load i32, i32* bitcast ([5 x i8]* @.str to i32*), align 4, !dbg !166
  %cmp3 = icmp eq i32 %6, %7, !dbg !166
  br i1 %cmp3, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !168
  br label %return, !dbg !168

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !170
  %9 = bitcast %struct.acpi_table_header* %8 to i8*, !dbg !170
  %10 = load i32, i32* %length.addr, align 4, !dbg !171
  %call = call zeroext i8 @acpi_tb_checksum(i8* %9, i32 %10) #4, !dbg !172
  store i8 %call, i8* %checksum, align 1, !dbg !173
  %11 = load i8, i8* %checksum, align 1, !dbg !174
  %tobool = icmp ne i8 %11, 0, !dbg !174
  br i1 %tobool, label %if.then4, label %if.end13, !dbg !176

if.then4:                                         ; preds = %if.end
  %12 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !177
  %signature5 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %12, i32 0, i32 0, !dbg !177
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %signature5, i64 0, i64 0, !dbg !177
  %13 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !177
  %checksum7 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %13, i32 0, i32 3, !dbg !177
  %14 = load i8, i8* %checksum7, align 1, !dbg !177
  %conv = zext i8 %14 to i32, !dbg !177
  %15 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !177
  %checksum8 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %15, i32 0, i32 3, !dbg !177
  %16 = load i8, i8* %checksum8, align 1, !dbg !177
  %conv9 = zext i8 %16 to i32, !dbg !177
  %17 = load i8, i8* %checksum, align 1, !dbg !177
  %conv10 = zext i8 %17 to i32, !dbg !177
  %sub = sub i32 %conv9, %conv10, !dbg !177
  %conv11 = trunc i32 %sub to i8, !dbg !177
  %conv12 = zext i8 %conv11 to i32, !dbg !177
  call void (i8*, i32, i8*, ...) @acpi_bios_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 173, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i8* %arraydecay6, i32 %conv, i32 %conv12) #4, !dbg !177
  br label %if.end13, !dbg !179

if.end13:                                         ; preds = %if.then4, %if.end
  store i32 0, i32* %retval, align 4, !dbg !180
  br label %return, !dbg !180

return:                                           ; preds = %if.end13, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !181
  ret i32 %18, !dbg !181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_tb_checksum(i8* %buffer, i32 %length) #0 !dbg !182 {
entry:
  %buffer.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %sum = alloca i8, align 1
  %end = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !185, metadata !DIExpression()), !dbg !186
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i8* %sum, metadata !189, metadata !DIExpression()), !dbg !190
  store i8 0, i8* %sum, align 1, !dbg !190
  call void @llvm.dbg.declare(metadata i8** %end, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !193
  %1 = load i32, i32* %length.addr, align 4, !dbg !194
  %idx.ext = zext i32 %1 to i64, !dbg !195
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !195
  store i8* %add.ptr, i8** %end, align 8, !dbg !192
  br label %while.cond, !dbg !196

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %buffer.addr, align 8, !dbg !197
  %3 = load i8*, i8** %end, align 8, !dbg !198
  %cmp = icmp ult i8* %2, %3, !dbg !199
  br i1 %cmp, label %while.body, label %while.end, !dbg !196

while.body:                                       ; preds = %while.cond
  %4 = load i8, i8* %sum, align 1, !dbg !200
  %conv = zext i8 %4 to i32, !dbg !200
  %5 = load i8*, i8** %buffer.addr, align 8, !dbg !202
  %incdec.ptr = getelementptr i8, i8* %5, i32 1, !dbg !202
  store i8* %incdec.ptr, i8** %buffer.addr, align 8, !dbg !202
  %6 = load i8, i8* %5, align 1, !dbg !203
  %conv1 = zext i8 %6 to i32, !dbg !203
  %add = add i32 %conv, %conv1, !dbg !204
  %conv2 = trunc i32 %add to i8, !dbg !205
  store i8 %conv2, i8* %sum, align 1, !dbg !206
  br label %while.cond, !dbg !196, !llvm.loop !207

while.end:                                        ; preds = %while.cond
  %7 = load i8, i8* %sum, align 1, !dbg !209
  ret i8 %7, !dbg !210
}

; Function Attrs: noredzone
declare dso_local void @acpi_bios_warning(i8*, i32, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !48, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbprint.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !12, !7, !13, !16, !18, !43, !45, !27, !46, !29}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !15)
!15 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_rsdp", file: !20, line: 105, size: 288, elements: !21)
!20 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !26, !30, !34, !35, !36, !37, !38, !39}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !19, file: !20, line: 106, baseType: !23, size: 64)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 8)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !19, file: !20, line: 107, baseType: !27, size: 8, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !19, file: !20, line: 108, baseType: !31, size: 48, offset: 72)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 48, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 6)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !19, file: !20, line: 109, baseType: !27, size: 8, offset: 120)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "rsdt_physical_address", scope: !19, file: !20, line: 110, baseType: !7, size: 32, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !19, file: !20, line: 111, baseType: !7, size: 32, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "xsdt_physical_address", scope: !19, file: !20, line: 112, baseType: !13, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "extended_checksum", scope: !19, file: !20, line: 113, baseType: !27, size: 8, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !19, file: !20, line: 114, baseType: !40, size: 24, offset: 264)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 3)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !44, line: 421, baseType: !7)
!44 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!0}
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, elements: !24)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!50 = !{i32 7, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"Code Model", i32 2}
!54 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!55 = distinct !DISubprogram(name: "acpi_tb_print_table_header", scope: !3, file: !3, line: 92, type: !56, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58, !59}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !44, line: 129, baseType: !13)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !20, line: 68, size: 288, elements: !61)
!61 = !{!62, !66, !67, !68, !69, !70, !71, !72, !73}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !60, file: !20, line: 69, baseType: !63, size: 32)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 4)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !60, file: !20, line: 70, baseType: !7, size: 32, offset: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !60, file: !20, line: 71, baseType: !27, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !60, file: !20, line: 72, baseType: !27, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !60, file: !20, line: 73, baseType: !31, size: 48, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !60, file: !20, line: 74, baseType: !23, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !60, file: !20, line: 75, baseType: !7, size: 32, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !60, file: !20, line: 76, baseType: !63, size: 32, offset: 224)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !60, file: !20, line: 77, baseType: !7, size: 32, offset: 256)
!74 = !DILocalVariable(name: "address", arg: 1, scope: !55, file: !3, line: 92, type: !58)
!75 = !DILocation(line: 92, column: 50, scope: !55)
!76 = !DILocalVariable(name: "header", arg: 2, scope: !55, file: !3, line: 93, type: !59)
!77 = !DILocation(line: 93, column: 33, scope: !55)
!78 = !DILocalVariable(name: "local_header", scope: !55, file: !3, line: 95, type: !60)
!79 = !DILocation(line: 95, column: 27, scope: !55)
!80 = !DILocation(line: 97, column: 6, scope: !81)
!81 = distinct !DILexicalBlock(scope: !55, file: !3, line: 97, column: 6)
!82 = !DILocation(line: 97, column: 6, scope: !55)
!83 = !DILocation(line: 101, column: 3, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !3, line: 97, column: 62)
!85 = !DILocation(line: 104, column: 2, scope: !84)
!86 = !DILocation(line: 104, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !81, file: !3, line: 104, column: 13)
!88 = !DILocation(line: 104, column: 13, scope: !81)
!89 = !DILocation(line: 108, column: 23, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !3, line: 104, column: 56)
!91 = !DILocation(line: 108, column: 3, scope: !90)
!92 = !DILocation(line: 109, column: 10, scope: !90)
!93 = !DILocation(line: 109, column: 57, scope: !90)
!94 = !DILocation(line: 111, column: 35, scope: !90)
!95 = !DILocation(line: 111, column: 22, scope: !90)
!96 = !DILocation(line: 111, column: 3, scope: !90)
!97 = !DILocation(line: 113, column: 3, scope: !90)
!98 = !DILocation(line: 122, column: 2, scope: !90)
!99 = !DILocation(line: 125, column: 47, scope: !100)
!100 = distinct !DILexicalBlock(scope: !87, file: !3, line: 122, column: 9)
!101 = !DILocation(line: 125, column: 3, scope: !100)
!102 = !DILocation(line: 127, column: 3, scope: !100)
!103 = !DILocation(line: 136, column: 1, scope: !55)
!104 = distinct !DISubprogram(name: "acpi_tb_fix_string", scope: !3, file: !3, line: 38, type: !105, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !16, !107}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !44, line: 127, baseType: !13)
!108 = !DILocalVariable(name: "string", arg: 1, scope: !104, file: !3, line: 38, type: !16)
!109 = !DILocation(line: 38, column: 38, scope: !104)
!110 = !DILocalVariable(name: "length", arg: 2, scope: !104, file: !3, line: 38, type: !107)
!111 = !DILocation(line: 38, column: 56, scope: !104)
!112 = !DILocation(line: 41, column: 2, scope: !104)
!113 = !DILocation(line: 41, column: 9, scope: !104)
!114 = !DILocation(line: 41, column: 16, scope: !104)
!115 = !DILocation(line: 41, column: 20, scope: !104)
!116 = !DILocation(line: 41, column: 19, scope: !104)
!117 = !DILocation(line: 0, scope: !104)
!118 = !DILocation(line: 42, column: 8, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 42, column: 7)
!120 = distinct !DILexicalBlock(scope: !104, file: !3, line: 41, column: 28)
!121 = !DILocation(line: 42, column: 7, scope: !120)
!122 = !DILocation(line: 43, column: 5, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !3, line: 42, column: 31)
!124 = !DILocation(line: 43, column: 12, scope: !123)
!125 = !DILocation(line: 44, column: 3, scope: !123)
!126 = !DILocation(line: 46, column: 9, scope: !120)
!127 = !DILocation(line: 47, column: 9, scope: !120)
!128 = distinct !{!128, !112, !129}
!129 = !DILocation(line: 48, column: 2, scope: !104)
!130 = !DILocation(line: 49, column: 1, scope: !104)
!131 = distinct !DISubprogram(name: "acpi_tb_cleanup_table_header", scope: !3, file: !3, line: 66, type: !132, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !59, !59}
!134 = !DILocalVariable(name: "out_header", arg: 1, scope: !131, file: !3, line: 66, type: !59)
!135 = !DILocation(line: 66, column: 56, scope: !131)
!136 = !DILocalVariable(name: "header", arg: 2, scope: !131, file: !3, line: 67, type: !59)
!137 = !DILocation(line: 67, column: 35, scope: !131)
!138 = !DILocation(line: 70, column: 9, scope: !131)
!139 = !DILocation(line: 70, column: 2, scope: !131)
!140 = !DILocation(line: 70, column: 21, scope: !131)
!141 = !DILocation(line: 72, column: 21, scope: !131)
!142 = !DILocation(line: 72, column: 33, scope: !131)
!143 = !DILocation(line: 72, column: 2, scope: !131)
!144 = !DILocation(line: 73, column: 21, scope: !131)
!145 = !DILocation(line: 73, column: 33, scope: !131)
!146 = !DILocation(line: 73, column: 2, scope: !131)
!147 = !DILocation(line: 74, column: 21, scope: !131)
!148 = !DILocation(line: 74, column: 33, scope: !131)
!149 = !DILocation(line: 74, column: 2, scope: !131)
!150 = !DILocation(line: 75, column: 21, scope: !131)
!151 = !DILocation(line: 75, column: 33, scope: !131)
!152 = !DILocation(line: 75, column: 2, scope: !131)
!153 = !DILocation(line: 76, column: 1, scope: !131)
!154 = distinct !DISubprogram(name: "acpi_tb_verify_checksum", scope: !3, file: !3, line: 152, type: !155, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!155 = !DISubroutineType(types: !156)
!156 = !{!43, !59, !7}
!157 = !DILocalVariable(name: "table", arg: 1, scope: !154, file: !3, line: 152, type: !59)
!158 = !DILocation(line: 152, column: 63, scope: !154)
!159 = !DILocalVariable(name: "length", arg: 2, scope: !154, file: !3, line: 152, type: !7)
!160 = !DILocation(line: 152, column: 74, scope: !154)
!161 = !DILocalVariable(name: "checksum", scope: !154, file: !3, line: 154, type: !27)
!162 = !DILocation(line: 154, column: 5, scope: !154)
!163 = !DILocation(line: 161, column: 6, scope: !164)
!164 = distinct !DILexicalBlock(scope: !154, file: !3, line: 161, column: 6)
!165 = !DILocation(line: 161, column: 60, scope: !164)
!166 = !DILocation(line: 162, column: 6, scope: !164)
!167 = !DILocation(line: 161, column: 6, scope: !154)
!168 = !DILocation(line: 163, column: 3, scope: !169)
!169 = distinct !DILexicalBlock(scope: !164, file: !3, line: 162, column: 61)
!170 = !DILocation(line: 168, column: 30, scope: !154)
!171 = !DILocation(line: 168, column: 56, scope: !154)
!172 = !DILocation(line: 168, column: 13, scope: !154)
!173 = !DILocation(line: 168, column: 11, scope: !154)
!174 = !DILocation(line: 172, column: 6, scope: !175)
!175 = distinct !DILexicalBlock(scope: !154, file: !3, line: 172, column: 6)
!176 = !DILocation(line: 172, column: 6, scope: !154)
!177 = !DILocation(line: 173, column: 3, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !3, line: 172, column: 16)
!179 = !DILocation(line: 182, column: 2, scope: !178)
!180 = !DILocation(line: 184, column: 2, scope: !154)
!181 = !DILocation(line: 185, column: 1, scope: !154)
!182 = distinct !DISubprogram(name: "acpi_tb_checksum", scope: !3, file: !3, line: 200, type: !183, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!183 = !DISubroutineType(types: !184)
!184 = !{!27, !45, !7}
!185 = !DILocalVariable(name: "buffer", arg: 1, scope: !182, file: !3, line: 200, type: !45)
!186 = !DILocation(line: 200, column: 25, scope: !182)
!187 = !DILocalVariable(name: "length", arg: 2, scope: !182, file: !3, line: 200, type: !7)
!188 = !DILocation(line: 200, column: 37, scope: !182)
!189 = !DILocalVariable(name: "sum", scope: !182, file: !3, line: 202, type: !27)
!190 = !DILocation(line: 202, column: 5, scope: !182)
!191 = !DILocalVariable(name: "end", scope: !182, file: !3, line: 203, type: !45)
!192 = !DILocation(line: 203, column: 6, scope: !182)
!193 = !DILocation(line: 203, column: 12, scope: !182)
!194 = !DILocation(line: 203, column: 21, scope: !182)
!195 = !DILocation(line: 203, column: 19, scope: !182)
!196 = !DILocation(line: 205, column: 2, scope: !182)
!197 = !DILocation(line: 205, column: 9, scope: !182)
!198 = !DILocation(line: 205, column: 18, scope: !182)
!199 = !DILocation(line: 205, column: 16, scope: !182)
!200 = !DILocation(line: 206, column: 14, scope: !201)
!201 = distinct !DILexicalBlock(scope: !182, file: !3, line: 205, column: 23)
!202 = !DILocation(line: 206, column: 28, scope: !201)
!203 = !DILocation(line: 206, column: 20, scope: !201)
!204 = !DILocation(line: 206, column: 18, scope: !201)
!205 = !DILocation(line: 206, column: 9, scope: !201)
!206 = !DILocation(line: 206, column: 7, scope: !201)
!207 = distinct !{!207, !196, !208}
!208 = !DILocation(line: 207, column: 2, scope: !182)
!209 = !DILocation(line: 209, column: 10, scope: !182)
!210 = !DILocation(line: 209, column: 2, scope: !182)
