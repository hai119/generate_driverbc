; ModuleID = '../bcout/drivers/clk/clk-composite.llvm.bc'
source_filename = "drivers/clk/clk-composite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.device = type opaque
%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
%struct.clk_ops = type { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.clk_duty = type { i32, i32 }
%struct.dentry = type opaque
%struct.clk_composite = type { %struct.clk_hw, %struct.clk_ops, %struct.clk_hw*, %struct.clk_hw*, %struct.clk_hw*, %struct.clk_ops*, %struct.clk_ops*, %struct.clk_ops* }

@.str = private unnamed_addr constant [39 x i8] c"%s: missing round_rate op is required\0A\00", align 1
@__func__.__clk_hw_register_composite = private unnamed_addr constant [28 x i8] c"__clk_hw_register_composite\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"drivers/clk/clk-composite.c\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"\013clk: clk_composite_determine_rate function called, but no mux or rate callback set!\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_hw* @clk_hw_register_composite(%struct.device* %dev, i8* %name, i8** %parent_names, i32 %num_parents, %struct.clk_hw* %mux_hw, %struct.clk_ops* %mux_ops, %struct.clk_hw* %rate_hw, %struct.clk_ops* %rate_ops, %struct.clk_hw* %gate_hw, %struct.clk_ops* %gate_ops, i64 %flags) #0 !dbg !159 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_names.addr = alloca i8**, align 8
  %num_parents.addr = alloca i32, align 4
  %mux_hw.addr = alloca %struct.clk_hw*, align 8
  %mux_ops.addr = alloca %struct.clk_ops*, align 8
  %rate_hw.addr = alloca %struct.clk_hw*, align 8
  %rate_ops.addr = alloca %struct.clk_ops*, align 8
  %gate_hw.addr = alloca %struct.clk_hw*, align 8
  %gate_ops.addr = alloca %struct.clk_ops*, align 8
  %flags.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !166, metadata !DIExpression()), !dbg !167
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !168, metadata !DIExpression()), !dbg !169
  store i8** %parent_names, i8*** %parent_names.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %parent_names.addr, metadata !170, metadata !DIExpression()), !dbg !171
  store i32 %num_parents, i32* %num_parents.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_parents.addr, metadata !172, metadata !DIExpression()), !dbg !173
  store %struct.clk_hw* %mux_hw, %struct.clk_hw** %mux_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %mux_hw.addr, metadata !174, metadata !DIExpression()), !dbg !175
  store %struct.clk_ops* %mux_ops, %struct.clk_ops** %mux_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %mux_ops.addr, metadata !176, metadata !DIExpression()), !dbg !177
  store %struct.clk_hw* %rate_hw, %struct.clk_hw** %rate_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %rate_hw.addr, metadata !178, metadata !DIExpression()), !dbg !179
  store %struct.clk_ops* %rate_ops, %struct.clk_ops** %rate_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %rate_ops.addr, metadata !180, metadata !DIExpression()), !dbg !181
  store %struct.clk_hw* %gate_hw, %struct.clk_hw** %gate_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %gate_hw.addr, metadata !182, metadata !DIExpression()), !dbg !183
  store %struct.clk_ops* %gate_ops, %struct.clk_ops** %gate_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %gate_ops.addr, metadata !184, metadata !DIExpression()), !dbg !185
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !186, metadata !DIExpression()), !dbg !187
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !188
  %1 = load i8*, i8** %name.addr, align 8, !dbg !189
  %2 = load i8**, i8*** %parent_names.addr, align 8, !dbg !190
  %3 = load i32, i32* %num_parents.addr, align 4, !dbg !191
  %4 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw.addr, align 8, !dbg !192
  %5 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops.addr, align 8, !dbg !193
  %6 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw.addr, align 8, !dbg !194
  %7 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !195
  %8 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw.addr, align 8, !dbg !196
  %9 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops.addr, align 8, !dbg !197
  %10 = load i64, i64* %flags.addr, align 8, !dbg !198
  %call = call %struct.clk_hw* @__clk_hw_register_composite(%struct.device* %0, i8* %1, i8** %2, %struct.clk_parent_data* null, i32 %3, %struct.clk_hw* %4, %struct.clk_ops* %5, %struct.clk_hw* %6, %struct.clk_ops* %7, %struct.clk_hw* %8, %struct.clk_ops* %9, i64 %10) #8, !dbg !199
  ret %struct.clk_hw* %call, !dbg !200
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_hw* @__clk_hw_register_composite(%struct.device* %dev, i8* %name, i8** %parent_names, %struct.clk_parent_data* %pdata, i32 %num_parents, %struct.clk_hw* %mux_hw, %struct.clk_ops* %mux_ops, %struct.clk_hw* %rate_hw, %struct.clk_ops* %rate_ops, %struct.clk_hw* %gate_hw, %struct.clk_ops* %gate_ops, i64 %flags) #0 !dbg !201 {
entry:
  %retval = alloca %struct.clk_hw*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_names.addr = alloca i8**, align 8
  %pdata.addr = alloca %struct.clk_parent_data*, align 8
  %num_parents.addr = alloca i32, align 4
  %mux_hw.addr = alloca %struct.clk_hw*, align 8
  %mux_ops.addr = alloca %struct.clk_ops*, align 8
  %rate_hw.addr = alloca %struct.clk_hw*, align 8
  %rate_ops.addr = alloca %struct.clk_ops*, align 8
  %gate_hw.addr = alloca %struct.clk_hw*, align 8
  %gate_ops.addr = alloca %struct.clk_ops*, align 8
  %flags.addr = alloca i64, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %init = alloca %struct.clk_init_data, align 8
  %composite = alloca %struct.clk_composite*, align 8
  %clk_composite_ops = alloca %struct.clk_ops*, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !204, metadata !DIExpression()), !dbg !205
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !206, metadata !DIExpression()), !dbg !207
  store i8** %parent_names, i8*** %parent_names.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %parent_names.addr, metadata !208, metadata !DIExpression()), !dbg !209
  store %struct.clk_parent_data* %pdata, %struct.clk_parent_data** %pdata.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_parent_data** %pdata.addr, metadata !210, metadata !DIExpression()), !dbg !211
  store i32 %num_parents, i32* %num_parents.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_parents.addr, metadata !212, metadata !DIExpression()), !dbg !213
  store %struct.clk_hw* %mux_hw, %struct.clk_hw** %mux_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %mux_hw.addr, metadata !214, metadata !DIExpression()), !dbg !215
  store %struct.clk_ops* %mux_ops, %struct.clk_ops** %mux_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %mux_ops.addr, metadata !216, metadata !DIExpression()), !dbg !217
  store %struct.clk_hw* %rate_hw, %struct.clk_hw** %rate_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %rate_hw.addr, metadata !218, metadata !DIExpression()), !dbg !219
  store %struct.clk_ops* %rate_ops, %struct.clk_ops** %rate_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %rate_ops.addr, metadata !220, metadata !DIExpression()), !dbg !221
  store %struct.clk_hw* %gate_hw, %struct.clk_hw** %gate_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %gate_hw.addr, metadata !222, metadata !DIExpression()), !dbg !223
  store %struct.clk_ops* %gate_ops, %struct.clk_ops** %gate_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %gate_ops.addr, metadata !224, metadata !DIExpression()), !dbg !225
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata %struct.clk_init_data* %init, metadata !230, metadata !DIExpression()), !dbg !231
  %0 = bitcast %struct.clk_init_data* %init to i8*, !dbg !231
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false), !dbg !231
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %clk_composite_ops, metadata !234, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !237, metadata !DIExpression()), !dbg !238
  %call = call i8* @kzalloc(i64 272, i32 3264) #8, !dbg !239
  %1 = bitcast i8* %call to %struct.clk_composite*, !dbg !239
  store %struct.clk_composite* %1, %struct.clk_composite** %composite, align 8, !dbg !240
  %2 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !241
  %tobool = icmp ne %struct.clk_composite* %2, null, !dbg !241
  br i1 %tobool, label %if.end, label %if.then, !dbg !243

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #8, !dbg !244
  %3 = bitcast i8* %call1 to %struct.clk_hw*, !dbg !244
  store %struct.clk_hw* %3, %struct.clk_hw** %retval, align 8, !dbg !245
  br label %return, !dbg !245

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 8, !dbg !246
  %name2 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 0, !dbg !247
  store i8* %4, i8** %name2, align 8, !dbg !248
  %5 = load i64, i64* %flags.addr, align 8, !dbg !249
  %flags3 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 6, !dbg !250
  store i64 %5, i64* %flags3, align 8, !dbg !251
  %6 = load i8**, i8*** %parent_names.addr, align 8, !dbg !252
  %tobool4 = icmp ne i8** %6, null, !dbg !252
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !254

if.then5:                                         ; preds = %if.end
  %7 = load i8**, i8*** %parent_names.addr, align 8, !dbg !255
  %parent_names6 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 2, !dbg !256
  store i8** %7, i8*** %parent_names6, align 8, !dbg !257
  br label %if.end7, !dbg !258

if.else:                                          ; preds = %if.end
  %8 = load %struct.clk_parent_data*, %struct.clk_parent_data** %pdata.addr, align 8, !dbg !259
  %parent_data = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 3, !dbg !260
  store %struct.clk_parent_data* %8, %struct.clk_parent_data** %parent_data, align 8, !dbg !261
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %9 = load i32, i32* %num_parents.addr, align 4, !dbg !262
  %conv = trunc i32 %9 to i8, !dbg !262
  %num_parents8 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 5, !dbg !263
  store i8 %conv, i8* %num_parents8, align 8, !dbg !264
  %10 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !265
  %hw9 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %10, i32 0, i32 0, !dbg !266
  store %struct.clk_hw* %hw9, %struct.clk_hw** %hw, align 8, !dbg !267
  %11 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !268
  %ops = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %11, i32 0, i32 1, !dbg !269
  store %struct.clk_ops* %ops, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !270
  %12 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw.addr, align 8, !dbg !271
  %tobool10 = icmp ne %struct.clk_hw* %12, null, !dbg !271
  br i1 %tobool10, label %land.lhs.true, label %if.end28, !dbg !273

land.lhs.true:                                    ; preds = %if.end7
  %13 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops.addr, align 8, !dbg !274
  %tobool11 = icmp ne %struct.clk_ops* %13, null, !dbg !274
  br i1 %tobool11, label %if.then12, label %if.end28, !dbg !275

if.then12:                                        ; preds = %land.lhs.true
  %14 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops.addr, align 8, !dbg !276
  %get_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %14, i32 0, i32 14, !dbg !279
  %15 = load i8 (%struct.clk_hw*)*, i8 (%struct.clk_hw*)** %get_parent, align 8, !dbg !279
  %tobool13 = icmp ne i8 (%struct.clk_hw*)* %15, null, !dbg !276
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !280

if.then14:                                        ; preds = %if.then12
  %call15 = call i8* @ERR_PTR(i64 -22) #8, !dbg !281
  %16 = bitcast i8* %call15 to %struct.clk_hw*, !dbg !281
  store %struct.clk_hw* %16, %struct.clk_hw** %hw, align 8, !dbg !283
  br label %err, !dbg !284

if.end16:                                         ; preds = %if.then12
  %17 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw.addr, align 8, !dbg !285
  %18 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !286
  %mux_hw17 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %18, i32 0, i32 2, !dbg !287
  store %struct.clk_hw* %17, %struct.clk_hw** %mux_hw17, align 8, !dbg !288
  %19 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops.addr, align 8, !dbg !289
  %20 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !290
  %mux_ops18 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %20, i32 0, i32 5, !dbg !291
  store %struct.clk_ops* %19, %struct.clk_ops** %mux_ops18, align 8, !dbg !292
  %21 = load %struct.clk_ops*, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !293
  %get_parent19 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %21, i32 0, i32 14, !dbg !294
  store i8 (%struct.clk_hw*)* @clk_composite_get_parent, i8 (%struct.clk_hw*)** %get_parent19, align 8, !dbg !295
  %22 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops.addr, align 8, !dbg !296
  %set_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %22, i32 0, i32 13, !dbg !298
  %23 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent, align 8, !dbg !298
  %tobool20 = icmp ne i32 (%struct.clk_hw*, i8)* %23, null, !dbg !296
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !299

if.then21:                                        ; preds = %if.end16
  %24 = load %struct.clk_ops*, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !300
  %set_parent22 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %24, i32 0, i32 13, !dbg !301
  store i32 (%struct.clk_hw*, i8)* @clk_composite_set_parent, i32 (%struct.clk_hw*, i8)** %set_parent22, align 8, !dbg !302
  br label %if.end23, !dbg !300

if.end23:                                         ; preds = %if.then21, %if.end16
  %25 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops.addr, align 8, !dbg !303
  %determine_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %25, i32 0, i32 12, !dbg !305
  %26 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate, align 8, !dbg !305
  %tobool24 = icmp ne i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %26, null, !dbg !303
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !306

if.then25:                                        ; preds = %if.end23
  %27 = load %struct.clk_ops*, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !307
  %determine_rate26 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %27, i32 0, i32 12, !dbg !308
  store i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_composite_determine_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate26, align 8, !dbg !309
  br label %if.end27, !dbg !307

if.end27:                                         ; preds = %if.then25, %if.end23
  br label %if.end28, !dbg !310

if.end28:                                         ; preds = %if.end27, %land.lhs.true, %if.end7
  %28 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw.addr, align 8, !dbg !311
  %tobool29 = icmp ne %struct.clk_hw* %28, null, !dbg !311
  br i1 %tobool29, label %land.lhs.true30, label %if.end85, !dbg !313

land.lhs.true30:                                  ; preds = %if.end28
  %29 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !314
  %tobool31 = icmp ne %struct.clk_ops* %29, null, !dbg !314
  br i1 %tobool31, label %if.then32, label %if.end85, !dbg !315

if.then32:                                        ; preds = %land.lhs.true30
  %30 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !316
  %recalc_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %30, i32 0, i32 10, !dbg !319
  %31 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %recalc_rate, align 8, !dbg !319
  %tobool33 = icmp ne i64 (%struct.clk_hw*, i64)* %31, null, !dbg !316
  br i1 %tobool33, label %if.end36, label %if.then34, !dbg !320

if.then34:                                        ; preds = %if.then32
  %call35 = call i8* @ERR_PTR(i64 -22) #8, !dbg !321
  %32 = bitcast i8* %call35 to %struct.clk_hw*, !dbg !321
  store %struct.clk_hw* %32, %struct.clk_hw** %hw, align 8, !dbg !323
  br label %err, !dbg !324

if.end36:                                         ; preds = %if.then32
  %33 = load %struct.clk_ops*, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !325
  %recalc_rate37 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %33, i32 0, i32 10, !dbg !326
  store i64 (%struct.clk_hw*, i64)* @clk_composite_recalc_rate, i64 (%struct.clk_hw*, i64)** %recalc_rate37, align 8, !dbg !327
  %34 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !328
  %determine_rate38 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %34, i32 0, i32 12, !dbg !330
  %35 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate38, align 8, !dbg !330
  %tobool39 = icmp ne i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %35, null, !dbg !328
  br i1 %tobool39, label %if.then40, label %if.else42, !dbg !331

if.then40:                                        ; preds = %if.end36
  %36 = load %struct.clk_ops*, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !332
  %determine_rate41 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %36, i32 0, i32 12, !dbg !333
  store i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_composite_determine_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate41, align 8, !dbg !334
  br label %if.end47, !dbg !332

if.else42:                                        ; preds = %if.end36
  %37 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !335
  %round_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %37, i32 0, i32 11, !dbg !337
  %38 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate, align 8, !dbg !337
  %tobool43 = icmp ne i64 (%struct.clk_hw*, i64, i64*)* %38, null, !dbg !335
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !338

if.then44:                                        ; preds = %if.else42
  %39 = load %struct.clk_ops*, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !339
  %round_rate45 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %39, i32 0, i32 11, !dbg !340
  store i64 (%struct.clk_hw*, i64, i64*)* @clk_composite_round_rate, i64 (%struct.clk_hw*, i64, i64*)** %round_rate45, align 8, !dbg !341
  br label %if.end46, !dbg !339

if.end46:                                         ; preds = %if.then44, %if.else42
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then40
  %40 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !342
  %set_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %40, i32 0, i32 15, !dbg !344
  %41 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate, align 8, !dbg !344
  %tobool48 = icmp ne i32 (%struct.clk_hw*, i64, i64)* %41, null, !dbg !342
  br i1 %tobool48, label %if.then49, label %if.end82, !dbg !345

if.then49:                                        ; preds = %if.end47
  %42 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !346
  %determine_rate50 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %42, i32 0, i32 12, !dbg !349
  %43 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate50, align 8, !dbg !349
  %tobool51 = icmp ne i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %43, null, !dbg !346
  br i1 %tobool51, label %if.then54, label %lor.lhs.false, !dbg !350

lor.lhs.false:                                    ; preds = %if.then49
  %44 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !351
  %round_rate52 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %44, i32 0, i32 11, !dbg !352
  %45 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate52, align 8, !dbg !352
  %tobool53 = icmp ne i64 (%struct.clk_hw*, i64, i64*)* %45, null, !dbg !351
  br i1 %tobool53, label %if.then54, label %if.else56, !dbg !353

if.then54:                                        ; preds = %lor.lhs.false, %if.then49
  %46 = load %struct.clk_ops*, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !354
  %set_rate55 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %46, i32 0, i32 15, !dbg !355
  store i32 (%struct.clk_hw*, i64, i64)* @clk_composite_set_rate, i32 (%struct.clk_hw*, i64, i64)** %set_rate55, align 8, !dbg !356
  br label %if.end81, !dbg !354

if.else56:                                        ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !357, metadata !DIExpression()), !dbg !359
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !359
  %47 = load i32, i32* %__ret_warn_on, align 4, !dbg !360
  %tobool57 = icmp ne i32 %47, 0, !dbg !360
  %lnot = xor i1 %tobool57, true, !dbg !360
  %lnot58 = xor i1 %lnot, true, !dbg !360
  %lnot.ext = zext i1 %lnot58 to i32, !dbg !360
  %conv59 = sext i32 %lnot.ext to i64, !dbg !360
  %tobool60 = icmp ne i64 %conv59, 0, !dbg !360
  br i1 %tobool60, label %if.then61, label %if.end74, !dbg !359

if.then61:                                        ; preds = %if.else56
  br label %do.body, !dbg !360

do.body:                                          ; preds = %if.then61
  br label %do.body62, !dbg !362

do.body62:                                        ; preds = %do.body
  br label %do.end, !dbg !364

do.end:                                           ; preds = %do.body62
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__clk_hw_register_composite, i64 0, i64 0)) #8, !dbg !362
  br label %do.body63, !dbg !362

do.body63:                                        ; preds = %do.end
  br label %do.body64, !dbg !366

do.body64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !368

do.end65:                                         ; preds = %do.body64
  br label %do.body66, !dbg !366

do.body66:                                        ; preds = %do.end65
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 267, i32 2313, i64 12) #9, !dbg !370, !srcloc !372
  br label %do.end67, !dbg !370

do.end67:                                         ; preds = %do.body66
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 112) #9, !dbg !373, !srcloc !375
  br label %do.body68, !dbg !366

do.body68:                                        ; preds = %do.end67
  br label %do.end69, !dbg !376

do.end69:                                         ; preds = %do.body68
  br label %do.end70, !dbg !366

do.end70:                                         ; preds = %do.end69
  br label %do.body71, !dbg !362

do.body71:                                        ; preds = %do.end70
  br label %do.end72, !dbg !378

do.end72:                                         ; preds = %do.body71
  br label %do.end73, !dbg !362

do.end73:                                         ; preds = %do.end72
  br label %if.end74, !dbg !362

if.end74:                                         ; preds = %do.end73, %if.else56
  %48 = load i32, i32* %__ret_warn_on, align 4, !dbg !359
  %tobool75 = icmp ne i32 %48, 0, !dbg !359
  %lnot76 = xor i1 %tobool75, true, !dbg !359
  %lnot78 = xor i1 %lnot76, true, !dbg !359
  %lnot.ext79 = zext i1 %lnot78 to i32, !dbg !359
  %conv80 = sext i32 %lnot.ext79 to i64, !dbg !359
  store i64 %conv80, i64* %tmp, align 8, !dbg !360
  %49 = load i64, i64* %tmp, align 8, !dbg !359
  br label %if.end81

if.end81:                                         ; preds = %if.end74, %if.then54
  br label %if.end82, !dbg !380

if.end82:                                         ; preds = %if.end81, %if.end47
  %50 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw.addr, align 8, !dbg !381
  %51 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !382
  %rate_hw83 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %51, i32 0, i32 3, !dbg !383
  store %struct.clk_hw* %50, %struct.clk_hw** %rate_hw83, align 8, !dbg !384
  %52 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !385
  %53 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !386
  %rate_ops84 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %53, i32 0, i32 6, !dbg !387
  store %struct.clk_ops* %52, %struct.clk_ops** %rate_ops84, align 8, !dbg !388
  br label %if.end85, !dbg !389

if.end85:                                         ; preds = %if.end82, %land.lhs.true30, %if.end28
  %54 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw.addr, align 8, !dbg !390
  %tobool86 = icmp ne %struct.clk_hw* %54, null, !dbg !390
  br i1 %tobool86, label %land.lhs.true87, label %if.end101, !dbg !392

land.lhs.true87:                                  ; preds = %if.end85
  %55 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops.addr, align 8, !dbg !393
  %tobool88 = icmp ne %struct.clk_ops* %55, null, !dbg !393
  br i1 %tobool88, label %land.lhs.true89, label %if.end101, !dbg !394

land.lhs.true89:                                  ; preds = %land.lhs.true87
  %56 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw.addr, align 8, !dbg !395
  %tobool90 = icmp ne %struct.clk_hw* %56, null, !dbg !395
  br i1 %tobool90, label %land.lhs.true91, label %if.end101, !dbg !396

land.lhs.true91:                                  ; preds = %land.lhs.true89
  %57 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !397
  %tobool92 = icmp ne %struct.clk_ops* %57, null, !dbg !397
  br i1 %tobool92, label %if.then93, label %if.end101, !dbg !398

if.then93:                                        ; preds = %land.lhs.true91
  %58 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops.addr, align 8, !dbg !399
  %set_parent94 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %58, i32 0, i32 13, !dbg !402
  %59 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent94, align 8, !dbg !402
  %tobool95 = icmp ne i32 (%struct.clk_hw*, i8)* %59, null, !dbg !399
  br i1 %tobool95, label %land.lhs.true96, label %if.end100, !dbg !403

land.lhs.true96:                                  ; preds = %if.then93
  %60 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !404
  %set_rate97 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %60, i32 0, i32 15, !dbg !405
  %61 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate97, align 8, !dbg !405
  %tobool98 = icmp ne i32 (%struct.clk_hw*, i64, i64)* %61, null, !dbg !404
  br i1 %tobool98, label %if.then99, label %if.end100, !dbg !406

if.then99:                                        ; preds = %land.lhs.true96
  %62 = load %struct.clk_ops*, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !407
  %set_rate_and_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %62, i32 0, i32 16, !dbg !408
  store i32 (%struct.clk_hw*, i64, i64, i8)* @clk_composite_set_rate_and_parent, i32 (%struct.clk_hw*, i64, i64, i8)** %set_rate_and_parent, align 8, !dbg !409
  br label %if.end100, !dbg !407

if.end100:                                        ; preds = %if.then99, %land.lhs.true96, %if.then93
  br label %if.end101, !dbg !410

if.end101:                                        ; preds = %if.end100, %land.lhs.true91, %land.lhs.true89, %land.lhs.true87, %if.end85
  %63 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw.addr, align 8, !dbg !411
  %tobool102 = icmp ne %struct.clk_hw* %63, null, !dbg !411
  br i1 %tobool102, label %land.lhs.true103, label %if.end119, !dbg !413

land.lhs.true103:                                 ; preds = %if.end101
  %64 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops.addr, align 8, !dbg !414
  %tobool104 = icmp ne %struct.clk_ops* %64, null, !dbg !414
  br i1 %tobool104, label %if.then105, label %if.end119, !dbg !415

if.then105:                                       ; preds = %land.lhs.true103
  %65 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops.addr, align 8, !dbg !416
  %is_enabled = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %65, i32 0, i32 6, !dbg !419
  %66 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %is_enabled, align 8, !dbg !419
  %tobool106 = icmp ne i32 (%struct.clk_hw*)* %66, null, !dbg !416
  br i1 %tobool106, label %lor.lhs.false107, label %if.then111, !dbg !420

lor.lhs.false107:                                 ; preds = %if.then105
  %67 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops.addr, align 8, !dbg !421
  %enable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %67, i32 0, i32 4, !dbg !422
  %68 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %enable, align 8, !dbg !422
  %tobool108 = icmp ne i32 (%struct.clk_hw*)* %68, null, !dbg !421
  br i1 %tobool108, label %lor.lhs.false109, label %if.then111, !dbg !423

lor.lhs.false109:                                 ; preds = %lor.lhs.false107
  %69 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops.addr, align 8, !dbg !424
  %disable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %69, i32 0, i32 5, !dbg !425
  %70 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %disable, align 8, !dbg !425
  %tobool110 = icmp ne void (%struct.clk_hw*)* %70, null, !dbg !424
  br i1 %tobool110, label %if.end113, label %if.then111, !dbg !426

if.then111:                                       ; preds = %lor.lhs.false109, %lor.lhs.false107, %if.then105
  %call112 = call i8* @ERR_PTR(i64 -22) #8, !dbg !427
  %71 = bitcast i8* %call112 to %struct.clk_hw*, !dbg !427
  store %struct.clk_hw* %71, %struct.clk_hw** %hw, align 8, !dbg !429
  br label %err, !dbg !430

if.end113:                                        ; preds = %lor.lhs.false109
  %72 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw.addr, align 8, !dbg !431
  %73 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !432
  %gate_hw114 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %73, i32 0, i32 4, !dbg !433
  store %struct.clk_hw* %72, %struct.clk_hw** %gate_hw114, align 8, !dbg !434
  %74 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops.addr, align 8, !dbg !435
  %75 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !436
  %gate_ops115 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %75, i32 0, i32 7, !dbg !437
  store %struct.clk_ops* %74, %struct.clk_ops** %gate_ops115, align 8, !dbg !438
  %76 = load %struct.clk_ops*, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !439
  %is_enabled116 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %76, i32 0, i32 6, !dbg !440
  store i32 (%struct.clk_hw*)* @clk_composite_is_enabled, i32 (%struct.clk_hw*)** %is_enabled116, align 8, !dbg !441
  %77 = load %struct.clk_ops*, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !442
  %enable117 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %77, i32 0, i32 4, !dbg !443
  store i32 (%struct.clk_hw*)* @clk_composite_enable, i32 (%struct.clk_hw*)** %enable117, align 8, !dbg !444
  %78 = load %struct.clk_ops*, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !445
  %disable118 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %78, i32 0, i32 5, !dbg !446
  store void (%struct.clk_hw*)* @clk_composite_disable, void (%struct.clk_hw*)** %disable118, align 8, !dbg !447
  br label %if.end119, !dbg !448

if.end119:                                        ; preds = %if.end113, %land.lhs.true103, %if.end101
  %79 = load %struct.clk_ops*, %struct.clk_ops** %clk_composite_ops, align 8, !dbg !449
  %ops120 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 1, !dbg !450
  store %struct.clk_ops* %79, %struct.clk_ops** %ops120, align 8, !dbg !451
  %80 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !452
  %hw121 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %80, i32 0, i32 0, !dbg !453
  %init122 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw121, i32 0, i32 2, !dbg !454
  store %struct.clk_init_data* %init, %struct.clk_init_data** %init122, align 8, !dbg !455
  %81 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !456
  %82 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !457
  %call123 = call i32 @clk_hw_register(%struct.device* %81, %struct.clk_hw* %82) #8, !dbg !458
  store i32 %call123, i32* %ret, align 4, !dbg !459
  %83 = load i32, i32* %ret, align 4, !dbg !460
  %tobool124 = icmp ne i32 %83, 0, !dbg !460
  br i1 %tobool124, label %if.then125, label %if.end128, !dbg !462

if.then125:                                       ; preds = %if.end119
  %84 = load i32, i32* %ret, align 4, !dbg !463
  %conv126 = sext i32 %84 to i64, !dbg !463
  %call127 = call i8* @ERR_PTR(i64 %conv126) #8, !dbg !465
  %85 = bitcast i8* %call127 to %struct.clk_hw*, !dbg !465
  store %struct.clk_hw* %85, %struct.clk_hw** %hw, align 8, !dbg !466
  br label %err, !dbg !467

if.end128:                                        ; preds = %if.end119
  %86 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !468
  %mux_hw129 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %86, i32 0, i32 2, !dbg !470
  %87 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw129, align 8, !dbg !470
  %tobool130 = icmp ne %struct.clk_hw* %87, null, !dbg !468
  br i1 %tobool130, label %if.then131, label %if.end134, !dbg !471

if.then131:                                       ; preds = %if.end128
  %88 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !472
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %88, i32 0, i32 1, !dbg !473
  %89 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !473
  %90 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !474
  %mux_hw132 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %90, i32 0, i32 2, !dbg !475
  %91 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw132, align 8, !dbg !475
  %clk133 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %91, i32 0, i32 1, !dbg !476
  store %struct.clk* %89, %struct.clk** %clk133, align 8, !dbg !477
  br label %if.end134, !dbg !474

if.end134:                                        ; preds = %if.then131, %if.end128
  %92 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !478
  %rate_hw135 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %92, i32 0, i32 3, !dbg !480
  %93 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw135, align 8, !dbg !480
  %tobool136 = icmp ne %struct.clk_hw* %93, null, !dbg !478
  br i1 %tobool136, label %if.then137, label %if.end141, !dbg !481

if.then137:                                       ; preds = %if.end134
  %94 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !482
  %clk138 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %94, i32 0, i32 1, !dbg !483
  %95 = load %struct.clk*, %struct.clk** %clk138, align 8, !dbg !483
  %96 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !484
  %rate_hw139 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %96, i32 0, i32 3, !dbg !485
  %97 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw139, align 8, !dbg !485
  %clk140 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %97, i32 0, i32 1, !dbg !486
  store %struct.clk* %95, %struct.clk** %clk140, align 8, !dbg !487
  br label %if.end141, !dbg !484

if.end141:                                        ; preds = %if.then137, %if.end134
  %98 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !488
  %gate_hw142 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %98, i32 0, i32 4, !dbg !490
  %99 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw142, align 8, !dbg !490
  %tobool143 = icmp ne %struct.clk_hw* %99, null, !dbg !488
  br i1 %tobool143, label %if.then144, label %if.end148, !dbg !491

if.then144:                                       ; preds = %if.end141
  %100 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !492
  %clk145 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %100, i32 0, i32 1, !dbg !493
  %101 = load %struct.clk*, %struct.clk** %clk145, align 8, !dbg !493
  %102 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !494
  %gate_hw146 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %102, i32 0, i32 4, !dbg !495
  %103 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw146, align 8, !dbg !495
  %clk147 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %103, i32 0, i32 1, !dbg !496
  store %struct.clk* %101, %struct.clk** %clk147, align 8, !dbg !497
  br label %if.end148, !dbg !494

if.end148:                                        ; preds = %if.then144, %if.end141
  %104 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !498
  store %struct.clk_hw* %104, %struct.clk_hw** %retval, align 8, !dbg !499
  br label %return, !dbg !499

err:                                              ; preds = %if.then125, %if.then111, %if.then34, %if.then14
  call void @llvm.dbg.label(metadata !500), !dbg !501
  %105 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !502
  %106 = bitcast %struct.clk_composite* %105 to i8*, !dbg !502
  call void @kfree(i8* %106) #8, !dbg !503
  %107 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !504
  store %struct.clk_hw* %107, %struct.clk_hw** %retval, align 8, !dbg !505
  br label %return, !dbg !505

return:                                           ; preds = %err, %if.end148, %if.then
  %108 = load %struct.clk_hw*, %struct.clk_hw** %retval, align 8, !dbg !506
  ret %struct.clk_hw* %108, !dbg !506
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_hw* @clk_hw_register_composite_pdata(%struct.device* %dev, i8* %name, %struct.clk_parent_data* %parent_data, i32 %num_parents, %struct.clk_hw* %mux_hw, %struct.clk_ops* %mux_ops, %struct.clk_hw* %rate_hw, %struct.clk_ops* %rate_ops, %struct.clk_hw* %gate_hw, %struct.clk_ops* %gate_ops, i64 %flags) #0 !dbg !507 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_data.addr = alloca %struct.clk_parent_data*, align 8
  %num_parents.addr = alloca i32, align 4
  %mux_hw.addr = alloca %struct.clk_hw*, align 8
  %mux_ops.addr = alloca %struct.clk_ops*, align 8
  %rate_hw.addr = alloca %struct.clk_hw*, align 8
  %rate_ops.addr = alloca %struct.clk_ops*, align 8
  %gate_hw.addr = alloca %struct.clk_hw*, align 8
  %gate_ops.addr = alloca %struct.clk_ops*, align 8
  %flags.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !510, metadata !DIExpression()), !dbg !511
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store %struct.clk_parent_data* %parent_data, %struct.clk_parent_data** %parent_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_parent_data** %parent_data.addr, metadata !514, metadata !DIExpression()), !dbg !515
  store i32 %num_parents, i32* %num_parents.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_parents.addr, metadata !516, metadata !DIExpression()), !dbg !517
  store %struct.clk_hw* %mux_hw, %struct.clk_hw** %mux_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %mux_hw.addr, metadata !518, metadata !DIExpression()), !dbg !519
  store %struct.clk_ops* %mux_ops, %struct.clk_ops** %mux_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %mux_ops.addr, metadata !520, metadata !DIExpression()), !dbg !521
  store %struct.clk_hw* %rate_hw, %struct.clk_hw** %rate_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %rate_hw.addr, metadata !522, metadata !DIExpression()), !dbg !523
  store %struct.clk_ops* %rate_ops, %struct.clk_ops** %rate_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %rate_ops.addr, metadata !524, metadata !DIExpression()), !dbg !525
  store %struct.clk_hw* %gate_hw, %struct.clk_hw** %gate_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %gate_hw.addr, metadata !526, metadata !DIExpression()), !dbg !527
  store %struct.clk_ops* %gate_ops, %struct.clk_ops** %gate_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %gate_ops.addr, metadata !528, metadata !DIExpression()), !dbg !529
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !530, metadata !DIExpression()), !dbg !531
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !532
  %1 = load i8*, i8** %name.addr, align 8, !dbg !533
  %2 = load %struct.clk_parent_data*, %struct.clk_parent_data** %parent_data.addr, align 8, !dbg !534
  %3 = load i32, i32* %num_parents.addr, align 4, !dbg !535
  %4 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw.addr, align 8, !dbg !536
  %5 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops.addr, align 8, !dbg !537
  %6 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw.addr, align 8, !dbg !538
  %7 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !539
  %8 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw.addr, align 8, !dbg !540
  %9 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops.addr, align 8, !dbg !541
  %10 = load i64, i64* %flags.addr, align 8, !dbg !542
  %call = call %struct.clk_hw* @__clk_hw_register_composite(%struct.device* %0, i8* %1, i8** null, %struct.clk_parent_data* %2, i32 %3, %struct.clk_hw* %4, %struct.clk_ops* %5, %struct.clk_hw* %6, %struct.clk_ops* %7, %struct.clk_hw* %8, %struct.clk_ops* %9, i64 %10) #8, !dbg !543
  ret %struct.clk_hw* %call, !dbg !544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @clk_register_composite(%struct.device* %dev, i8* %name, i8** %parent_names, i32 %num_parents, %struct.clk_hw* %mux_hw, %struct.clk_ops* %mux_ops, %struct.clk_hw* %rate_hw, %struct.clk_ops* %rate_ops, %struct.clk_hw* %gate_hw, %struct.clk_ops* %gate_ops, i64 %flags) #0 !dbg !545 {
entry:
  %retval = alloca %struct.clk*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_names.addr = alloca i8**, align 8
  %num_parents.addr = alloca i32, align 4
  %mux_hw.addr = alloca %struct.clk_hw*, align 8
  %mux_ops.addr = alloca %struct.clk_ops*, align 8
  %rate_hw.addr = alloca %struct.clk_hw*, align 8
  %rate_ops.addr = alloca %struct.clk_ops*, align 8
  %gate_hw.addr = alloca %struct.clk_hw*, align 8
  %gate_ops.addr = alloca %struct.clk_ops*, align 8
  %flags.addr = alloca i64, align 8
  %hw = alloca %struct.clk_hw*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !548, metadata !DIExpression()), !dbg !549
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !550, metadata !DIExpression()), !dbg !551
  store i8** %parent_names, i8*** %parent_names.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %parent_names.addr, metadata !552, metadata !DIExpression()), !dbg !553
  store i32 %num_parents, i32* %num_parents.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_parents.addr, metadata !554, metadata !DIExpression()), !dbg !555
  store %struct.clk_hw* %mux_hw, %struct.clk_hw** %mux_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %mux_hw.addr, metadata !556, metadata !DIExpression()), !dbg !557
  store %struct.clk_ops* %mux_ops, %struct.clk_ops** %mux_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %mux_ops.addr, metadata !558, metadata !DIExpression()), !dbg !559
  store %struct.clk_hw* %rate_hw, %struct.clk_hw** %rate_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %rate_hw.addr, metadata !560, metadata !DIExpression()), !dbg !561
  store %struct.clk_ops* %rate_ops, %struct.clk_ops** %rate_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %rate_ops.addr, metadata !562, metadata !DIExpression()), !dbg !563
  store %struct.clk_hw* %gate_hw, %struct.clk_hw** %gate_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %gate_hw.addr, metadata !564, metadata !DIExpression()), !dbg !565
  store %struct.clk_ops* %gate_ops, %struct.clk_ops** %gate_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %gate_ops.addr, metadata !566, metadata !DIExpression()), !dbg !567
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !570, metadata !DIExpression()), !dbg !571
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !572
  %1 = load i8*, i8** %name.addr, align 8, !dbg !573
  %2 = load i8**, i8*** %parent_names.addr, align 8, !dbg !574
  %3 = load i32, i32* %num_parents.addr, align 4, !dbg !575
  %4 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw.addr, align 8, !dbg !576
  %5 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops.addr, align 8, !dbg !577
  %6 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw.addr, align 8, !dbg !578
  %7 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !579
  %8 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw.addr, align 8, !dbg !580
  %9 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops.addr, align 8, !dbg !581
  %10 = load i64, i64* %flags.addr, align 8, !dbg !582
  %call = call %struct.clk_hw* @clk_hw_register_composite(%struct.device* %0, i8* %1, i8** %2, i32 %3, %struct.clk_hw* %4, %struct.clk_ops* %5, %struct.clk_hw* %6, %struct.clk_ops* %7, %struct.clk_hw* %8, %struct.clk_ops* %9, i64 %10) #8, !dbg !583
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !584
  %11 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !585
  %12 = bitcast %struct.clk_hw* %11 to i8*, !dbg !585
  %call1 = call zeroext i1 @IS_ERR(i8* %12) #8, !dbg !587
  br i1 %call1, label %if.then, label %if.end, !dbg !588

if.then:                                          ; preds = %entry
  %13 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !589
  %14 = bitcast %struct.clk_hw* %13 to i8*, !dbg !589
  %call2 = call i8* @ERR_CAST(i8* %14) #8, !dbg !590
  %15 = bitcast i8* %call2 to %struct.clk*, !dbg !590
  store %struct.clk* %15, %struct.clk** %retval, align 8, !dbg !591
  br label %return, !dbg !591

if.end:                                           ; preds = %entry
  %16 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !592
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %16, i32 0, i32 1, !dbg !593
  %17 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !593
  store %struct.clk* %17, %struct.clk** %retval, align 8, !dbg !594
  br label %return, !dbg !594

return:                                           ; preds = %if.end, %if.then
  %18 = load %struct.clk*, %struct.clk** %retval, align 8, !dbg !595
  ret %struct.clk* %18, !dbg !595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !596 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !604, metadata !DIExpression()), !dbg !605
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !606
  %1 = ptrtoint i8* %0 to i64, !dbg !606
  %2 = inttoptr i64 %1 to i8*, !dbg !606
  %3 = ptrtoint i8* %2 to i64, !dbg !606
  %cmp = icmp uge i64 %3, -4095, !dbg !606
  %lnot = xor i1 %cmp, true, !dbg !606
  %lnot1 = xor i1 %lnot, true, !dbg !606
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !606
  %conv = sext i32 %lnot.ext to i64, !dbg !606
  %tobool = icmp ne i64 %conv, 0, !dbg !606
  ret i1 %tobool, !dbg !607
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !608 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !611, metadata !DIExpression()), !dbg !612
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !613
  ret i8* %0, !dbg !614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @clk_register_composite_pdata(%struct.device* %dev, i8* %name, %struct.clk_parent_data* %parent_data, i32 %num_parents, %struct.clk_hw* %mux_hw, %struct.clk_ops* %mux_ops, %struct.clk_hw* %rate_hw, %struct.clk_ops* %rate_ops, %struct.clk_hw* %gate_hw, %struct.clk_ops* %gate_ops, i64 %flags) #0 !dbg !615 {
entry:
  %retval = alloca %struct.clk*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_data.addr = alloca %struct.clk_parent_data*, align 8
  %num_parents.addr = alloca i32, align 4
  %mux_hw.addr = alloca %struct.clk_hw*, align 8
  %mux_ops.addr = alloca %struct.clk_ops*, align 8
  %rate_hw.addr = alloca %struct.clk_hw*, align 8
  %rate_ops.addr = alloca %struct.clk_ops*, align 8
  %gate_hw.addr = alloca %struct.clk_hw*, align 8
  %gate_ops.addr = alloca %struct.clk_ops*, align 8
  %flags.addr = alloca i64, align 8
  %hw = alloca %struct.clk_hw*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !618, metadata !DIExpression()), !dbg !619
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !620, metadata !DIExpression()), !dbg !621
  store %struct.clk_parent_data* %parent_data, %struct.clk_parent_data** %parent_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_parent_data** %parent_data.addr, metadata !622, metadata !DIExpression()), !dbg !623
  store i32 %num_parents, i32* %num_parents.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_parents.addr, metadata !624, metadata !DIExpression()), !dbg !625
  store %struct.clk_hw* %mux_hw, %struct.clk_hw** %mux_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %mux_hw.addr, metadata !626, metadata !DIExpression()), !dbg !627
  store %struct.clk_ops* %mux_ops, %struct.clk_ops** %mux_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %mux_ops.addr, metadata !628, metadata !DIExpression()), !dbg !629
  store %struct.clk_hw* %rate_hw, %struct.clk_hw** %rate_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %rate_hw.addr, metadata !630, metadata !DIExpression()), !dbg !631
  store %struct.clk_ops* %rate_ops, %struct.clk_ops** %rate_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %rate_ops.addr, metadata !632, metadata !DIExpression()), !dbg !633
  store %struct.clk_hw* %gate_hw, %struct.clk_hw** %gate_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %gate_hw.addr, metadata !634, metadata !DIExpression()), !dbg !635
  store %struct.clk_ops* %gate_ops, %struct.clk_ops** %gate_ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %gate_ops.addr, metadata !636, metadata !DIExpression()), !dbg !637
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !640, metadata !DIExpression()), !dbg !641
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !642
  %1 = load i8*, i8** %name.addr, align 8, !dbg !643
  %2 = load %struct.clk_parent_data*, %struct.clk_parent_data** %parent_data.addr, align 8, !dbg !644
  %3 = load i32, i32* %num_parents.addr, align 4, !dbg !645
  %4 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw.addr, align 8, !dbg !646
  %5 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops.addr, align 8, !dbg !647
  %6 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw.addr, align 8, !dbg !648
  %7 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops.addr, align 8, !dbg !649
  %8 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw.addr, align 8, !dbg !650
  %9 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops.addr, align 8, !dbg !651
  %10 = load i64, i64* %flags.addr, align 8, !dbg !652
  %call = call %struct.clk_hw* @clk_hw_register_composite_pdata(%struct.device* %0, i8* %1, %struct.clk_parent_data* %2, i32 %3, %struct.clk_hw* %4, %struct.clk_ops* %5, %struct.clk_hw* %6, %struct.clk_ops* %7, %struct.clk_hw* %8, %struct.clk_ops* %9, i64 %10) #8, !dbg !653
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !654
  %11 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !655
  %12 = bitcast %struct.clk_hw* %11 to i8*, !dbg !655
  %call1 = call zeroext i1 @IS_ERR(i8* %12) #8, !dbg !657
  br i1 %call1, label %if.then, label %if.end, !dbg !658

if.then:                                          ; preds = %entry
  %13 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !659
  %14 = bitcast %struct.clk_hw* %13 to i8*, !dbg !659
  %call2 = call i8* @ERR_CAST(i8* %14) #8, !dbg !660
  %15 = bitcast i8* %call2 to %struct.clk*, !dbg !660
  store %struct.clk* %15, %struct.clk** %retval, align 8, !dbg !661
  br label %return, !dbg !661

if.end:                                           ; preds = %entry
  %16 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !662
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %16, i32 0, i32 1, !dbg !663
  %17 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !663
  store %struct.clk* %17, %struct.clk** %retval, align 8, !dbg !664
  br label %return, !dbg !664

return:                                           ; preds = %if.end, %if.then
  %18 = load %struct.clk*, %struct.clk** %retval, align 8, !dbg !665
  ret %struct.clk* %18, !dbg !665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_unregister_composite(%struct.clk* %clk) #0 !dbg !666 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  %composite = alloca %struct.clk_composite*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_composite*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !669, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !671, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !673, metadata !DIExpression()), !dbg !674
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !675
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %0) #8, !dbg !676
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !677
  %1 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !678
  %tobool = icmp ne %struct.clk_hw* %1, null, !dbg !678
  br i1 %tobool, label %if.end, label %if.then, !dbg !680

if.then:                                          ; preds = %entry
  br label %return, !dbg !681

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !682, metadata !DIExpression()), !dbg !684
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !684
  %3 = bitcast %struct.clk_hw* %2 to i8*, !dbg !684
  store i8* %3, i8** %__mptr, align 8, !dbg !684
  br label %do.body, !dbg !684

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !685

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !684
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !684
  %5 = bitcast i8* %add.ptr to %struct.clk_composite*, !dbg !684
  store %struct.clk_composite* %5, %struct.clk_composite** %tmp, align 8, !dbg !685
  %6 = load %struct.clk_composite*, %struct.clk_composite** %tmp, align 8, !dbg !684
  store %struct.clk_composite* %6, %struct.clk_composite** %composite, align 8, !dbg !687
  %7 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !688
  call void @clk_unregister(%struct.clk* %7) #8, !dbg !689
  %8 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !690
  %9 = bitcast %struct.clk_composite* %8 to i8*, !dbg !690
  call void @kfree(i8* %9) #8, !dbg !691
  br label %return, !dbg !692

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !692
}

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk*) #2

; Function Attrs: noredzone
declare dso_local void @clk_unregister(%struct.clk*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_hw_unregister_composite(%struct.clk_hw* %hw) #0 !dbg !693 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %composite = alloca %struct.clk_composite*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_composite*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !694, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !696, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !698, metadata !DIExpression()), !dbg !700
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !700
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !700
  store i8* %1, i8** %__mptr, align 8, !dbg !700
  br label %do.body, !dbg !700

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !701

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !700
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !700
  %3 = bitcast i8* %add.ptr to %struct.clk_composite*, !dbg !700
  store %struct.clk_composite* %3, %struct.clk_composite** %tmp, align 8, !dbg !701
  %4 = load %struct.clk_composite*, %struct.clk_composite** %tmp, align 8, !dbg !700
  store %struct.clk_composite* %4, %struct.clk_composite** %composite, align 8, !dbg !703
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !704
  call void @clk_hw_unregister(%struct.clk_hw* %5) #8, !dbg !705
  %6 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !706
  %7 = bitcast %struct.clk_composite* %6 to i8*, !dbg !706
  call void @kfree(i8* %7) #8, !dbg !707
  ret void, !dbg !708
}

; Function Attrs: noredzone
declare dso_local void @clk_hw_unregister(%struct.clk_hw*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !709 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !716, metadata !DIExpression()), !dbg !723
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !729, metadata !DIExpression()), !dbg !730
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !731, metadata !DIExpression()), !dbg !732
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !733, metadata !DIExpression()), !dbg !734
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !735, metadata !DIExpression()), !dbg !739
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !741, metadata !DIExpression()), !dbg !745
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !747, metadata !DIExpression()), !dbg !751
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !756, metadata !DIExpression()), !dbg !757
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !758, metadata !DIExpression()), !dbg !759
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !760, metadata !DIExpression()), !dbg !761
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !762, metadata !DIExpression()), !dbg !763
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !764, metadata !DIExpression()), !dbg !765
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !766, metadata !DIExpression()), !dbg !767
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !768, metadata !DIExpression()), !dbg !769
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !770, metadata !DIExpression()), !dbg !771
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !772, metadata !DIExpression()), !dbg !773
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !774, metadata !DIExpression()), !dbg !775
  %0 = load i64, i64* %size.addr, align 8, !dbg !776
  %1 = load i32, i32* %flags.addr, align 4, !dbg !777
  %or = or i32 %1, 256, !dbg !778
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !779
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !780
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !781

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !782
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !783
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !784

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !785
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !786
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !787
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !788
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !765
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !789
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !790
  %10 = load i32, i32* %order.i.i, align 4, !dbg !791
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !792
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !793
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !794
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !795
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !795
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !795
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !795
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !795
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !796
  br label %kmalloc.exit, !dbg !796

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !797
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !798
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !798
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !800

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !801
  br label %kmalloc_index.exit.i, !dbg !801

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !802
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !804
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !805

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !806
  br label %kmalloc_index.exit.i, !dbg !806

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !807
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !809
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !810

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !811
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !812
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !813

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !814
  br label %kmalloc_index.exit.i, !dbg !814

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !815
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !817
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !818

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !819
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !820
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !821

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !822
  br label %kmalloc_index.exit.i, !dbg !822

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !823
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !825
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !826

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !827
  br label %kmalloc_index.exit.i, !dbg !827

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !828
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !830
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !831

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !832
  br label %kmalloc_index.exit.i, !dbg !832

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !833
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !835
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !836

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !837
  br label %kmalloc_index.exit.i, !dbg !837

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !838
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !840
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !841

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !842
  br label %kmalloc_index.exit.i, !dbg !842

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !843
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !845
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !846

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !847
  br label %kmalloc_index.exit.i, !dbg !847

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !848
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !850
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !851

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !852
  br label %kmalloc_index.exit.i, !dbg !852

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !853
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !855
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !856

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !857
  br label %kmalloc_index.exit.i, !dbg !857

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !858
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !860
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !861

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !862
  br label %kmalloc_index.exit.i, !dbg !862

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !863
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !865
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !866

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !867
  br label %kmalloc_index.exit.i, !dbg !867

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !868
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !870
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !871

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !872
  br label %kmalloc_index.exit.i, !dbg !872

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !873
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !875
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !876

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !877
  br label %kmalloc_index.exit.i, !dbg !877

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !878
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !880
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !881

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !882
  br label %kmalloc_index.exit.i, !dbg !882

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !883
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !885
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !886

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !887
  br label %kmalloc_index.exit.i, !dbg !887

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !888
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !890
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !891

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !892
  br label %kmalloc_index.exit.i, !dbg !892

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !893
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !895
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !896

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !897
  br label %kmalloc_index.exit.i, !dbg !897

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !898
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !900
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !901

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !902
  br label %kmalloc_index.exit.i, !dbg !902

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !903
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !905
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !906

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !907
  br label %kmalloc_index.exit.i, !dbg !907

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !908
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !910
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !911

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !912
  br label %kmalloc_index.exit.i, !dbg !912

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !913
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !915
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !916

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !917
  br label %kmalloc_index.exit.i, !dbg !917

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !918
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !920
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !921

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !922
  br label %kmalloc_index.exit.i, !dbg !922

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !923
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !925
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !926

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !927
  br label %kmalloc_index.exit.i, !dbg !927

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !928
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !930
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !931

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !932
  br label %kmalloc_index.exit.i, !dbg !932

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !933
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !935
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !936

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !937
  br label %kmalloc_index.exit.i, !dbg !937

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !938
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !940
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !941

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !942
  br label %kmalloc_index.exit.i, !dbg !942

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !943, !srcloc !946
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 101) #9, !dbg !947, !srcloc !950
  unreachable, !dbg !951

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !952
  store i32 %45, i32* %index.i, align 4, !dbg !953
  %46 = load i32, i32* %index.i, align 4, !dbg !954
  %tobool.i = icmp ne i32 %46, 0, !dbg !954
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !956

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !957
  br label %kmalloc.exit, !dbg !957

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !958
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !959
  %and.i.i = and i32 %48, 17, !dbg !959
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !959
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !959
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !959
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !959
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !961

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !962
  br label %kmalloc_type.exit.i, !dbg !962

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !963
  %and2.i.i = and i32 %49, 1, !dbg !964
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !963
  %50 = zext i1 %tobool3.i.i to i64, !dbg !963
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !963
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !965
  br label %kmalloc_type.exit.i, !dbg !965

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !966
  %idxprom.i = zext i32 %51 to i64, !dbg !967
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !967
  %52 = load i32, i32* %index.i, align 4, !dbg !968
  %idxprom6.i = zext i32 %52 to i64, !dbg !967
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !967
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !967
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !969
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !970
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !971
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !972
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !973
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !973
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !973
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !973
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !973
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !734
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !974
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !975
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !976
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !977
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !978
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !979
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !980
  store i8* %62, i8** %retval.i, align 8, !dbg !981
  br label %kmalloc.exit, !dbg !981

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !982
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !983
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !984
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !984
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !984
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !984
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !984
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !985
  br label %kmalloc.exit, !dbg !985

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !986
  ret i8* %65, !dbg !987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !988 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !991, metadata !DIExpression()), !dbg !992
  %0 = load i64, i64* %error.addr, align 8, !dbg !993
  %1 = inttoptr i64 %0 to i8*, !dbg !994
  ret i8* %1, !dbg !995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @clk_composite_get_parent(%struct.clk_hw* %hw) #0 !dbg !996 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %composite = alloca %struct.clk_composite*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_composite*, align 8
  %mux_ops = alloca %struct.clk_ops*, align 8
  %mux_hw = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !997, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !999, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1001, metadata !DIExpression()), !dbg !1003
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1003
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1003
  store i8* %1, i8** %__mptr, align 8, !dbg !1003
  br label %do.body, !dbg !1003

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1004

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1003
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1003
  %3 = bitcast i8* %add.ptr to %struct.clk_composite*, !dbg !1003
  store %struct.clk_composite* %3, %struct.clk_composite** %tmp, align 8, !dbg !1004
  %4 = load %struct.clk_composite*, %struct.clk_composite** %tmp, align 8, !dbg !1003
  store %struct.clk_composite* %4, %struct.clk_composite** %composite, align 8, !dbg !1000
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %mux_ops, metadata !1006, metadata !DIExpression()), !dbg !1007
  %5 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1008
  %mux_ops1 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %5, i32 0, i32 5, !dbg !1009
  %6 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops1, align 8, !dbg !1009
  store %struct.clk_ops* %6, %struct.clk_ops** %mux_ops, align 8, !dbg !1007
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %mux_hw, metadata !1010, metadata !DIExpression()), !dbg !1011
  %7 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1012
  %mux_hw2 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %7, i32 0, i32 2, !dbg !1013
  %8 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw2, align 8, !dbg !1013
  store %struct.clk_hw* %8, %struct.clk_hw** %mux_hw, align 8, !dbg !1011
  %9 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1014
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1015
  call void @__clk_hw_set_clk(%struct.clk_hw* %9, %struct.clk_hw* %10) #8, !dbg !1016
  %11 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops, align 8, !dbg !1017
  %get_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %11, i32 0, i32 14, !dbg !1018
  %12 = load i8 (%struct.clk_hw*)*, i8 (%struct.clk_hw*)** %get_parent, align 8, !dbg !1018
  %13 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1019
  %call = call zeroext i8 %12(%struct.clk_hw* %13) #8, !dbg !1017
  ret i8 %call, !dbg !1020
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_composite_set_parent(%struct.clk_hw* %hw, i8 zeroext %index) #0 !dbg !1021 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %index.addr = alloca i8, align 1
  %composite = alloca %struct.clk_composite*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_composite*, align 8
  %mux_ops = alloca %struct.clk_ops*, align 8
  %mux_hw = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !1022, metadata !DIExpression()), !dbg !1023
  store i8 %index, i8* %index.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %index.addr, metadata !1024, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !1026, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1028, metadata !DIExpression()), !dbg !1030
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1030
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1030
  store i8* %1, i8** %__mptr, align 8, !dbg !1030
  br label %do.body, !dbg !1030

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1031

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1030
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1030
  %3 = bitcast i8* %add.ptr to %struct.clk_composite*, !dbg !1030
  store %struct.clk_composite* %3, %struct.clk_composite** %tmp, align 8, !dbg !1031
  %4 = load %struct.clk_composite*, %struct.clk_composite** %tmp, align 8, !dbg !1030
  store %struct.clk_composite* %4, %struct.clk_composite** %composite, align 8, !dbg !1027
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %mux_ops, metadata !1033, metadata !DIExpression()), !dbg !1034
  %5 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1035
  %mux_ops1 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %5, i32 0, i32 5, !dbg !1036
  %6 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops1, align 8, !dbg !1036
  store %struct.clk_ops* %6, %struct.clk_ops** %mux_ops, align 8, !dbg !1034
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %mux_hw, metadata !1037, metadata !DIExpression()), !dbg !1038
  %7 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1039
  %mux_hw2 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %7, i32 0, i32 2, !dbg !1040
  %8 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw2, align 8, !dbg !1040
  store %struct.clk_hw* %8, %struct.clk_hw** %mux_hw, align 8, !dbg !1038
  %9 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1041
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1042
  call void @__clk_hw_set_clk(%struct.clk_hw* %9, %struct.clk_hw* %10) #8, !dbg !1043
  %11 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops, align 8, !dbg !1044
  %set_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %11, i32 0, i32 13, !dbg !1045
  %12 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent, align 8, !dbg !1045
  %13 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1046
  %14 = load i8, i8* %index.addr, align 1, !dbg !1047
  %call = call i32 %12(%struct.clk_hw* %13, i8 zeroext %14) #8, !dbg !1044
  ret i32 %call, !dbg !1048
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_composite_determine_rate(%struct.clk_hw* %hw, %struct.clk_rate_request* %req) #0 !dbg !1049 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.clk_hw*, align 8
  %req.addr = alloca %struct.clk_rate_request*, align 8
  %composite = alloca %struct.clk_composite*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_composite*, align 8
  %rate_ops = alloca %struct.clk_ops*, align 8
  %mux_ops = alloca %struct.clk_ops*, align 8
  %rate_hw = alloca %struct.clk_hw*, align 8
  %mux_hw = alloca %struct.clk_hw*, align 8
  %parent = alloca %struct.clk_hw*, align 8
  %parent_rate = alloca i64, align 8
  %tmp_rate = alloca i64, align 8
  %best_rate = alloca i64, align 8
  %rate_diff = alloca i64, align 8
  %best_rate_diff = alloca i64, align 8
  %rate = alloca i64, align 8
  %i = alloca i32, align 4
  %__x = alloca i64, align 8
  %tmp50 = alloca i64, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !1050, metadata !DIExpression()), !dbg !1051
  store %struct.clk_rate_request* %req, %struct.clk_rate_request** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_rate_request** %req.addr, metadata !1052, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !1054, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1056, metadata !DIExpression()), !dbg !1058
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1058
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1058
  store i8* %1, i8** %__mptr, align 8, !dbg !1058
  br label %do.body, !dbg !1058

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1059

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1058
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1058
  %3 = bitcast i8* %add.ptr to %struct.clk_composite*, !dbg !1058
  store %struct.clk_composite* %3, %struct.clk_composite** %tmp, align 8, !dbg !1059
  %4 = load %struct.clk_composite*, %struct.clk_composite** %tmp, align 8, !dbg !1058
  store %struct.clk_composite* %4, %struct.clk_composite** %composite, align 8, !dbg !1055
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %rate_ops, metadata !1061, metadata !DIExpression()), !dbg !1062
  %5 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1063
  %rate_ops1 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %5, i32 0, i32 6, !dbg !1064
  %6 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops1, align 8, !dbg !1064
  store %struct.clk_ops* %6, %struct.clk_ops** %rate_ops, align 8, !dbg !1062
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %mux_ops, metadata !1065, metadata !DIExpression()), !dbg !1066
  %7 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1067
  %mux_ops2 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %7, i32 0, i32 5, !dbg !1068
  %8 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops2, align 8, !dbg !1068
  store %struct.clk_ops* %8, %struct.clk_ops** %mux_ops, align 8, !dbg !1066
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %rate_hw, metadata !1069, metadata !DIExpression()), !dbg !1070
  %9 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1071
  %rate_hw3 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %9, i32 0, i32 3, !dbg !1072
  %10 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw3, align 8, !dbg !1072
  store %struct.clk_hw* %10, %struct.clk_hw** %rate_hw, align 8, !dbg !1070
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %mux_hw, metadata !1073, metadata !DIExpression()), !dbg !1074
  %11 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1075
  %mux_hw4 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %11, i32 0, i32 2, !dbg !1076
  %12 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw4, align 8, !dbg !1076
  store %struct.clk_hw* %12, %struct.clk_hw** %mux_hw, align 8, !dbg !1074
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %parent, metadata !1077, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.declare(metadata i64* %parent_rate, metadata !1079, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.declare(metadata i64* %tmp_rate, metadata !1081, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.declare(metadata i64* %best_rate, metadata !1083, metadata !DIExpression()), !dbg !1084
  store i64 0, i64* %best_rate, align 8, !dbg !1084
  call void @llvm.dbg.declare(metadata i64* %rate_diff, metadata !1085, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.declare(metadata i64* %best_rate_diff, metadata !1087, metadata !DIExpression()), !dbg !1088
  store i64 -1, i64* %best_rate_diff, align 8, !dbg !1088
  call void @llvm.dbg.declare(metadata i64* %rate, metadata !1089, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1091, metadata !DIExpression()), !dbg !1092
  %13 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1093
  %tobool = icmp ne %struct.clk_hw* %13, null, !dbg !1093
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !1095

land.lhs.true:                                    ; preds = %do.end
  %14 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1096
  %tobool5 = icmp ne %struct.clk_ops* %14, null, !dbg !1096
  br i1 %tobool5, label %land.lhs.true6, label %if.else, !dbg !1097

land.lhs.true6:                                   ; preds = %land.lhs.true
  %15 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1098
  %determine_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %15, i32 0, i32 12, !dbg !1099
  %16 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate, align 8, !dbg !1099
  %tobool7 = icmp ne i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %16, null, !dbg !1098
  br i1 %tobool7, label %if.then, label %if.else, !dbg !1100

if.then:                                          ; preds = %land.lhs.true6
  %17 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1101
  %18 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1103
  call void @__clk_hw_set_clk(%struct.clk_hw* %17, %struct.clk_hw* %18) #8, !dbg !1104
  %19 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1105
  %determine_rate8 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %19, i32 0, i32 12, !dbg !1106
  %20 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate8, align 8, !dbg !1106
  %21 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1107
  %22 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1108
  %call = call i32 %20(%struct.clk_hw* %21, %struct.clk_rate_request* %22) #8, !dbg !1105
  store i32 %call, i32* %retval, align 4, !dbg !1109
  br label %return, !dbg !1109

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true, %do.end
  %23 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1110
  %tobool9 = icmp ne %struct.clk_hw* %23, null, !dbg !1110
  br i1 %tobool9, label %land.lhs.true10, label %if.else68, !dbg !1112

land.lhs.true10:                                  ; preds = %if.else
  %24 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1113
  %tobool11 = icmp ne %struct.clk_ops* %24, null, !dbg !1113
  br i1 %tobool11, label %land.lhs.true12, label %if.else68, !dbg !1114

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %25 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1115
  %round_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %25, i32 0, i32 11, !dbg !1116
  %26 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate, align 8, !dbg !1116
  %tobool13 = icmp ne i64 (%struct.clk_hw*, i64, i64*)* %26, null, !dbg !1115
  br i1 %tobool13, label %land.lhs.true14, label %if.else68, !dbg !1117

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %27 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1118
  %tobool15 = icmp ne %struct.clk_hw* %27, null, !dbg !1118
  br i1 %tobool15, label %land.lhs.true16, label %if.else68, !dbg !1119

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %28 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops, align 8, !dbg !1120
  %tobool17 = icmp ne %struct.clk_ops* %28, null, !dbg !1120
  br i1 %tobool17, label %land.lhs.true18, label %if.else68, !dbg !1121

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %29 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops, align 8, !dbg !1122
  %set_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %29, i32 0, i32 13, !dbg !1123
  %30 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent, align 8, !dbg !1123
  %tobool19 = icmp ne i32 (%struct.clk_hw*, i8)* %30, null, !dbg !1122
  br i1 %tobool19, label %if.then20, label %if.else68, !dbg !1124

if.then20:                                        ; preds = %land.lhs.true18
  %31 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1125
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %31, i32 0, i32 4, !dbg !1127
  store %struct.clk_hw* null, %struct.clk_hw** %best_parent_hw, align 8, !dbg !1128
  %32 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1129
  %call21 = call i64 @clk_hw_get_flags(%struct.clk_hw* %32) #8, !dbg !1131
  %and = and i64 %call21, 128, !dbg !1132
  %tobool22 = icmp ne i64 %and, 0, !dbg !1132
  br i1 %tobool22, label %if.then23, label %if.end33, !dbg !1133

if.then23:                                        ; preds = %if.then20
  %33 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1134
  %call24 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %33) #8, !dbg !1136
  store %struct.clk_hw* %call24, %struct.clk_hw** %parent, align 8, !dbg !1137
  %34 = load %struct.clk_hw*, %struct.clk_hw** %parent, align 8, !dbg !1138
  %35 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1139
  %best_parent_hw25 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %35, i32 0, i32 4, !dbg !1140
  store %struct.clk_hw* %34, %struct.clk_hw** %best_parent_hw25, align 8, !dbg !1141
  %36 = load %struct.clk_hw*, %struct.clk_hw** %parent, align 8, !dbg !1142
  %call26 = call i64 @clk_hw_get_rate(%struct.clk_hw* %36) #8, !dbg !1143
  %37 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1144
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %37, i32 0, i32 3, !dbg !1145
  store i64 %call26, i64* %best_parent_rate, align 8, !dbg !1146
  %38 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1147
  %round_rate27 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %38, i32 0, i32 11, !dbg !1148
  %39 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate27, align 8, !dbg !1148
  %40 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1149
  %41 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1150
  %rate28 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %41, i32 0, i32 0, !dbg !1151
  %42 = load i64, i64* %rate28, align 8, !dbg !1151
  %43 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1152
  %best_parent_rate29 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %43, i32 0, i32 3, !dbg !1153
  %call30 = call i64 %39(%struct.clk_hw* %40, i64 %42, i64* %best_parent_rate29) #8, !dbg !1147
  store i64 %call30, i64* %rate, align 8, !dbg !1154
  %44 = load i64, i64* %rate, align 8, !dbg !1155
  %cmp = icmp slt i64 %44, 0, !dbg !1157
  br i1 %cmp, label %if.then31, label %if.end, !dbg !1158

if.then31:                                        ; preds = %if.then23
  %45 = load i64, i64* %rate, align 8, !dbg !1159
  %conv = trunc i64 %45 to i32, !dbg !1159
  store i32 %conv, i32* %retval, align 4, !dbg !1160
  br label %return, !dbg !1160

if.end:                                           ; preds = %if.then23
  %46 = load i64, i64* %rate, align 8, !dbg !1161
  %47 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1162
  %rate32 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %47, i32 0, i32 0, !dbg !1163
  store i64 %46, i64* %rate32, align 8, !dbg !1164
  store i32 0, i32* %retval, align 4, !dbg !1165
  br label %return, !dbg !1165

if.end33:                                         ; preds = %if.then20
  store i32 0, i32* %i, align 4, !dbg !1166
  br label %for.cond, !dbg !1168

for.cond:                                         ; preds = %for.inc, %if.end33
  %48 = load i32, i32* %i, align 4, !dbg !1169
  %49 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1171
  %call34 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %49) #8, !dbg !1172
  %cmp35 = icmp ult i32 %48, %call34, !dbg !1173
  br i1 %cmp35, label %for.body, label %for.end, !dbg !1174

for.body:                                         ; preds = %for.cond
  %50 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1175
  %51 = load i32, i32* %i, align 4, !dbg !1177
  %call37 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %50, i32 %51) #8, !dbg !1178
  store %struct.clk_hw* %call37, %struct.clk_hw** %parent, align 8, !dbg !1179
  %52 = load %struct.clk_hw*, %struct.clk_hw** %parent, align 8, !dbg !1180
  %tobool38 = icmp ne %struct.clk_hw* %52, null, !dbg !1180
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !1182

if.then39:                                        ; preds = %for.body
  br label %for.inc, !dbg !1183

if.end40:                                         ; preds = %for.body
  %53 = load %struct.clk_hw*, %struct.clk_hw** %parent, align 8, !dbg !1184
  %call41 = call i64 @clk_hw_get_rate(%struct.clk_hw* %53) #8, !dbg !1185
  store i64 %call41, i64* %parent_rate, align 8, !dbg !1186
  %54 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1187
  %round_rate42 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %54, i32 0, i32 11, !dbg !1188
  %55 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate42, align 8, !dbg !1188
  %56 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1189
  %57 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1190
  %rate43 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %57, i32 0, i32 0, !dbg !1191
  %58 = load i64, i64* %rate43, align 8, !dbg !1191
  %call44 = call i64 %55(%struct.clk_hw* %56, i64 %58, i64* %parent_rate) #8, !dbg !1187
  store i64 %call44, i64* %tmp_rate, align 8, !dbg !1192
  %59 = load i64, i64* %tmp_rate, align 8, !dbg !1193
  %cmp45 = icmp slt i64 %59, 0, !dbg !1195
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !1196

if.then47:                                        ; preds = %if.end40
  br label %for.inc, !dbg !1197

if.end48:                                         ; preds = %if.end40
  call void @llvm.dbg.declare(metadata i64* %__x, metadata !1198, metadata !DIExpression()), !dbg !1200
  %60 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1200
  %rate49 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %60, i32 0, i32 0, !dbg !1200
  %61 = load i64, i64* %rate49, align 8, !dbg !1200
  %62 = load i64, i64* %tmp_rate, align 8, !dbg !1200
  %sub = sub i64 %61, %62, !dbg !1200
  store i64 %sub, i64* %__x, align 8, !dbg !1200
  %63 = load i64, i64* %__x, align 8, !dbg !1200
  %cmp51 = icmp slt i64 %63, 0, !dbg !1200
  br i1 %cmp51, label %cond.true, label %cond.false, !dbg !1200

cond.true:                                        ; preds = %if.end48
  %64 = load i64, i64* %__x, align 8, !dbg !1200
  %sub53 = sub i64 0, %64, !dbg !1200
  br label %cond.end, !dbg !1200

cond.false:                                       ; preds = %if.end48
  %65 = load i64, i64* %__x, align 8, !dbg !1200
  br label %cond.end, !dbg !1200

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub53, %cond.true ], [ %65, %cond.false ], !dbg !1200
  store i64 %cond, i64* %tmp50, align 8, !dbg !1200
  %66 = load i64, i64* %tmp50, align 8, !dbg !1200
  store i64 %66, i64* %rate_diff, align 8, !dbg !1201
  %67 = load i64, i64* %rate_diff, align 8, !dbg !1202
  %tobool54 = icmp ne i64 %67, 0, !dbg !1202
  br i1 %tobool54, label %lor.lhs.false, label %if.then60, !dbg !1204

lor.lhs.false:                                    ; preds = %cond.end
  %68 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1205
  %best_parent_hw55 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %68, i32 0, i32 4, !dbg !1206
  %69 = load %struct.clk_hw*, %struct.clk_hw** %best_parent_hw55, align 8, !dbg !1206
  %tobool56 = icmp ne %struct.clk_hw* %69, null, !dbg !1205
  br i1 %tobool56, label %lor.lhs.false57, label %if.then60, !dbg !1207

lor.lhs.false57:                                  ; preds = %lor.lhs.false
  %70 = load i64, i64* %best_rate_diff, align 8, !dbg !1208
  %71 = load i64, i64* %rate_diff, align 8, !dbg !1209
  %cmp58 = icmp ugt i64 %70, %71, !dbg !1210
  br i1 %cmp58, label %if.then60, label %if.end63, !dbg !1211

if.then60:                                        ; preds = %lor.lhs.false57, %lor.lhs.false, %cond.end
  %72 = load %struct.clk_hw*, %struct.clk_hw** %parent, align 8, !dbg !1212
  %73 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1214
  %best_parent_hw61 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %73, i32 0, i32 4, !dbg !1215
  store %struct.clk_hw* %72, %struct.clk_hw** %best_parent_hw61, align 8, !dbg !1216
  %74 = load i64, i64* %parent_rate, align 8, !dbg !1217
  %75 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1218
  %best_parent_rate62 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %75, i32 0, i32 3, !dbg !1219
  store i64 %74, i64* %best_parent_rate62, align 8, !dbg !1220
  %76 = load i64, i64* %rate_diff, align 8, !dbg !1221
  store i64 %76, i64* %best_rate_diff, align 8, !dbg !1222
  %77 = load i64, i64* %tmp_rate, align 8, !dbg !1223
  store i64 %77, i64* %best_rate, align 8, !dbg !1224
  br label %if.end63, !dbg !1225

if.end63:                                         ; preds = %if.then60, %lor.lhs.false57
  %78 = load i64, i64* %rate_diff, align 8, !dbg !1226
  %tobool64 = icmp ne i64 %78, 0, !dbg !1226
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !1228

if.then65:                                        ; preds = %if.end63
  store i32 0, i32* %retval, align 4, !dbg !1229
  br label %return, !dbg !1229

if.end66:                                         ; preds = %if.end63
  br label %for.inc, !dbg !1230

for.inc:                                          ; preds = %if.end66, %if.then47, %if.then39
  %79 = load i32, i32* %i, align 4, !dbg !1231
  %inc = add i32 %79, 1, !dbg !1231
  store i32 %inc, i32* %i, align 4, !dbg !1231
  br label %for.cond, !dbg !1232, !llvm.loop !1233

for.end:                                          ; preds = %for.cond
  %80 = load i64, i64* %best_rate, align 8, !dbg !1235
  %81 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1236
  %rate67 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %81, i32 0, i32 0, !dbg !1237
  store i64 %80, i64* %rate67, align 8, !dbg !1238
  store i32 0, i32* %retval, align 4, !dbg !1239
  br label %return, !dbg !1239

if.else68:                                        ; preds = %land.lhs.true18, %land.lhs.true16, %land.lhs.true14, %land.lhs.true12, %land.lhs.true10, %if.else
  %82 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1240
  %tobool69 = icmp ne %struct.clk_hw* %82, null, !dbg !1240
  br i1 %tobool69, label %land.lhs.true70, label %if.else78, !dbg !1242

land.lhs.true70:                                  ; preds = %if.else68
  %83 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops, align 8, !dbg !1243
  %tobool71 = icmp ne %struct.clk_ops* %83, null, !dbg !1243
  br i1 %tobool71, label %land.lhs.true72, label %if.else78, !dbg !1244

land.lhs.true72:                                  ; preds = %land.lhs.true70
  %84 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops, align 8, !dbg !1245
  %determine_rate73 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %84, i32 0, i32 12, !dbg !1246
  %85 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate73, align 8, !dbg !1246
  %tobool74 = icmp ne i32 (%struct.clk_hw*, %struct.clk_rate_request*)* %85, null, !dbg !1245
  br i1 %tobool74, label %if.then75, label %if.else78, !dbg !1247

if.then75:                                        ; preds = %land.lhs.true72
  %86 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1248
  %87 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1250
  call void @__clk_hw_set_clk(%struct.clk_hw* %86, %struct.clk_hw* %87) #8, !dbg !1251
  %88 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops, align 8, !dbg !1252
  %determine_rate76 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %88, i32 0, i32 12, !dbg !1253
  %89 = load i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)** %determine_rate76, align 8, !dbg !1253
  %90 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1254
  %91 = load %struct.clk_rate_request*, %struct.clk_rate_request** %req.addr, align 8, !dbg !1255
  %call77 = call i32 %89(%struct.clk_hw* %90, %struct.clk_rate_request* %91) #8, !dbg !1252
  store i32 %call77, i32* %retval, align 4, !dbg !1256
  br label %return, !dbg !1256

if.else78:                                        ; preds = %land.lhs.true72, %land.lhs.true70, %if.else68
  %call79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0)) #12, !dbg !1257
  store i32 -22, i32* %retval, align 4, !dbg !1259
  br label %return, !dbg !1259

return:                                           ; preds = %if.else78, %if.then75, %for.end, %if.then65, %if.end, %if.then31, %if.then
  %92 = load i32, i32* %retval, align 4, !dbg !1260
  ret i32 %92, !dbg !1260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @clk_composite_recalc_rate(%struct.clk_hw* %hw, i64 %parent_rate) #0 !dbg !1261 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %parent_rate.addr = alloca i64, align 8
  %composite = alloca %struct.clk_composite*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_composite*, align 8
  %rate_ops = alloca %struct.clk_ops*, align 8
  %rate_hw = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !1262, metadata !DIExpression()), !dbg !1263
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !1264, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !1266, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1268, metadata !DIExpression()), !dbg !1270
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1270
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1270
  store i8* %1, i8** %__mptr, align 8, !dbg !1270
  br label %do.body, !dbg !1270

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1271

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1270
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1270
  %3 = bitcast i8* %add.ptr to %struct.clk_composite*, !dbg !1270
  store %struct.clk_composite* %3, %struct.clk_composite** %tmp, align 8, !dbg !1271
  %4 = load %struct.clk_composite*, %struct.clk_composite** %tmp, align 8, !dbg !1270
  store %struct.clk_composite* %4, %struct.clk_composite** %composite, align 8, !dbg !1267
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %rate_ops, metadata !1273, metadata !DIExpression()), !dbg !1274
  %5 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1275
  %rate_ops1 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %5, i32 0, i32 6, !dbg !1276
  %6 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops1, align 8, !dbg !1276
  store %struct.clk_ops* %6, %struct.clk_ops** %rate_ops, align 8, !dbg !1274
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %rate_hw, metadata !1277, metadata !DIExpression()), !dbg !1278
  %7 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1279
  %rate_hw2 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %7, i32 0, i32 3, !dbg !1280
  %8 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw2, align 8, !dbg !1280
  store %struct.clk_hw* %8, %struct.clk_hw** %rate_hw, align 8, !dbg !1278
  %9 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1281
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1282
  call void @__clk_hw_set_clk(%struct.clk_hw* %9, %struct.clk_hw* %10) #8, !dbg !1283
  %11 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1284
  %recalc_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %11, i32 0, i32 10, !dbg !1285
  %12 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %recalc_rate, align 8, !dbg !1285
  %13 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1286
  %14 = load i64, i64* %parent_rate.addr, align 8, !dbg !1287
  %call = call i64 %12(%struct.clk_hw* %13, i64 %14) #8, !dbg !1284
  ret i64 %call, !dbg !1288
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @clk_composite_round_rate(%struct.clk_hw* %hw, i64 %rate, i64* %prate) #0 !dbg !1289 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %prate.addr = alloca i64*, align 8
  %composite = alloca %struct.clk_composite*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_composite*, align 8
  %rate_ops = alloca %struct.clk_ops*, align 8
  %rate_hw = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !1290, metadata !DIExpression()), !dbg !1291
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !1292, metadata !DIExpression()), !dbg !1293
  store i64* %prate, i64** %prate.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %prate.addr, metadata !1294, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !1296, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1298, metadata !DIExpression()), !dbg !1300
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1300
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1300
  store i8* %1, i8** %__mptr, align 8, !dbg !1300
  br label %do.body, !dbg !1300

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1301

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1300
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1300
  %3 = bitcast i8* %add.ptr to %struct.clk_composite*, !dbg !1300
  store %struct.clk_composite* %3, %struct.clk_composite** %tmp, align 8, !dbg !1301
  %4 = load %struct.clk_composite*, %struct.clk_composite** %tmp, align 8, !dbg !1300
  store %struct.clk_composite* %4, %struct.clk_composite** %composite, align 8, !dbg !1297
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %rate_ops, metadata !1303, metadata !DIExpression()), !dbg !1304
  %5 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1305
  %rate_ops1 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %5, i32 0, i32 6, !dbg !1306
  %6 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops1, align 8, !dbg !1306
  store %struct.clk_ops* %6, %struct.clk_ops** %rate_ops, align 8, !dbg !1304
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %rate_hw, metadata !1307, metadata !DIExpression()), !dbg !1308
  %7 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1309
  %rate_hw2 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %7, i32 0, i32 3, !dbg !1310
  %8 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw2, align 8, !dbg !1310
  store %struct.clk_hw* %8, %struct.clk_hw** %rate_hw, align 8, !dbg !1308
  %9 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1311
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1312
  call void @__clk_hw_set_clk(%struct.clk_hw* %9, %struct.clk_hw* %10) #8, !dbg !1313
  %11 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1314
  %round_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %11, i32 0, i32 11, !dbg !1315
  %12 = load i64 (%struct.clk_hw*, i64, i64*)*, i64 (%struct.clk_hw*, i64, i64*)** %round_rate, align 8, !dbg !1315
  %13 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1316
  %14 = load i64, i64* %rate.addr, align 8, !dbg !1317
  %15 = load i64*, i64** %prate.addr, align 8, !dbg !1318
  %call = call i64 %12(%struct.clk_hw* %13, i64 %14, i64* %15) #8, !dbg !1314
  ret i64 %call, !dbg !1319
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_composite_set_rate(%struct.clk_hw* %hw, i64 %rate, i64 %parent_rate) #0 !dbg !1320 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %parent_rate.addr = alloca i64, align 8
  %composite = alloca %struct.clk_composite*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_composite*, align 8
  %rate_ops = alloca %struct.clk_ops*, align 8
  %rate_hw = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !1321, metadata !DIExpression()), !dbg !1322
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !1323, metadata !DIExpression()), !dbg !1324
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !1325, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !1327, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1329, metadata !DIExpression()), !dbg !1331
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1331
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1331
  store i8* %1, i8** %__mptr, align 8, !dbg !1331
  br label %do.body, !dbg !1331

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1332

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1331
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1331
  %3 = bitcast i8* %add.ptr to %struct.clk_composite*, !dbg !1331
  store %struct.clk_composite* %3, %struct.clk_composite** %tmp, align 8, !dbg !1332
  %4 = load %struct.clk_composite*, %struct.clk_composite** %tmp, align 8, !dbg !1331
  store %struct.clk_composite* %4, %struct.clk_composite** %composite, align 8, !dbg !1328
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %rate_ops, metadata !1334, metadata !DIExpression()), !dbg !1335
  %5 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1336
  %rate_ops1 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %5, i32 0, i32 6, !dbg !1337
  %6 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops1, align 8, !dbg !1337
  store %struct.clk_ops* %6, %struct.clk_ops** %rate_ops, align 8, !dbg !1335
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %rate_hw, metadata !1338, metadata !DIExpression()), !dbg !1339
  %7 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1340
  %rate_hw2 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %7, i32 0, i32 3, !dbg !1341
  %8 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw2, align 8, !dbg !1341
  store %struct.clk_hw* %8, %struct.clk_hw** %rate_hw, align 8, !dbg !1339
  %9 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1342
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1343
  call void @__clk_hw_set_clk(%struct.clk_hw* %9, %struct.clk_hw* %10) #8, !dbg !1344
  %11 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1345
  %set_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %11, i32 0, i32 15, !dbg !1346
  %12 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate, align 8, !dbg !1346
  %13 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1347
  %14 = load i64, i64* %rate.addr, align 8, !dbg !1348
  %15 = load i64, i64* %parent_rate.addr, align 8, !dbg !1349
  %call = call i32 %12(%struct.clk_hw* %13, i64 %14, i64 %15) #8, !dbg !1345
  ret i32 %call, !dbg !1350
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_composite_set_rate_and_parent(%struct.clk_hw* %hw, i64 %rate, i64 %parent_rate, i8 zeroext %index) #0 !dbg !1351 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %parent_rate.addr = alloca i64, align 8
  %index.addr = alloca i8, align 1
  %composite = alloca %struct.clk_composite*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_composite*, align 8
  %rate_ops = alloca %struct.clk_ops*, align 8
  %mux_ops = alloca %struct.clk_ops*, align 8
  %rate_hw = alloca %struct.clk_hw*, align 8
  %mux_hw = alloca %struct.clk_hw*, align 8
  %temp_rate = alloca i64, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !1352, metadata !DIExpression()), !dbg !1353
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !1354, metadata !DIExpression()), !dbg !1355
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !1356, metadata !DIExpression()), !dbg !1357
  store i8 %index, i8* %index.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %index.addr, metadata !1358, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !1360, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1362, metadata !DIExpression()), !dbg !1364
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1364
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1364
  store i8* %1, i8** %__mptr, align 8, !dbg !1364
  br label %do.body, !dbg !1364

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1365

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1364
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1364
  %3 = bitcast i8* %add.ptr to %struct.clk_composite*, !dbg !1364
  store %struct.clk_composite* %3, %struct.clk_composite** %tmp, align 8, !dbg !1365
  %4 = load %struct.clk_composite*, %struct.clk_composite** %tmp, align 8, !dbg !1364
  store %struct.clk_composite* %4, %struct.clk_composite** %composite, align 8, !dbg !1361
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %rate_ops, metadata !1367, metadata !DIExpression()), !dbg !1368
  %5 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1369
  %rate_ops1 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %5, i32 0, i32 6, !dbg !1370
  %6 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops1, align 8, !dbg !1370
  store %struct.clk_ops* %6, %struct.clk_ops** %rate_ops, align 8, !dbg !1368
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %mux_ops, metadata !1371, metadata !DIExpression()), !dbg !1372
  %7 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1373
  %mux_ops2 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %7, i32 0, i32 5, !dbg !1374
  %8 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops2, align 8, !dbg !1374
  store %struct.clk_ops* %8, %struct.clk_ops** %mux_ops, align 8, !dbg !1372
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %rate_hw, metadata !1375, metadata !DIExpression()), !dbg !1376
  %9 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1377
  %rate_hw3 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %9, i32 0, i32 3, !dbg !1378
  %10 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw3, align 8, !dbg !1378
  store %struct.clk_hw* %10, %struct.clk_hw** %rate_hw, align 8, !dbg !1376
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %mux_hw, metadata !1379, metadata !DIExpression()), !dbg !1380
  %11 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1381
  %mux_hw4 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %11, i32 0, i32 2, !dbg !1382
  %12 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw4, align 8, !dbg !1382
  store %struct.clk_hw* %12, %struct.clk_hw** %mux_hw, align 8, !dbg !1380
  call void @llvm.dbg.declare(metadata i64* %temp_rate, metadata !1383, metadata !DIExpression()), !dbg !1384
  %13 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1385
  %14 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1386
  call void @__clk_hw_set_clk(%struct.clk_hw* %13, %struct.clk_hw* %14) #8, !dbg !1387
  %15 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1388
  %16 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1389
  call void @__clk_hw_set_clk(%struct.clk_hw* %15, %struct.clk_hw* %16) #8, !dbg !1390
  %17 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1391
  %recalc_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %17, i32 0, i32 10, !dbg !1392
  %18 = load i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64)** %recalc_rate, align 8, !dbg !1392
  %19 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1393
  %20 = load i64, i64* %parent_rate.addr, align 8, !dbg !1394
  %call = call i64 %18(%struct.clk_hw* %19, i64 %20) #8, !dbg !1391
  store i64 %call, i64* %temp_rate, align 8, !dbg !1395
  %21 = load i64, i64* %temp_rate, align 8, !dbg !1396
  %22 = load i64, i64* %rate.addr, align 8, !dbg !1398
  %cmp = icmp ugt i64 %21, %22, !dbg !1399
  br i1 %cmp, label %if.then, label %if.else, !dbg !1400

if.then:                                          ; preds = %do.end
  %23 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1401
  %set_rate = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %23, i32 0, i32 15, !dbg !1403
  %24 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate, align 8, !dbg !1403
  %25 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1404
  %26 = load i64, i64* %rate.addr, align 8, !dbg !1405
  %27 = load i64, i64* %parent_rate.addr, align 8, !dbg !1406
  %call5 = call i32 %24(%struct.clk_hw* %25, i64 %26, i64 %27) #8, !dbg !1401
  %28 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops, align 8, !dbg !1407
  %set_parent = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %28, i32 0, i32 13, !dbg !1408
  %29 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent, align 8, !dbg !1408
  %30 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1409
  %31 = load i8, i8* %index.addr, align 1, !dbg !1410
  %call6 = call i32 %29(%struct.clk_hw* %30, i8 zeroext %31) #8, !dbg !1407
  br label %if.end, !dbg !1411

if.else:                                          ; preds = %do.end
  %32 = load %struct.clk_ops*, %struct.clk_ops** %mux_ops, align 8, !dbg !1412
  %set_parent7 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %32, i32 0, i32 13, !dbg !1414
  %33 = load i32 (%struct.clk_hw*, i8)*, i32 (%struct.clk_hw*, i8)** %set_parent7, align 8, !dbg !1414
  %34 = load %struct.clk_hw*, %struct.clk_hw** %mux_hw, align 8, !dbg !1415
  %35 = load i8, i8* %index.addr, align 1, !dbg !1416
  %call8 = call i32 %33(%struct.clk_hw* %34, i8 zeroext %35) #8, !dbg !1412
  %36 = load %struct.clk_ops*, %struct.clk_ops** %rate_ops, align 8, !dbg !1417
  %set_rate9 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %36, i32 0, i32 15, !dbg !1418
  %37 = load i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64)** %set_rate9, align 8, !dbg !1418
  %38 = load %struct.clk_hw*, %struct.clk_hw** %rate_hw, align 8, !dbg !1419
  %39 = load i64, i64* %rate.addr, align 8, !dbg !1420
  %40 = load i64, i64* %parent_rate.addr, align 8, !dbg !1421
  %call10 = call i32 %37(%struct.clk_hw* %38, i64 %39, i64 %40) #8, !dbg !1417
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !1422
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_composite_is_enabled(%struct.clk_hw* %hw) #0 !dbg !1423 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %composite = alloca %struct.clk_composite*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_composite*, align 8
  %gate_ops = alloca %struct.clk_ops*, align 8
  %gate_hw = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !1424, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !1426, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1428, metadata !DIExpression()), !dbg !1430
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1430
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1430
  store i8* %1, i8** %__mptr, align 8, !dbg !1430
  br label %do.body, !dbg !1430

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1431

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1430
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1430
  %3 = bitcast i8* %add.ptr to %struct.clk_composite*, !dbg !1430
  store %struct.clk_composite* %3, %struct.clk_composite** %tmp, align 8, !dbg !1431
  %4 = load %struct.clk_composite*, %struct.clk_composite** %tmp, align 8, !dbg !1430
  store %struct.clk_composite* %4, %struct.clk_composite** %composite, align 8, !dbg !1427
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %gate_ops, metadata !1433, metadata !DIExpression()), !dbg !1434
  %5 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1435
  %gate_ops1 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %5, i32 0, i32 7, !dbg !1436
  %6 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops1, align 8, !dbg !1436
  store %struct.clk_ops* %6, %struct.clk_ops** %gate_ops, align 8, !dbg !1434
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %gate_hw, metadata !1437, metadata !DIExpression()), !dbg !1438
  %7 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1439
  %gate_hw2 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %7, i32 0, i32 4, !dbg !1440
  %8 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw2, align 8, !dbg !1440
  store %struct.clk_hw* %8, %struct.clk_hw** %gate_hw, align 8, !dbg !1438
  %9 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw, align 8, !dbg !1441
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1442
  call void @__clk_hw_set_clk(%struct.clk_hw* %9, %struct.clk_hw* %10) #8, !dbg !1443
  %11 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops, align 8, !dbg !1444
  %is_enabled = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %11, i32 0, i32 6, !dbg !1445
  %12 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %is_enabled, align 8, !dbg !1445
  %13 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw, align 8, !dbg !1446
  %call = call i32 %12(%struct.clk_hw* %13) #8, !dbg !1444
  ret i32 %call, !dbg !1447
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_composite_enable(%struct.clk_hw* %hw) #0 !dbg !1448 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %composite = alloca %struct.clk_composite*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_composite*, align 8
  %gate_ops = alloca %struct.clk_ops*, align 8
  %gate_hw = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !1449, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !1451, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1453, metadata !DIExpression()), !dbg !1455
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1455
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1455
  store i8* %1, i8** %__mptr, align 8, !dbg !1455
  br label %do.body, !dbg !1455

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1456

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1455
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1455
  %3 = bitcast i8* %add.ptr to %struct.clk_composite*, !dbg !1455
  store %struct.clk_composite* %3, %struct.clk_composite** %tmp, align 8, !dbg !1456
  %4 = load %struct.clk_composite*, %struct.clk_composite** %tmp, align 8, !dbg !1455
  store %struct.clk_composite* %4, %struct.clk_composite** %composite, align 8, !dbg !1452
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %gate_ops, metadata !1458, metadata !DIExpression()), !dbg !1459
  %5 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1460
  %gate_ops1 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %5, i32 0, i32 7, !dbg !1461
  %6 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops1, align 8, !dbg !1461
  store %struct.clk_ops* %6, %struct.clk_ops** %gate_ops, align 8, !dbg !1459
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %gate_hw, metadata !1462, metadata !DIExpression()), !dbg !1463
  %7 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1464
  %gate_hw2 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %7, i32 0, i32 4, !dbg !1465
  %8 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw2, align 8, !dbg !1465
  store %struct.clk_hw* %8, %struct.clk_hw** %gate_hw, align 8, !dbg !1463
  %9 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw, align 8, !dbg !1466
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1467
  call void @__clk_hw_set_clk(%struct.clk_hw* %9, %struct.clk_hw* %10) #8, !dbg !1468
  %11 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops, align 8, !dbg !1469
  %enable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %11, i32 0, i32 4, !dbg !1470
  %12 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** %enable, align 8, !dbg !1470
  %13 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw, align 8, !dbg !1471
  %call = call i32 %12(%struct.clk_hw* %13) #8, !dbg !1469
  ret i32 %call, !dbg !1472
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_composite_disable(%struct.clk_hw* %hw) #0 !dbg !1473 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %composite = alloca %struct.clk_composite*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_composite*, align 8
  %gate_ops = alloca %struct.clk_ops*, align 8
  %gate_hw = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !1474, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.declare(metadata %struct.clk_composite** %composite, metadata !1476, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1478, metadata !DIExpression()), !dbg !1480
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1480
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !1480
  store i8* %1, i8** %__mptr, align 8, !dbg !1480
  br label %do.body, !dbg !1480

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1481

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1480
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1480
  %3 = bitcast i8* %add.ptr to %struct.clk_composite*, !dbg !1480
  store %struct.clk_composite* %3, %struct.clk_composite** %tmp, align 8, !dbg !1481
  %4 = load %struct.clk_composite*, %struct.clk_composite** %tmp, align 8, !dbg !1480
  store %struct.clk_composite* %4, %struct.clk_composite** %composite, align 8, !dbg !1477
  call void @llvm.dbg.declare(metadata %struct.clk_ops** %gate_ops, metadata !1483, metadata !DIExpression()), !dbg !1484
  %5 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1485
  %gate_ops1 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %5, i32 0, i32 7, !dbg !1486
  %6 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops1, align 8, !dbg !1486
  store %struct.clk_ops* %6, %struct.clk_ops** %gate_ops, align 8, !dbg !1484
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %gate_hw, metadata !1487, metadata !DIExpression()), !dbg !1488
  %7 = load %struct.clk_composite*, %struct.clk_composite** %composite, align 8, !dbg !1489
  %gate_hw2 = getelementptr inbounds %struct.clk_composite, %struct.clk_composite* %7, i32 0, i32 4, !dbg !1490
  %8 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw2, align 8, !dbg !1490
  store %struct.clk_hw* %8, %struct.clk_hw** %gate_hw, align 8, !dbg !1488
  %9 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw, align 8, !dbg !1491
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !1492
  call void @__clk_hw_set_clk(%struct.clk_hw* %9, %struct.clk_hw* %10) #8, !dbg !1493
  %11 = load %struct.clk_ops*, %struct.clk_ops** %gate_ops, align 8, !dbg !1494
  %disable = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %11, i32 0, i32 5, !dbg !1495
  %12 = load void (%struct.clk_hw*)*, void (%struct.clk_hw*)** %disable, align 8, !dbg !1495
  %13 = load %struct.clk_hw*, %struct.clk_hw** %gate_hw, align 8, !dbg !1496
  call void %12(%struct.clk_hw* %13) #8, !dbg !1494
  ret void, !dbg !1497
}

; Function Attrs: noredzone
declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1498 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1502, metadata !DIExpression()), !dbg !1509
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1511, metadata !DIExpression()), !dbg !1512
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1513, metadata !DIExpression()), !dbg !1514
  %0 = load i64, i64* %size.addr, align 8, !dbg !1515
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1517
  br i1 %1, label %if.then, label %if.end447, !dbg !1518

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1519
  %tobool = icmp ne i64 %2, 0, !dbg !1519
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1522

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1523
  br label %return, !dbg !1523

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1524
  %cmp = icmp ult i64 %3, 4096, !dbg !1526
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1527

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1528
  br label %return, !dbg !1528

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub = sub i64 %4, 1, !dbg !1529
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1529
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1529

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub4 = sub i64 %6, 1, !dbg !1529
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1529
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1529

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub6 = sub i64 %8, 1, !dbg !1529
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1529
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1529

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1529

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub9 = sub i64 %9, 1, !dbg !1529
  %and = and i64 %sub9, -9223372036854775808, !dbg !1529
  %tobool10 = icmp ne i64 %and, 0, !dbg !1529
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1529

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1529

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub13 = sub i64 %10, 1, !dbg !1529
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1529
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1529
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1529

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1529

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub18 = sub i64 %11, 1, !dbg !1529
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1529
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1529
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1529

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1529

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub23 = sub i64 %12, 1, !dbg !1529
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1529
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1529
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1529

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1529

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub28 = sub i64 %13, 1, !dbg !1529
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1529
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1529
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1529

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1529

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub33 = sub i64 %14, 1, !dbg !1529
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1529
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1529
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1529

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1529

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub38 = sub i64 %15, 1, !dbg !1529
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1529
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1529
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1529

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1529

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub43 = sub i64 %16, 1, !dbg !1529
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1529
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1529
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1529

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1529

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub48 = sub i64 %17, 1, !dbg !1529
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1529
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1529
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1529

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1529

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub53 = sub i64 %18, 1, !dbg !1529
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1529
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1529
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1529

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1529

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub58 = sub i64 %19, 1, !dbg !1529
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1529
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1529
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1529

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1529

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub63 = sub i64 %20, 1, !dbg !1529
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1529
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1529
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1529

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1529

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub68 = sub i64 %21, 1, !dbg !1529
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1529
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1529
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1529

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1529

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub73 = sub i64 %22, 1, !dbg !1529
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1529
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1529
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1529

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1529

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub78 = sub i64 %23, 1, !dbg !1529
  %and79 = and i64 %sub78, 562949953421312, !dbg !1529
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1529
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1529

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1529

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub83 = sub i64 %24, 1, !dbg !1529
  %and84 = and i64 %sub83, 281474976710656, !dbg !1529
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1529
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1529

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1529

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub88 = sub i64 %25, 1, !dbg !1529
  %and89 = and i64 %sub88, 140737488355328, !dbg !1529
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1529
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1529

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1529

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub93 = sub i64 %26, 1, !dbg !1529
  %and94 = and i64 %sub93, 70368744177664, !dbg !1529
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1529
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1529

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1529

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub98 = sub i64 %27, 1, !dbg !1529
  %and99 = and i64 %sub98, 35184372088832, !dbg !1529
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1529
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1529

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1529

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub103 = sub i64 %28, 1, !dbg !1529
  %and104 = and i64 %sub103, 17592186044416, !dbg !1529
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1529
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1529

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1529

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub108 = sub i64 %29, 1, !dbg !1529
  %and109 = and i64 %sub108, 8796093022208, !dbg !1529
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1529
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1529

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1529

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub113 = sub i64 %30, 1, !dbg !1529
  %and114 = and i64 %sub113, 4398046511104, !dbg !1529
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1529
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1529

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1529

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub118 = sub i64 %31, 1, !dbg !1529
  %and119 = and i64 %sub118, 2199023255552, !dbg !1529
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1529
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1529

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1529

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub123 = sub i64 %32, 1, !dbg !1529
  %and124 = and i64 %sub123, 1099511627776, !dbg !1529
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1529
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1529

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1529

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub128 = sub i64 %33, 1, !dbg !1529
  %and129 = and i64 %sub128, 549755813888, !dbg !1529
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1529
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1529

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1529

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub133 = sub i64 %34, 1, !dbg !1529
  %and134 = and i64 %sub133, 274877906944, !dbg !1529
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1529
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1529

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1529

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub138 = sub i64 %35, 1, !dbg !1529
  %and139 = and i64 %sub138, 137438953472, !dbg !1529
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1529
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1529

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1529

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub143 = sub i64 %36, 1, !dbg !1529
  %and144 = and i64 %sub143, 68719476736, !dbg !1529
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1529
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1529

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1529

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub148 = sub i64 %37, 1, !dbg !1529
  %and149 = and i64 %sub148, 34359738368, !dbg !1529
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1529
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1529

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1529

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub153 = sub i64 %38, 1, !dbg !1529
  %and154 = and i64 %sub153, 17179869184, !dbg !1529
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1529
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1529

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1529

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub158 = sub i64 %39, 1, !dbg !1529
  %and159 = and i64 %sub158, 8589934592, !dbg !1529
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1529
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1529

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1529

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub163 = sub i64 %40, 1, !dbg !1529
  %and164 = and i64 %sub163, 4294967296, !dbg !1529
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1529
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1529

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1529

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub168 = sub i64 %41, 1, !dbg !1529
  %and169 = and i64 %sub168, 2147483648, !dbg !1529
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1529
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1529

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1529

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub173 = sub i64 %42, 1, !dbg !1529
  %and174 = and i64 %sub173, 1073741824, !dbg !1529
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1529
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1529

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1529

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub178 = sub i64 %43, 1, !dbg !1529
  %and179 = and i64 %sub178, 536870912, !dbg !1529
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1529
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1529

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1529

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub183 = sub i64 %44, 1, !dbg !1529
  %and184 = and i64 %sub183, 268435456, !dbg !1529
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1529
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1529

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1529

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub188 = sub i64 %45, 1, !dbg !1529
  %and189 = and i64 %sub188, 134217728, !dbg !1529
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1529
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1529

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1529

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub193 = sub i64 %46, 1, !dbg !1529
  %and194 = and i64 %sub193, 67108864, !dbg !1529
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1529
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1529

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1529

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub198 = sub i64 %47, 1, !dbg !1529
  %and199 = and i64 %sub198, 33554432, !dbg !1529
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1529
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1529

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1529

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub203 = sub i64 %48, 1, !dbg !1529
  %and204 = and i64 %sub203, 16777216, !dbg !1529
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1529
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1529

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1529

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub208 = sub i64 %49, 1, !dbg !1529
  %and209 = and i64 %sub208, 8388608, !dbg !1529
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1529
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1529

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1529

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub213 = sub i64 %50, 1, !dbg !1529
  %and214 = and i64 %sub213, 4194304, !dbg !1529
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1529
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1529

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1529

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub218 = sub i64 %51, 1, !dbg !1529
  %and219 = and i64 %sub218, 2097152, !dbg !1529
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1529
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1529

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1529

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub223 = sub i64 %52, 1, !dbg !1529
  %and224 = and i64 %sub223, 1048576, !dbg !1529
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1529
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1529

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1529

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub228 = sub i64 %53, 1, !dbg !1529
  %and229 = and i64 %sub228, 524288, !dbg !1529
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1529
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1529

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1529

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub233 = sub i64 %54, 1, !dbg !1529
  %and234 = and i64 %sub233, 262144, !dbg !1529
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1529
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1529

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1529

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub238 = sub i64 %55, 1, !dbg !1529
  %and239 = and i64 %sub238, 131072, !dbg !1529
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1529
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1529

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1529

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub243 = sub i64 %56, 1, !dbg !1529
  %and244 = and i64 %sub243, 65536, !dbg !1529
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1529
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1529

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1529

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub248 = sub i64 %57, 1, !dbg !1529
  %and249 = and i64 %sub248, 32768, !dbg !1529
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1529
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1529

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1529

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub253 = sub i64 %58, 1, !dbg !1529
  %and254 = and i64 %sub253, 16384, !dbg !1529
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1529
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1529

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1529

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub258 = sub i64 %59, 1, !dbg !1529
  %and259 = and i64 %sub258, 8192, !dbg !1529
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1529
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1529

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1529

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub263 = sub i64 %60, 1, !dbg !1529
  %and264 = and i64 %sub263, 4096, !dbg !1529
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1529
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1529

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1529

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub268 = sub i64 %61, 1, !dbg !1529
  %and269 = and i64 %sub268, 2048, !dbg !1529
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1529
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1529

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1529

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub273 = sub i64 %62, 1, !dbg !1529
  %and274 = and i64 %sub273, 1024, !dbg !1529
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1529
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1529

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1529

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub278 = sub i64 %63, 1, !dbg !1529
  %and279 = and i64 %sub278, 512, !dbg !1529
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1529
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1529

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1529

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub283 = sub i64 %64, 1, !dbg !1529
  %and284 = and i64 %sub283, 256, !dbg !1529
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1529
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1529

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1529

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub288 = sub i64 %65, 1, !dbg !1529
  %and289 = and i64 %sub288, 128, !dbg !1529
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1529
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1529

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1529

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub293 = sub i64 %66, 1, !dbg !1529
  %and294 = and i64 %sub293, 64, !dbg !1529
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1529
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1529

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1529

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub298 = sub i64 %67, 1, !dbg !1529
  %and299 = and i64 %sub298, 32, !dbg !1529
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1529
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1529

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1529

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub303 = sub i64 %68, 1, !dbg !1529
  %and304 = and i64 %sub303, 16, !dbg !1529
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1529
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1529

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1529

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub308 = sub i64 %69, 1, !dbg !1529
  %and309 = and i64 %sub308, 8, !dbg !1529
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1529
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1529

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1529

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub313 = sub i64 %70, 1, !dbg !1529
  %and314 = and i64 %sub313, 4, !dbg !1529
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1529
  %71 = zext i1 %tobool315 to i64, !dbg !1529
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1529
  br label %cond.end, !dbg !1529

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1529
  br label %cond.end317, !dbg !1529

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1529
  br label %cond.end319, !dbg !1529

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1529
  br label %cond.end321, !dbg !1529

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1529
  br label %cond.end323, !dbg !1529

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1529
  br label %cond.end325, !dbg !1529

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1529
  br label %cond.end327, !dbg !1529

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1529
  br label %cond.end329, !dbg !1529

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1529
  br label %cond.end331, !dbg !1529

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1529
  br label %cond.end333, !dbg !1529

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1529
  br label %cond.end335, !dbg !1529

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1529
  br label %cond.end337, !dbg !1529

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1529
  br label %cond.end339, !dbg !1529

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1529
  br label %cond.end341, !dbg !1529

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1529
  br label %cond.end343, !dbg !1529

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1529
  br label %cond.end345, !dbg !1529

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1529
  br label %cond.end347, !dbg !1529

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1529
  br label %cond.end349, !dbg !1529

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1529
  br label %cond.end351, !dbg !1529

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1529
  br label %cond.end353, !dbg !1529

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1529
  br label %cond.end355, !dbg !1529

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1529
  br label %cond.end357, !dbg !1529

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1529
  br label %cond.end359, !dbg !1529

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1529
  br label %cond.end361, !dbg !1529

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1529
  br label %cond.end363, !dbg !1529

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1529
  br label %cond.end365, !dbg !1529

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1529
  br label %cond.end367, !dbg !1529

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1529
  br label %cond.end369, !dbg !1529

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1529
  br label %cond.end371, !dbg !1529

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1529
  br label %cond.end373, !dbg !1529

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1529
  br label %cond.end375, !dbg !1529

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1529
  br label %cond.end377, !dbg !1529

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1529
  br label %cond.end379, !dbg !1529

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1529
  br label %cond.end381, !dbg !1529

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1529
  br label %cond.end383, !dbg !1529

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1529
  br label %cond.end385, !dbg !1529

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1529
  br label %cond.end387, !dbg !1529

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1529
  br label %cond.end389, !dbg !1529

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1529
  br label %cond.end391, !dbg !1529

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1529
  br label %cond.end393, !dbg !1529

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1529
  br label %cond.end395, !dbg !1529

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1529
  br label %cond.end397, !dbg !1529

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1529
  br label %cond.end399, !dbg !1529

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1529
  br label %cond.end401, !dbg !1529

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1529
  br label %cond.end403, !dbg !1529

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1529
  br label %cond.end405, !dbg !1529

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1529
  br label %cond.end407, !dbg !1529

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1529
  br label %cond.end409, !dbg !1529

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1529
  br label %cond.end411, !dbg !1529

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1529
  br label %cond.end413, !dbg !1529

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1529
  br label %cond.end415, !dbg !1529

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1529
  br label %cond.end417, !dbg !1529

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1529
  br label %cond.end419, !dbg !1529

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1529
  br label %cond.end421, !dbg !1529

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1529
  br label %cond.end423, !dbg !1529

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1529
  br label %cond.end425, !dbg !1529

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1529
  br label %cond.end427, !dbg !1529

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1529
  br label %cond.end429, !dbg !1529

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1529
  br label %cond.end431, !dbg !1529

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1529
  br label %cond.end433, !dbg !1529

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1529
  br label %cond.end435, !dbg !1529

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1529
  br label %cond.end437, !dbg !1529

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1529
  br label %cond.end440, !dbg !1529

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1529

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1529
  br label %cond.end444, !dbg !1529

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1529
  %sub443 = sub i64 %72, 1, !dbg !1529
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !1529
  br label %cond.end444, !dbg !1529

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1529
  %sub446 = sub i32 %cond445, 12, !dbg !1530
  %add = add i32 %sub446, 1, !dbg !1531
  store i32 %add, i32* %retval, align 4, !dbg !1532
  br label %return, !dbg !1532

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1533
  %dec = add i64 %73, -1, !dbg !1533
  store i64 %dec, i64* %size.addr, align 8, !dbg !1533
  %74 = load i64, i64* %size.addr, align 8, !dbg !1534
  %shr = lshr i64 %74, 12, !dbg !1534
  store i64 %shr, i64* %size.addr, align 8, !dbg !1534
  %75 = load i64, i64* %size.addr, align 8, !dbg !1535
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1512
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1536
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1537
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !1536, !srcloc !1538
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1536
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1539
  %add.i = add i32 %79, 1, !dbg !1540
  store i32 %add.i, i32* %retval, align 4, !dbg !1541
  br label %return, !dbg !1541

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1542
  ret i32 %80, !dbg !1542
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1543 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1502, metadata !DIExpression()), !dbg !1548
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1511, metadata !DIExpression()), !dbg !1550
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1551, metadata !DIExpression()), !dbg !1552
  %0 = load i64, i64* %n.addr, align 8, !dbg !1553
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1550
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1554
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1555
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !1554, !srcloc !1538
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1554
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1556
  %add.i = add i32 %4, 1, !dbg !1557
  %sub = sub i32 %add.i, 1, !dbg !1558
  ret i32 %sub, !dbg !1559
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1560 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1564, metadata !DIExpression()), !dbg !1565
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1566, metadata !DIExpression()), !dbg !1567
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1568, metadata !DIExpression()), !dbg !1569
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1570, metadata !DIExpression()), !dbg !1571
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1572
  ret i8* %0, !dbg !1573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__clk_hw_set_clk(%struct.clk_hw* %dst, %struct.clk_hw* %src) #0 !dbg !1574 {
entry:
  %dst.addr = alloca %struct.clk_hw*, align 8
  %src.addr = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %dst, %struct.clk_hw** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %dst.addr, metadata !1577, metadata !DIExpression()), !dbg !1578
  store %struct.clk_hw* %src, %struct.clk_hw** %src.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %src.addr, metadata !1579, metadata !DIExpression()), !dbg !1580
  %0 = load %struct.clk_hw*, %struct.clk_hw** %src.addr, align 8, !dbg !1581
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %0, i32 0, i32 1, !dbg !1582
  %1 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !1582
  %2 = load %struct.clk_hw*, %struct.clk_hw** %dst.addr, align 8, !dbg !1583
  %clk1 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %2, i32 0, i32 1, !dbg !1584
  store %struct.clk* %1, %struct.clk** %clk1, align 8, !dbg !1585
  %3 = load %struct.clk_hw*, %struct.clk_hw** %src.addr, align 8, !dbg !1586
  %core = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %3, i32 0, i32 0, !dbg !1587
  %4 = load %struct.clk_core*, %struct.clk_core** %core, align 8, !dbg !1587
  %5 = load %struct.clk_hw*, %struct.clk_hw** %dst.addr, align 8, !dbg !1588
  %core2 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %5, i32 0, i32 0, !dbg !1589
  store %struct.clk_core* %4, %struct.clk_core** %core2, align 8, !dbg !1590
  ret void, !dbg !1591
}

; Function Attrs: noredzone
declare dso_local i64 @clk_hw_get_flags(%struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/clk/clk-composite.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4, line: 305, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!11 = !{!12, !13, !152, !62}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_composite", file: !15, line: 1024, size: 2176, elements: !16)
!15 = !DIFile(filename: "./include/linux/clk-provider.h", directory: "/home/lizy2001/genbc/linux")
!16 = !{!17, !145, !146, !147, !148, !149, !150, !151}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !14, file: !15, line: 1025, baseType: !18, size: 192)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_hw", file: !15, line: 312, size: 192, elements: !19)
!19 = !{!20, !23, !26}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !18, file: !15, line: 313, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk_core", file: !15, line: 38, flags: DIFlagFwdDecl)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !18, file: !15, line: 314, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !15, line: 36, flags: DIFlagFwdDecl)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !18, file: !15, line: 315, baseType: !27, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_init_data", file: !15, line: 285, size: 448, elements: !30)
!30 = !{!31, !35, !127, !130, !141, !143, !144}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !29, file: !15, line: 286, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !29, file: !15, line: 287, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_ops", file: !15, line: 220, size: 1600, elements: !39)
!39 = !{!40, !46, !50, !51, !52, !53, !54, !55, !56, !57, !58, !63, !69, !81, !90, !94, !98, !102, !103, !104, !108, !117, !118, !119, !120}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !38, file: !15, line: 221, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !45}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !38, file: !15, line: 222, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !45}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !38, file: !15, line: 223, baseType: !41, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_unused", scope: !38, file: !15, line: 224, baseType: !47, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !38, file: !15, line: 225, baseType: !41, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !38, file: !15, line: 226, baseType: !47, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "is_enabled", scope: !38, file: !15, line: 227, baseType: !41, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "disable_unused", scope: !38, file: !15, line: 228, baseType: !47, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "save_context", scope: !38, file: !15, line: 229, baseType: !41, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "restore_context", scope: !38, file: !15, line: 230, baseType: !47, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_rate", scope: !38, file: !15, line: 231, baseType: !59, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !45, !62}
!62 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "round_rate", scope: !38, file: !15, line: 233, baseType: !64, size: 64, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !45, !62, !68}
!67 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "determine_rate", scope: !38, file: !15, line: 235, baseType: !70, size: 64, offset: 768)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!44, !45, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_rate_request", file: !15, line: 55, size: 320, elements: !75)
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !74, file: !15, line: 56, baseType: !62, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "min_rate", scope: !74, file: !15, line: 57, baseType: !62, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "max_rate", scope: !74, file: !15, line: 58, baseType: !62, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_rate", scope: !74, file: !15, line: 59, baseType: !62, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_hw", scope: !74, file: !15, line: 60, baseType: !45, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "set_parent", scope: !38, file: !15, line: 237, baseType: !82, size: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!44, !45, !85}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !86, line: 17, baseType: !87)
!86 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !88, line: 21, baseType: !89)
!88 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !38, file: !15, line: 238, baseType: !91, size: 64, offset: 896)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!85, !45}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !38, file: !15, line: 239, baseType: !95, size: 64, offset: 960)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!44, !45, !62, !62}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate_and_parent", scope: !38, file: !15, line: 241, baseType: !99, size: 64, offset: 1024)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!44, !45, !62, !62, !85}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_accuracy", scope: !38, file: !15, line: 244, baseType: !59, size: 64, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "get_phase", scope: !38, file: !15, line: 246, baseType: !41, size: 64, offset: 1152)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "set_phase", scope: !38, file: !15, line: 247, baseType: !105, size: 64, offset: 1216)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!44, !45, !44}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "get_duty_cycle", scope: !38, file: !15, line: 248, baseType: !109, size: 64, offset: 1280)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !45, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_duty", file: !15, line: 69, size: 64, elements: !114)
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !113, file: !15, line: 70, baseType: !5, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !113, file: !15, line: 71, baseType: !5, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "set_duty_cycle", scope: !38, file: !15, line: 250, baseType: !109, size: 64, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !38, file: !15, line: 252, baseType: !41, size: 64, offset: 1408)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !38, file: !15, line: 253, baseType: !47, size: 64, offset: 1472)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "debug_init", scope: !38, file: !15, line: 254, baseType: !121, size: 64, offset: 1536)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !45, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !126, line: 21, flags: DIFlagFwdDecl)
!126 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!127 = !DIDerivedType(tag: DW_TAG_member, name: "parent_names", scope: !29, file: !15, line: 289, baseType: !128, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !29, file: !15, line: 290, baseType: !131, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_parent_data", file: !15, line: 264, size: 256, elements: !134)
!134 = !{!135, !138, !139, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !133, file: !15, line: 265, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "fw_name", scope: !133, file: !15, line: 266, baseType: !32, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !15, line: 267, baseType: !32, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !133, file: !15, line: 268, baseType: !44, size: 32, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "parent_hws", scope: !29, file: !15, line: 291, baseType: !142, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !29, file: !15, line: 292, baseType: !85, size: 8, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !29, file: !15, line: 293, baseType: !62, size: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !14, file: !15, line: 1026, baseType: !38, size: 1600, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mux_hw", scope: !14, file: !15, line: 1028, baseType: !45, size: 64, offset: 1792)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rate_hw", scope: !14, file: !15, line: 1029, baseType: !45, size: 64, offset: 1856)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "gate_hw", scope: !14, file: !15, line: 1030, baseType: !45, size: 64, offset: 1920)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mux_ops", scope: !14, file: !15, line: 1032, baseType: !36, size: 64, offset: 1984)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "rate_ops", scope: !14, file: !15, line: 1033, baseType: !36, size: 64, offset: 2048)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "gate_ops", scope: !14, file: !15, line: 1034, baseType: !36, size: 64, offset: 2112)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !153, line: 148, baseType: !5)
!153 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!154 = !{i32 7, !"Dwarf Version", i32 4}
!155 = !{i32 2, !"Debug Info Version", i32 3}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"Code Model", i32 2}
!158 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!159 = distinct !DISubprogram(name: "clk_hw_register_composite", scope: !1, file: !1, line: 319, type: !160, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !165)
!160 = !DISubroutineType(types: !161)
!161 = !{!45, !162, !32, !128, !44, !45, !36, !45, !36, !45, !36, !62}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !164, line: 15, flags: DIFlagFwdDecl)
!164 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{}
!166 = !DILocalVariable(name: "dev", arg: 1, scope: !159, file: !1, line: 319, type: !162)
!167 = !DILocation(line: 319, column: 57, scope: !159)
!168 = !DILocalVariable(name: "name", arg: 2, scope: !159, file: !1, line: 319, type: !32)
!169 = !DILocation(line: 319, column: 74, scope: !159)
!170 = !DILocalVariable(name: "parent_names", arg: 3, scope: !159, file: !1, line: 320, type: !128)
!171 = !DILocation(line: 320, column: 24, scope: !159)
!172 = !DILocalVariable(name: "num_parents", arg: 4, scope: !159, file: !1, line: 320, type: !44)
!173 = !DILocation(line: 320, column: 42, scope: !159)
!174 = !DILocalVariable(name: "mux_hw", arg: 5, scope: !159, file: !1, line: 321, type: !45)
!175 = !DILocation(line: 321, column: 19, scope: !159)
!176 = !DILocalVariable(name: "mux_ops", arg: 6, scope: !159, file: !1, line: 321, type: !36)
!177 = !DILocation(line: 321, column: 49, scope: !159)
!178 = !DILocalVariable(name: "rate_hw", arg: 7, scope: !159, file: !1, line: 322, type: !45)
!179 = !DILocation(line: 322, column: 19, scope: !159)
!180 = !DILocalVariable(name: "rate_ops", arg: 8, scope: !159, file: !1, line: 322, type: !36)
!181 = !DILocation(line: 322, column: 50, scope: !159)
!182 = !DILocalVariable(name: "gate_hw", arg: 9, scope: !159, file: !1, line: 323, type: !45)
!183 = !DILocation(line: 323, column: 19, scope: !159)
!184 = !DILocalVariable(name: "gate_ops", arg: 10, scope: !159, file: !1, line: 323, type: !36)
!185 = !DILocation(line: 323, column: 50, scope: !159)
!186 = !DILocalVariable(name: "flags", arg: 11, scope: !159, file: !1, line: 324, type: !62)
!187 = !DILocation(line: 324, column: 18, scope: !159)
!188 = !DILocation(line: 326, column: 37, scope: !159)
!189 = !DILocation(line: 326, column: 42, scope: !159)
!190 = !DILocation(line: 326, column: 48, scope: !159)
!191 = !DILocation(line: 327, column: 9, scope: !159)
!192 = !DILocation(line: 327, column: 22, scope: !159)
!193 = !DILocation(line: 327, column: 30, scope: !159)
!194 = !DILocation(line: 328, column: 9, scope: !159)
!195 = !DILocation(line: 328, column: 18, scope: !159)
!196 = !DILocation(line: 328, column: 28, scope: !159)
!197 = !DILocation(line: 329, column: 9, scope: !159)
!198 = !DILocation(line: 329, column: 19, scope: !159)
!199 = !DILocation(line: 326, column: 9, scope: !159)
!200 = !DILocation(line: 326, column: 2, scope: !159)
!201 = distinct !DISubprogram(name: "__clk_hw_register_composite", scope: !1, file: !1, line: 202, type: !202, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!202 = !DISubroutineType(types: !203)
!203 = !{!45, !162, !32, !128, !131, !44, !45, !36, !45, !36, !45, !36, !62}
!204 = !DILocalVariable(name: "dev", arg: 1, scope: !201, file: !1, line: 202, type: !162)
!205 = !DILocation(line: 202, column: 66, scope: !201)
!206 = !DILocalVariable(name: "name", arg: 2, scope: !201, file: !1, line: 203, type: !32)
!207 = !DILocation(line: 203, column: 16, scope: !201)
!208 = !DILocalVariable(name: "parent_names", arg: 3, scope: !201, file: !1, line: 203, type: !128)
!209 = !DILocation(line: 203, column: 42, scope: !201)
!210 = !DILocalVariable(name: "pdata", arg: 4, scope: !201, file: !1, line: 204, type: !131)
!211 = !DILocation(line: 204, column: 34, scope: !201)
!212 = !DILocalVariable(name: "num_parents", arg: 5, scope: !201, file: !1, line: 204, type: !44)
!213 = !DILocation(line: 204, column: 45, scope: !201)
!214 = !DILocalVariable(name: "mux_hw", arg: 6, scope: !201, file: !1, line: 205, type: !45)
!215 = !DILocation(line: 205, column: 19, scope: !201)
!216 = !DILocalVariable(name: "mux_ops", arg: 7, scope: !201, file: !1, line: 205, type: !36)
!217 = !DILocation(line: 205, column: 49, scope: !201)
!218 = !DILocalVariable(name: "rate_hw", arg: 8, scope: !201, file: !1, line: 206, type: !45)
!219 = !DILocation(line: 206, column: 19, scope: !201)
!220 = !DILocalVariable(name: "rate_ops", arg: 9, scope: !201, file: !1, line: 206, type: !36)
!221 = !DILocation(line: 206, column: 50, scope: !201)
!222 = !DILocalVariable(name: "gate_hw", arg: 10, scope: !201, file: !1, line: 207, type: !45)
!223 = !DILocation(line: 207, column: 19, scope: !201)
!224 = !DILocalVariable(name: "gate_ops", arg: 11, scope: !201, file: !1, line: 207, type: !36)
!225 = !DILocation(line: 207, column: 50, scope: !201)
!226 = !DILocalVariable(name: "flags", arg: 12, scope: !201, file: !1, line: 208, type: !62)
!227 = !DILocation(line: 208, column: 18, scope: !201)
!228 = !DILocalVariable(name: "hw", scope: !201, file: !1, line: 210, type: !45)
!229 = !DILocation(line: 210, column: 17, scope: !201)
!230 = !DILocalVariable(name: "init", scope: !201, file: !1, line: 211, type: !29)
!231 = !DILocation(line: 211, column: 23, scope: !201)
!232 = !DILocalVariable(name: "composite", scope: !201, file: !1, line: 212, type: !13)
!233 = !DILocation(line: 212, column: 24, scope: !201)
!234 = !DILocalVariable(name: "clk_composite_ops", scope: !201, file: !1, line: 213, type: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!236 = !DILocation(line: 213, column: 18, scope: !201)
!237 = !DILocalVariable(name: "ret", scope: !201, file: !1, line: 214, type: !44)
!238 = !DILocation(line: 214, column: 6, scope: !201)
!239 = !DILocation(line: 216, column: 14, scope: !201)
!240 = !DILocation(line: 216, column: 12, scope: !201)
!241 = !DILocation(line: 217, column: 7, scope: !242)
!242 = distinct !DILexicalBlock(scope: !201, file: !1, line: 217, column: 6)
!243 = !DILocation(line: 217, column: 6, scope: !201)
!244 = !DILocation(line: 218, column: 10, scope: !242)
!245 = !DILocation(line: 218, column: 3, scope: !242)
!246 = !DILocation(line: 220, column: 14, scope: !201)
!247 = !DILocation(line: 220, column: 7, scope: !201)
!248 = !DILocation(line: 220, column: 12, scope: !201)
!249 = !DILocation(line: 221, column: 15, scope: !201)
!250 = !DILocation(line: 221, column: 7, scope: !201)
!251 = !DILocation(line: 221, column: 13, scope: !201)
!252 = !DILocation(line: 222, column: 6, scope: !253)
!253 = distinct !DILexicalBlock(scope: !201, file: !1, line: 222, column: 6)
!254 = !DILocation(line: 222, column: 6, scope: !201)
!255 = !DILocation(line: 223, column: 23, scope: !253)
!256 = !DILocation(line: 223, column: 8, scope: !253)
!257 = !DILocation(line: 223, column: 21, scope: !253)
!258 = !DILocation(line: 223, column: 3, scope: !253)
!259 = !DILocation(line: 225, column: 22, scope: !253)
!260 = !DILocation(line: 225, column: 8, scope: !253)
!261 = !DILocation(line: 225, column: 20, scope: !253)
!262 = !DILocation(line: 226, column: 21, scope: !201)
!263 = !DILocation(line: 226, column: 7, scope: !201)
!264 = !DILocation(line: 226, column: 19, scope: !201)
!265 = !DILocation(line: 227, column: 8, scope: !201)
!266 = !DILocation(line: 227, column: 19, scope: !201)
!267 = !DILocation(line: 227, column: 5, scope: !201)
!268 = !DILocation(line: 229, column: 23, scope: !201)
!269 = !DILocation(line: 229, column: 34, scope: !201)
!270 = !DILocation(line: 229, column: 20, scope: !201)
!271 = !DILocation(line: 231, column: 6, scope: !272)
!272 = distinct !DILexicalBlock(scope: !201, file: !1, line: 231, column: 6)
!273 = !DILocation(line: 231, column: 13, scope: !272)
!274 = !DILocation(line: 231, column: 16, scope: !272)
!275 = !DILocation(line: 231, column: 6, scope: !201)
!276 = !DILocation(line: 232, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !1, line: 232, column: 7)
!278 = distinct !DILexicalBlock(scope: !272, file: !1, line: 231, column: 25)
!279 = !DILocation(line: 232, column: 17, scope: !277)
!280 = !DILocation(line: 232, column: 7, scope: !278)
!281 = !DILocation(line: 233, column: 9, scope: !282)
!282 = distinct !DILexicalBlock(scope: !277, file: !1, line: 232, column: 29)
!283 = !DILocation(line: 233, column: 7, scope: !282)
!284 = !DILocation(line: 234, column: 4, scope: !282)
!285 = !DILocation(line: 237, column: 23, scope: !278)
!286 = !DILocation(line: 237, column: 3, scope: !278)
!287 = !DILocation(line: 237, column: 14, scope: !278)
!288 = !DILocation(line: 237, column: 21, scope: !278)
!289 = !DILocation(line: 238, column: 24, scope: !278)
!290 = !DILocation(line: 238, column: 3, scope: !278)
!291 = !DILocation(line: 238, column: 14, scope: !278)
!292 = !DILocation(line: 238, column: 22, scope: !278)
!293 = !DILocation(line: 239, column: 3, scope: !278)
!294 = !DILocation(line: 239, column: 22, scope: !278)
!295 = !DILocation(line: 239, column: 33, scope: !278)
!296 = !DILocation(line: 240, column: 7, scope: !297)
!297 = distinct !DILexicalBlock(scope: !278, file: !1, line: 240, column: 7)
!298 = !DILocation(line: 240, column: 16, scope: !297)
!299 = !DILocation(line: 240, column: 7, scope: !278)
!300 = !DILocation(line: 241, column: 4, scope: !297)
!301 = !DILocation(line: 241, column: 23, scope: !297)
!302 = !DILocation(line: 241, column: 34, scope: !297)
!303 = !DILocation(line: 242, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !278, file: !1, line: 242, column: 7)
!305 = !DILocation(line: 242, column: 16, scope: !304)
!306 = !DILocation(line: 242, column: 7, scope: !278)
!307 = !DILocation(line: 243, column: 4, scope: !304)
!308 = !DILocation(line: 243, column: 23, scope: !304)
!309 = !DILocation(line: 243, column: 38, scope: !304)
!310 = !DILocation(line: 244, column: 2, scope: !278)
!311 = !DILocation(line: 246, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !201, file: !1, line: 246, column: 6)
!313 = !DILocation(line: 246, column: 14, scope: !312)
!314 = !DILocation(line: 246, column: 17, scope: !312)
!315 = !DILocation(line: 246, column: 6, scope: !201)
!316 = !DILocation(line: 247, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 247, column: 7)
!318 = distinct !DILexicalBlock(scope: !312, file: !1, line: 246, column: 27)
!319 = !DILocation(line: 247, column: 18, scope: !317)
!320 = !DILocation(line: 247, column: 7, scope: !318)
!321 = !DILocation(line: 248, column: 9, scope: !322)
!322 = distinct !DILexicalBlock(scope: !317, file: !1, line: 247, column: 31)
!323 = !DILocation(line: 248, column: 7, scope: !322)
!324 = !DILocation(line: 249, column: 4, scope: !322)
!325 = !DILocation(line: 251, column: 3, scope: !318)
!326 = !DILocation(line: 251, column: 22, scope: !318)
!327 = !DILocation(line: 251, column: 34, scope: !318)
!328 = !DILocation(line: 253, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !318, file: !1, line: 253, column: 7)
!330 = !DILocation(line: 253, column: 17, scope: !329)
!331 = !DILocation(line: 253, column: 7, scope: !318)
!332 = !DILocation(line: 254, column: 4, scope: !329)
!333 = !DILocation(line: 254, column: 23, scope: !329)
!334 = !DILocation(line: 254, column: 38, scope: !329)
!335 = !DILocation(line: 256, column: 12, scope: !336)
!336 = distinct !DILexicalBlock(scope: !329, file: !1, line: 256, column: 12)
!337 = !DILocation(line: 256, column: 22, scope: !336)
!338 = !DILocation(line: 256, column: 12, scope: !329)
!339 = !DILocation(line: 257, column: 4, scope: !336)
!340 = !DILocation(line: 257, column: 23, scope: !336)
!341 = !DILocation(line: 257, column: 34, scope: !336)
!342 = !DILocation(line: 261, column: 7, scope: !343)
!343 = distinct !DILexicalBlock(scope: !318, file: !1, line: 261, column: 7)
!344 = !DILocation(line: 261, column: 17, scope: !343)
!345 = !DILocation(line: 261, column: 7, scope: !318)
!346 = !DILocation(line: 262, column: 8, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 262, column: 8)
!348 = distinct !DILexicalBlock(scope: !343, file: !1, line: 261, column: 27)
!349 = !DILocation(line: 262, column: 18, scope: !347)
!350 = !DILocation(line: 262, column: 33, scope: !347)
!351 = !DILocation(line: 262, column: 36, scope: !347)
!352 = !DILocation(line: 262, column: 46, scope: !347)
!353 = !DILocation(line: 262, column: 8, scope: !348)
!354 = !DILocation(line: 263, column: 5, scope: !347)
!355 = !DILocation(line: 263, column: 24, scope: !347)
!356 = !DILocation(line: 263, column: 33, scope: !347)
!357 = !DILocalVariable(name: "__ret_warn_on", scope: !358, file: !1, line: 266, type: !44)
!358 = distinct !DILexicalBlock(scope: !347, file: !1, line: 266, column: 5)
!359 = !DILocation(line: 266, column: 5, scope: !358)
!360 = !DILocation(line: 266, column: 5, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !1, line: 266, column: 5)
!362 = !DILocation(line: 266, column: 5, scope: !363)
!363 = distinct !DILexicalBlock(scope: !361, file: !1, line: 266, column: 5)
!364 = !DILocation(line: 266, column: 5, scope: !365)
!365 = distinct !DILexicalBlock(scope: !363, file: !1, line: 266, column: 5)
!366 = !DILocation(line: 266, column: 5, scope: !367)
!367 = distinct !DILexicalBlock(scope: !363, file: !1, line: 266, column: 5)
!368 = !DILocation(line: 266, column: 5, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !1, line: 266, column: 5)
!370 = !DILocation(line: 266, column: 5, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !1, line: 266, column: 5)
!372 = !{i32 -2144211858, i32 -2144211829, i32 -2144211783, i32 -2144211725, i32 -2144211671, i32 -2144211617, i32 -2144211562, i32 -2144211531}
!373 = !DILocation(line: 266, column: 5, scope: !374)
!374 = distinct !DILexicalBlock(scope: !367, file: !1, line: 266, column: 5)
!375 = !{i32 -2144211111, i32 -2144211104, i32 -2144211052, i32 -2144211021, i32 -2144210991}
!376 = !DILocation(line: 266, column: 5, scope: !377)
!377 = distinct !DILexicalBlock(scope: !367, file: !1, line: 266, column: 5)
!378 = !DILocation(line: 266, column: 5, scope: !379)
!379 = distinct !DILexicalBlock(scope: !363, file: !1, line: 266, column: 5)
!380 = !DILocation(line: 268, column: 3, scope: !348)
!381 = !DILocation(line: 270, column: 24, scope: !318)
!382 = !DILocation(line: 270, column: 3, scope: !318)
!383 = !DILocation(line: 270, column: 14, scope: !318)
!384 = !DILocation(line: 270, column: 22, scope: !318)
!385 = !DILocation(line: 271, column: 25, scope: !318)
!386 = !DILocation(line: 271, column: 3, scope: !318)
!387 = !DILocation(line: 271, column: 14, scope: !318)
!388 = !DILocation(line: 271, column: 23, scope: !318)
!389 = !DILocation(line: 272, column: 2, scope: !318)
!390 = !DILocation(line: 274, column: 6, scope: !391)
!391 = distinct !DILexicalBlock(scope: !201, file: !1, line: 274, column: 6)
!392 = !DILocation(line: 274, column: 13, scope: !391)
!393 = !DILocation(line: 274, column: 16, scope: !391)
!394 = !DILocation(line: 274, column: 24, scope: !391)
!395 = !DILocation(line: 274, column: 27, scope: !391)
!396 = !DILocation(line: 274, column: 35, scope: !391)
!397 = !DILocation(line: 274, column: 38, scope: !391)
!398 = !DILocation(line: 274, column: 6, scope: !201)
!399 = !DILocation(line: 275, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 275, column: 7)
!401 = distinct !DILexicalBlock(scope: !391, file: !1, line: 274, column: 48)
!402 = !DILocation(line: 275, column: 16, scope: !400)
!403 = !DILocation(line: 275, column: 27, scope: !400)
!404 = !DILocation(line: 275, column: 30, scope: !400)
!405 = !DILocation(line: 275, column: 40, scope: !400)
!406 = !DILocation(line: 275, column: 7, scope: !401)
!407 = !DILocation(line: 276, column: 4, scope: !400)
!408 = !DILocation(line: 276, column: 23, scope: !400)
!409 = !DILocation(line: 276, column: 43, scope: !400)
!410 = !DILocation(line: 278, column: 2, scope: !401)
!411 = !DILocation(line: 280, column: 6, scope: !412)
!412 = distinct !DILexicalBlock(scope: !201, file: !1, line: 280, column: 6)
!413 = !DILocation(line: 280, column: 14, scope: !412)
!414 = !DILocation(line: 280, column: 17, scope: !412)
!415 = !DILocation(line: 280, column: 6, scope: !201)
!416 = !DILocation(line: 281, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !1, line: 281, column: 7)
!418 = distinct !DILexicalBlock(scope: !412, file: !1, line: 280, column: 27)
!419 = !DILocation(line: 281, column: 18, scope: !417)
!420 = !DILocation(line: 281, column: 29, scope: !417)
!421 = !DILocation(line: 281, column: 33, scope: !417)
!422 = !DILocation(line: 281, column: 43, scope: !417)
!423 = !DILocation(line: 281, column: 50, scope: !417)
!424 = !DILocation(line: 282, column: 8, scope: !417)
!425 = !DILocation(line: 282, column: 18, scope: !417)
!426 = !DILocation(line: 281, column: 7, scope: !418)
!427 = !DILocation(line: 283, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !417, file: !1, line: 282, column: 27)
!429 = !DILocation(line: 283, column: 7, scope: !428)
!430 = !DILocation(line: 284, column: 4, scope: !428)
!431 = !DILocation(line: 287, column: 24, scope: !418)
!432 = !DILocation(line: 287, column: 3, scope: !418)
!433 = !DILocation(line: 287, column: 14, scope: !418)
!434 = !DILocation(line: 287, column: 22, scope: !418)
!435 = !DILocation(line: 288, column: 25, scope: !418)
!436 = !DILocation(line: 288, column: 3, scope: !418)
!437 = !DILocation(line: 288, column: 14, scope: !418)
!438 = !DILocation(line: 288, column: 23, scope: !418)
!439 = !DILocation(line: 289, column: 3, scope: !418)
!440 = !DILocation(line: 289, column: 22, scope: !418)
!441 = !DILocation(line: 289, column: 33, scope: !418)
!442 = !DILocation(line: 290, column: 3, scope: !418)
!443 = !DILocation(line: 290, column: 22, scope: !418)
!444 = !DILocation(line: 290, column: 29, scope: !418)
!445 = !DILocation(line: 291, column: 3, scope: !418)
!446 = !DILocation(line: 291, column: 22, scope: !418)
!447 = !DILocation(line: 291, column: 30, scope: !418)
!448 = !DILocation(line: 292, column: 2, scope: !418)
!449 = !DILocation(line: 294, column: 13, scope: !201)
!450 = !DILocation(line: 294, column: 7, scope: !201)
!451 = !DILocation(line: 294, column: 11, scope: !201)
!452 = !DILocation(line: 295, column: 2, scope: !201)
!453 = !DILocation(line: 295, column: 13, scope: !201)
!454 = !DILocation(line: 295, column: 16, scope: !201)
!455 = !DILocation(line: 295, column: 21, scope: !201)
!456 = !DILocation(line: 297, column: 24, scope: !201)
!457 = !DILocation(line: 297, column: 29, scope: !201)
!458 = !DILocation(line: 297, column: 8, scope: !201)
!459 = !DILocation(line: 297, column: 6, scope: !201)
!460 = !DILocation(line: 298, column: 6, scope: !461)
!461 = distinct !DILexicalBlock(scope: !201, file: !1, line: 298, column: 6)
!462 = !DILocation(line: 298, column: 6, scope: !201)
!463 = !DILocation(line: 299, column: 16, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !1, line: 298, column: 11)
!465 = !DILocation(line: 299, column: 8, scope: !464)
!466 = !DILocation(line: 299, column: 6, scope: !464)
!467 = !DILocation(line: 300, column: 3, scope: !464)
!468 = !DILocation(line: 303, column: 6, scope: !469)
!469 = distinct !DILexicalBlock(scope: !201, file: !1, line: 303, column: 6)
!470 = !DILocation(line: 303, column: 17, scope: !469)
!471 = !DILocation(line: 303, column: 6, scope: !201)
!472 = !DILocation(line: 304, column: 28, scope: !469)
!473 = !DILocation(line: 304, column: 32, scope: !469)
!474 = !DILocation(line: 304, column: 3, scope: !469)
!475 = !DILocation(line: 304, column: 14, scope: !469)
!476 = !DILocation(line: 304, column: 22, scope: !469)
!477 = !DILocation(line: 304, column: 26, scope: !469)
!478 = !DILocation(line: 306, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !201, file: !1, line: 306, column: 6)
!480 = !DILocation(line: 306, column: 17, scope: !479)
!481 = !DILocation(line: 306, column: 6, scope: !201)
!482 = !DILocation(line: 307, column: 29, scope: !479)
!483 = !DILocation(line: 307, column: 33, scope: !479)
!484 = !DILocation(line: 307, column: 3, scope: !479)
!485 = !DILocation(line: 307, column: 14, scope: !479)
!486 = !DILocation(line: 307, column: 23, scope: !479)
!487 = !DILocation(line: 307, column: 27, scope: !479)
!488 = !DILocation(line: 309, column: 6, scope: !489)
!489 = distinct !DILexicalBlock(scope: !201, file: !1, line: 309, column: 6)
!490 = !DILocation(line: 309, column: 17, scope: !489)
!491 = !DILocation(line: 309, column: 6, scope: !201)
!492 = !DILocation(line: 310, column: 29, scope: !489)
!493 = !DILocation(line: 310, column: 33, scope: !489)
!494 = !DILocation(line: 310, column: 3, scope: !489)
!495 = !DILocation(line: 310, column: 14, scope: !489)
!496 = !DILocation(line: 310, column: 23, scope: !489)
!497 = !DILocation(line: 310, column: 27, scope: !489)
!498 = !DILocation(line: 312, column: 9, scope: !201)
!499 = !DILocation(line: 312, column: 2, scope: !201)
!500 = !DILabel(scope: !201, name: "err", file: !1, line: 314)
!501 = !DILocation(line: 314, column: 1, scope: !201)
!502 = !DILocation(line: 315, column: 8, scope: !201)
!503 = !DILocation(line: 315, column: 2, scope: !201)
!504 = !DILocation(line: 316, column: 9, scope: !201)
!505 = !DILocation(line: 316, column: 2, scope: !201)
!506 = !DILocation(line: 317, column: 1, scope: !201)
!507 = distinct !DISubprogram(name: "clk_hw_register_composite_pdata", scope: !1, file: !1, line: 333, type: !508, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !165)
!508 = !DISubroutineType(types: !509)
!509 = !{!45, !162, !32, !131, !44, !45, !36, !45, !36, !45, !36, !62}
!510 = !DILocalVariable(name: "dev", arg: 1, scope: !507, file: !1, line: 333, type: !162)
!511 = !DILocation(line: 333, column: 63, scope: !507)
!512 = !DILocalVariable(name: "name", arg: 2, scope: !507, file: !1, line: 334, type: !32)
!513 = !DILocation(line: 334, column: 16, scope: !507)
!514 = !DILocalVariable(name: "parent_data", arg: 3, scope: !507, file: !1, line: 335, type: !131)
!515 = !DILocation(line: 335, column: 34, scope: !507)
!516 = !DILocalVariable(name: "num_parents", arg: 4, scope: !507, file: !1, line: 336, type: !44)
!517 = !DILocation(line: 336, column: 8, scope: !507)
!518 = !DILocalVariable(name: "mux_hw", arg: 5, scope: !507, file: !1, line: 337, type: !45)
!519 = !DILocation(line: 337, column: 19, scope: !507)
!520 = !DILocalVariable(name: "mux_ops", arg: 6, scope: !507, file: !1, line: 337, type: !36)
!521 = !DILocation(line: 337, column: 49, scope: !507)
!522 = !DILocalVariable(name: "rate_hw", arg: 7, scope: !507, file: !1, line: 338, type: !45)
!523 = !DILocation(line: 338, column: 19, scope: !507)
!524 = !DILocalVariable(name: "rate_ops", arg: 8, scope: !507, file: !1, line: 338, type: !36)
!525 = !DILocation(line: 338, column: 50, scope: !507)
!526 = !DILocalVariable(name: "gate_hw", arg: 9, scope: !507, file: !1, line: 339, type: !45)
!527 = !DILocation(line: 339, column: 19, scope: !507)
!528 = !DILocalVariable(name: "gate_ops", arg: 10, scope: !507, file: !1, line: 339, type: !36)
!529 = !DILocation(line: 339, column: 50, scope: !507)
!530 = !DILocalVariable(name: "flags", arg: 11, scope: !507, file: !1, line: 340, type: !62)
!531 = !DILocation(line: 340, column: 18, scope: !507)
!532 = !DILocation(line: 342, column: 37, scope: !507)
!533 = !DILocation(line: 342, column: 42, scope: !507)
!534 = !DILocation(line: 342, column: 54, scope: !507)
!535 = !DILocation(line: 343, column: 9, scope: !507)
!536 = !DILocation(line: 343, column: 22, scope: !507)
!537 = !DILocation(line: 343, column: 30, scope: !507)
!538 = !DILocation(line: 344, column: 9, scope: !507)
!539 = !DILocation(line: 344, column: 18, scope: !507)
!540 = !DILocation(line: 344, column: 28, scope: !507)
!541 = !DILocation(line: 345, column: 9, scope: !507)
!542 = !DILocation(line: 345, column: 19, scope: !507)
!543 = !DILocation(line: 342, column: 9, scope: !507)
!544 = !DILocation(line: 342, column: 2, scope: !507)
!545 = distinct !DISubprogram(name: "clk_register_composite", scope: !1, file: !1, line: 348, type: !546, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !165)
!546 = !DISubroutineType(types: !547)
!547 = !{!24, !162, !32, !128, !44, !45, !36, !45, !36, !45, !36, !62}
!548 = !DILocalVariable(name: "dev", arg: 1, scope: !545, file: !1, line: 348, type: !162)
!549 = !DILocation(line: 348, column: 51, scope: !545)
!550 = !DILocalVariable(name: "name", arg: 2, scope: !545, file: !1, line: 348, type: !32)
!551 = !DILocation(line: 348, column: 68, scope: !545)
!552 = !DILocalVariable(name: "parent_names", arg: 3, scope: !545, file: !1, line: 349, type: !128)
!553 = !DILocation(line: 349, column: 24, scope: !545)
!554 = !DILocalVariable(name: "num_parents", arg: 4, scope: !545, file: !1, line: 349, type: !44)
!555 = !DILocation(line: 349, column: 42, scope: !545)
!556 = !DILocalVariable(name: "mux_hw", arg: 5, scope: !545, file: !1, line: 350, type: !45)
!557 = !DILocation(line: 350, column: 19, scope: !545)
!558 = !DILocalVariable(name: "mux_ops", arg: 6, scope: !545, file: !1, line: 350, type: !36)
!559 = !DILocation(line: 350, column: 49, scope: !545)
!560 = !DILocalVariable(name: "rate_hw", arg: 7, scope: !545, file: !1, line: 351, type: !45)
!561 = !DILocation(line: 351, column: 19, scope: !545)
!562 = !DILocalVariable(name: "rate_ops", arg: 8, scope: !545, file: !1, line: 351, type: !36)
!563 = !DILocation(line: 351, column: 50, scope: !545)
!564 = !DILocalVariable(name: "gate_hw", arg: 9, scope: !545, file: !1, line: 352, type: !45)
!565 = !DILocation(line: 352, column: 19, scope: !545)
!566 = !DILocalVariable(name: "gate_ops", arg: 10, scope: !545, file: !1, line: 352, type: !36)
!567 = !DILocation(line: 352, column: 50, scope: !545)
!568 = !DILocalVariable(name: "flags", arg: 11, scope: !545, file: !1, line: 353, type: !62)
!569 = !DILocation(line: 353, column: 18, scope: !545)
!570 = !DILocalVariable(name: "hw", scope: !545, file: !1, line: 355, type: !45)
!571 = !DILocation(line: 355, column: 17, scope: !545)
!572 = !DILocation(line: 357, column: 33, scope: !545)
!573 = !DILocation(line: 357, column: 38, scope: !545)
!574 = !DILocation(line: 357, column: 44, scope: !545)
!575 = !DILocation(line: 357, column: 58, scope: !545)
!576 = !DILocation(line: 358, column: 4, scope: !545)
!577 = !DILocation(line: 358, column: 12, scope: !545)
!578 = !DILocation(line: 358, column: 21, scope: !545)
!579 = !DILocation(line: 358, column: 30, scope: !545)
!580 = !DILocation(line: 358, column: 40, scope: !545)
!581 = !DILocation(line: 358, column: 49, scope: !545)
!582 = !DILocation(line: 359, column: 4, scope: !545)
!583 = !DILocation(line: 357, column: 7, scope: !545)
!584 = !DILocation(line: 357, column: 5, scope: !545)
!585 = !DILocation(line: 360, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !545, file: !1, line: 360, column: 6)
!587 = !DILocation(line: 360, column: 6, scope: !586)
!588 = !DILocation(line: 360, column: 6, scope: !545)
!589 = !DILocation(line: 361, column: 19, scope: !586)
!590 = !DILocation(line: 361, column: 10, scope: !586)
!591 = !DILocation(line: 361, column: 3, scope: !586)
!592 = !DILocation(line: 362, column: 9, scope: !545)
!593 = !DILocation(line: 362, column: 13, scope: !545)
!594 = !DILocation(line: 362, column: 2, scope: !545)
!595 = !DILocation(line: 363, column: 1, scope: !545)
!596 = distinct !DISubprogram(name: "IS_ERR", scope: !597, file: !597, line: 34, type: !598, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!597 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!598 = !DISubroutineType(types: !599)
!599 = !{!600, !602}
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !153, line: 30, baseType: !601)
!601 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!604 = !DILocalVariable(name: "ptr", arg: 1, scope: !596, file: !597, line: 34, type: !602)
!605 = !DILocation(line: 34, column: 60, scope: !596)
!606 = !DILocation(line: 36, column: 9, scope: !596)
!607 = !DILocation(line: 36, column: 2, scope: !596)
!608 = distinct !DISubprogram(name: "ERR_CAST", scope: !597, file: !597, line: 51, type: !609, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!609 = !DISubroutineType(types: !610)
!610 = !{!12, !602}
!611 = !DILocalVariable(name: "ptr", arg: 1, scope: !608, file: !597, line: 51, type: !602)
!612 = !DILocation(line: 51, column: 64, scope: !608)
!613 = !DILocation(line: 54, column: 18, scope: !608)
!614 = !DILocation(line: 54, column: 2, scope: !608)
!615 = distinct !DISubprogram(name: "clk_register_composite_pdata", scope: !1, file: !1, line: 365, type: !616, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !165)
!616 = !DISubroutineType(types: !617)
!617 = !{!24, !162, !32, !131, !44, !45, !36, !45, !36, !45, !36, !62}
!618 = !DILocalVariable(name: "dev", arg: 1, scope: !615, file: !1, line: 365, type: !162)
!619 = !DILocation(line: 365, column: 57, scope: !615)
!620 = !DILocalVariable(name: "name", arg: 2, scope: !615, file: !1, line: 365, type: !32)
!621 = !DILocation(line: 365, column: 74, scope: !615)
!622 = !DILocalVariable(name: "parent_data", arg: 3, scope: !615, file: !1, line: 366, type: !131)
!623 = !DILocation(line: 366, column: 34, scope: !615)
!624 = !DILocalVariable(name: "num_parents", arg: 4, scope: !615, file: !1, line: 367, type: !44)
!625 = !DILocation(line: 367, column: 8, scope: !615)
!626 = !DILocalVariable(name: "mux_hw", arg: 5, scope: !615, file: !1, line: 368, type: !45)
!627 = !DILocation(line: 368, column: 19, scope: !615)
!628 = !DILocalVariable(name: "mux_ops", arg: 6, scope: !615, file: !1, line: 368, type: !36)
!629 = !DILocation(line: 368, column: 49, scope: !615)
!630 = !DILocalVariable(name: "rate_hw", arg: 7, scope: !615, file: !1, line: 369, type: !45)
!631 = !DILocation(line: 369, column: 19, scope: !615)
!632 = !DILocalVariable(name: "rate_ops", arg: 8, scope: !615, file: !1, line: 369, type: !36)
!633 = !DILocation(line: 369, column: 50, scope: !615)
!634 = !DILocalVariable(name: "gate_hw", arg: 9, scope: !615, file: !1, line: 370, type: !45)
!635 = !DILocation(line: 370, column: 19, scope: !615)
!636 = !DILocalVariable(name: "gate_ops", arg: 10, scope: !615, file: !1, line: 370, type: !36)
!637 = !DILocation(line: 370, column: 50, scope: !615)
!638 = !DILocalVariable(name: "flags", arg: 11, scope: !615, file: !1, line: 371, type: !62)
!639 = !DILocation(line: 371, column: 18, scope: !615)
!640 = !DILocalVariable(name: "hw", scope: !615, file: !1, line: 373, type: !45)
!641 = !DILocation(line: 373, column: 17, scope: !615)
!642 = !DILocation(line: 375, column: 39, scope: !615)
!643 = !DILocation(line: 375, column: 44, scope: !615)
!644 = !DILocation(line: 375, column: 50, scope: !615)
!645 = !DILocation(line: 376, column: 4, scope: !615)
!646 = !DILocation(line: 376, column: 17, scope: !615)
!647 = !DILocation(line: 376, column: 25, scope: !615)
!648 = !DILocation(line: 376, column: 34, scope: !615)
!649 = !DILocation(line: 376, column: 43, scope: !615)
!650 = !DILocation(line: 377, column: 4, scope: !615)
!651 = !DILocation(line: 377, column: 13, scope: !615)
!652 = !DILocation(line: 377, column: 23, scope: !615)
!653 = !DILocation(line: 375, column: 7, scope: !615)
!654 = !DILocation(line: 375, column: 5, scope: !615)
!655 = !DILocation(line: 378, column: 13, scope: !656)
!656 = distinct !DILexicalBlock(scope: !615, file: !1, line: 378, column: 6)
!657 = !DILocation(line: 378, column: 6, scope: !656)
!658 = !DILocation(line: 378, column: 6, scope: !615)
!659 = !DILocation(line: 379, column: 19, scope: !656)
!660 = !DILocation(line: 379, column: 10, scope: !656)
!661 = !DILocation(line: 379, column: 3, scope: !656)
!662 = !DILocation(line: 380, column: 9, scope: !615)
!663 = !DILocation(line: 380, column: 13, scope: !615)
!664 = !DILocation(line: 380, column: 2, scope: !615)
!665 = !DILocation(line: 381, column: 1, scope: !615)
!666 = distinct !DISubprogram(name: "clk_unregister_composite", scope: !1, file: !1, line: 383, type: !667, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !165)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !24}
!669 = !DILocalVariable(name: "clk", arg: 1, scope: !666, file: !1, line: 383, type: !24)
!670 = !DILocation(line: 383, column: 43, scope: !666)
!671 = !DILocalVariable(name: "composite", scope: !666, file: !1, line: 385, type: !13)
!672 = !DILocation(line: 385, column: 24, scope: !666)
!673 = !DILocalVariable(name: "hw", scope: !666, file: !1, line: 386, type: !45)
!674 = !DILocation(line: 386, column: 17, scope: !666)
!675 = !DILocation(line: 388, column: 20, scope: !666)
!676 = !DILocation(line: 388, column: 7, scope: !666)
!677 = !DILocation(line: 388, column: 5, scope: !666)
!678 = !DILocation(line: 389, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !666, file: !1, line: 389, column: 6)
!680 = !DILocation(line: 389, column: 6, scope: !666)
!681 = !DILocation(line: 390, column: 3, scope: !679)
!682 = !DILocalVariable(name: "__mptr", scope: !683, file: !1, line: 392, type: !12)
!683 = distinct !DILexicalBlock(scope: !666, file: !1, line: 392, column: 14)
!684 = !DILocation(line: 392, column: 14, scope: !683)
!685 = !DILocation(line: 392, column: 14, scope: !686)
!686 = distinct !DILexicalBlock(scope: !683, file: !1, line: 392, column: 14)
!687 = !DILocation(line: 392, column: 12, scope: !666)
!688 = !DILocation(line: 394, column: 17, scope: !666)
!689 = !DILocation(line: 394, column: 2, scope: !666)
!690 = !DILocation(line: 395, column: 8, scope: !666)
!691 = !DILocation(line: 395, column: 2, scope: !666)
!692 = !DILocation(line: 396, column: 1, scope: !666)
!693 = distinct !DISubprogram(name: "clk_hw_unregister_composite", scope: !1, file: !1, line: 398, type: !48, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !165)
!694 = !DILocalVariable(name: "hw", arg: 1, scope: !693, file: !1, line: 398, type: !45)
!695 = !DILocation(line: 398, column: 49, scope: !693)
!696 = !DILocalVariable(name: "composite", scope: !693, file: !1, line: 400, type: !13)
!697 = !DILocation(line: 400, column: 24, scope: !693)
!698 = !DILocalVariable(name: "__mptr", scope: !699, file: !1, line: 402, type: !12)
!699 = distinct !DILexicalBlock(scope: !693, file: !1, line: 402, column: 14)
!700 = !DILocation(line: 402, column: 14, scope: !699)
!701 = !DILocation(line: 402, column: 14, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !1, line: 402, column: 14)
!703 = !DILocation(line: 402, column: 12, scope: !693)
!704 = !DILocation(line: 404, column: 20, scope: !693)
!705 = !DILocation(line: 404, column: 2, scope: !693)
!706 = !DILocation(line: 405, column: 8, scope: !693)
!707 = !DILocation(line: 405, column: 2, scope: !693)
!708 = !DILocation(line: 406, column: 1, scope: !693)
!709 = distinct !DISubprogram(name: "kzalloc", scope: !4, file: !4, line: 662, type: !710, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!710 = !DISubroutineType(types: !711)
!711 = !{!12, !712, !152}
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 55, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !714, line: 72, baseType: !715)
!714 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !714, line: 16, baseType: !62)
!716 = !DILocalVariable(name: "s", arg: 1, scope: !717, file: !4, line: 445, type: !720)
!717 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4, file: !4, line: 445, type: !718, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!718 = !DISubroutineType(types: !719)
!719 = !{!12, !720, !152, !712}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !722, line: 117, flags: DIFlagFwdDecl)
!722 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!723 = !DILocation(line: 445, column: 72, scope: !717, inlinedAt: !724)
!724 = distinct !DILocation(line: 552, column: 10, scope: !725, inlinedAt: !728)
!725 = distinct !DILexicalBlock(scope: !726, file: !4, line: 540, column: 34)
!726 = distinct !DILexicalBlock(scope: !727, file: !4, line: 540, column: 6)
!727 = distinct !DISubprogram(name: "kmalloc", scope: !4, file: !4, line: 538, type: !710, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!728 = distinct !DILocation(line: 664, column: 9, scope: !709)
!729 = !DILocalVariable(name: "flags", arg: 2, scope: !717, file: !4, line: 446, type: !152)
!730 = !DILocation(line: 446, column: 9, scope: !717, inlinedAt: !724)
!731 = !DILocalVariable(name: "size", arg: 3, scope: !717, file: !4, line: 446, type: !712)
!732 = !DILocation(line: 446, column: 23, scope: !717, inlinedAt: !724)
!733 = !DILocalVariable(name: "ret", scope: !717, file: !4, line: 448, type: !12)
!734 = !DILocation(line: 448, column: 8, scope: !717, inlinedAt: !724)
!735 = !DILocalVariable(name: "flags", arg: 1, scope: !736, file: !4, line: 318, type: !152)
!736 = distinct !DISubprogram(name: "kmalloc_type", scope: !4, file: !4, line: 318, type: !737, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!737 = !DISubroutineType(types: !738)
!738 = !{!3, !152}
!739 = !DILocation(line: 318, column: 67, scope: !736, inlinedAt: !740)
!740 = distinct !DILocation(line: 553, column: 20, scope: !725, inlinedAt: !728)
!741 = !DILocalVariable(name: "size", arg: 1, scope: !742, file: !4, line: 346, type: !712)
!742 = distinct !DISubprogram(name: "kmalloc_index", scope: !4, file: !4, line: 346, type: !743, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!743 = !DISubroutineType(types: !744)
!744 = !{!5, !712}
!745 = !DILocation(line: 346, column: 58, scope: !742, inlinedAt: !746)
!746 = distinct !DILocation(line: 547, column: 11, scope: !725, inlinedAt: !728)
!747 = !DILocalVariable(name: "size", arg: 1, scope: !748, file: !4, line: 472, type: !712)
!748 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4, file: !4, line: 472, type: !749, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!749 = !DISubroutineType(types: !750)
!750 = !{!12, !712, !152, !5}
!751 = !DILocation(line: 472, column: 28, scope: !748, inlinedAt: !752)
!752 = distinct !DILocation(line: 481, column: 9, scope: !753, inlinedAt: !754)
!753 = distinct !DISubprogram(name: "kmalloc_large", scope: !4, file: !4, line: 478, type: !710, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!754 = distinct !DILocation(line: 545, column: 11, scope: !755, inlinedAt: !728)
!755 = distinct !DILexicalBlock(scope: !725, file: !4, line: 544, column: 7)
!756 = !DILocalVariable(name: "flags", arg: 2, scope: !748, file: !4, line: 472, type: !152)
!757 = !DILocation(line: 472, column: 40, scope: !748, inlinedAt: !752)
!758 = !DILocalVariable(name: "order", arg: 3, scope: !748, file: !4, line: 472, type: !5)
!759 = !DILocation(line: 472, column: 60, scope: !748, inlinedAt: !752)
!760 = !DILocalVariable(name: "size", arg: 1, scope: !753, file: !4, line: 478, type: !712)
!761 = !DILocation(line: 478, column: 51, scope: !753, inlinedAt: !754)
!762 = !DILocalVariable(name: "flags", arg: 2, scope: !753, file: !4, line: 478, type: !152)
!763 = !DILocation(line: 478, column: 63, scope: !753, inlinedAt: !754)
!764 = !DILocalVariable(name: "order", scope: !753, file: !4, line: 480, type: !5)
!765 = !DILocation(line: 480, column: 15, scope: !753, inlinedAt: !754)
!766 = !DILocalVariable(name: "size", arg: 1, scope: !727, file: !4, line: 538, type: !712)
!767 = !DILocation(line: 538, column: 45, scope: !727, inlinedAt: !728)
!768 = !DILocalVariable(name: "flags", arg: 2, scope: !727, file: !4, line: 538, type: !152)
!769 = !DILocation(line: 538, column: 57, scope: !727, inlinedAt: !728)
!770 = !DILocalVariable(name: "index", scope: !725, file: !4, line: 542, type: !5)
!771 = !DILocation(line: 542, column: 16, scope: !725, inlinedAt: !728)
!772 = !DILocalVariable(name: "size", arg: 1, scope: !709, file: !4, line: 662, type: !712)
!773 = !DILocation(line: 662, column: 36, scope: !709)
!774 = !DILocalVariable(name: "flags", arg: 2, scope: !709, file: !4, line: 662, type: !152)
!775 = !DILocation(line: 662, column: 48, scope: !709)
!776 = !DILocation(line: 664, column: 17, scope: !709)
!777 = !DILocation(line: 664, column: 23, scope: !709)
!778 = !DILocation(line: 664, column: 29, scope: !709)
!779 = !DILocation(line: 540, column: 27, scope: !726, inlinedAt: !728)
!780 = !DILocation(line: 540, column: 6, scope: !726, inlinedAt: !728)
!781 = !DILocation(line: 540, column: 6, scope: !727, inlinedAt: !728)
!782 = !DILocation(line: 544, column: 7, scope: !755, inlinedAt: !728)
!783 = !DILocation(line: 544, column: 12, scope: !755, inlinedAt: !728)
!784 = !DILocation(line: 544, column: 7, scope: !725, inlinedAt: !728)
!785 = !DILocation(line: 545, column: 25, scope: !755, inlinedAt: !728)
!786 = !DILocation(line: 545, column: 31, scope: !755, inlinedAt: !728)
!787 = !DILocation(line: 480, column: 33, scope: !753, inlinedAt: !754)
!788 = !DILocation(line: 480, column: 23, scope: !753, inlinedAt: !754)
!789 = !DILocation(line: 481, column: 29, scope: !753, inlinedAt: !754)
!790 = !DILocation(line: 481, column: 35, scope: !753, inlinedAt: !754)
!791 = !DILocation(line: 481, column: 42, scope: !753, inlinedAt: !754)
!792 = !DILocation(line: 474, column: 23, scope: !748, inlinedAt: !752)
!793 = !DILocation(line: 474, column: 29, scope: !748, inlinedAt: !752)
!794 = !DILocation(line: 474, column: 36, scope: !748, inlinedAt: !752)
!795 = !DILocation(line: 474, column: 9, scope: !748, inlinedAt: !752)
!796 = !DILocation(line: 545, column: 4, scope: !755, inlinedAt: !728)
!797 = !DILocation(line: 547, column: 25, scope: !725, inlinedAt: !728)
!798 = !DILocation(line: 348, column: 7, scope: !799, inlinedAt: !746)
!799 = distinct !DILexicalBlock(scope: !742, file: !4, line: 348, column: 6)
!800 = !DILocation(line: 348, column: 6, scope: !742, inlinedAt: !746)
!801 = !DILocation(line: 349, column: 3, scope: !799, inlinedAt: !746)
!802 = !DILocation(line: 351, column: 6, scope: !803, inlinedAt: !746)
!803 = distinct !DILexicalBlock(scope: !742, file: !4, line: 351, column: 6)
!804 = !DILocation(line: 351, column: 11, scope: !803, inlinedAt: !746)
!805 = !DILocation(line: 351, column: 6, scope: !742, inlinedAt: !746)
!806 = !DILocation(line: 352, column: 3, scope: !803, inlinedAt: !746)
!807 = !DILocation(line: 354, column: 32, scope: !808, inlinedAt: !746)
!808 = distinct !DILexicalBlock(scope: !742, file: !4, line: 354, column: 6)
!809 = !DILocation(line: 354, column: 37, scope: !808, inlinedAt: !746)
!810 = !DILocation(line: 354, column: 42, scope: !808, inlinedAt: !746)
!811 = !DILocation(line: 354, column: 45, scope: !808, inlinedAt: !746)
!812 = !DILocation(line: 354, column: 50, scope: !808, inlinedAt: !746)
!813 = !DILocation(line: 354, column: 6, scope: !742, inlinedAt: !746)
!814 = !DILocation(line: 355, column: 3, scope: !808, inlinedAt: !746)
!815 = !DILocation(line: 356, column: 32, scope: !816, inlinedAt: !746)
!816 = distinct !DILexicalBlock(scope: !742, file: !4, line: 356, column: 6)
!817 = !DILocation(line: 356, column: 37, scope: !816, inlinedAt: !746)
!818 = !DILocation(line: 356, column: 43, scope: !816, inlinedAt: !746)
!819 = !DILocation(line: 356, column: 46, scope: !816, inlinedAt: !746)
!820 = !DILocation(line: 356, column: 51, scope: !816, inlinedAt: !746)
!821 = !DILocation(line: 356, column: 6, scope: !742, inlinedAt: !746)
!822 = !DILocation(line: 357, column: 3, scope: !816, inlinedAt: !746)
!823 = !DILocation(line: 358, column: 6, scope: !824, inlinedAt: !746)
!824 = distinct !DILexicalBlock(scope: !742, file: !4, line: 358, column: 6)
!825 = !DILocation(line: 358, column: 11, scope: !824, inlinedAt: !746)
!826 = !DILocation(line: 358, column: 6, scope: !742, inlinedAt: !746)
!827 = !DILocation(line: 358, column: 26, scope: !824, inlinedAt: !746)
!828 = !DILocation(line: 359, column: 6, scope: !829, inlinedAt: !746)
!829 = distinct !DILexicalBlock(scope: !742, file: !4, line: 359, column: 6)
!830 = !DILocation(line: 359, column: 11, scope: !829, inlinedAt: !746)
!831 = !DILocation(line: 359, column: 6, scope: !742, inlinedAt: !746)
!832 = !DILocation(line: 359, column: 26, scope: !829, inlinedAt: !746)
!833 = !DILocation(line: 360, column: 6, scope: !834, inlinedAt: !746)
!834 = distinct !DILexicalBlock(scope: !742, file: !4, line: 360, column: 6)
!835 = !DILocation(line: 360, column: 11, scope: !834, inlinedAt: !746)
!836 = !DILocation(line: 360, column: 6, scope: !742, inlinedAt: !746)
!837 = !DILocation(line: 360, column: 26, scope: !834, inlinedAt: !746)
!838 = !DILocation(line: 361, column: 6, scope: !839, inlinedAt: !746)
!839 = distinct !DILexicalBlock(scope: !742, file: !4, line: 361, column: 6)
!840 = !DILocation(line: 361, column: 11, scope: !839, inlinedAt: !746)
!841 = !DILocation(line: 361, column: 6, scope: !742, inlinedAt: !746)
!842 = !DILocation(line: 361, column: 26, scope: !839, inlinedAt: !746)
!843 = !DILocation(line: 362, column: 6, scope: !844, inlinedAt: !746)
!844 = distinct !DILexicalBlock(scope: !742, file: !4, line: 362, column: 6)
!845 = !DILocation(line: 362, column: 11, scope: !844, inlinedAt: !746)
!846 = !DILocation(line: 362, column: 6, scope: !742, inlinedAt: !746)
!847 = !DILocation(line: 362, column: 26, scope: !844, inlinedAt: !746)
!848 = !DILocation(line: 363, column: 6, scope: !849, inlinedAt: !746)
!849 = distinct !DILexicalBlock(scope: !742, file: !4, line: 363, column: 6)
!850 = !DILocation(line: 363, column: 11, scope: !849, inlinedAt: !746)
!851 = !DILocation(line: 363, column: 6, scope: !742, inlinedAt: !746)
!852 = !DILocation(line: 363, column: 26, scope: !849, inlinedAt: !746)
!853 = !DILocation(line: 364, column: 6, scope: !854, inlinedAt: !746)
!854 = distinct !DILexicalBlock(scope: !742, file: !4, line: 364, column: 6)
!855 = !DILocation(line: 364, column: 11, scope: !854, inlinedAt: !746)
!856 = !DILocation(line: 364, column: 6, scope: !742, inlinedAt: !746)
!857 = !DILocation(line: 364, column: 26, scope: !854, inlinedAt: !746)
!858 = !DILocation(line: 365, column: 6, scope: !859, inlinedAt: !746)
!859 = distinct !DILexicalBlock(scope: !742, file: !4, line: 365, column: 6)
!860 = !DILocation(line: 365, column: 11, scope: !859, inlinedAt: !746)
!861 = !DILocation(line: 365, column: 6, scope: !742, inlinedAt: !746)
!862 = !DILocation(line: 365, column: 26, scope: !859, inlinedAt: !746)
!863 = !DILocation(line: 366, column: 6, scope: !864, inlinedAt: !746)
!864 = distinct !DILexicalBlock(scope: !742, file: !4, line: 366, column: 6)
!865 = !DILocation(line: 366, column: 11, scope: !864, inlinedAt: !746)
!866 = !DILocation(line: 366, column: 6, scope: !742, inlinedAt: !746)
!867 = !DILocation(line: 366, column: 26, scope: !864, inlinedAt: !746)
!868 = !DILocation(line: 367, column: 6, scope: !869, inlinedAt: !746)
!869 = distinct !DILexicalBlock(scope: !742, file: !4, line: 367, column: 6)
!870 = !DILocation(line: 367, column: 11, scope: !869, inlinedAt: !746)
!871 = !DILocation(line: 367, column: 6, scope: !742, inlinedAt: !746)
!872 = !DILocation(line: 367, column: 26, scope: !869, inlinedAt: !746)
!873 = !DILocation(line: 368, column: 6, scope: !874, inlinedAt: !746)
!874 = distinct !DILexicalBlock(scope: !742, file: !4, line: 368, column: 6)
!875 = !DILocation(line: 368, column: 11, scope: !874, inlinedAt: !746)
!876 = !DILocation(line: 368, column: 6, scope: !742, inlinedAt: !746)
!877 = !DILocation(line: 368, column: 26, scope: !874, inlinedAt: !746)
!878 = !DILocation(line: 369, column: 6, scope: !879, inlinedAt: !746)
!879 = distinct !DILexicalBlock(scope: !742, file: !4, line: 369, column: 6)
!880 = !DILocation(line: 369, column: 11, scope: !879, inlinedAt: !746)
!881 = !DILocation(line: 369, column: 6, scope: !742, inlinedAt: !746)
!882 = !DILocation(line: 369, column: 26, scope: !879, inlinedAt: !746)
!883 = !DILocation(line: 370, column: 6, scope: !884, inlinedAt: !746)
!884 = distinct !DILexicalBlock(scope: !742, file: !4, line: 370, column: 6)
!885 = !DILocation(line: 370, column: 11, scope: !884, inlinedAt: !746)
!886 = !DILocation(line: 370, column: 6, scope: !742, inlinedAt: !746)
!887 = !DILocation(line: 370, column: 26, scope: !884, inlinedAt: !746)
!888 = !DILocation(line: 371, column: 6, scope: !889, inlinedAt: !746)
!889 = distinct !DILexicalBlock(scope: !742, file: !4, line: 371, column: 6)
!890 = !DILocation(line: 371, column: 11, scope: !889, inlinedAt: !746)
!891 = !DILocation(line: 371, column: 6, scope: !742, inlinedAt: !746)
!892 = !DILocation(line: 371, column: 26, scope: !889, inlinedAt: !746)
!893 = !DILocation(line: 372, column: 6, scope: !894, inlinedAt: !746)
!894 = distinct !DILexicalBlock(scope: !742, file: !4, line: 372, column: 6)
!895 = !DILocation(line: 372, column: 11, scope: !894, inlinedAt: !746)
!896 = !DILocation(line: 372, column: 6, scope: !742, inlinedAt: !746)
!897 = !DILocation(line: 372, column: 26, scope: !894, inlinedAt: !746)
!898 = !DILocation(line: 373, column: 6, scope: !899, inlinedAt: !746)
!899 = distinct !DILexicalBlock(scope: !742, file: !4, line: 373, column: 6)
!900 = !DILocation(line: 373, column: 11, scope: !899, inlinedAt: !746)
!901 = !DILocation(line: 373, column: 6, scope: !742, inlinedAt: !746)
!902 = !DILocation(line: 373, column: 26, scope: !899, inlinedAt: !746)
!903 = !DILocation(line: 374, column: 6, scope: !904, inlinedAt: !746)
!904 = distinct !DILexicalBlock(scope: !742, file: !4, line: 374, column: 6)
!905 = !DILocation(line: 374, column: 11, scope: !904, inlinedAt: !746)
!906 = !DILocation(line: 374, column: 6, scope: !742, inlinedAt: !746)
!907 = !DILocation(line: 374, column: 26, scope: !904, inlinedAt: !746)
!908 = !DILocation(line: 375, column: 6, scope: !909, inlinedAt: !746)
!909 = distinct !DILexicalBlock(scope: !742, file: !4, line: 375, column: 6)
!910 = !DILocation(line: 375, column: 11, scope: !909, inlinedAt: !746)
!911 = !DILocation(line: 375, column: 6, scope: !742, inlinedAt: !746)
!912 = !DILocation(line: 375, column: 27, scope: !909, inlinedAt: !746)
!913 = !DILocation(line: 376, column: 6, scope: !914, inlinedAt: !746)
!914 = distinct !DILexicalBlock(scope: !742, file: !4, line: 376, column: 6)
!915 = !DILocation(line: 376, column: 11, scope: !914, inlinedAt: !746)
!916 = !DILocation(line: 376, column: 6, scope: !742, inlinedAt: !746)
!917 = !DILocation(line: 376, column: 32, scope: !914, inlinedAt: !746)
!918 = !DILocation(line: 377, column: 6, scope: !919, inlinedAt: !746)
!919 = distinct !DILexicalBlock(scope: !742, file: !4, line: 377, column: 6)
!920 = !DILocation(line: 377, column: 11, scope: !919, inlinedAt: !746)
!921 = !DILocation(line: 377, column: 6, scope: !742, inlinedAt: !746)
!922 = !DILocation(line: 377, column: 32, scope: !919, inlinedAt: !746)
!923 = !DILocation(line: 378, column: 6, scope: !924, inlinedAt: !746)
!924 = distinct !DILexicalBlock(scope: !742, file: !4, line: 378, column: 6)
!925 = !DILocation(line: 378, column: 11, scope: !924, inlinedAt: !746)
!926 = !DILocation(line: 378, column: 6, scope: !742, inlinedAt: !746)
!927 = !DILocation(line: 378, column: 32, scope: !924, inlinedAt: !746)
!928 = !DILocation(line: 379, column: 6, scope: !929, inlinedAt: !746)
!929 = distinct !DILexicalBlock(scope: !742, file: !4, line: 379, column: 6)
!930 = !DILocation(line: 379, column: 11, scope: !929, inlinedAt: !746)
!931 = !DILocation(line: 379, column: 6, scope: !742, inlinedAt: !746)
!932 = !DILocation(line: 379, column: 33, scope: !929, inlinedAt: !746)
!933 = !DILocation(line: 380, column: 6, scope: !934, inlinedAt: !746)
!934 = distinct !DILexicalBlock(scope: !742, file: !4, line: 380, column: 6)
!935 = !DILocation(line: 380, column: 11, scope: !934, inlinedAt: !746)
!936 = !DILocation(line: 380, column: 6, scope: !742, inlinedAt: !746)
!937 = !DILocation(line: 380, column: 33, scope: !934, inlinedAt: !746)
!938 = !DILocation(line: 381, column: 6, scope: !939, inlinedAt: !746)
!939 = distinct !DILexicalBlock(scope: !742, file: !4, line: 381, column: 6)
!940 = !DILocation(line: 381, column: 11, scope: !939, inlinedAt: !746)
!941 = !DILocation(line: 381, column: 6, scope: !742, inlinedAt: !746)
!942 = !DILocation(line: 381, column: 33, scope: !939, inlinedAt: !746)
!943 = !DILocation(line: 382, column: 2, scope: !944, inlinedAt: !746)
!944 = distinct !DILexicalBlock(scope: !945, file: !4, line: 382, column: 2)
!945 = distinct !DILexicalBlock(scope: !742, file: !4, line: 382, column: 2)
!946 = !{i32 -2144243622, i32 -2144243593, i32 -2144243547, i32 -2144243489, i32 -2144243435, i32 -2144243381, i32 -2144243326, i32 -2144243295}
!947 = !DILocation(line: 382, column: 2, scope: !948, inlinedAt: !746)
!948 = distinct !DILexicalBlock(scope: !949, file: !4, line: 382, column: 2)
!949 = distinct !DILexicalBlock(scope: !945, file: !4, line: 382, column: 2)
!950 = !{i32 -2144238791, i32 -2144238784, i32 -2144238730, i32 -2144238699, i32 -2144238669}
!951 = !DILocation(line: 382, column: 2, scope: !949, inlinedAt: !746)
!952 = !DILocation(line: 386, column: 1, scope: !742, inlinedAt: !746)
!953 = !DILocation(line: 547, column: 9, scope: !725, inlinedAt: !728)
!954 = !DILocation(line: 549, column: 8, scope: !955, inlinedAt: !728)
!955 = distinct !DILexicalBlock(scope: !725, file: !4, line: 549, column: 7)
!956 = !DILocation(line: 549, column: 7, scope: !725, inlinedAt: !728)
!957 = !DILocation(line: 550, column: 4, scope: !955, inlinedAt: !728)
!958 = !DILocation(line: 553, column: 33, scope: !725, inlinedAt: !728)
!959 = !DILocation(line: 325, column: 6, scope: !960, inlinedAt: !740)
!960 = distinct !DILexicalBlock(scope: !736, file: !4, line: 325, column: 6)
!961 = !DILocation(line: 325, column: 6, scope: !736, inlinedAt: !740)
!962 = !DILocation(line: 326, column: 3, scope: !960, inlinedAt: !740)
!963 = !DILocation(line: 332, column: 9, scope: !736, inlinedAt: !740)
!964 = !DILocation(line: 332, column: 15, scope: !736, inlinedAt: !740)
!965 = !DILocation(line: 332, column: 2, scope: !736, inlinedAt: !740)
!966 = !DILocation(line: 336, column: 1, scope: !736, inlinedAt: !740)
!967 = !DILocation(line: 553, column: 5, scope: !725, inlinedAt: !728)
!968 = !DILocation(line: 553, column: 41, scope: !725, inlinedAt: !728)
!969 = !DILocation(line: 554, column: 5, scope: !725, inlinedAt: !728)
!970 = !DILocation(line: 554, column: 12, scope: !725, inlinedAt: !728)
!971 = !DILocation(line: 448, column: 31, scope: !717, inlinedAt: !724)
!972 = !DILocation(line: 448, column: 34, scope: !717, inlinedAt: !724)
!973 = !DILocation(line: 448, column: 14, scope: !717, inlinedAt: !724)
!974 = !DILocation(line: 450, column: 22, scope: !717, inlinedAt: !724)
!975 = !DILocation(line: 450, column: 25, scope: !717, inlinedAt: !724)
!976 = !DILocation(line: 450, column: 30, scope: !717, inlinedAt: !724)
!977 = !DILocation(line: 450, column: 36, scope: !717, inlinedAt: !724)
!978 = !DILocation(line: 450, column: 8, scope: !717, inlinedAt: !724)
!979 = !DILocation(line: 450, column: 6, scope: !717, inlinedAt: !724)
!980 = !DILocation(line: 451, column: 9, scope: !717, inlinedAt: !724)
!981 = !DILocation(line: 552, column: 3, scope: !725, inlinedAt: !728)
!982 = !DILocation(line: 557, column: 19, scope: !727, inlinedAt: !728)
!983 = !DILocation(line: 557, column: 25, scope: !727, inlinedAt: !728)
!984 = !DILocation(line: 557, column: 9, scope: !727, inlinedAt: !728)
!985 = !DILocation(line: 557, column: 2, scope: !727, inlinedAt: !728)
!986 = !DILocation(line: 558, column: 1, scope: !727, inlinedAt: !728)
!987 = !DILocation(line: 664, column: 2, scope: !709)
!988 = distinct !DISubprogram(name: "ERR_PTR", scope: !597, file: !597, line: 24, type: !989, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!989 = !DISubroutineType(types: !990)
!990 = !{!12, !67}
!991 = !DILocalVariable(name: "error", arg: 1, scope: !988, file: !597, line: 24, type: !67)
!992 = !DILocation(line: 24, column: 48, scope: !988)
!993 = !DILocation(line: 26, column: 18, scope: !988)
!994 = !DILocation(line: 26, column: 9, scope: !988)
!995 = !DILocation(line: 26, column: 2, scope: !988)
!996 = distinct !DISubprogram(name: "clk_composite_get_parent", scope: !1, file: !1, line: 10, type: !92, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!997 = !DILocalVariable(name: "hw", arg: 1, scope: !996, file: !1, line: 10, type: !45)
!998 = !DILocation(line: 10, column: 51, scope: !996)
!999 = !DILocalVariable(name: "composite", scope: !996, file: !1, line: 12, type: !13)
!1000 = !DILocation(line: 12, column: 24, scope: !996)
!1001 = !DILocalVariable(name: "__mptr", scope: !1002, file: !1, line: 12, type: !12)
!1002 = distinct !DILexicalBlock(scope: !996, file: !1, line: 12, column: 36)
!1003 = !DILocation(line: 12, column: 36, scope: !1002)
!1004 = !DILocation(line: 12, column: 36, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 12, column: 36)
!1006 = !DILocalVariable(name: "mux_ops", scope: !996, file: !1, line: 13, type: !36)
!1007 = !DILocation(line: 13, column: 24, scope: !996)
!1008 = !DILocation(line: 13, column: 34, scope: !996)
!1009 = !DILocation(line: 13, column: 45, scope: !996)
!1010 = !DILocalVariable(name: "mux_hw", scope: !996, file: !1, line: 14, type: !45)
!1011 = !DILocation(line: 14, column: 17, scope: !996)
!1012 = !DILocation(line: 14, column: 26, scope: !996)
!1013 = !DILocation(line: 14, column: 37, scope: !996)
!1014 = !DILocation(line: 16, column: 19, scope: !996)
!1015 = !DILocation(line: 16, column: 27, scope: !996)
!1016 = !DILocation(line: 16, column: 2, scope: !996)
!1017 = !DILocation(line: 18, column: 9, scope: !996)
!1018 = !DILocation(line: 18, column: 18, scope: !996)
!1019 = !DILocation(line: 18, column: 29, scope: !996)
!1020 = !DILocation(line: 18, column: 2, scope: !996)
!1021 = distinct !DISubprogram(name: "clk_composite_set_parent", scope: !1, file: !1, line: 21, type: !83, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1022 = !DILocalVariable(name: "hw", arg: 1, scope: !1021, file: !1, line: 21, type: !45)
!1023 = !DILocation(line: 21, column: 52, scope: !1021)
!1024 = !DILocalVariable(name: "index", arg: 2, scope: !1021, file: !1, line: 21, type: !85)
!1025 = !DILocation(line: 21, column: 59, scope: !1021)
!1026 = !DILocalVariable(name: "composite", scope: !1021, file: !1, line: 23, type: !13)
!1027 = !DILocation(line: 23, column: 24, scope: !1021)
!1028 = !DILocalVariable(name: "__mptr", scope: !1029, file: !1, line: 23, type: !12)
!1029 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 23, column: 36)
!1030 = !DILocation(line: 23, column: 36, scope: !1029)
!1031 = !DILocation(line: 23, column: 36, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 23, column: 36)
!1033 = !DILocalVariable(name: "mux_ops", scope: !1021, file: !1, line: 24, type: !36)
!1034 = !DILocation(line: 24, column: 24, scope: !1021)
!1035 = !DILocation(line: 24, column: 34, scope: !1021)
!1036 = !DILocation(line: 24, column: 45, scope: !1021)
!1037 = !DILocalVariable(name: "mux_hw", scope: !1021, file: !1, line: 25, type: !45)
!1038 = !DILocation(line: 25, column: 17, scope: !1021)
!1039 = !DILocation(line: 25, column: 26, scope: !1021)
!1040 = !DILocation(line: 25, column: 37, scope: !1021)
!1041 = !DILocation(line: 27, column: 19, scope: !1021)
!1042 = !DILocation(line: 27, column: 27, scope: !1021)
!1043 = !DILocation(line: 27, column: 2, scope: !1021)
!1044 = !DILocation(line: 29, column: 9, scope: !1021)
!1045 = !DILocation(line: 29, column: 18, scope: !1021)
!1046 = !DILocation(line: 29, column: 29, scope: !1021)
!1047 = !DILocation(line: 29, column: 37, scope: !1021)
!1048 = !DILocation(line: 29, column: 2, scope: !1021)
!1049 = distinct !DISubprogram(name: "clk_composite_determine_rate", scope: !1, file: !1, line: 44, type: !71, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1050 = !DILocalVariable(name: "hw", arg: 1, scope: !1049, file: !1, line: 44, type: !45)
!1051 = !DILocation(line: 44, column: 56, scope: !1049)
!1052 = !DILocalVariable(name: "req", arg: 2, scope: !1049, file: !1, line: 45, type: !73)
!1053 = !DILocation(line: 45, column: 31, scope: !1049)
!1054 = !DILocalVariable(name: "composite", scope: !1049, file: !1, line: 47, type: !13)
!1055 = !DILocation(line: 47, column: 24, scope: !1049)
!1056 = !DILocalVariable(name: "__mptr", scope: !1057, file: !1, line: 47, type: !12)
!1057 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 47, column: 36)
!1058 = !DILocation(line: 47, column: 36, scope: !1057)
!1059 = !DILocation(line: 47, column: 36, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 47, column: 36)
!1061 = !DILocalVariable(name: "rate_ops", scope: !1049, file: !1, line: 48, type: !36)
!1062 = !DILocation(line: 48, column: 24, scope: !1049)
!1063 = !DILocation(line: 48, column: 35, scope: !1049)
!1064 = !DILocation(line: 48, column: 46, scope: !1049)
!1065 = !DILocalVariable(name: "mux_ops", scope: !1049, file: !1, line: 49, type: !36)
!1066 = !DILocation(line: 49, column: 24, scope: !1049)
!1067 = !DILocation(line: 49, column: 34, scope: !1049)
!1068 = !DILocation(line: 49, column: 45, scope: !1049)
!1069 = !DILocalVariable(name: "rate_hw", scope: !1049, file: !1, line: 50, type: !45)
!1070 = !DILocation(line: 50, column: 17, scope: !1049)
!1071 = !DILocation(line: 50, column: 27, scope: !1049)
!1072 = !DILocation(line: 50, column: 38, scope: !1049)
!1073 = !DILocalVariable(name: "mux_hw", scope: !1049, file: !1, line: 51, type: !45)
!1074 = !DILocation(line: 51, column: 17, scope: !1049)
!1075 = !DILocation(line: 51, column: 26, scope: !1049)
!1076 = !DILocation(line: 51, column: 37, scope: !1049)
!1077 = !DILocalVariable(name: "parent", scope: !1049, file: !1, line: 52, type: !45)
!1078 = !DILocation(line: 52, column: 17, scope: !1049)
!1079 = !DILocalVariable(name: "parent_rate", scope: !1049, file: !1, line: 53, type: !62)
!1080 = !DILocation(line: 53, column: 16, scope: !1049)
!1081 = !DILocalVariable(name: "tmp_rate", scope: !1049, file: !1, line: 54, type: !67)
!1082 = !DILocation(line: 54, column: 7, scope: !1049)
!1083 = !DILocalVariable(name: "best_rate", scope: !1049, file: !1, line: 54, type: !67)
!1084 = !DILocation(line: 54, column: 17, scope: !1049)
!1085 = !DILocalVariable(name: "rate_diff", scope: !1049, file: !1, line: 55, type: !62)
!1086 = !DILocation(line: 55, column: 16, scope: !1049)
!1087 = !DILocalVariable(name: "best_rate_diff", scope: !1049, file: !1, line: 56, type: !62)
!1088 = !DILocation(line: 56, column: 16, scope: !1049)
!1089 = !DILocalVariable(name: "rate", scope: !1049, file: !1, line: 57, type: !67)
!1090 = !DILocation(line: 57, column: 7, scope: !1049)
!1091 = !DILocalVariable(name: "i", scope: !1049, file: !1, line: 58, type: !44)
!1092 = !DILocation(line: 58, column: 6, scope: !1049)
!1093 = !DILocation(line: 60, column: 6, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 60, column: 6)
!1095 = !DILocation(line: 60, column: 14, scope: !1094)
!1096 = !DILocation(line: 60, column: 17, scope: !1094)
!1097 = !DILocation(line: 60, column: 26, scope: !1094)
!1098 = !DILocation(line: 60, column: 29, scope: !1094)
!1099 = !DILocation(line: 60, column: 39, scope: !1094)
!1100 = !DILocation(line: 60, column: 6, scope: !1049)
!1101 = !DILocation(line: 61, column: 20, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 60, column: 55)
!1103 = !DILocation(line: 61, column: 29, scope: !1102)
!1104 = !DILocation(line: 61, column: 3, scope: !1102)
!1105 = !DILocation(line: 62, column: 10, scope: !1102)
!1106 = !DILocation(line: 62, column: 20, scope: !1102)
!1107 = !DILocation(line: 62, column: 35, scope: !1102)
!1108 = !DILocation(line: 62, column: 44, scope: !1102)
!1109 = !DILocation(line: 62, column: 3, scope: !1102)
!1110 = !DILocation(line: 63, column: 13, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 63, column: 13)
!1112 = !DILocation(line: 63, column: 21, scope: !1111)
!1113 = !DILocation(line: 63, column: 24, scope: !1111)
!1114 = !DILocation(line: 63, column: 33, scope: !1111)
!1115 = !DILocation(line: 63, column: 36, scope: !1111)
!1116 = !DILocation(line: 63, column: 46, scope: !1111)
!1117 = !DILocation(line: 63, column: 57, scope: !1111)
!1118 = !DILocation(line: 64, column: 6, scope: !1111)
!1119 = !DILocation(line: 64, column: 13, scope: !1111)
!1120 = !DILocation(line: 64, column: 16, scope: !1111)
!1121 = !DILocation(line: 64, column: 24, scope: !1111)
!1122 = !DILocation(line: 64, column: 27, scope: !1111)
!1123 = !DILocation(line: 64, column: 36, scope: !1111)
!1124 = !DILocation(line: 63, column: 13, scope: !1094)
!1125 = !DILocation(line: 65, column: 3, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 64, column: 48)
!1127 = !DILocation(line: 65, column: 8, scope: !1126)
!1128 = !DILocation(line: 65, column: 23, scope: !1126)
!1129 = !DILocation(line: 67, column: 24, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 67, column: 7)
!1131 = !DILocation(line: 67, column: 7, scope: !1130)
!1132 = !DILocation(line: 67, column: 28, scope: !1130)
!1133 = !DILocation(line: 67, column: 7, scope: !1126)
!1134 = !DILocation(line: 68, column: 31, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 67, column: 56)
!1136 = !DILocation(line: 68, column: 13, scope: !1135)
!1137 = !DILocation(line: 68, column: 11, scope: !1135)
!1138 = !DILocation(line: 69, column: 26, scope: !1135)
!1139 = !DILocation(line: 69, column: 4, scope: !1135)
!1140 = !DILocation(line: 69, column: 9, scope: !1135)
!1141 = !DILocation(line: 69, column: 24, scope: !1135)
!1142 = !DILocation(line: 70, column: 44, scope: !1135)
!1143 = !DILocation(line: 70, column: 28, scope: !1135)
!1144 = !DILocation(line: 70, column: 4, scope: !1135)
!1145 = !DILocation(line: 70, column: 9, scope: !1135)
!1146 = !DILocation(line: 70, column: 26, scope: !1135)
!1147 = !DILocation(line: 72, column: 11, scope: !1135)
!1148 = !DILocation(line: 72, column: 21, scope: !1135)
!1149 = !DILocation(line: 72, column: 32, scope: !1135)
!1150 = !DILocation(line: 72, column: 41, scope: !1135)
!1151 = !DILocation(line: 72, column: 46, scope: !1135)
!1152 = !DILocation(line: 73, column: 12, scope: !1135)
!1153 = !DILocation(line: 73, column: 17, scope: !1135)
!1154 = !DILocation(line: 72, column: 9, scope: !1135)
!1155 = !DILocation(line: 74, column: 8, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 74, column: 8)
!1157 = !DILocation(line: 74, column: 13, scope: !1156)
!1158 = !DILocation(line: 74, column: 8, scope: !1135)
!1159 = !DILocation(line: 75, column: 12, scope: !1156)
!1160 = !DILocation(line: 75, column: 5, scope: !1156)
!1161 = !DILocation(line: 77, column: 16, scope: !1135)
!1162 = !DILocation(line: 77, column: 4, scope: !1135)
!1163 = !DILocation(line: 77, column: 9, scope: !1135)
!1164 = !DILocation(line: 77, column: 14, scope: !1135)
!1165 = !DILocation(line: 78, column: 4, scope: !1135)
!1166 = !DILocation(line: 81, column: 10, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 81, column: 3)
!1168 = !DILocation(line: 81, column: 8, scope: !1167)
!1169 = !DILocation(line: 81, column: 15, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 81, column: 3)
!1171 = !DILocation(line: 81, column: 42, scope: !1170)
!1172 = !DILocation(line: 81, column: 19, scope: !1170)
!1173 = !DILocation(line: 81, column: 17, scope: !1170)
!1174 = !DILocation(line: 81, column: 3, scope: !1167)
!1175 = !DILocation(line: 82, column: 40, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1170, file: !1, line: 81, column: 56)
!1177 = !DILocation(line: 82, column: 48, scope: !1176)
!1178 = !DILocation(line: 82, column: 13, scope: !1176)
!1179 = !DILocation(line: 82, column: 11, scope: !1176)
!1180 = !DILocation(line: 83, column: 9, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 83, column: 8)
!1182 = !DILocation(line: 83, column: 8, scope: !1176)
!1183 = !DILocation(line: 84, column: 5, scope: !1181)
!1184 = !DILocation(line: 86, column: 34, scope: !1176)
!1185 = !DILocation(line: 86, column: 18, scope: !1176)
!1186 = !DILocation(line: 86, column: 16, scope: !1176)
!1187 = !DILocation(line: 88, column: 15, scope: !1176)
!1188 = !DILocation(line: 88, column: 25, scope: !1176)
!1189 = !DILocation(line: 88, column: 36, scope: !1176)
!1190 = !DILocation(line: 88, column: 45, scope: !1176)
!1191 = !DILocation(line: 88, column: 50, scope: !1176)
!1192 = !DILocation(line: 88, column: 13, scope: !1176)
!1193 = !DILocation(line: 90, column: 8, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 90, column: 8)
!1195 = !DILocation(line: 90, column: 17, scope: !1194)
!1196 = !DILocation(line: 90, column: 8, scope: !1176)
!1197 = !DILocation(line: 91, column: 5, scope: !1194)
!1198 = !DILocalVariable(name: "__x", scope: !1199, file: !1, line: 93, type: !67)
!1199 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 93, column: 16)
!1200 = !DILocation(line: 93, column: 16, scope: !1199)
!1201 = !DILocation(line: 93, column: 14, scope: !1176)
!1202 = !DILocation(line: 95, column: 9, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 95, column: 8)
!1204 = !DILocation(line: 95, column: 19, scope: !1203)
!1205 = !DILocation(line: 95, column: 23, scope: !1203)
!1206 = !DILocation(line: 95, column: 28, scope: !1203)
!1207 = !DILocation(line: 96, column: 12, scope: !1203)
!1208 = !DILocation(line: 96, column: 15, scope: !1203)
!1209 = !DILocation(line: 96, column: 32, scope: !1203)
!1210 = !DILocation(line: 96, column: 30, scope: !1203)
!1211 = !DILocation(line: 95, column: 8, scope: !1176)
!1212 = !DILocation(line: 97, column: 27, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 96, column: 43)
!1214 = !DILocation(line: 97, column: 5, scope: !1213)
!1215 = !DILocation(line: 97, column: 10, scope: !1213)
!1216 = !DILocation(line: 97, column: 25, scope: !1213)
!1217 = !DILocation(line: 98, column: 29, scope: !1213)
!1218 = !DILocation(line: 98, column: 5, scope: !1213)
!1219 = !DILocation(line: 98, column: 10, scope: !1213)
!1220 = !DILocation(line: 98, column: 27, scope: !1213)
!1221 = !DILocation(line: 99, column: 22, scope: !1213)
!1222 = !DILocation(line: 99, column: 20, scope: !1213)
!1223 = !DILocation(line: 100, column: 17, scope: !1213)
!1224 = !DILocation(line: 100, column: 15, scope: !1213)
!1225 = !DILocation(line: 101, column: 4, scope: !1213)
!1226 = !DILocation(line: 103, column: 9, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 103, column: 8)
!1228 = !DILocation(line: 103, column: 8, scope: !1176)
!1229 = !DILocation(line: 104, column: 5, scope: !1227)
!1230 = !DILocation(line: 105, column: 3, scope: !1176)
!1231 = !DILocation(line: 81, column: 52, scope: !1170)
!1232 = !DILocation(line: 81, column: 3, scope: !1170)
!1233 = distinct !{!1233, !1174, !1234}
!1234 = !DILocation(line: 105, column: 3, scope: !1167)
!1235 = !DILocation(line: 107, column: 15, scope: !1126)
!1236 = !DILocation(line: 107, column: 3, scope: !1126)
!1237 = !DILocation(line: 107, column: 8, scope: !1126)
!1238 = !DILocation(line: 107, column: 13, scope: !1126)
!1239 = !DILocation(line: 108, column: 3, scope: !1126)
!1240 = !DILocation(line: 109, column: 13, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 109, column: 13)
!1242 = !DILocation(line: 109, column: 20, scope: !1241)
!1243 = !DILocation(line: 109, column: 23, scope: !1241)
!1244 = !DILocation(line: 109, column: 31, scope: !1241)
!1245 = !DILocation(line: 109, column: 34, scope: !1241)
!1246 = !DILocation(line: 109, column: 43, scope: !1241)
!1247 = !DILocation(line: 109, column: 13, scope: !1111)
!1248 = !DILocation(line: 110, column: 20, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 109, column: 59)
!1250 = !DILocation(line: 110, column: 28, scope: !1249)
!1251 = !DILocation(line: 110, column: 3, scope: !1249)
!1252 = !DILocation(line: 111, column: 10, scope: !1249)
!1253 = !DILocation(line: 111, column: 19, scope: !1249)
!1254 = !DILocation(line: 111, column: 34, scope: !1249)
!1255 = !DILocation(line: 111, column: 42, scope: !1249)
!1256 = !DILocation(line: 111, column: 3, scope: !1249)
!1257 = !DILocation(line: 113, column: 3, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 112, column: 9)
!1259 = !DILocation(line: 114, column: 3, scope: !1258)
!1260 = !DILocation(line: 116, column: 1, scope: !1049)
!1261 = distinct !DISubprogram(name: "clk_composite_recalc_rate", scope: !1, file: !1, line: 32, type: !60, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1262 = !DILocalVariable(name: "hw", arg: 1, scope: !1261, file: !1, line: 32, type: !45)
!1263 = !DILocation(line: 32, column: 63, scope: !1261)
!1264 = !DILocalVariable(name: "parent_rate", arg: 2, scope: !1261, file: !1, line: 33, type: !62)
!1265 = !DILocation(line: 33, column: 24, scope: !1261)
!1266 = !DILocalVariable(name: "composite", scope: !1261, file: !1, line: 35, type: !13)
!1267 = !DILocation(line: 35, column: 24, scope: !1261)
!1268 = !DILocalVariable(name: "__mptr", scope: !1269, file: !1, line: 35, type: !12)
!1269 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 35, column: 36)
!1270 = !DILocation(line: 35, column: 36, scope: !1269)
!1271 = !DILocation(line: 35, column: 36, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 35, column: 36)
!1273 = !DILocalVariable(name: "rate_ops", scope: !1261, file: !1, line: 36, type: !36)
!1274 = !DILocation(line: 36, column: 24, scope: !1261)
!1275 = !DILocation(line: 36, column: 35, scope: !1261)
!1276 = !DILocation(line: 36, column: 46, scope: !1261)
!1277 = !DILocalVariable(name: "rate_hw", scope: !1261, file: !1, line: 37, type: !45)
!1278 = !DILocation(line: 37, column: 17, scope: !1261)
!1279 = !DILocation(line: 37, column: 27, scope: !1261)
!1280 = !DILocation(line: 37, column: 38, scope: !1261)
!1281 = !DILocation(line: 39, column: 19, scope: !1261)
!1282 = !DILocation(line: 39, column: 28, scope: !1261)
!1283 = !DILocation(line: 39, column: 2, scope: !1261)
!1284 = !DILocation(line: 41, column: 9, scope: !1261)
!1285 = !DILocation(line: 41, column: 19, scope: !1261)
!1286 = !DILocation(line: 41, column: 31, scope: !1261)
!1287 = !DILocation(line: 41, column: 40, scope: !1261)
!1288 = !DILocation(line: 41, column: 2, scope: !1261)
!1289 = distinct !DISubprogram(name: "clk_composite_round_rate", scope: !1, file: !1, line: 118, type: !65, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1290 = !DILocalVariable(name: "hw", arg: 1, scope: !1289, file: !1, line: 118, type: !45)
!1291 = !DILocation(line: 118, column: 53, scope: !1289)
!1292 = !DILocalVariable(name: "rate", arg: 2, scope: !1289, file: !1, line: 118, type: !62)
!1293 = !DILocation(line: 118, column: 71, scope: !1289)
!1294 = !DILocalVariable(name: "prate", arg: 3, scope: !1289, file: !1, line: 119, type: !68)
!1295 = !DILocation(line: 119, column: 22, scope: !1289)
!1296 = !DILocalVariable(name: "composite", scope: !1289, file: !1, line: 121, type: !13)
!1297 = !DILocation(line: 121, column: 24, scope: !1289)
!1298 = !DILocalVariable(name: "__mptr", scope: !1299, file: !1, line: 121, type: !12)
!1299 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 121, column: 36)
!1300 = !DILocation(line: 121, column: 36, scope: !1299)
!1301 = !DILocation(line: 121, column: 36, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 121, column: 36)
!1303 = !DILocalVariable(name: "rate_ops", scope: !1289, file: !1, line: 122, type: !36)
!1304 = !DILocation(line: 122, column: 24, scope: !1289)
!1305 = !DILocation(line: 122, column: 35, scope: !1289)
!1306 = !DILocation(line: 122, column: 46, scope: !1289)
!1307 = !DILocalVariable(name: "rate_hw", scope: !1289, file: !1, line: 123, type: !45)
!1308 = !DILocation(line: 123, column: 17, scope: !1289)
!1309 = !DILocation(line: 123, column: 27, scope: !1289)
!1310 = !DILocation(line: 123, column: 38, scope: !1289)
!1311 = !DILocation(line: 125, column: 19, scope: !1289)
!1312 = !DILocation(line: 125, column: 28, scope: !1289)
!1313 = !DILocation(line: 125, column: 2, scope: !1289)
!1314 = !DILocation(line: 127, column: 9, scope: !1289)
!1315 = !DILocation(line: 127, column: 19, scope: !1289)
!1316 = !DILocation(line: 127, column: 30, scope: !1289)
!1317 = !DILocation(line: 127, column: 39, scope: !1289)
!1318 = !DILocation(line: 127, column: 45, scope: !1289)
!1319 = !DILocation(line: 127, column: 2, scope: !1289)
!1320 = distinct !DISubprogram(name: "clk_composite_set_rate", scope: !1, file: !1, line: 130, type: !96, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1321 = !DILocalVariable(name: "hw", arg: 1, scope: !1320, file: !1, line: 130, type: !45)
!1322 = !DILocation(line: 130, column: 50, scope: !1320)
!1323 = !DILocalVariable(name: "rate", arg: 2, scope: !1320, file: !1, line: 130, type: !62)
!1324 = !DILocation(line: 130, column: 68, scope: !1320)
!1325 = !DILocalVariable(name: "parent_rate", arg: 3, scope: !1320, file: !1, line: 131, type: !62)
!1326 = !DILocation(line: 131, column: 25, scope: !1320)
!1327 = !DILocalVariable(name: "composite", scope: !1320, file: !1, line: 133, type: !13)
!1328 = !DILocation(line: 133, column: 24, scope: !1320)
!1329 = !DILocalVariable(name: "__mptr", scope: !1330, file: !1, line: 133, type: !12)
!1330 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 133, column: 36)
!1331 = !DILocation(line: 133, column: 36, scope: !1330)
!1332 = !DILocation(line: 133, column: 36, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 133, column: 36)
!1334 = !DILocalVariable(name: "rate_ops", scope: !1320, file: !1, line: 134, type: !36)
!1335 = !DILocation(line: 134, column: 24, scope: !1320)
!1336 = !DILocation(line: 134, column: 35, scope: !1320)
!1337 = !DILocation(line: 134, column: 46, scope: !1320)
!1338 = !DILocalVariable(name: "rate_hw", scope: !1320, file: !1, line: 135, type: !45)
!1339 = !DILocation(line: 135, column: 17, scope: !1320)
!1340 = !DILocation(line: 135, column: 27, scope: !1320)
!1341 = !DILocation(line: 135, column: 38, scope: !1320)
!1342 = !DILocation(line: 137, column: 19, scope: !1320)
!1343 = !DILocation(line: 137, column: 28, scope: !1320)
!1344 = !DILocation(line: 137, column: 2, scope: !1320)
!1345 = !DILocation(line: 139, column: 9, scope: !1320)
!1346 = !DILocation(line: 139, column: 19, scope: !1320)
!1347 = !DILocation(line: 139, column: 28, scope: !1320)
!1348 = !DILocation(line: 139, column: 37, scope: !1320)
!1349 = !DILocation(line: 139, column: 43, scope: !1320)
!1350 = !DILocation(line: 139, column: 2, scope: !1320)
!1351 = distinct !DISubprogram(name: "clk_composite_set_rate_and_parent", scope: !1, file: !1, line: 142, type: !100, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1352 = !DILocalVariable(name: "hw", arg: 1, scope: !1351, file: !1, line: 142, type: !45)
!1353 = !DILocation(line: 142, column: 61, scope: !1351)
!1354 = !DILocalVariable(name: "rate", arg: 2, scope: !1351, file: !1, line: 143, type: !62)
!1355 = !DILocation(line: 143, column: 25, scope: !1351)
!1356 = !DILocalVariable(name: "parent_rate", arg: 3, scope: !1351, file: !1, line: 144, type: !62)
!1357 = !DILocation(line: 144, column: 25, scope: !1351)
!1358 = !DILocalVariable(name: "index", arg: 4, scope: !1351, file: !1, line: 145, type: !85)
!1359 = !DILocation(line: 145, column: 14, scope: !1351)
!1360 = !DILocalVariable(name: "composite", scope: !1351, file: !1, line: 147, type: !13)
!1361 = !DILocation(line: 147, column: 24, scope: !1351)
!1362 = !DILocalVariable(name: "__mptr", scope: !1363, file: !1, line: 147, type: !12)
!1363 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 147, column: 36)
!1364 = !DILocation(line: 147, column: 36, scope: !1363)
!1365 = !DILocation(line: 147, column: 36, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 147, column: 36)
!1367 = !DILocalVariable(name: "rate_ops", scope: !1351, file: !1, line: 148, type: !36)
!1368 = !DILocation(line: 148, column: 24, scope: !1351)
!1369 = !DILocation(line: 148, column: 35, scope: !1351)
!1370 = !DILocation(line: 148, column: 46, scope: !1351)
!1371 = !DILocalVariable(name: "mux_ops", scope: !1351, file: !1, line: 149, type: !36)
!1372 = !DILocation(line: 149, column: 24, scope: !1351)
!1373 = !DILocation(line: 149, column: 34, scope: !1351)
!1374 = !DILocation(line: 149, column: 45, scope: !1351)
!1375 = !DILocalVariable(name: "rate_hw", scope: !1351, file: !1, line: 150, type: !45)
!1376 = !DILocation(line: 150, column: 17, scope: !1351)
!1377 = !DILocation(line: 150, column: 27, scope: !1351)
!1378 = !DILocation(line: 150, column: 38, scope: !1351)
!1379 = !DILocalVariable(name: "mux_hw", scope: !1351, file: !1, line: 151, type: !45)
!1380 = !DILocation(line: 151, column: 17, scope: !1351)
!1381 = !DILocation(line: 151, column: 26, scope: !1351)
!1382 = !DILocation(line: 151, column: 37, scope: !1351)
!1383 = !DILocalVariable(name: "temp_rate", scope: !1351, file: !1, line: 152, type: !62)
!1384 = !DILocation(line: 152, column: 16, scope: !1351)
!1385 = !DILocation(line: 154, column: 19, scope: !1351)
!1386 = !DILocation(line: 154, column: 28, scope: !1351)
!1387 = !DILocation(line: 154, column: 2, scope: !1351)
!1388 = !DILocation(line: 155, column: 19, scope: !1351)
!1389 = !DILocation(line: 155, column: 27, scope: !1351)
!1390 = !DILocation(line: 155, column: 2, scope: !1351)
!1391 = !DILocation(line: 157, column: 14, scope: !1351)
!1392 = !DILocation(line: 157, column: 24, scope: !1351)
!1393 = !DILocation(line: 157, column: 36, scope: !1351)
!1394 = !DILocation(line: 157, column: 45, scope: !1351)
!1395 = !DILocation(line: 157, column: 12, scope: !1351)
!1396 = !DILocation(line: 158, column: 6, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 158, column: 6)
!1398 = !DILocation(line: 158, column: 18, scope: !1397)
!1399 = !DILocation(line: 158, column: 16, scope: !1397)
!1400 = !DILocation(line: 158, column: 6, scope: !1351)
!1401 = !DILocation(line: 159, column: 3, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 158, column: 24)
!1403 = !DILocation(line: 159, column: 13, scope: !1402)
!1404 = !DILocation(line: 159, column: 22, scope: !1402)
!1405 = !DILocation(line: 159, column: 31, scope: !1402)
!1406 = !DILocation(line: 159, column: 37, scope: !1402)
!1407 = !DILocation(line: 160, column: 3, scope: !1402)
!1408 = !DILocation(line: 160, column: 12, scope: !1402)
!1409 = !DILocation(line: 160, column: 23, scope: !1402)
!1410 = !DILocation(line: 160, column: 31, scope: !1402)
!1411 = !DILocation(line: 161, column: 2, scope: !1402)
!1412 = !DILocation(line: 162, column: 3, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 161, column: 9)
!1414 = !DILocation(line: 162, column: 12, scope: !1413)
!1415 = !DILocation(line: 162, column: 23, scope: !1413)
!1416 = !DILocation(line: 162, column: 31, scope: !1413)
!1417 = !DILocation(line: 163, column: 3, scope: !1413)
!1418 = !DILocation(line: 163, column: 13, scope: !1413)
!1419 = !DILocation(line: 163, column: 22, scope: !1413)
!1420 = !DILocation(line: 163, column: 31, scope: !1413)
!1421 = !DILocation(line: 163, column: 37, scope: !1413)
!1422 = !DILocation(line: 166, column: 2, scope: !1351)
!1423 = distinct !DISubprogram(name: "clk_composite_is_enabled", scope: !1, file: !1, line: 169, type: !42, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1424 = !DILocalVariable(name: "hw", arg: 1, scope: !1423, file: !1, line: 169, type: !45)
!1425 = !DILocation(line: 169, column: 52, scope: !1423)
!1426 = !DILocalVariable(name: "composite", scope: !1423, file: !1, line: 171, type: !13)
!1427 = !DILocation(line: 171, column: 24, scope: !1423)
!1428 = !DILocalVariable(name: "__mptr", scope: !1429, file: !1, line: 171, type: !12)
!1429 = distinct !DILexicalBlock(scope: !1423, file: !1, line: 171, column: 36)
!1430 = !DILocation(line: 171, column: 36, scope: !1429)
!1431 = !DILocation(line: 171, column: 36, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 171, column: 36)
!1433 = !DILocalVariable(name: "gate_ops", scope: !1423, file: !1, line: 172, type: !36)
!1434 = !DILocation(line: 172, column: 24, scope: !1423)
!1435 = !DILocation(line: 172, column: 35, scope: !1423)
!1436 = !DILocation(line: 172, column: 46, scope: !1423)
!1437 = !DILocalVariable(name: "gate_hw", scope: !1423, file: !1, line: 173, type: !45)
!1438 = !DILocation(line: 173, column: 17, scope: !1423)
!1439 = !DILocation(line: 173, column: 27, scope: !1423)
!1440 = !DILocation(line: 173, column: 38, scope: !1423)
!1441 = !DILocation(line: 175, column: 19, scope: !1423)
!1442 = !DILocation(line: 175, column: 28, scope: !1423)
!1443 = !DILocation(line: 175, column: 2, scope: !1423)
!1444 = !DILocation(line: 177, column: 9, scope: !1423)
!1445 = !DILocation(line: 177, column: 19, scope: !1423)
!1446 = !DILocation(line: 177, column: 30, scope: !1423)
!1447 = !DILocation(line: 177, column: 2, scope: !1423)
!1448 = distinct !DISubprogram(name: "clk_composite_enable", scope: !1, file: !1, line: 180, type: !42, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1449 = !DILocalVariable(name: "hw", arg: 1, scope: !1448, file: !1, line: 180, type: !45)
!1450 = !DILocation(line: 180, column: 48, scope: !1448)
!1451 = !DILocalVariable(name: "composite", scope: !1448, file: !1, line: 182, type: !13)
!1452 = !DILocation(line: 182, column: 24, scope: !1448)
!1453 = !DILocalVariable(name: "__mptr", scope: !1454, file: !1, line: 182, type: !12)
!1454 = distinct !DILexicalBlock(scope: !1448, file: !1, line: 182, column: 36)
!1455 = !DILocation(line: 182, column: 36, scope: !1454)
!1456 = !DILocation(line: 182, column: 36, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 182, column: 36)
!1458 = !DILocalVariable(name: "gate_ops", scope: !1448, file: !1, line: 183, type: !36)
!1459 = !DILocation(line: 183, column: 24, scope: !1448)
!1460 = !DILocation(line: 183, column: 35, scope: !1448)
!1461 = !DILocation(line: 183, column: 46, scope: !1448)
!1462 = !DILocalVariable(name: "gate_hw", scope: !1448, file: !1, line: 184, type: !45)
!1463 = !DILocation(line: 184, column: 17, scope: !1448)
!1464 = !DILocation(line: 184, column: 27, scope: !1448)
!1465 = !DILocation(line: 184, column: 38, scope: !1448)
!1466 = !DILocation(line: 186, column: 19, scope: !1448)
!1467 = !DILocation(line: 186, column: 28, scope: !1448)
!1468 = !DILocation(line: 186, column: 2, scope: !1448)
!1469 = !DILocation(line: 188, column: 9, scope: !1448)
!1470 = !DILocation(line: 188, column: 19, scope: !1448)
!1471 = !DILocation(line: 188, column: 26, scope: !1448)
!1472 = !DILocation(line: 188, column: 2, scope: !1448)
!1473 = distinct !DISubprogram(name: "clk_composite_disable", scope: !1, file: !1, line: 191, type: !48, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1474 = !DILocalVariable(name: "hw", arg: 1, scope: !1473, file: !1, line: 191, type: !45)
!1475 = !DILocation(line: 191, column: 50, scope: !1473)
!1476 = !DILocalVariable(name: "composite", scope: !1473, file: !1, line: 193, type: !13)
!1477 = !DILocation(line: 193, column: 24, scope: !1473)
!1478 = !DILocalVariable(name: "__mptr", scope: !1479, file: !1, line: 193, type: !12)
!1479 = distinct !DILexicalBlock(scope: !1473, file: !1, line: 193, column: 36)
!1480 = !DILocation(line: 193, column: 36, scope: !1479)
!1481 = !DILocation(line: 193, column: 36, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !1, line: 193, column: 36)
!1483 = !DILocalVariable(name: "gate_ops", scope: !1473, file: !1, line: 194, type: !36)
!1484 = !DILocation(line: 194, column: 24, scope: !1473)
!1485 = !DILocation(line: 194, column: 35, scope: !1473)
!1486 = !DILocation(line: 194, column: 46, scope: !1473)
!1487 = !DILocalVariable(name: "gate_hw", scope: !1473, file: !1, line: 195, type: !45)
!1488 = !DILocation(line: 195, column: 17, scope: !1473)
!1489 = !DILocation(line: 195, column: 27, scope: !1473)
!1490 = !DILocation(line: 195, column: 38, scope: !1473)
!1491 = !DILocation(line: 197, column: 19, scope: !1473)
!1492 = !DILocation(line: 197, column: 28, scope: !1473)
!1493 = !DILocation(line: 197, column: 2, scope: !1473)
!1494 = !DILocation(line: 199, column: 2, scope: !1473)
!1495 = !DILocation(line: 199, column: 12, scope: !1473)
!1496 = !DILocation(line: 199, column: 20, scope: !1473)
!1497 = !DILocation(line: 200, column: 1, scope: !1473)
!1498 = distinct !DISubprogram(name: "get_order", scope: !1499, file: !1499, line: 29, type: !1500, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1499 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!44, !62}
!1502 = !DILocalVariable(name: "x", arg: 1, scope: !1503, file: !1504, line: 366, type: !1507)
!1503 = distinct !DISubprogram(name: "fls64", scope: !1504, file: !1504, line: 366, type: !1505, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1504 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!44, !1507}
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !88, line: 31, baseType: !1508)
!1508 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1509 = !DILocation(line: 366, column: 40, scope: !1503, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 46, column: 9, scope: !1498)
!1511 = !DILocalVariable(name: "bitpos", scope: !1503, file: !1504, line: 368, type: !44)
!1512 = !DILocation(line: 368, column: 6, scope: !1503, inlinedAt: !1510)
!1513 = !DILocalVariable(name: "size", arg: 1, scope: !1498, file: !1499, line: 29, type: !62)
!1514 = !DILocation(line: 29, column: 63, scope: !1498)
!1515 = !DILocation(line: 31, column: 27, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1498, file: !1499, line: 31, column: 6)
!1517 = !DILocation(line: 31, column: 6, scope: !1516)
!1518 = !DILocation(line: 31, column: 6, scope: !1498)
!1519 = !DILocation(line: 32, column: 8, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !1499, line: 32, column: 7)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !1499, line: 31, column: 34)
!1522 = !DILocation(line: 32, column: 7, scope: !1521)
!1523 = !DILocation(line: 33, column: 4, scope: !1520)
!1524 = !DILocation(line: 35, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !1499, line: 35, column: 7)
!1526 = !DILocation(line: 35, column: 12, scope: !1525)
!1527 = !DILocation(line: 35, column: 7, scope: !1521)
!1528 = !DILocation(line: 36, column: 4, scope: !1525)
!1529 = !DILocation(line: 38, column: 10, scope: !1521)
!1530 = !DILocation(line: 38, column: 28, scope: !1521)
!1531 = !DILocation(line: 38, column: 41, scope: !1521)
!1532 = !DILocation(line: 38, column: 3, scope: !1521)
!1533 = !DILocation(line: 41, column: 6, scope: !1498)
!1534 = !DILocation(line: 42, column: 7, scope: !1498)
!1535 = !DILocation(line: 46, column: 15, scope: !1498)
!1536 = !DILocation(line: 374, column: 2, scope: !1503, inlinedAt: !1510)
!1537 = !DILocation(line: 376, column: 14, scope: !1503, inlinedAt: !1510)
!1538 = !{i32 293774}
!1539 = !DILocation(line: 377, column: 9, scope: !1503, inlinedAt: !1510)
!1540 = !DILocation(line: 377, column: 16, scope: !1503, inlinedAt: !1510)
!1541 = !DILocation(line: 46, column: 2, scope: !1498)
!1542 = !DILocation(line: 48, column: 1, scope: !1498)
!1543 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1544, file: !1544, line: 30, type: !1545, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1544 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!44, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !86, line: 23, baseType: !1507)
!1548 = !DILocation(line: 366, column: 40, scope: !1503, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 32, column: 9, scope: !1543)
!1550 = !DILocation(line: 368, column: 6, scope: !1503, inlinedAt: !1549)
!1551 = !DILocalVariable(name: "n", arg: 1, scope: !1543, file: !1544, line: 30, type: !1547)
!1552 = !DILocation(line: 30, column: 21, scope: !1543)
!1553 = !DILocation(line: 32, column: 15, scope: !1543)
!1554 = !DILocation(line: 374, column: 2, scope: !1503, inlinedAt: !1549)
!1555 = !DILocation(line: 376, column: 14, scope: !1503, inlinedAt: !1549)
!1556 = !DILocation(line: 377, column: 9, scope: !1503, inlinedAt: !1549)
!1557 = !DILocation(line: 377, column: 16, scope: !1503, inlinedAt: !1549)
!1558 = !DILocation(line: 32, column: 18, scope: !1543)
!1559 = !DILocation(line: 32, column: 2, scope: !1543)
!1560 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1561, file: !1561, line: 137, type: !1562, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1561 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!12, !720, !602, !712, !152}
!1564 = !DILocalVariable(name: "s", arg: 1, scope: !1560, file: !1561, line: 137, type: !720)
!1565 = !DILocation(line: 137, column: 54, scope: !1560)
!1566 = !DILocalVariable(name: "object", arg: 2, scope: !1560, file: !1561, line: 137, type: !602)
!1567 = !DILocation(line: 137, column: 69, scope: !1560)
!1568 = !DILocalVariable(name: "size", arg: 3, scope: !1560, file: !1561, line: 138, type: !712)
!1569 = !DILocation(line: 138, column: 12, scope: !1560)
!1570 = !DILocalVariable(name: "flags", arg: 4, scope: !1560, file: !1561, line: 138, type: !152)
!1571 = !DILocation(line: 138, column: 24, scope: !1560)
!1572 = !DILocation(line: 140, column: 17, scope: !1560)
!1573 = !DILocation(line: 140, column: 2, scope: !1560)
!1574 = distinct !DISubprogram(name: "__clk_hw_set_clk", scope: !15, file: !15, line: 1120, type: !1575, scopeLine: 1121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !165)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !45, !45}
!1577 = !DILocalVariable(name: "dst", arg: 1, scope: !1574, file: !15, line: 1120, type: !45)
!1578 = !DILocation(line: 1120, column: 52, scope: !1574)
!1579 = !DILocalVariable(name: "src", arg: 2, scope: !1574, file: !15, line: 1120, type: !45)
!1580 = !DILocation(line: 1120, column: 72, scope: !1574)
!1581 = !DILocation(line: 1122, column: 13, scope: !1574)
!1582 = !DILocation(line: 1122, column: 18, scope: !1574)
!1583 = !DILocation(line: 1122, column: 2, scope: !1574)
!1584 = !DILocation(line: 1122, column: 7, scope: !1574)
!1585 = !DILocation(line: 1122, column: 11, scope: !1574)
!1586 = !DILocation(line: 1123, column: 14, scope: !1574)
!1587 = !DILocation(line: 1123, column: 19, scope: !1574)
!1588 = !DILocation(line: 1123, column: 2, scope: !1574)
!1589 = !DILocation(line: 1123, column: 7, scope: !1574)
!1590 = !DILocation(line: 1123, column: 12, scope: !1574)
!1591 = !DILocation(line: 1124, column: 1, scope: !1574)
