; ModuleID = '../bcout/drivers/acpi/processor_core.llvm.bc'
source_filename = "drivers/acpi/processor_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_buffer = type { i64, i8* }
%struct.acpi_table_madt = type { %struct.acpi_table_header, i32, i32 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_subtable_header = type { i8, i8 }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.anon.1 = type { i32, i32, i8* }
%struct.acpi_madt_local_apic = type { %struct.acpi_subtable_header, i8, i8, i32 }
%struct.acpi_madt_local_x2apic = type { %struct.acpi_subtable_header, i16, i32, i32, i32 }
%struct.acpi_madt_local_sapic = type <{ %struct.acpi_subtable_header, i8, i8, i8, [3 x i8], i32, i32, [1 x i8] }>
%struct.acpi_madt_generic_interrupt = type <{ %struct.acpi_subtable_header, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i64, i8, [1 x i8], i16 }>
%struct.acpi_madt_io_apic = type { %struct.acpi_subtable_header, i8, i8, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"APIC\00", align 1
@__const.map_mat_entry.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_MAT\00", align 1
@get_madt_table.madt = internal global %struct.acpi_table_madt* null, align 8, !dbg !0
@get_madt_table.read_madt = internal global i32 0, align 4, !dbg !145
@__const.parse_mat_ioapic_entry.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_map_madt_entry(i32 %acpi_id) #0 section ".init.text" !dbg !154 {
entry:
  %retval = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %madt = alloca %struct.acpi_table_madt*, align 8
  %rv = alloca i32, align 4
  store i32 %acpi_id, i32* %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %acpi_id.addr, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata %struct.acpi_table_madt** %madt, metadata !159, metadata !DIExpression()), !dbg !160
  store %struct.acpi_table_madt* null, %struct.acpi_table_madt** %madt, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i32* %rv, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = bitcast %struct.acpi_table_madt** %madt to %struct.acpi_table_header**, !dbg !163
  %call = call i32 @acpi_get_table(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, %struct.acpi_table_header** %0) #5, !dbg !164
  %1 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** %madt, align 8, !dbg !165
  %tobool = icmp ne %struct.acpi_table_madt* %1, null, !dbg !165
  br i1 %tobool, label %if.end, label %if.then, !dbg !167

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !168
  br label %return, !dbg !168

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** %madt, align 8, !dbg !169
  %3 = load i32, i32* %acpi_id.addr, align 4, !dbg !170
  %call1 = call i32 @map_madt_entry(%struct.acpi_table_madt* %2, i32 1, i32 %3) #5, !dbg !171
  store i32 %call1, i32* %rv, align 4, !dbg !172
  %4 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** %madt, align 8, !dbg !173
  %5 = bitcast %struct.acpi_table_madt* %4 to %struct.acpi_table_header*, !dbg !174
  call void @acpi_put_table(%struct.acpi_table_header* %5) #5, !dbg !175
  %6 = load i32, i32* %rv, align 4, !dbg !176
  store i32 %6, i32* %retval, align 4, !dbg !177
  br label %return, !dbg !177

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !178
  ret i32 %7, !dbg !178
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_table(i8*, i32, %struct.acpi_table_header**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @map_madt_entry(%struct.acpi_table_madt* %madt, i32 %type, i32 %acpi_id) #3 !dbg !179 {
entry:
  %retval = alloca i32, align 4
  %madt.addr = alloca %struct.acpi_table_madt*, align 8
  %type.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %madt_end = alloca i64, align 8
  %entry1 = alloca i64, align 8
  %phys_id = alloca i32, align 4
  %header5 = alloca %struct.acpi_subtable_header*, align 8
  store %struct.acpi_table_madt* %madt, %struct.acpi_table_madt** %madt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_madt** %madt.addr, metadata !182, metadata !DIExpression()), !dbg !183
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !184, metadata !DIExpression()), !dbg !185
  store i32 %acpi_id, i32* %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %acpi_id.addr, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i64* %madt_end, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i64* %entry1, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %phys_id, metadata !192, metadata !DIExpression()), !dbg !193
  store i32 -1, i32* %phys_id, align 4, !dbg !193
  %0 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** %madt.addr, align 8, !dbg !194
  %tobool = icmp ne %struct.acpi_table_madt* %0, null, !dbg !194
  br i1 %tobool, label %if.end, label %if.then, !dbg !196

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %phys_id, align 4, !dbg !197
  store i32 %1, i32* %retval, align 4, !dbg !198
  br label %return, !dbg !198

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** %madt.addr, align 8, !dbg !199
  %3 = ptrtoint %struct.acpi_table_madt* %2 to i64, !dbg !200
  store i64 %3, i64* %entry1, align 8, !dbg !201
  %4 = load i64, i64* %entry1, align 8, !dbg !202
  %5 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** %madt.addr, align 8, !dbg !203
  %header = getelementptr inbounds %struct.acpi_table_madt, %struct.acpi_table_madt* %5, i32 0, i32 0, !dbg !204
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 1, !dbg !205
  %6 = load i32, i32* %length, align 1, !dbg !205
  %conv = zext i32 %6 to i64, !dbg !203
  %add = add i64 %4, %conv, !dbg !206
  store i64 %add, i64* %madt_end, align 8, !dbg !207
  %7 = load i64, i64* %entry1, align 8, !dbg !208
  %add2 = add i64 %7, 44, !dbg !208
  store i64 %add2, i64* %entry1, align 8, !dbg !208
  br label %while.cond, !dbg !209

while.cond:                                       ; preds = %if.end46, %if.end
  %8 = load i64, i64* %entry1, align 8, !dbg !210
  %add3 = add i64 %8, 2, !dbg !211
  %9 = load i64, i64* %madt_end, align 8, !dbg !212
  %cmp = icmp ult i64 %add3, %9, !dbg !213
  br i1 %cmp, label %while.body, label %while.end, !dbg !209

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_header** %header5, metadata !214, metadata !DIExpression()), !dbg !216
  %10 = load i64, i64* %entry1, align 8, !dbg !217
  %11 = inttoptr i64 %10 to %struct.acpi_subtable_header*, !dbg !218
  store %struct.acpi_subtable_header* %11, %struct.acpi_subtable_header** %header5, align 8, !dbg !216
  %12 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header5, align 8, !dbg !219
  %type6 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %12, i32 0, i32 0, !dbg !221
  %13 = load i8, i8* %type6, align 1, !dbg !221
  %conv7 = zext i8 %13 to i32, !dbg !219
  %cmp8 = icmp eq i32 %conv7, 0, !dbg !222
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !223

if.then10:                                        ; preds = %while.body
  %14 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header5, align 8, !dbg !224
  %15 = load i32, i32* %acpi_id.addr, align 4, !dbg !227
  %call = call i32 @map_lapic_id(%struct.acpi_subtable_header* %14, i32 %15, i32* %phys_id) #5, !dbg !228
  %tobool11 = icmp ne i32 %call, 0, !dbg !228
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !229

if.then12:                                        ; preds = %if.then10
  br label %while.end, !dbg !230

if.end13:                                         ; preds = %if.then10
  br label %if.end46, !dbg !231

if.else:                                          ; preds = %while.body
  %16 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header5, align 8, !dbg !232
  %type14 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %16, i32 0, i32 0, !dbg !234
  %17 = load i8, i8* %type14, align 1, !dbg !234
  %conv15 = zext i8 %17 to i32, !dbg !232
  %cmp16 = icmp eq i32 %conv15, 9, !dbg !235
  br i1 %cmp16, label %if.then18, label %if.else23, !dbg !236

if.then18:                                        ; preds = %if.else
  %18 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header5, align 8, !dbg !237
  %19 = load i32, i32* %type.addr, align 4, !dbg !240
  %20 = load i32, i32* %acpi_id.addr, align 4, !dbg !241
  %call19 = call i32 @map_x2apic_id(%struct.acpi_subtable_header* %18, i32 %19, i32 %20, i32* %phys_id) #5, !dbg !242
  %tobool20 = icmp ne i32 %call19, 0, !dbg !242
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !243

if.then21:                                        ; preds = %if.then18
  br label %while.end, !dbg !244

if.end22:                                         ; preds = %if.then18
  br label %if.end45, !dbg !245

if.else23:                                        ; preds = %if.else
  %21 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header5, align 8, !dbg !246
  %type24 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %21, i32 0, i32 0, !dbg !248
  %22 = load i8, i8* %type24, align 1, !dbg !248
  %conv25 = zext i8 %22 to i32, !dbg !246
  %cmp26 = icmp eq i32 %conv25, 7, !dbg !249
  br i1 %cmp26, label %if.then28, label %if.else33, !dbg !250

if.then28:                                        ; preds = %if.else23
  %23 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header5, align 8, !dbg !251
  %24 = load i32, i32* %type.addr, align 4, !dbg !254
  %25 = load i32, i32* %acpi_id.addr, align 4, !dbg !255
  %call29 = call i32 @map_lsapic_id(%struct.acpi_subtable_header* %23, i32 %24, i32 %25, i32* %phys_id) #5, !dbg !256
  %tobool30 = icmp ne i32 %call29, 0, !dbg !256
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !257

if.then31:                                        ; preds = %if.then28
  br label %while.end, !dbg !258

if.end32:                                         ; preds = %if.then28
  br label %if.end44, !dbg !259

if.else33:                                        ; preds = %if.else23
  %26 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header5, align 8, !dbg !260
  %type34 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %26, i32 0, i32 0, !dbg !262
  %27 = load i8, i8* %type34, align 1, !dbg !262
  %conv35 = zext i8 %27 to i32, !dbg !260
  %cmp36 = icmp eq i32 %conv35, 11, !dbg !263
  br i1 %cmp36, label %if.then38, label %if.end43, !dbg !264

if.then38:                                        ; preds = %if.else33
  %28 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header5, align 8, !dbg !265
  %29 = load i32, i32* %type.addr, align 4, !dbg !268
  %30 = load i32, i32* %acpi_id.addr, align 4, !dbg !269
  %call39 = call i32 @map_gicc_mpidr(%struct.acpi_subtable_header* %28, i32 %29, i32 %30, i32* %phys_id) #5, !dbg !270
  %tobool40 = icmp ne i32 %call39, 0, !dbg !270
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !271

if.then41:                                        ; preds = %if.then38
  br label %while.end, !dbg !272

if.end42:                                         ; preds = %if.then38
  br label %if.end43, !dbg !273

if.end43:                                         ; preds = %if.end42, %if.else33
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end32
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end22
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end13
  %31 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header5, align 8, !dbg !274
  %length47 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %31, i32 0, i32 1, !dbg !275
  %32 = load i8, i8* %length47, align 1, !dbg !275
  %conv48 = zext i8 %32 to i64, !dbg !274
  %33 = load i64, i64* %entry1, align 8, !dbg !276
  %add49 = add i64 %33, %conv48, !dbg !276
  store i64 %add49, i64* %entry1, align 8, !dbg !276
  br label %while.cond, !dbg !209, !llvm.loop !277

while.end:                                        ; preds = %if.then41, %if.then31, %if.then21, %if.then12, %while.cond
  %34 = load i32, i32* %phys_id, align 4, !dbg !279
  store i32 %34, i32* %retval, align 4, !dbg !280
  br label %return, !dbg !280

return:                                           ; preds = %while.end, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !281
  ret i32 %35, !dbg !281
}

; Function Attrs: noredzone
declare dso_local void @acpi_put_table(%struct.acpi_table_header*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_phys_id(i8* %handle, i32 %type, i32 %acpi_id) #3 !dbg !282 {
entry:
  %handle.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %phys_id = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !287, metadata !DIExpression()), !dbg !288
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !289, metadata !DIExpression()), !dbg !290
  store i32 %acpi_id, i32* %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %acpi_id.addr, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata i32* %phys_id, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !295
  %1 = load i32, i32* %type.addr, align 4, !dbg !296
  %2 = load i32, i32* %acpi_id.addr, align 4, !dbg !297
  %call = call i32 @map_mat_entry(i8* %0, i32 %1, i32 %2) #5, !dbg !298
  store i32 %call, i32* %phys_id, align 4, !dbg !299
  %3 = load i32, i32* %phys_id, align 4, !dbg !300
  %call1 = call zeroext i1 @invalid_phys_cpuid(i32 %3) #5, !dbg !302
  br i1 %call1, label %if.then, label %if.end, !dbg !303

if.then:                                          ; preds = %entry
  %call2 = call %struct.acpi_table_madt* @get_madt_table() #5, !dbg !304
  %4 = load i32, i32* %type.addr, align 4, !dbg !305
  %5 = load i32, i32* %acpi_id.addr, align 4, !dbg !306
  %call3 = call i32 @map_madt_entry(%struct.acpi_table_madt* %call2, i32 %4, i32 %5) #5, !dbg !307
  store i32 %call3, i32* %phys_id, align 4, !dbg !308
  br label %if.end, !dbg !309

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %phys_id, align 4, !dbg !310
  ret i32 %6, !dbg !311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @map_mat_entry(i8* %handle, i32 %type, i32 %acpi_id) #3 !dbg !312 {
entry:
  %handle.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %obj = alloca %union.acpi_object*, align 8
  %header = alloca %struct.acpi_subtable_header*, align 8
  %phys_id = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !313, metadata !DIExpression()), !dbg !314
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !315, metadata !DIExpression()), !dbg !316
  store i32 %acpi_id, i32* %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %acpi_id.addr, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !319, metadata !DIExpression()), !dbg !325
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.map_mat_entry.buffer to i8*), i64 16, i1 false), !dbg !325
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !326, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_header** %header, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata i32* %phys_id, metadata !380, metadata !DIExpression()), !dbg !381
  store i32 -1, i32* %phys_id, align 4, !dbg !381
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !382
  %call = call i32 @acpi_evaluate_object(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #5, !dbg !382
  %tobool = icmp ne i32 %call, 0, !dbg !382
  br i1 %tobool, label %if.then, label %if.end, !dbg !384

if.then:                                          ; preds = %entry
  br label %exit, !dbg !385

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !386
  %2 = load i64, i64* %length, align 8, !dbg !386
  %tobool1 = icmp ne i64 %2, 0, !dbg !388
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !389

lor.lhs.false:                                    ; preds = %if.end
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !390
  %3 = load i8*, i8** %pointer, align 8, !dbg !390
  %tobool2 = icmp ne i8* %3, null, !dbg !391
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !392

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  br label %exit, !dbg !393

if.end4:                                          ; preds = %lor.lhs.false
  %pointer5 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !394
  %4 = load i8*, i8** %pointer5, align 8, !dbg !394
  %5 = bitcast i8* %4 to %union.acpi_object*, !dbg !395
  store %union.acpi_object* %5, %union.acpi_object** %obj, align 8, !dbg !396
  %6 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !397
  %type6 = bitcast %union.acpi_object* %6 to i32*, !dbg !399
  %7 = load i32, i32* %type6, align 8, !dbg !399
  %cmp = icmp ne i32 %7, 3, !dbg !400
  br i1 %cmp, label %if.then12, label %lor.lhs.false7, !dbg !401

lor.lhs.false7:                                   ; preds = %if.end4
  %8 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !402
  %buffer8 = bitcast %union.acpi_object* %8 to %struct.anon.1*, !dbg !403
  %length9 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer8, i32 0, i32 1, !dbg !404
  %9 = load i32, i32* %length9, align 4, !dbg !404
  %conv = zext i32 %9 to i64, !dbg !402
  %cmp10 = icmp ult i64 %conv, 2, !dbg !405
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !406

if.then12:                                        ; preds = %lor.lhs.false7, %if.end4
  br label %exit, !dbg !407

if.end13:                                         ; preds = %lor.lhs.false7
  %10 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !409
  %buffer14 = bitcast %union.acpi_object* %10 to %struct.anon.1*, !dbg !410
  %pointer15 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer14, i32 0, i32 2, !dbg !411
  %11 = load i8*, i8** %pointer15, align 8, !dbg !411
  %12 = bitcast i8* %11 to %struct.acpi_subtable_header*, !dbg !412
  store %struct.acpi_subtable_header* %12, %struct.acpi_subtable_header** %header, align 8, !dbg !413
  %13 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header, align 8, !dbg !414
  %type16 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %13, i32 0, i32 0, !dbg !416
  %14 = load i8, i8* %type16, align 1, !dbg !416
  %conv17 = zext i8 %14 to i32, !dbg !414
  %cmp18 = icmp eq i32 %conv17, 0, !dbg !417
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !418

if.then20:                                        ; preds = %if.end13
  %15 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header, align 8, !dbg !419
  %16 = load i32, i32* %acpi_id.addr, align 4, !dbg !420
  %call21 = call i32 @map_lapic_id(%struct.acpi_subtable_header* %15, i32 %16, i32* %phys_id) #5, !dbg !421
  br label %if.end45, !dbg !421

if.else:                                          ; preds = %if.end13
  %17 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header, align 8, !dbg !422
  %type22 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %17, i32 0, i32 0, !dbg !424
  %18 = load i8, i8* %type22, align 1, !dbg !424
  %conv23 = zext i8 %18 to i32, !dbg !422
  %cmp24 = icmp eq i32 %conv23, 7, !dbg !425
  br i1 %cmp24, label %if.then26, label %if.else28, !dbg !426

if.then26:                                        ; preds = %if.else
  %19 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header, align 8, !dbg !427
  %20 = load i32, i32* %type.addr, align 4, !dbg !428
  %21 = load i32, i32* %acpi_id.addr, align 4, !dbg !429
  %call27 = call i32 @map_lsapic_id(%struct.acpi_subtable_header* %19, i32 %20, i32 %21, i32* %phys_id) #5, !dbg !430
  br label %if.end44, !dbg !430

if.else28:                                        ; preds = %if.else
  %22 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header, align 8, !dbg !431
  %type29 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %22, i32 0, i32 0, !dbg !433
  %23 = load i8, i8* %type29, align 1, !dbg !433
  %conv30 = zext i8 %23 to i32, !dbg !431
  %cmp31 = icmp eq i32 %conv30, 9, !dbg !434
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !435

if.then33:                                        ; preds = %if.else28
  %24 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header, align 8, !dbg !436
  %25 = load i32, i32* %type.addr, align 4, !dbg !437
  %26 = load i32, i32* %acpi_id.addr, align 4, !dbg !438
  %call34 = call i32 @map_x2apic_id(%struct.acpi_subtable_header* %24, i32 %25, i32 %26, i32* %phys_id) #5, !dbg !439
  br label %if.end43, !dbg !439

if.else35:                                        ; preds = %if.else28
  %27 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header, align 8, !dbg !440
  %type36 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %27, i32 0, i32 0, !dbg !442
  %28 = load i8, i8* %type36, align 1, !dbg !442
  %conv37 = zext i8 %28 to i32, !dbg !440
  %cmp38 = icmp eq i32 %conv37, 11, !dbg !443
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !444

if.then40:                                        ; preds = %if.else35
  %29 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header, align 8, !dbg !445
  %30 = load i32, i32* %type.addr, align 4, !dbg !446
  %31 = load i32, i32* %acpi_id.addr, align 4, !dbg !447
  %call41 = call i32 @map_gicc_mpidr(%struct.acpi_subtable_header* %29, i32 %30, i32 %31, i32* %phys_id) #5, !dbg !448
  br label %if.end42, !dbg !448

if.end42:                                         ; preds = %if.then40, %if.else35
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then33
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then26
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then20
  br label %exit, !dbg !449

exit:                                             ; preds = %if.end45, %if.then12, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !450), !dbg !451
  %pointer46 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !452
  %32 = load i8*, i8** %pointer46, align 8, !dbg !452
  call void @kfree(i8* %32) #5, !dbg !453
  %33 = load i32, i32* %phys_id, align 4, !dbg !454
  ret i32 %33, !dbg !455
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @invalid_phys_cpuid(i32 %phys_id) #3 !dbg !456 {
entry:
  %phys_id.addr = alloca i32, align 4
  store i32 %phys_id, i32* %phys_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %phys_id.addr, metadata !462, metadata !DIExpression()), !dbg !463
  %0 = load i32, i32* %phys_id.addr, align 4, !dbg !464
  %cmp = icmp eq i32 %0, -1, !dbg !465
  ret i1 %cmp, !dbg !466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_table_madt* @get_madt_table() #3 !dbg !2 {
entry:
  %0 = load i32, i32* @get_madt_table.read_madt, align 4, !dbg !467
  %tobool = icmp ne i32 %0, 0, !dbg !467
  br i1 %tobool, label %if.end3, label %if.then, !dbg !469

if.then:                                          ; preds = %entry
  %call = call i32 @acpi_get_table(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, %struct.acpi_table_header** bitcast (%struct.acpi_table_madt** @get_madt_table.madt to %struct.acpi_table_header**)) #5, !dbg !470
  %tobool1 = icmp ne i32 %call, 0, !dbg !470
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !473

if.then2:                                         ; preds = %if.then
  store %struct.acpi_table_madt* null, %struct.acpi_table_madt** @get_madt_table.madt, align 8, !dbg !474
  br label %if.end, !dbg !475

if.end:                                           ; preds = %if.then2, %if.then
  %1 = load i32, i32* @get_madt_table.read_madt, align 4, !dbg !476
  %inc = add i32 %1, 1, !dbg !476
  store i32 %inc, i32* @get_madt_table.read_madt, align 4, !dbg !476
  br label %if.end3, !dbg !477

if.end3:                                          ; preds = %if.end, %entry
  %2 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** @get_madt_table.madt, align 8, !dbg !478
  ret %struct.acpi_table_madt* %2, !dbg !479
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_map_cpuid(i32 %phys_id, i32 %acpi_id) #3 !dbg !480 {
entry:
  %retval = alloca i32, align 4
  %phys_id.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  store i32 %phys_id, i32* %phys_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %phys_id.addr, metadata !483, metadata !DIExpression()), !dbg !484
  store i32 %acpi_id, i32* %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %acpi_id.addr, metadata !485, metadata !DIExpression()), !dbg !486
  %0 = load i32, i32* %phys_id.addr, align 4, !dbg !487
  %call = call zeroext i1 @invalid_phys_cpuid(i32 %0) #5, !dbg !489
  br i1 %call, label %if.then, label %if.end, !dbg !490

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %acpi_id.addr, align 4, !dbg !491
  %cmp = icmp eq i32 %1, 0, !dbg !494
  br i1 %cmp, label %if.then1, label %if.else, !dbg !495

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %acpi_id.addr, align 4, !dbg !496
  store i32 %2, i32* %retval, align 4, !dbg !497
  br label %return, !dbg !497

if.else:                                          ; preds = %if.then
  store i32 -22, i32* %retval, align 4, !dbg !498
  br label %return, !dbg !498

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %phys_id.addr, align 4, !dbg !499
  %cmp2 = icmp eq i32 %3, 0, !dbg !501
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !502

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %phys_id.addr, align 4, !dbg !503
  store i32 %4, i32* %retval, align 4, !dbg !504
  br label %return, !dbg !504

if.end4:                                          ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !505
  br label %return, !dbg !505

return:                                           ; preds = %if.end4, %if.then3, %if.else, %if.then1
  %5 = load i32, i32* %retval, align 4, !dbg !506
  ret i32 %5, !dbg !506
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_cpuid(i8* %handle, i32 %type, i32 %acpi_id) #3 !dbg !507 {
entry:
  %handle.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %phys_id = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !510, metadata !DIExpression()), !dbg !511
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store i32 %acpi_id, i32* %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %acpi_id.addr, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata i32* %phys_id, metadata !516, metadata !DIExpression()), !dbg !517
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !518
  %1 = load i32, i32* %type.addr, align 4, !dbg !519
  %2 = load i32, i32* %acpi_id.addr, align 4, !dbg !520
  %call = call i32 @acpi_get_phys_id(i8* %0, i32 %1, i32 %2) #5, !dbg !521
  store i32 %call, i32* %phys_id, align 4, !dbg !522
  %3 = load i32, i32* %phys_id, align 4, !dbg !523
  %4 = load i32, i32* %acpi_id.addr, align 4, !dbg !524
  %call1 = call i32 @acpi_map_cpuid(i32 %3, i32 %4) #5, !dbg !525
  ret i32 %call1, !dbg !526
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_ioapic_id(i8* %handle, i32 %gsi_base, i64* %phys_addr) #3 !dbg !527 {
entry:
  %handle.addr = alloca i8*, align 8
  %gsi_base.addr = alloca i32, align 4
  %phys_addr.addr = alloca i64*, align 8
  %apic_id = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !531, metadata !DIExpression()), !dbg !532
  store i32 %gsi_base, i32* %gsi_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gsi_base.addr, metadata !533, metadata !DIExpression()), !dbg !534
  store i64* %phys_addr, i64** %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %phys_addr.addr, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata i32* %apic_id, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !539
  %1 = load i32, i32* %gsi_base.addr, align 4, !dbg !540
  %2 = load i64*, i64** %phys_addr.addr, align 8, !dbg !541
  %call = call i32 @parse_mat_ioapic_entry(i8* %0, i32 %1, i64* %2) #5, !dbg !542
  store i32 %call, i32* %apic_id, align 4, !dbg !543
  %3 = load i32, i32* %apic_id, align 4, !dbg !544
  %cmp = icmp eq i32 %3, -1, !dbg !546
  br i1 %cmp, label %if.then, label %if.end, !dbg !547

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %gsi_base.addr, align 4, !dbg !548
  %5 = load i64*, i64** %phys_addr.addr, align 8, !dbg !549
  %call1 = call i32 @parse_madt_ioapic_entry(i32 %4, i64* %5) #5, !dbg !550
  store i32 %call1, i32* %apic_id, align 4, !dbg !551
  br label %if.end, !dbg !552

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %apic_id, align 4, !dbg !553
  ret i32 %6, !dbg !554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @parse_mat_ioapic_entry(i8* %handle, i32 %gsi_base, i64* %phys_addr) #3 !dbg !555 {
entry:
  %handle.addr = alloca i8*, align 8
  %gsi_base.addr = alloca i32, align 4
  %phys_addr.addr = alloca i64*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %header = alloca %struct.acpi_subtable_header*, align 8
  %obj = alloca %union.acpi_object*, align 8
  %apic_id = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !556, metadata !DIExpression()), !dbg !557
  store i32 %gsi_base, i32* %gsi_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gsi_base.addr, metadata !558, metadata !DIExpression()), !dbg !559
  store i64* %phys_addr, i64** %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %phys_addr.addr, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !562, metadata !DIExpression()), !dbg !563
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.parse_mat_ioapic_entry.buffer to i8*), i64 16, i1 false), !dbg !563
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_header** %header, metadata !564, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !566, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.declare(metadata i32* %apic_id, metadata !568, metadata !DIExpression()), !dbg !569
  store i32 -1, i32* %apic_id, align 4, !dbg !569
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !570
  %call = call i32 @acpi_evaluate_object(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #5, !dbg !570
  %tobool = icmp ne i32 %call, 0, !dbg !570
  br i1 %tobool, label %if.then, label %if.end, !dbg !572

if.then:                                          ; preds = %entry
  br label %exit, !dbg !573

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !574
  %2 = load i64, i64* %length, align 8, !dbg !574
  %tobool1 = icmp ne i64 %2, 0, !dbg !576
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !577

lor.lhs.false:                                    ; preds = %if.end
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !578
  %3 = load i8*, i8** %pointer, align 8, !dbg !578
  %tobool2 = icmp ne i8* %3, null, !dbg !579
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !580

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  br label %exit, !dbg !581

if.end4:                                          ; preds = %lor.lhs.false
  %pointer5 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !582
  %4 = load i8*, i8** %pointer5, align 8, !dbg !582
  %5 = bitcast i8* %4 to %union.acpi_object*, !dbg !583
  store %union.acpi_object* %5, %union.acpi_object** %obj, align 8, !dbg !584
  %6 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !585
  %type = bitcast %union.acpi_object* %6 to i32*, !dbg !587
  %7 = load i32, i32* %type, align 8, !dbg !587
  %cmp = icmp ne i32 %7, 3, !dbg !588
  br i1 %cmp, label %if.then11, label %lor.lhs.false6, !dbg !589

lor.lhs.false6:                                   ; preds = %if.end4
  %8 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !590
  %buffer7 = bitcast %union.acpi_object* %8 to %struct.anon.1*, !dbg !591
  %length8 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer7, i32 0, i32 1, !dbg !592
  %9 = load i32, i32* %length8, align 4, !dbg !592
  %conv = zext i32 %9 to i64, !dbg !590
  %cmp9 = icmp ult i64 %conv, 2, !dbg !593
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !594

if.then11:                                        ; preds = %lor.lhs.false6, %if.end4
  br label %exit, !dbg !595

if.end12:                                         ; preds = %lor.lhs.false6
  %10 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !596
  %buffer13 = bitcast %union.acpi_object* %10 to %struct.anon.1*, !dbg !597
  %pointer14 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer13, i32 0, i32 2, !dbg !598
  %11 = load i8*, i8** %pointer14, align 8, !dbg !598
  %12 = bitcast i8* %11 to %struct.acpi_subtable_header*, !dbg !599
  store %struct.acpi_subtable_header* %12, %struct.acpi_subtable_header** %header, align 8, !dbg !600
  %13 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header, align 8, !dbg !601
  %type15 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %13, i32 0, i32 0, !dbg !603
  %14 = load i8, i8* %type15, align 1, !dbg !603
  %conv16 = zext i8 %14 to i32, !dbg !601
  %cmp17 = icmp eq i32 %conv16, 1, !dbg !604
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !605

if.then19:                                        ; preds = %if.end12
  %15 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header, align 8, !dbg !606
  %16 = load i32, i32* %gsi_base.addr, align 4, !dbg !607
  %17 = load i64*, i64** %phys_addr.addr, align 8, !dbg !608
  %call20 = call i32 @get_ioapic_id(%struct.acpi_subtable_header* %15, i32 %16, i64* %17, i32* %apic_id) #5, !dbg !609
  br label %if.end21, !dbg !609

if.end21:                                         ; preds = %if.then19, %if.end12
  br label %exit, !dbg !610

exit:                                             ; preds = %if.end21, %if.then11, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !611), !dbg !612
  %pointer22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !613
  %18 = load i8*, i8** %pointer22, align 8, !dbg !613
  call void @kfree(i8* %18) #5, !dbg !614
  %19 = load i32, i32* %apic_id, align 4, !dbg !615
  ret i32 %19, !dbg !616
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @parse_madt_ioapic_entry(i32 %gsi_base, i64* %phys_addr) #3 !dbg !617 {
entry:
  %retval = alloca i32, align 4
  %gsi_base.addr = alloca i32, align 4
  %phys_addr.addr = alloca i64*, align 8
  %hdr = alloca %struct.acpi_subtable_header*, align 8
  %madt_end = alloca i64, align 8
  %entry1 = alloca i64, align 8
  %madt = alloca %struct.acpi_table_madt*, align 8
  %apic_id = alloca i32, align 4
  store i32 %gsi_base, i32* %gsi_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gsi_base.addr, metadata !620, metadata !DIExpression()), !dbg !621
  store i64* %phys_addr, i64** %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %phys_addr.addr, metadata !622, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_header** %hdr, metadata !624, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.declare(metadata i64* %madt_end, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata i64* %entry1, metadata !628, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.declare(metadata %struct.acpi_table_madt** %madt, metadata !630, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.declare(metadata i32* %apic_id, metadata !632, metadata !DIExpression()), !dbg !633
  store i32 -1, i32* %apic_id, align 4, !dbg !633
  %call = call %struct.acpi_table_madt* @get_madt_table() #5, !dbg !634
  store %struct.acpi_table_madt* %call, %struct.acpi_table_madt** %madt, align 8, !dbg !635
  %0 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** %madt, align 8, !dbg !636
  %tobool = icmp ne %struct.acpi_table_madt* %0, null, !dbg !636
  br i1 %tobool, label %if.end, label %if.then, !dbg !638

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %apic_id, align 4, !dbg !639
  store i32 %1, i32* %retval, align 4, !dbg !640
  br label %return, !dbg !640

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** %madt, align 8, !dbg !641
  %3 = ptrtoint %struct.acpi_table_madt* %2 to i64, !dbg !642
  store i64 %3, i64* %entry1, align 8, !dbg !643
  %4 = load i64, i64* %entry1, align 8, !dbg !644
  %5 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** %madt, align 8, !dbg !645
  %header = getelementptr inbounds %struct.acpi_table_madt, %struct.acpi_table_madt* %5, i32 0, i32 0, !dbg !646
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 1, !dbg !647
  %6 = load i32, i32* %length, align 1, !dbg !647
  %conv = zext i32 %6 to i64, !dbg !645
  %add = add i64 %4, %conv, !dbg !648
  store i64 %add, i64* %madt_end, align 8, !dbg !649
  %7 = load i64, i64* %entry1, align 8, !dbg !650
  %add2 = add i64 %7, 44, !dbg !650
  store i64 %add2, i64* %entry1, align 8, !dbg !650
  br label %while.cond, !dbg !651

while.cond:                                       ; preds = %if.end14, %if.end
  %8 = load i64, i64* %entry1, align 8, !dbg !652
  %add3 = add i64 %8, 2, !dbg !653
  %9 = load i64, i64* %madt_end, align 8, !dbg !654
  %cmp = icmp ult i64 %add3, %9, !dbg !655
  br i1 %cmp, label %while.body, label %while.end, !dbg !651

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %entry1, align 8, !dbg !656
  %11 = inttoptr i64 %10 to %struct.acpi_subtable_header*, !dbg !658
  store %struct.acpi_subtable_header* %11, %struct.acpi_subtable_header** %hdr, align 8, !dbg !659
  %12 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %hdr, align 8, !dbg !660
  %type = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %12, i32 0, i32 0, !dbg !662
  %13 = load i8, i8* %type, align 1, !dbg !662
  %conv5 = zext i8 %13 to i32, !dbg !660
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !663
  br i1 %cmp6, label %land.lhs.true, label %if.else, !dbg !664

land.lhs.true:                                    ; preds = %while.body
  %14 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %hdr, align 8, !dbg !665
  %15 = load i32, i32* %gsi_base.addr, align 4, !dbg !666
  %16 = load i64*, i64** %phys_addr.addr, align 8, !dbg !667
  %call8 = call i32 @get_ioapic_id(%struct.acpi_subtable_header* %14, i32 %15, i64* %16, i32* %apic_id) #5, !dbg !668
  %tobool9 = icmp ne i32 %call8, 0, !dbg !668
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !669

if.then10:                                        ; preds = %land.lhs.true
  br label %while.end, !dbg !670

if.else:                                          ; preds = %land.lhs.true, %while.body
  %17 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %hdr, align 8, !dbg !671
  %length11 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %17, i32 0, i32 1, !dbg !672
  %18 = load i8, i8* %length11, align 1, !dbg !672
  %conv12 = zext i8 %18 to i64, !dbg !671
  %19 = load i64, i64* %entry1, align 8, !dbg !673
  %add13 = add i64 %19, %conv12, !dbg !673
  store i64 %add13, i64* %entry1, align 8, !dbg !673
  br label %if.end14

if.end14:                                         ; preds = %if.else
  br label %while.cond, !dbg !651, !llvm.loop !674

while.end:                                        ; preds = %if.then10, %while.cond
  %20 = load i32, i32* %apic_id, align 4, !dbg !676
  store i32 %20, i32* %retval, align 4, !dbg !677
  br label %return, !dbg !677

return:                                           ; preds = %while.end, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !678
  ret i32 %21, !dbg !678
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @map_lapic_id(%struct.acpi_subtable_header* %entry1, i32 %acpi_id, i32* %apic_id) #3 !dbg !679 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct.acpi_subtable_header*, align 8
  %acpi_id.addr = alloca i32, align 4
  %apic_id.addr = alloca i32*, align 8
  %lapic = alloca %struct.acpi_madt_local_apic*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_madt_local_apic*, align 8
  store %struct.acpi_subtable_header* %entry1, %struct.acpi_subtable_header** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_header** %entry.addr, metadata !683, metadata !DIExpression()), !dbg !684
  store i32 %acpi_id, i32* %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %acpi_id.addr, metadata !685, metadata !DIExpression()), !dbg !686
  store i32* %apic_id, i32** %apic_id.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %apic_id.addr, metadata !687, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_local_apic** %lapic, metadata !689, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !691, metadata !DIExpression()), !dbg !693
  %0 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %entry.addr, align 8, !dbg !693
  %1 = bitcast %struct.acpi_subtable_header* %0 to i8*, !dbg !693
  store i8* %1, i8** %__mptr, align 8, !dbg !693
  br label %do.body, !dbg !693

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !694

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !693
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !693
  %3 = bitcast i8* %add.ptr to %struct.acpi_madt_local_apic*, !dbg !693
  store %struct.acpi_madt_local_apic* %3, %struct.acpi_madt_local_apic** %tmp, align 8, !dbg !694
  %4 = load %struct.acpi_madt_local_apic*, %struct.acpi_madt_local_apic** %tmp, align 8, !dbg !693
  store %struct.acpi_madt_local_apic* %4, %struct.acpi_madt_local_apic** %lapic, align 8, !dbg !690
  %5 = load %struct.acpi_madt_local_apic*, %struct.acpi_madt_local_apic** %lapic, align 8, !dbg !696
  %lapic_flags = getelementptr inbounds %struct.acpi_madt_local_apic, %struct.acpi_madt_local_apic* %5, i32 0, i32 3, !dbg !698
  %6 = load i32, i32* %lapic_flags, align 1, !dbg !698
  %and = and i32 %6, 1, !dbg !699
  %tobool = icmp ne i32 %and, 0, !dbg !699
  br i1 %tobool, label %if.end, label %if.then, !dbg !700

if.then:                                          ; preds = %do.end
  store i32 -19, i32* %retval, align 4, !dbg !701
  br label %return, !dbg !701

if.end:                                           ; preds = %do.end
  %7 = load %struct.acpi_madt_local_apic*, %struct.acpi_madt_local_apic** %lapic, align 8, !dbg !702
  %processor_id = getelementptr inbounds %struct.acpi_madt_local_apic, %struct.acpi_madt_local_apic* %7, i32 0, i32 1, !dbg !704
  %8 = load i8, i8* %processor_id, align 1, !dbg !704
  %conv = zext i8 %8 to i32, !dbg !702
  %9 = load i32, i32* %acpi_id.addr, align 4, !dbg !705
  %cmp = icmp ne i32 %conv, %9, !dbg !706
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !707

if.then3:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !708
  br label %return, !dbg !708

if.end4:                                          ; preds = %if.end
  %10 = load %struct.acpi_madt_local_apic*, %struct.acpi_madt_local_apic** %lapic, align 8, !dbg !709
  %id = getelementptr inbounds %struct.acpi_madt_local_apic, %struct.acpi_madt_local_apic* %10, i32 0, i32 2, !dbg !710
  %11 = load i8, i8* %id, align 1, !dbg !710
  %conv5 = zext i8 %11 to i32, !dbg !709
  %12 = load i32*, i32** %apic_id.addr, align 8, !dbg !711
  store i32 %conv5, i32* %12, align 4, !dbg !712
  store i32 0, i32* %retval, align 4, !dbg !713
  br label %return, !dbg !713

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !714
  ret i32 %13, !dbg !714
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @map_x2apic_id(%struct.acpi_subtable_header* %entry1, i32 %device_declaration, i32 %acpi_id, i32* %apic_id) #3 !dbg !715 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct.acpi_subtable_header*, align 8
  %device_declaration.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %apic_id.addr = alloca i32*, align 8
  %apic = alloca %struct.acpi_madt_local_x2apic*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_madt_local_x2apic*, align 8
  store %struct.acpi_subtable_header* %entry1, %struct.acpi_subtable_header** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_header** %entry.addr, metadata !718, metadata !DIExpression()), !dbg !719
  store i32 %device_declaration, i32* %device_declaration.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %device_declaration.addr, metadata !720, metadata !DIExpression()), !dbg !721
  store i32 %acpi_id, i32* %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %acpi_id.addr, metadata !722, metadata !DIExpression()), !dbg !723
  store i32* %apic_id, i32** %apic_id.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %apic_id.addr, metadata !724, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_local_x2apic** %apic, metadata !726, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !728, metadata !DIExpression()), !dbg !730
  %0 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %entry.addr, align 8, !dbg !730
  %1 = bitcast %struct.acpi_subtable_header* %0 to i8*, !dbg !730
  store i8* %1, i8** %__mptr, align 8, !dbg !730
  br label %do.body, !dbg !730

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !731

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !730
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !730
  %3 = bitcast i8* %add.ptr to %struct.acpi_madt_local_x2apic*, !dbg !730
  store %struct.acpi_madt_local_x2apic* %3, %struct.acpi_madt_local_x2apic** %tmp, align 8, !dbg !731
  %4 = load %struct.acpi_madt_local_x2apic*, %struct.acpi_madt_local_x2apic** %tmp, align 8, !dbg !730
  store %struct.acpi_madt_local_x2apic* %4, %struct.acpi_madt_local_x2apic** %apic, align 8, !dbg !727
  %5 = load %struct.acpi_madt_local_x2apic*, %struct.acpi_madt_local_x2apic** %apic, align 8, !dbg !733
  %lapic_flags = getelementptr inbounds %struct.acpi_madt_local_x2apic, %struct.acpi_madt_local_x2apic* %5, i32 0, i32 3, !dbg !735
  %6 = load i32, i32* %lapic_flags, align 1, !dbg !735
  %and = and i32 %6, 1, !dbg !736
  %tobool = icmp ne i32 %and, 0, !dbg !736
  br i1 %tobool, label %if.end, label %if.then, !dbg !737

if.then:                                          ; preds = %do.end
  store i32 -19, i32* %retval, align 4, !dbg !738
  br label %return, !dbg !738

if.end:                                           ; preds = %do.end
  %7 = load i32, i32* %device_declaration.addr, align 4, !dbg !739
  %tobool2 = icmp ne i32 %7, 0, !dbg !739
  br i1 %tobool2, label %land.lhs.true, label %if.end4, !dbg !741

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.acpi_madt_local_x2apic*, %struct.acpi_madt_local_x2apic** %apic, align 8, !dbg !742
  %uid = getelementptr inbounds %struct.acpi_madt_local_x2apic, %struct.acpi_madt_local_x2apic* %8, i32 0, i32 4, !dbg !743
  %9 = load i32, i32* %uid, align 1, !dbg !743
  %10 = load i32, i32* %acpi_id.addr, align 4, !dbg !744
  %cmp = icmp eq i32 %9, %10, !dbg !745
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !746

if.then3:                                         ; preds = %land.lhs.true
  %11 = load %struct.acpi_madt_local_x2apic*, %struct.acpi_madt_local_x2apic** %apic, align 8, !dbg !747
  %local_apic_id = getelementptr inbounds %struct.acpi_madt_local_x2apic, %struct.acpi_madt_local_x2apic* %11, i32 0, i32 2, !dbg !749
  %12 = load i32, i32* %local_apic_id, align 1, !dbg !749
  %13 = load i32*, i32** %apic_id.addr, align 8, !dbg !750
  store i32 %12, i32* %13, align 4, !dbg !751
  store i32 0, i32* %retval, align 4, !dbg !752
  br label %return, !dbg !752

if.end4:                                          ; preds = %land.lhs.true, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !753
  br label %return, !dbg !753

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !754
  ret i32 %14, !dbg !754
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @map_lsapic_id(%struct.acpi_subtable_header* %entry1, i32 %device_declaration, i32 %acpi_id, i32* %apic_id) #3 !dbg !755 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct.acpi_subtable_header*, align 8
  %device_declaration.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %apic_id.addr = alloca i32*, align 8
  %lsapic = alloca %struct.acpi_madt_local_sapic*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_madt_local_sapic*, align 8
  store %struct.acpi_subtable_header* %entry1, %struct.acpi_subtable_header** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_header** %entry.addr, metadata !756, metadata !DIExpression()), !dbg !757
  store i32 %device_declaration, i32* %device_declaration.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %device_declaration.addr, metadata !758, metadata !DIExpression()), !dbg !759
  store i32 %acpi_id, i32* %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %acpi_id.addr, metadata !760, metadata !DIExpression()), !dbg !761
  store i32* %apic_id, i32** %apic_id.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %apic_id.addr, metadata !762, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_local_sapic** %lsapic, metadata !764, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !766, metadata !DIExpression()), !dbg !768
  %0 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %entry.addr, align 8, !dbg !768
  %1 = bitcast %struct.acpi_subtable_header* %0 to i8*, !dbg !768
  store i8* %1, i8** %__mptr, align 8, !dbg !768
  br label %do.body, !dbg !768

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !769

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !768
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !768
  %3 = bitcast i8* %add.ptr to %struct.acpi_madt_local_sapic*, !dbg !768
  store %struct.acpi_madt_local_sapic* %3, %struct.acpi_madt_local_sapic** %tmp, align 8, !dbg !769
  %4 = load %struct.acpi_madt_local_sapic*, %struct.acpi_madt_local_sapic** %tmp, align 8, !dbg !768
  store %struct.acpi_madt_local_sapic* %4, %struct.acpi_madt_local_sapic** %lsapic, align 8, !dbg !765
  %5 = load %struct.acpi_madt_local_sapic*, %struct.acpi_madt_local_sapic** %lsapic, align 8, !dbg !771
  %lapic_flags = getelementptr inbounds %struct.acpi_madt_local_sapic, %struct.acpi_madt_local_sapic* %5, i32 0, i32 5, !dbg !773
  %6 = load i32, i32* %lapic_flags, align 1, !dbg !773
  %and = and i32 %6, 1, !dbg !774
  %tobool = icmp ne i32 %and, 0, !dbg !774
  br i1 %tobool, label %if.end, label %if.then, !dbg !775

if.then:                                          ; preds = %do.end
  store i32 -19, i32* %retval, align 4, !dbg !776
  br label %return, !dbg !776

if.end:                                           ; preds = %do.end
  %7 = load i32, i32* %device_declaration.addr, align 4, !dbg !777
  %tobool2 = icmp ne i32 %7, 0, !dbg !777
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !779

if.then3:                                         ; preds = %if.end
  %8 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %entry.addr, align 8, !dbg !780
  %length = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %8, i32 0, i32 1, !dbg !783
  %9 = load i8, i8* %length, align 1, !dbg !783
  %conv = zext i8 %9 to i32, !dbg !780
  %cmp = icmp slt i32 %conv, 16, !dbg !784
  br i1 %cmp, label %if.then7, label %lor.lhs.false, !dbg !785

lor.lhs.false:                                    ; preds = %if.then3
  %10 = load %struct.acpi_madt_local_sapic*, %struct.acpi_madt_local_sapic** %lsapic, align 8, !dbg !786
  %uid = getelementptr inbounds %struct.acpi_madt_local_sapic, %struct.acpi_madt_local_sapic* %10, i32 0, i32 6, !dbg !787
  %11 = load i32, i32* %uid, align 1, !dbg !787
  %12 = load i32, i32* %acpi_id.addr, align 4, !dbg !788
  %cmp5 = icmp ne i32 %11, %12, !dbg !789
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !790

if.then7:                                         ; preds = %lor.lhs.false, %if.then3
  store i32 -22, i32* %retval, align 4, !dbg !791
  br label %return, !dbg !791

if.end8:                                          ; preds = %lor.lhs.false
  br label %if.end14, !dbg !792

if.else:                                          ; preds = %if.end
  %13 = load %struct.acpi_madt_local_sapic*, %struct.acpi_madt_local_sapic** %lsapic, align 8, !dbg !793
  %processor_id = getelementptr inbounds %struct.acpi_madt_local_sapic, %struct.acpi_madt_local_sapic* %13, i32 0, i32 1, !dbg !795
  %14 = load i8, i8* %processor_id, align 1, !dbg !795
  %conv9 = zext i8 %14 to i32, !dbg !793
  %15 = load i32, i32* %acpi_id.addr, align 4, !dbg !796
  %cmp10 = icmp ne i32 %conv9, %15, !dbg !797
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !798

if.then12:                                        ; preds = %if.else
  store i32 -22, i32* %retval, align 4, !dbg !799
  br label %return, !dbg !799

if.end13:                                         ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end8
  %16 = load %struct.acpi_madt_local_sapic*, %struct.acpi_madt_local_sapic** %lsapic, align 8, !dbg !800
  %id = getelementptr inbounds %struct.acpi_madt_local_sapic, %struct.acpi_madt_local_sapic* %16, i32 0, i32 2, !dbg !801
  %17 = load i8, i8* %id, align 1, !dbg !801
  %conv15 = zext i8 %17 to i32, !dbg !800
  %shl = shl i32 %conv15, 8, !dbg !802
  %18 = load %struct.acpi_madt_local_sapic*, %struct.acpi_madt_local_sapic** %lsapic, align 8, !dbg !803
  %eid = getelementptr inbounds %struct.acpi_madt_local_sapic, %struct.acpi_madt_local_sapic* %18, i32 0, i32 3, !dbg !804
  %19 = load i8, i8* %eid, align 1, !dbg !804
  %conv16 = zext i8 %19 to i32, !dbg !803
  %or = or i32 %shl, %conv16, !dbg !805
  %20 = load i32*, i32** %apic_id.addr, align 8, !dbg !806
  store i32 %or, i32* %20, align 4, !dbg !807
  store i32 0, i32* %retval, align 4, !dbg !808
  br label %return, !dbg !808

return:                                           ; preds = %if.end14, %if.then12, %if.then7, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !809
  ret i32 %21, !dbg !809
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @map_gicc_mpidr(%struct.acpi_subtable_header* %entry1, i32 %device_declaration, i32 %acpi_id, i32* %mpidr) #3 !dbg !810 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct.acpi_subtable_header*, align 8
  %device_declaration.addr = alloca i32, align 4
  %acpi_id.addr = alloca i32, align 4
  %mpidr.addr = alloca i32*, align 8
  %gicc = alloca %struct.acpi_madt_generic_interrupt*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_madt_generic_interrupt*, align 8
  store %struct.acpi_subtable_header* %entry1, %struct.acpi_subtable_header** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_header** %entry.addr, metadata !811, metadata !DIExpression()), !dbg !812
  store i32 %device_declaration, i32* %device_declaration.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %device_declaration.addr, metadata !813, metadata !DIExpression()), !dbg !814
  store i32 %acpi_id, i32* %acpi_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %acpi_id.addr, metadata !815, metadata !DIExpression()), !dbg !816
  store i32* %mpidr, i32** %mpidr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %mpidr.addr, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_generic_interrupt** %gicc, metadata !819, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !821, metadata !DIExpression()), !dbg !823
  %0 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %entry.addr, align 8, !dbg !823
  %1 = bitcast %struct.acpi_subtable_header* %0 to i8*, !dbg !823
  store i8* %1, i8** %__mptr, align 8, !dbg !823
  br label %do.body, !dbg !823

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !824

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !823
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !823
  %3 = bitcast i8* %add.ptr to %struct.acpi_madt_generic_interrupt*, !dbg !823
  store %struct.acpi_madt_generic_interrupt* %3, %struct.acpi_madt_generic_interrupt** %tmp, align 8, !dbg !824
  %4 = load %struct.acpi_madt_generic_interrupt*, %struct.acpi_madt_generic_interrupt** %tmp, align 8, !dbg !823
  store %struct.acpi_madt_generic_interrupt* %4, %struct.acpi_madt_generic_interrupt** %gicc, align 8, !dbg !820
  %5 = load %struct.acpi_madt_generic_interrupt*, %struct.acpi_madt_generic_interrupt** %gicc, align 8, !dbg !826
  %flags = getelementptr inbounds %struct.acpi_madt_generic_interrupt, %struct.acpi_madt_generic_interrupt* %5, i32 0, i32 4, !dbg !828
  %6 = load i32, i32* %flags, align 1, !dbg !828
  %and = and i32 %6, 1, !dbg !829
  %tobool = icmp ne i32 %and, 0, !dbg !829
  br i1 %tobool, label %if.end, label %if.then, !dbg !830

if.then:                                          ; preds = %do.end
  store i32 -19, i32* %retval, align 4, !dbg !831
  br label %return, !dbg !831

if.end:                                           ; preds = %do.end
  %7 = load i32, i32* %device_declaration.addr, align 4, !dbg !832
  %tobool2 = icmp ne i32 %7, 0, !dbg !832
  br i1 %tobool2, label %land.lhs.true, label %if.end4, !dbg !834

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.acpi_madt_generic_interrupt*, %struct.acpi_madt_generic_interrupt** %gicc, align 8, !dbg !835
  %uid = getelementptr inbounds %struct.acpi_madt_generic_interrupt, %struct.acpi_madt_generic_interrupt* %8, i32 0, i32 3, !dbg !836
  %9 = load i32, i32* %uid, align 1, !dbg !836
  %10 = load i32, i32* %acpi_id.addr, align 4, !dbg !837
  %cmp = icmp eq i32 %9, %10, !dbg !838
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !839

if.then3:                                         ; preds = %land.lhs.true
  %11 = load %struct.acpi_madt_generic_interrupt*, %struct.acpi_madt_generic_interrupt** %gicc, align 8, !dbg !840
  %arm_mpidr = getelementptr inbounds %struct.acpi_madt_generic_interrupt, %struct.acpi_madt_generic_interrupt* %11, i32 0, i32 13, !dbg !842
  %12 = load i64, i64* %arm_mpidr, align 1, !dbg !842
  %conv = trunc i64 %12 to i32, !dbg !840
  %13 = load i32*, i32** %mpidr.addr, align 8, !dbg !843
  store i32 %conv, i32* %13, align 4, !dbg !844
  store i32 0, i32* %retval, align 4, !dbg !845
  br label %return, !dbg !845

if.end4:                                          ; preds = %land.lhs.true, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !846
  br label %return, !dbg !846

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !847
  ret i32 %14, !dbg !847
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_ioapic_id(%struct.acpi_subtable_header* %entry1, i32 %gsi_base, i64* %phys_addr, i32* %ioapic_id) #3 !dbg !848 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct.acpi_subtable_header*, align 8
  %gsi_base.addr = alloca i32, align 4
  %phys_addr.addr = alloca i64*, align 8
  %ioapic_id.addr = alloca i32*, align 8
  %ioapic = alloca %struct.acpi_madt_io_apic*, align 8
  store %struct.acpi_subtable_header* %entry1, %struct.acpi_subtable_header** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_header** %entry.addr, metadata !852, metadata !DIExpression()), !dbg !853
  store i32 %gsi_base, i32* %gsi_base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gsi_base.addr, metadata !854, metadata !DIExpression()), !dbg !855
  store i64* %phys_addr, i64** %phys_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %phys_addr.addr, metadata !856, metadata !DIExpression()), !dbg !857
  store i32* %ioapic_id, i32** %ioapic_id.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ioapic_id.addr, metadata !858, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_io_apic** %ioapic, metadata !860, metadata !DIExpression()), !dbg !861
  %0 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %entry.addr, align 8, !dbg !862
  %1 = bitcast %struct.acpi_subtable_header* %0 to %struct.acpi_madt_io_apic*, !dbg !863
  store %struct.acpi_madt_io_apic* %1, %struct.acpi_madt_io_apic** %ioapic, align 8, !dbg !861
  %2 = load %struct.acpi_madt_io_apic*, %struct.acpi_madt_io_apic** %ioapic, align 8, !dbg !864
  %global_irq_base = getelementptr inbounds %struct.acpi_madt_io_apic, %struct.acpi_madt_io_apic* %2, i32 0, i32 4, !dbg !866
  %3 = load i32, i32* %global_irq_base, align 1, !dbg !866
  %4 = load i32, i32* %gsi_base.addr, align 4, !dbg !867
  %cmp = icmp ne i32 %3, %4, !dbg !868
  br i1 %cmp, label %if.then, label %if.end, !dbg !869

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !870
  br label %return, !dbg !870

if.end:                                           ; preds = %entry
  %5 = load %struct.acpi_madt_io_apic*, %struct.acpi_madt_io_apic** %ioapic, align 8, !dbg !871
  %address = getelementptr inbounds %struct.acpi_madt_io_apic, %struct.acpi_madt_io_apic* %5, i32 0, i32 3, !dbg !872
  %6 = load i32, i32* %address, align 1, !dbg !872
  %conv = zext i32 %6 to i64, !dbg !871
  %7 = load i64*, i64** %phys_addr.addr, align 8, !dbg !873
  store i64 %conv, i64* %7, align 8, !dbg !874
  %8 = load %struct.acpi_madt_io_apic*, %struct.acpi_madt_io_apic** %ioapic, align 8, !dbg !875
  %id = getelementptr inbounds %struct.acpi_madt_io_apic, %struct.acpi_madt_io_apic* %8, i32 0, i32 1, !dbg !876
  %9 = load i8, i8* %id, align 1, !dbg !876
  %conv2 = zext i8 %9 to i32, !dbg !875
  %10 = load i32*, i32** %ioapic_id.addr, align 8, !dbg !877
  store i32 %conv2, i32* %10, align 4, !dbg !878
  store i32 1, i32* %retval, align 4, !dbg !879
  br label %return, !dbg !879

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !880
  ret i32 %11, !dbg !880
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!43}
!llvm.module.flags = !{!149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "madt", scope: !2, file: !3, line: 19, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "get_madt_table", scope: !3, file: !3, line: 17, type: !4, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !148)
!3 = !DIFile(filename: "drivers/acpi/processor_core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_madt", file: !8, line: 486, size: 352, elements: !9)
!8 = !DIFile(filename: "./include/acpi/actbl2.h", directory: "/home/lizy2001/genbc/linux")
!9 = !{!10, !41, !42}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !7, file: !8, line: 487, baseType: !11, size: 288)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !12, line: 68, size: 288, elements: !13)
!12 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !19, !25, !29, !30, !34, !38, !39, !40}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !11, file: !12, line: 69, baseType: !15, size: 32)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 32, elements: !17)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18}
!18 = !DISubrange(count: 4)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !11, file: !12, line: 70, baseType: !20, size: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !24)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !11, file: !12, line: 71, baseType: !26, size: 8, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !11, file: !12, line: 72, baseType: !26, size: 8, offset: 72)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !11, file: !12, line: 73, baseType: !31, size: 48, offset: 80)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 48, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 6)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !11, file: !12, line: 74, baseType: !35, size: 64, offset: 128)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 8)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !11, file: !12, line: 75, baseType: !20, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !11, file: !12, line: 76, baseType: !15, size: 32, offset: 224)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !11, file: !12, line: 77, baseType: !20, size: 32, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !7, file: !8, line: 488, baseType: !20, size: 32, offset: 288)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !7, file: !8, line: 489, baseType: !20, size: 32, offset: 320)
!43 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !64, globals: !144, splitDebugInlining: false, nameTableKind: None)
!44 = !{!45}
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_madt_type", file: !8, line: 503, baseType: !24, size: 32, elements: !46)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!47 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_APIC", value: 0, isUnsigned: true)
!48 = !DIEnumerator(name: "ACPI_MADT_TYPE_IO_APIC", value: 1, isUnsigned: true)
!49 = !DIEnumerator(name: "ACPI_MADT_TYPE_INTERRUPT_OVERRIDE", value: 2, isUnsigned: true)
!50 = !DIEnumerator(name: "ACPI_MADT_TYPE_NMI_SOURCE", value: 3, isUnsigned: true)
!51 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_APIC_NMI", value: 4, isUnsigned: true)
!52 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_APIC_OVERRIDE", value: 5, isUnsigned: true)
!53 = !DIEnumerator(name: "ACPI_MADT_TYPE_IO_SAPIC", value: 6, isUnsigned: true)
!54 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_SAPIC", value: 7, isUnsigned: true)
!55 = !DIEnumerator(name: "ACPI_MADT_TYPE_INTERRUPT_SOURCE", value: 8, isUnsigned: true)
!56 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_X2APIC", value: 9, isUnsigned: true)
!57 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_X2APIC_NMI", value: 10, isUnsigned: true)
!58 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_INTERRUPT", value: 11, isUnsigned: true)
!59 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_DISTRIBUTOR", value: 12, isUnsigned: true)
!60 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_MSI_FRAME", value: 13, isUnsigned: true)
!61 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_REDISTRIBUTOR", value: 14, isUnsigned: true)
!62 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_TRANSLATOR", value: 15, isUnsigned: true)
!63 = !DIEnumerator(name: "ACPI_MADT_TYPE_RESERVED", value: 16, isUnsigned: true)
!64 = !{!65, !67, !66, !69, !70, !76, !77, !84, !95, !112, !136}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_cpuid_t", file: !68, line: 266, baseType: !20)
!68 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!69 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_header", file: !72, line: 90, size: 16, elements: !73)
!72 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !72, line: 91, baseType: !26, size: 8)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !71, file: !72, line: 92, baseType: !26, size: 8, offset: 8)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_apic", file: !8, line: 529, size: 64, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !78, file: !8, line: 530, baseType: !71, size: 16)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", scope: !78, file: !8, line: 531, baseType: !26, size: 8, offset: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !78, file: !8, line: 532, baseType: !26, size: 8, offset: 24)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_flags", scope: !78, file: !8, line: 533, baseType: !20, size: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_x2apic", file: !8, line: 623, size: 128, elements: !86)
!86 = !{!87, !88, !92, !93, !94}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !85, file: !8, line: 624, baseType: !71, size: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !85, file: !8, line: 625, baseType: !89, size: 16, offset: 16)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !91)
!91 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "local_apic_id", scope: !85, file: !8, line: 626, baseType: !20, size: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_flags", scope: !85, file: !8, line: 627, baseType: !20, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !85, file: !8, line: 628, baseType: !20, size: 32, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_sapic", file: !8, line: 593, size: 136, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !106, !107, !108}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !96, file: !8, line: 594, baseType: !71, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", scope: !96, file: !8, line: 595, baseType: !26, size: 8, offset: 16)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !96, file: !8, line: 596, baseType: !26, size: 8, offset: 24)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !96, file: !8, line: 597, baseType: !26, size: 8, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !96, file: !8, line: 598, baseType: !103, size: 24, offset: 40)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 3)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_flags", scope: !96, file: !8, line: 599, baseType: !20, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !96, file: !8, line: 600, baseType: !20, size: 32, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "uid_string", scope: !96, file: !8, line: 601, baseType: !109, size: 8, offset: 128)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 1)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_generic_interrupt", file: !8, line: 643, size: 640, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !126, !127, !128, !129, !130, !131, !132, !133, !135}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !113, file: !8, line: 644, baseType: !71, size: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !113, file: !8, line: 645, baseType: !89, size: 16, offset: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_interface_number", scope: !113, file: !8, line: 646, baseType: !20, size: 32, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !113, file: !8, line: 647, baseType: !20, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !8, line: 648, baseType: !20, size: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "parking_version", scope: !113, file: !8, line: 649, baseType: !20, size: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "performance_interrupt", scope: !113, file: !8, line: 650, baseType: !20, size: 32, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "parked_address", scope: !113, file: !8, line: 651, baseType: !123, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !125)
!125 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !113, file: !8, line: 652, baseType: !123, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "gicv_base_address", scope: !113, file: !8, line: 653, baseType: !123, size: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "gich_base_address", scope: !113, file: !8, line: 654, baseType: !123, size: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "vgic_interrupt", scope: !113, file: !8, line: 655, baseType: !20, size: 32, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "gicr_base_address", scope: !113, file: !8, line: 656, baseType: !123, size: 64, offset: 480)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "arm_mpidr", scope: !113, file: !8, line: 657, baseType: !123, size: 64, offset: 544)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "efficiency_class", scope: !113, file: !8, line: 658, baseType: !26, size: 8, offset: 608)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !113, file: !8, line: 659, baseType: !134, size: 8, offset: 616)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !110)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "spe_interrupt", scope: !113, file: !8, line: 660, baseType: !89, size: 16, offset: 624)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_io_apic", file: !8, line: 538, size: 96, elements: !138)
!138 = !{!139, !140, !141, !142, !143}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !137, file: !8, line: 539, baseType: !71, size: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !137, file: !8, line: 540, baseType: !26, size: 8, offset: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !137, file: !8, line: 541, baseType: !26, size: 8, offset: 24)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !137, file: !8, line: 542, baseType: !20, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq_base", scope: !137, file: !8, line: 543, baseType: !20, size: 32, offset: 64)
!144 = !{!0, !145}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "read_madt", scope: !2, file: !3, line: 20, type: !147, isLocal: true, isDefinition: true)
!147 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!148 = !{}
!149 = !{i32 7, !"Dwarf Version", i32 4}
!150 = !{i32 2, !"Debug Info Version", i32 3}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"Code Model", i32 2}
!153 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!154 = distinct !DISubprogram(name: "acpi_map_madt_entry", scope: !3, file: !3, line: 145, type: !155, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !148)
!155 = !DISubroutineType(types: !156)
!156 = !{!67, !20}
!157 = !DILocalVariable(name: "acpi_id", arg: 1, scope: !154, file: !3, line: 145, type: !20)
!158 = !DILocation(line: 145, column: 45, scope: !154)
!159 = !DILocalVariable(name: "madt", scope: !154, file: !3, line: 147, type: !6)
!160 = !DILocation(line: 147, column: 26, scope: !154)
!161 = !DILocalVariable(name: "rv", scope: !154, file: !3, line: 148, type: !67)
!162 = !DILocation(line: 148, column: 15, scope: !154)
!163 = !DILocation(line: 151, column: 10, scope: !154)
!164 = !DILocation(line: 150, column: 2, scope: !154)
!165 = !DILocation(line: 152, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !154, file: !3, line: 152, column: 6)
!167 = !DILocation(line: 152, column: 6, scope: !154)
!168 = !DILocation(line: 153, column: 3, scope: !166)
!169 = !DILocation(line: 155, column: 22, scope: !154)
!170 = !DILocation(line: 155, column: 31, scope: !154)
!171 = !DILocation(line: 155, column: 7, scope: !154)
!172 = !DILocation(line: 155, column: 5, scope: !154)
!173 = !DILocation(line: 157, column: 45, scope: !154)
!174 = !DILocation(line: 157, column: 17, scope: !154)
!175 = !DILocation(line: 157, column: 2, scope: !154)
!176 = !DILocation(line: 159, column: 9, scope: !154)
!177 = !DILocation(line: 159, column: 2, scope: !154)
!178 = !DILocation(line: 160, column: 1, scope: !154)
!179 = distinct !DISubprogram(name: "map_madt_entry", scope: !3, file: !3, line: 109, type: !180, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !148)
!180 = !DISubroutineType(types: !181)
!181 = !{!67, !6, !147, !20}
!182 = !DILocalVariable(name: "madt", arg: 1, scope: !179, file: !3, line: 109, type: !6)
!183 = !DILocation(line: 109, column: 60, scope: !179)
!184 = !DILocalVariable(name: "type", arg: 2, scope: !179, file: !3, line: 110, type: !147)
!185 = !DILocation(line: 110, column: 12, scope: !179)
!186 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !179, file: !3, line: 110, type: !20)
!187 = !DILocation(line: 110, column: 22, scope: !179)
!188 = !DILocalVariable(name: "madt_end", scope: !179, file: !3, line: 112, type: !69)
!189 = !DILocation(line: 112, column: 16, scope: !179)
!190 = !DILocalVariable(name: "entry", scope: !179, file: !3, line: 112, type: !69)
!191 = !DILocation(line: 112, column: 26, scope: !179)
!192 = !DILocalVariable(name: "phys_id", scope: !179, file: !3, line: 113, type: !67)
!193 = !DILocation(line: 113, column: 15, scope: !179)
!194 = !DILocation(line: 115, column: 7, scope: !195)
!195 = distinct !DILexicalBlock(scope: !179, file: !3, line: 115, column: 6)
!196 = !DILocation(line: 115, column: 6, scope: !179)
!197 = !DILocation(line: 116, column: 10, scope: !195)
!198 = !DILocation(line: 116, column: 3, scope: !195)
!199 = !DILocation(line: 118, column: 25, scope: !179)
!200 = !DILocation(line: 118, column: 10, scope: !179)
!201 = !DILocation(line: 118, column: 8, scope: !179)
!202 = !DILocation(line: 119, column: 13, scope: !179)
!203 = !DILocation(line: 119, column: 21, scope: !179)
!204 = !DILocation(line: 119, column: 27, scope: !179)
!205 = !DILocation(line: 119, column: 34, scope: !179)
!206 = !DILocation(line: 119, column: 19, scope: !179)
!207 = !DILocation(line: 119, column: 11, scope: !179)
!208 = !DILocation(line: 123, column: 8, scope: !179)
!209 = !DILocation(line: 124, column: 2, scope: !179)
!210 = !DILocation(line: 124, column: 9, scope: !179)
!211 = !DILocation(line: 124, column: 15, scope: !179)
!212 = !DILocation(line: 124, column: 55, scope: !179)
!213 = !DILocation(line: 124, column: 53, scope: !179)
!214 = !DILocalVariable(name: "header", scope: !215, file: !3, line: 125, type: !70)
!215 = distinct !DILexicalBlock(scope: !179, file: !3, line: 124, column: 65)
!216 = !DILocation(line: 125, column: 32, scope: !215)
!217 = !DILocation(line: 126, column: 35, scope: !215)
!218 = !DILocation(line: 126, column: 4, scope: !215)
!219 = !DILocation(line: 127, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !3, line: 127, column: 7)
!221 = !DILocation(line: 127, column: 15, scope: !220)
!222 = !DILocation(line: 127, column: 20, scope: !220)
!223 = !DILocation(line: 127, column: 7, scope: !215)
!224 = !DILocation(line: 128, column: 22, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 128, column: 8)
!226 = distinct !DILexicalBlock(scope: !220, file: !3, line: 127, column: 50)
!227 = !DILocation(line: 128, column: 30, scope: !225)
!228 = !DILocation(line: 128, column: 9, scope: !225)
!229 = !DILocation(line: 128, column: 8, scope: !226)
!230 = !DILocation(line: 129, column: 5, scope: !225)
!231 = !DILocation(line: 130, column: 3, scope: !226)
!232 = !DILocation(line: 130, column: 14, scope: !233)
!233 = distinct !DILexicalBlock(scope: !220, file: !3, line: 130, column: 14)
!234 = !DILocation(line: 130, column: 22, scope: !233)
!235 = !DILocation(line: 130, column: 27, scope: !233)
!236 = !DILocation(line: 130, column: 14, scope: !220)
!237 = !DILocation(line: 131, column: 23, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 131, column: 8)
!239 = distinct !DILexicalBlock(scope: !233, file: !3, line: 130, column: 59)
!240 = !DILocation(line: 131, column: 31, scope: !238)
!241 = !DILocation(line: 131, column: 37, scope: !238)
!242 = !DILocation(line: 131, column: 9, scope: !238)
!243 = !DILocation(line: 131, column: 8, scope: !239)
!244 = !DILocation(line: 132, column: 5, scope: !238)
!245 = !DILocation(line: 133, column: 3, scope: !239)
!246 = !DILocation(line: 133, column: 14, scope: !247)
!247 = distinct !DILexicalBlock(scope: !233, file: !3, line: 133, column: 14)
!248 = !DILocation(line: 133, column: 22, scope: !247)
!249 = !DILocation(line: 133, column: 27, scope: !247)
!250 = !DILocation(line: 133, column: 14, scope: !233)
!251 = !DILocation(line: 134, column: 23, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 134, column: 8)
!253 = distinct !DILexicalBlock(scope: !247, file: !3, line: 133, column: 58)
!254 = !DILocation(line: 134, column: 31, scope: !252)
!255 = !DILocation(line: 134, column: 37, scope: !252)
!256 = !DILocation(line: 134, column: 9, scope: !252)
!257 = !DILocation(line: 134, column: 8, scope: !253)
!258 = !DILocation(line: 135, column: 5, scope: !252)
!259 = !DILocation(line: 136, column: 3, scope: !253)
!260 = !DILocation(line: 136, column: 14, scope: !261)
!261 = distinct !DILexicalBlock(scope: !247, file: !3, line: 136, column: 14)
!262 = !DILocation(line: 136, column: 22, scope: !261)
!263 = !DILocation(line: 136, column: 27, scope: !261)
!264 = !DILocation(line: 136, column: 14, scope: !247)
!265 = !DILocation(line: 137, column: 24, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 137, column: 8)
!267 = distinct !DILexicalBlock(scope: !261, file: !3, line: 136, column: 64)
!268 = !DILocation(line: 137, column: 32, scope: !266)
!269 = !DILocation(line: 137, column: 38, scope: !266)
!270 = !DILocation(line: 137, column: 9, scope: !266)
!271 = !DILocation(line: 137, column: 8, scope: !267)
!272 = !DILocation(line: 138, column: 5, scope: !266)
!273 = !DILocation(line: 139, column: 3, scope: !267)
!274 = !DILocation(line: 140, column: 12, scope: !215)
!275 = !DILocation(line: 140, column: 20, scope: !215)
!276 = !DILocation(line: 140, column: 9, scope: !215)
!277 = distinct !{!277, !209, !278}
!278 = !DILocation(line: 141, column: 2, scope: !179)
!279 = !DILocation(line: 142, column: 9, scope: !179)
!280 = !DILocation(line: 142, column: 2, scope: !179)
!281 = !DILocation(line: 143, column: 1, scope: !179)
!282 = distinct !DISubprogram(name: "acpi_get_phys_id", scope: !3, file: !3, line: 196, type: !283, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !148)
!283 = !DISubroutineType(types: !284)
!284 = !{!67, !285, !147, !20}
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !286, line: 424, baseType: !76)
!286 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!287 = !DILocalVariable(name: "handle", arg: 1, scope: !282, file: !3, line: 196, type: !285)
!288 = !DILocation(line: 196, column: 43, scope: !282)
!289 = !DILocalVariable(name: "type", arg: 2, scope: !282, file: !3, line: 196, type: !147)
!290 = !DILocation(line: 196, column: 55, scope: !282)
!291 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !282, file: !3, line: 196, type: !20)
!292 = !DILocation(line: 196, column: 65, scope: !282)
!293 = !DILocalVariable(name: "phys_id", scope: !282, file: !3, line: 198, type: !67)
!294 = !DILocation(line: 198, column: 15, scope: !282)
!295 = !DILocation(line: 200, column: 26, scope: !282)
!296 = !DILocation(line: 200, column: 34, scope: !282)
!297 = !DILocation(line: 200, column: 40, scope: !282)
!298 = !DILocation(line: 200, column: 12, scope: !282)
!299 = !DILocation(line: 200, column: 10, scope: !282)
!300 = !DILocation(line: 201, column: 25, scope: !301)
!301 = distinct !DILexicalBlock(scope: !282, file: !3, line: 201, column: 6)
!302 = !DILocation(line: 201, column: 6, scope: !301)
!303 = !DILocation(line: 201, column: 6, scope: !282)
!304 = !DILocation(line: 202, column: 28, scope: !301)
!305 = !DILocation(line: 202, column: 46, scope: !301)
!306 = !DILocation(line: 202, column: 52, scope: !301)
!307 = !DILocation(line: 202, column: 13, scope: !301)
!308 = !DILocation(line: 202, column: 11, scope: !301)
!309 = !DILocation(line: 202, column: 3, scope: !301)
!310 = !DILocation(line: 204, column: 9, scope: !282)
!311 = !DILocation(line: 204, column: 2, scope: !282)
!312 = distinct !DISubprogram(name: "map_mat_entry", scope: !3, file: !3, line: 162, type: !283, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !148)
!313 = !DILocalVariable(name: "handle", arg: 1, scope: !312, file: !3, line: 162, type: !285)
!314 = !DILocation(line: 162, column: 47, scope: !312)
!315 = !DILocalVariable(name: "type", arg: 2, scope: !312, file: !3, line: 162, type: !147)
!316 = !DILocation(line: 162, column: 59, scope: !312)
!317 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !312, file: !3, line: 162, type: !20)
!318 = !DILocation(line: 162, column: 69, scope: !312)
!319 = !DILocalVariable(name: "buffer", scope: !312, file: !3, line: 164, type: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !286, line: 969, size: 128, elements: !321)
!321 = !{!322, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !320, file: !286, line: 970, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !286, line: 127, baseType: !123)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !320, file: !286, line: 971, baseType: !76, size: 64, offset: 64)
!325 = !DILocation(line: 164, column: 21, scope: !312)
!326 = !DILocalVariable(name: "obj", scope: !312, file: !3, line: 165, type: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !286, line: 899, size: 192, elements: !329)
!329 = !{!330, !332, !337, !344, !351, !357, !363, !371}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !328, file: !286, line: 900, baseType: !331, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !286, line: 635, baseType: !20)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !328, file: !286, line: 904, baseType: !333, size: 128)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !286, line: 901, size: 128, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !333, file: !286, line: 902, baseType: !331, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !286, line: 903, baseType: !123, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !328, file: !286, line: 910, baseType: !338, size: 128)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !286, line: 906, size: 128, elements: !339)
!339 = !{!340, !341, !342}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !338, file: !286, line: 907, baseType: !331, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !338, file: !286, line: 908, baseType: !20, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !338, file: !286, line: 909, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !328, file: !286, line: 916, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !286, line: 912, size: 128, elements: !346)
!346 = !{!347, !348, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !345, file: !286, line: 913, baseType: !331, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !345, file: !286, line: 914, baseType: !20, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !345, file: !286, line: 915, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !328, file: !286, line: 922, baseType: !352, size: 128)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !286, line: 918, size: 128, elements: !353)
!353 = !{!354, !355, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !352, file: !286, line: 919, baseType: !331, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !352, file: !286, line: 920, baseType: !20, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !352, file: !286, line: 921, baseType: !327, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !328, file: !286, line: 928, baseType: !358, size: 128)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !286, line: 924, size: 128, elements: !359)
!359 = !{!360, !361, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !358, file: !286, line: 925, baseType: !331, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !358, file: !286, line: 926, baseType: !331, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !358, file: !286, line: 927, baseType: !285, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !328, file: !286, line: 935, baseType: !364, size: 192)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !286, line: 930, size: 192, elements: !365)
!365 = !{!366, !367, !368, !370}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !364, file: !286, line: 931, baseType: !331, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !364, file: !286, line: 932, baseType: !20, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !364, file: !286, line: 933, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !286, line: 128, baseType: !123)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !364, file: !286, line: 934, baseType: !20, size: 32, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !328, file: !286, line: 941, baseType: !372, size: 96)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !286, line: 937, size: 96, elements: !373)
!373 = !{!374, !375, !376}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !372, file: !286, line: 938, baseType: !331, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !372, file: !286, line: 939, baseType: !20, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !372, file: !286, line: 940, baseType: !20, size: 32, offset: 64)
!377 = !DILocation(line: 165, column: 21, scope: !312)
!378 = !DILocalVariable(name: "header", scope: !312, file: !3, line: 166, type: !70)
!379 = !DILocation(line: 166, column: 31, scope: !312)
!380 = !DILocalVariable(name: "phys_id", scope: !312, file: !3, line: 167, type: !67)
!381 = !DILocation(line: 167, column: 15, scope: !312)
!382 = !DILocation(line: 169, column: 6, scope: !383)
!383 = distinct !DILexicalBlock(scope: !312, file: !3, line: 169, column: 6)
!384 = !DILocation(line: 169, column: 6, scope: !312)
!385 = !DILocation(line: 170, column: 3, scope: !383)
!386 = !DILocation(line: 172, column: 14, scope: !387)
!387 = distinct !DILexicalBlock(scope: !312, file: !3, line: 172, column: 6)
!388 = !DILocation(line: 172, column: 7, scope: !387)
!389 = !DILocation(line: 172, column: 21, scope: !387)
!390 = !DILocation(line: 172, column: 32, scope: !387)
!391 = !DILocation(line: 172, column: 25, scope: !387)
!392 = !DILocation(line: 172, column: 6, scope: !312)
!393 = !DILocation(line: 173, column: 3, scope: !387)
!394 = !DILocation(line: 175, column: 15, scope: !312)
!395 = !DILocation(line: 175, column: 8, scope: !312)
!396 = !DILocation(line: 175, column: 6, scope: !312)
!397 = !DILocation(line: 176, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !312, file: !3, line: 176, column: 6)
!399 = !DILocation(line: 176, column: 11, scope: !398)
!400 = !DILocation(line: 176, column: 16, scope: !398)
!401 = !DILocation(line: 176, column: 36, scope: !398)
!402 = !DILocation(line: 177, column: 6, scope: !398)
!403 = !DILocation(line: 177, column: 11, scope: !398)
!404 = !DILocation(line: 177, column: 18, scope: !398)
!405 = !DILocation(line: 177, column: 25, scope: !398)
!406 = !DILocation(line: 176, column: 6, scope: !312)
!407 = !DILocation(line: 178, column: 3, scope: !408)
!408 = distinct !DILexicalBlock(scope: !398, file: !3, line: 177, column: 64)
!409 = !DILocation(line: 181, column: 42, scope: !312)
!410 = !DILocation(line: 181, column: 47, scope: !312)
!411 = !DILocation(line: 181, column: 54, scope: !312)
!412 = !DILocation(line: 181, column: 11, scope: !312)
!413 = !DILocation(line: 181, column: 9, scope: !312)
!414 = !DILocation(line: 182, column: 6, scope: !415)
!415 = distinct !DILexicalBlock(scope: !312, file: !3, line: 182, column: 6)
!416 = !DILocation(line: 182, column: 14, scope: !415)
!417 = !DILocation(line: 182, column: 19, scope: !415)
!418 = !DILocation(line: 182, column: 6, scope: !312)
!419 = !DILocation(line: 183, column: 16, scope: !415)
!420 = !DILocation(line: 183, column: 24, scope: !415)
!421 = !DILocation(line: 183, column: 3, scope: !415)
!422 = !DILocation(line: 184, column: 11, scope: !423)
!423 = distinct !DILexicalBlock(scope: !415, file: !3, line: 184, column: 11)
!424 = !DILocation(line: 184, column: 19, scope: !423)
!425 = !DILocation(line: 184, column: 24, scope: !423)
!426 = !DILocation(line: 184, column: 11, scope: !415)
!427 = !DILocation(line: 185, column: 17, scope: !423)
!428 = !DILocation(line: 185, column: 25, scope: !423)
!429 = !DILocation(line: 185, column: 31, scope: !423)
!430 = !DILocation(line: 185, column: 3, scope: !423)
!431 = !DILocation(line: 186, column: 11, scope: !432)
!432 = distinct !DILexicalBlock(scope: !423, file: !3, line: 186, column: 11)
!433 = !DILocation(line: 186, column: 19, scope: !432)
!434 = !DILocation(line: 186, column: 24, scope: !432)
!435 = !DILocation(line: 186, column: 11, scope: !423)
!436 = !DILocation(line: 187, column: 17, scope: !432)
!437 = !DILocation(line: 187, column: 25, scope: !432)
!438 = !DILocation(line: 187, column: 31, scope: !432)
!439 = !DILocation(line: 187, column: 3, scope: !432)
!440 = !DILocation(line: 188, column: 11, scope: !441)
!441 = distinct !DILexicalBlock(scope: !432, file: !3, line: 188, column: 11)
!442 = !DILocation(line: 188, column: 19, scope: !441)
!443 = !DILocation(line: 188, column: 24, scope: !441)
!444 = !DILocation(line: 188, column: 11, scope: !432)
!445 = !DILocation(line: 189, column: 18, scope: !441)
!446 = !DILocation(line: 189, column: 26, scope: !441)
!447 = !DILocation(line: 189, column: 32, scope: !441)
!448 = !DILocation(line: 189, column: 3, scope: !441)
!449 = !DILocation(line: 182, column: 22, scope: !415)
!450 = !DILabel(scope: !312, name: "exit", file: !3, line: 191)
!451 = !DILocation(line: 191, column: 1, scope: !312)
!452 = !DILocation(line: 192, column: 15, scope: !312)
!453 = !DILocation(line: 192, column: 2, scope: !312)
!454 = !DILocation(line: 193, column: 9, scope: !312)
!455 = !DILocation(line: 193, column: 2, scope: !312)
!456 = distinct !DISubprogram(name: "invalid_phys_cpuid", scope: !68, file: !68, line: 275, type: !457, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !148)
!457 = !DISubroutineType(types: !458)
!458 = !{!459, !67}
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !460, line: 30, baseType: !461)
!460 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!461 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!462 = !DILocalVariable(name: "phys_id", arg: 1, scope: !456, file: !68, line: 275, type: !67)
!463 = !DILocation(line: 275, column: 52, scope: !456)
!464 = !DILocation(line: 277, column: 9, scope: !456)
!465 = !DILocation(line: 277, column: 17, scope: !456)
!466 = !DILocation(line: 277, column: 2, scope: !456)
!467 = !DILocation(line: 22, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !2, file: !3, line: 22, column: 6)
!469 = !DILocation(line: 22, column: 6, scope: !2)
!470 = !DILocation(line: 23, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 23, column: 7)
!472 = distinct !DILexicalBlock(scope: !468, file: !3, line: 22, column: 18)
!473 = !DILocation(line: 23, column: 7, scope: !472)
!474 = !DILocation(line: 25, column: 9, scope: !471)
!475 = !DILocation(line: 25, column: 4, scope: !471)
!476 = !DILocation(line: 26, column: 12, scope: !472)
!477 = !DILocation(line: 27, column: 2, scope: !472)
!478 = !DILocation(line: 29, column: 9, scope: !2)
!479 = !DILocation(line: 29, column: 2, scope: !2)
!480 = distinct !DISubprogram(name: "acpi_map_cpuid", scope: !3, file: !3, line: 208, type: !481, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !148)
!481 = !DISubroutineType(types: !482)
!482 = !{!147, !67, !20}
!483 = !DILocalVariable(name: "phys_id", arg: 1, scope: !480, file: !3, line: 208, type: !67)
!484 = !DILocation(line: 208, column: 33, scope: !480)
!485 = !DILocalVariable(name: "acpi_id", arg: 2, scope: !480, file: !3, line: 208, type: !20)
!486 = !DILocation(line: 208, column: 46, scope: !480)
!487 = !DILocation(line: 214, column: 25, scope: !488)
!488 = distinct !DILexicalBlock(scope: !480, file: !3, line: 214, column: 6)
!489 = !DILocation(line: 214, column: 6, scope: !488)
!490 = !DILocation(line: 214, column: 6, scope: !480)
!491 = !DILocation(line: 235, column: 26, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 235, column: 7)
!493 = distinct !DILexicalBlock(scope: !488, file: !3, line: 214, column: 35)
!494 = !DILocation(line: 235, column: 34, scope: !492)
!495 = !DILocation(line: 235, column: 7, scope: !493)
!496 = !DILocation(line: 236, column: 11, scope: !492)
!497 = !DILocation(line: 236, column: 4, scope: !492)
!498 = !DILocation(line: 238, column: 4, scope: !492)
!499 = !DILocation(line: 248, column: 6, scope: !500)
!500 = distinct !DILexicalBlock(scope: !480, file: !3, line: 248, column: 6)
!501 = !DILocation(line: 248, column: 14, scope: !500)
!502 = !DILocation(line: 248, column: 6, scope: !480)
!503 = !DILocation(line: 249, column: 10, scope: !500)
!504 = !DILocation(line: 249, column: 3, scope: !500)
!505 = !DILocation(line: 251, column: 2, scope: !480)
!506 = !DILocation(line: 252, column: 1, scope: !480)
!507 = distinct !DISubprogram(name: "acpi_get_cpuid", scope: !3, file: !3, line: 254, type: !508, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !148)
!508 = !DISubroutineType(types: !509)
!509 = !{!147, !285, !147, !20}
!510 = !DILocalVariable(name: "handle", arg: 1, scope: !507, file: !3, line: 254, type: !285)
!511 = !DILocation(line: 254, column: 32, scope: !507)
!512 = !DILocalVariable(name: "type", arg: 2, scope: !507, file: !3, line: 254, type: !147)
!513 = !DILocation(line: 254, column: 44, scope: !507)
!514 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !507, file: !3, line: 254, type: !20)
!515 = !DILocation(line: 254, column: 54, scope: !507)
!516 = !DILocalVariable(name: "phys_id", scope: !507, file: !3, line: 256, type: !67)
!517 = !DILocation(line: 256, column: 15, scope: !507)
!518 = !DILocation(line: 258, column: 29, scope: !507)
!519 = !DILocation(line: 258, column: 37, scope: !507)
!520 = !DILocation(line: 258, column: 43, scope: !507)
!521 = !DILocation(line: 258, column: 12, scope: !507)
!522 = !DILocation(line: 258, column: 10, scope: !507)
!523 = !DILocation(line: 260, column: 24, scope: !507)
!524 = !DILocation(line: 260, column: 33, scope: !507)
!525 = !DILocation(line: 260, column: 9, scope: !507)
!526 = !DILocation(line: 260, column: 2, scope: !507)
!527 = distinct !DISubprogram(name: "acpi_get_ioapic_id", scope: !3, file: !3, line: 345, type: !528, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !148)
!528 = !DISubroutineType(types: !529)
!529 = !{!147, !285, !20, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!531 = !DILocalVariable(name: "handle", arg: 1, scope: !527, file: !3, line: 345, type: !285)
!532 = !DILocation(line: 345, column: 36, scope: !527)
!533 = !DILocalVariable(name: "gsi_base", arg: 2, scope: !527, file: !3, line: 345, type: !20)
!534 = !DILocation(line: 345, column: 48, scope: !527)
!535 = !DILocalVariable(name: "phys_addr", arg: 3, scope: !527, file: !3, line: 345, type: !530)
!536 = !DILocation(line: 345, column: 63, scope: !527)
!537 = !DILocalVariable(name: "apic_id", scope: !527, file: !3, line: 347, type: !147)
!538 = !DILocation(line: 347, column: 6, scope: !527)
!539 = !DILocation(line: 349, column: 35, scope: !527)
!540 = !DILocation(line: 349, column: 43, scope: !527)
!541 = !DILocation(line: 349, column: 53, scope: !527)
!542 = !DILocation(line: 349, column: 12, scope: !527)
!543 = !DILocation(line: 349, column: 10, scope: !527)
!544 = !DILocation(line: 350, column: 6, scope: !545)
!545 = distinct !DILexicalBlock(scope: !527, file: !3, line: 350, column: 6)
!546 = !DILocation(line: 350, column: 14, scope: !545)
!547 = !DILocation(line: 350, column: 6, scope: !527)
!548 = !DILocation(line: 351, column: 37, scope: !545)
!549 = !DILocation(line: 351, column: 47, scope: !545)
!550 = !DILocation(line: 351, column: 13, scope: !545)
!551 = !DILocation(line: 351, column: 11, scope: !545)
!552 = !DILocation(line: 351, column: 3, scope: !545)
!553 = !DILocation(line: 353, column: 9, scope: !527)
!554 = !DILocation(line: 353, column: 2, scope: !527)
!555 = distinct !DISubprogram(name: "parse_mat_ioapic_entry", scope: !3, file: !3, line: 306, type: !528, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !148)
!556 = !DILocalVariable(name: "handle", arg: 1, scope: !555, file: !3, line: 306, type: !285)
!557 = !DILocation(line: 306, column: 47, scope: !555)
!558 = !DILocalVariable(name: "gsi_base", arg: 2, scope: !555, file: !3, line: 306, type: !20)
!559 = !DILocation(line: 306, column: 59, scope: !555)
!560 = !DILocalVariable(name: "phys_addr", arg: 3, scope: !555, file: !3, line: 307, type: !530)
!561 = !DILocation(line: 307, column: 12, scope: !555)
!562 = !DILocalVariable(name: "buffer", scope: !555, file: !3, line: 309, type: !320)
!563 = !DILocation(line: 309, column: 21, scope: !555)
!564 = !DILocalVariable(name: "header", scope: !555, file: !3, line: 310, type: !70)
!565 = !DILocation(line: 310, column: 31, scope: !555)
!566 = !DILocalVariable(name: "obj", scope: !555, file: !3, line: 311, type: !327)
!567 = !DILocation(line: 311, column: 21, scope: !555)
!568 = !DILocalVariable(name: "apic_id", scope: !555, file: !3, line: 312, type: !147)
!569 = !DILocation(line: 312, column: 6, scope: !555)
!570 = !DILocation(line: 314, column: 6, scope: !571)
!571 = distinct !DILexicalBlock(scope: !555, file: !3, line: 314, column: 6)
!572 = !DILocation(line: 314, column: 6, scope: !555)
!573 = !DILocation(line: 315, column: 3, scope: !571)
!574 = !DILocation(line: 317, column: 14, scope: !575)
!575 = distinct !DILexicalBlock(scope: !555, file: !3, line: 317, column: 6)
!576 = !DILocation(line: 317, column: 7, scope: !575)
!577 = !DILocation(line: 317, column: 21, scope: !575)
!578 = !DILocation(line: 317, column: 32, scope: !575)
!579 = !DILocation(line: 317, column: 25, scope: !575)
!580 = !DILocation(line: 317, column: 6, scope: !555)
!581 = !DILocation(line: 318, column: 3, scope: !575)
!582 = !DILocation(line: 320, column: 15, scope: !555)
!583 = !DILocation(line: 320, column: 8, scope: !555)
!584 = !DILocation(line: 320, column: 6, scope: !555)
!585 = !DILocation(line: 321, column: 6, scope: !586)
!586 = distinct !DILexicalBlock(scope: !555, file: !3, line: 321, column: 6)
!587 = !DILocation(line: 321, column: 11, scope: !586)
!588 = !DILocation(line: 321, column: 16, scope: !586)
!589 = !DILocation(line: 321, column: 36, scope: !586)
!590 = !DILocation(line: 322, column: 6, scope: !586)
!591 = !DILocation(line: 322, column: 11, scope: !586)
!592 = !DILocation(line: 322, column: 18, scope: !586)
!593 = !DILocation(line: 322, column: 25, scope: !586)
!594 = !DILocation(line: 321, column: 6, scope: !555)
!595 = !DILocation(line: 323, column: 3, scope: !586)
!596 = !DILocation(line: 325, column: 42, scope: !555)
!597 = !DILocation(line: 325, column: 47, scope: !555)
!598 = !DILocation(line: 325, column: 54, scope: !555)
!599 = !DILocation(line: 325, column: 11, scope: !555)
!600 = !DILocation(line: 325, column: 9, scope: !555)
!601 = !DILocation(line: 326, column: 6, scope: !602)
!602 = distinct !DILexicalBlock(scope: !555, file: !3, line: 326, column: 6)
!603 = !DILocation(line: 326, column: 14, scope: !602)
!604 = !DILocation(line: 326, column: 19, scope: !602)
!605 = !DILocation(line: 326, column: 6, scope: !555)
!606 = !DILocation(line: 327, column: 17, scope: !602)
!607 = !DILocation(line: 327, column: 25, scope: !602)
!608 = !DILocation(line: 327, column: 35, scope: !602)
!609 = !DILocation(line: 327, column: 3, scope: !602)
!610 = !DILocation(line: 326, column: 22, scope: !602)
!611 = !DILabel(scope: !555, name: "exit", file: !3, line: 329)
!612 = !DILocation(line: 329, column: 1, scope: !555)
!613 = !DILocation(line: 330, column: 15, scope: !555)
!614 = !DILocation(line: 330, column: 2, scope: !555)
!615 = !DILocation(line: 331, column: 9, scope: !555)
!616 = !DILocation(line: 331, column: 2, scope: !555)
!617 = distinct !DISubprogram(name: "parse_madt_ioapic_entry", scope: !3, file: !3, line: 278, type: !618, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !148)
!618 = !DISubroutineType(types: !619)
!619 = !{!147, !20, !530}
!620 = !DILocalVariable(name: "gsi_base", arg: 1, scope: !617, file: !3, line: 278, type: !20)
!621 = !DILocation(line: 278, column: 40, scope: !617)
!622 = !DILocalVariable(name: "phys_addr", arg: 2, scope: !617, file: !3, line: 278, type: !530)
!623 = !DILocation(line: 278, column: 55, scope: !617)
!624 = !DILocalVariable(name: "hdr", scope: !617, file: !3, line: 280, type: !70)
!625 = !DILocation(line: 280, column: 31, scope: !617)
!626 = !DILocalVariable(name: "madt_end", scope: !617, file: !3, line: 281, type: !69)
!627 = !DILocation(line: 281, column: 16, scope: !617)
!628 = !DILocalVariable(name: "entry", scope: !617, file: !3, line: 281, type: !69)
!629 = !DILocation(line: 281, column: 26, scope: !617)
!630 = !DILocalVariable(name: "madt", scope: !617, file: !3, line: 282, type: !6)
!631 = !DILocation(line: 282, column: 26, scope: !617)
!632 = !DILocalVariable(name: "apic_id", scope: !617, file: !3, line: 283, type: !147)
!633 = !DILocation(line: 283, column: 6, scope: !617)
!634 = !DILocation(line: 285, column: 9, scope: !617)
!635 = !DILocation(line: 285, column: 7, scope: !617)
!636 = !DILocation(line: 286, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !617, file: !3, line: 286, column: 6)
!638 = !DILocation(line: 286, column: 6, scope: !617)
!639 = !DILocation(line: 287, column: 10, scope: !637)
!640 = !DILocation(line: 287, column: 3, scope: !637)
!641 = !DILocation(line: 289, column: 25, scope: !617)
!642 = !DILocation(line: 289, column: 10, scope: !617)
!643 = !DILocation(line: 289, column: 8, scope: !617)
!644 = !DILocation(line: 290, column: 13, scope: !617)
!645 = !DILocation(line: 290, column: 21, scope: !617)
!646 = !DILocation(line: 290, column: 27, scope: !617)
!647 = !DILocation(line: 290, column: 34, scope: !617)
!648 = !DILocation(line: 290, column: 19, scope: !617)
!649 = !DILocation(line: 290, column: 11, scope: !617)
!650 = !DILocation(line: 293, column: 8, scope: !617)
!651 = !DILocation(line: 294, column: 2, scope: !617)
!652 = !DILocation(line: 294, column: 9, scope: !617)
!653 = !DILocation(line: 294, column: 15, scope: !617)
!654 = !DILocation(line: 294, column: 55, scope: !617)
!655 = !DILocation(line: 294, column: 53, scope: !617)
!656 = !DILocation(line: 295, column: 40, scope: !657)
!657 = distinct !DILexicalBlock(scope: !617, file: !3, line: 294, column: 65)
!658 = !DILocation(line: 295, column: 9, scope: !657)
!659 = !DILocation(line: 295, column: 7, scope: !657)
!660 = !DILocation(line: 296, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !657, file: !3, line: 296, column: 7)
!662 = !DILocation(line: 296, column: 12, scope: !661)
!663 = !DILocation(line: 296, column: 17, scope: !661)
!664 = !DILocation(line: 296, column: 43, scope: !661)
!665 = !DILocation(line: 297, column: 21, scope: !661)
!666 = !DILocation(line: 297, column: 26, scope: !661)
!667 = !DILocation(line: 297, column: 36, scope: !661)
!668 = !DILocation(line: 297, column: 7, scope: !661)
!669 = !DILocation(line: 296, column: 7, scope: !657)
!670 = !DILocation(line: 298, column: 4, scope: !661)
!671 = !DILocation(line: 300, column: 13, scope: !661)
!672 = !DILocation(line: 300, column: 18, scope: !661)
!673 = !DILocation(line: 300, column: 10, scope: !661)
!674 = distinct !{!674, !651, !675}
!675 = !DILocation(line: 301, column: 2, scope: !617)
!676 = !DILocation(line: 303, column: 9, scope: !617)
!677 = !DILocation(line: 303, column: 2, scope: !617)
!678 = !DILocation(line: 304, column: 1, scope: !617)
!679 = distinct !DISubprogram(name: "map_lapic_id", scope: !3, file: !3, line: 32, type: !680, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !148)
!680 = !DISubroutineType(types: !681)
!681 = !{!147, !70, !20, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!683 = !DILocalVariable(name: "entry", arg: 1, scope: !679, file: !3, line: 32, type: !70)
!684 = !DILocation(line: 32, column: 54, scope: !679)
!685 = !DILocalVariable(name: "acpi_id", arg: 2, scope: !679, file: !3, line: 33, type: !20)
!686 = !DILocation(line: 33, column: 8, scope: !679)
!687 = !DILocalVariable(name: "apic_id", arg: 3, scope: !679, file: !3, line: 33, type: !682)
!688 = !DILocation(line: 33, column: 31, scope: !679)
!689 = !DILocalVariable(name: "lapic", scope: !679, file: !3, line: 35, type: !77)
!690 = !DILocation(line: 35, column: 31, scope: !679)
!691 = !DILocalVariable(name: "__mptr", scope: !692, file: !3, line: 36, type: !76)
!692 = distinct !DILexicalBlock(scope: !679, file: !3, line: 36, column: 3)
!693 = !DILocation(line: 36, column: 3, scope: !692)
!694 = !DILocation(line: 36, column: 3, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !3, line: 36, column: 3)
!696 = !DILocation(line: 38, column: 8, scope: !697)
!697 = distinct !DILexicalBlock(scope: !679, file: !3, line: 38, column: 6)
!698 = !DILocation(line: 38, column: 15, scope: !697)
!699 = !DILocation(line: 38, column: 27, scope: !697)
!700 = !DILocation(line: 38, column: 6, scope: !679)
!701 = !DILocation(line: 39, column: 3, scope: !697)
!702 = !DILocation(line: 41, column: 6, scope: !703)
!703 = distinct !DILexicalBlock(scope: !679, file: !3, line: 41, column: 6)
!704 = !DILocation(line: 41, column: 13, scope: !703)
!705 = !DILocation(line: 41, column: 29, scope: !703)
!706 = !DILocation(line: 41, column: 26, scope: !703)
!707 = !DILocation(line: 41, column: 6, scope: !679)
!708 = !DILocation(line: 42, column: 3, scope: !703)
!709 = !DILocation(line: 44, column: 13, scope: !679)
!710 = !DILocation(line: 44, column: 20, scope: !679)
!711 = !DILocation(line: 44, column: 3, scope: !679)
!712 = !DILocation(line: 44, column: 11, scope: !679)
!713 = !DILocation(line: 45, column: 2, scope: !679)
!714 = !DILocation(line: 46, column: 1, scope: !679)
!715 = distinct !DISubprogram(name: "map_x2apic_id", scope: !3, file: !3, line: 48, type: !716, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !148)
!716 = !DISubroutineType(types: !717)
!717 = !{!147, !70, !147, !20, !682}
!718 = !DILocalVariable(name: "entry", arg: 1, scope: !715, file: !3, line: 48, type: !70)
!719 = !DILocation(line: 48, column: 55, scope: !715)
!720 = !DILocalVariable(name: "device_declaration", arg: 2, scope: !715, file: !3, line: 49, type: !147)
!721 = !DILocation(line: 49, column: 7, scope: !715)
!722 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !715, file: !3, line: 49, type: !20)
!723 = !DILocation(line: 49, column: 31, scope: !715)
!724 = !DILocalVariable(name: "apic_id", arg: 4, scope: !715, file: !3, line: 49, type: !682)
!725 = !DILocation(line: 49, column: 54, scope: !715)
!726 = !DILocalVariable(name: "apic", scope: !715, file: !3, line: 51, type: !84)
!727 = !DILocation(line: 51, column: 33, scope: !715)
!728 = !DILocalVariable(name: "__mptr", scope: !729, file: !3, line: 52, type: !76)
!729 = distinct !DILexicalBlock(scope: !715, file: !3, line: 52, column: 3)
!730 = !DILocation(line: 52, column: 3, scope: !729)
!731 = !DILocation(line: 52, column: 3, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !3, line: 52, column: 3)
!733 = !DILocation(line: 54, column: 8, scope: !734)
!734 = distinct !DILexicalBlock(scope: !715, file: !3, line: 54, column: 6)
!735 = !DILocation(line: 54, column: 14, scope: !734)
!736 = !DILocation(line: 54, column: 26, scope: !734)
!737 = !DILocation(line: 54, column: 6, scope: !715)
!738 = !DILocation(line: 55, column: 3, scope: !734)
!739 = !DILocation(line: 57, column: 6, scope: !740)
!740 = distinct !DILexicalBlock(scope: !715, file: !3, line: 57, column: 6)
!741 = !DILocation(line: 57, column: 25, scope: !740)
!742 = !DILocation(line: 57, column: 29, scope: !740)
!743 = !DILocation(line: 57, column: 35, scope: !740)
!744 = !DILocation(line: 57, column: 42, scope: !740)
!745 = !DILocation(line: 57, column: 39, scope: !740)
!746 = !DILocation(line: 57, column: 6, scope: !715)
!747 = !DILocation(line: 58, column: 14, scope: !748)
!748 = distinct !DILexicalBlock(scope: !740, file: !3, line: 57, column: 52)
!749 = !DILocation(line: 58, column: 20, scope: !748)
!750 = !DILocation(line: 58, column: 4, scope: !748)
!751 = !DILocation(line: 58, column: 12, scope: !748)
!752 = !DILocation(line: 59, column: 3, scope: !748)
!753 = !DILocation(line: 62, column: 2, scope: !715)
!754 = !DILocation(line: 63, column: 1, scope: !715)
!755 = distinct !DISubprogram(name: "map_lsapic_id", scope: !3, file: !3, line: 65, type: !716, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !148)
!756 = !DILocalVariable(name: "entry", arg: 1, scope: !755, file: !3, line: 65, type: !70)
!757 = !DILocation(line: 65, column: 55, scope: !755)
!758 = !DILocalVariable(name: "device_declaration", arg: 2, scope: !755, file: !3, line: 66, type: !147)
!759 = !DILocation(line: 66, column: 7, scope: !755)
!760 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !755, file: !3, line: 66, type: !20)
!761 = !DILocation(line: 66, column: 31, scope: !755)
!762 = !DILocalVariable(name: "apic_id", arg: 4, scope: !755, file: !3, line: 66, type: !682)
!763 = !DILocation(line: 66, column: 54, scope: !755)
!764 = !DILocalVariable(name: "lsapic", scope: !755, file: !3, line: 68, type: !95)
!765 = !DILocation(line: 68, column: 32, scope: !755)
!766 = !DILocalVariable(name: "__mptr", scope: !767, file: !3, line: 69, type: !76)
!767 = distinct !DILexicalBlock(scope: !755, file: !3, line: 69, column: 3)
!768 = !DILocation(line: 69, column: 3, scope: !767)
!769 = !DILocation(line: 69, column: 3, scope: !770)
!770 = distinct !DILexicalBlock(scope: !767, file: !3, line: 69, column: 3)
!771 = !DILocation(line: 71, column: 8, scope: !772)
!772 = distinct !DILexicalBlock(scope: !755, file: !3, line: 71, column: 6)
!773 = !DILocation(line: 71, column: 16, scope: !772)
!774 = !DILocation(line: 71, column: 28, scope: !772)
!775 = !DILocation(line: 71, column: 6, scope: !755)
!776 = !DILocation(line: 72, column: 3, scope: !772)
!777 = !DILocation(line: 74, column: 6, scope: !778)
!778 = distinct !DILexicalBlock(scope: !755, file: !3, line: 74, column: 6)
!779 = !DILocation(line: 74, column: 6, scope: !755)
!780 = !DILocation(line: 75, column: 8, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 75, column: 7)
!782 = distinct !DILexicalBlock(scope: !778, file: !3, line: 74, column: 26)
!783 = !DILocation(line: 75, column: 15, scope: !781)
!784 = !DILocation(line: 75, column: 22, scope: !781)
!785 = !DILocation(line: 75, column: 28, scope: !781)
!786 = !DILocation(line: 75, column: 32, scope: !781)
!787 = !DILocation(line: 75, column: 40, scope: !781)
!788 = !DILocation(line: 75, column: 47, scope: !781)
!789 = !DILocation(line: 75, column: 44, scope: !781)
!790 = !DILocation(line: 75, column: 7, scope: !782)
!791 = !DILocation(line: 76, column: 4, scope: !781)
!792 = !DILocation(line: 77, column: 2, scope: !782)
!793 = !DILocation(line: 77, column: 13, scope: !794)
!794 = distinct !DILexicalBlock(scope: !778, file: !3, line: 77, column: 13)
!795 = !DILocation(line: 77, column: 21, scope: !794)
!796 = !DILocation(line: 77, column: 37, scope: !794)
!797 = !DILocation(line: 77, column: 34, scope: !794)
!798 = !DILocation(line: 77, column: 13, scope: !778)
!799 = !DILocation(line: 78, column: 3, scope: !794)
!800 = !DILocation(line: 80, column: 14, scope: !755)
!801 = !DILocation(line: 80, column: 22, scope: !755)
!802 = !DILocation(line: 80, column: 25, scope: !755)
!803 = !DILocation(line: 80, column: 33, scope: !755)
!804 = !DILocation(line: 80, column: 41, scope: !755)
!805 = !DILocation(line: 80, column: 31, scope: !755)
!806 = !DILocation(line: 80, column: 3, scope: !755)
!807 = !DILocation(line: 80, column: 11, scope: !755)
!808 = !DILocation(line: 81, column: 2, scope: !755)
!809 = !DILocation(line: 82, column: 1, scope: !755)
!810 = distinct !DISubprogram(name: "map_gicc_mpidr", scope: !3, file: !3, line: 87, type: !716, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !148)
!811 = !DILocalVariable(name: "entry", arg: 1, scope: !810, file: !3, line: 87, type: !70)
!812 = !DILocation(line: 87, column: 56, scope: !810)
!813 = !DILocalVariable(name: "device_declaration", arg: 2, scope: !810, file: !3, line: 88, type: !147)
!814 = !DILocation(line: 88, column: 7, scope: !810)
!815 = !DILocalVariable(name: "acpi_id", arg: 3, scope: !810, file: !3, line: 88, type: !20)
!816 = !DILocation(line: 88, column: 31, scope: !810)
!817 = !DILocalVariable(name: "mpidr", arg: 4, scope: !810, file: !3, line: 88, type: !682)
!818 = !DILocation(line: 88, column: 54, scope: !810)
!819 = !DILocalVariable(name: "gicc", scope: !810, file: !3, line: 90, type: !112)
!820 = !DILocation(line: 90, column: 38, scope: !810)
!821 = !DILocalVariable(name: "__mptr", scope: !822, file: !3, line: 91, type: !76)
!822 = distinct !DILexicalBlock(scope: !810, file: !3, line: 91, column: 6)
!823 = !DILocation(line: 91, column: 6, scope: !822)
!824 = !DILocation(line: 91, column: 6, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !3, line: 91, column: 6)
!826 = !DILocation(line: 93, column: 8, scope: !827)
!827 = distinct !DILexicalBlock(scope: !810, file: !3, line: 93, column: 6)
!828 = !DILocation(line: 93, column: 14, scope: !827)
!829 = !DILocation(line: 93, column: 20, scope: !827)
!830 = !DILocation(line: 93, column: 6, scope: !810)
!831 = !DILocation(line: 94, column: 3, scope: !827)
!832 = !DILocation(line: 101, column: 6, scope: !833)
!833 = distinct !DILexicalBlock(scope: !810, file: !3, line: 101, column: 6)
!834 = !DILocation(line: 101, column: 25, scope: !833)
!835 = !DILocation(line: 101, column: 29, scope: !833)
!836 = !DILocation(line: 101, column: 35, scope: !833)
!837 = !DILocation(line: 101, column: 42, scope: !833)
!838 = !DILocation(line: 101, column: 39, scope: !833)
!839 = !DILocation(line: 101, column: 6, scope: !810)
!840 = !DILocation(line: 102, column: 12, scope: !841)
!841 = distinct !DILexicalBlock(scope: !833, file: !3, line: 101, column: 52)
!842 = !DILocation(line: 102, column: 18, scope: !841)
!843 = !DILocation(line: 102, column: 4, scope: !841)
!844 = !DILocation(line: 102, column: 10, scope: !841)
!845 = !DILocation(line: 103, column: 3, scope: !841)
!846 = !DILocation(line: 106, column: 2, scope: !810)
!847 = !DILocation(line: 107, column: 1, scope: !810)
!848 = distinct !DISubprogram(name: "get_ioapic_id", scope: !3, file: !3, line: 265, type: !849, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !148)
!849 = !DISubroutineType(types: !850)
!850 = !{!147, !70, !20, !530, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!852 = !DILocalVariable(name: "entry", arg: 1, scope: !848, file: !3, line: 265, type: !70)
!853 = !DILocation(line: 265, column: 55, scope: !848)
!854 = !DILocalVariable(name: "gsi_base", arg: 2, scope: !848, file: !3, line: 265, type: !20)
!855 = !DILocation(line: 265, column: 66, scope: !848)
!856 = !DILocalVariable(name: "phys_addr", arg: 3, scope: !848, file: !3, line: 266, type: !530)
!857 = !DILocation(line: 266, column: 10, scope: !848)
!858 = !DILocalVariable(name: "ioapic_id", arg: 4, scope: !848, file: !3, line: 266, type: !851)
!859 = !DILocation(line: 266, column: 26, scope: !848)
!860 = !DILocalVariable(name: "ioapic", scope: !848, file: !3, line: 268, type: !136)
!861 = !DILocation(line: 268, column: 28, scope: !848)
!862 = !DILocation(line: 268, column: 65, scope: !848)
!863 = !DILocation(line: 268, column: 37, scope: !848)
!864 = !DILocation(line: 270, column: 6, scope: !865)
!865 = distinct !DILexicalBlock(scope: !848, file: !3, line: 270, column: 6)
!866 = !DILocation(line: 270, column: 14, scope: !865)
!867 = !DILocation(line: 270, column: 33, scope: !865)
!868 = !DILocation(line: 270, column: 30, scope: !865)
!869 = !DILocation(line: 270, column: 6, scope: !848)
!870 = !DILocation(line: 271, column: 3, scope: !865)
!871 = !DILocation(line: 273, column: 15, scope: !848)
!872 = !DILocation(line: 273, column: 23, scope: !848)
!873 = !DILocation(line: 273, column: 3, scope: !848)
!874 = !DILocation(line: 273, column: 13, scope: !848)
!875 = !DILocation(line: 274, column: 15, scope: !848)
!876 = !DILocation(line: 274, column: 23, scope: !848)
!877 = !DILocation(line: 274, column: 3, scope: !848)
!878 = !DILocation(line: 274, column: 13, scope: !848)
!879 = !DILocation(line: 275, column: 2, scope: !848)
!880 = !DILocation(line: 276, column: 1, scope: !848)
