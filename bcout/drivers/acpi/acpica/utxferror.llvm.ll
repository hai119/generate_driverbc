; ModuleID = '../bcout/drivers/acpi/acpica/utxferror.llvm.bc'
source_filename = "drivers/acpi/acpica/utxferror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"\013ACPI Error: \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" (%8.8X/%s-%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\013ACPI Error: %s, \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\014ACPI Warning: \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\016ACPI: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\013ACPI BIOS Error (bug): \00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\013ACPI BIOS Error (bug): %s, \00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"\014ACPI BIOS Warning (bug): \00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_error(i8* %module_name, i32 %line_number, i8* %format, ...) #0 !dbg !8 {
entry:
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !21, metadata !DIExpression()), !dbg !22
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %arg_list, metadata !25, metadata !DIExpression()), !dbg !40
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #4, !dbg !41
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !42
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !42
  call void @llvm.va_start(i8* %arraydecay1), !dbg !42
  %0 = load i8*, i8** %format.addr, align 8, !dbg !43
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !44
  call void @acpi_os_vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2) #4, !dbg !45
  %1 = load i8*, i8** %module_name.addr, align 8, !dbg !46
  %2 = load i32, i32* %line_number.addr, align 4, !dbg !46
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 538970405, i8* %1, i32 %2) #4, !dbg !46
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !47
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !47
  call void @llvm.va_end(i8* %arraydecay34), !dbg !47
  ret void, !dbg !48
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_os_printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noredzone
declare dso_local void @acpi_os_vprintf(i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_exception(i8* %module_name, i32 %line_number, i32 %status, i8* %format, ...) #0 !dbg !49 {
entry:
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %status.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !58, metadata !DIExpression()), !dbg !59
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %arg_list, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i32, i32* %status.addr, align 4, !dbg !64
  %tobool = icmp ne i32 %0, 0, !dbg !64
  br i1 %tobool, label %if.else, label %if.then, !dbg !66

if.then:                                          ; preds = %entry
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #4, !dbg !67
  br label %if.end, !dbg !69

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %status.addr, align 4, !dbg !70
  %call = call i8* @acpi_format_exception(i32 %1) #4, !dbg !72
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %call) #4, !dbg !73
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !74
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !74
  call void @llvm.va_start(i8* %arraydecay1), !dbg !74
  %2 = load i8*, i8** %format.addr, align 8, !dbg !75
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !76
  call void @acpi_os_vprintf(i8* %2, %struct.__va_list_tag* %arraydecay2) #4, !dbg !77
  %3 = load i8*, i8** %module_name.addr, align 8, !dbg !78
  %4 = load i32, i32* %line_number.addr, align 4, !dbg !78
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 538970405, i8* %3, i32 %4) #4, !dbg !78
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !79
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !79
  call void @llvm.va_end(i8* %arraydecay34), !dbg !79
  ret void, !dbg !80
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_format_exception(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_warning(i8* %module_name, i32 %line_number, i8* %format, ...) #0 !dbg !81 {
entry:
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !84, metadata !DIExpression()), !dbg !85
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %arg_list, metadata !88, metadata !DIExpression()), !dbg !89
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !90
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !91
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !91
  call void @llvm.va_start(i8* %arraydecay1), !dbg !91
  %0 = load i8*, i8** %format.addr, align 8, !dbg !92
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !93
  call void @acpi_os_vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2) #4, !dbg !94
  %1 = load i8*, i8** %module_name.addr, align 8, !dbg !95
  %2 = load i32, i32* %line_number.addr, align 4, !dbg !95
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 538970405, i8* %1, i32 %2) #4, !dbg !95
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !96
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !96
  call void @llvm.va_end(i8* %arraydecay34), !dbg !96
  ret void, !dbg !97
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_info(i8* %format, ...) #0 !dbg !98 {
entry:
  %format.addr = alloca i8*, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %arg_list, metadata !103, metadata !DIExpression()), !dbg !104
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !105
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !106
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !106
  call void @llvm.va_start(i8* %arraydecay1), !dbg !106
  %0 = load i8*, i8** %format.addr, align 8, !dbg !107
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !108
  call void @acpi_os_vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2) #4, !dbg !109
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !110
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !111
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !111
  call void @llvm.va_end(i8* %arraydecay34), !dbg !111
  ret void, !dbg !112
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_bios_error(i8* %module_name, i32 %line_number, i8* %format, ...) #0 !dbg !113 {
entry:
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !116, metadata !DIExpression()), !dbg !117
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %arg_list, metadata !120, metadata !DIExpression()), !dbg !121
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !122
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !123
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !123
  call void @llvm.va_start(i8* %arraydecay1), !dbg !123
  %0 = load i8*, i8** %format.addr, align 8, !dbg !124
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !125
  call void @acpi_os_vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2) #4, !dbg !126
  %1 = load i8*, i8** %module_name.addr, align 8, !dbg !127
  %2 = load i32, i32* %line_number.addr, align 4, !dbg !127
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 538970405, i8* %1, i32 %2) #4, !dbg !127
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !128
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !128
  call void @llvm.va_end(i8* %arraydecay34), !dbg !128
  ret void, !dbg !129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_bios_exception(i8* %module_name, i32 %line_number, i32 %status, i8* %format, ...) #0 !dbg !130 {
entry:
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %status.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !131, metadata !DIExpression()), !dbg !132
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !133, metadata !DIExpression()), !dbg !134
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !135, metadata !DIExpression()), !dbg !136
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %arg_list, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load i32, i32* %status.addr, align 4, !dbg !141
  %tobool = icmp ne i32 %0, 0, !dbg !141
  br i1 %tobool, label %if.else, label %if.then, !dbg !143

if.then:                                          ; preds = %entry
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !144
  br label %if.end, !dbg !146

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %status.addr, align 4, !dbg !147
  %call = call i8* @acpi_format_exception(i32 %1) #4, !dbg !149
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %call) #4, !dbg !150
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !151
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !151
  call void @llvm.va_start(i8* %arraydecay1), !dbg !151
  %2 = load i8*, i8** %format.addr, align 8, !dbg !152
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !153
  call void @acpi_os_vprintf(i8* %2, %struct.__va_list_tag* %arraydecay2) #4, !dbg !154
  %3 = load i8*, i8** %module_name.addr, align 8, !dbg !155
  %4 = load i32, i32* %line_number.addr, align 4, !dbg !155
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 538970405, i8* %3, i32 %4) #4, !dbg !155
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !156
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !156
  call void @llvm.va_end(i8* %arraydecay34), !dbg !156
  ret void, !dbg !157
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_bios_warning(i8* %module_name, i32 %line_number, i8* %format, ...) #0 !dbg !158 {
entry:
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !159, metadata !DIExpression()), !dbg !160
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !161, metadata !DIExpression()), !dbg !162
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %arg_list, metadata !165, metadata !DIExpression()), !dbg !166
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !167
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !168
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !168
  call void @llvm.va_start(i8* %arraydecay1), !dbg !168
  %0 = load i8*, i8** %format.addr, align 8, !dbg !169
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !170
  call void @acpi_os_vprintf(i8* %0, %struct.__va_list_tag* %arraydecay2) #4, !dbg !171
  %1 = load i8*, i8** %module_name.addr, align 8, !dbg !172
  %2 = load i32, i32* %line_number.addr, align 4, !dbg !172
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 538970405, i8* %1, i32 %2) #4, !dbg !172
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg_list, i64 0, i64 0, !dbg !173
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !173
  call void @llvm.va_end(i8* %arraydecay34), !dbg !173
  ret void, !dbg !174
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utxferror.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!8 = distinct !DISubprogram(name: "acpi_error", scope: !1, file: !1, line: 35, type: !9, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !14, !11, null}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DILocalVariable(name: "module_name", arg: 1, scope: !8, file: !1, line: 35, type: !11)
!20 = !DILocation(line: 35, column: 24, scope: !8)
!21 = !DILocalVariable(name: "line_number", arg: 2, scope: !8, file: !1, line: 35, type: !14)
!22 = !DILocation(line: 35, column: 41, scope: !8)
!23 = !DILocalVariable(name: "format", arg: 3, scope: !8, file: !1, line: 35, type: !11)
!24 = !DILocation(line: 35, column: 66, scope: !8)
!25 = !DILocalVariable(name: "arg_list", scope: !8, file: !1, line: 37, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !27, line: 99, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !27, line: 40, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 37, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 192, elements: !38)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 37, size: 192, elements: !32)
!32 = !{!33, !34, !35, !37}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !31, file: !1, line: 37, baseType: !18, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !31, file: !1, line: 37, baseType: !18, size: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !31, file: !1, line: 37, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !31, file: !1, line: 37, baseType: !36, size: 64, offset: 128)
!38 = !{!39}
!39 = !DISubrange(count: 1)
!40 = !DILocation(line: 37, column: 10, scope: !8)
!41 = !DILocation(line: 40, column: 2, scope: !8)
!42 = !DILocation(line: 42, column: 2, scope: !8)
!43 = !DILocation(line: 43, column: 18, scope: !8)
!44 = !DILocation(line: 43, column: 26, scope: !8)
!45 = !DILocation(line: 43, column: 2, scope: !8)
!46 = !DILocation(line: 44, column: 2, scope: !8)
!47 = !DILocation(line: 45, column: 2, scope: !8)
!48 = !DILocation(line: 48, column: 1, scope: !8)
!49 = distinct !DISubprogram(name: "acpi_exception", scope: !1, file: !1, line: 68, type: !50, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !11, !14, !52, !11, null}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !53, line: 421, baseType: !14)
!53 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!54 = !DILocalVariable(name: "module_name", arg: 1, scope: !49, file: !1, line: 68, type: !11)
!55 = !DILocation(line: 68, column: 28, scope: !49)
!56 = !DILocalVariable(name: "line_number", arg: 2, scope: !49, file: !1, line: 69, type: !14)
!57 = !DILocation(line: 69, column: 13, scope: !49)
!58 = !DILocalVariable(name: "status", arg: 3, scope: !49, file: !1, line: 69, type: !52)
!59 = !DILocation(line: 69, column: 38, scope: !49)
!60 = !DILocalVariable(name: "format", arg: 4, scope: !49, file: !1, line: 69, type: !11)
!61 = !DILocation(line: 69, column: 58, scope: !49)
!62 = !DILocalVariable(name: "arg_list", scope: !49, file: !1, line: 71, type: !26)
!63 = !DILocation(line: 71, column: 10, scope: !49)
!64 = !DILocation(line: 77, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !49, file: !1, line: 77, column: 6)
!66 = !DILocation(line: 77, column: 6, scope: !49)
!67 = !DILocation(line: 78, column: 3, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 77, column: 28)
!69 = !DILocation(line: 80, column: 2, scope: !68)
!70 = !DILocation(line: 82, column: 33, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !1, line: 80, column: 9)
!72 = !DILocation(line: 82, column: 11, scope: !71)
!73 = !DILocation(line: 81, column: 3, scope: !71)
!74 = !DILocation(line: 85, column: 2, scope: !49)
!75 = !DILocation(line: 86, column: 18, scope: !49)
!76 = !DILocation(line: 86, column: 26, scope: !49)
!77 = !DILocation(line: 86, column: 2, scope: !49)
!78 = !DILocation(line: 87, column: 2, scope: !49)
!79 = !DILocation(line: 88, column: 2, scope: !49)
!80 = !DILocation(line: 91, column: 1, scope: !49)
!81 = distinct !DISubprogram(name: "acpi_warning", scope: !1, file: !1, line: 109, type: !9, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!82 = !DILocalVariable(name: "module_name", arg: 1, scope: !81, file: !1, line: 109, type: !11)
!83 = !DILocation(line: 109, column: 26, scope: !81)
!84 = !DILocalVariable(name: "line_number", arg: 2, scope: !81, file: !1, line: 109, type: !14)
!85 = !DILocation(line: 109, column: 43, scope: !81)
!86 = !DILocalVariable(name: "format", arg: 3, scope: !81, file: !1, line: 109, type: !11)
!87 = !DILocation(line: 109, column: 68, scope: !81)
!88 = !DILocalVariable(name: "arg_list", scope: !81, file: !1, line: 111, type: !26)
!89 = !DILocation(line: 111, column: 10, scope: !81)
!90 = !DILocation(line: 114, column: 2, scope: !81)
!91 = !DILocation(line: 116, column: 2, scope: !81)
!92 = !DILocation(line: 117, column: 18, scope: !81)
!93 = !DILocation(line: 117, column: 26, scope: !81)
!94 = !DILocation(line: 117, column: 2, scope: !81)
!95 = !DILocation(line: 118, column: 2, scope: !81)
!96 = !DILocation(line: 119, column: 2, scope: !81)
!97 = !DILocation(line: 122, column: 1, scope: !81)
!98 = distinct !DISubprogram(name: "acpi_info", scope: !1, file: !1, line: 138, type: !99, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !11, null}
!101 = !DILocalVariable(name: "format", arg: 1, scope: !98, file: !1, line: 138, type: !11)
!102 = !DILocation(line: 138, column: 52, scope: !98)
!103 = !DILocalVariable(name: "arg_list", scope: !98, file: !1, line: 140, type: !26)
!104 = !DILocation(line: 140, column: 10, scope: !98)
!105 = !DILocation(line: 143, column: 2, scope: !98)
!106 = !DILocation(line: 145, column: 2, scope: !98)
!107 = !DILocation(line: 146, column: 18, scope: !98)
!108 = !DILocation(line: 146, column: 26, scope: !98)
!109 = !DILocation(line: 146, column: 2, scope: !98)
!110 = !DILocation(line: 147, column: 2, scope: !98)
!111 = !DILocation(line: 148, column: 2, scope: !98)
!112 = !DILocation(line: 151, column: 1, scope: !98)
!113 = distinct !DISubprogram(name: "acpi_bios_error", scope: !1, file: !1, line: 170, type: !9, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!114 = !DILocalVariable(name: "module_name", arg: 1, scope: !113, file: !1, line: 170, type: !11)
!115 = !DILocation(line: 170, column: 29, scope: !113)
!116 = !DILocalVariable(name: "line_number", arg: 2, scope: !113, file: !1, line: 171, type: !14)
!117 = !DILocation(line: 171, column: 7, scope: !113)
!118 = !DILocalVariable(name: "format", arg: 3, scope: !113, file: !1, line: 171, type: !11)
!119 = !DILocation(line: 171, column: 32, scope: !113)
!120 = !DILocalVariable(name: "arg_list", scope: !113, file: !1, line: 173, type: !26)
!121 = !DILocation(line: 173, column: 10, scope: !113)
!122 = !DILocation(line: 176, column: 2, scope: !113)
!123 = !DILocation(line: 178, column: 2, scope: !113)
!124 = !DILocation(line: 179, column: 18, scope: !113)
!125 = !DILocation(line: 179, column: 26, scope: !113)
!126 = !DILocation(line: 179, column: 2, scope: !113)
!127 = !DILocation(line: 180, column: 2, scope: !113)
!128 = !DILocation(line: 181, column: 2, scope: !113)
!129 = !DILocation(line: 184, column: 1, scope: !113)
!130 = distinct !DISubprogram(name: "acpi_bios_exception", scope: !1, file: !1, line: 204, type: !50, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!131 = !DILocalVariable(name: "module_name", arg: 1, scope: !130, file: !1, line: 204, type: !11)
!132 = !DILocation(line: 204, column: 33, scope: !130)
!133 = !DILocalVariable(name: "line_number", arg: 2, scope: !130, file: !1, line: 205, type: !14)
!134 = !DILocation(line: 205, column: 11, scope: !130)
!135 = !DILocalVariable(name: "status", arg: 3, scope: !130, file: !1, line: 206, type: !52)
!136 = !DILocation(line: 206, column: 19, scope: !130)
!137 = !DILocalVariable(name: "format", arg: 4, scope: !130, file: !1, line: 206, type: !11)
!138 = !DILocation(line: 206, column: 39, scope: !130)
!139 = !DILocalVariable(name: "arg_list", scope: !130, file: !1, line: 208, type: !26)
!140 = !DILocation(line: 208, column: 10, scope: !130)
!141 = !DILocation(line: 214, column: 6, scope: !142)
!142 = distinct !DILexicalBlock(scope: !130, file: !1, line: 214, column: 6)
!143 = !DILocation(line: 214, column: 6, scope: !130)
!144 = !DILocation(line: 215, column: 3, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 214, column: 28)
!146 = !DILocation(line: 217, column: 2, scope: !145)
!147 = !DILocation(line: 219, column: 33, scope: !148)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 217, column: 9)
!149 = !DILocation(line: 219, column: 11, scope: !148)
!150 = !DILocation(line: 218, column: 3, scope: !148)
!151 = !DILocation(line: 222, column: 2, scope: !130)
!152 = !DILocation(line: 223, column: 18, scope: !130)
!153 = !DILocation(line: 223, column: 26, scope: !130)
!154 = !DILocation(line: 223, column: 2, scope: !130)
!155 = !DILocation(line: 224, column: 2, scope: !130)
!156 = !DILocation(line: 225, column: 2, scope: !130)
!157 = !DILocation(line: 228, column: 1, scope: !130)
!158 = distinct !DISubprogram(name: "acpi_bios_warning", scope: !1, file: !1, line: 247, type: !9, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!159 = !DILocalVariable(name: "module_name", arg: 1, scope: !158, file: !1, line: 247, type: !11)
!160 = !DILocation(line: 247, column: 31, scope: !158)
!161 = !DILocalVariable(name: "line_number", arg: 2, scope: !158, file: !1, line: 248, type: !14)
!162 = !DILocation(line: 248, column: 9, scope: !158)
!163 = !DILocalVariable(name: "format", arg: 3, scope: !158, file: !1, line: 248, type: !11)
!164 = !DILocation(line: 248, column: 34, scope: !158)
!165 = !DILocalVariable(name: "arg_list", scope: !158, file: !1, line: 250, type: !26)
!166 = !DILocation(line: 250, column: 10, scope: !158)
!167 = !DILocation(line: 253, column: 2, scope: !158)
!168 = !DILocation(line: 255, column: 2, scope: !158)
!169 = !DILocation(line: 256, column: 18, scope: !158)
!170 = !DILocation(line: 256, column: 26, scope: !158)
!171 = !DILocation(line: 256, column: 2, scope: !158)
!172 = !DILocation(line: 257, column: 2, scope: !158)
!173 = !DILocation(line: 258, column: 2, scope: !158)
!174 = !DILocation(line: 261, column: 1, scope: !158)
