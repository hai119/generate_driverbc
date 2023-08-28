; ModuleID = '../bcout/drivers/acpi/processor_pdc.llvm.bc'
source_filename = "drivers/acpi/processor_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon = type { i64, [72 x i8] }
%struct.kmem_cache = type opaque
%struct.dmi_system_id = type { {}*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.anon.1 = type { i32, i32, i8* }
%struct.acpi_buffer = type { i64, i8* }

@.str = private unnamed_addr constant [9 x i8] c"ACPI0007\00", align 1
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"\013ACPI: Memory allocation error\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@boot_option_idle_override = external dso_local global i64, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"_PDC\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Extensa 5220\00", align 1
@processor_idle_dmi_table = internal constant [2 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }] [{ i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @set_no_mwait, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Phoenix Technologies LTD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 6, [79 x i8] c"Acer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 8, [79 x i8] c"0100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"Columbia\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } zeroinitializer], section ".init.rodata", align 16, !dbg !0
@.str.6 = private unnamed_addr constant [56 x i8] c"\015ACPI: %s detected - disabling mwait for CPU C-states\0A\00", align 1
@__const.processor_physically_present.object = private unnamed_addr constant { i32, [20 x i8] } { i32 0, [20 x i8] undef }, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"_UID\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_processor_set_pdc(i8* %handle) #0 !dbg !83 {
entry:
  %handle.addr = alloca i8*, align 8
  %obj_list = alloca %struct.acpi_object_list*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list** %obj_list, metadata !89, metadata !DIExpression()), !dbg !144
  %call = call zeroext i1 @arch_has_acpi_pdc() #9, !dbg !145
  %conv = zext i1 %call to i32, !dbg !145
  %cmp = icmp eq i32 %conv, 0, !dbg !147
  br i1 %cmp, label %if.then, label %if.end, !dbg !148

if.then:                                          ; preds = %entry
  br label %return, !dbg !149

if.end:                                           ; preds = %entry
  %call2 = call %struct.acpi_object_list* @acpi_processor_alloc_pdc() #9, !dbg !150
  store %struct.acpi_object_list* %call2, %struct.acpi_object_list** %obj_list, align 8, !dbg !151
  %0 = load %struct.acpi_object_list*, %struct.acpi_object_list** %obj_list, align 8, !dbg !152
  %tobool = icmp ne %struct.acpi_object_list* %0, null, !dbg !152
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !154

if.then3:                                         ; preds = %if.end
  br label %return, !dbg !155

if.end4:                                          ; preds = %if.end
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !156
  %2 = load %struct.acpi_object_list*, %struct.acpi_object_list** %obj_list, align 8, !dbg !157
  %call5 = call i32 @acpi_processor_eval_pdc(i8* %1, %struct.acpi_object_list* %2) #9, !dbg !158
  %3 = load %struct.acpi_object_list*, %struct.acpi_object_list** %obj_list, align 8, !dbg !159
  %pointer = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %3, i32 0, i32 1, !dbg !160
  %4 = load %union.acpi_object*, %union.acpi_object** %pointer, align 8, !dbg !160
  %buffer = bitcast %union.acpi_object* %4 to %struct.anon.1*, !dbg !161
  %pointer6 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer, i32 0, i32 2, !dbg !162
  %5 = load i8*, i8** %pointer6, align 8, !dbg !162
  call void @kfree(i8* %5) #9, !dbg !163
  %6 = load %struct.acpi_object_list*, %struct.acpi_object_list** %obj_list, align 8, !dbg !164
  %pointer7 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %6, i32 0, i32 1, !dbg !165
  %7 = load %union.acpi_object*, %union.acpi_object** %pointer7, align 8, !dbg !165
  %8 = bitcast %union.acpi_object* %7 to i8*, !dbg !164
  call void @kfree(i8* %8) #9, !dbg !166
  %9 = load %struct.acpi_object_list*, %struct.acpi_object_list** %obj_list, align 8, !dbg !167
  %10 = bitcast %struct.acpi_object_list* %9 to i8*, !dbg !167
  call void @kfree(i8* %10) #9, !dbg !168
  br label %return, !dbg !169

return:                                           ; preds = %if.end4, %if.then3, %if.then
  ret void, !dbg !169
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @arch_has_acpi_pdc() #0 !dbg !170 {
entry:
  %c = alloca %struct.cpuinfo_x86*, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuinfo_x86** %c, metadata !176, metadata !DIExpression()), !dbg !235
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %c, align 8, !dbg !235
  %0 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !236
  %x86_vendor = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %0, i32 0, i32 1, !dbg !237
  %1 = load i8, i8* %x86_vendor, align 1, !dbg !237
  %conv = zext i8 %1 to i32, !dbg !236
  %cmp = icmp eq i32 %conv, 0, !dbg !238
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !239

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !240
  %x86_vendor2 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %2, i32 0, i32 1, !dbg !241
  %3 = load i8, i8* %x86_vendor2, align 1, !dbg !241
  %conv3 = zext i8 %3 to i32, !dbg !240
  %cmp4 = icmp eq i32 %conv3, 5, !dbg !242
  br label %lor.end, !dbg !239

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp4, %lor.rhs ]
  ret i1 %4, !dbg !243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_object_list* @acpi_processor_alloc_pdc() #0 !dbg !244 {
entry:
  %s.addr.i.i157 = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i157, metadata !247, metadata !DIExpression()), !dbg !258
  %flags.addr.i17.i158 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i158, metadata !266, metadata !DIExpression()), !dbg !267
  %size.addr.i18.i159 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i159, metadata !268, metadata !DIExpression()), !dbg !269
  %ret.i.i160 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i160, metadata !270, metadata !DIExpression()), !dbg !271
  %retval.i12.i161 = alloca i32, align 4
  %flags.addr.i13.i162 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i162, metadata !272, metadata !DIExpression()), !dbg !276
  %retval.i.i163 = alloca i32, align 4
  %size.addr.i11.i164 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i164, metadata !278, metadata !DIExpression()), !dbg !282
  %size.addr.i.i.i165 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i165, metadata !284, metadata !DIExpression()), !dbg !288
  %flags.addr.i.i.i166 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i166, metadata !293, metadata !DIExpression()), !dbg !294
  %order.addr.i.i.i167 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i167, metadata !295, metadata !DIExpression()), !dbg !296
  %size.addr.i.i168 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i168, metadata !297, metadata !DIExpression()), !dbg !298
  %flags.addr.i.i169 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i169, metadata !299, metadata !DIExpression()), !dbg !300
  %order.i.i170 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i170, metadata !301, metadata !DIExpression()), !dbg !302
  %retval.i171 = alloca i8*, align 8
  %size.addr.i172 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i172, metadata !303, metadata !DIExpression()), !dbg !304
  %flags.addr.i173 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i173, metadata !305, metadata !DIExpression()), !dbg !306
  %index.i174 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i174, metadata !307, metadata !DIExpression()), !dbg !308
  %s.addr.i.i12 = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i12, metadata !247, metadata !DIExpression()), !dbg !309
  %flags.addr.i17.i13 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i13, metadata !266, metadata !DIExpression()), !dbg !312
  %size.addr.i18.i14 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i14, metadata !268, metadata !DIExpression()), !dbg !313
  %ret.i.i15 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i15, metadata !270, metadata !DIExpression()), !dbg !314
  %retval.i12.i16 = alloca i32, align 4
  %flags.addr.i13.i17 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i17, metadata !272, metadata !DIExpression()), !dbg !315
  %retval.i.i18 = alloca i32, align 4
  %size.addr.i11.i19 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i19, metadata !278, metadata !DIExpression()), !dbg !317
  %size.addr.i.i.i20 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i20, metadata !284, metadata !DIExpression()), !dbg !319
  %flags.addr.i.i.i21 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i21, metadata !293, metadata !DIExpression()), !dbg !322
  %order.addr.i.i.i22 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i22, metadata !295, metadata !DIExpression()), !dbg !323
  %size.addr.i.i23 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i23, metadata !297, metadata !DIExpression()), !dbg !324
  %flags.addr.i.i24 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i24, metadata !299, metadata !DIExpression()), !dbg !325
  %order.i.i25 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i25, metadata !301, metadata !DIExpression()), !dbg !326
  %retval.i26 = alloca i8*, align 8
  %size.addr.i27 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i27, metadata !303, metadata !DIExpression()), !dbg !327
  %flags.addr.i28 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i28, metadata !305, metadata !DIExpression()), !dbg !328
  %index.i29 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i29, metadata !307, metadata !DIExpression()), !dbg !329
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !247, metadata !DIExpression()), !dbg !330
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !266, metadata !DIExpression()), !dbg !333
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !268, metadata !DIExpression()), !dbg !334
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !270, metadata !DIExpression()), !dbg !335
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !272, metadata !DIExpression()), !dbg !336
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !278, metadata !DIExpression()), !dbg !338
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !284, metadata !DIExpression()), !dbg !340
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !293, metadata !DIExpression()), !dbg !343
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !295, metadata !DIExpression()), !dbg !344
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !297, metadata !DIExpression()), !dbg !345
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !299, metadata !DIExpression()), !dbg !346
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !301, metadata !DIExpression()), !dbg !347
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !303, metadata !DIExpression()), !dbg !348
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !305, metadata !DIExpression()), !dbg !349
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !307, metadata !DIExpression()), !dbg !350
  %retval = alloca %struct.acpi_object_list*, align 8
  %obj_list = alloca %struct.acpi_object_list*, align 8
  %obj = alloca %union.acpi_object*, align 8
  %buf = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list** %obj_list, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !353, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata i32** %buf, metadata !355, metadata !DIExpression()), !dbg !356
  store i64 16, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !357
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #10, !dbg !358
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !359

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !360
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !361
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !362

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !363
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !364
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !365
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !366
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !347
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !367
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !368
  %8 = load i32, i32* %order.i.i, align 4, !dbg !369
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !370
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !371
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !372
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !373
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !373
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !373
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !373
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !373
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !374
  br label %kmalloc.exit, !dbg !374

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !375
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !376
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !376
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !378

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !379
  br label %kmalloc_index.exit.i, !dbg !379

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !380
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !382
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !383

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !384
  br label %kmalloc_index.exit.i, !dbg !384

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !385
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !387
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !388

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !389
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !390
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !391

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !392
  br label %kmalloc_index.exit.i, !dbg !392

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !393
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !395
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !396

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !397
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !398
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !399

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !400
  br label %kmalloc_index.exit.i, !dbg !400

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !401
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !403
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !404

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !405
  br label %kmalloc_index.exit.i, !dbg !405

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !406
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !408
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !409

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !410
  br label %kmalloc_index.exit.i, !dbg !410

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !411
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !413
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !414

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !415
  br label %kmalloc_index.exit.i, !dbg !415

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !416
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !418
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !419

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !420
  br label %kmalloc_index.exit.i, !dbg !420

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !421
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !423
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !424

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !425
  br label %kmalloc_index.exit.i, !dbg !425

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !426
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !428
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !429

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !430
  br label %kmalloc_index.exit.i, !dbg !430

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !431
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !433
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !434

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !435
  br label %kmalloc_index.exit.i, !dbg !435

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !436
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !438
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !439

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !440
  br label %kmalloc_index.exit.i, !dbg !440

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !441
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !443
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !444

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !445
  br label %kmalloc_index.exit.i, !dbg !445

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !446
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !448
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !449

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !450
  br label %kmalloc_index.exit.i, !dbg !450

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !451
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !453
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !454

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !455
  br label %kmalloc_index.exit.i, !dbg !455

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !456
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !458
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !459

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !460
  br label %kmalloc_index.exit.i, !dbg !460

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !461
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !463
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !464

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !465
  br label %kmalloc_index.exit.i, !dbg !465

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !466
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !468
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !469

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !470
  br label %kmalloc_index.exit.i, !dbg !470

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !471
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !473
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !474

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !475
  br label %kmalloc_index.exit.i, !dbg !475

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !476
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !478
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !479

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !480
  br label %kmalloc_index.exit.i, !dbg !480

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !481
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !483
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !484

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !485
  br label %kmalloc_index.exit.i, !dbg !485

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !486
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !488
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !489

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !490
  br label %kmalloc_index.exit.i, !dbg !490

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !491
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !493
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !494

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !495
  br label %kmalloc_index.exit.i, !dbg !495

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !496
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !498
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !499

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !500
  br label %kmalloc_index.exit.i, !dbg !500

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !501
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !503
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !504

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !505
  br label %kmalloc_index.exit.i, !dbg !505

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !506
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !508
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !509

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !510
  br label %kmalloc_index.exit.i, !dbg !510

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !511
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !513
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !514

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !515
  br label %kmalloc_index.exit.i, !dbg !515

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !516
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !518
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !519

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !520
  br label %kmalloc_index.exit.i, !dbg !520

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !521, !srcloc !524
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 101) #10, !dbg !525, !srcloc !528
  unreachable, !dbg !529

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !530
  store i32 %43, i32* %index.i, align 4, !dbg !531
  %44 = load i32, i32* %index.i, align 4, !dbg !532
  %tobool.i = icmp ne i32 %44, 0, !dbg !532
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !534

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !535
  br label %kmalloc.exit, !dbg !535

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !536
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !537
  %and.i.i = and i32 %46, 17, !dbg !537
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !537
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !537
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !537
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !537
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !539

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !540
  br label %kmalloc_type.exit.i, !dbg !540

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !541
  %and2.i.i = and i32 %47, 1, !dbg !542
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !541
  %48 = zext i1 %tobool3.i.i to i64, !dbg !541
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !541
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !543
  br label %kmalloc_type.exit.i, !dbg !543

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !544
  %idxprom.i = zext i32 %49 to i64, !dbg !545
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !545
  %50 = load i32, i32* %index.i, align 4, !dbg !546
  %idxprom6.i = zext i32 %50 to i64, !dbg !545
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !545
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !545
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !547
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !548
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !549
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !550
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !551
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !551
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !551
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !551
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !551
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !335
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !552
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !553
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !554
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !555
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !556
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !557
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !558
  store i8* %60, i8** %retval.i, align 8, !dbg !559
  br label %kmalloc.exit, !dbg !559

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !560
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !561
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !562
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !562
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !562
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !562
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !562
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !563
  br label %kmalloc.exit, !dbg !563

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !564
  %64 = bitcast i8* %63 to %struct.acpi_object_list*, !dbg !565
  store %struct.acpi_object_list* %64, %struct.acpi_object_list** %obj_list, align 8, !dbg !566
  %65 = load %struct.acpi_object_list*, %struct.acpi_object_list** %obj_list, align 8, !dbg !567
  %tobool = icmp ne %struct.acpi_object_list* %65, null, !dbg !567
  br i1 %tobool, label %if.end, label %if.then, !dbg !569

if.then:                                          ; preds = %kmalloc.exit
  br label %out, !dbg !570

if.end:                                           ; preds = %kmalloc.exit
  store i64 24, i64* %size.addr.i27, align 8
  store i32 3264, i32* %flags.addr.i28, align 4
  %66 = load i64, i64* %size.addr.i27, align 8, !dbg !571
  %67 = call i1 @llvm.is.constant.i64(i64 %66) #10, !dbg !572
  br i1 %67, label %if.then.i31, label %if.end9.i155, !dbg !573

if.then.i31:                                      ; preds = %if.end
  %68 = load i64, i64* %size.addr.i27, align 8, !dbg !574
  %cmp.i30 = icmp ugt i64 %68, 8192, !dbg !575
  br i1 %cmp.i30, label %if.then1.i37, label %if.end.i39, !dbg !576

if.then1.i37:                                     ; preds = %if.then.i31
  %69 = load i64, i64* %size.addr.i27, align 8, !dbg !577
  %70 = load i32, i32* %flags.addr.i28, align 4, !dbg !578
  store i64 %69, i64* %size.addr.i.i23, align 8
  store i32 %70, i32* %flags.addr.i.i24, align 4
  %71 = load i64, i64* %size.addr.i.i23, align 8, !dbg !579
  %call.i.i32 = call i32 @get_order(i64 %71) #11, !dbg !580
  store i32 %call.i.i32, i32* %order.i.i25, align 4, !dbg !326
  %72 = load i64, i64* %size.addr.i.i23, align 8, !dbg !581
  %73 = load i32, i32* %flags.addr.i.i24, align 4, !dbg !582
  %74 = load i32, i32* %order.i.i25, align 4, !dbg !583
  store i64 %72, i64* %size.addr.i.i.i20, align 8
  store i32 %73, i32* %flags.addr.i.i.i21, align 4
  store i32 %74, i32* %order.addr.i.i.i22, align 4
  %75 = load i64, i64* %size.addr.i.i.i20, align 8, !dbg !584
  %76 = load i32, i32* %flags.addr.i.i.i21, align 4, !dbg !585
  %77 = load i32, i32* %order.addr.i.i.i22, align 4, !dbg !586
  %call.i.i.i33 = call noalias i8* @kmalloc_order(i64 %75, i32 %76, i32 %77) #12, !dbg !587
  %ptrint.i.i.i34 = ptrtoint i8* %call.i.i.i33 to i64, !dbg !587
  %maskedptr.i.i.i35 = and i64 %ptrint.i.i.i34, 4095, !dbg !587
  %maskcond.i.i.i36 = icmp eq i64 %maskedptr.i.i.i35, 0, !dbg !587
  call void @llvm.assume(i1 %maskcond.i.i.i36) #10, !dbg !587
  store i8* %call.i.i.i33, i8** %retval.i26, align 8, !dbg !588
  br label %kmalloc.exit156, !dbg !588

if.end.i39:                                       ; preds = %if.then.i31
  %78 = load i64, i64* %size.addr.i27, align 8, !dbg !589
  store i64 %78, i64* %size.addr.i11.i19, align 8
  %79 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !590
  %tobool.i.i38 = icmp ne i64 %79, 0, !dbg !590
  br i1 %tobool.i.i38, label %if.end.i.i42, label %if.then.i.i40, !dbg !591

if.then.i.i40:                                    ; preds = %if.end.i39
  store i32 0, i32* %retval.i.i18, align 4, !dbg !592
  br label %kmalloc_index.exit.i128, !dbg !592

if.end.i.i42:                                     ; preds = %if.end.i39
  %80 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !593
  %cmp.i.i41 = icmp ule i64 %80, 8, !dbg !594
  br i1 %cmp.i.i41, label %if.then1.i.i43, label %if.end2.i.i45, !dbg !595

if.then1.i.i43:                                   ; preds = %if.end.i.i42
  store i32 3, i32* %retval.i.i18, align 4, !dbg !596
  br label %kmalloc_index.exit.i128, !dbg !596

if.end2.i.i45:                                    ; preds = %if.end.i.i42
  %81 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !597
  %cmp3.i.i44 = icmp ugt i64 %81, 64, !dbg !598
  br i1 %cmp3.i.i44, label %land.lhs.true.i.i47, label %if.end6.i.i50, !dbg !599

land.lhs.true.i.i47:                              ; preds = %if.end2.i.i45
  %82 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !600
  %cmp4.i.i46 = icmp ule i64 %82, 96, !dbg !601
  br i1 %cmp4.i.i46, label %if.then5.i.i48, label %if.end6.i.i50, !dbg !602

if.then5.i.i48:                                   ; preds = %land.lhs.true.i.i47
  store i32 1, i32* %retval.i.i18, align 4, !dbg !603
  br label %kmalloc_index.exit.i128, !dbg !603

if.end6.i.i50:                                    ; preds = %land.lhs.true.i.i47, %if.end2.i.i45
  %83 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !604
  %cmp7.i.i49 = icmp ugt i64 %83, 128, !dbg !605
  br i1 %cmp7.i.i49, label %land.lhs.true8.i.i52, label %if.end11.i.i55, !dbg !606

land.lhs.true8.i.i52:                             ; preds = %if.end6.i.i50
  %84 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !607
  %cmp9.i.i51 = icmp ule i64 %84, 192, !dbg !608
  br i1 %cmp9.i.i51, label %if.then10.i.i53, label %if.end11.i.i55, !dbg !609

if.then10.i.i53:                                  ; preds = %land.lhs.true8.i.i52
  store i32 2, i32* %retval.i.i18, align 4, !dbg !610
  br label %kmalloc_index.exit.i128, !dbg !610

if.end11.i.i55:                                   ; preds = %land.lhs.true8.i.i52, %if.end6.i.i50
  %85 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !611
  %cmp12.i.i54 = icmp ule i64 %85, 8, !dbg !612
  br i1 %cmp12.i.i54, label %if.then13.i.i56, label %if.end14.i.i58, !dbg !613

if.then13.i.i56:                                  ; preds = %if.end11.i.i55
  store i32 3, i32* %retval.i.i18, align 4, !dbg !614
  br label %kmalloc_index.exit.i128, !dbg !614

if.end14.i.i58:                                   ; preds = %if.end11.i.i55
  %86 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !615
  %cmp15.i.i57 = icmp ule i64 %86, 16, !dbg !616
  br i1 %cmp15.i.i57, label %if.then16.i.i59, label %if.end17.i.i61, !dbg !617

if.then16.i.i59:                                  ; preds = %if.end14.i.i58
  store i32 4, i32* %retval.i.i18, align 4, !dbg !618
  br label %kmalloc_index.exit.i128, !dbg !618

if.end17.i.i61:                                   ; preds = %if.end14.i.i58
  %87 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !619
  %cmp18.i.i60 = icmp ule i64 %87, 32, !dbg !620
  br i1 %cmp18.i.i60, label %if.then19.i.i62, label %if.end20.i.i64, !dbg !621

if.then19.i.i62:                                  ; preds = %if.end17.i.i61
  store i32 5, i32* %retval.i.i18, align 4, !dbg !622
  br label %kmalloc_index.exit.i128, !dbg !622

if.end20.i.i64:                                   ; preds = %if.end17.i.i61
  %88 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !623
  %cmp21.i.i63 = icmp ule i64 %88, 64, !dbg !624
  br i1 %cmp21.i.i63, label %if.then22.i.i65, label %if.end23.i.i67, !dbg !625

if.then22.i.i65:                                  ; preds = %if.end20.i.i64
  store i32 6, i32* %retval.i.i18, align 4, !dbg !626
  br label %kmalloc_index.exit.i128, !dbg !626

if.end23.i.i67:                                   ; preds = %if.end20.i.i64
  %89 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !627
  %cmp24.i.i66 = icmp ule i64 %89, 128, !dbg !628
  br i1 %cmp24.i.i66, label %if.then25.i.i68, label %if.end26.i.i70, !dbg !629

if.then25.i.i68:                                  ; preds = %if.end23.i.i67
  store i32 7, i32* %retval.i.i18, align 4, !dbg !630
  br label %kmalloc_index.exit.i128, !dbg !630

if.end26.i.i70:                                   ; preds = %if.end23.i.i67
  %90 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !631
  %cmp27.i.i69 = icmp ule i64 %90, 256, !dbg !632
  br i1 %cmp27.i.i69, label %if.then28.i.i71, label %if.end29.i.i73, !dbg !633

if.then28.i.i71:                                  ; preds = %if.end26.i.i70
  store i32 8, i32* %retval.i.i18, align 4, !dbg !634
  br label %kmalloc_index.exit.i128, !dbg !634

if.end29.i.i73:                                   ; preds = %if.end26.i.i70
  %91 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !635
  %cmp30.i.i72 = icmp ule i64 %91, 512, !dbg !636
  br i1 %cmp30.i.i72, label %if.then31.i.i74, label %if.end32.i.i76, !dbg !637

if.then31.i.i74:                                  ; preds = %if.end29.i.i73
  store i32 9, i32* %retval.i.i18, align 4, !dbg !638
  br label %kmalloc_index.exit.i128, !dbg !638

if.end32.i.i76:                                   ; preds = %if.end29.i.i73
  %92 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !639
  %cmp33.i.i75 = icmp ule i64 %92, 1024, !dbg !640
  br i1 %cmp33.i.i75, label %if.then34.i.i77, label %if.end35.i.i79, !dbg !641

if.then34.i.i77:                                  ; preds = %if.end32.i.i76
  store i32 10, i32* %retval.i.i18, align 4, !dbg !642
  br label %kmalloc_index.exit.i128, !dbg !642

if.end35.i.i79:                                   ; preds = %if.end32.i.i76
  %93 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !643
  %cmp36.i.i78 = icmp ule i64 %93, 2048, !dbg !644
  br i1 %cmp36.i.i78, label %if.then37.i.i80, label %if.end38.i.i82, !dbg !645

if.then37.i.i80:                                  ; preds = %if.end35.i.i79
  store i32 11, i32* %retval.i.i18, align 4, !dbg !646
  br label %kmalloc_index.exit.i128, !dbg !646

if.end38.i.i82:                                   ; preds = %if.end35.i.i79
  %94 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !647
  %cmp39.i.i81 = icmp ule i64 %94, 4096, !dbg !648
  br i1 %cmp39.i.i81, label %if.then40.i.i83, label %if.end41.i.i85, !dbg !649

if.then40.i.i83:                                  ; preds = %if.end38.i.i82
  store i32 12, i32* %retval.i.i18, align 4, !dbg !650
  br label %kmalloc_index.exit.i128, !dbg !650

if.end41.i.i85:                                   ; preds = %if.end38.i.i82
  %95 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !651
  %cmp42.i.i84 = icmp ule i64 %95, 8192, !dbg !652
  br i1 %cmp42.i.i84, label %if.then43.i.i86, label %if.end44.i.i88, !dbg !653

if.then43.i.i86:                                  ; preds = %if.end41.i.i85
  store i32 13, i32* %retval.i.i18, align 4, !dbg !654
  br label %kmalloc_index.exit.i128, !dbg !654

if.end44.i.i88:                                   ; preds = %if.end41.i.i85
  %96 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !655
  %cmp45.i.i87 = icmp ule i64 %96, 16384, !dbg !656
  br i1 %cmp45.i.i87, label %if.then46.i.i89, label %if.end47.i.i91, !dbg !657

if.then46.i.i89:                                  ; preds = %if.end44.i.i88
  store i32 14, i32* %retval.i.i18, align 4, !dbg !658
  br label %kmalloc_index.exit.i128, !dbg !658

if.end47.i.i91:                                   ; preds = %if.end44.i.i88
  %97 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !659
  %cmp48.i.i90 = icmp ule i64 %97, 32768, !dbg !660
  br i1 %cmp48.i.i90, label %if.then49.i.i92, label %if.end50.i.i94, !dbg !661

if.then49.i.i92:                                  ; preds = %if.end47.i.i91
  store i32 15, i32* %retval.i.i18, align 4, !dbg !662
  br label %kmalloc_index.exit.i128, !dbg !662

if.end50.i.i94:                                   ; preds = %if.end47.i.i91
  %98 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !663
  %cmp51.i.i93 = icmp ule i64 %98, 65536, !dbg !664
  br i1 %cmp51.i.i93, label %if.then52.i.i95, label %if.end53.i.i97, !dbg !665

if.then52.i.i95:                                  ; preds = %if.end50.i.i94
  store i32 16, i32* %retval.i.i18, align 4, !dbg !666
  br label %kmalloc_index.exit.i128, !dbg !666

if.end53.i.i97:                                   ; preds = %if.end50.i.i94
  %99 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !667
  %cmp54.i.i96 = icmp ule i64 %99, 131072, !dbg !668
  br i1 %cmp54.i.i96, label %if.then55.i.i98, label %if.end56.i.i100, !dbg !669

if.then55.i.i98:                                  ; preds = %if.end53.i.i97
  store i32 17, i32* %retval.i.i18, align 4, !dbg !670
  br label %kmalloc_index.exit.i128, !dbg !670

if.end56.i.i100:                                  ; preds = %if.end53.i.i97
  %100 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !671
  %cmp57.i.i99 = icmp ule i64 %100, 262144, !dbg !672
  br i1 %cmp57.i.i99, label %if.then58.i.i101, label %if.end59.i.i103, !dbg !673

if.then58.i.i101:                                 ; preds = %if.end56.i.i100
  store i32 18, i32* %retval.i.i18, align 4, !dbg !674
  br label %kmalloc_index.exit.i128, !dbg !674

if.end59.i.i103:                                  ; preds = %if.end56.i.i100
  %101 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !675
  %cmp60.i.i102 = icmp ule i64 %101, 524288, !dbg !676
  br i1 %cmp60.i.i102, label %if.then61.i.i104, label %if.end62.i.i106, !dbg !677

if.then61.i.i104:                                 ; preds = %if.end59.i.i103
  store i32 19, i32* %retval.i.i18, align 4, !dbg !678
  br label %kmalloc_index.exit.i128, !dbg !678

if.end62.i.i106:                                  ; preds = %if.end59.i.i103
  %102 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !679
  %cmp63.i.i105 = icmp ule i64 %102, 1048576, !dbg !680
  br i1 %cmp63.i.i105, label %if.then64.i.i107, label %if.end65.i.i109, !dbg !681

if.then64.i.i107:                                 ; preds = %if.end62.i.i106
  store i32 20, i32* %retval.i.i18, align 4, !dbg !682
  br label %kmalloc_index.exit.i128, !dbg !682

if.end65.i.i109:                                  ; preds = %if.end62.i.i106
  %103 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !683
  %cmp66.i.i108 = icmp ule i64 %103, 2097152, !dbg !684
  br i1 %cmp66.i.i108, label %if.then67.i.i110, label %if.end68.i.i112, !dbg !685

if.then67.i.i110:                                 ; preds = %if.end65.i.i109
  store i32 21, i32* %retval.i.i18, align 4, !dbg !686
  br label %kmalloc_index.exit.i128, !dbg !686

if.end68.i.i112:                                  ; preds = %if.end65.i.i109
  %104 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !687
  %cmp69.i.i111 = icmp ule i64 %104, 4194304, !dbg !688
  br i1 %cmp69.i.i111, label %if.then70.i.i113, label %if.end71.i.i115, !dbg !689

if.then70.i.i113:                                 ; preds = %if.end68.i.i112
  store i32 22, i32* %retval.i.i18, align 4, !dbg !690
  br label %kmalloc_index.exit.i128, !dbg !690

if.end71.i.i115:                                  ; preds = %if.end68.i.i112
  %105 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !691
  %cmp72.i.i114 = icmp ule i64 %105, 8388608, !dbg !692
  br i1 %cmp72.i.i114, label %if.then73.i.i116, label %if.end74.i.i118, !dbg !693

if.then73.i.i116:                                 ; preds = %if.end71.i.i115
  store i32 23, i32* %retval.i.i18, align 4, !dbg !694
  br label %kmalloc_index.exit.i128, !dbg !694

if.end74.i.i118:                                  ; preds = %if.end71.i.i115
  %106 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !695
  %cmp75.i.i117 = icmp ule i64 %106, 16777216, !dbg !696
  br i1 %cmp75.i.i117, label %if.then76.i.i119, label %if.end77.i.i121, !dbg !697

if.then76.i.i119:                                 ; preds = %if.end74.i.i118
  store i32 24, i32* %retval.i.i18, align 4, !dbg !698
  br label %kmalloc_index.exit.i128, !dbg !698

if.end77.i.i121:                                  ; preds = %if.end74.i.i118
  %107 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !699
  %cmp78.i.i120 = icmp ule i64 %107, 33554432, !dbg !700
  br i1 %cmp78.i.i120, label %if.then79.i.i122, label %if.end80.i.i124, !dbg !701

if.then79.i.i122:                                 ; preds = %if.end77.i.i121
  store i32 25, i32* %retval.i.i18, align 4, !dbg !702
  br label %kmalloc_index.exit.i128, !dbg !702

if.end80.i.i124:                                  ; preds = %if.end77.i.i121
  %108 = load i64, i64* %size.addr.i11.i19, align 8, !dbg !703
  %cmp81.i.i123 = icmp ule i64 %108, 67108864, !dbg !704
  br i1 %cmp81.i.i123, label %if.then82.i.i125, label %if.end83.i.i126, !dbg !705

if.then82.i.i125:                                 ; preds = %if.end80.i.i124
  store i32 26, i32* %retval.i.i18, align 4, !dbg !706
  br label %kmalloc_index.exit.i128, !dbg !706

if.end83.i.i126:                                  ; preds = %if.end80.i.i124
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !707, !srcloc !524
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 101) #10, !dbg !708, !srcloc !528
  unreachable, !dbg !709

kmalloc_index.exit.i128:                          ; preds = %if.then82.i.i125, %if.then79.i.i122, %if.then76.i.i119, %if.then73.i.i116, %if.then70.i.i113, %if.then67.i.i110, %if.then64.i.i107, %if.then61.i.i104, %if.then58.i.i101, %if.then55.i.i98, %if.then52.i.i95, %if.then49.i.i92, %if.then46.i.i89, %if.then43.i.i86, %if.then40.i.i83, %if.then37.i.i80, %if.then34.i.i77, %if.then31.i.i74, %if.then28.i.i71, %if.then25.i.i68, %if.then22.i.i65, %if.then19.i.i62, %if.then16.i.i59, %if.then13.i.i56, %if.then10.i.i53, %if.then5.i.i48, %if.then1.i.i43, %if.then.i.i40
  %109 = load i32, i32* %retval.i.i18, align 4, !dbg !710
  store i32 %109, i32* %index.i29, align 4, !dbg !711
  %110 = load i32, i32* %index.i29, align 4, !dbg !712
  %tobool.i127 = icmp ne i32 %110, 0, !dbg !712
  br i1 %tobool.i127, label %if.end4.i135, label %if.then3.i129, !dbg !713

if.then3.i129:                                    ; preds = %kmalloc_index.exit.i128
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i26, align 8, !dbg !714
  br label %kmalloc.exit156, !dbg !714

if.end4.i135:                                     ; preds = %kmalloc_index.exit.i128
  %111 = load i32, i32* %flags.addr.i28, align 4, !dbg !715
  store i32 %111, i32* %flags.addr.i13.i17, align 4
  %112 = load i32, i32* %flags.addr.i13.i17, align 4, !dbg !716
  %and.i.i130 = and i32 %112, 17, !dbg !716
  %cmp.i14.i131 = icmp eq i32 %and.i.i130, 0, !dbg !716
  %lnot.i.i132 = xor i1 %cmp.i14.i131, true, !dbg !716
  %lnot.ext.i.i133 = zext i1 %cmp.i14.i131 to i32, !dbg !716
  %conv.i.i134 = sext i32 %lnot.ext.i.i133 to i64, !dbg !716
  br i1 %cmp.i14.i131, label %if.then.i15.i136, label %if.end.i16.i140, !dbg !717

if.then.i15.i136:                                 ; preds = %if.end4.i135
  store i32 0, i32* %retval.i12.i16, align 4, !dbg !718
  br label %kmalloc_type.exit.i150, !dbg !718

if.end.i16.i140:                                  ; preds = %if.end4.i135
  %113 = load i32, i32* %flags.addr.i13.i17, align 4, !dbg !719
  %and2.i.i137 = and i32 %113, 1, !dbg !720
  %tobool3.i.i138 = icmp ne i32 %and2.i.i137, 0, !dbg !719
  %114 = zext i1 %tobool3.i.i138 to i64, !dbg !719
  %cond.i.i139 = select i1 %tobool3.i.i138, i32 2, i32 1, !dbg !719
  store i32 %cond.i.i139, i32* %retval.i12.i16, align 4, !dbg !721
  br label %kmalloc_type.exit.i150, !dbg !721

kmalloc_type.exit.i150:                           ; preds = %if.end.i16.i140, %if.then.i15.i136
  %115 = load i32, i32* %retval.i12.i16, align 4, !dbg !722
  %idxprom.i141 = zext i32 %115 to i64, !dbg !723
  %arrayidx.i142 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i141, !dbg !723
  %116 = load i32, i32* %index.i29, align 4, !dbg !724
  %idxprom6.i143 = zext i32 %116 to i64, !dbg !723
  %arrayidx7.i144 = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i142, i64 0, i64 %idxprom6.i143, !dbg !723
  %117 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i144, align 8, !dbg !723
  %118 = load i32, i32* %flags.addr.i28, align 4, !dbg !725
  %119 = load i64, i64* %size.addr.i27, align 8, !dbg !726
  store %struct.kmem_cache* %117, %struct.kmem_cache** %s.addr.i.i12, align 8
  store i32 %118, i32* %flags.addr.i17.i13, align 4
  store i64 %119, i64* %size.addr.i18.i14, align 8
  %120 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i12, align 8, !dbg !727
  %121 = load i32, i32* %flags.addr.i17.i13, align 4, !dbg !728
  %call.i19.i145 = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %120, i32 %121) #12, !dbg !729
  %ptrint.i.i146 = ptrtoint i8* %call.i19.i145 to i64, !dbg !729
  %maskedptr.i.i147 = and i64 %ptrint.i.i146, 7, !dbg !729
  %maskcond.i.i148 = icmp eq i64 %maskedptr.i.i147, 0, !dbg !729
  call void @llvm.assume(i1 %maskcond.i.i148) #10, !dbg !729
  store i8* %call.i19.i145, i8** %ret.i.i15, align 8, !dbg !314
  %122 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i12, align 8, !dbg !730
  %123 = load i8*, i8** %ret.i.i15, align 8, !dbg !731
  %124 = load i64, i64* %size.addr.i18.i14, align 8, !dbg !732
  %125 = load i32, i32* %flags.addr.i17.i13, align 4, !dbg !733
  %call1.i.i149 = call i8* @kasan_kmalloc(%struct.kmem_cache* %122, i8* %123, i64 %124, i32 %125) #12, !dbg !734
  store i8* %call1.i.i149, i8** %ret.i.i15, align 8, !dbg !735
  %126 = load i8*, i8** %ret.i.i15, align 8, !dbg !736
  store i8* %126, i8** %retval.i26, align 8, !dbg !737
  br label %kmalloc.exit156, !dbg !737

if.end9.i155:                                     ; preds = %if.end
  %127 = load i64, i64* %size.addr.i27, align 8, !dbg !738
  %128 = load i32, i32* %flags.addr.i28, align 4, !dbg !739
  %call10.i151 = call noalias i8* @__kmalloc(i64 %127, i32 %128) #12, !dbg !740
  %ptrint.i152 = ptrtoint i8* %call10.i151 to i64, !dbg !740
  %maskedptr.i153 = and i64 %ptrint.i152, 7, !dbg !740
  %maskcond.i154 = icmp eq i64 %maskedptr.i153, 0, !dbg !740
  call void @llvm.assume(i1 %maskcond.i154) #10, !dbg !740
  store i8* %call10.i151, i8** %retval.i26, align 8, !dbg !741
  br label %kmalloc.exit156, !dbg !741

kmalloc.exit156:                                  ; preds = %if.then1.i37, %if.then3.i129, %kmalloc_type.exit.i150, %if.end9.i155
  %129 = load i8*, i8** %retval.i26, align 8, !dbg !742
  %130 = bitcast i8* %129 to %union.acpi_object*, !dbg !743
  store %union.acpi_object* %130, %union.acpi_object** %obj, align 8, !dbg !744
  %131 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !745
  %tobool2 = icmp ne %union.acpi_object* %131, null, !dbg !745
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !747

if.then3:                                         ; preds = %kmalloc.exit156
  %132 = load %struct.acpi_object_list*, %struct.acpi_object_list** %obj_list, align 8, !dbg !748
  %133 = bitcast %struct.acpi_object_list* %132 to i8*, !dbg !748
  call void @kfree(i8* %133) #9, !dbg !750
  br label %out, !dbg !751

if.end4:                                          ; preds = %kmalloc.exit156
  store i64 12, i64* %size.addr.i172, align 8
  store i32 3264, i32* %flags.addr.i173, align 4
  %134 = load i64, i64* %size.addr.i172, align 8, !dbg !752
  %135 = call i1 @llvm.is.constant.i64(i64 %134) #10, !dbg !753
  br i1 %135, label %if.then.i176, label %if.end9.i300, !dbg !754

if.then.i176:                                     ; preds = %if.end4
  %136 = load i64, i64* %size.addr.i172, align 8, !dbg !755
  %cmp.i175 = icmp ugt i64 %136, 8192, !dbg !756
  br i1 %cmp.i175, label %if.then1.i182, label %if.end.i184, !dbg !757

if.then1.i182:                                    ; preds = %if.then.i176
  %137 = load i64, i64* %size.addr.i172, align 8, !dbg !758
  %138 = load i32, i32* %flags.addr.i173, align 4, !dbg !759
  store i64 %137, i64* %size.addr.i.i168, align 8
  store i32 %138, i32* %flags.addr.i.i169, align 4
  %139 = load i64, i64* %size.addr.i.i168, align 8, !dbg !760
  %call.i.i177 = call i32 @get_order(i64 %139) #11, !dbg !761
  store i32 %call.i.i177, i32* %order.i.i170, align 4, !dbg !302
  %140 = load i64, i64* %size.addr.i.i168, align 8, !dbg !762
  %141 = load i32, i32* %flags.addr.i.i169, align 4, !dbg !763
  %142 = load i32, i32* %order.i.i170, align 4, !dbg !764
  store i64 %140, i64* %size.addr.i.i.i165, align 8
  store i32 %141, i32* %flags.addr.i.i.i166, align 4
  store i32 %142, i32* %order.addr.i.i.i167, align 4
  %143 = load i64, i64* %size.addr.i.i.i165, align 8, !dbg !765
  %144 = load i32, i32* %flags.addr.i.i.i166, align 4, !dbg !766
  %145 = load i32, i32* %order.addr.i.i.i167, align 4, !dbg !767
  %call.i.i.i178 = call noalias i8* @kmalloc_order(i64 %143, i32 %144, i32 %145) #12, !dbg !768
  %ptrint.i.i.i179 = ptrtoint i8* %call.i.i.i178 to i64, !dbg !768
  %maskedptr.i.i.i180 = and i64 %ptrint.i.i.i179, 4095, !dbg !768
  %maskcond.i.i.i181 = icmp eq i64 %maskedptr.i.i.i180, 0, !dbg !768
  call void @llvm.assume(i1 %maskcond.i.i.i181) #10, !dbg !768
  store i8* %call.i.i.i178, i8** %retval.i171, align 8, !dbg !769
  br label %kmalloc.exit301, !dbg !769

if.end.i184:                                      ; preds = %if.then.i176
  %146 = load i64, i64* %size.addr.i172, align 8, !dbg !770
  store i64 %146, i64* %size.addr.i11.i164, align 8
  %147 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !771
  %tobool.i.i183 = icmp ne i64 %147, 0, !dbg !771
  br i1 %tobool.i.i183, label %if.end.i.i187, label %if.then.i.i185, !dbg !772

if.then.i.i185:                                   ; preds = %if.end.i184
  store i32 0, i32* %retval.i.i163, align 4, !dbg !773
  br label %kmalloc_index.exit.i273, !dbg !773

if.end.i.i187:                                    ; preds = %if.end.i184
  %148 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !774
  %cmp.i.i186 = icmp ule i64 %148, 8, !dbg !775
  br i1 %cmp.i.i186, label %if.then1.i.i188, label %if.end2.i.i190, !dbg !776

if.then1.i.i188:                                  ; preds = %if.end.i.i187
  store i32 3, i32* %retval.i.i163, align 4, !dbg !777
  br label %kmalloc_index.exit.i273, !dbg !777

if.end2.i.i190:                                   ; preds = %if.end.i.i187
  %149 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !778
  %cmp3.i.i189 = icmp ugt i64 %149, 64, !dbg !779
  br i1 %cmp3.i.i189, label %land.lhs.true.i.i192, label %if.end6.i.i195, !dbg !780

land.lhs.true.i.i192:                             ; preds = %if.end2.i.i190
  %150 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !781
  %cmp4.i.i191 = icmp ule i64 %150, 96, !dbg !782
  br i1 %cmp4.i.i191, label %if.then5.i.i193, label %if.end6.i.i195, !dbg !783

if.then5.i.i193:                                  ; preds = %land.lhs.true.i.i192
  store i32 1, i32* %retval.i.i163, align 4, !dbg !784
  br label %kmalloc_index.exit.i273, !dbg !784

if.end6.i.i195:                                   ; preds = %land.lhs.true.i.i192, %if.end2.i.i190
  %151 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !785
  %cmp7.i.i194 = icmp ugt i64 %151, 128, !dbg !786
  br i1 %cmp7.i.i194, label %land.lhs.true8.i.i197, label %if.end11.i.i200, !dbg !787

land.lhs.true8.i.i197:                            ; preds = %if.end6.i.i195
  %152 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !788
  %cmp9.i.i196 = icmp ule i64 %152, 192, !dbg !789
  br i1 %cmp9.i.i196, label %if.then10.i.i198, label %if.end11.i.i200, !dbg !790

if.then10.i.i198:                                 ; preds = %land.lhs.true8.i.i197
  store i32 2, i32* %retval.i.i163, align 4, !dbg !791
  br label %kmalloc_index.exit.i273, !dbg !791

if.end11.i.i200:                                  ; preds = %land.lhs.true8.i.i197, %if.end6.i.i195
  %153 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !792
  %cmp12.i.i199 = icmp ule i64 %153, 8, !dbg !793
  br i1 %cmp12.i.i199, label %if.then13.i.i201, label %if.end14.i.i203, !dbg !794

if.then13.i.i201:                                 ; preds = %if.end11.i.i200
  store i32 3, i32* %retval.i.i163, align 4, !dbg !795
  br label %kmalloc_index.exit.i273, !dbg !795

if.end14.i.i203:                                  ; preds = %if.end11.i.i200
  %154 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !796
  %cmp15.i.i202 = icmp ule i64 %154, 16, !dbg !797
  br i1 %cmp15.i.i202, label %if.then16.i.i204, label %if.end17.i.i206, !dbg !798

if.then16.i.i204:                                 ; preds = %if.end14.i.i203
  store i32 4, i32* %retval.i.i163, align 4, !dbg !799
  br label %kmalloc_index.exit.i273, !dbg !799

if.end17.i.i206:                                  ; preds = %if.end14.i.i203
  %155 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !800
  %cmp18.i.i205 = icmp ule i64 %155, 32, !dbg !801
  br i1 %cmp18.i.i205, label %if.then19.i.i207, label %if.end20.i.i209, !dbg !802

if.then19.i.i207:                                 ; preds = %if.end17.i.i206
  store i32 5, i32* %retval.i.i163, align 4, !dbg !803
  br label %kmalloc_index.exit.i273, !dbg !803

if.end20.i.i209:                                  ; preds = %if.end17.i.i206
  %156 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !804
  %cmp21.i.i208 = icmp ule i64 %156, 64, !dbg !805
  br i1 %cmp21.i.i208, label %if.then22.i.i210, label %if.end23.i.i212, !dbg !806

if.then22.i.i210:                                 ; preds = %if.end20.i.i209
  store i32 6, i32* %retval.i.i163, align 4, !dbg !807
  br label %kmalloc_index.exit.i273, !dbg !807

if.end23.i.i212:                                  ; preds = %if.end20.i.i209
  %157 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !808
  %cmp24.i.i211 = icmp ule i64 %157, 128, !dbg !809
  br i1 %cmp24.i.i211, label %if.then25.i.i213, label %if.end26.i.i215, !dbg !810

if.then25.i.i213:                                 ; preds = %if.end23.i.i212
  store i32 7, i32* %retval.i.i163, align 4, !dbg !811
  br label %kmalloc_index.exit.i273, !dbg !811

if.end26.i.i215:                                  ; preds = %if.end23.i.i212
  %158 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !812
  %cmp27.i.i214 = icmp ule i64 %158, 256, !dbg !813
  br i1 %cmp27.i.i214, label %if.then28.i.i216, label %if.end29.i.i218, !dbg !814

if.then28.i.i216:                                 ; preds = %if.end26.i.i215
  store i32 8, i32* %retval.i.i163, align 4, !dbg !815
  br label %kmalloc_index.exit.i273, !dbg !815

if.end29.i.i218:                                  ; preds = %if.end26.i.i215
  %159 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !816
  %cmp30.i.i217 = icmp ule i64 %159, 512, !dbg !817
  br i1 %cmp30.i.i217, label %if.then31.i.i219, label %if.end32.i.i221, !dbg !818

if.then31.i.i219:                                 ; preds = %if.end29.i.i218
  store i32 9, i32* %retval.i.i163, align 4, !dbg !819
  br label %kmalloc_index.exit.i273, !dbg !819

if.end32.i.i221:                                  ; preds = %if.end29.i.i218
  %160 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !820
  %cmp33.i.i220 = icmp ule i64 %160, 1024, !dbg !821
  br i1 %cmp33.i.i220, label %if.then34.i.i222, label %if.end35.i.i224, !dbg !822

if.then34.i.i222:                                 ; preds = %if.end32.i.i221
  store i32 10, i32* %retval.i.i163, align 4, !dbg !823
  br label %kmalloc_index.exit.i273, !dbg !823

if.end35.i.i224:                                  ; preds = %if.end32.i.i221
  %161 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !824
  %cmp36.i.i223 = icmp ule i64 %161, 2048, !dbg !825
  br i1 %cmp36.i.i223, label %if.then37.i.i225, label %if.end38.i.i227, !dbg !826

if.then37.i.i225:                                 ; preds = %if.end35.i.i224
  store i32 11, i32* %retval.i.i163, align 4, !dbg !827
  br label %kmalloc_index.exit.i273, !dbg !827

if.end38.i.i227:                                  ; preds = %if.end35.i.i224
  %162 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !828
  %cmp39.i.i226 = icmp ule i64 %162, 4096, !dbg !829
  br i1 %cmp39.i.i226, label %if.then40.i.i228, label %if.end41.i.i230, !dbg !830

if.then40.i.i228:                                 ; preds = %if.end38.i.i227
  store i32 12, i32* %retval.i.i163, align 4, !dbg !831
  br label %kmalloc_index.exit.i273, !dbg !831

if.end41.i.i230:                                  ; preds = %if.end38.i.i227
  %163 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !832
  %cmp42.i.i229 = icmp ule i64 %163, 8192, !dbg !833
  br i1 %cmp42.i.i229, label %if.then43.i.i231, label %if.end44.i.i233, !dbg !834

if.then43.i.i231:                                 ; preds = %if.end41.i.i230
  store i32 13, i32* %retval.i.i163, align 4, !dbg !835
  br label %kmalloc_index.exit.i273, !dbg !835

if.end44.i.i233:                                  ; preds = %if.end41.i.i230
  %164 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !836
  %cmp45.i.i232 = icmp ule i64 %164, 16384, !dbg !837
  br i1 %cmp45.i.i232, label %if.then46.i.i234, label %if.end47.i.i236, !dbg !838

if.then46.i.i234:                                 ; preds = %if.end44.i.i233
  store i32 14, i32* %retval.i.i163, align 4, !dbg !839
  br label %kmalloc_index.exit.i273, !dbg !839

if.end47.i.i236:                                  ; preds = %if.end44.i.i233
  %165 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !840
  %cmp48.i.i235 = icmp ule i64 %165, 32768, !dbg !841
  br i1 %cmp48.i.i235, label %if.then49.i.i237, label %if.end50.i.i239, !dbg !842

if.then49.i.i237:                                 ; preds = %if.end47.i.i236
  store i32 15, i32* %retval.i.i163, align 4, !dbg !843
  br label %kmalloc_index.exit.i273, !dbg !843

if.end50.i.i239:                                  ; preds = %if.end47.i.i236
  %166 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !844
  %cmp51.i.i238 = icmp ule i64 %166, 65536, !dbg !845
  br i1 %cmp51.i.i238, label %if.then52.i.i240, label %if.end53.i.i242, !dbg !846

if.then52.i.i240:                                 ; preds = %if.end50.i.i239
  store i32 16, i32* %retval.i.i163, align 4, !dbg !847
  br label %kmalloc_index.exit.i273, !dbg !847

if.end53.i.i242:                                  ; preds = %if.end50.i.i239
  %167 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !848
  %cmp54.i.i241 = icmp ule i64 %167, 131072, !dbg !849
  br i1 %cmp54.i.i241, label %if.then55.i.i243, label %if.end56.i.i245, !dbg !850

if.then55.i.i243:                                 ; preds = %if.end53.i.i242
  store i32 17, i32* %retval.i.i163, align 4, !dbg !851
  br label %kmalloc_index.exit.i273, !dbg !851

if.end56.i.i245:                                  ; preds = %if.end53.i.i242
  %168 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !852
  %cmp57.i.i244 = icmp ule i64 %168, 262144, !dbg !853
  br i1 %cmp57.i.i244, label %if.then58.i.i246, label %if.end59.i.i248, !dbg !854

if.then58.i.i246:                                 ; preds = %if.end56.i.i245
  store i32 18, i32* %retval.i.i163, align 4, !dbg !855
  br label %kmalloc_index.exit.i273, !dbg !855

if.end59.i.i248:                                  ; preds = %if.end56.i.i245
  %169 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !856
  %cmp60.i.i247 = icmp ule i64 %169, 524288, !dbg !857
  br i1 %cmp60.i.i247, label %if.then61.i.i249, label %if.end62.i.i251, !dbg !858

if.then61.i.i249:                                 ; preds = %if.end59.i.i248
  store i32 19, i32* %retval.i.i163, align 4, !dbg !859
  br label %kmalloc_index.exit.i273, !dbg !859

if.end62.i.i251:                                  ; preds = %if.end59.i.i248
  %170 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !860
  %cmp63.i.i250 = icmp ule i64 %170, 1048576, !dbg !861
  br i1 %cmp63.i.i250, label %if.then64.i.i252, label %if.end65.i.i254, !dbg !862

if.then64.i.i252:                                 ; preds = %if.end62.i.i251
  store i32 20, i32* %retval.i.i163, align 4, !dbg !863
  br label %kmalloc_index.exit.i273, !dbg !863

if.end65.i.i254:                                  ; preds = %if.end62.i.i251
  %171 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !864
  %cmp66.i.i253 = icmp ule i64 %171, 2097152, !dbg !865
  br i1 %cmp66.i.i253, label %if.then67.i.i255, label %if.end68.i.i257, !dbg !866

if.then67.i.i255:                                 ; preds = %if.end65.i.i254
  store i32 21, i32* %retval.i.i163, align 4, !dbg !867
  br label %kmalloc_index.exit.i273, !dbg !867

if.end68.i.i257:                                  ; preds = %if.end65.i.i254
  %172 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !868
  %cmp69.i.i256 = icmp ule i64 %172, 4194304, !dbg !869
  br i1 %cmp69.i.i256, label %if.then70.i.i258, label %if.end71.i.i260, !dbg !870

if.then70.i.i258:                                 ; preds = %if.end68.i.i257
  store i32 22, i32* %retval.i.i163, align 4, !dbg !871
  br label %kmalloc_index.exit.i273, !dbg !871

if.end71.i.i260:                                  ; preds = %if.end68.i.i257
  %173 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !872
  %cmp72.i.i259 = icmp ule i64 %173, 8388608, !dbg !873
  br i1 %cmp72.i.i259, label %if.then73.i.i261, label %if.end74.i.i263, !dbg !874

if.then73.i.i261:                                 ; preds = %if.end71.i.i260
  store i32 23, i32* %retval.i.i163, align 4, !dbg !875
  br label %kmalloc_index.exit.i273, !dbg !875

if.end74.i.i263:                                  ; preds = %if.end71.i.i260
  %174 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !876
  %cmp75.i.i262 = icmp ule i64 %174, 16777216, !dbg !877
  br i1 %cmp75.i.i262, label %if.then76.i.i264, label %if.end77.i.i266, !dbg !878

if.then76.i.i264:                                 ; preds = %if.end74.i.i263
  store i32 24, i32* %retval.i.i163, align 4, !dbg !879
  br label %kmalloc_index.exit.i273, !dbg !879

if.end77.i.i266:                                  ; preds = %if.end74.i.i263
  %175 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !880
  %cmp78.i.i265 = icmp ule i64 %175, 33554432, !dbg !881
  br i1 %cmp78.i.i265, label %if.then79.i.i267, label %if.end80.i.i269, !dbg !882

if.then79.i.i267:                                 ; preds = %if.end77.i.i266
  store i32 25, i32* %retval.i.i163, align 4, !dbg !883
  br label %kmalloc_index.exit.i273, !dbg !883

if.end80.i.i269:                                  ; preds = %if.end77.i.i266
  %176 = load i64, i64* %size.addr.i11.i164, align 8, !dbg !884
  %cmp81.i.i268 = icmp ule i64 %176, 67108864, !dbg !885
  br i1 %cmp81.i.i268, label %if.then82.i.i270, label %if.end83.i.i271, !dbg !886

if.then82.i.i270:                                 ; preds = %if.end80.i.i269
  store i32 26, i32* %retval.i.i163, align 4, !dbg !887
  br label %kmalloc_index.exit.i273, !dbg !887

if.end83.i.i271:                                  ; preds = %if.end80.i.i269
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !888, !srcloc !524
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 101) #10, !dbg !889, !srcloc !528
  unreachable, !dbg !890

kmalloc_index.exit.i273:                          ; preds = %if.then82.i.i270, %if.then79.i.i267, %if.then76.i.i264, %if.then73.i.i261, %if.then70.i.i258, %if.then67.i.i255, %if.then64.i.i252, %if.then61.i.i249, %if.then58.i.i246, %if.then55.i.i243, %if.then52.i.i240, %if.then49.i.i237, %if.then46.i.i234, %if.then43.i.i231, %if.then40.i.i228, %if.then37.i.i225, %if.then34.i.i222, %if.then31.i.i219, %if.then28.i.i216, %if.then25.i.i213, %if.then22.i.i210, %if.then19.i.i207, %if.then16.i.i204, %if.then13.i.i201, %if.then10.i.i198, %if.then5.i.i193, %if.then1.i.i188, %if.then.i.i185
  %177 = load i32, i32* %retval.i.i163, align 4, !dbg !891
  store i32 %177, i32* %index.i174, align 4, !dbg !892
  %178 = load i32, i32* %index.i174, align 4, !dbg !893
  %tobool.i272 = icmp ne i32 %178, 0, !dbg !893
  br i1 %tobool.i272, label %if.end4.i280, label %if.then3.i274, !dbg !894

if.then3.i274:                                    ; preds = %kmalloc_index.exit.i273
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i171, align 8, !dbg !895
  br label %kmalloc.exit301, !dbg !895

if.end4.i280:                                     ; preds = %kmalloc_index.exit.i273
  %179 = load i32, i32* %flags.addr.i173, align 4, !dbg !896
  store i32 %179, i32* %flags.addr.i13.i162, align 4
  %180 = load i32, i32* %flags.addr.i13.i162, align 4, !dbg !897
  %and.i.i275 = and i32 %180, 17, !dbg !897
  %cmp.i14.i276 = icmp eq i32 %and.i.i275, 0, !dbg !897
  %lnot.i.i277 = xor i1 %cmp.i14.i276, true, !dbg !897
  %lnot.ext.i.i278 = zext i1 %cmp.i14.i276 to i32, !dbg !897
  %conv.i.i279 = sext i32 %lnot.ext.i.i278 to i64, !dbg !897
  br i1 %cmp.i14.i276, label %if.then.i15.i281, label %if.end.i16.i285, !dbg !898

if.then.i15.i281:                                 ; preds = %if.end4.i280
  store i32 0, i32* %retval.i12.i161, align 4, !dbg !899
  br label %kmalloc_type.exit.i295, !dbg !899

if.end.i16.i285:                                  ; preds = %if.end4.i280
  %181 = load i32, i32* %flags.addr.i13.i162, align 4, !dbg !900
  %and2.i.i282 = and i32 %181, 1, !dbg !901
  %tobool3.i.i283 = icmp ne i32 %and2.i.i282, 0, !dbg !900
  %182 = zext i1 %tobool3.i.i283 to i64, !dbg !900
  %cond.i.i284 = select i1 %tobool3.i.i283, i32 2, i32 1, !dbg !900
  store i32 %cond.i.i284, i32* %retval.i12.i161, align 4, !dbg !902
  br label %kmalloc_type.exit.i295, !dbg !902

kmalloc_type.exit.i295:                           ; preds = %if.end.i16.i285, %if.then.i15.i281
  %183 = load i32, i32* %retval.i12.i161, align 4, !dbg !903
  %idxprom.i286 = zext i32 %183 to i64, !dbg !904
  %arrayidx.i287 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i286, !dbg !904
  %184 = load i32, i32* %index.i174, align 4, !dbg !905
  %idxprom6.i288 = zext i32 %184 to i64, !dbg !904
  %arrayidx7.i289 = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i287, i64 0, i64 %idxprom6.i288, !dbg !904
  %185 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i289, align 8, !dbg !904
  %186 = load i32, i32* %flags.addr.i173, align 4, !dbg !906
  %187 = load i64, i64* %size.addr.i172, align 8, !dbg !907
  store %struct.kmem_cache* %185, %struct.kmem_cache** %s.addr.i.i157, align 8
  store i32 %186, i32* %flags.addr.i17.i158, align 4
  store i64 %187, i64* %size.addr.i18.i159, align 8
  %188 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i157, align 8, !dbg !908
  %189 = load i32, i32* %flags.addr.i17.i158, align 4, !dbg !909
  %call.i19.i290 = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %188, i32 %189) #12, !dbg !910
  %ptrint.i.i291 = ptrtoint i8* %call.i19.i290 to i64, !dbg !910
  %maskedptr.i.i292 = and i64 %ptrint.i.i291, 7, !dbg !910
  %maskcond.i.i293 = icmp eq i64 %maskedptr.i.i292, 0, !dbg !910
  call void @llvm.assume(i1 %maskcond.i.i293) #10, !dbg !910
  store i8* %call.i19.i290, i8** %ret.i.i160, align 8, !dbg !271
  %190 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i157, align 8, !dbg !911
  %191 = load i8*, i8** %ret.i.i160, align 8, !dbg !912
  %192 = load i64, i64* %size.addr.i18.i159, align 8, !dbg !913
  %193 = load i32, i32* %flags.addr.i17.i158, align 4, !dbg !914
  %call1.i.i294 = call i8* @kasan_kmalloc(%struct.kmem_cache* %190, i8* %191, i64 %192, i32 %193) #12, !dbg !915
  store i8* %call1.i.i294, i8** %ret.i.i160, align 8, !dbg !916
  %194 = load i8*, i8** %ret.i.i160, align 8, !dbg !917
  store i8* %194, i8** %retval.i171, align 8, !dbg !918
  br label %kmalloc.exit301, !dbg !918

if.end9.i300:                                     ; preds = %if.end4
  %195 = load i64, i64* %size.addr.i172, align 8, !dbg !919
  %196 = load i32, i32* %flags.addr.i173, align 4, !dbg !920
  %call10.i296 = call noalias i8* @__kmalloc(i64 %195, i32 %196) #12, !dbg !921
  %ptrint.i297 = ptrtoint i8* %call10.i296 to i64, !dbg !921
  %maskedptr.i298 = and i64 %ptrint.i297, 7, !dbg !921
  %maskcond.i299 = icmp eq i64 %maskedptr.i298, 0, !dbg !921
  call void @llvm.assume(i1 %maskcond.i299) #10, !dbg !921
  store i8* %call10.i296, i8** %retval.i171, align 8, !dbg !922
  br label %kmalloc.exit301, !dbg !922

kmalloc.exit301:                                  ; preds = %if.then1.i182, %if.then3.i274, %kmalloc_type.exit.i295, %if.end9.i300
  %197 = load i8*, i8** %retval.i171, align 8, !dbg !923
  %198 = bitcast i8* %197 to i32*, !dbg !924
  store i32* %198, i32** %buf, align 8, !dbg !925
  %199 = load i32*, i32** %buf, align 8, !dbg !926
  %tobool6 = icmp ne i32* %199, null, !dbg !926
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !928

if.then7:                                         ; preds = %kmalloc.exit301
  %200 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !929
  %201 = bitcast %union.acpi_object* %200 to i8*, !dbg !929
  call void @kfree(i8* %201) #9, !dbg !931
  %202 = load %struct.acpi_object_list*, %struct.acpi_object_list** %obj_list, align 8, !dbg !932
  %203 = bitcast %struct.acpi_object_list* %202 to i8*, !dbg !932
  call void @kfree(i8* %203) #9, !dbg !933
  br label %out, !dbg !934

if.end8:                                          ; preds = %kmalloc.exit301
  %204 = load i32*, i32** %buf, align 8, !dbg !935
  call void @acpi_set_pdc_bits(i32* %204) #9, !dbg !936
  %205 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !937
  %type = bitcast %union.acpi_object* %205 to i32*, !dbg !938
  store i32 3, i32* %type, align 8, !dbg !939
  %206 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !940
  %buffer = bitcast %union.acpi_object* %206 to %struct.anon.1*, !dbg !941
  %length = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer, i32 0, i32 1, !dbg !942
  store i32 12, i32* %length, align 4, !dbg !943
  %207 = load i32*, i32** %buf, align 8, !dbg !944
  %208 = bitcast i32* %207 to i8*, !dbg !945
  %209 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !946
  %buffer9 = bitcast %union.acpi_object* %209 to %struct.anon.1*, !dbg !947
  %pointer = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer9, i32 0, i32 2, !dbg !948
  store i8* %208, i8** %pointer, align 8, !dbg !949
  %210 = load %struct.acpi_object_list*, %struct.acpi_object_list** %obj_list, align 8, !dbg !950
  %count = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %210, i32 0, i32 0, !dbg !951
  store i32 1, i32* %count, align 8, !dbg !952
  %211 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !953
  %212 = load %struct.acpi_object_list*, %struct.acpi_object_list** %obj_list, align 8, !dbg !954
  %pointer10 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %212, i32 0, i32 1, !dbg !955
  store %union.acpi_object* %211, %union.acpi_object** %pointer10, align 8, !dbg !956
  %213 = load %struct.acpi_object_list*, %struct.acpi_object_list** %obj_list, align 8, !dbg !957
  store %struct.acpi_object_list* %213, %struct.acpi_object_list** %retval, align 8, !dbg !958
  br label %return, !dbg !958

out:                                              ; preds = %if.then7, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !959), !dbg !960
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #13, !dbg !961
  store %struct.acpi_object_list* null, %struct.acpi_object_list** %retval, align 8, !dbg !962
  br label %return, !dbg !962

return:                                           ; preds = %out, %if.end8
  %214 = load %struct.acpi_object_list*, %struct.acpi_object_list** %retval, align 8, !dbg !963
  ret %struct.acpi_object_list* %214, !dbg !963
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_eval_pdc(i8* %handle, %struct.acpi_object_list* %pdc_in) #0 !dbg !964 {
entry:
  %handle.addr = alloca i8*, align 8
  %pdc_in.addr = alloca %struct.acpi_object_list*, align 8
  %status = alloca i32, align 4
  %obj = alloca %union.acpi_object*, align 8
  %buffer = alloca i32*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !967, metadata !DIExpression()), !dbg !968
  store %struct.acpi_object_list* %pdc_in, %struct.acpi_object_list** %pdc_in.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list** %pdc_in.addr, metadata !969, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.declare(metadata i32* %status, metadata !971, metadata !DIExpression()), !dbg !972
  store i32 0, i32* %status, align 4, !dbg !972
  %0 = load i64, i64* @boot_option_idle_override, align 8, !dbg !973
  %cmp = icmp eq i64 %0, 2, !dbg !975
  br i1 %cmp, label %if.then, label %if.end, !dbg !976

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !977, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata i32** %buffer, metadata !980, metadata !DIExpression()), !dbg !981
  store i32* null, i32** %buffer, align 8, !dbg !981
  %1 = load %struct.acpi_object_list*, %struct.acpi_object_list** %pdc_in.addr, align 8, !dbg !982
  %pointer = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %1, i32 0, i32 1, !dbg !983
  %2 = load %union.acpi_object*, %union.acpi_object** %pointer, align 8, !dbg !983
  store %union.acpi_object* %2, %union.acpi_object** %obj, align 8, !dbg !984
  %3 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !985
  %buffer1 = bitcast %union.acpi_object* %3 to %struct.anon.1*, !dbg !986
  %pointer2 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer1, i32 0, i32 2, !dbg !987
  %4 = load i8*, i8** %pointer2, align 8, !dbg !987
  %5 = bitcast i8* %4 to i32*, !dbg !988
  store i32* %5, i32** %buffer, align 8, !dbg !989
  %6 = load i32*, i32** %buffer, align 8, !dbg !990
  %arrayidx = getelementptr i32, i32* %6, i64 2, !dbg !990
  %7 = load i32, i32* %arrayidx, align 4, !dbg !991
  %and = and i32 %7, -769, !dbg !991
  store i32 %and, i32* %arrayidx, align 4, !dbg !991
  br label %if.end, !dbg !992

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** %handle.addr, align 8, !dbg !993
  %9 = load %struct.acpi_object_list*, %struct.acpi_object_list** %pdc_in.addr, align 8, !dbg !994
  %call = call i32 @acpi_evaluate_object(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.acpi_object_list* %9, %struct.acpi_buffer* null) #9, !dbg !995
  store i32 %call, i32* %status, align 4, !dbg !996
  %10 = load i32, i32* %status, align 4, !dbg !997
  %tobool = icmp ne i32 %10, 0, !dbg !997
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !999

if.then3:                                         ; preds = %if.end
  br label %if.end4, !dbg !999

if.end4:                                          ; preds = %if.then3, %if.end
  %11 = load i32, i32* %status, align 4, !dbg !1000
  ret i32 %11, !dbg !1001
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_early_processor_set_pdc() #3 section ".init.text" !dbg !1002 {
entry:
  call void @processor_dmi_check() #13, !dbg !1005
  %call = call i32 @acpi_walk_namespace(i32 12, i8* inttoptr (i64 -1 to i8*), i32 -1, i32 (i8*, i32, i8*, i8**)* @early_init_pdc, i32 (i8*, i32, i8*, i8**)* null, i8* null, i8** null) #9, !dbg !1006
  %call1 = call i32 @acpi_get_devices(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 (i8*, i32, i8*, i8**)* @early_init_pdc, i8* null, i8** null) #9, !dbg !1007
  ret void, !dbg !1008
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @processor_dmi_check() #3 section ".init.text" !dbg !1009 {
entry:
  %call = call i32 @dmi_check_system(%struct.dmi_system_id* getelementptr inbounds ([2 x %struct.dmi_system_id], [2 x %struct.dmi_system_id]* bitcast ([2 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }]* @processor_idle_dmi_table to [2 x %struct.dmi_system_id]*), i64 0, i64 0)) #9, !dbg !1010
  ret void, !dbg !1011
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_walk_namespace(i32, i8*, i32, i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @early_init_pdc(i8* %handle, i32 %lvl, i8* %context, i8** %rv) #3 section ".init.text" !dbg !1012 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %lvl.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %rv.addr = alloca i8**, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !1016, metadata !DIExpression()), !dbg !1017
  store i32 %lvl, i32* %lvl.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lvl.addr, metadata !1018, metadata !DIExpression()), !dbg !1019
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1020, metadata !DIExpression()), !dbg !1021
  store i8** %rv, i8*** %rv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %rv.addr, metadata !1022, metadata !DIExpression()), !dbg !1023
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !1024
  %call = call zeroext i1 @processor_physically_present(i8* %0) #13, !dbg !1026
  %conv = zext i1 %call to i32, !dbg !1026
  %cmp = icmp eq i32 %conv, 0, !dbg !1027
  br i1 %cmp, label %if.then, label %if.end, !dbg !1028

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1029
  br label %return, !dbg !1029

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !1030
  call void @acpi_processor_set_pdc(i8* %1) #9, !dbg !1031
  store i32 0, i32* %retval, align 4, !dbg !1032
  br label %return, !dbg !1032

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !1033
  ret i32 %2, !dbg !1033
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_devices(i8*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_set_pdc_bits(i32* %buf) #0 !dbg !1034 {
entry:
  %buf.addr = alloca i32*, align 8
  store i32* %buf, i32** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %buf.addr, metadata !1037, metadata !DIExpression()), !dbg !1038
  %0 = load i32*, i32** %buf.addr, align 8, !dbg !1039
  %arrayidx = getelementptr i32, i32* %0, i64 0, !dbg !1039
  store i32 1, i32* %arrayidx, align 4, !dbg !1040
  %1 = load i32*, i32** %buf.addr, align 8, !dbg !1041
  %arrayidx1 = getelementptr i32, i32* %1, i64 1, !dbg !1041
  store i32 1, i32* %arrayidx1, align 4, !dbg !1042
  %2 = load i32*, i32** %buf.addr, align 8, !dbg !1043
  %arrayidx2 = getelementptr i32, i32* %2, i64 2, !dbg !1043
  store i32 128, i32* %arrayidx2, align 4, !dbg !1044
  %3 = load i32*, i32** %buf.addr, align 8, !dbg !1045
  call void @arch_acpi_set_pdc_bits(i32* %3) #9, !dbg !1046
  ret void, !dbg !1047
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !1048 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1052, metadata !DIExpression()), !dbg !1057
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1059, metadata !DIExpression()), !dbg !1060
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1061, metadata !DIExpression()), !dbg !1062
  %0 = load i64, i64* %size.addr, align 8, !dbg !1063
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1065
  br i1 %1, label %if.then, label %if.end447, !dbg !1066

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1067
  %tobool = icmp ne i64 %2, 0, !dbg !1067
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1070

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1071
  br label %return, !dbg !1071

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1072
  %cmp = icmp ult i64 %3, 4096, !dbg !1074
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1075

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1076
  br label %return, !dbg !1076

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub = sub i64 %4, 1, !dbg !1077
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1077
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1077

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub4 = sub i64 %6, 1, !dbg !1077
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1077
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1077

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub6 = sub i64 %8, 1, !dbg !1077
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1077
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1077

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1077

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub9 = sub i64 %9, 1, !dbg !1077
  %and = and i64 %sub9, -9223372036854775808, !dbg !1077
  %tobool10 = icmp ne i64 %and, 0, !dbg !1077
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1077

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1077

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub13 = sub i64 %10, 1, !dbg !1077
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1077
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1077
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1077

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1077

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub18 = sub i64 %11, 1, !dbg !1077
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1077
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1077
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1077

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1077

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub23 = sub i64 %12, 1, !dbg !1077
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1077
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1077
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1077

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1077

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub28 = sub i64 %13, 1, !dbg !1077
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1077
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1077
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1077

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1077

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub33 = sub i64 %14, 1, !dbg !1077
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1077
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1077
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1077

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1077

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub38 = sub i64 %15, 1, !dbg !1077
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1077
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1077
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1077

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1077

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub43 = sub i64 %16, 1, !dbg !1077
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1077
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1077
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1077

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1077

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub48 = sub i64 %17, 1, !dbg !1077
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1077
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1077
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1077

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1077

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub53 = sub i64 %18, 1, !dbg !1077
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1077
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1077
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1077

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1077

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub58 = sub i64 %19, 1, !dbg !1077
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1077
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1077
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1077

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1077

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub63 = sub i64 %20, 1, !dbg !1077
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1077
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1077
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1077

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1077

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub68 = sub i64 %21, 1, !dbg !1077
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1077
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1077
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1077

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1077

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub73 = sub i64 %22, 1, !dbg !1077
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1077
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1077
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1077

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1077

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub78 = sub i64 %23, 1, !dbg !1077
  %and79 = and i64 %sub78, 562949953421312, !dbg !1077
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1077
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1077

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1077

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub83 = sub i64 %24, 1, !dbg !1077
  %and84 = and i64 %sub83, 281474976710656, !dbg !1077
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1077
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1077

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1077

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub88 = sub i64 %25, 1, !dbg !1077
  %and89 = and i64 %sub88, 140737488355328, !dbg !1077
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1077
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1077

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1077

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub93 = sub i64 %26, 1, !dbg !1077
  %and94 = and i64 %sub93, 70368744177664, !dbg !1077
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1077
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1077

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1077

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub98 = sub i64 %27, 1, !dbg !1077
  %and99 = and i64 %sub98, 35184372088832, !dbg !1077
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1077
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1077

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1077

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub103 = sub i64 %28, 1, !dbg !1077
  %and104 = and i64 %sub103, 17592186044416, !dbg !1077
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1077
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1077

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1077

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub108 = sub i64 %29, 1, !dbg !1077
  %and109 = and i64 %sub108, 8796093022208, !dbg !1077
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1077
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1077

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1077

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub113 = sub i64 %30, 1, !dbg !1077
  %and114 = and i64 %sub113, 4398046511104, !dbg !1077
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1077
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1077

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1077

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub118 = sub i64 %31, 1, !dbg !1077
  %and119 = and i64 %sub118, 2199023255552, !dbg !1077
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1077
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1077

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1077

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub123 = sub i64 %32, 1, !dbg !1077
  %and124 = and i64 %sub123, 1099511627776, !dbg !1077
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1077
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1077

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1077

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub128 = sub i64 %33, 1, !dbg !1077
  %and129 = and i64 %sub128, 549755813888, !dbg !1077
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1077
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1077

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1077

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub133 = sub i64 %34, 1, !dbg !1077
  %and134 = and i64 %sub133, 274877906944, !dbg !1077
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1077
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1077

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1077

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub138 = sub i64 %35, 1, !dbg !1077
  %and139 = and i64 %sub138, 137438953472, !dbg !1077
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1077
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1077

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1077

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub143 = sub i64 %36, 1, !dbg !1077
  %and144 = and i64 %sub143, 68719476736, !dbg !1077
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1077
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1077

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1077

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub148 = sub i64 %37, 1, !dbg !1077
  %and149 = and i64 %sub148, 34359738368, !dbg !1077
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1077
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1077

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1077

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub153 = sub i64 %38, 1, !dbg !1077
  %and154 = and i64 %sub153, 17179869184, !dbg !1077
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1077
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1077

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1077

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub158 = sub i64 %39, 1, !dbg !1077
  %and159 = and i64 %sub158, 8589934592, !dbg !1077
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1077
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1077

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1077

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub163 = sub i64 %40, 1, !dbg !1077
  %and164 = and i64 %sub163, 4294967296, !dbg !1077
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1077
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1077

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1077

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub168 = sub i64 %41, 1, !dbg !1077
  %and169 = and i64 %sub168, 2147483648, !dbg !1077
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1077
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1077

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1077

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub173 = sub i64 %42, 1, !dbg !1077
  %and174 = and i64 %sub173, 1073741824, !dbg !1077
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1077
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1077

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1077

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub178 = sub i64 %43, 1, !dbg !1077
  %and179 = and i64 %sub178, 536870912, !dbg !1077
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1077
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1077

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1077

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub183 = sub i64 %44, 1, !dbg !1077
  %and184 = and i64 %sub183, 268435456, !dbg !1077
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1077
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1077

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1077

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub188 = sub i64 %45, 1, !dbg !1077
  %and189 = and i64 %sub188, 134217728, !dbg !1077
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1077
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1077

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1077

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub193 = sub i64 %46, 1, !dbg !1077
  %and194 = and i64 %sub193, 67108864, !dbg !1077
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1077
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1077

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1077

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub198 = sub i64 %47, 1, !dbg !1077
  %and199 = and i64 %sub198, 33554432, !dbg !1077
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1077
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1077

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1077

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub203 = sub i64 %48, 1, !dbg !1077
  %and204 = and i64 %sub203, 16777216, !dbg !1077
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1077
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1077

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1077

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub208 = sub i64 %49, 1, !dbg !1077
  %and209 = and i64 %sub208, 8388608, !dbg !1077
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1077
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1077

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1077

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub213 = sub i64 %50, 1, !dbg !1077
  %and214 = and i64 %sub213, 4194304, !dbg !1077
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1077
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1077

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1077

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub218 = sub i64 %51, 1, !dbg !1077
  %and219 = and i64 %sub218, 2097152, !dbg !1077
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1077
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1077

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1077

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub223 = sub i64 %52, 1, !dbg !1077
  %and224 = and i64 %sub223, 1048576, !dbg !1077
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1077
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1077

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1077

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub228 = sub i64 %53, 1, !dbg !1077
  %and229 = and i64 %sub228, 524288, !dbg !1077
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1077
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1077

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1077

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub233 = sub i64 %54, 1, !dbg !1077
  %and234 = and i64 %sub233, 262144, !dbg !1077
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1077
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1077

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1077

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub238 = sub i64 %55, 1, !dbg !1077
  %and239 = and i64 %sub238, 131072, !dbg !1077
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1077
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1077

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1077

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub243 = sub i64 %56, 1, !dbg !1077
  %and244 = and i64 %sub243, 65536, !dbg !1077
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1077
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1077

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1077

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub248 = sub i64 %57, 1, !dbg !1077
  %and249 = and i64 %sub248, 32768, !dbg !1077
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1077
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1077

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1077

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub253 = sub i64 %58, 1, !dbg !1077
  %and254 = and i64 %sub253, 16384, !dbg !1077
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1077
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1077

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1077

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub258 = sub i64 %59, 1, !dbg !1077
  %and259 = and i64 %sub258, 8192, !dbg !1077
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1077
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1077

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1077

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub263 = sub i64 %60, 1, !dbg !1077
  %and264 = and i64 %sub263, 4096, !dbg !1077
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1077
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1077

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1077

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub268 = sub i64 %61, 1, !dbg !1077
  %and269 = and i64 %sub268, 2048, !dbg !1077
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1077
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1077

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1077

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub273 = sub i64 %62, 1, !dbg !1077
  %and274 = and i64 %sub273, 1024, !dbg !1077
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1077
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1077

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1077

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub278 = sub i64 %63, 1, !dbg !1077
  %and279 = and i64 %sub278, 512, !dbg !1077
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1077
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1077

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1077

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub283 = sub i64 %64, 1, !dbg !1077
  %and284 = and i64 %sub283, 256, !dbg !1077
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1077
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1077

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1077

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub288 = sub i64 %65, 1, !dbg !1077
  %and289 = and i64 %sub288, 128, !dbg !1077
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1077
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1077

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1077

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub293 = sub i64 %66, 1, !dbg !1077
  %and294 = and i64 %sub293, 64, !dbg !1077
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1077
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1077

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1077

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub298 = sub i64 %67, 1, !dbg !1077
  %and299 = and i64 %sub298, 32, !dbg !1077
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1077
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1077

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1077

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub303 = sub i64 %68, 1, !dbg !1077
  %and304 = and i64 %sub303, 16, !dbg !1077
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1077
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1077

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1077

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub308 = sub i64 %69, 1, !dbg !1077
  %and309 = and i64 %sub308, 8, !dbg !1077
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1077
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1077

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1077

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub313 = sub i64 %70, 1, !dbg !1077
  %and314 = and i64 %sub313, 4, !dbg !1077
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1077
  %71 = zext i1 %tobool315 to i64, !dbg !1077
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1077
  br label %cond.end, !dbg !1077

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1077
  br label %cond.end317, !dbg !1077

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1077
  br label %cond.end319, !dbg !1077

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1077
  br label %cond.end321, !dbg !1077

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1077
  br label %cond.end323, !dbg !1077

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1077
  br label %cond.end325, !dbg !1077

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1077
  br label %cond.end327, !dbg !1077

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1077
  br label %cond.end329, !dbg !1077

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1077
  br label %cond.end331, !dbg !1077

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1077
  br label %cond.end333, !dbg !1077

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1077
  br label %cond.end335, !dbg !1077

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1077
  br label %cond.end337, !dbg !1077

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1077
  br label %cond.end339, !dbg !1077

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1077
  br label %cond.end341, !dbg !1077

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1077
  br label %cond.end343, !dbg !1077

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1077
  br label %cond.end345, !dbg !1077

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1077
  br label %cond.end347, !dbg !1077

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1077
  br label %cond.end349, !dbg !1077

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1077
  br label %cond.end351, !dbg !1077

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1077
  br label %cond.end353, !dbg !1077

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1077
  br label %cond.end355, !dbg !1077

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1077
  br label %cond.end357, !dbg !1077

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1077
  br label %cond.end359, !dbg !1077

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1077
  br label %cond.end361, !dbg !1077

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1077
  br label %cond.end363, !dbg !1077

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1077
  br label %cond.end365, !dbg !1077

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1077
  br label %cond.end367, !dbg !1077

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1077
  br label %cond.end369, !dbg !1077

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1077
  br label %cond.end371, !dbg !1077

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1077
  br label %cond.end373, !dbg !1077

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1077
  br label %cond.end375, !dbg !1077

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1077
  br label %cond.end377, !dbg !1077

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1077
  br label %cond.end379, !dbg !1077

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1077
  br label %cond.end381, !dbg !1077

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1077
  br label %cond.end383, !dbg !1077

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1077
  br label %cond.end385, !dbg !1077

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1077
  br label %cond.end387, !dbg !1077

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1077
  br label %cond.end389, !dbg !1077

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1077
  br label %cond.end391, !dbg !1077

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1077
  br label %cond.end393, !dbg !1077

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1077
  br label %cond.end395, !dbg !1077

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1077
  br label %cond.end397, !dbg !1077

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1077
  br label %cond.end399, !dbg !1077

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1077
  br label %cond.end401, !dbg !1077

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1077
  br label %cond.end403, !dbg !1077

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1077
  br label %cond.end405, !dbg !1077

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1077
  br label %cond.end407, !dbg !1077

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1077
  br label %cond.end409, !dbg !1077

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1077
  br label %cond.end411, !dbg !1077

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1077
  br label %cond.end413, !dbg !1077

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1077
  br label %cond.end415, !dbg !1077

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1077
  br label %cond.end417, !dbg !1077

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1077
  br label %cond.end419, !dbg !1077

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1077
  br label %cond.end421, !dbg !1077

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1077
  br label %cond.end423, !dbg !1077

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1077
  br label %cond.end425, !dbg !1077

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1077
  br label %cond.end427, !dbg !1077

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1077
  br label %cond.end429, !dbg !1077

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1077
  br label %cond.end431, !dbg !1077

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1077
  br label %cond.end433, !dbg !1077

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1077
  br label %cond.end435, !dbg !1077

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1077
  br label %cond.end437, !dbg !1077

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1077
  br label %cond.end440, !dbg !1077

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1077

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1077
  br label %cond.end444, !dbg !1077

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1077
  %sub443 = sub i64 %72, 1, !dbg !1077
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !1077
  br label %cond.end444, !dbg !1077

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1077
  %sub446 = sub i32 %cond445, 12, !dbg !1078
  %add = add i32 %sub446, 1, !dbg !1079
  store i32 %add, i32* %retval, align 4, !dbg !1080
  br label %return, !dbg !1080

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1081
  %dec = add i64 %73, -1, !dbg !1081
  store i64 %dec, i64* %size.addr, align 8, !dbg !1081
  %74 = load i64, i64* %size.addr, align 8, !dbg !1082
  %shr = lshr i64 %74, 12, !dbg !1082
  store i64 %shr, i64* %size.addr, align 8, !dbg !1082
  %75 = load i64, i64* %size.addr, align 8, !dbg !1083
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1060
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1084
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1085
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !1084, !srcloc !1086
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1084
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1087
  %add.i = add i32 %79, 1, !dbg !1088
  store i32 %add.i, i32* %retval, align 4, !dbg !1089
  br label %return, !dbg !1089

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1090
  ret i32 %80, !dbg !1090
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !1091 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1052, metadata !DIExpression()), !dbg !1095
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1059, metadata !DIExpression()), !dbg !1097
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1098, metadata !DIExpression()), !dbg !1099
  %0 = load i64, i64* %n.addr, align 8, !dbg !1100
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1097
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1101
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1102
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !1101, !srcloc !1086
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1101
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1103
  %add.i = add i32 %4, 1, !dbg !1104
  %sub = sub i32 %add.i, 1, !dbg !1105
  ret i32 %sub, !dbg !1106
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1107 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1113, metadata !DIExpression()), !dbg !1114
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1115, metadata !DIExpression()), !dbg !1116
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1117, metadata !DIExpression()), !dbg !1118
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1119, metadata !DIExpression()), !dbg !1120
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1121
  ret i8* %0, !dbg !1122
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_acpi_set_pdc_bits(i32* %buf) #0 !dbg !1123 {
entry:
  %buf.addr = alloca i32*, align 8
  %c = alloca %struct.cpuinfo_x86*, align 8
  store i32* %buf, i32** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %buf.addr, metadata !1124, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.declare(metadata %struct.cpuinfo_x86** %c, metadata !1126, metadata !DIExpression()), !dbg !1127
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %c, align 8, !dbg !1127
  %0 = load i32*, i32** %buf.addr, align 8, !dbg !1128
  %arrayidx = getelementptr i32, i32* %0, i64 2, !dbg !1128
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1129
  %or = or i32 %1, 794, !dbg !1129
  store i32 %or, i32* %arrayidx, align 4, !dbg !1129
  br i1 false, label %cond.true, label %cond.false, !dbg !1130

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !1131

cond.false:                                       ; preds = %entry
  %2 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !1131
  %3 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %2, i32 0, i32 12, !dbg !1131
  %x86_capability = bitcast %union.anon* %3 to [20 x i32]*, !dbg !1131
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %x86_capability, i64 0, i64 0, !dbg !1131
  %4 = bitcast i32* %arraydecay to i64*, !dbg !1131
  %call = call zeroext i1 @test_bit(i64 135, i64* %4) #9, !dbg !1131
  br i1 %call, label %if.then, label %if.end, !dbg !1130

if.then:                                          ; preds = %cond.false, %cond.true
  %5 = load i32*, i32** %buf.addr, align 8, !dbg !1133
  %arrayidx1 = getelementptr i32, i32* %5, i64 2, !dbg !1133
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !1134
  %or2 = or i32 %6, 2091, !dbg !1134
  store i32 %or2, i32* %arrayidx1, align 4, !dbg !1134
  br label %if.end, !dbg !1133

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  br i1 false, label %cond.true3, label %cond.false4, !dbg !1135

cond.true3:                                       ; preds = %if.end
  br i1 true, label %if.then8, label %if.end11, !dbg !1136

cond.false4:                                      ; preds = %if.end
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !1136
  %8 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %7, i32 0, i32 12, !dbg !1136
  %x86_capability5 = bitcast %union.anon* %8 to [20 x i32]*, !dbg !1136
  %arraydecay6 = getelementptr inbounds [20 x i32], [20 x i32]* %x86_capability5, i64 0, i64 0, !dbg !1136
  %9 = bitcast i32* %arraydecay6 to i64*, !dbg !1136
  %call7 = call zeroext i1 @test_bit(i64 22, i64* %9) #9, !dbg !1136
  br i1 %call7, label %if.then8, label %if.end11, !dbg !1135

if.then8:                                         ; preds = %cond.false4, %cond.true3
  %10 = load i32*, i32** %buf.addr, align 8, !dbg !1138
  %arrayidx9 = getelementptr i32, i32* %10, i64 2, !dbg !1138
  %11 = load i32, i32* %arrayidx9, align 4, !dbg !1139
  %or10 = or i32 %11, 4, !dbg !1139
  store i32 %or10, i32* %arrayidx9, align 4, !dbg !1139
  br label %if.end11, !dbg !1138

if.end11:                                         ; preds = %if.then8, %cond.false4, %cond.true3
  br i1 false, label %cond.true12, label %cond.false13, !dbg !1140

cond.true12:                                      ; preds = %if.end11
  br i1 true, label %if.end19, label %if.then17, !dbg !1141

cond.false13:                                     ; preds = %if.end11
  %12 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !1141
  %13 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %12, i32 0, i32 12, !dbg !1141
  %x86_capability14 = bitcast %union.anon* %13 to [20 x i32]*, !dbg !1141
  %arraydecay15 = getelementptr inbounds [20 x i32], [20 x i32]* %x86_capability14, i64 0, i64 0, !dbg !1141
  %14 = bitcast i32* %arraydecay15 to i64*, !dbg !1141
  %call16 = call zeroext i1 @test_bit(i64 131, i64* %14) #9, !dbg !1141
  br i1 %call16, label %if.end19, label %if.then17, !dbg !1140

if.then17:                                        ; preds = %cond.false13, %cond.true12
  %15 = load i32*, i32** %buf.addr, align 8, !dbg !1143
  %arrayidx18 = getelementptr i32, i32* %15, i64 2, !dbg !1143
  %16 = load i32, i32* %arrayidx18, align 4, !dbg !1144
  %and = and i32 %16, -513, !dbg !1144
  store i32 %and, i32* %arrayidx18, align 4, !dbg !1144
  br label %if.end19, !dbg !1143

if.end19:                                         ; preds = %if.then17, %cond.false13, %cond.true12
  ret void, !dbg !1145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !1146 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !1154, metadata !DIExpression()), !dbg !1156
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !1158, metadata !DIExpression()), !dbg !1159
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !1160, metadata !DIExpression()), !dbg !1161
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1162, metadata !DIExpression()), !dbg !1164
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1166, metadata !DIExpression()), !dbg !1167
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !1168, metadata !DIExpression()), !dbg !1176
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1178, metadata !DIExpression()), !dbg !1179
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1184
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1185
  %div = sdiv i64 %1, 64, !dbg !1185
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1186
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1184
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1187
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1188
  %conv.i = trunc i64 %4 to i32, !dbg !1188
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !1189
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1190
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1190
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !1190
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1191
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !1191
  br i1 %8, label %cond.true, label %cond.false, !dbg !1191

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !1191
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !1191
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !1192
  %and.i = and i64 %11, 63, !dbg !1193
  %shl.i = shl i64 1, %and.i, !dbg !1194
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !1195
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !1196
  %shr.i = ashr i64 %13, 6, !dbg !1197
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !1195
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !1195
  %and1.i = and i64 %shl.i, %14, !dbg !1198
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !1199
  %conv = zext i1 %cmp.i to i32, !dbg !1191
  br label %cond.end, !dbg !1191

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !1191
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !1191
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !1200
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !1201
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #10, !dbg !1202, !srcloc !1203
  store i8 %19, i8* %oldbit.i, align 1, !dbg !1202
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !1204
  %tobool.i = trunc i8 %20 to i1, !dbg !1204
  %conv2 = zext i1 %tobool.i to i32, !dbg !1191
  br label %cond.end, !dbg !1191

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1191
  %tobool = icmp ne i32 %cond, 0, !dbg !1191
  ret i1 %tobool, !dbg !1205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !1206 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1210, metadata !DIExpression()), !dbg !1211
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1212, metadata !DIExpression()), !dbg !1213
  ret i1 true, !dbg !1214
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !1215 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1219, metadata !DIExpression()), !dbg !1220
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1221, metadata !DIExpression()), !dbg !1222
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !1223, metadata !DIExpression()), !dbg !1224
  ret void, !dbg !1225
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

; Function Attrs: noredzone
declare dso_local i32 @dmi_check_system(%struct.dmi_system_id*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @set_no_mwait(%struct.dmi_system_id* %id) #3 section ".init.text" !dbg !1226 {
entry:
  %id.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %id, %struct.dmi_system_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %id.addr, metadata !1227, metadata !DIExpression()), !dbg !1228
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %id.addr, align 8, !dbg !1229
  %ident = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %0, i32 0, i32 1, !dbg !1229
  %1 = load i8*, i8** %ident, align 8, !dbg !1229
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i8* %1) #13, !dbg !1229
  store i64 2, i64* @boot_option_idle_override, align 8, !dbg !1230
  ret i32 0, !dbg !1231
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @processor_physically_present(i8* %handle) #3 section ".init.text" !dbg !1232 {
entry:
  %retval = alloca i1, align 1
  %handle.addr = alloca i8*, align 8
  %cpuid = alloca i32, align 4
  %type = alloca i32, align 4
  %acpi_id = alloca i32, align 4
  %status = alloca i32, align 4
  %acpi_type = alloca i32, align 4
  %tmp = alloca i64, align 8
  %object = alloca %union.acpi_object, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !1235, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.declare(metadata i32* %cpuid, metadata !1237, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.declare(metadata i32* %type, metadata !1239, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.declare(metadata i32* %acpi_id, metadata !1241, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1243, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.declare(metadata i32* %acpi_type, metadata !1245, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !1247, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.declare(metadata %union.acpi_object* %object, metadata !1249, metadata !DIExpression()), !dbg !1250
  %0 = bitcast %union.acpi_object* %object to i8*, !dbg !1250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ({ i32, [20 x i8] }* @__const.processor_physically_present.object to i8*), i64 24, i1 false), !dbg !1250
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !1251, metadata !DIExpression()), !dbg !1256
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !1257
  store i64 24, i64* %length, align 8, !dbg !1257
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !1257
  %1 = bitcast %union.acpi_object* %object to i8*, !dbg !1258
  store i8* %1, i8** %pointer, align 8, !dbg !1257
  %2 = load i8*, i8** %handle.addr, align 8, !dbg !1259
  %call = call i32 @acpi_get_type(i8* %2, i32* %acpi_type) #9, !dbg !1260
  store i32 %call, i32* %status, align 4, !dbg !1261
  %3 = load i32, i32* %status, align 4, !dbg !1262
  %tobool = icmp ne i32 %3, 0, !dbg !1262
  br i1 %tobool, label %if.then, label %if.end, !dbg !1264

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !1265
  br label %return, !dbg !1265

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %acpi_type, align 4, !dbg !1266
  switch i32 %4, label %sw.default [
    i32 12, label %sw.bb
    i32 6, label %sw.bb5
  ], !dbg !1267

sw.bb:                                            ; preds = %if.end
  %5 = load i8*, i8** %handle.addr, align 8, !dbg !1268
  %call1 = call i32 @acpi_evaluate_object(i8* %5, i8* null, %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #9, !dbg !1270
  store i32 %call1, i32* %status, align 4, !dbg !1271
  %6 = load i32, i32* %status, align 4, !dbg !1272
  %tobool2 = icmp ne i32 %6, 0, !dbg !1272
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1274

if.then3:                                         ; preds = %sw.bb
  store i1 false, i1* %retval, align 1, !dbg !1275
  br label %return, !dbg !1275

if.end4:                                          ; preds = %sw.bb
  %processor = bitcast %union.acpi_object* %object to %struct.anon.4*, !dbg !1276
  %proc_id = getelementptr inbounds %struct.anon.4, %struct.anon.4* %processor, i32 0, i32 1, !dbg !1277
  %7 = load i32, i32* %proc_id, align 4, !dbg !1277
  store i32 %7, i32* %acpi_id, align 4, !dbg !1278
  br label %sw.epilog, !dbg !1279

sw.bb5:                                           ; preds = %if.end
  %8 = load i8*, i8** %handle.addr, align 8, !dbg !1280
  %call6 = call i32 @acpi_evaluate_integer(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.acpi_object_list* null, i64* %tmp) #9, !dbg !1281
  store i32 %call6, i32* %status, align 4, !dbg !1282
  %9 = load i32, i32* %status, align 4, !dbg !1283
  %tobool7 = icmp ne i32 %9, 0, !dbg !1283
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1285

if.then8:                                         ; preds = %sw.bb5
  store i1 false, i1* %retval, align 1, !dbg !1286
  br label %return, !dbg !1286

if.end9:                                          ; preds = %sw.bb5
  %10 = load i64, i64* %tmp, align 8, !dbg !1287
  %conv = trunc i64 %10 to i32, !dbg !1287
  store i32 %conv, i32* %acpi_id, align 4, !dbg !1288
  br label %sw.epilog, !dbg !1289

sw.default:                                       ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !1290
  br label %return, !dbg !1290

sw.epilog:                                        ; preds = %if.end9, %if.end4
  %11 = load i32, i32* %acpi_type, align 4, !dbg !1291
  %cmp = icmp eq i32 %11, 6, !dbg !1292
  %12 = zext i1 %cmp to i64, !dbg !1293
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !1293
  store i32 %cond, i32* %type, align 4, !dbg !1294
  %13 = load i8*, i8** %handle.addr, align 8, !dbg !1295
  %14 = load i32, i32* %type, align 4, !dbg !1296
  %15 = load i32, i32* %acpi_id, align 4, !dbg !1297
  %call11 = call i32 @acpi_get_cpuid(i8* %13, i32 %14, i32 %15) #9, !dbg !1298
  store i32 %call11, i32* %cpuid, align 4, !dbg !1299
  %16 = load i32, i32* %cpuid, align 4, !dbg !1300
  %call12 = call zeroext i1 @invalid_logical_cpuid(i32 %16) #9, !dbg !1301
  %lnot = xor i1 %call12, true, !dbg !1302
  store i1 %lnot, i1* %retval, align 1, !dbg !1303
  br label %return, !dbg !1303

return:                                           ; preds = %sw.epilog, %sw.default, %if.then8, %if.then3, %if.then
  %17 = load i1, i1* %retval, align 1, !dbg !1304
  ret i1 %17, !dbg !1304
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_type(i8*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_cpuid(i8*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @invalid_logical_cpuid(i32 %cpuid) #0 !dbg !1305 {
entry:
  %cpuid.addr = alloca i32, align 4
  store i32 %cpuid, i32* %cpuid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpuid.addr, metadata !1309, metadata !DIExpression()), !dbg !1310
  %0 = load i32, i32* %cpuid.addr, align 4, !dbg !1311
  %cmp = icmp slt i32 %0, 0, !dbg !1312
  ret i1 %cmp, !dbg !1313
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "processor_idle_dmi_table", scope: !2, file: !3, line: 177, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !48, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/processor_pdc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 305, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "idle_boot_override", file: !19, line: 678, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "IDLE_NO_OVERRIDE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "IDLE_HALT", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "IDLE_NOMWAIT", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "IDLE_POLL", value: 3, isUnsigned: true)
!25 = !{!26, !28, !29, !30, !35, !37, !39, !43, !44, !46, !47}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !27, line: 424, baseType: !28)
!27 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !27, line: 127, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !31, line: 23, baseType: !32)
!31 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !33, line: 31, baseType: !34)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!34 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !31, line: 21, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !7)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !38, line: 148, baseType: !7)
!38 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !31, line: 17, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !27, line: 421, baseType: !35)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!48 = !{!0}
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 5504, elements: !76)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !52, line: 566, size: 2752, elements: !53)
!52 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !59, !63, !75}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !51, file: !52, line: 567, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!43, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !51, file: !52, line: 568, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !51, file: !52, line: 569, baseType: !64, size: 2560, offset: 128)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 2560, elements: !73)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !52, line: 560, size: 640, elements: !66)
!66 = !{!67, !68, !69}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !65, file: !52, line: 561, baseType: !42, size: 7, flags: DIFlagBitField, extraData: i64 0)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !65, file: !52, line: 562, baseType: !42, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !65, file: !52, line: 563, baseType: !70, size: 632, offset: 8)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 632, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 79)
!73 = !{!74}
!74 = !DISubrange(count: 4)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !51, file: !52, line: 570, baseType: !28, size: 64, offset: 2688)
!76 = !{!77}
!77 = !DISubrange(count: 2)
!78 = !{i32 7, !"Dwarf Version", i32 4}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"Code Model", i32 2}
!82 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!83 = distinct !DISubprogram(name: "acpi_processor_set_pdc", scope: !3, file: !3, line: 141, type: !84, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !26}
!86 = !{}
!87 = !DILocalVariable(name: "handle", arg: 1, scope: !83, file: !3, line: 141, type: !26)
!88 = !DILocation(line: 141, column: 41, scope: !83)
!89 = !DILocalVariable(name: "obj_list", scope: !83, file: !3, line: 143, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !27, line: 947, size: 128, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !91, file: !27, line: 948, baseType: !35, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !91, file: !27, line: 949, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !27, line: 899, size: 192, elements: !97)
!97 = !{!98, !100, !105, !112, !118, !124, !130, !138}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !27, line: 900, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !27, line: 635, baseType: !35)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !96, file: !27, line: 904, baseType: !101, size: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !27, line: 901, size: 128, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !27, line: 902, baseType: !99, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !101, file: !27, line: 903, baseType: !30, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !96, file: !27, line: 910, baseType: !106, size: 128)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !27, line: 906, size: 128, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !27, line: 907, baseType: !99, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !106, file: !27, line: 908, baseType: !35, size: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !106, file: !27, line: 909, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !96, file: !27, line: 916, baseType: !113, size: 128)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !27, line: 912, size: 128, elements: !114)
!114 = !{!115, !116, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !27, line: 913, baseType: !99, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !113, file: !27, line: 914, baseType: !35, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !113, file: !27, line: 915, baseType: !39, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !96, file: !27, line: 922, baseType: !119, size: 128)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !27, line: 918, size: 128, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !27, line: 919, baseType: !99, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !119, file: !27, line: 920, baseType: !35, size: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !119, file: !27, line: 921, baseType: !95, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !96, file: !27, line: 928, baseType: !125, size: 128)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !27, line: 924, size: 128, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !27, line: 925, baseType: !99, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !125, file: !27, line: 926, baseType: !99, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !125, file: !27, line: 927, baseType: !26, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !96, file: !27, line: 935, baseType: !131, size: 192)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !27, line: 930, size: 192, elements: !132)
!132 = !{!133, !134, !135, !137}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !27, line: 931, baseType: !99, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !131, file: !27, line: 932, baseType: !35, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !131, file: !27, line: 933, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !27, line: 128, baseType: !30)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !131, file: !27, line: 934, baseType: !35, size: 32, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !96, file: !27, line: 941, baseType: !139, size: 96)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !27, line: 937, size: 96, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !27, line: 938, baseType: !99, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !139, file: !27, line: 939, baseType: !35, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !139, file: !27, line: 940, baseType: !35, size: 32, offset: 64)
!144 = !DILocation(line: 143, column: 27, scope: !83)
!145 = !DILocation(line: 145, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !83, file: !3, line: 145, column: 6)
!147 = !DILocation(line: 145, column: 26, scope: !146)
!148 = !DILocation(line: 145, column: 6, scope: !83)
!149 = !DILocation(line: 146, column: 3, scope: !146)
!150 = !DILocation(line: 148, column: 13, scope: !83)
!151 = !DILocation(line: 148, column: 11, scope: !83)
!152 = !DILocation(line: 149, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !83, file: !3, line: 149, column: 6)
!154 = !DILocation(line: 149, column: 6, scope: !83)
!155 = !DILocation(line: 150, column: 3, scope: !153)
!156 = !DILocation(line: 152, column: 26, scope: !83)
!157 = !DILocation(line: 152, column: 34, scope: !83)
!158 = !DILocation(line: 152, column: 2, scope: !83)
!159 = !DILocation(line: 154, column: 8, scope: !83)
!160 = !DILocation(line: 154, column: 18, scope: !83)
!161 = !DILocation(line: 154, column: 27, scope: !83)
!162 = !DILocation(line: 154, column: 34, scope: !83)
!163 = !DILocation(line: 154, column: 2, scope: !83)
!164 = !DILocation(line: 155, column: 8, scope: !83)
!165 = !DILocation(line: 155, column: 18, scope: !83)
!166 = !DILocation(line: 155, column: 2, scope: !83)
!167 = !DILocation(line: 156, column: 8, scope: !83)
!168 = !DILocation(line: 156, column: 2, scope: !83)
!169 = !DILocation(line: 157, column: 1, scope: !83)
!170 = distinct !DISubprogram(name: "arch_has_acpi_pdc", scope: !171, file: !171, line: 88, type: !172, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!171 = !DIFile(filename: "./arch/x86/include/asm/acpi.h", directory: "/home/lizy2001/genbc/linux")
!172 = !DISubroutineType(types: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !38, line: 30, baseType: !175)
!175 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!176 = !DILocalVariable(name: "c", scope: !170, file: !171, line: 90, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !19, line: 81, size: 2048, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !189, !190, !191, !192, !193, !194, !195, !203, !207, !211, !212, !213, !214, !215, !216, !217, !218, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !178, file: !19, line: 82, baseType: !41, size: 8)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !178, file: !19, line: 83, baseType: !41, size: 8, offset: 8)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !178, file: !19, line: 84, baseType: !41, size: 8, offset: 16)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !178, file: !19, line: 85, baseType: !41, size: 8, offset: 24)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !178, file: !19, line: 88, baseType: !43, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !178, file: !19, line: 91, baseType: !186, size: 96, offset: 64)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 96, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 3)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !178, file: !19, line: 93, baseType: !41, size: 8, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !178, file: !19, line: 94, baseType: !41, size: 8, offset: 168)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !178, file: !19, line: 96, baseType: !41, size: 8, offset: 176)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !178, file: !19, line: 97, baseType: !41, size: 8, offset: 184)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !178, file: !19, line: 99, baseType: !36, size: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !178, file: !19, line: 101, baseType: !43, size: 32, offset: 224)
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !19, line: 107, baseType: !196, size: 640, offset: 256)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !178, file: !19, line: 107, size: 640, elements: !197)
!197 = !{!198, !202}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !196, file: !19, line: 108, baseType: !199, size: 640)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 20)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !196, file: !19, line: 109, baseType: !45, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !178, file: !19, line: 111, baseType: !204, size: 128, offset: 896)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 16)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !178, file: !19, line: 112, baseType: !208, size: 512, offset: 1024)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 512, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !178, file: !19, line: 114, baseType: !7, size: 32, offset: 1536)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !178, file: !19, line: 115, baseType: !43, size: 32, offset: 1568)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !178, file: !19, line: 117, baseType: !43, size: 32, offset: 1600)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !178, file: !19, line: 118, baseType: !43, size: 32, offset: 1632)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !178, file: !19, line: 119, baseType: !43, size: 32, offset: 1664)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !178, file: !19, line: 120, baseType: !43, size: 32, offset: 1696)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !178, file: !19, line: 121, baseType: !45, size: 64, offset: 1728)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !178, file: !19, line: 123, baseType: !219, size: 16, offset: 1792)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !31, line: 19, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !221)
!221 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !178, file: !19, line: 124, baseType: !219, size: 16, offset: 1808)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !178, file: !19, line: 125, baseType: !219, size: 16, offset: 1824)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !178, file: !19, line: 126, baseType: !219, size: 16, offset: 1840)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !178, file: !19, line: 128, baseType: !219, size: 16, offset: 1856)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !178, file: !19, line: 130, baseType: !219, size: 16, offset: 1872)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !178, file: !19, line: 132, baseType: !219, size: 16, offset: 1888)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !178, file: !19, line: 134, baseType: !219, size: 16, offset: 1904)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !178, file: !19, line: 135, baseType: !219, size: 16, offset: 1920)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !178, file: !19, line: 136, baseType: !219, size: 16, offset: 1936)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !178, file: !19, line: 138, baseType: !219, size: 16, offset: 1952)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !178, file: !19, line: 139, baseType: !35, size: 32, offset: 1984)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !178, file: !19, line: 141, baseType: !40, size: 8, offset: 2016)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !178, file: !19, line: 142, baseType: !7, size: 1, offset: 2024, flags: DIFlagBitField, extraData: i64 2024)
!235 = !DILocation(line: 90, column: 22, scope: !170)
!236 = !DILocation(line: 91, column: 10, scope: !170)
!237 = !DILocation(line: 91, column: 13, scope: !170)
!238 = !DILocation(line: 91, column: 24, scope: !170)
!239 = !DILocation(line: 91, column: 44, scope: !170)
!240 = !DILocation(line: 92, column: 3, scope: !170)
!241 = !DILocation(line: 92, column: 6, scope: !170)
!242 = !DILocation(line: 92, column: 17, scope: !170)
!243 = !DILocation(line: 91, column: 2, scope: !170)
!244 = distinct !DISubprogram(name: "acpi_processor_alloc_pdc", scope: !3, file: !3, line: 71, type: !245, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!245 = !DISubroutineType(types: !246)
!246 = !{!90}
!247 = !DILocalVariable(name: "s", arg: 1, scope: !248, file: !12, line: 445, type: !251)
!248 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !12, file: !12, line: 445, type: !249, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!249 = !DISubroutineType(types: !250)
!250 = !{!28, !251, !37, !254}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !253, line: 117, flags: DIFlagFwdDecl)
!253 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 55, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !256, line: 72, baseType: !257)
!256 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !256, line: 16, baseType: !45)
!258 = !DILocation(line: 445, column: 72, scope: !248, inlinedAt: !259)
!259 = distinct !DILocation(line: 552, column: 10, scope: !260, inlinedAt: !265)
!260 = distinct !DILexicalBlock(scope: !261, file: !12, line: 540, column: 34)
!261 = distinct !DILexicalBlock(scope: !262, file: !12, line: 540, column: 6)
!262 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 538, type: !263, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!263 = !DISubroutineType(types: !264)
!264 = !{!28, !254, !37}
!265 = distinct !DILocation(line: 88, column: 8, scope: !244)
!266 = !DILocalVariable(name: "flags", arg: 2, scope: !248, file: !12, line: 446, type: !37)
!267 = !DILocation(line: 446, column: 9, scope: !248, inlinedAt: !259)
!268 = !DILocalVariable(name: "size", arg: 3, scope: !248, file: !12, line: 446, type: !254)
!269 = !DILocation(line: 446, column: 23, scope: !248, inlinedAt: !259)
!270 = !DILocalVariable(name: "ret", scope: !248, file: !12, line: 448, type: !28)
!271 = !DILocation(line: 448, column: 8, scope: !248, inlinedAt: !259)
!272 = !DILocalVariable(name: "flags", arg: 1, scope: !273, file: !12, line: 318, type: !37)
!273 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 318, type: !274, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!274 = !DISubroutineType(types: !275)
!275 = !{!11, !37}
!276 = !DILocation(line: 318, column: 67, scope: !273, inlinedAt: !277)
!277 = distinct !DILocation(line: 553, column: 20, scope: !260, inlinedAt: !265)
!278 = !DILocalVariable(name: "size", arg: 1, scope: !279, file: !12, line: 346, type: !254)
!279 = distinct !DISubprogram(name: "kmalloc_index", scope: !12, file: !12, line: 346, type: !280, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!280 = !DISubroutineType(types: !281)
!281 = !{!7, !254}
!282 = !DILocation(line: 346, column: 58, scope: !279, inlinedAt: !283)
!283 = distinct !DILocation(line: 547, column: 11, scope: !260, inlinedAt: !265)
!284 = !DILocalVariable(name: "size", arg: 1, scope: !285, file: !12, line: 472, type: !254)
!285 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !12, file: !12, line: 472, type: !286, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!286 = !DISubroutineType(types: !287)
!287 = !{!28, !254, !37, !7}
!288 = !DILocation(line: 472, column: 28, scope: !285, inlinedAt: !289)
!289 = distinct !DILocation(line: 481, column: 9, scope: !290, inlinedAt: !291)
!290 = distinct !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 478, type: !263, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!291 = distinct !DILocation(line: 545, column: 11, scope: !292, inlinedAt: !265)
!292 = distinct !DILexicalBlock(scope: !260, file: !12, line: 544, column: 7)
!293 = !DILocalVariable(name: "flags", arg: 2, scope: !285, file: !12, line: 472, type: !37)
!294 = !DILocation(line: 472, column: 40, scope: !285, inlinedAt: !289)
!295 = !DILocalVariable(name: "order", arg: 3, scope: !285, file: !12, line: 472, type: !7)
!296 = !DILocation(line: 472, column: 60, scope: !285, inlinedAt: !289)
!297 = !DILocalVariable(name: "size", arg: 1, scope: !290, file: !12, line: 478, type: !254)
!298 = !DILocation(line: 478, column: 51, scope: !290, inlinedAt: !291)
!299 = !DILocalVariable(name: "flags", arg: 2, scope: !290, file: !12, line: 478, type: !37)
!300 = !DILocation(line: 478, column: 63, scope: !290, inlinedAt: !291)
!301 = !DILocalVariable(name: "order", scope: !290, file: !12, line: 480, type: !7)
!302 = !DILocation(line: 480, column: 15, scope: !290, inlinedAt: !291)
!303 = !DILocalVariable(name: "size", arg: 1, scope: !262, file: !12, line: 538, type: !254)
!304 = !DILocation(line: 538, column: 45, scope: !262, inlinedAt: !265)
!305 = !DILocalVariable(name: "flags", arg: 2, scope: !262, file: !12, line: 538, type: !37)
!306 = !DILocation(line: 538, column: 57, scope: !262, inlinedAt: !265)
!307 = !DILocalVariable(name: "index", scope: !260, file: !12, line: 542, type: !7)
!308 = !DILocation(line: 542, column: 16, scope: !260, inlinedAt: !265)
!309 = !DILocation(line: 445, column: 72, scope: !248, inlinedAt: !310)
!310 = distinct !DILocation(line: 552, column: 10, scope: !260, inlinedAt: !311)
!311 = distinct !DILocation(line: 82, column: 8, scope: !244)
!312 = !DILocation(line: 446, column: 9, scope: !248, inlinedAt: !310)
!313 = !DILocation(line: 446, column: 23, scope: !248, inlinedAt: !310)
!314 = !DILocation(line: 448, column: 8, scope: !248, inlinedAt: !310)
!315 = !DILocation(line: 318, column: 67, scope: !273, inlinedAt: !316)
!316 = distinct !DILocation(line: 553, column: 20, scope: !260, inlinedAt: !311)
!317 = !DILocation(line: 346, column: 58, scope: !279, inlinedAt: !318)
!318 = distinct !DILocation(line: 547, column: 11, scope: !260, inlinedAt: !311)
!319 = !DILocation(line: 472, column: 28, scope: !285, inlinedAt: !320)
!320 = distinct !DILocation(line: 481, column: 9, scope: !290, inlinedAt: !321)
!321 = distinct !DILocation(line: 545, column: 11, scope: !292, inlinedAt: !311)
!322 = !DILocation(line: 472, column: 40, scope: !285, inlinedAt: !320)
!323 = !DILocation(line: 472, column: 60, scope: !285, inlinedAt: !320)
!324 = !DILocation(line: 478, column: 51, scope: !290, inlinedAt: !321)
!325 = !DILocation(line: 478, column: 63, scope: !290, inlinedAt: !321)
!326 = !DILocation(line: 480, column: 15, scope: !290, inlinedAt: !321)
!327 = !DILocation(line: 538, column: 45, scope: !262, inlinedAt: !311)
!328 = !DILocation(line: 538, column: 57, scope: !262, inlinedAt: !311)
!329 = !DILocation(line: 542, column: 16, scope: !260, inlinedAt: !311)
!330 = !DILocation(line: 445, column: 72, scope: !248, inlinedAt: !331)
!331 = distinct !DILocation(line: 552, column: 10, scope: !260, inlinedAt: !332)
!332 = distinct !DILocation(line: 78, column: 13, scope: !244)
!333 = !DILocation(line: 446, column: 9, scope: !248, inlinedAt: !331)
!334 = !DILocation(line: 446, column: 23, scope: !248, inlinedAt: !331)
!335 = !DILocation(line: 448, column: 8, scope: !248, inlinedAt: !331)
!336 = !DILocation(line: 318, column: 67, scope: !273, inlinedAt: !337)
!337 = distinct !DILocation(line: 553, column: 20, scope: !260, inlinedAt: !332)
!338 = !DILocation(line: 346, column: 58, scope: !279, inlinedAt: !339)
!339 = distinct !DILocation(line: 547, column: 11, scope: !260, inlinedAt: !332)
!340 = !DILocation(line: 472, column: 28, scope: !285, inlinedAt: !341)
!341 = distinct !DILocation(line: 481, column: 9, scope: !290, inlinedAt: !342)
!342 = distinct !DILocation(line: 545, column: 11, scope: !292, inlinedAt: !332)
!343 = !DILocation(line: 472, column: 40, scope: !285, inlinedAt: !341)
!344 = !DILocation(line: 472, column: 60, scope: !285, inlinedAt: !341)
!345 = !DILocation(line: 478, column: 51, scope: !290, inlinedAt: !342)
!346 = !DILocation(line: 478, column: 63, scope: !290, inlinedAt: !342)
!347 = !DILocation(line: 480, column: 15, scope: !290, inlinedAt: !342)
!348 = !DILocation(line: 538, column: 45, scope: !262, inlinedAt: !332)
!349 = !DILocation(line: 538, column: 57, scope: !262, inlinedAt: !332)
!350 = !DILocation(line: 542, column: 16, scope: !260, inlinedAt: !332)
!351 = !DILocalVariable(name: "obj_list", scope: !244, file: !3, line: 73, type: !90)
!352 = !DILocation(line: 73, column: 27, scope: !244)
!353 = !DILocalVariable(name: "obj", scope: !244, file: !3, line: 74, type: !95)
!354 = !DILocation(line: 74, column: 21, scope: !244)
!355 = !DILocalVariable(name: "buf", scope: !244, file: !3, line: 75, type: !47)
!356 = !DILocation(line: 75, column: 7, scope: !244)
!357 = !DILocation(line: 540, column: 27, scope: !261, inlinedAt: !332)
!358 = !DILocation(line: 540, column: 6, scope: !261, inlinedAt: !332)
!359 = !DILocation(line: 540, column: 6, scope: !262, inlinedAt: !332)
!360 = !DILocation(line: 544, column: 7, scope: !292, inlinedAt: !332)
!361 = !DILocation(line: 544, column: 12, scope: !292, inlinedAt: !332)
!362 = !DILocation(line: 544, column: 7, scope: !260, inlinedAt: !332)
!363 = !DILocation(line: 545, column: 25, scope: !292, inlinedAt: !332)
!364 = !DILocation(line: 545, column: 31, scope: !292, inlinedAt: !332)
!365 = !DILocation(line: 480, column: 33, scope: !290, inlinedAt: !342)
!366 = !DILocation(line: 480, column: 23, scope: !290, inlinedAt: !342)
!367 = !DILocation(line: 481, column: 29, scope: !290, inlinedAt: !342)
!368 = !DILocation(line: 481, column: 35, scope: !290, inlinedAt: !342)
!369 = !DILocation(line: 481, column: 42, scope: !290, inlinedAt: !342)
!370 = !DILocation(line: 474, column: 23, scope: !285, inlinedAt: !341)
!371 = !DILocation(line: 474, column: 29, scope: !285, inlinedAt: !341)
!372 = !DILocation(line: 474, column: 36, scope: !285, inlinedAt: !341)
!373 = !DILocation(line: 474, column: 9, scope: !285, inlinedAt: !341)
!374 = !DILocation(line: 545, column: 4, scope: !292, inlinedAt: !332)
!375 = !DILocation(line: 547, column: 25, scope: !260, inlinedAt: !332)
!376 = !DILocation(line: 348, column: 7, scope: !377, inlinedAt: !339)
!377 = distinct !DILexicalBlock(scope: !279, file: !12, line: 348, column: 6)
!378 = !DILocation(line: 348, column: 6, scope: !279, inlinedAt: !339)
!379 = !DILocation(line: 349, column: 3, scope: !377, inlinedAt: !339)
!380 = !DILocation(line: 351, column: 6, scope: !381, inlinedAt: !339)
!381 = distinct !DILexicalBlock(scope: !279, file: !12, line: 351, column: 6)
!382 = !DILocation(line: 351, column: 11, scope: !381, inlinedAt: !339)
!383 = !DILocation(line: 351, column: 6, scope: !279, inlinedAt: !339)
!384 = !DILocation(line: 352, column: 3, scope: !381, inlinedAt: !339)
!385 = !DILocation(line: 354, column: 32, scope: !386, inlinedAt: !339)
!386 = distinct !DILexicalBlock(scope: !279, file: !12, line: 354, column: 6)
!387 = !DILocation(line: 354, column: 37, scope: !386, inlinedAt: !339)
!388 = !DILocation(line: 354, column: 42, scope: !386, inlinedAt: !339)
!389 = !DILocation(line: 354, column: 45, scope: !386, inlinedAt: !339)
!390 = !DILocation(line: 354, column: 50, scope: !386, inlinedAt: !339)
!391 = !DILocation(line: 354, column: 6, scope: !279, inlinedAt: !339)
!392 = !DILocation(line: 355, column: 3, scope: !386, inlinedAt: !339)
!393 = !DILocation(line: 356, column: 32, scope: !394, inlinedAt: !339)
!394 = distinct !DILexicalBlock(scope: !279, file: !12, line: 356, column: 6)
!395 = !DILocation(line: 356, column: 37, scope: !394, inlinedAt: !339)
!396 = !DILocation(line: 356, column: 43, scope: !394, inlinedAt: !339)
!397 = !DILocation(line: 356, column: 46, scope: !394, inlinedAt: !339)
!398 = !DILocation(line: 356, column: 51, scope: !394, inlinedAt: !339)
!399 = !DILocation(line: 356, column: 6, scope: !279, inlinedAt: !339)
!400 = !DILocation(line: 357, column: 3, scope: !394, inlinedAt: !339)
!401 = !DILocation(line: 358, column: 6, scope: !402, inlinedAt: !339)
!402 = distinct !DILexicalBlock(scope: !279, file: !12, line: 358, column: 6)
!403 = !DILocation(line: 358, column: 11, scope: !402, inlinedAt: !339)
!404 = !DILocation(line: 358, column: 6, scope: !279, inlinedAt: !339)
!405 = !DILocation(line: 358, column: 26, scope: !402, inlinedAt: !339)
!406 = !DILocation(line: 359, column: 6, scope: !407, inlinedAt: !339)
!407 = distinct !DILexicalBlock(scope: !279, file: !12, line: 359, column: 6)
!408 = !DILocation(line: 359, column: 11, scope: !407, inlinedAt: !339)
!409 = !DILocation(line: 359, column: 6, scope: !279, inlinedAt: !339)
!410 = !DILocation(line: 359, column: 26, scope: !407, inlinedAt: !339)
!411 = !DILocation(line: 360, column: 6, scope: !412, inlinedAt: !339)
!412 = distinct !DILexicalBlock(scope: !279, file: !12, line: 360, column: 6)
!413 = !DILocation(line: 360, column: 11, scope: !412, inlinedAt: !339)
!414 = !DILocation(line: 360, column: 6, scope: !279, inlinedAt: !339)
!415 = !DILocation(line: 360, column: 26, scope: !412, inlinedAt: !339)
!416 = !DILocation(line: 361, column: 6, scope: !417, inlinedAt: !339)
!417 = distinct !DILexicalBlock(scope: !279, file: !12, line: 361, column: 6)
!418 = !DILocation(line: 361, column: 11, scope: !417, inlinedAt: !339)
!419 = !DILocation(line: 361, column: 6, scope: !279, inlinedAt: !339)
!420 = !DILocation(line: 361, column: 26, scope: !417, inlinedAt: !339)
!421 = !DILocation(line: 362, column: 6, scope: !422, inlinedAt: !339)
!422 = distinct !DILexicalBlock(scope: !279, file: !12, line: 362, column: 6)
!423 = !DILocation(line: 362, column: 11, scope: !422, inlinedAt: !339)
!424 = !DILocation(line: 362, column: 6, scope: !279, inlinedAt: !339)
!425 = !DILocation(line: 362, column: 26, scope: !422, inlinedAt: !339)
!426 = !DILocation(line: 363, column: 6, scope: !427, inlinedAt: !339)
!427 = distinct !DILexicalBlock(scope: !279, file: !12, line: 363, column: 6)
!428 = !DILocation(line: 363, column: 11, scope: !427, inlinedAt: !339)
!429 = !DILocation(line: 363, column: 6, scope: !279, inlinedAt: !339)
!430 = !DILocation(line: 363, column: 26, scope: !427, inlinedAt: !339)
!431 = !DILocation(line: 364, column: 6, scope: !432, inlinedAt: !339)
!432 = distinct !DILexicalBlock(scope: !279, file: !12, line: 364, column: 6)
!433 = !DILocation(line: 364, column: 11, scope: !432, inlinedAt: !339)
!434 = !DILocation(line: 364, column: 6, scope: !279, inlinedAt: !339)
!435 = !DILocation(line: 364, column: 26, scope: !432, inlinedAt: !339)
!436 = !DILocation(line: 365, column: 6, scope: !437, inlinedAt: !339)
!437 = distinct !DILexicalBlock(scope: !279, file: !12, line: 365, column: 6)
!438 = !DILocation(line: 365, column: 11, scope: !437, inlinedAt: !339)
!439 = !DILocation(line: 365, column: 6, scope: !279, inlinedAt: !339)
!440 = !DILocation(line: 365, column: 26, scope: !437, inlinedAt: !339)
!441 = !DILocation(line: 366, column: 6, scope: !442, inlinedAt: !339)
!442 = distinct !DILexicalBlock(scope: !279, file: !12, line: 366, column: 6)
!443 = !DILocation(line: 366, column: 11, scope: !442, inlinedAt: !339)
!444 = !DILocation(line: 366, column: 6, scope: !279, inlinedAt: !339)
!445 = !DILocation(line: 366, column: 26, scope: !442, inlinedAt: !339)
!446 = !DILocation(line: 367, column: 6, scope: !447, inlinedAt: !339)
!447 = distinct !DILexicalBlock(scope: !279, file: !12, line: 367, column: 6)
!448 = !DILocation(line: 367, column: 11, scope: !447, inlinedAt: !339)
!449 = !DILocation(line: 367, column: 6, scope: !279, inlinedAt: !339)
!450 = !DILocation(line: 367, column: 26, scope: !447, inlinedAt: !339)
!451 = !DILocation(line: 368, column: 6, scope: !452, inlinedAt: !339)
!452 = distinct !DILexicalBlock(scope: !279, file: !12, line: 368, column: 6)
!453 = !DILocation(line: 368, column: 11, scope: !452, inlinedAt: !339)
!454 = !DILocation(line: 368, column: 6, scope: !279, inlinedAt: !339)
!455 = !DILocation(line: 368, column: 26, scope: !452, inlinedAt: !339)
!456 = !DILocation(line: 369, column: 6, scope: !457, inlinedAt: !339)
!457 = distinct !DILexicalBlock(scope: !279, file: !12, line: 369, column: 6)
!458 = !DILocation(line: 369, column: 11, scope: !457, inlinedAt: !339)
!459 = !DILocation(line: 369, column: 6, scope: !279, inlinedAt: !339)
!460 = !DILocation(line: 369, column: 26, scope: !457, inlinedAt: !339)
!461 = !DILocation(line: 370, column: 6, scope: !462, inlinedAt: !339)
!462 = distinct !DILexicalBlock(scope: !279, file: !12, line: 370, column: 6)
!463 = !DILocation(line: 370, column: 11, scope: !462, inlinedAt: !339)
!464 = !DILocation(line: 370, column: 6, scope: !279, inlinedAt: !339)
!465 = !DILocation(line: 370, column: 26, scope: !462, inlinedAt: !339)
!466 = !DILocation(line: 371, column: 6, scope: !467, inlinedAt: !339)
!467 = distinct !DILexicalBlock(scope: !279, file: !12, line: 371, column: 6)
!468 = !DILocation(line: 371, column: 11, scope: !467, inlinedAt: !339)
!469 = !DILocation(line: 371, column: 6, scope: !279, inlinedAt: !339)
!470 = !DILocation(line: 371, column: 26, scope: !467, inlinedAt: !339)
!471 = !DILocation(line: 372, column: 6, scope: !472, inlinedAt: !339)
!472 = distinct !DILexicalBlock(scope: !279, file: !12, line: 372, column: 6)
!473 = !DILocation(line: 372, column: 11, scope: !472, inlinedAt: !339)
!474 = !DILocation(line: 372, column: 6, scope: !279, inlinedAt: !339)
!475 = !DILocation(line: 372, column: 26, scope: !472, inlinedAt: !339)
!476 = !DILocation(line: 373, column: 6, scope: !477, inlinedAt: !339)
!477 = distinct !DILexicalBlock(scope: !279, file: !12, line: 373, column: 6)
!478 = !DILocation(line: 373, column: 11, scope: !477, inlinedAt: !339)
!479 = !DILocation(line: 373, column: 6, scope: !279, inlinedAt: !339)
!480 = !DILocation(line: 373, column: 26, scope: !477, inlinedAt: !339)
!481 = !DILocation(line: 374, column: 6, scope: !482, inlinedAt: !339)
!482 = distinct !DILexicalBlock(scope: !279, file: !12, line: 374, column: 6)
!483 = !DILocation(line: 374, column: 11, scope: !482, inlinedAt: !339)
!484 = !DILocation(line: 374, column: 6, scope: !279, inlinedAt: !339)
!485 = !DILocation(line: 374, column: 26, scope: !482, inlinedAt: !339)
!486 = !DILocation(line: 375, column: 6, scope: !487, inlinedAt: !339)
!487 = distinct !DILexicalBlock(scope: !279, file: !12, line: 375, column: 6)
!488 = !DILocation(line: 375, column: 11, scope: !487, inlinedAt: !339)
!489 = !DILocation(line: 375, column: 6, scope: !279, inlinedAt: !339)
!490 = !DILocation(line: 375, column: 27, scope: !487, inlinedAt: !339)
!491 = !DILocation(line: 376, column: 6, scope: !492, inlinedAt: !339)
!492 = distinct !DILexicalBlock(scope: !279, file: !12, line: 376, column: 6)
!493 = !DILocation(line: 376, column: 11, scope: !492, inlinedAt: !339)
!494 = !DILocation(line: 376, column: 6, scope: !279, inlinedAt: !339)
!495 = !DILocation(line: 376, column: 32, scope: !492, inlinedAt: !339)
!496 = !DILocation(line: 377, column: 6, scope: !497, inlinedAt: !339)
!497 = distinct !DILexicalBlock(scope: !279, file: !12, line: 377, column: 6)
!498 = !DILocation(line: 377, column: 11, scope: !497, inlinedAt: !339)
!499 = !DILocation(line: 377, column: 6, scope: !279, inlinedAt: !339)
!500 = !DILocation(line: 377, column: 32, scope: !497, inlinedAt: !339)
!501 = !DILocation(line: 378, column: 6, scope: !502, inlinedAt: !339)
!502 = distinct !DILexicalBlock(scope: !279, file: !12, line: 378, column: 6)
!503 = !DILocation(line: 378, column: 11, scope: !502, inlinedAt: !339)
!504 = !DILocation(line: 378, column: 6, scope: !279, inlinedAt: !339)
!505 = !DILocation(line: 378, column: 32, scope: !502, inlinedAt: !339)
!506 = !DILocation(line: 379, column: 6, scope: !507, inlinedAt: !339)
!507 = distinct !DILexicalBlock(scope: !279, file: !12, line: 379, column: 6)
!508 = !DILocation(line: 379, column: 11, scope: !507, inlinedAt: !339)
!509 = !DILocation(line: 379, column: 6, scope: !279, inlinedAt: !339)
!510 = !DILocation(line: 379, column: 33, scope: !507, inlinedAt: !339)
!511 = !DILocation(line: 380, column: 6, scope: !512, inlinedAt: !339)
!512 = distinct !DILexicalBlock(scope: !279, file: !12, line: 380, column: 6)
!513 = !DILocation(line: 380, column: 11, scope: !512, inlinedAt: !339)
!514 = !DILocation(line: 380, column: 6, scope: !279, inlinedAt: !339)
!515 = !DILocation(line: 380, column: 33, scope: !512, inlinedAt: !339)
!516 = !DILocation(line: 381, column: 6, scope: !517, inlinedAt: !339)
!517 = distinct !DILexicalBlock(scope: !279, file: !12, line: 381, column: 6)
!518 = !DILocation(line: 381, column: 11, scope: !517, inlinedAt: !339)
!519 = !DILocation(line: 381, column: 6, scope: !279, inlinedAt: !339)
!520 = !DILocation(line: 381, column: 33, scope: !517, inlinedAt: !339)
!521 = !DILocation(line: 382, column: 2, scope: !522, inlinedAt: !339)
!522 = distinct !DILexicalBlock(scope: !523, file: !12, line: 382, column: 2)
!523 = distinct !DILexicalBlock(scope: !279, file: !12, line: 382, column: 2)
!524 = !{i32 -2144381532, i32 -2144381503, i32 -2144381457, i32 -2144381399, i32 -2144381345, i32 -2144381291, i32 -2144381236, i32 -2144381205}
!525 = !DILocation(line: 382, column: 2, scope: !526, inlinedAt: !339)
!526 = distinct !DILexicalBlock(scope: !527, file: !12, line: 382, column: 2)
!527 = distinct !DILexicalBlock(scope: !523, file: !12, line: 382, column: 2)
!528 = !{i32 -2144376701, i32 -2144376694, i32 -2144376640, i32 -2144376609, i32 -2144376579}
!529 = !DILocation(line: 382, column: 2, scope: !527, inlinedAt: !339)
!530 = !DILocation(line: 386, column: 1, scope: !279, inlinedAt: !339)
!531 = !DILocation(line: 547, column: 9, scope: !260, inlinedAt: !332)
!532 = !DILocation(line: 549, column: 8, scope: !533, inlinedAt: !332)
!533 = distinct !DILexicalBlock(scope: !260, file: !12, line: 549, column: 7)
!534 = !DILocation(line: 549, column: 7, scope: !260, inlinedAt: !332)
!535 = !DILocation(line: 550, column: 4, scope: !533, inlinedAt: !332)
!536 = !DILocation(line: 553, column: 33, scope: !260, inlinedAt: !332)
!537 = !DILocation(line: 325, column: 6, scope: !538, inlinedAt: !337)
!538 = distinct !DILexicalBlock(scope: !273, file: !12, line: 325, column: 6)
!539 = !DILocation(line: 325, column: 6, scope: !273, inlinedAt: !337)
!540 = !DILocation(line: 326, column: 3, scope: !538, inlinedAt: !337)
!541 = !DILocation(line: 332, column: 9, scope: !273, inlinedAt: !337)
!542 = !DILocation(line: 332, column: 15, scope: !273, inlinedAt: !337)
!543 = !DILocation(line: 332, column: 2, scope: !273, inlinedAt: !337)
!544 = !DILocation(line: 336, column: 1, scope: !273, inlinedAt: !337)
!545 = !DILocation(line: 553, column: 5, scope: !260, inlinedAt: !332)
!546 = !DILocation(line: 553, column: 41, scope: !260, inlinedAt: !332)
!547 = !DILocation(line: 554, column: 5, scope: !260, inlinedAt: !332)
!548 = !DILocation(line: 554, column: 12, scope: !260, inlinedAt: !332)
!549 = !DILocation(line: 448, column: 31, scope: !248, inlinedAt: !331)
!550 = !DILocation(line: 448, column: 34, scope: !248, inlinedAt: !331)
!551 = !DILocation(line: 448, column: 14, scope: !248, inlinedAt: !331)
!552 = !DILocation(line: 450, column: 22, scope: !248, inlinedAt: !331)
!553 = !DILocation(line: 450, column: 25, scope: !248, inlinedAt: !331)
!554 = !DILocation(line: 450, column: 30, scope: !248, inlinedAt: !331)
!555 = !DILocation(line: 450, column: 36, scope: !248, inlinedAt: !331)
!556 = !DILocation(line: 450, column: 8, scope: !248, inlinedAt: !331)
!557 = !DILocation(line: 450, column: 6, scope: !248, inlinedAt: !331)
!558 = !DILocation(line: 451, column: 9, scope: !248, inlinedAt: !331)
!559 = !DILocation(line: 552, column: 3, scope: !260, inlinedAt: !332)
!560 = !DILocation(line: 557, column: 19, scope: !262, inlinedAt: !332)
!561 = !DILocation(line: 557, column: 25, scope: !262, inlinedAt: !332)
!562 = !DILocation(line: 557, column: 9, scope: !262, inlinedAt: !332)
!563 = !DILocation(line: 557, column: 2, scope: !262, inlinedAt: !332)
!564 = !DILocation(line: 558, column: 1, scope: !262, inlinedAt: !332)
!565 = !DILocation(line: 78, column: 13, scope: !244)
!566 = !DILocation(line: 78, column: 11, scope: !244)
!567 = !DILocation(line: 79, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !244, file: !3, line: 79, column: 6)
!569 = !DILocation(line: 79, column: 6, scope: !244)
!570 = !DILocation(line: 80, column: 3, scope: !568)
!571 = !DILocation(line: 540, column: 27, scope: !261, inlinedAt: !311)
!572 = !DILocation(line: 540, column: 6, scope: !261, inlinedAt: !311)
!573 = !DILocation(line: 540, column: 6, scope: !262, inlinedAt: !311)
!574 = !DILocation(line: 544, column: 7, scope: !292, inlinedAt: !311)
!575 = !DILocation(line: 544, column: 12, scope: !292, inlinedAt: !311)
!576 = !DILocation(line: 544, column: 7, scope: !260, inlinedAt: !311)
!577 = !DILocation(line: 545, column: 25, scope: !292, inlinedAt: !311)
!578 = !DILocation(line: 545, column: 31, scope: !292, inlinedAt: !311)
!579 = !DILocation(line: 480, column: 33, scope: !290, inlinedAt: !321)
!580 = !DILocation(line: 480, column: 23, scope: !290, inlinedAt: !321)
!581 = !DILocation(line: 481, column: 29, scope: !290, inlinedAt: !321)
!582 = !DILocation(line: 481, column: 35, scope: !290, inlinedAt: !321)
!583 = !DILocation(line: 481, column: 42, scope: !290, inlinedAt: !321)
!584 = !DILocation(line: 474, column: 23, scope: !285, inlinedAt: !320)
!585 = !DILocation(line: 474, column: 29, scope: !285, inlinedAt: !320)
!586 = !DILocation(line: 474, column: 36, scope: !285, inlinedAt: !320)
!587 = !DILocation(line: 474, column: 9, scope: !285, inlinedAt: !320)
!588 = !DILocation(line: 545, column: 4, scope: !292, inlinedAt: !311)
!589 = !DILocation(line: 547, column: 25, scope: !260, inlinedAt: !311)
!590 = !DILocation(line: 348, column: 7, scope: !377, inlinedAt: !318)
!591 = !DILocation(line: 348, column: 6, scope: !279, inlinedAt: !318)
!592 = !DILocation(line: 349, column: 3, scope: !377, inlinedAt: !318)
!593 = !DILocation(line: 351, column: 6, scope: !381, inlinedAt: !318)
!594 = !DILocation(line: 351, column: 11, scope: !381, inlinedAt: !318)
!595 = !DILocation(line: 351, column: 6, scope: !279, inlinedAt: !318)
!596 = !DILocation(line: 352, column: 3, scope: !381, inlinedAt: !318)
!597 = !DILocation(line: 354, column: 32, scope: !386, inlinedAt: !318)
!598 = !DILocation(line: 354, column: 37, scope: !386, inlinedAt: !318)
!599 = !DILocation(line: 354, column: 42, scope: !386, inlinedAt: !318)
!600 = !DILocation(line: 354, column: 45, scope: !386, inlinedAt: !318)
!601 = !DILocation(line: 354, column: 50, scope: !386, inlinedAt: !318)
!602 = !DILocation(line: 354, column: 6, scope: !279, inlinedAt: !318)
!603 = !DILocation(line: 355, column: 3, scope: !386, inlinedAt: !318)
!604 = !DILocation(line: 356, column: 32, scope: !394, inlinedAt: !318)
!605 = !DILocation(line: 356, column: 37, scope: !394, inlinedAt: !318)
!606 = !DILocation(line: 356, column: 43, scope: !394, inlinedAt: !318)
!607 = !DILocation(line: 356, column: 46, scope: !394, inlinedAt: !318)
!608 = !DILocation(line: 356, column: 51, scope: !394, inlinedAt: !318)
!609 = !DILocation(line: 356, column: 6, scope: !279, inlinedAt: !318)
!610 = !DILocation(line: 357, column: 3, scope: !394, inlinedAt: !318)
!611 = !DILocation(line: 358, column: 6, scope: !402, inlinedAt: !318)
!612 = !DILocation(line: 358, column: 11, scope: !402, inlinedAt: !318)
!613 = !DILocation(line: 358, column: 6, scope: !279, inlinedAt: !318)
!614 = !DILocation(line: 358, column: 26, scope: !402, inlinedAt: !318)
!615 = !DILocation(line: 359, column: 6, scope: !407, inlinedAt: !318)
!616 = !DILocation(line: 359, column: 11, scope: !407, inlinedAt: !318)
!617 = !DILocation(line: 359, column: 6, scope: !279, inlinedAt: !318)
!618 = !DILocation(line: 359, column: 26, scope: !407, inlinedAt: !318)
!619 = !DILocation(line: 360, column: 6, scope: !412, inlinedAt: !318)
!620 = !DILocation(line: 360, column: 11, scope: !412, inlinedAt: !318)
!621 = !DILocation(line: 360, column: 6, scope: !279, inlinedAt: !318)
!622 = !DILocation(line: 360, column: 26, scope: !412, inlinedAt: !318)
!623 = !DILocation(line: 361, column: 6, scope: !417, inlinedAt: !318)
!624 = !DILocation(line: 361, column: 11, scope: !417, inlinedAt: !318)
!625 = !DILocation(line: 361, column: 6, scope: !279, inlinedAt: !318)
!626 = !DILocation(line: 361, column: 26, scope: !417, inlinedAt: !318)
!627 = !DILocation(line: 362, column: 6, scope: !422, inlinedAt: !318)
!628 = !DILocation(line: 362, column: 11, scope: !422, inlinedAt: !318)
!629 = !DILocation(line: 362, column: 6, scope: !279, inlinedAt: !318)
!630 = !DILocation(line: 362, column: 26, scope: !422, inlinedAt: !318)
!631 = !DILocation(line: 363, column: 6, scope: !427, inlinedAt: !318)
!632 = !DILocation(line: 363, column: 11, scope: !427, inlinedAt: !318)
!633 = !DILocation(line: 363, column: 6, scope: !279, inlinedAt: !318)
!634 = !DILocation(line: 363, column: 26, scope: !427, inlinedAt: !318)
!635 = !DILocation(line: 364, column: 6, scope: !432, inlinedAt: !318)
!636 = !DILocation(line: 364, column: 11, scope: !432, inlinedAt: !318)
!637 = !DILocation(line: 364, column: 6, scope: !279, inlinedAt: !318)
!638 = !DILocation(line: 364, column: 26, scope: !432, inlinedAt: !318)
!639 = !DILocation(line: 365, column: 6, scope: !437, inlinedAt: !318)
!640 = !DILocation(line: 365, column: 11, scope: !437, inlinedAt: !318)
!641 = !DILocation(line: 365, column: 6, scope: !279, inlinedAt: !318)
!642 = !DILocation(line: 365, column: 26, scope: !437, inlinedAt: !318)
!643 = !DILocation(line: 366, column: 6, scope: !442, inlinedAt: !318)
!644 = !DILocation(line: 366, column: 11, scope: !442, inlinedAt: !318)
!645 = !DILocation(line: 366, column: 6, scope: !279, inlinedAt: !318)
!646 = !DILocation(line: 366, column: 26, scope: !442, inlinedAt: !318)
!647 = !DILocation(line: 367, column: 6, scope: !447, inlinedAt: !318)
!648 = !DILocation(line: 367, column: 11, scope: !447, inlinedAt: !318)
!649 = !DILocation(line: 367, column: 6, scope: !279, inlinedAt: !318)
!650 = !DILocation(line: 367, column: 26, scope: !447, inlinedAt: !318)
!651 = !DILocation(line: 368, column: 6, scope: !452, inlinedAt: !318)
!652 = !DILocation(line: 368, column: 11, scope: !452, inlinedAt: !318)
!653 = !DILocation(line: 368, column: 6, scope: !279, inlinedAt: !318)
!654 = !DILocation(line: 368, column: 26, scope: !452, inlinedAt: !318)
!655 = !DILocation(line: 369, column: 6, scope: !457, inlinedAt: !318)
!656 = !DILocation(line: 369, column: 11, scope: !457, inlinedAt: !318)
!657 = !DILocation(line: 369, column: 6, scope: !279, inlinedAt: !318)
!658 = !DILocation(line: 369, column: 26, scope: !457, inlinedAt: !318)
!659 = !DILocation(line: 370, column: 6, scope: !462, inlinedAt: !318)
!660 = !DILocation(line: 370, column: 11, scope: !462, inlinedAt: !318)
!661 = !DILocation(line: 370, column: 6, scope: !279, inlinedAt: !318)
!662 = !DILocation(line: 370, column: 26, scope: !462, inlinedAt: !318)
!663 = !DILocation(line: 371, column: 6, scope: !467, inlinedAt: !318)
!664 = !DILocation(line: 371, column: 11, scope: !467, inlinedAt: !318)
!665 = !DILocation(line: 371, column: 6, scope: !279, inlinedAt: !318)
!666 = !DILocation(line: 371, column: 26, scope: !467, inlinedAt: !318)
!667 = !DILocation(line: 372, column: 6, scope: !472, inlinedAt: !318)
!668 = !DILocation(line: 372, column: 11, scope: !472, inlinedAt: !318)
!669 = !DILocation(line: 372, column: 6, scope: !279, inlinedAt: !318)
!670 = !DILocation(line: 372, column: 26, scope: !472, inlinedAt: !318)
!671 = !DILocation(line: 373, column: 6, scope: !477, inlinedAt: !318)
!672 = !DILocation(line: 373, column: 11, scope: !477, inlinedAt: !318)
!673 = !DILocation(line: 373, column: 6, scope: !279, inlinedAt: !318)
!674 = !DILocation(line: 373, column: 26, scope: !477, inlinedAt: !318)
!675 = !DILocation(line: 374, column: 6, scope: !482, inlinedAt: !318)
!676 = !DILocation(line: 374, column: 11, scope: !482, inlinedAt: !318)
!677 = !DILocation(line: 374, column: 6, scope: !279, inlinedAt: !318)
!678 = !DILocation(line: 374, column: 26, scope: !482, inlinedAt: !318)
!679 = !DILocation(line: 375, column: 6, scope: !487, inlinedAt: !318)
!680 = !DILocation(line: 375, column: 11, scope: !487, inlinedAt: !318)
!681 = !DILocation(line: 375, column: 6, scope: !279, inlinedAt: !318)
!682 = !DILocation(line: 375, column: 27, scope: !487, inlinedAt: !318)
!683 = !DILocation(line: 376, column: 6, scope: !492, inlinedAt: !318)
!684 = !DILocation(line: 376, column: 11, scope: !492, inlinedAt: !318)
!685 = !DILocation(line: 376, column: 6, scope: !279, inlinedAt: !318)
!686 = !DILocation(line: 376, column: 32, scope: !492, inlinedAt: !318)
!687 = !DILocation(line: 377, column: 6, scope: !497, inlinedAt: !318)
!688 = !DILocation(line: 377, column: 11, scope: !497, inlinedAt: !318)
!689 = !DILocation(line: 377, column: 6, scope: !279, inlinedAt: !318)
!690 = !DILocation(line: 377, column: 32, scope: !497, inlinedAt: !318)
!691 = !DILocation(line: 378, column: 6, scope: !502, inlinedAt: !318)
!692 = !DILocation(line: 378, column: 11, scope: !502, inlinedAt: !318)
!693 = !DILocation(line: 378, column: 6, scope: !279, inlinedAt: !318)
!694 = !DILocation(line: 378, column: 32, scope: !502, inlinedAt: !318)
!695 = !DILocation(line: 379, column: 6, scope: !507, inlinedAt: !318)
!696 = !DILocation(line: 379, column: 11, scope: !507, inlinedAt: !318)
!697 = !DILocation(line: 379, column: 6, scope: !279, inlinedAt: !318)
!698 = !DILocation(line: 379, column: 33, scope: !507, inlinedAt: !318)
!699 = !DILocation(line: 380, column: 6, scope: !512, inlinedAt: !318)
!700 = !DILocation(line: 380, column: 11, scope: !512, inlinedAt: !318)
!701 = !DILocation(line: 380, column: 6, scope: !279, inlinedAt: !318)
!702 = !DILocation(line: 380, column: 33, scope: !512, inlinedAt: !318)
!703 = !DILocation(line: 381, column: 6, scope: !517, inlinedAt: !318)
!704 = !DILocation(line: 381, column: 11, scope: !517, inlinedAt: !318)
!705 = !DILocation(line: 381, column: 6, scope: !279, inlinedAt: !318)
!706 = !DILocation(line: 381, column: 33, scope: !517, inlinedAt: !318)
!707 = !DILocation(line: 382, column: 2, scope: !522, inlinedAt: !318)
!708 = !DILocation(line: 382, column: 2, scope: !526, inlinedAt: !318)
!709 = !DILocation(line: 382, column: 2, scope: !527, inlinedAt: !318)
!710 = !DILocation(line: 386, column: 1, scope: !279, inlinedAt: !318)
!711 = !DILocation(line: 547, column: 9, scope: !260, inlinedAt: !311)
!712 = !DILocation(line: 549, column: 8, scope: !533, inlinedAt: !311)
!713 = !DILocation(line: 549, column: 7, scope: !260, inlinedAt: !311)
!714 = !DILocation(line: 550, column: 4, scope: !533, inlinedAt: !311)
!715 = !DILocation(line: 553, column: 33, scope: !260, inlinedAt: !311)
!716 = !DILocation(line: 325, column: 6, scope: !538, inlinedAt: !316)
!717 = !DILocation(line: 325, column: 6, scope: !273, inlinedAt: !316)
!718 = !DILocation(line: 326, column: 3, scope: !538, inlinedAt: !316)
!719 = !DILocation(line: 332, column: 9, scope: !273, inlinedAt: !316)
!720 = !DILocation(line: 332, column: 15, scope: !273, inlinedAt: !316)
!721 = !DILocation(line: 332, column: 2, scope: !273, inlinedAt: !316)
!722 = !DILocation(line: 336, column: 1, scope: !273, inlinedAt: !316)
!723 = !DILocation(line: 553, column: 5, scope: !260, inlinedAt: !311)
!724 = !DILocation(line: 553, column: 41, scope: !260, inlinedAt: !311)
!725 = !DILocation(line: 554, column: 5, scope: !260, inlinedAt: !311)
!726 = !DILocation(line: 554, column: 12, scope: !260, inlinedAt: !311)
!727 = !DILocation(line: 448, column: 31, scope: !248, inlinedAt: !310)
!728 = !DILocation(line: 448, column: 34, scope: !248, inlinedAt: !310)
!729 = !DILocation(line: 448, column: 14, scope: !248, inlinedAt: !310)
!730 = !DILocation(line: 450, column: 22, scope: !248, inlinedAt: !310)
!731 = !DILocation(line: 450, column: 25, scope: !248, inlinedAt: !310)
!732 = !DILocation(line: 450, column: 30, scope: !248, inlinedAt: !310)
!733 = !DILocation(line: 450, column: 36, scope: !248, inlinedAt: !310)
!734 = !DILocation(line: 450, column: 8, scope: !248, inlinedAt: !310)
!735 = !DILocation(line: 450, column: 6, scope: !248, inlinedAt: !310)
!736 = !DILocation(line: 451, column: 9, scope: !248, inlinedAt: !310)
!737 = !DILocation(line: 552, column: 3, scope: !260, inlinedAt: !311)
!738 = !DILocation(line: 557, column: 19, scope: !262, inlinedAt: !311)
!739 = !DILocation(line: 557, column: 25, scope: !262, inlinedAt: !311)
!740 = !DILocation(line: 557, column: 9, scope: !262, inlinedAt: !311)
!741 = !DILocation(line: 557, column: 2, scope: !262, inlinedAt: !311)
!742 = !DILocation(line: 558, column: 1, scope: !262, inlinedAt: !311)
!743 = !DILocation(line: 82, column: 8, scope: !244)
!744 = !DILocation(line: 82, column: 6, scope: !244)
!745 = !DILocation(line: 83, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !244, file: !3, line: 83, column: 6)
!747 = !DILocation(line: 83, column: 6, scope: !244)
!748 = !DILocation(line: 84, column: 9, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !3, line: 83, column: 12)
!750 = !DILocation(line: 84, column: 3, scope: !749)
!751 = !DILocation(line: 85, column: 3, scope: !749)
!752 = !DILocation(line: 540, column: 27, scope: !261, inlinedAt: !265)
!753 = !DILocation(line: 540, column: 6, scope: !261, inlinedAt: !265)
!754 = !DILocation(line: 540, column: 6, scope: !262, inlinedAt: !265)
!755 = !DILocation(line: 544, column: 7, scope: !292, inlinedAt: !265)
!756 = !DILocation(line: 544, column: 12, scope: !292, inlinedAt: !265)
!757 = !DILocation(line: 544, column: 7, scope: !260, inlinedAt: !265)
!758 = !DILocation(line: 545, column: 25, scope: !292, inlinedAt: !265)
!759 = !DILocation(line: 545, column: 31, scope: !292, inlinedAt: !265)
!760 = !DILocation(line: 480, column: 33, scope: !290, inlinedAt: !291)
!761 = !DILocation(line: 480, column: 23, scope: !290, inlinedAt: !291)
!762 = !DILocation(line: 481, column: 29, scope: !290, inlinedAt: !291)
!763 = !DILocation(line: 481, column: 35, scope: !290, inlinedAt: !291)
!764 = !DILocation(line: 481, column: 42, scope: !290, inlinedAt: !291)
!765 = !DILocation(line: 474, column: 23, scope: !285, inlinedAt: !289)
!766 = !DILocation(line: 474, column: 29, scope: !285, inlinedAt: !289)
!767 = !DILocation(line: 474, column: 36, scope: !285, inlinedAt: !289)
!768 = !DILocation(line: 474, column: 9, scope: !285, inlinedAt: !289)
!769 = !DILocation(line: 545, column: 4, scope: !292, inlinedAt: !265)
!770 = !DILocation(line: 547, column: 25, scope: !260, inlinedAt: !265)
!771 = !DILocation(line: 348, column: 7, scope: !377, inlinedAt: !283)
!772 = !DILocation(line: 348, column: 6, scope: !279, inlinedAt: !283)
!773 = !DILocation(line: 349, column: 3, scope: !377, inlinedAt: !283)
!774 = !DILocation(line: 351, column: 6, scope: !381, inlinedAt: !283)
!775 = !DILocation(line: 351, column: 11, scope: !381, inlinedAt: !283)
!776 = !DILocation(line: 351, column: 6, scope: !279, inlinedAt: !283)
!777 = !DILocation(line: 352, column: 3, scope: !381, inlinedAt: !283)
!778 = !DILocation(line: 354, column: 32, scope: !386, inlinedAt: !283)
!779 = !DILocation(line: 354, column: 37, scope: !386, inlinedAt: !283)
!780 = !DILocation(line: 354, column: 42, scope: !386, inlinedAt: !283)
!781 = !DILocation(line: 354, column: 45, scope: !386, inlinedAt: !283)
!782 = !DILocation(line: 354, column: 50, scope: !386, inlinedAt: !283)
!783 = !DILocation(line: 354, column: 6, scope: !279, inlinedAt: !283)
!784 = !DILocation(line: 355, column: 3, scope: !386, inlinedAt: !283)
!785 = !DILocation(line: 356, column: 32, scope: !394, inlinedAt: !283)
!786 = !DILocation(line: 356, column: 37, scope: !394, inlinedAt: !283)
!787 = !DILocation(line: 356, column: 43, scope: !394, inlinedAt: !283)
!788 = !DILocation(line: 356, column: 46, scope: !394, inlinedAt: !283)
!789 = !DILocation(line: 356, column: 51, scope: !394, inlinedAt: !283)
!790 = !DILocation(line: 356, column: 6, scope: !279, inlinedAt: !283)
!791 = !DILocation(line: 357, column: 3, scope: !394, inlinedAt: !283)
!792 = !DILocation(line: 358, column: 6, scope: !402, inlinedAt: !283)
!793 = !DILocation(line: 358, column: 11, scope: !402, inlinedAt: !283)
!794 = !DILocation(line: 358, column: 6, scope: !279, inlinedAt: !283)
!795 = !DILocation(line: 358, column: 26, scope: !402, inlinedAt: !283)
!796 = !DILocation(line: 359, column: 6, scope: !407, inlinedAt: !283)
!797 = !DILocation(line: 359, column: 11, scope: !407, inlinedAt: !283)
!798 = !DILocation(line: 359, column: 6, scope: !279, inlinedAt: !283)
!799 = !DILocation(line: 359, column: 26, scope: !407, inlinedAt: !283)
!800 = !DILocation(line: 360, column: 6, scope: !412, inlinedAt: !283)
!801 = !DILocation(line: 360, column: 11, scope: !412, inlinedAt: !283)
!802 = !DILocation(line: 360, column: 6, scope: !279, inlinedAt: !283)
!803 = !DILocation(line: 360, column: 26, scope: !412, inlinedAt: !283)
!804 = !DILocation(line: 361, column: 6, scope: !417, inlinedAt: !283)
!805 = !DILocation(line: 361, column: 11, scope: !417, inlinedAt: !283)
!806 = !DILocation(line: 361, column: 6, scope: !279, inlinedAt: !283)
!807 = !DILocation(line: 361, column: 26, scope: !417, inlinedAt: !283)
!808 = !DILocation(line: 362, column: 6, scope: !422, inlinedAt: !283)
!809 = !DILocation(line: 362, column: 11, scope: !422, inlinedAt: !283)
!810 = !DILocation(line: 362, column: 6, scope: !279, inlinedAt: !283)
!811 = !DILocation(line: 362, column: 26, scope: !422, inlinedAt: !283)
!812 = !DILocation(line: 363, column: 6, scope: !427, inlinedAt: !283)
!813 = !DILocation(line: 363, column: 11, scope: !427, inlinedAt: !283)
!814 = !DILocation(line: 363, column: 6, scope: !279, inlinedAt: !283)
!815 = !DILocation(line: 363, column: 26, scope: !427, inlinedAt: !283)
!816 = !DILocation(line: 364, column: 6, scope: !432, inlinedAt: !283)
!817 = !DILocation(line: 364, column: 11, scope: !432, inlinedAt: !283)
!818 = !DILocation(line: 364, column: 6, scope: !279, inlinedAt: !283)
!819 = !DILocation(line: 364, column: 26, scope: !432, inlinedAt: !283)
!820 = !DILocation(line: 365, column: 6, scope: !437, inlinedAt: !283)
!821 = !DILocation(line: 365, column: 11, scope: !437, inlinedAt: !283)
!822 = !DILocation(line: 365, column: 6, scope: !279, inlinedAt: !283)
!823 = !DILocation(line: 365, column: 26, scope: !437, inlinedAt: !283)
!824 = !DILocation(line: 366, column: 6, scope: !442, inlinedAt: !283)
!825 = !DILocation(line: 366, column: 11, scope: !442, inlinedAt: !283)
!826 = !DILocation(line: 366, column: 6, scope: !279, inlinedAt: !283)
!827 = !DILocation(line: 366, column: 26, scope: !442, inlinedAt: !283)
!828 = !DILocation(line: 367, column: 6, scope: !447, inlinedAt: !283)
!829 = !DILocation(line: 367, column: 11, scope: !447, inlinedAt: !283)
!830 = !DILocation(line: 367, column: 6, scope: !279, inlinedAt: !283)
!831 = !DILocation(line: 367, column: 26, scope: !447, inlinedAt: !283)
!832 = !DILocation(line: 368, column: 6, scope: !452, inlinedAt: !283)
!833 = !DILocation(line: 368, column: 11, scope: !452, inlinedAt: !283)
!834 = !DILocation(line: 368, column: 6, scope: !279, inlinedAt: !283)
!835 = !DILocation(line: 368, column: 26, scope: !452, inlinedAt: !283)
!836 = !DILocation(line: 369, column: 6, scope: !457, inlinedAt: !283)
!837 = !DILocation(line: 369, column: 11, scope: !457, inlinedAt: !283)
!838 = !DILocation(line: 369, column: 6, scope: !279, inlinedAt: !283)
!839 = !DILocation(line: 369, column: 26, scope: !457, inlinedAt: !283)
!840 = !DILocation(line: 370, column: 6, scope: !462, inlinedAt: !283)
!841 = !DILocation(line: 370, column: 11, scope: !462, inlinedAt: !283)
!842 = !DILocation(line: 370, column: 6, scope: !279, inlinedAt: !283)
!843 = !DILocation(line: 370, column: 26, scope: !462, inlinedAt: !283)
!844 = !DILocation(line: 371, column: 6, scope: !467, inlinedAt: !283)
!845 = !DILocation(line: 371, column: 11, scope: !467, inlinedAt: !283)
!846 = !DILocation(line: 371, column: 6, scope: !279, inlinedAt: !283)
!847 = !DILocation(line: 371, column: 26, scope: !467, inlinedAt: !283)
!848 = !DILocation(line: 372, column: 6, scope: !472, inlinedAt: !283)
!849 = !DILocation(line: 372, column: 11, scope: !472, inlinedAt: !283)
!850 = !DILocation(line: 372, column: 6, scope: !279, inlinedAt: !283)
!851 = !DILocation(line: 372, column: 26, scope: !472, inlinedAt: !283)
!852 = !DILocation(line: 373, column: 6, scope: !477, inlinedAt: !283)
!853 = !DILocation(line: 373, column: 11, scope: !477, inlinedAt: !283)
!854 = !DILocation(line: 373, column: 6, scope: !279, inlinedAt: !283)
!855 = !DILocation(line: 373, column: 26, scope: !477, inlinedAt: !283)
!856 = !DILocation(line: 374, column: 6, scope: !482, inlinedAt: !283)
!857 = !DILocation(line: 374, column: 11, scope: !482, inlinedAt: !283)
!858 = !DILocation(line: 374, column: 6, scope: !279, inlinedAt: !283)
!859 = !DILocation(line: 374, column: 26, scope: !482, inlinedAt: !283)
!860 = !DILocation(line: 375, column: 6, scope: !487, inlinedAt: !283)
!861 = !DILocation(line: 375, column: 11, scope: !487, inlinedAt: !283)
!862 = !DILocation(line: 375, column: 6, scope: !279, inlinedAt: !283)
!863 = !DILocation(line: 375, column: 27, scope: !487, inlinedAt: !283)
!864 = !DILocation(line: 376, column: 6, scope: !492, inlinedAt: !283)
!865 = !DILocation(line: 376, column: 11, scope: !492, inlinedAt: !283)
!866 = !DILocation(line: 376, column: 6, scope: !279, inlinedAt: !283)
!867 = !DILocation(line: 376, column: 32, scope: !492, inlinedAt: !283)
!868 = !DILocation(line: 377, column: 6, scope: !497, inlinedAt: !283)
!869 = !DILocation(line: 377, column: 11, scope: !497, inlinedAt: !283)
!870 = !DILocation(line: 377, column: 6, scope: !279, inlinedAt: !283)
!871 = !DILocation(line: 377, column: 32, scope: !497, inlinedAt: !283)
!872 = !DILocation(line: 378, column: 6, scope: !502, inlinedAt: !283)
!873 = !DILocation(line: 378, column: 11, scope: !502, inlinedAt: !283)
!874 = !DILocation(line: 378, column: 6, scope: !279, inlinedAt: !283)
!875 = !DILocation(line: 378, column: 32, scope: !502, inlinedAt: !283)
!876 = !DILocation(line: 379, column: 6, scope: !507, inlinedAt: !283)
!877 = !DILocation(line: 379, column: 11, scope: !507, inlinedAt: !283)
!878 = !DILocation(line: 379, column: 6, scope: !279, inlinedAt: !283)
!879 = !DILocation(line: 379, column: 33, scope: !507, inlinedAt: !283)
!880 = !DILocation(line: 380, column: 6, scope: !512, inlinedAt: !283)
!881 = !DILocation(line: 380, column: 11, scope: !512, inlinedAt: !283)
!882 = !DILocation(line: 380, column: 6, scope: !279, inlinedAt: !283)
!883 = !DILocation(line: 380, column: 33, scope: !512, inlinedAt: !283)
!884 = !DILocation(line: 381, column: 6, scope: !517, inlinedAt: !283)
!885 = !DILocation(line: 381, column: 11, scope: !517, inlinedAt: !283)
!886 = !DILocation(line: 381, column: 6, scope: !279, inlinedAt: !283)
!887 = !DILocation(line: 381, column: 33, scope: !517, inlinedAt: !283)
!888 = !DILocation(line: 382, column: 2, scope: !522, inlinedAt: !283)
!889 = !DILocation(line: 382, column: 2, scope: !526, inlinedAt: !283)
!890 = !DILocation(line: 382, column: 2, scope: !527, inlinedAt: !283)
!891 = !DILocation(line: 386, column: 1, scope: !279, inlinedAt: !283)
!892 = !DILocation(line: 547, column: 9, scope: !260, inlinedAt: !265)
!893 = !DILocation(line: 549, column: 8, scope: !533, inlinedAt: !265)
!894 = !DILocation(line: 549, column: 7, scope: !260, inlinedAt: !265)
!895 = !DILocation(line: 550, column: 4, scope: !533, inlinedAt: !265)
!896 = !DILocation(line: 553, column: 33, scope: !260, inlinedAt: !265)
!897 = !DILocation(line: 325, column: 6, scope: !538, inlinedAt: !277)
!898 = !DILocation(line: 325, column: 6, scope: !273, inlinedAt: !277)
!899 = !DILocation(line: 326, column: 3, scope: !538, inlinedAt: !277)
!900 = !DILocation(line: 332, column: 9, scope: !273, inlinedAt: !277)
!901 = !DILocation(line: 332, column: 15, scope: !273, inlinedAt: !277)
!902 = !DILocation(line: 332, column: 2, scope: !273, inlinedAt: !277)
!903 = !DILocation(line: 336, column: 1, scope: !273, inlinedAt: !277)
!904 = !DILocation(line: 553, column: 5, scope: !260, inlinedAt: !265)
!905 = !DILocation(line: 553, column: 41, scope: !260, inlinedAt: !265)
!906 = !DILocation(line: 554, column: 5, scope: !260, inlinedAt: !265)
!907 = !DILocation(line: 554, column: 12, scope: !260, inlinedAt: !265)
!908 = !DILocation(line: 448, column: 31, scope: !248, inlinedAt: !259)
!909 = !DILocation(line: 448, column: 34, scope: !248, inlinedAt: !259)
!910 = !DILocation(line: 448, column: 14, scope: !248, inlinedAt: !259)
!911 = !DILocation(line: 450, column: 22, scope: !248, inlinedAt: !259)
!912 = !DILocation(line: 450, column: 25, scope: !248, inlinedAt: !259)
!913 = !DILocation(line: 450, column: 30, scope: !248, inlinedAt: !259)
!914 = !DILocation(line: 450, column: 36, scope: !248, inlinedAt: !259)
!915 = !DILocation(line: 450, column: 8, scope: !248, inlinedAt: !259)
!916 = !DILocation(line: 450, column: 6, scope: !248, inlinedAt: !259)
!917 = !DILocation(line: 451, column: 9, scope: !248, inlinedAt: !259)
!918 = !DILocation(line: 552, column: 3, scope: !260, inlinedAt: !265)
!919 = !DILocation(line: 557, column: 19, scope: !262, inlinedAt: !265)
!920 = !DILocation(line: 557, column: 25, scope: !262, inlinedAt: !265)
!921 = !DILocation(line: 557, column: 9, scope: !262, inlinedAt: !265)
!922 = !DILocation(line: 557, column: 2, scope: !262, inlinedAt: !265)
!923 = !DILocation(line: 558, column: 1, scope: !262, inlinedAt: !265)
!924 = !DILocation(line: 88, column: 8, scope: !244)
!925 = !DILocation(line: 88, column: 6, scope: !244)
!926 = !DILocation(line: 89, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !244, file: !3, line: 89, column: 6)
!928 = !DILocation(line: 89, column: 6, scope: !244)
!929 = !DILocation(line: 90, column: 9, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !3, line: 89, column: 12)
!931 = !DILocation(line: 90, column: 3, scope: !930)
!932 = !DILocation(line: 91, column: 9, scope: !930)
!933 = !DILocation(line: 91, column: 3, scope: !930)
!934 = !DILocation(line: 92, column: 3, scope: !930)
!935 = !DILocation(line: 95, column: 20, scope: !244)
!936 = !DILocation(line: 95, column: 2, scope: !244)
!937 = !DILocation(line: 97, column: 2, scope: !244)
!938 = !DILocation(line: 97, column: 7, scope: !244)
!939 = !DILocation(line: 97, column: 12, scope: !244)
!940 = !DILocation(line: 98, column: 2, scope: !244)
!941 = !DILocation(line: 98, column: 7, scope: !244)
!942 = !DILocation(line: 98, column: 14, scope: !244)
!943 = !DILocation(line: 98, column: 21, scope: !244)
!944 = !DILocation(line: 99, column: 31, scope: !244)
!945 = !DILocation(line: 99, column: 24, scope: !244)
!946 = !DILocation(line: 99, column: 2, scope: !244)
!947 = !DILocation(line: 99, column: 7, scope: !244)
!948 = !DILocation(line: 99, column: 14, scope: !244)
!949 = !DILocation(line: 99, column: 22, scope: !244)
!950 = !DILocation(line: 100, column: 2, scope: !244)
!951 = !DILocation(line: 100, column: 12, scope: !244)
!952 = !DILocation(line: 100, column: 18, scope: !244)
!953 = !DILocation(line: 101, column: 22, scope: !244)
!954 = !DILocation(line: 101, column: 2, scope: !244)
!955 = !DILocation(line: 101, column: 12, scope: !244)
!956 = !DILocation(line: 101, column: 20, scope: !244)
!957 = !DILocation(line: 103, column: 9, scope: !244)
!958 = !DILocation(line: 103, column: 2, scope: !244)
!959 = !DILabel(scope: !244, name: "out", file: !3, line: 104)
!960 = !DILocation(line: 104, column: 1, scope: !244)
!961 = !DILocation(line: 105, column: 2, scope: !244)
!962 = !DILocation(line: 106, column: 2, scope: !244)
!963 = !DILocation(line: 107, column: 1, scope: !244)
!964 = distinct !DISubprogram(name: "acpi_processor_eval_pdc", scope: !3, file: !3, line: 114, type: !965, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!965 = !DISubroutineType(types: !966)
!966 = !{!46, !26, !90}
!967 = !DILocalVariable(name: "handle", arg: 1, scope: !964, file: !3, line: 114, type: !26)
!968 = !DILocation(line: 114, column: 37, scope: !964)
!969 = !DILocalVariable(name: "pdc_in", arg: 2, scope: !964, file: !3, line: 114, type: !90)
!970 = !DILocation(line: 114, column: 70, scope: !964)
!971 = !DILocalVariable(name: "status", scope: !964, file: !3, line: 116, type: !46)
!972 = !DILocation(line: 116, column: 14, scope: !964)
!973 = !DILocation(line: 118, column: 6, scope: !974)
!974 = distinct !DILexicalBlock(scope: !964, file: !3, line: 118, column: 6)
!975 = !DILocation(line: 118, column: 32, scope: !974)
!976 = !DILocation(line: 118, column: 6, scope: !964)
!977 = !DILocalVariable(name: "obj", scope: !978, file: !3, line: 124, type: !95)
!978 = distinct !DILexicalBlock(scope: !974, file: !3, line: 118, column: 49)
!979 = !DILocation(line: 124, column: 22, scope: !978)
!980 = !DILocalVariable(name: "buffer", scope: !978, file: !3, line: 125, type: !47)
!981 = !DILocation(line: 125, column: 8, scope: !978)
!982 = !DILocation(line: 127, column: 9, scope: !978)
!983 = !DILocation(line: 127, column: 17, scope: !978)
!984 = !DILocation(line: 127, column: 7, scope: !978)
!985 = !DILocation(line: 128, column: 20, scope: !978)
!986 = !DILocation(line: 128, column: 25, scope: !978)
!987 = !DILocation(line: 128, column: 32, scope: !978)
!988 = !DILocation(line: 128, column: 12, scope: !978)
!989 = !DILocation(line: 128, column: 10, scope: !978)
!990 = !DILocation(line: 129, column: 3, scope: !978)
!991 = !DILocation(line: 129, column: 13, scope: !978)
!992 = !DILocation(line: 131, column: 2, scope: !978)
!993 = !DILocation(line: 132, column: 32, scope: !964)
!994 = !DILocation(line: 132, column: 48, scope: !964)
!995 = !DILocation(line: 132, column: 11, scope: !964)
!996 = !DILocation(line: 132, column: 9, scope: !964)
!997 = !DILocation(line: 134, column: 6, scope: !998)
!998 = distinct !DILexicalBlock(scope: !964, file: !3, line: 134, column: 6)
!999 = !DILocation(line: 134, column: 6, scope: !964)
!1000 = !DILocation(line: 138, column: 9, scope: !964)
!1001 = !DILocation(line: 138, column: 2, scope: !964)
!1002 = distinct !DISubprogram(name: "acpi_early_processor_set_pdc", scope: !3, file: !3, line: 196, type: !1003, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null}
!1005 = !DILocation(line: 198, column: 2, scope: !1002)
!1006 = !DILocation(line: 200, column: 2, scope: !1002)
!1007 = !DILocation(line: 203, column: 2, scope: !1002)
!1008 = !DILocation(line: 204, column: 1, scope: !1002)
!1009 = distinct !DISubprogram(name: "processor_dmi_check", scope: !3, file: !3, line: 187, type: !1003, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1010 = !DILocation(line: 193, column: 2, scope: !1009)
!1011 = !DILocation(line: 194, column: 1, scope: !1009)
!1012 = distinct !DISubprogram(name: "early_init_pdc", scope: !3, file: !3, line: 160, type: !1013, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!46, !26, !35, !28, !1015}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1016 = !DILocalVariable(name: "handle", arg: 1, scope: !1012, file: !3, line: 160, type: !26)
!1017 = !DILocation(line: 160, column: 28, scope: !1012)
!1018 = !DILocalVariable(name: "lvl", arg: 2, scope: !1012, file: !3, line: 160, type: !35)
!1019 = !DILocation(line: 160, column: 40, scope: !1012)
!1020 = !DILocalVariable(name: "context", arg: 3, scope: !1012, file: !3, line: 160, type: !28)
!1021 = !DILocation(line: 160, column: 51, scope: !1012)
!1022 = !DILocalVariable(name: "rv", arg: 4, scope: !1012, file: !3, line: 160, type: !1015)
!1023 = !DILocation(line: 160, column: 67, scope: !1012)
!1024 = !DILocation(line: 162, column: 35, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 162, column: 6)
!1026 = !DILocation(line: 162, column: 6, scope: !1025)
!1027 = !DILocation(line: 162, column: 43, scope: !1025)
!1028 = !DILocation(line: 162, column: 6, scope: !1012)
!1029 = !DILocation(line: 163, column: 3, scope: !1025)
!1030 = !DILocation(line: 165, column: 25, scope: !1012)
!1031 = !DILocation(line: 165, column: 2, scope: !1012)
!1032 = !DILocation(line: 166, column: 2, scope: !1012)
!1033 = !DILocation(line: 167, column: 1, scope: !1012)
!1034 = distinct !DISubprogram(name: "acpi_set_pdc_bits", scope: !3, file: !3, line: 59, type: !1035, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !47}
!1037 = !DILocalVariable(name: "buf", arg: 1, scope: !1034, file: !3, line: 59, type: !47)
!1038 = !DILocation(line: 59, column: 36, scope: !1034)
!1039 = !DILocation(line: 61, column: 2, scope: !1034)
!1040 = !DILocation(line: 61, column: 9, scope: !1034)
!1041 = !DILocation(line: 62, column: 2, scope: !1034)
!1042 = !DILocation(line: 62, column: 9, scope: !1034)
!1043 = !DILocation(line: 65, column: 2, scope: !1034)
!1044 = !DILocation(line: 65, column: 9, scope: !1034)
!1045 = !DILocation(line: 68, column: 25, scope: !1034)
!1046 = !DILocation(line: 68, column: 2, scope: !1034)
!1047 = !DILocation(line: 69, column: 1, scope: !1034)
!1048 = distinct !DISubprogram(name: "get_order", scope: !1049, file: !1049, line: 29, type: !1050, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1049 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!43, !45}
!1052 = !DILocalVariable(name: "x", arg: 1, scope: !1053, file: !1054, line: 366, type: !32)
!1053 = distinct !DISubprogram(name: "fls64", scope: !1054, file: !1054, line: 366, type: !1055, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1054 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!43, !32}
!1057 = !DILocation(line: 366, column: 40, scope: !1053, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 46, column: 9, scope: !1048)
!1059 = !DILocalVariable(name: "bitpos", scope: !1053, file: !1054, line: 368, type: !43)
!1060 = !DILocation(line: 368, column: 6, scope: !1053, inlinedAt: !1058)
!1061 = !DILocalVariable(name: "size", arg: 1, scope: !1048, file: !1049, line: 29, type: !45)
!1062 = !DILocation(line: 29, column: 63, scope: !1048)
!1063 = !DILocation(line: 31, column: 27, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1048, file: !1049, line: 31, column: 6)
!1065 = !DILocation(line: 31, column: 6, scope: !1064)
!1066 = !DILocation(line: 31, column: 6, scope: !1048)
!1067 = !DILocation(line: 32, column: 8, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !1049, line: 32, column: 7)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !1049, line: 31, column: 34)
!1070 = !DILocation(line: 32, column: 7, scope: !1069)
!1071 = !DILocation(line: 33, column: 4, scope: !1068)
!1072 = !DILocation(line: 35, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !1049, line: 35, column: 7)
!1074 = !DILocation(line: 35, column: 12, scope: !1073)
!1075 = !DILocation(line: 35, column: 7, scope: !1069)
!1076 = !DILocation(line: 36, column: 4, scope: !1073)
!1077 = !DILocation(line: 38, column: 10, scope: !1069)
!1078 = !DILocation(line: 38, column: 28, scope: !1069)
!1079 = !DILocation(line: 38, column: 41, scope: !1069)
!1080 = !DILocation(line: 38, column: 3, scope: !1069)
!1081 = !DILocation(line: 41, column: 6, scope: !1048)
!1082 = !DILocation(line: 42, column: 7, scope: !1048)
!1083 = !DILocation(line: 46, column: 15, scope: !1048)
!1084 = !DILocation(line: 374, column: 2, scope: !1053, inlinedAt: !1058)
!1085 = !DILocation(line: 376, column: 14, scope: !1053, inlinedAt: !1058)
!1086 = !{i32 281184}
!1087 = !DILocation(line: 377, column: 9, scope: !1053, inlinedAt: !1058)
!1088 = !DILocation(line: 377, column: 16, scope: !1053, inlinedAt: !1058)
!1089 = !DILocation(line: 46, column: 2, scope: !1048)
!1090 = !DILocation(line: 48, column: 1, scope: !1048)
!1091 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1092, file: !1092, line: 30, type: !1093, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1092 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!43, !30}
!1095 = !DILocation(line: 366, column: 40, scope: !1053, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 32, column: 9, scope: !1091)
!1097 = !DILocation(line: 368, column: 6, scope: !1053, inlinedAt: !1096)
!1098 = !DILocalVariable(name: "n", arg: 1, scope: !1091, file: !1092, line: 30, type: !30)
!1099 = !DILocation(line: 30, column: 21, scope: !1091)
!1100 = !DILocation(line: 32, column: 15, scope: !1091)
!1101 = !DILocation(line: 374, column: 2, scope: !1053, inlinedAt: !1096)
!1102 = !DILocation(line: 376, column: 14, scope: !1053, inlinedAt: !1096)
!1103 = !DILocation(line: 377, column: 9, scope: !1053, inlinedAt: !1096)
!1104 = !DILocation(line: 377, column: 16, scope: !1053, inlinedAt: !1096)
!1105 = !DILocation(line: 32, column: 18, scope: !1091)
!1106 = !DILocation(line: 32, column: 2, scope: !1091)
!1107 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1108, file: !1108, line: 137, type: !1109, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1108 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!28, !251, !1111, !254, !37}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1113 = !DILocalVariable(name: "s", arg: 1, scope: !1107, file: !1108, line: 137, type: !251)
!1114 = !DILocation(line: 137, column: 54, scope: !1107)
!1115 = !DILocalVariable(name: "object", arg: 2, scope: !1107, file: !1108, line: 137, type: !1111)
!1116 = !DILocation(line: 137, column: 69, scope: !1107)
!1117 = !DILocalVariable(name: "size", arg: 3, scope: !1107, file: !1108, line: 138, type: !254)
!1118 = !DILocation(line: 138, column: 12, scope: !1107)
!1119 = !DILocalVariable(name: "flags", arg: 4, scope: !1107, file: !1108, line: 138, type: !37)
!1120 = !DILocation(line: 138, column: 24, scope: !1107)
!1121 = !DILocation(line: 140, column: 17, scope: !1107)
!1122 = !DILocation(line: 140, column: 2, scope: !1107)
!1123 = distinct !DISubprogram(name: "arch_acpi_set_pdc_bits", scope: !171, file: !171, line: 95, type: !1035, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1124 = !DILocalVariable(name: "buf", arg: 1, scope: !1123, file: !171, line: 95, type: !47)
!1125 = !DILocation(line: 95, column: 48, scope: !1123)
!1126 = !DILocalVariable(name: "c", scope: !1123, file: !171, line: 97, type: !177)
!1127 = !DILocation(line: 97, column: 22, scope: !1123)
!1128 = !DILocation(line: 99, column: 2, scope: !1123)
!1129 = !DILocation(line: 99, column: 9, scope: !1123)
!1130 = !DILocation(line: 101, column: 6, scope: !1123)
!1131 = !DILocation(line: 101, column: 6, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1123, file: !171, line: 101, column: 6)
!1133 = !DILocation(line: 102, column: 3, scope: !1132)
!1134 = !DILocation(line: 102, column: 10, scope: !1132)
!1135 = !DILocation(line: 104, column: 6, scope: !1123)
!1136 = !DILocation(line: 104, column: 6, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1123, file: !171, line: 104, column: 6)
!1138 = !DILocation(line: 105, column: 3, scope: !1137)
!1139 = !DILocation(line: 105, column: 10, scope: !1137)
!1140 = !DILocation(line: 110, column: 6, scope: !1123)
!1141 = !DILocation(line: 110, column: 7, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1123, file: !171, line: 110, column: 6)
!1143 = !DILocation(line: 111, column: 3, scope: !1142)
!1144 = !DILocation(line: 111, column: 10, scope: !1142)
!1145 = !DILocation(line: 112, column: 1, scope: !1123)
!1146 = distinct !DISubprogram(name: "test_bit", scope: !1147, file: !1147, line: 132, type: !1148, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1147 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!174, !1150, !1151}
!1150 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!1154 = !DILocalVariable(name: "nr", arg: 1, scope: !1155, file: !1054, line: 210, type: !1150)
!1155 = distinct !DISubprogram(name: "variable_test_bit", scope: !1054, file: !1054, line: 210, type: !1148, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1156 = !DILocation(line: 210, column: 52, scope: !1155, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 135, column: 9, scope: !1146)
!1158 = !DILocalVariable(name: "addr", arg: 2, scope: !1155, file: !1054, line: 210, type: !1151)
!1159 = !DILocation(line: 210, column: 86, scope: !1155, inlinedAt: !1157)
!1160 = !DILocalVariable(name: "oldbit", scope: !1155, file: !1054, line: 212, type: !174)
!1161 = !DILocation(line: 212, column: 7, scope: !1155, inlinedAt: !1157)
!1162 = !DILocalVariable(name: "nr", arg: 1, scope: !1163, file: !1054, line: 204, type: !1150)
!1163 = distinct !DISubprogram(name: "constant_test_bit", scope: !1054, file: !1054, line: 204, type: !1148, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1164 = !DILocation(line: 204, column: 52, scope: !1163, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 135, column: 9, scope: !1146)
!1166 = !DILocalVariable(name: "addr", arg: 2, scope: !1163, file: !1054, line: 204, type: !1151)
!1167 = !DILocation(line: 204, column: 86, scope: !1163, inlinedAt: !1165)
!1168 = !DILocalVariable(name: "v", arg: 1, scope: !1169, file: !1170, line: 69, type: !1173)
!1169 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1170, file: !1170, line: 69, type: !1171, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1170 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1173, !254}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1176 = !DILocation(line: 69, column: 73, scope: !1169, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 134, column: 2, scope: !1146)
!1178 = !DILocalVariable(name: "size", arg: 2, scope: !1169, file: !1170, line: 69, type: !254)
!1179 = !DILocation(line: 69, column: 83, scope: !1169, inlinedAt: !1177)
!1180 = !DILocalVariable(name: "nr", arg: 1, scope: !1146, file: !1147, line: 132, type: !1150)
!1181 = !DILocation(line: 132, column: 34, scope: !1146)
!1182 = !DILocalVariable(name: "addr", arg: 2, scope: !1146, file: !1147, line: 132, type: !1151)
!1183 = !DILocation(line: 132, column: 68, scope: !1146)
!1184 = !DILocation(line: 134, column: 25, scope: !1146)
!1185 = !DILocation(line: 134, column: 32, scope: !1146)
!1186 = !DILocation(line: 134, column: 30, scope: !1146)
!1187 = !DILocation(line: 71, column: 19, scope: !1169, inlinedAt: !1177)
!1188 = !DILocation(line: 71, column: 22, scope: !1169, inlinedAt: !1177)
!1189 = !DILocation(line: 71, column: 2, scope: !1169, inlinedAt: !1177)
!1190 = !DILocation(line: 72, column: 2, scope: !1169, inlinedAt: !1177)
!1191 = !DILocation(line: 135, column: 9, scope: !1146)
!1192 = !DILocation(line: 206, column: 19, scope: !1163, inlinedAt: !1165)
!1193 = !DILocation(line: 206, column: 22, scope: !1163, inlinedAt: !1165)
!1194 = !DILocation(line: 206, column: 15, scope: !1163, inlinedAt: !1165)
!1195 = !DILocation(line: 207, column: 4, scope: !1163, inlinedAt: !1165)
!1196 = !DILocation(line: 207, column: 9, scope: !1163, inlinedAt: !1165)
!1197 = !DILocation(line: 207, column: 12, scope: !1163, inlinedAt: !1165)
!1198 = !DILocation(line: 206, column: 44, scope: !1163, inlinedAt: !1165)
!1199 = !DILocation(line: 207, column: 37, scope: !1163, inlinedAt: !1165)
!1200 = !DILocation(line: 217, column: 33, scope: !1155, inlinedAt: !1157)
!1201 = !DILocation(line: 217, column: 46, scope: !1155, inlinedAt: !1157)
!1202 = !DILocation(line: 214, column: 2, scope: !1155, inlinedAt: !1157)
!1203 = !{i32 -2147161789, i32 -2147161729}
!1204 = !DILocation(line: 219, column: 9, scope: !1155, inlinedAt: !1157)
!1205 = !DILocation(line: 135, column: 2, scope: !1146)
!1206 = distinct !DISubprogram(name: "kasan_check_read", scope: !1207, file: !1207, line: 34, type: !1208, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1207 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!174, !1173, !7}
!1210 = !DILocalVariable(name: "p", arg: 1, scope: !1206, file: !1207, line: 34, type: !1173)
!1211 = !DILocation(line: 34, column: 58, scope: !1206)
!1212 = !DILocalVariable(name: "size", arg: 2, scope: !1206, file: !1207, line: 34, type: !7)
!1213 = !DILocation(line: 34, column: 74, scope: !1206)
!1214 = !DILocation(line: 36, column: 2, scope: !1206)
!1215 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1216, file: !1216, line: 178, type: !1217, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1216 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !1173, !254, !43}
!1219 = !DILocalVariable(name: "ptr", arg: 1, scope: !1215, file: !1216, line: 178, type: !1173)
!1220 = !DILocation(line: 178, column: 60, scope: !1215)
!1221 = !DILocalVariable(name: "size", arg: 2, scope: !1215, file: !1216, line: 178, type: !254)
!1222 = !DILocation(line: 178, column: 72, scope: !1215)
!1223 = !DILocalVariable(name: "type", arg: 3, scope: !1215, file: !1216, line: 179, type: !43)
!1224 = !DILocation(line: 179, column: 15, scope: !1215)
!1225 = !DILocation(line: 179, column: 23, scope: !1215)
!1226 = distinct !DISubprogram(name: "set_no_mwait", scope: !3, file: !3, line: 169, type: !56, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1227 = !DILocalVariable(name: "id", arg: 1, scope: !1226, file: !3, line: 169, type: !58)
!1228 = !DILocation(line: 169, column: 60, scope: !1226)
!1229 = !DILocation(line: 171, column: 2, scope: !1226)
!1230 = !DILocation(line: 173, column: 28, scope: !1226)
!1231 = !DILocation(line: 174, column: 2, scope: !1226)
!1232 = distinct !DISubprogram(name: "processor_physically_present", scope: !3, file: !3, line: 22, type: !1233, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!174, !26}
!1235 = !DILocalVariable(name: "handle", arg: 1, scope: !1232, file: !3, line: 22, type: !26)
!1236 = !DILocation(line: 22, column: 61, scope: !1232)
!1237 = !DILocalVariable(name: "cpuid", scope: !1232, file: !3, line: 24, type: !43)
!1238 = !DILocation(line: 24, column: 6, scope: !1232)
!1239 = !DILocalVariable(name: "type", scope: !1232, file: !3, line: 24, type: !43)
!1240 = !DILocation(line: 24, column: 13, scope: !1232)
!1241 = !DILocalVariable(name: "acpi_id", scope: !1232, file: !3, line: 25, type: !35)
!1242 = !DILocation(line: 25, column: 6, scope: !1232)
!1243 = !DILocalVariable(name: "status", scope: !1232, file: !3, line: 26, type: !46)
!1244 = !DILocation(line: 26, column: 14, scope: !1232)
!1245 = !DILocalVariable(name: "acpi_type", scope: !1232, file: !3, line: 27, type: !99)
!1246 = !DILocation(line: 27, column: 19, scope: !1232)
!1247 = !DILocalVariable(name: "tmp", scope: !1232, file: !3, line: 28, type: !34)
!1248 = !DILocation(line: 28, column: 21, scope: !1232)
!1249 = !DILocalVariable(name: "object", scope: !1232, file: !3, line: 29, type: !96)
!1250 = !DILocation(line: 29, column: 20, scope: !1232)
!1251 = !DILocalVariable(name: "buffer", scope: !1232, file: !3, line: 30, type: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !27, line: 969, size: 128, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1252, file: !27, line: 970, baseType: !29, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1252, file: !27, line: 971, baseType: !28, size: 64, offset: 64)
!1256 = !DILocation(line: 30, column: 21, scope: !1232)
!1257 = !DILocation(line: 30, column: 30, scope: !1232)
!1258 = !DILocation(line: 30, column: 59, scope: !1232)
!1259 = !DILocation(line: 32, column: 25, scope: !1232)
!1260 = !DILocation(line: 32, column: 11, scope: !1232)
!1261 = !DILocation(line: 32, column: 9, scope: !1232)
!1262 = !DILocation(line: 33, column: 6, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 33, column: 6)
!1264 = !DILocation(line: 33, column: 6, scope: !1232)
!1265 = !DILocation(line: 34, column: 3, scope: !1263)
!1266 = !DILocation(line: 36, column: 10, scope: !1232)
!1267 = !DILocation(line: 36, column: 2, scope: !1232)
!1268 = !DILocation(line: 38, column: 33, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 36, column: 21)
!1270 = !DILocation(line: 38, column: 12, scope: !1269)
!1271 = !DILocation(line: 38, column: 10, scope: !1269)
!1272 = !DILocation(line: 39, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 39, column: 7)
!1274 = !DILocation(line: 39, column: 7, scope: !1269)
!1275 = !DILocation(line: 40, column: 4, scope: !1273)
!1276 = !DILocation(line: 41, column: 20, scope: !1269)
!1277 = !DILocation(line: 41, column: 30, scope: !1269)
!1278 = !DILocation(line: 41, column: 11, scope: !1269)
!1279 = !DILocation(line: 42, column: 3, scope: !1269)
!1280 = !DILocation(line: 44, column: 34, scope: !1269)
!1281 = !DILocation(line: 44, column: 12, scope: !1269)
!1282 = !DILocation(line: 44, column: 10, scope: !1269)
!1283 = !DILocation(line: 45, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 45, column: 7)
!1285 = !DILocation(line: 45, column: 7, scope: !1269)
!1286 = !DILocation(line: 46, column: 4, scope: !1284)
!1287 = !DILocation(line: 47, column: 13, scope: !1269)
!1288 = !DILocation(line: 47, column: 11, scope: !1269)
!1289 = !DILocation(line: 48, column: 3, scope: !1269)
!1290 = !DILocation(line: 50, column: 3, scope: !1269)
!1291 = !DILocation(line: 53, column: 10, scope: !1232)
!1292 = !DILocation(line: 53, column: 20, scope: !1232)
!1293 = !DILocation(line: 53, column: 9, scope: !1232)
!1294 = !DILocation(line: 53, column: 7, scope: !1232)
!1295 = !DILocation(line: 54, column: 25, scope: !1232)
!1296 = !DILocation(line: 54, column: 33, scope: !1232)
!1297 = !DILocation(line: 54, column: 39, scope: !1232)
!1298 = !DILocation(line: 54, column: 10, scope: !1232)
!1299 = !DILocation(line: 54, column: 8, scope: !1232)
!1300 = !DILocation(line: 56, column: 32, scope: !1232)
!1301 = !DILocation(line: 56, column: 10, scope: !1232)
!1302 = !DILocation(line: 56, column: 9, scope: !1232)
!1303 = !DILocation(line: 56, column: 2, scope: !1232)
!1304 = !DILocation(line: 57, column: 1, scope: !1232)
!1305 = distinct !DISubprogram(name: "invalid_logical_cpuid", scope: !1306, file: !1306, line: 270, type: !1307, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !86)
!1306 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!174, !35}
!1309 = !DILocalVariable(name: "cpuid", arg: 1, scope: !1305, file: !1306, line: 270, type: !35)
!1310 = !DILocation(line: 270, column: 46, scope: !1305)
!1311 = !DILocation(line: 272, column: 14, scope: !1305)
!1312 = !DILocation(line: 272, column: 20, scope: !1305)
!1313 = !DILocation(line: 272, column: 2, scope: !1305)
