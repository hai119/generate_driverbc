; ModuleID = '../bcout/drivers/acpi/acpica/evxfevnt.llvm.bc'
source_filename = "drivers/acpi/acpica/evxfevnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_fixed_event_info = type { i8, i8, i16, i16 }
%struct.acpi_fixed_event_handler = type { i32 (i8*)*, i8* }

@acpi_gbl_fadt_index = external dso_local global i32, align 4
@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@_acpi_module_name = internal constant [9 x i8] c"evxfevnt\00", align 1, !dbg !0
@.str = private unnamed_addr constant [34 x i8] c"Could not transition to ACPI mode\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Platform took > %d00 usec to enter ACPI mode\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Hardware did not enter ACPI mode\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Could not exit ACPI mode to legacy mode\00", align 1
@acpi_gbl_fixed_event_info = external dso_local global [5 x %struct.acpi_fixed_event_info], align 16
@.str.4 = private unnamed_addr constant [26 x i8] c"Could not enable %s event\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Could not disable %s events\00", align 1
@acpi_gbl_fixed_event_handlers = external dso_local global [5 x %struct.acpi_fixed_event_handler], align 16

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_enable() #0 !dbg !25 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %retry = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %retry, metadata !30, metadata !DIExpression()), !dbg !32
  %0 = load i32, i32* @acpi_gbl_fadt_index, align 4, !dbg !33
  %cmp = icmp eq i32 %0, -1, !dbg !35
  br i1 %cmp, label %if.then, label %if.end, !dbg !36

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval, align 4, !dbg !37
  br label %return, !dbg !37

if.end:                                           ; preds = %entry
  %1 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !39
  %tobool = icmp ne i8 %1, 0, !dbg !39
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !41

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !42
  br label %return, !dbg !42

if.end2:                                          ; preds = %if.end
  %call = call i32 @acpi_hw_get_mode() #3, !dbg !44
  %cmp3 = icmp eq i32 %call, 1, !dbg !46
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !47

if.then4:                                         ; preds = %if.end2
  store i32 0, i32* %retval, align 4, !dbg !48
  br label %return, !dbg !48

if.end5:                                          ; preds = %if.end2
  %call6 = call i32 @acpi_hw_set_mode(i32 1) #3, !dbg !50
  store i32 %call6, i32* %status, align 4, !dbg !51
  %2 = load i32, i32* %status, align 4, !dbg !52
  %tobool7 = icmp ne i32 %2, 0, !dbg !52
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !54

if.then8:                                         ; preds = %if.end5
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #3, !dbg !55
  %3 = load i32, i32* %status, align 4, !dbg !57
  store i32 %3, i32* %retval, align 4, !dbg !57
  br label %return, !dbg !57

if.end9:                                          ; preds = %if.end5
  store i32 0, i32* %retry, align 4, !dbg !58
  br label %for.cond, !dbg !60

for.cond:                                         ; preds = %for.inc, %if.end9
  %4 = load i32, i32* %retry, align 4, !dbg !61
  %cmp10 = icmp slt i32 %4, 30000, !dbg !63
  br i1 %cmp10, label %for.body, label %for.end, !dbg !64

for.body:                                         ; preds = %for.cond
  %call11 = call i32 @acpi_hw_get_mode() #3, !dbg !65
  %cmp12 = icmp eq i32 %call11, 1, !dbg !68
  br i1 %cmp12, label %if.then13, label %if.end17, !dbg !69

if.then13:                                        ; preds = %for.body
  %5 = load i32, i32* %retry, align 4, !dbg !70
  %cmp14 = icmp ne i32 %5, 0, !dbg !73
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !74

if.then15:                                        ; preds = %if.then13
  %6 = load i32, i32* %retry, align 4, !dbg !75
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 72, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %6) #3, !dbg !75
  br label %if.end16, !dbg !75

if.end16:                                         ; preds = %if.then15, %if.then13
  store i32 0, i32* %retval, align 4, !dbg !76
  br label %return, !dbg !76

if.end17:                                         ; preds = %for.body
  call void @acpi_os_stall(i32 100) #3, !dbg !77
  br label %for.inc, !dbg !78

for.inc:                                          ; preds = %if.end17
  %7 = load i32, i32* %retry, align 4, !dbg !79
  %inc = add i32 %7, 1, !dbg !79
  store i32 %inc, i32* %retry, align 4, !dbg !79
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !83
  store i32 22, i32* %retval, align 4, !dbg !84
  br label %return, !dbg !84

return:                                           ; preds = %for.end, %if.end16, %if.then8, %if.then4, %if.then1, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !85
  ret i32 %8, !dbg !85
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_get_mode() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_set_mode(i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_stall(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_disable() #0 !dbg !86 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !87, metadata !DIExpression()), !dbg !88
  store i32 0, i32* %status, align 4, !dbg !88
  %0 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !89
  %tobool = icmp ne i8 %0, 0, !dbg !89
  br i1 %tobool, label %if.then, label %if.end, !dbg !91

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !92
  br label %return, !dbg !92

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_hw_get_mode() #3, !dbg !94
  %cmp = icmp eq i32 %call, 2, !dbg !96
  br i1 %cmp, label %if.then1, label %if.else, !dbg !97

if.then1:                                         ; preds = %if.end
  br label %if.end6, !dbg !98

if.else:                                          ; preds = %if.end
  %call2 = call i32 @acpi_hw_set_mode(i32 2) #3, !dbg !100
  store i32 %call2, i32* %status, align 4, !dbg !102
  %1 = load i32, i32* %status, align 4, !dbg !103
  %tobool3 = icmp ne i32 %1, 0, !dbg !103
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !105

if.then4:                                         ; preds = %if.else
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !106
  %2 = load i32, i32* %status, align 4, !dbg !108
  store i32 %2, i32* %retval, align 4, !dbg !108
  br label %return, !dbg !108

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then1
  %3 = load i32, i32* %status, align 4, !dbg !109
  store i32 %3, i32* %retval, align 4, !dbg !109
  br label %return, !dbg !109

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !110
  ret i32 %4, !dbg !110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_enable_event(i32 %event, i32 %flags) #0 !dbg !111 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %status, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 0, i32* %status, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata i32* %value, metadata !120, metadata !DIExpression()), !dbg !121
  %0 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !122
  %tobool = icmp ne i8 %0, 0, !dbg !122
  br i1 %tobool, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !125
  br label %return, !dbg !125

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %event.addr, align 4, !dbg !127
  %cmp = icmp ugt i32 %1, 4, !dbg !129
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !130

if.then1:                                         ; preds = %if.end
  store i32 4097, i32* %retval, align 4, !dbg !131
  br label %return, !dbg !131

if.end2:                                          ; preds = %if.end
  %2 = load i32, i32* %event.addr, align 4, !dbg !133
  %idxprom = zext i32 %2 to i64, !dbg !134
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom, !dbg !134
  %enable_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx, i32 0, i32 1, !dbg !135
  %3 = load i8, i8* %enable_register_id, align 1, !dbg !135
  %conv = zext i8 %3 to i32, !dbg !134
  %call = call i32 @acpi_write_bit_register(i32 %conv, i32 1) #3, !dbg !136
  store i32 %call, i32* %status, align 4, !dbg !137
  %4 = load i32, i32* %status, align 4, !dbg !138
  %tobool3 = icmp ne i32 %4, 0, !dbg !138
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !140

if.then4:                                         ; preds = %if.end2
  %5 = load i32, i32* %status, align 4, !dbg !141
  store i32 %5, i32* %retval, align 4, !dbg !141
  br label %return, !dbg !141

if.end5:                                          ; preds = %if.end2
  %6 = load i32, i32* %event.addr, align 4, !dbg !143
  %idxprom6 = zext i32 %6 to i64, !dbg !144
  %arrayidx7 = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom6, !dbg !144
  %enable_register_id8 = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx7, i32 0, i32 1, !dbg !145
  %7 = load i8, i8* %enable_register_id8, align 1, !dbg !145
  %conv9 = zext i8 %7 to i32, !dbg !144
  %call10 = call i32 @acpi_read_bit_register(i32 %conv9, i32* %value) #3, !dbg !146
  store i32 %call10, i32* %status, align 4, !dbg !147
  %8 = load i32, i32* %status, align 4, !dbg !148
  %tobool11 = icmp ne i32 %8, 0, !dbg !148
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !150

if.then12:                                        ; preds = %if.end5
  %9 = load i32, i32* %status, align 4, !dbg !151
  store i32 %9, i32* %retval, align 4, !dbg !151
  br label %return, !dbg !151

if.end13:                                         ; preds = %if.end5
  %10 = load i32, i32* %value, align 4, !dbg !153
  %cmp14 = icmp ne i32 %10, 1, !dbg !155
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !156

if.then16:                                        ; preds = %if.end13
  %11 = load i32, i32* %event.addr, align 4, !dbg !157
  %call17 = call i8* @acpi_ut_get_event_name(i32 %11) #3, !dbg !157
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 182, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %call17) #3, !dbg !157
  store i32 22, i32* %retval, align 4, !dbg !159
  br label %return, !dbg !159

if.end18:                                         ; preds = %if.end13
  %12 = load i32, i32* %status, align 4, !dbg !160
  store i32 %12, i32* %retval, align 4, !dbg !160
  br label %return, !dbg !160

return:                                           ; preds = %if.end18, %if.then16, %if.then12, %if.then4, %if.then1, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !161
  ret i32 %13, !dbg !161
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_write_bit_register(i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_read_bit_register(i32, i32*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_event_name(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_disable_event(i32 %event, i32 %flags) #0 !dbg !162 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !163, metadata !DIExpression()), !dbg !164
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i32* %status, metadata !167, metadata !DIExpression()), !dbg !168
  store i32 0, i32* %status, align 4, !dbg !168
  call void @llvm.dbg.declare(metadata i32* %value, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !171
  %tobool = icmp ne i8 %0, 0, !dbg !171
  br i1 %tobool, label %if.then, label %if.end, !dbg !173

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !174
  br label %return, !dbg !174

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %event.addr, align 4, !dbg !176
  %cmp = icmp ugt i32 %1, 4, !dbg !178
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !179

if.then1:                                         ; preds = %if.end
  store i32 4097, i32* %retval, align 4, !dbg !180
  br label %return, !dbg !180

if.end2:                                          ; preds = %if.end
  %2 = load i32, i32* %event.addr, align 4, !dbg !182
  %idxprom = zext i32 %2 to i64, !dbg !183
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom, !dbg !183
  %enable_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx, i32 0, i32 1, !dbg !184
  %3 = load i8, i8* %enable_register_id, align 1, !dbg !184
  %conv = zext i8 %3 to i32, !dbg !183
  %call = call i32 @acpi_write_bit_register(i32 %conv, i32 0) #3, !dbg !185
  store i32 %call, i32* %status, align 4, !dbg !186
  %4 = load i32, i32* %status, align 4, !dbg !187
  %tobool3 = icmp ne i32 %4, 0, !dbg !187
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !189

if.then4:                                         ; preds = %if.end2
  %5 = load i32, i32* %status, align 4, !dbg !190
  store i32 %5, i32* %retval, align 4, !dbg !190
  br label %return, !dbg !190

if.end5:                                          ; preds = %if.end2
  %6 = load i32, i32* %event.addr, align 4, !dbg !192
  %idxprom6 = zext i32 %6 to i64, !dbg !193
  %arrayidx7 = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom6, !dbg !193
  %enable_register_id8 = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx7, i32 0, i32 1, !dbg !194
  %7 = load i8, i8* %enable_register_id8, align 1, !dbg !194
  %conv9 = zext i8 %7 to i32, !dbg !193
  %call10 = call i32 @acpi_read_bit_register(i32 %conv9, i32* %value) #3, !dbg !195
  store i32 %call10, i32* %status, align 4, !dbg !196
  %8 = load i32, i32* %status, align 4, !dbg !197
  %tobool11 = icmp ne i32 %8, 0, !dbg !197
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !199

if.then12:                                        ; preds = %if.end5
  %9 = load i32, i32* %status, align 4, !dbg !200
  store i32 %9, i32* %retval, align 4, !dbg !200
  br label %return, !dbg !200

if.end13:                                         ; preds = %if.end5
  %10 = load i32, i32* %value, align 4, !dbg !202
  %cmp14 = icmp ne i32 %10, 0, !dbg !204
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !205

if.then16:                                        ; preds = %if.end13
  %11 = load i32, i32* %event.addr, align 4, !dbg !206
  %call17 = call i8* @acpi_ut_get_event_name(i32 %11) #3, !dbg !206
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 243, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %call17) #3, !dbg !206
  store i32 22, i32* %retval, align 4, !dbg !208
  br label %return, !dbg !208

if.end18:                                         ; preds = %if.end13
  %12 = load i32, i32* %status, align 4, !dbg !209
  store i32 %12, i32* %retval, align 4, !dbg !209
  br label %return, !dbg !209

return:                                           ; preds = %if.end18, %if.then16, %if.then12, %if.then4, %if.then1, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !210
  ret i32 %13, !dbg !210
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_clear_event(i32 %event) #0 !dbg !211 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i32* %status, metadata !216, metadata !DIExpression()), !dbg !217
  store i32 0, i32* %status, align 4, !dbg !217
  %0 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !218
  %tobool = icmp ne i8 %0, 0, !dbg !218
  br i1 %tobool, label %if.then, label %if.end, !dbg !220

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !221
  br label %return, !dbg !221

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %event.addr, align 4, !dbg !223
  %cmp = icmp ugt i32 %1, 4, !dbg !225
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !226

if.then1:                                         ; preds = %if.end
  store i32 4097, i32* %retval, align 4, !dbg !227
  br label %return, !dbg !227

if.end2:                                          ; preds = %if.end
  %2 = load i32, i32* %event.addr, align 4, !dbg !229
  %idxprom = zext i32 %2 to i64, !dbg !230
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom, !dbg !230
  %status_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx, i32 0, i32 0, !dbg !231
  %3 = load i8, i8* %status_register_id, align 2, !dbg !231
  %conv = zext i8 %3 to i32, !dbg !230
  %call = call i32 @acpi_write_bit_register(i32 %conv, i32 1) #3, !dbg !232
  store i32 %call, i32* %status, align 4, !dbg !233
  %4 = load i32, i32* %status, align 4, !dbg !234
  store i32 %4, i32* %retval, align 4, !dbg !234
  br label %return, !dbg !234

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !235
  ret i32 %5, !dbg !235
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_event_status(i32 %event, i32* %event_status) #0 !dbg !236 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %event_status.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %local_event_status = alloca i32, align 4
  %in_byte = alloca i32, align 4
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !240, metadata !DIExpression()), !dbg !241
  store i32* %event_status, i32** %event_status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %event_status.addr, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %status, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata i32* %local_event_status, metadata !246, metadata !DIExpression()), !dbg !247
  store i32 0, i32* %local_event_status, align 4, !dbg !247
  call void @llvm.dbg.declare(metadata i32* %in_byte, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load i32*, i32** %event_status.addr, align 8, !dbg !250
  %tobool = icmp ne i32* %0, null, !dbg !250
  br i1 %tobool, label %if.end, label %if.then, !dbg !252

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !253
  br label %return, !dbg !253

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %event.addr, align 4, !dbg !255
  %cmp = icmp ugt i32 %1, 4, !dbg !257
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !258

if.then1:                                         ; preds = %if.end
  store i32 4097, i32* %retval, align 4, !dbg !259
  br label %return, !dbg !259

if.end2:                                          ; preds = %if.end
  %2 = load i32, i32* %event.addr, align 4, !dbg !261
  %idxprom = zext i32 %2 to i64, !dbg !263
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom, !dbg !263
  %handler = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx, i32 0, i32 0, !dbg !264
  %3 = load i32 (i8*)*, i32 (i8*)** %handler, align 16, !dbg !264
  %tobool3 = icmp ne i32 (i8*)* %3, null, !dbg !263
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !265

if.then4:                                         ; preds = %if.end2
  %4 = load i32, i32* %local_event_status, align 4, !dbg !266
  %or = or i32 %4, 16, !dbg !266
  store i32 %or, i32* %local_event_status, align 4, !dbg !266
  br label %if.end5, !dbg !268

if.end5:                                          ; preds = %if.then4, %if.end2
  %5 = load i32, i32* %event.addr, align 4, !dbg !269
  %idxprom6 = zext i32 %5 to i64, !dbg !270
  %arrayidx7 = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom6, !dbg !270
  %enable_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx7, i32 0, i32 1, !dbg !271
  %6 = load i8, i8* %enable_register_id, align 1, !dbg !271
  %conv = zext i8 %6 to i32, !dbg !270
  %call = call i32 @acpi_read_bit_register(i32 %conv, i32* %in_byte) #3, !dbg !272
  store i32 %call, i32* %status, align 4, !dbg !273
  %7 = load i32, i32* %status, align 4, !dbg !274
  %tobool8 = icmp ne i32 %7, 0, !dbg !274
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !276

if.then9:                                         ; preds = %if.end5
  %8 = load i32, i32* %status, align 4, !dbg !277
  store i32 %8, i32* %retval, align 4, !dbg !277
  br label %return, !dbg !277

if.end10:                                         ; preds = %if.end5
  %9 = load i32, i32* %in_byte, align 4, !dbg !279
  %tobool11 = icmp ne i32 %9, 0, !dbg !279
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !281

if.then12:                                        ; preds = %if.end10
  %10 = load i32, i32* %local_event_status, align 4, !dbg !282
  %or13 = or i32 %10, 9, !dbg !282
  store i32 %or13, i32* %local_event_status, align 4, !dbg !282
  br label %if.end14, !dbg !284

if.end14:                                         ; preds = %if.then12, %if.end10
  %11 = load i32, i32* %event.addr, align 4, !dbg !285
  %idxprom15 = zext i32 %11 to i64, !dbg !286
  %arrayidx16 = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom15, !dbg !286
  %status_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx16, i32 0, i32 0, !dbg !287
  %12 = load i8, i8* %status_register_id, align 2, !dbg !287
  %conv17 = zext i8 %12 to i32, !dbg !286
  %call18 = call i32 @acpi_read_bit_register(i32 %conv17, i32* %in_byte) #3, !dbg !288
  store i32 %call18, i32* %status, align 4, !dbg !289
  %13 = load i32, i32* %status, align 4, !dbg !290
  %tobool19 = icmp ne i32 %13, 0, !dbg !290
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !292

if.then20:                                        ; preds = %if.end14
  %14 = load i32, i32* %status, align 4, !dbg !293
  store i32 %14, i32* %retval, align 4, !dbg !293
  br label %return, !dbg !293

if.end21:                                         ; preds = %if.end14
  %15 = load i32, i32* %in_byte, align 4, !dbg !295
  %tobool22 = icmp ne i32 %15, 0, !dbg !295
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !297

if.then23:                                        ; preds = %if.end21
  %16 = load i32, i32* %local_event_status, align 4, !dbg !298
  %or24 = or i32 %16, 4, !dbg !298
  store i32 %or24, i32* %local_event_status, align 4, !dbg !298
  br label %if.end25, !dbg !300

if.end25:                                         ; preds = %if.then23, %if.end21
  %17 = load i32, i32* %local_event_status, align 4, !dbg !301
  %18 = load i32*, i32** %event_status.addr, align 8, !dbg !302
  store i32 %17, i32* %18, align 4, !dbg !303
  store i32 0, i32* %retval, align 4, !dbg !304
  br label %return, !dbg !304

return:                                           ; preds = %if.end25, %if.then20, %if.then9, %if.then1, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !305
  ret i32 %19, !dbg !305
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evxfevnt.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_event_status", file: !7, line: 738, baseType: !8)
!14 = !{!0}
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 72, elements: !18)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 9)
!20 = !{i32 7, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"Code Model", i32 2}
!24 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!25 = distinct !DISubprogram(name: "acpi_enable", scope: !3, file: !3, line: 31, type: !26, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!26 = !DISubroutineType(types: !27)
!27 = !{!6}
!28 = !DILocalVariable(name: "status", scope: !25, file: !3, line: 33, type: !6)
!29 = !DILocation(line: 33, column: 14, scope: !25)
!30 = !DILocalVariable(name: "retry", scope: !25, file: !3, line: 34, type: !31)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DILocation(line: 34, column: 6, scope: !25)
!33 = !DILocation(line: 40, column: 6, scope: !34)
!34 = distinct !DILexicalBlock(scope: !25, file: !3, line: 40, column: 6)
!35 = !DILocation(line: 40, column: 26, scope: !34)
!36 = !DILocation(line: 40, column: 6, scope: !25)
!37 = !DILocation(line: 41, column: 3, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !3, line: 40, column: 55)
!39 = !DILocation(line: 46, column: 6, scope: !40)
!40 = distinct !DILexicalBlock(scope: !25, file: !3, line: 46, column: 6)
!41 = !DILocation(line: 46, column: 6, scope: !25)
!42 = !DILocation(line: 47, column: 3, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !3, line: 46, column: 33)
!44 = !DILocation(line: 52, column: 6, scope: !45)
!45 = distinct !DILexicalBlock(scope: !25, file: !3, line: 52, column: 6)
!46 = !DILocation(line: 52, column: 25, scope: !45)
!47 = !DILocation(line: 52, column: 6, scope: !25)
!48 = !DILocation(line: 55, column: 3, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !3, line: 52, column: 48)
!50 = !DILocation(line: 60, column: 11, scope: !25)
!51 = !DILocation(line: 60, column: 9, scope: !25)
!52 = !DILocation(line: 61, column: 6, scope: !53)
!53 = distinct !DILexicalBlock(scope: !25, file: !3, line: 61, column: 6)
!54 = !DILocation(line: 61, column: 6, scope: !25)
!55 = !DILocation(line: 62, column: 3, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !3, line: 61, column: 28)
!57 = !DILocation(line: 64, column: 3, scope: !56)
!58 = !DILocation(line: 69, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !25, file: !3, line: 69, column: 2)
!60 = !DILocation(line: 69, column: 7, scope: !59)
!61 = !DILocation(line: 69, column: 18, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !3, line: 69, column: 2)
!63 = !DILocation(line: 69, column: 24, scope: !62)
!64 = !DILocation(line: 69, column: 2, scope: !59)
!65 = !DILocation(line: 70, column: 7, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 70, column: 7)
!67 = distinct !DILexicalBlock(scope: !62, file: !3, line: 69, column: 42)
!68 = !DILocation(line: 70, column: 26, scope: !66)
!69 = !DILocation(line: 70, column: 7, scope: !67)
!70 = !DILocation(line: 71, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 71, column: 8)
!72 = distinct !DILexicalBlock(scope: !66, file: !3, line: 70, column: 49)
!73 = !DILocation(line: 71, column: 14, scope: !71)
!74 = !DILocation(line: 71, column: 8, scope: !72)
!75 = !DILocation(line: 72, column: 5, scope: !71)
!76 = !DILocation(line: 74, column: 4, scope: !72)
!77 = !DILocation(line: 76, column: 3, scope: !67)
!78 = !DILocation(line: 77, column: 2, scope: !67)
!79 = !DILocation(line: 69, column: 33, scope: !62)
!80 = !DILocation(line: 69, column: 2, scope: !62)
!81 = distinct !{!81, !64, !82}
!82 = !DILocation(line: 77, column: 2, scope: !59)
!83 = !DILocation(line: 79, column: 2, scope: !25)
!84 = !DILocation(line: 80, column: 2, scope: !25)
!85 = !DILocation(line: 81, column: 1, scope: !25)
!86 = distinct !DISubprogram(name: "acpi_disable", scope: !3, file: !3, line: 96, type: !26, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!87 = !DILocalVariable(name: "status", scope: !86, file: !3, line: 98, type: !6)
!88 = !DILocation(line: 98, column: 14, scope: !86)
!89 = !DILocation(line: 104, column: 6, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !3, line: 104, column: 6)
!91 = !DILocation(line: 104, column: 6, scope: !86)
!92 = !DILocation(line: 105, column: 3, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !3, line: 104, column: 33)
!94 = !DILocation(line: 108, column: 6, scope: !95)
!95 = distinct !DILexicalBlock(scope: !86, file: !3, line: 108, column: 6)
!96 = !DILocation(line: 108, column: 25, scope: !95)
!97 = !DILocation(line: 108, column: 6, scope: !86)
!98 = !DILocation(line: 111, column: 2, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !3, line: 108, column: 50)
!100 = !DILocation(line: 114, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !95, file: !3, line: 111, column: 9)
!102 = !DILocation(line: 114, column: 10, scope: !101)
!103 = !DILocation(line: 116, column: 7, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !3, line: 116, column: 7)
!105 = !DILocation(line: 116, column: 7, scope: !101)
!106 = !DILocation(line: 117, column: 4, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 116, column: 29)
!108 = !DILocation(line: 119, column: 4, scope: !107)
!109 = !DILocation(line: 125, column: 2, scope: !86)
!110 = !DILocation(line: 126, column: 1, scope: !86)
!111 = distinct !DISubprogram(name: "acpi_enable_event", scope: !3, file: !3, line: 142, type: !112, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!112 = !DISubroutineType(types: !113)
!113 = !{!6, !8, !8}
!114 = !DILocalVariable(name: "event", arg: 1, scope: !111, file: !3, line: 142, type: !8)
!115 = !DILocation(line: 142, column: 35, scope: !111)
!116 = !DILocalVariable(name: "flags", arg: 2, scope: !111, file: !3, line: 142, type: !8)
!117 = !DILocation(line: 142, column: 46, scope: !111)
!118 = !DILocalVariable(name: "status", scope: !111, file: !3, line: 144, type: !6)
!119 = !DILocation(line: 144, column: 14, scope: !111)
!120 = !DILocalVariable(name: "value", scope: !111, file: !3, line: 145, type: !8)
!121 = !DILocation(line: 145, column: 6, scope: !111)
!122 = !DILocation(line: 151, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !3, line: 151, column: 6)
!124 = !DILocation(line: 151, column: 6, scope: !111)
!125 = !DILocation(line: 152, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !3, line: 151, column: 33)
!127 = !DILocation(line: 157, column: 6, scope: !128)
!128 = distinct !DILexicalBlock(scope: !111, file: !3, line: 157, column: 6)
!129 = !DILocation(line: 157, column: 12, scope: !128)
!130 = !DILocation(line: 157, column: 6, scope: !111)
!131 = !DILocation(line: 158, column: 3, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !3, line: 157, column: 30)
!133 = !DILocation(line: 166, column: 56, scope: !111)
!134 = !DILocation(line: 166, column: 30, scope: !111)
!135 = !DILocation(line: 167, column: 9, scope: !111)
!136 = !DILocation(line: 166, column: 6, scope: !111)
!137 = !DILocation(line: 165, column: 9, scope: !111)
!138 = !DILocation(line: 168, column: 6, scope: !139)
!139 = distinct !DILexicalBlock(scope: !111, file: !3, line: 168, column: 6)
!140 = !DILocation(line: 168, column: 6, scope: !111)
!141 = !DILocation(line: 169, column: 3, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !3, line: 168, column: 28)
!143 = !DILocation(line: 175, column: 55, scope: !111)
!144 = !DILocation(line: 175, column: 29, scope: !111)
!145 = !DILocation(line: 176, column: 8, scope: !111)
!146 = !DILocation(line: 175, column: 6, scope: !111)
!147 = !DILocation(line: 174, column: 9, scope: !111)
!148 = !DILocation(line: 177, column: 6, scope: !149)
!149 = distinct !DILexicalBlock(scope: !111, file: !3, line: 177, column: 6)
!150 = !DILocation(line: 177, column: 6, scope: !111)
!151 = !DILocation(line: 178, column: 3, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !3, line: 177, column: 28)
!153 = !DILocation(line: 181, column: 6, scope: !154)
!154 = distinct !DILexicalBlock(scope: !111, file: !3, line: 181, column: 6)
!155 = !DILocation(line: 181, column: 12, scope: !154)
!156 = !DILocation(line: 181, column: 6, scope: !111)
!157 = !DILocation(line: 182, column: 3, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !3, line: 181, column: 18)
!159 = !DILocation(line: 185, column: 3, scope: !158)
!160 = !DILocation(line: 188, column: 2, scope: !111)
!161 = !DILocation(line: 189, column: 1, scope: !111)
!162 = distinct !DISubprogram(name: "acpi_disable_event", scope: !3, file: !3, line: 205, type: !112, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!163 = !DILocalVariable(name: "event", arg: 1, scope: !162, file: !3, line: 205, type: !8)
!164 = !DILocation(line: 205, column: 36, scope: !162)
!165 = !DILocalVariable(name: "flags", arg: 2, scope: !162, file: !3, line: 205, type: !8)
!166 = !DILocation(line: 205, column: 47, scope: !162)
!167 = !DILocalVariable(name: "status", scope: !162, file: !3, line: 207, type: !6)
!168 = !DILocation(line: 207, column: 14, scope: !162)
!169 = !DILocalVariable(name: "value", scope: !162, file: !3, line: 208, type: !8)
!170 = !DILocation(line: 208, column: 6, scope: !162)
!171 = !DILocation(line: 214, column: 6, scope: !172)
!172 = distinct !DILexicalBlock(scope: !162, file: !3, line: 214, column: 6)
!173 = !DILocation(line: 214, column: 6, scope: !162)
!174 = !DILocation(line: 215, column: 3, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !3, line: 214, column: 33)
!176 = !DILocation(line: 220, column: 6, scope: !177)
!177 = distinct !DILexicalBlock(scope: !162, file: !3, line: 220, column: 6)
!178 = !DILocation(line: 220, column: 12, scope: !177)
!179 = !DILocation(line: 220, column: 6, scope: !162)
!180 = !DILocation(line: 221, column: 3, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !3, line: 220, column: 30)
!182 = !DILocation(line: 229, column: 56, scope: !162)
!183 = !DILocation(line: 229, column: 30, scope: !162)
!184 = !DILocation(line: 230, column: 9, scope: !162)
!185 = !DILocation(line: 229, column: 6, scope: !162)
!186 = !DILocation(line: 228, column: 9, scope: !162)
!187 = !DILocation(line: 231, column: 6, scope: !188)
!188 = distinct !DILexicalBlock(scope: !162, file: !3, line: 231, column: 6)
!189 = !DILocation(line: 231, column: 6, scope: !162)
!190 = !DILocation(line: 232, column: 3, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 231, column: 28)
!192 = !DILocation(line: 236, column: 55, scope: !162)
!193 = !DILocation(line: 236, column: 29, scope: !162)
!194 = !DILocation(line: 237, column: 8, scope: !162)
!195 = !DILocation(line: 236, column: 6, scope: !162)
!196 = !DILocation(line: 235, column: 9, scope: !162)
!197 = !DILocation(line: 238, column: 6, scope: !198)
!198 = distinct !DILexicalBlock(scope: !162, file: !3, line: 238, column: 6)
!199 = !DILocation(line: 238, column: 6, scope: !162)
!200 = !DILocation(line: 239, column: 3, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 238, column: 28)
!202 = !DILocation(line: 242, column: 6, scope: !203)
!203 = distinct !DILexicalBlock(scope: !162, file: !3, line: 242, column: 6)
!204 = !DILocation(line: 242, column: 12, scope: !203)
!205 = !DILocation(line: 242, column: 6, scope: !162)
!206 = !DILocation(line: 243, column: 3, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !3, line: 242, column: 18)
!208 = !DILocation(line: 246, column: 3, scope: !207)
!209 = !DILocation(line: 249, column: 2, scope: !162)
!210 = !DILocation(line: 250, column: 1, scope: !162)
!211 = distinct !DISubprogram(name: "acpi_clear_event", scope: !3, file: !3, line: 265, type: !212, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!212 = !DISubroutineType(types: !213)
!213 = !{!6, !8}
!214 = !DILocalVariable(name: "event", arg: 1, scope: !211, file: !3, line: 265, type: !8)
!215 = !DILocation(line: 265, column: 34, scope: !211)
!216 = !DILocalVariable(name: "status", scope: !211, file: !3, line: 267, type: !6)
!217 = !DILocation(line: 267, column: 14, scope: !211)
!218 = !DILocation(line: 273, column: 6, scope: !219)
!219 = distinct !DILexicalBlock(scope: !211, file: !3, line: 273, column: 6)
!220 = !DILocation(line: 273, column: 6, scope: !211)
!221 = !DILocation(line: 274, column: 3, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !3, line: 273, column: 33)
!223 = !DILocation(line: 279, column: 6, scope: !224)
!224 = distinct !DILexicalBlock(scope: !211, file: !3, line: 279, column: 6)
!225 = !DILocation(line: 279, column: 12, scope: !224)
!226 = !DILocation(line: 279, column: 6, scope: !211)
!227 = !DILocation(line: 280, column: 3, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !3, line: 279, column: 30)
!229 = !DILocation(line: 288, column: 56, scope: !211)
!230 = !DILocation(line: 288, column: 30, scope: !211)
!231 = !DILocation(line: 289, column: 9, scope: !211)
!232 = !DILocation(line: 288, column: 6, scope: !211)
!233 = !DILocation(line: 287, column: 9, scope: !211)
!234 = !DILocation(line: 291, column: 2, scope: !211)
!235 = !DILocation(line: 292, column: 1, scope: !211)
!236 = distinct !DISubprogram(name: "acpi_get_event_status", scope: !3, file: !3, line: 309, type: !237, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!237 = !DISubroutineType(types: !238)
!238 = !{!6, !8, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!240 = !DILocalVariable(name: "event", arg: 1, scope: !236, file: !3, line: 309, type: !8)
!241 = !DILocation(line: 309, column: 39, scope: !236)
!242 = !DILocalVariable(name: "event_status", arg: 2, scope: !236, file: !3, line: 309, type: !239)
!243 = !DILocation(line: 309, column: 66, scope: !236)
!244 = !DILocalVariable(name: "status", scope: !236, file: !3, line: 311, type: !6)
!245 = !DILocation(line: 311, column: 14, scope: !236)
!246 = !DILocalVariable(name: "local_event_status", scope: !236, file: !3, line: 312, type: !13)
!247 = !DILocation(line: 312, column: 20, scope: !236)
!248 = !DILocalVariable(name: "in_byte", scope: !236, file: !3, line: 313, type: !8)
!249 = !DILocation(line: 313, column: 6, scope: !236)
!250 = !DILocation(line: 317, column: 7, scope: !251)
!251 = distinct !DILexicalBlock(scope: !236, file: !3, line: 317, column: 6)
!252 = !DILocation(line: 317, column: 6, scope: !236)
!253 = !DILocation(line: 318, column: 3, scope: !254)
!254 = distinct !DILexicalBlock(scope: !251, file: !3, line: 317, column: 21)
!255 = !DILocation(line: 323, column: 6, scope: !256)
!256 = distinct !DILexicalBlock(scope: !236, file: !3, line: 323, column: 6)
!257 = !DILocation(line: 323, column: 12, scope: !256)
!258 = !DILocation(line: 323, column: 6, scope: !236)
!259 = !DILocation(line: 324, column: 3, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !3, line: 323, column: 30)
!261 = !DILocation(line: 329, column: 36, scope: !262)
!262 = distinct !DILexicalBlock(scope: !236, file: !3, line: 329, column: 6)
!263 = !DILocation(line: 329, column: 6, scope: !262)
!264 = !DILocation(line: 329, column: 43, scope: !262)
!265 = !DILocation(line: 329, column: 6, scope: !236)
!266 = !DILocation(line: 330, column: 22, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !3, line: 329, column: 52)
!268 = !DILocation(line: 331, column: 2, scope: !267)
!269 = !DILocation(line: 336, column: 55, scope: !236)
!270 = !DILocation(line: 336, column: 29, scope: !236)
!271 = !DILocation(line: 337, column: 8, scope: !236)
!272 = !DILocation(line: 336, column: 6, scope: !236)
!273 = !DILocation(line: 335, column: 9, scope: !236)
!274 = !DILocation(line: 338, column: 6, scope: !275)
!275 = distinct !DILexicalBlock(scope: !236, file: !3, line: 338, column: 6)
!276 = !DILocation(line: 338, column: 6, scope: !236)
!277 = !DILocation(line: 339, column: 3, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !3, line: 338, column: 28)
!279 = !DILocation(line: 342, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !236, file: !3, line: 342, column: 6)
!281 = !DILocation(line: 342, column: 6, scope: !236)
!282 = !DILocation(line: 343, column: 22, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 342, column: 15)
!284 = !DILocation(line: 345, column: 2, scope: !283)
!285 = !DILocation(line: 350, column: 55, scope: !236)
!286 = !DILocation(line: 350, column: 29, scope: !236)
!287 = !DILocation(line: 351, column: 8, scope: !236)
!288 = !DILocation(line: 350, column: 6, scope: !236)
!289 = !DILocation(line: 349, column: 9, scope: !236)
!290 = !DILocation(line: 352, column: 6, scope: !291)
!291 = distinct !DILexicalBlock(scope: !236, file: !3, line: 352, column: 6)
!292 = !DILocation(line: 352, column: 6, scope: !236)
!293 = !DILocation(line: 353, column: 3, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !3, line: 352, column: 28)
!295 = !DILocation(line: 356, column: 6, scope: !296)
!296 = distinct !DILexicalBlock(scope: !236, file: !3, line: 356, column: 6)
!297 = !DILocation(line: 356, column: 6, scope: !236)
!298 = !DILocation(line: 357, column: 22, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !3, line: 356, column: 15)
!300 = !DILocation(line: 358, column: 2, scope: !299)
!301 = !DILocation(line: 360, column: 20, scope: !236)
!302 = !DILocation(line: 360, column: 4, scope: !236)
!303 = !DILocation(line: 360, column: 18, scope: !236)
!304 = !DILocation(line: 361, column: 2, scope: !236)
!305 = !DILocation(line: 362, column: 1, scope: !236)
