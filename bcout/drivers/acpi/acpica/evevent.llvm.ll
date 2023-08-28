; ModuleID = '../bcout/drivers/acpi/acpica/evevent.llvm.bc'
source_filename = "drivers/acpi/acpica/evevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_fixed_event_info = type { i8, i8, i16, i16 }
%struct.acpi_fixed_event_handler = type { i32 (i8*)*, i8* }

@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@_acpi_module_name = internal constant [8 x i8] c"evevent\00", align 1, !dbg !0
@.str = private unnamed_addr constant [34 x i8] c"Unable to initialize fixed events\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to initialize general purpose events\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Unable to install System Control Interrupt handler\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to initialize Global Lock handler\00", align 1
@acpi_gbl_events_initialized = external dso_local global i8, align 1
@acpi_gbl_fixed_event_info = external dso_local global [5 x %struct.acpi_fixed_event_info], align 16
@acpi_fixed_event_count = external dso_local global [5 x i32], align 16
@acpi_gbl_global_event_handler = external dso_local global void (i32, i8*, i32, i8*)*, align 8
@acpi_gbl_global_event_handler_context = external dso_local global i8*, align 8
@acpi_gbl_fixed_event_handlers = external dso_local global [5 x %struct.acpi_fixed_event_handler], align 16
@.str.4 = private unnamed_addr constant [58 x i8] c"No installed handler for fixed event - %s (%u), disabling\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_initialize_events() #0 !dbg !25 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !30
  %tobool = icmp ne i8 %0, 0, !dbg !30
  br i1 %tobool, label %if.then, label %if.end, !dbg !32

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !33
  br label %return, !dbg !33

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ev_fixed_event_initialize() #3, !dbg !35
  store i32 %call, i32* %status, align 4, !dbg !36
  %1 = load i32, i32* %status, align 4, !dbg !37
  %tobool1 = icmp ne i32 %1, 0, !dbg !37
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !39

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %status, align 4, !dbg !40
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 53, i32 %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #3, !dbg !40
  %3 = load i32, i32* %status, align 4, !dbg !42
  store i32 %3, i32* %retval, align 4, !dbg !42
  br label %return, !dbg !42

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @acpi_ev_gpe_initialize() #3, !dbg !43
  store i32 %call4, i32* %status, align 4, !dbg !44
  %4 = load i32, i32* %status, align 4, !dbg !45
  %tobool5 = icmp ne i32 %4, 0, !dbg !45
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !47

if.then6:                                         ; preds = %if.end3
  %5 = load i32, i32* %status, align 4, !dbg !48
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 60, i32 %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !48
  %6 = load i32, i32* %status, align 4, !dbg !50
  store i32 %6, i32* %retval, align 4, !dbg !50
  br label %return, !dbg !50

if.end7:                                          ; preds = %if.end3
  %7 = load i32, i32* %status, align 4, !dbg !51
  store i32 %7, i32* %retval, align 4, !dbg !51
  br label %return, !dbg !51

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !52
  ret i32 %8, !dbg !52
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ev_fixed_event_initialize() #0 !dbg !53 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %status, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 0, i32* %i, align 4, !dbg !58
  br label %for.cond, !dbg !60

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !61
  %cmp = icmp ult i32 %0, 5, !dbg !63
  br i1 %cmp, label %for.body, label %for.end, !dbg !64

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !65
  %idxprom = zext i32 %1 to i64, !dbg !67
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom, !dbg !67
  %handler = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx, i32 0, i32 0, !dbg !68
  store i32 (i8*)* null, i32 (i8*)** %handler, align 16, !dbg !69
  %2 = load i32, i32* %i, align 4, !dbg !70
  %idxprom1 = zext i32 %2 to i64, !dbg !71
  %arrayidx2 = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom1, !dbg !71
  %context = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx2, i32 0, i32 1, !dbg !72
  store i8* null, i8** %context, align 8, !dbg !73
  %3 = load i32, i32* %i, align 4, !dbg !74
  %idxprom3 = zext i32 %3 to i64, !dbg !76
  %arrayidx4 = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom3, !dbg !76
  %enable_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx4, i32 0, i32 1, !dbg !77
  %4 = load i8, i8* %enable_register_id, align 1, !dbg !77
  %conv = zext i8 %4 to i32, !dbg !76
  %cmp5 = icmp ne i32 %conv, 255, !dbg !78
  br i1 %cmp5, label %if.then, label %if.end12, !dbg !79

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !80
  %idxprom7 = zext i32 %5 to i64, !dbg !82
  %arrayidx8 = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom7, !dbg !82
  %enable_register_id9 = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx8, i32 0, i32 1, !dbg !83
  %6 = load i8, i8* %enable_register_id9, align 1, !dbg !83
  %conv10 = zext i8 %6 to i32, !dbg !82
  %call = call i32 @acpi_write_bit_register(i32 %conv10, i32 0) #3, !dbg !84
  store i32 %call, i32* %status, align 4, !dbg !85
  %7 = load i32, i32* %status, align 4, !dbg !86
  %tobool = icmp ne i32 %7, 0, !dbg !86
  br i1 %tobool, label %if.then11, label %if.end, !dbg !88

if.then11:                                        ; preds = %if.then
  %8 = load i32, i32* %status, align 4, !dbg !89
  store i32 %8, i32* %retval, align 4, !dbg !91
  br label %return, !dbg !91

if.end:                                           ; preds = %if.then
  br label %if.end12, !dbg !92

if.end12:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !93

for.inc:                                          ; preds = %if.end12
  %9 = load i32, i32* %i, align 4, !dbg !94
  %inc = add i32 %9, 1, !dbg !94
  store i32 %inc, i32* %i, align 4, !dbg !94
  br label %for.cond, !dbg !95, !llvm.loop !96

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !98
  br label %return, !dbg !98

return:                                           ; preds = %for.end, %if.then11
  %10 = load i32, i32* %retval, align 4, !dbg !99
  ret i32 %10, !dbg !99
}

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_gpe_initialize() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_install_xrupt_handlers() #0 !dbg !100 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !103
  %tobool = icmp ne i8 %0, 0, !dbg !103
  br i1 %tobool, label %if.then, label %if.end, !dbg !105

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !106
  br label %return, !dbg !106

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ev_install_sci_handler() #3, !dbg !108
  store i32 %call, i32* %status, align 4, !dbg !109
  %1 = load i32, i32* %status, align 4, !dbg !110
  %tobool1 = icmp ne i32 %1, 0, !dbg !110
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !112

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %status, align 4, !dbg !113
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 96, i32 %2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !113
  %3 = load i32, i32* %status, align 4, !dbg !115
  store i32 %3, i32* %retval, align 4, !dbg !115
  br label %return, !dbg !115

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @acpi_ev_init_global_lock_handler() #3, !dbg !116
  store i32 %call4, i32* %status, align 4, !dbg !117
  %4 = load i32, i32* %status, align 4, !dbg !118
  %tobool5 = icmp ne i32 %4, 0, !dbg !118
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !120

if.then6:                                         ; preds = %if.end3
  %5 = load i32, i32* %status, align 4, !dbg !121
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 105, i32 %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !121
  %6 = load i32, i32* %status, align 4, !dbg !123
  store i32 %6, i32* %retval, align 4, !dbg !123
  br label %return, !dbg !123

if.end7:                                          ; preds = %if.end3
  store i8 1, i8* @acpi_gbl_events_initialized, align 1, !dbg !124
  %7 = load i32, i32* %status, align 4, !dbg !125
  store i32 %7, i32* %retval, align 4, !dbg !125
  br label %return, !dbg !125

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !126
  ret i32 %8, !dbg !126
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_install_sci_handler() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_init_global_lock_handler() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_fixed_event_detect() #0 !dbg !127 {
entry:
  %retval = alloca i32, align 4
  %int_status = alloca i32, align 4
  %fixed_status = alloca i32, align 4
  %fixed_enable = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %int_status, metadata !130, metadata !DIExpression()), !dbg !131
  store i32 0, i32* %int_status, align 4, !dbg !131
  call void @llvm.dbg.declare(metadata i32* %fixed_status, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %fixed_enable, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %i, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %status, metadata !138, metadata !DIExpression()), !dbg !139
  %call = call i32 @acpi_hw_register_read(i32 1, i32* %fixed_status) #3, !dbg !140
  store i32 %call, i32* %status, align 4, !dbg !141
  %call1 = call i32 @acpi_hw_register_read(i32 2, i32* %fixed_enable) #3, !dbg !142
  %0 = load i32, i32* %status, align 4, !dbg !143
  %or = or i32 %0, %call1, !dbg !143
  store i32 %or, i32* %status, align 4, !dbg !143
  %1 = load i32, i32* %status, align 4, !dbg !144
  %tobool = icmp ne i32 %1, 0, !dbg !144
  br i1 %tobool, label %if.then, label %if.end, !dbg !146

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %int_status, align 4, !dbg !147
  store i32 %2, i32* %retval, align 4, !dbg !149
  br label %return, !dbg !149

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !150
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !153
  %cmp = icmp ult i32 %3, 5, !dbg !155
  br i1 %cmp, label %for.body, label %for.end, !dbg !156

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %fixed_status, align 4, !dbg !157
  %5 = load i32, i32* %i, align 4, !dbg !160
  %idxprom = zext i32 %5 to i64, !dbg !161
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom, !dbg !161
  %status_bit_mask = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx, i32 0, i32 2, !dbg !162
  %6 = load i16, i16* %status_bit_mask, align 2, !dbg !162
  %conv = zext i16 %6 to i32, !dbg !161
  %and = and i32 %4, %conv, !dbg !163
  %tobool2 = icmp ne i32 %and, 0, !dbg !163
  br i1 %tobool2, label %land.lhs.true, label %if.end16, !dbg !164

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %fixed_enable, align 4, !dbg !165
  %8 = load i32, i32* %i, align 4, !dbg !166
  %idxprom3 = zext i32 %8 to i64, !dbg !167
  %arrayidx4 = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom3, !dbg !167
  %enable_bit_mask = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx4, i32 0, i32 3, !dbg !168
  %9 = load i16, i16* %enable_bit_mask, align 2, !dbg !168
  %conv5 = zext i16 %9 to i32, !dbg !167
  %and6 = and i32 %7, %conv5, !dbg !169
  %tobool7 = icmp ne i32 %and6, 0, !dbg !169
  br i1 %tobool7, label %if.then8, label %if.end16, !dbg !170

if.then8:                                         ; preds = %land.lhs.true
  %10 = load i32, i32* %i, align 4, !dbg !171
  %idxprom9 = zext i32 %10 to i64, !dbg !173
  %arrayidx10 = getelementptr [5 x i32], [5 x i32]* @acpi_fixed_event_count, i64 0, i64 %idxprom9, !dbg !173
  %11 = load i32, i32* %arrayidx10, align 4, !dbg !174
  %inc = add i32 %11, 1, !dbg !174
  store i32 %inc, i32* %arrayidx10, align 4, !dbg !174
  %12 = load void (i32, i8*, i32, i8*)*, void (i32, i8*, i32, i8*)** @acpi_gbl_global_event_handler, align 8, !dbg !175
  %tobool11 = icmp ne void (i32, i8*, i32, i8*)* %12, null, !dbg !175
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !177

if.then12:                                        ; preds = %if.then8
  %13 = load void (i32, i8*, i32, i8*)*, void (i32, i8*, i32, i8*)** @acpi_gbl_global_event_handler, align 8, !dbg !178
  %14 = load i32, i32* %i, align 4, !dbg !180
  %15 = load i8*, i8** @acpi_gbl_global_event_handler_context, align 8, !dbg !181
  call void %13(i32 1, i8* null, i32 %14, i8* %15) #3, !dbg !178
  br label %if.end13, !dbg !182

if.end13:                                         ; preds = %if.then12, %if.then8
  %16 = load i32, i32* %i, align 4, !dbg !183
  %call14 = call i32 @acpi_ev_fixed_event_dispatch(i32 %16) #3, !dbg !184
  %17 = load i32, i32* %int_status, align 4, !dbg !185
  %or15 = or i32 %17, %call14, !dbg !185
  store i32 %or15, i32* %int_status, align 4, !dbg !185
  br label %if.end16, !dbg !186

if.end16:                                         ; preds = %if.end13, %land.lhs.true, %for.body
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %if.end16
  %18 = load i32, i32* %i, align 4, !dbg !188
  %inc17 = add i32 %18, 1, !dbg !188
  store i32 %inc17, i32* %i, align 4, !dbg !188
  br label %for.cond, !dbg !189, !llvm.loop !190

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %int_status, align 4, !dbg !192
  store i32 %19, i32* %retval, align 4, !dbg !193
  br label %return, !dbg !193

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !194
  ret i32 %20, !dbg !194
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_register_read(i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ev_fixed_event_dispatch(i32 %event) #0 !dbg !195 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !198, metadata !DIExpression()), !dbg !199
  %0 = load i32, i32* %event.addr, align 4, !dbg !200
  %idxprom = zext i32 %0 to i64, !dbg !201
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom, !dbg !201
  %status_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx, i32 0, i32 0, !dbg !202
  %1 = load i8, i8* %status_register_id, align 2, !dbg !202
  %conv = zext i8 %1 to i32, !dbg !201
  %call = call i32 @acpi_write_bit_register(i32 %conv, i32 1) #3, !dbg !203
  %2 = load i32, i32* %event.addr, align 4, !dbg !204
  %idxprom1 = zext i32 %2 to i64, !dbg !206
  %arrayidx2 = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom1, !dbg !206
  %handler = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx2, i32 0, i32 0, !dbg !207
  %3 = load i32 (i8*)*, i32 (i8*)** %handler, align 16, !dbg !207
  %tobool = icmp ne i32 (i8*)* %3, null, !dbg !206
  br i1 %tobool, label %if.end, label %if.then, !dbg !208

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %event.addr, align 4, !dbg !209
  %idxprom3 = zext i32 %4 to i64, !dbg !211
  %arrayidx4 = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom3, !dbg !211
  %enable_register_id = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx4, i32 0, i32 1, !dbg !212
  %5 = load i8, i8* %enable_register_id, align 1, !dbg !212
  %conv5 = zext i8 %5 to i32, !dbg !211
  %call6 = call i32 @acpi_write_bit_register(i32 %conv5, i32 0) #3, !dbg !213
  %6 = load i32, i32* %event.addr, align 4, !dbg !214
  %call7 = call i8* @acpi_ut_get_event_name(i32 %6) #3, !dbg !214
  %7 = load i32, i32* %event.addr, align 4, !dbg !214
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 255, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8* %call7, i32 %7) #3, !dbg !214
  store i32 0, i32* %retval, align 4, !dbg !215
  br label %return, !dbg !215

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %event.addr, align 4, !dbg !216
  %idxprom8 = zext i32 %8 to i64, !dbg !217
  %arrayidx9 = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom8, !dbg !217
  %handler10 = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx9, i32 0, i32 0, !dbg !218
  %9 = load i32 (i8*)*, i32 (i8*)** %handler10, align 16, !dbg !218
  %10 = load i32, i32* %event.addr, align 4, !dbg !219
  %idxprom11 = zext i32 %10 to i64, !dbg !220
  %arrayidx12 = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom11, !dbg !220
  %context = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx12, i32 0, i32 1, !dbg !221
  %11 = load i8*, i8** %context, align 8, !dbg !221
  %call13 = call i32 %9(i8* %11) #3, !dbg !222
  store i32 %call13, i32* %retval, align 4, !dbg !223
  br label %return, !dbg !223

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !224
  ret i32 %12, !dbg !224
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_any_fixed_event_status_set() #0 !dbg !225 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %in_status = alloca i32, align 4
  %in_enable = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata i32* %in_status, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %in_enable, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %i, metadata !232, metadata !DIExpression()), !dbg !233
  %call = call i32 @acpi_hw_register_read(i32 2, i32* %in_enable) #3, !dbg !234
  store i32 %call, i32* %status, align 4, !dbg !235
  %0 = load i32, i32* %status, align 4, !dbg !236
  %tobool = icmp ne i32 %0, 0, !dbg !236
  br i1 %tobool, label %if.then, label %if.end, !dbg !238

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !239
  br label %return, !dbg !239

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_hw_register_read(i32 1, i32* %in_status) #3, !dbg !241
  store i32 %call1, i32* %status, align 4, !dbg !242
  %1 = load i32, i32* %status, align 4, !dbg !243
  %tobool2 = icmp ne i32 %1, 0, !dbg !243
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !245

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !246
  br label %return, !dbg !246

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !248
  br label %for.cond, !dbg !250

for.cond:                                         ; preds = %for.inc, %if.end4
  %2 = load i32, i32* %i, align 4, !dbg !251
  %cmp = icmp ult i32 %2, 5, !dbg !253
  br i1 %cmp, label %for.body, label %for.end, !dbg !254

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %in_status, align 4, !dbg !255
  %4 = load i32, i32* %i, align 4, !dbg !258
  %idxprom = zext i32 %4 to i64, !dbg !259
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom, !dbg !259
  %status_bit_mask = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx, i32 0, i32 2, !dbg !260
  %5 = load i16, i16* %status_bit_mask, align 2, !dbg !260
  %conv = zext i16 %5 to i32, !dbg !259
  %and = and i32 %3, %conv, !dbg !261
  %tobool5 = icmp ne i32 %and, 0, !dbg !261
  br i1 %tobool5, label %land.lhs.true, label %if.end12, !dbg !262

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %in_enable, align 4, !dbg !263
  %7 = load i32, i32* %i, align 4, !dbg !264
  %idxprom6 = zext i32 %7 to i64, !dbg !265
  %arrayidx7 = getelementptr [5 x %struct.acpi_fixed_event_info], [5 x %struct.acpi_fixed_event_info]* @acpi_gbl_fixed_event_info, i64 0, i64 %idxprom6, !dbg !265
  %enable_bit_mask = getelementptr inbounds %struct.acpi_fixed_event_info, %struct.acpi_fixed_event_info* %arrayidx7, i32 0, i32 3, !dbg !266
  %8 = load i16, i16* %enable_bit_mask, align 2, !dbg !266
  %conv8 = zext i16 %8 to i32, !dbg !265
  %and9 = and i32 %6, %conv8, !dbg !267
  %tobool10 = icmp ne i32 %and9, 0, !dbg !267
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !268

if.then11:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4, !dbg !269
  br label %return, !dbg !269

if.end12:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !271

for.inc:                                          ; preds = %if.end12
  %9 = load i32, i32* %i, align 4, !dbg !272
  %inc = add i32 %9, 1, !dbg !272
  store i32 %inc, i32* %i, align 4, !dbg !272
  br label %for.cond, !dbg !273, !llvm.loop !274

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !276
  br label %return, !dbg !276

return:                                           ; preds = %for.end, %if.then11, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !277
  ret i32 %10, !dbg !277
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_write_bit_register(i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_event_name(i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evevent.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !{!0}
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !18)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 8)
!20 = !{i32 7, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"Code Model", i32 2}
!24 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!25 = distinct !DISubprogram(name: "acpi_ev_initialize_events", scope: !3, file: !3, line: 34, type: !26, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!26 = !DISubroutineType(types: !27)
!27 = !{!6}
!28 = !DILocalVariable(name: "status", scope: !25, file: !3, line: 36, type: !6)
!29 = !DILocation(line: 36, column: 14, scope: !25)
!30 = !DILocation(line: 42, column: 6, scope: !31)
!31 = distinct !DILexicalBlock(scope: !25, file: !3, line: 42, column: 6)
!32 = !DILocation(line: 42, column: 6, scope: !25)
!33 = !DILocation(line: 43, column: 3, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !3, line: 42, column: 33)
!35 = !DILocation(line: 51, column: 11, scope: !25)
!36 = !DILocation(line: 51, column: 9, scope: !25)
!37 = !DILocation(line: 52, column: 6, scope: !38)
!38 = distinct !DILexicalBlock(scope: !25, file: !3, line: 52, column: 6)
!39 = !DILocation(line: 52, column: 6, scope: !25)
!40 = !DILocation(line: 53, column: 3, scope: !41)
!41 = distinct !DILexicalBlock(scope: !38, file: !3, line: 52, column: 28)
!42 = !DILocation(line: 55, column: 3, scope: !41)
!43 = !DILocation(line: 58, column: 11, scope: !25)
!44 = !DILocation(line: 58, column: 9, scope: !25)
!45 = !DILocation(line: 59, column: 6, scope: !46)
!46 = distinct !DILexicalBlock(scope: !25, file: !3, line: 59, column: 6)
!47 = !DILocation(line: 59, column: 6, scope: !25)
!48 = !DILocation(line: 60, column: 3, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !3, line: 59, column: 28)
!50 = !DILocation(line: 62, column: 3, scope: !49)
!51 = !DILocation(line: 65, column: 2, scope: !25)
!52 = !DILocation(line: 66, column: 1, scope: !25)
!53 = distinct !DISubprogram(name: "acpi_ev_fixed_event_initialize", scope: !3, file: !3, line: 126, type: !26, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!54 = !DILocalVariable(name: "i", scope: !53, file: !3, line: 128, type: !8)
!55 = !DILocation(line: 128, column: 6, scope: !53)
!56 = !DILocalVariable(name: "status", scope: !53, file: !3, line: 129, type: !6)
!57 = !DILocation(line: 129, column: 14, scope: !53)
!58 = !DILocation(line: 135, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !53, file: !3, line: 135, column: 2)
!60 = !DILocation(line: 135, column: 7, scope: !59)
!61 = !DILocation(line: 135, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !3, line: 135, column: 2)
!63 = !DILocation(line: 135, column: 16, scope: !62)
!64 = !DILocation(line: 135, column: 2, scope: !59)
!65 = !DILocation(line: 136, column: 33, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !3, line: 135, column: 46)
!67 = !DILocation(line: 136, column: 3, scope: !66)
!68 = !DILocation(line: 136, column: 36, scope: !66)
!69 = !DILocation(line: 136, column: 44, scope: !66)
!70 = !DILocation(line: 137, column: 33, scope: !66)
!71 = !DILocation(line: 137, column: 3, scope: !66)
!72 = !DILocation(line: 137, column: 36, scope: !66)
!73 = !DILocation(line: 137, column: 44, scope: !66)
!74 = !DILocation(line: 141, column: 33, scope: !75)
!75 = distinct !DILexicalBlock(scope: !66, file: !3, line: 141, column: 7)
!76 = !DILocation(line: 141, column: 7, scope: !75)
!77 = !DILocation(line: 141, column: 36, scope: !75)
!78 = !DILocation(line: 141, column: 55, scope: !75)
!79 = !DILocation(line: 141, column: 7, scope: !66)
!80 = !DILocation(line: 144, column: 12, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !3, line: 141, column: 64)
!82 = !DILocation(line: 143, column: 32, scope: !81)
!83 = !DILocation(line: 144, column: 15, scope: !81)
!84 = !DILocation(line: 143, column: 8, scope: !81)
!85 = !DILocation(line: 142, column: 11, scope: !81)
!86 = !DILocation(line: 146, column: 8, scope: !87)
!87 = distinct !DILexicalBlock(scope: !81, file: !3, line: 146, column: 8)
!88 = !DILocation(line: 146, column: 8, scope: !81)
!89 = !DILocation(line: 147, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !3, line: 146, column: 30)
!91 = !DILocation(line: 147, column: 5, scope: !90)
!92 = !DILocation(line: 149, column: 3, scope: !81)
!93 = !DILocation(line: 150, column: 2, scope: !66)
!94 = !DILocation(line: 135, column: 42, scope: !62)
!95 = !DILocation(line: 135, column: 2, scope: !62)
!96 = distinct !{!96, !64, !97}
!97 = !DILocation(line: 150, column: 2, scope: !59)
!98 = !DILocation(line: 152, column: 2, scope: !53)
!99 = !DILocation(line: 153, column: 1, scope: !53)
!100 = distinct !DISubprogram(name: "acpi_ev_install_xrupt_handlers", scope: !3, file: !3, line: 80, type: !26, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!101 = !DILocalVariable(name: "status", scope: !100, file: !3, line: 82, type: !6)
!102 = !DILocation(line: 82, column: 14, scope: !100)
!103 = !DILocation(line: 88, column: 6, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !3, line: 88, column: 6)
!105 = !DILocation(line: 88, column: 6, scope: !100)
!106 = !DILocation(line: 89, column: 3, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 88, column: 33)
!108 = !DILocation(line: 94, column: 11, scope: !100)
!109 = !DILocation(line: 94, column: 9, scope: !100)
!110 = !DILocation(line: 95, column: 6, scope: !111)
!111 = distinct !DILexicalBlock(scope: !100, file: !3, line: 95, column: 6)
!112 = !DILocation(line: 95, column: 6, scope: !100)
!113 = !DILocation(line: 96, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !3, line: 95, column: 28)
!115 = !DILocation(line: 98, column: 3, scope: !114)
!116 = !DILocation(line: 103, column: 11, scope: !100)
!117 = !DILocation(line: 103, column: 9, scope: !100)
!118 = !DILocation(line: 104, column: 6, scope: !119)
!119 = distinct !DILexicalBlock(scope: !100, file: !3, line: 104, column: 6)
!120 = !DILocation(line: 104, column: 6, scope: !100)
!121 = !DILocation(line: 105, column: 3, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !3, line: 104, column: 28)
!123 = !DILocation(line: 107, column: 3, scope: !122)
!124 = !DILocation(line: 110, column: 30, scope: !100)
!125 = !DILocation(line: 111, column: 2, scope: !100)
!126 = !DILocation(line: 112, column: 1, scope: !100)
!127 = distinct !DISubprogram(name: "acpi_ev_fixed_event_detect", scope: !3, file: !3, line: 167, type: !128, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!128 = !DISubroutineType(types: !129)
!129 = !{!8}
!130 = !DILocalVariable(name: "int_status", scope: !127, file: !3, line: 169, type: !8)
!131 = !DILocation(line: 169, column: 6, scope: !127)
!132 = !DILocalVariable(name: "fixed_status", scope: !127, file: !3, line: 170, type: !8)
!133 = !DILocation(line: 170, column: 6, scope: !127)
!134 = !DILocalVariable(name: "fixed_enable", scope: !127, file: !3, line: 171, type: !8)
!135 = !DILocation(line: 171, column: 6, scope: !127)
!136 = !DILocalVariable(name: "i", scope: !127, file: !3, line: 172, type: !8)
!137 = !DILocation(line: 172, column: 6, scope: !127)
!138 = !DILocalVariable(name: "status", scope: !127, file: !3, line: 173, type: !6)
!139 = !DILocation(line: 173, column: 14, scope: !127)
!140 = !DILocation(line: 181, column: 11, scope: !127)
!141 = !DILocation(line: 181, column: 9, scope: !127)
!142 = !DILocation(line: 183, column: 6, scope: !127)
!143 = !DILocation(line: 182, column: 9, scope: !127)
!144 = !DILocation(line: 184, column: 6, scope: !145)
!145 = distinct !DILexicalBlock(scope: !127, file: !3, line: 184, column: 6)
!146 = !DILocation(line: 184, column: 6, scope: !127)
!147 = !DILocation(line: 185, column: 11, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !3, line: 184, column: 28)
!149 = !DILocation(line: 185, column: 3, scope: !148)
!150 = !DILocation(line: 195, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !127, file: !3, line: 195, column: 2)
!152 = !DILocation(line: 195, column: 7, scope: !151)
!153 = !DILocation(line: 195, column: 14, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !3, line: 195, column: 2)
!155 = !DILocation(line: 195, column: 16, scope: !154)
!156 = !DILocation(line: 195, column: 2, scope: !151)
!157 = !DILocation(line: 199, column: 8, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !3, line: 199, column: 7)
!159 = distinct !DILexicalBlock(scope: !154, file: !3, line: 195, column: 46)
!160 = !DILocation(line: 199, column: 49, scope: !158)
!161 = !DILocation(line: 199, column: 23, scope: !158)
!162 = !DILocation(line: 200, column: 8, scope: !158)
!163 = !DILocation(line: 199, column: 21, scope: !158)
!164 = !DILocation(line: 201, column: 7, scope: !158)
!165 = !DILocation(line: 201, column: 11, scope: !158)
!166 = !DILocation(line: 201, column: 52, scope: !158)
!167 = !DILocation(line: 201, column: 26, scope: !158)
!168 = !DILocation(line: 202, column: 4, scope: !158)
!169 = !DILocation(line: 201, column: 24, scope: !158)
!170 = !DILocation(line: 199, column: 7, scope: !159)
!171 = !DILocation(line: 207, column: 27, scope: !172)
!172 = distinct !DILexicalBlock(scope: !158, file: !3, line: 202, column: 22)
!173 = !DILocation(line: 207, column: 4, scope: !172)
!174 = !DILocation(line: 207, column: 29, scope: !172)
!175 = !DILocation(line: 208, column: 8, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !3, line: 208, column: 8)
!177 = !DILocation(line: 208, column: 8, scope: !172)
!178 = !DILocation(line: 209, column: 5, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 208, column: 39)
!180 = !DILocation(line: 210, column: 39, scope: !179)
!181 = !DILocation(line: 211, column: 10, scope: !179)
!182 = !DILocation(line: 212, column: 4, scope: !179)
!183 = !DILocation(line: 214, column: 47, scope: !172)
!184 = !DILocation(line: 214, column: 18, scope: !172)
!185 = !DILocation(line: 214, column: 15, scope: !172)
!186 = !DILocation(line: 215, column: 3, scope: !172)
!187 = !DILocation(line: 216, column: 2, scope: !159)
!188 = !DILocation(line: 195, column: 42, scope: !154)
!189 = !DILocation(line: 195, column: 2, scope: !154)
!190 = distinct !{!190, !156, !191}
!191 = !DILocation(line: 216, column: 2, scope: !151)
!192 = !DILocation(line: 218, column: 10, scope: !127)
!193 = !DILocation(line: 218, column: 2, scope: !127)
!194 = !DILocation(line: 219, column: 1, scope: !127)
!195 = distinct !DISubprogram(name: "acpi_ev_fixed_event_dispatch", scope: !3, file: !3, line: 236, type: !196, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!196 = !DISubroutineType(types: !197)
!197 = !{!8, !8}
!198 = !DILocalVariable(name: "event", arg: 1, scope: !195, file: !3, line: 236, type: !8)
!199 = !DILocation(line: 236, column: 45, scope: !195)
!200 = !DILocation(line: 243, column: 58, scope: !195)
!201 = !DILocation(line: 243, column: 32, scope: !195)
!202 = !DILocation(line: 244, column: 11, scope: !195)
!203 = !DILocation(line: 243, column: 8, scope: !195)
!204 = !DILocation(line: 250, column: 37, scope: !205)
!205 = distinct !DILexicalBlock(scope: !195, file: !3, line: 250, column: 6)
!206 = !DILocation(line: 250, column: 7, scope: !205)
!207 = !DILocation(line: 250, column: 44, scope: !205)
!208 = !DILocation(line: 250, column: 6, scope: !195)
!209 = !DILocation(line: 251, column: 59, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !3, line: 250, column: 53)
!211 = !DILocation(line: 251, column: 33, scope: !210)
!212 = !DILocation(line: 252, column: 12, scope: !210)
!213 = !DILocation(line: 251, column: 9, scope: !210)
!214 = !DILocation(line: 255, column: 3, scope: !210)
!215 = !DILocation(line: 259, column: 3, scope: !210)
!216 = !DILocation(line: 264, column: 41, scope: !195)
!217 = !DILocation(line: 264, column: 11, scope: !195)
!218 = !DILocation(line: 265, column: 4, scope: !195)
!219 = !DILocation(line: 265, column: 44, scope: !195)
!220 = !DILocation(line: 265, column: 14, scope: !195)
!221 = !DILocation(line: 265, column: 51, scope: !195)
!222 = !DILocation(line: 264, column: 10, scope: !195)
!223 = !DILocation(line: 264, column: 2, scope: !195)
!224 = !DILocation(line: 266, column: 1, scope: !195)
!225 = distinct !DISubprogram(name: "acpi_any_fixed_event_status_set", scope: !3, file: !3, line: 280, type: !128, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!226 = !DILocalVariable(name: "status", scope: !225, file: !3, line: 282, type: !6)
!227 = !DILocation(line: 282, column: 14, scope: !225)
!228 = !DILocalVariable(name: "in_status", scope: !225, file: !3, line: 283, type: !8)
!229 = !DILocation(line: 283, column: 6, scope: !225)
!230 = !DILocalVariable(name: "in_enable", scope: !225, file: !3, line: 284, type: !8)
!231 = !DILocation(line: 284, column: 6, scope: !225)
!232 = !DILocalVariable(name: "i", scope: !225, file: !3, line: 285, type: !8)
!233 = !DILocation(line: 285, column: 6, scope: !225)
!234 = !DILocation(line: 287, column: 11, scope: !225)
!235 = !DILocation(line: 287, column: 9, scope: !225)
!236 = !DILocation(line: 288, column: 6, scope: !237)
!237 = distinct !DILexicalBlock(scope: !225, file: !3, line: 288, column: 6)
!238 = !DILocation(line: 288, column: 6, scope: !225)
!239 = !DILocation(line: 289, column: 3, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !3, line: 288, column: 28)
!241 = !DILocation(line: 292, column: 11, scope: !225)
!242 = !DILocation(line: 292, column: 9, scope: !225)
!243 = !DILocation(line: 293, column: 6, scope: !244)
!244 = distinct !DILexicalBlock(scope: !225, file: !3, line: 293, column: 6)
!245 = !DILocation(line: 293, column: 6, scope: !225)
!246 = !DILocation(line: 294, column: 3, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !3, line: 293, column: 28)
!248 = !DILocation(line: 300, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !225, file: !3, line: 300, column: 2)
!250 = !DILocation(line: 300, column: 7, scope: !249)
!251 = !DILocation(line: 300, column: 14, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !3, line: 300, column: 2)
!253 = !DILocation(line: 300, column: 16, scope: !252)
!254 = !DILocation(line: 300, column: 2, scope: !249)
!255 = !DILocation(line: 304, column: 8, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 304, column: 7)
!257 = distinct !DILexicalBlock(scope: !252, file: !3, line: 300, column: 46)
!258 = !DILocation(line: 304, column: 46, scope: !256)
!259 = !DILocation(line: 304, column: 20, scope: !256)
!260 = !DILocation(line: 304, column: 49, scope: !256)
!261 = !DILocation(line: 304, column: 18, scope: !256)
!262 = !DILocation(line: 304, column: 66, scope: !256)
!263 = !DILocation(line: 305, column: 8, scope: !256)
!264 = !DILocation(line: 305, column: 46, scope: !256)
!265 = !DILocation(line: 305, column: 20, scope: !256)
!266 = !DILocation(line: 305, column: 49, scope: !256)
!267 = !DILocation(line: 305, column: 18, scope: !256)
!268 = !DILocation(line: 304, column: 7, scope: !257)
!269 = !DILocation(line: 306, column: 4, scope: !270)
!270 = distinct !DILexicalBlock(scope: !256, file: !3, line: 305, column: 67)
!271 = !DILocation(line: 308, column: 2, scope: !257)
!272 = !DILocation(line: 300, column: 42, scope: !252)
!273 = !DILocation(line: 300, column: 2, scope: !252)
!274 = distinct !{!274, !254, !275}
!275 = !DILocation(line: 308, column: 2, scope: !249)
!276 = !DILocation(line: 310, column: 2, scope: !225)
!277 = !DILocation(line: 311, column: 1, scope: !225)
