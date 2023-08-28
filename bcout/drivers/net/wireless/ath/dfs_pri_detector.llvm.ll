; ModuleID = '../bcout/drivers/net/wireless/ath/dfs_pri_detector.llvm.bc'
source_filename = "drivers/net/wireless/ath/dfs_pri_detector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.ath_dfs_pool_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.kmem_cache = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.pri_detector = type { void (%struct.pri_detector*)*, %struct.pri_sequence* (%struct.pri_detector*, %struct.pulse_event*)*, void (%struct.pri_detector*, i64)*, %struct.radar_detector_specs*, i64, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.pri_sequence = type { %struct.list_head, i32, i32, i32, i32, i64, i64, i64 }
%struct.pulse_event = type { i64, i16, i8, i8, i8 }
%struct.radar_detector_specs = type { i8, i8, i8, i16, i16, i8, i8, i8, i8, i8 }
%struct.pulse_elem = type { %struct.list_head, i64 }

@global_dfs_pool_stats = dso_local global %struct.ath_dfs_pool_stats zeroinitializer, align 4, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pool_lock = internal global %struct.spinlock undef, align 1, !dbg !58
@singleton_pool_references = internal global i32 0, align 4, !dbg !75
@pulse_pool = internal global %struct.list_head { %struct.list_head* @pulse_pool, %struct.list_head* @pulse_pool }, align 8, !dbg !77
@pseq_pool = internal global %struct.list_head { %struct.list_head* @pseq_pool, %struct.list_head* @pseq_pool }, align 8, !dbg !79
@__preempt_count = external dso_local global i32, section ".data", align 4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pri_detector* @pri_detector_init(%struct.radar_detector_specs* %rs) #0 !dbg !96 {
entry:
  %retval = alloca %struct.pri_detector*, align 8
  %rs.addr = alloca %struct.radar_detector_specs*, align 8
  %de = alloca %struct.pri_detector*, align 8
  store %struct.radar_detector_specs* %rs, %struct.radar_detector_specs** %rs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.radar_detector_specs** %rs.addr, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata %struct.pri_detector** %de, metadata !153, metadata !DIExpression()), !dbg !154
  %call = call i8* @kzalloc(i64 88, i32 2592) #8, !dbg !155
  %0 = bitcast i8* %call to %struct.pri_detector*, !dbg !155
  store %struct.pri_detector* %0, %struct.pri_detector** %de, align 8, !dbg !156
  %1 = load %struct.pri_detector*, %struct.pri_detector** %de, align 8, !dbg !157
  %cmp = icmp eq %struct.pri_detector* %1, null, !dbg !159
  br i1 %cmp, label %if.then, label %if.end, !dbg !160

if.then:                                          ; preds = %entry
  store %struct.pri_detector* null, %struct.pri_detector** %retval, align 8, !dbg !161
  br label %return, !dbg !161

if.end:                                           ; preds = %entry
  %2 = load %struct.pri_detector*, %struct.pri_detector** %de, align 8, !dbg !162
  %exit = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %2, i32 0, i32 0, !dbg !163
  store void (%struct.pri_detector*)* @pri_detector_exit, void (%struct.pri_detector*)** %exit, align 8, !dbg !164
  %3 = load %struct.pri_detector*, %struct.pri_detector** %de, align 8, !dbg !165
  %add_pulse = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %3, i32 0, i32 1, !dbg !166
  store %struct.pri_sequence* (%struct.pri_detector*, %struct.pulse_event*)* @pri_detector_add_pulse, %struct.pri_sequence* (%struct.pri_detector*, %struct.pulse_event*)** %add_pulse, align 8, !dbg !167
  %4 = load %struct.pri_detector*, %struct.pri_detector** %de, align 8, !dbg !168
  %reset = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %4, i32 0, i32 2, !dbg !169
  store void (%struct.pri_detector*, i64)* @pri_detector_reset, void (%struct.pri_detector*, i64)** %reset, align 8, !dbg !170
  %5 = load %struct.pri_detector*, %struct.pri_detector** %de, align 8, !dbg !171
  %sequences = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %5, i32 0, i32 5, !dbg !172
  call void @INIT_LIST_HEAD(%struct.list_head* %sequences) #8, !dbg !173
  %6 = load %struct.pri_detector*, %struct.pri_detector** %de, align 8, !dbg !174
  %pulses = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %6, i32 0, i32 6, !dbg !175
  call void @INIT_LIST_HEAD(%struct.list_head* %pulses) #8, !dbg !176
  %7 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs.addr, align 8, !dbg !177
  %pri_max = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %7, i32 0, i32 4, !dbg !178
  %8 = load i16, i16* %pri_max, align 2, !dbg !178
  %conv = zext i16 %8 to i32, !dbg !177
  %9 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs.addr, align 8, !dbg !179
  %ppb = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %9, i32 0, i32 6, !dbg !180
  %10 = load i8, i8* %ppb, align 1, !dbg !180
  %conv1 = zext i8 %10 to i32, !dbg !179
  %mul = mul i32 %conv, %conv1, !dbg !181
  %11 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs.addr, align 8, !dbg !182
  %num_pri = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %11, i32 0, i32 5, !dbg !183
  %12 = load i8, i8* %num_pri, align 2, !dbg !183
  %conv2 = zext i8 %12 to i32, !dbg !182
  %mul3 = mul i32 %mul, %conv2, !dbg !184
  %13 = load %struct.pri_detector*, %struct.pri_detector** %de, align 8, !dbg !185
  %window_size = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %13, i32 0, i32 9, !dbg !186
  store i32 %mul3, i32* %window_size, align 8, !dbg !187
  %14 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs.addr, align 8, !dbg !188
  %ppb4 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %14, i32 0, i32 6, !dbg !189
  %15 = load i8, i8* %ppb4, align 1, !dbg !189
  %conv5 = zext i8 %15 to i32, !dbg !188
  %mul6 = mul i32 %conv5, 2, !dbg !190
  %16 = load %struct.pri_detector*, %struct.pri_detector** %de, align 8, !dbg !191
  %max_count = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %16, i32 0, i32 8, !dbg !192
  store i32 %mul6, i32* %max_count, align 4, !dbg !193
  %17 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs.addr, align 8, !dbg !194
  %18 = load %struct.pri_detector*, %struct.pri_detector** %de, align 8, !dbg !195
  %rs7 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %18, i32 0, i32 3, !dbg !196
  store %struct.radar_detector_specs* %17, %struct.radar_detector_specs** %rs7, align 8, !dbg !197
  call void @pool_register_ref() #8, !dbg !198
  %19 = load %struct.pri_detector*, %struct.pri_detector** %de, align 8, !dbg !199
  store %struct.pri_detector* %19, %struct.pri_detector** %retval, align 8, !dbg !200
  br label %return, !dbg !200

return:                                           ; preds = %if.end, %if.then
  %20 = load %struct.pri_detector*, %struct.pri_detector** %retval, align 8, !dbg !201
  ret %struct.pri_detector* %20, !dbg !201
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !202 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !209, metadata !DIExpression()), !dbg !216
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !222, metadata !DIExpression()), !dbg !223
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !224, metadata !DIExpression()), !dbg !225
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !226, metadata !DIExpression()), !dbg !227
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !228, metadata !DIExpression()), !dbg !232
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !234, metadata !DIExpression()), !dbg !238
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !240, metadata !DIExpression()), !dbg !244
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !249, metadata !DIExpression()), !dbg !250
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !251, metadata !DIExpression()), !dbg !252
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !253, metadata !DIExpression()), !dbg !254
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !255, metadata !DIExpression()), !dbg !256
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !257, metadata !DIExpression()), !dbg !258
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !259, metadata !DIExpression()), !dbg !260
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !261, metadata !DIExpression()), !dbg !262
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !263, metadata !DIExpression()), !dbg !264
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !265, metadata !DIExpression()), !dbg !266
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !267, metadata !DIExpression()), !dbg !268
  %0 = load i64, i64* %size.addr, align 8, !dbg !269
  %1 = load i32, i32* %flags.addr, align 4, !dbg !270
  %or = or i32 %1, 256, !dbg !271
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !272
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !273
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !274

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !275
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !276
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !277

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !278
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !279
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !280
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !281
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !258
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !282
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !283
  %10 = load i32, i32* %order.i.i, align 4, !dbg !284
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !285
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !286
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !287
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !288
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !288
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !288
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !288
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !288
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !289
  br label %kmalloc.exit, !dbg !289

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !290
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !291
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !291
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !293

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !294
  br label %kmalloc_index.exit.i, !dbg !294

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !295
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !297
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !298

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !299
  br label %kmalloc_index.exit.i, !dbg !299

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !300
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !302
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !303

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !304
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !305
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !306

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !307
  br label %kmalloc_index.exit.i, !dbg !307

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !308
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !310
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !311

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !312
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !313
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !314

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !315
  br label %kmalloc_index.exit.i, !dbg !315

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !316
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !318
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !319

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !320
  br label %kmalloc_index.exit.i, !dbg !320

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !321
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !323
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !324

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !325
  br label %kmalloc_index.exit.i, !dbg !325

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !326
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !328
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !329

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !330
  br label %kmalloc_index.exit.i, !dbg !330

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !331
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !333
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !334

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !335
  br label %kmalloc_index.exit.i, !dbg !335

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !336
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !338
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !339

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !340
  br label %kmalloc_index.exit.i, !dbg !340

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !341
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !343
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !344

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !345
  br label %kmalloc_index.exit.i, !dbg !345

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !346
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !348
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !349

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !350
  br label %kmalloc_index.exit.i, !dbg !350

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !351
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !353
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !354

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !355
  br label %kmalloc_index.exit.i, !dbg !355

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !356
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !358
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !359

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !360
  br label %kmalloc_index.exit.i, !dbg !360

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !361
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !363
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !364

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !365
  br label %kmalloc_index.exit.i, !dbg !365

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !366
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !368
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !369

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !370
  br label %kmalloc_index.exit.i, !dbg !370

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !371
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !373
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !374

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !375
  br label %kmalloc_index.exit.i, !dbg !375

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !376
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !378
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !379

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !380
  br label %kmalloc_index.exit.i, !dbg !380

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !381
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !383
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !384

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !385
  br label %kmalloc_index.exit.i, !dbg !385

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !386
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !388
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !389

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !390
  br label %kmalloc_index.exit.i, !dbg !390

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !391
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !393
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !394

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !395
  br label %kmalloc_index.exit.i, !dbg !395

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !396
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !398
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !399

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !400
  br label %kmalloc_index.exit.i, !dbg !400

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !401
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !403
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !404

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !405
  br label %kmalloc_index.exit.i, !dbg !405

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !406
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !408
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !409

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !410
  br label %kmalloc_index.exit.i, !dbg !410

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !411
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !413
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !414

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !415
  br label %kmalloc_index.exit.i, !dbg !415

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !416
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !418
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !419

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !420
  br label %kmalloc_index.exit.i, !dbg !420

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !421
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !423
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !424

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !425
  br label %kmalloc_index.exit.i, !dbg !425

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !426
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !428
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !429

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !430
  br label %kmalloc_index.exit.i, !dbg !430

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !431
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !433
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !434

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !435
  br label %kmalloc_index.exit.i, !dbg !435

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !436, !srcloc !439
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !440, !srcloc !443
  unreachable, !dbg !444

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !445
  store i32 %45, i32* %index.i, align 4, !dbg !446
  %46 = load i32, i32* %index.i, align 4, !dbg !447
  %tobool.i = icmp ne i32 %46, 0, !dbg !447
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !449

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !450
  br label %kmalloc.exit, !dbg !450

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !451
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !452
  %and.i.i = and i32 %48, 17, !dbg !452
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !452
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !452
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !452
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !452
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !454

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !455
  br label %kmalloc_type.exit.i, !dbg !455

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !456
  %and2.i.i = and i32 %49, 1, !dbg !457
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !456
  %50 = zext i1 %tobool3.i.i to i64, !dbg !456
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !456
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !458
  br label %kmalloc_type.exit.i, !dbg !458

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !459
  %idxprom.i = zext i32 %51 to i64, !dbg !460
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !460
  %52 = load i32, i32* %index.i, align 4, !dbg !461
  %idxprom6.i = zext i32 %52 to i64, !dbg !460
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !460
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !460
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !462
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !463
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !464
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !465
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !466
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !466
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !466
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !466
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !466
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !227
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !467
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !468
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !469
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !470
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !471
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !472
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !473
  store i8* %62, i8** %retval.i, align 8, !dbg !474
  br label %kmalloc.exit, !dbg !474

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !475
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !476
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !477
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !477
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !477
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !477
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !477
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !478
  br label %kmalloc.exit, !dbg !478

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !479
  ret i8* %65, !dbg !480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pri_detector_exit(%struct.pri_detector* %de) #0 !dbg !481 {
entry:
  %de.addr = alloca %struct.pri_detector*, align 8
  store %struct.pri_detector* %de, %struct.pri_detector** %de.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pri_detector** %de.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = load %struct.pri_detector*, %struct.pri_detector** %de.addr, align 8, !dbg !484
  call void @pri_detector_reset(%struct.pri_detector* %0, i64 0) #8, !dbg !485
  call void @pool_deregister_ref() #8, !dbg !486
  %1 = load %struct.pri_detector*, %struct.pri_detector** %de.addr, align 8, !dbg !487
  %2 = bitcast %struct.pri_detector* %1 to i8*, !dbg !487
  call void @kfree(i8* %2) #8, !dbg !488
  ret void, !dbg !489
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pri_sequence* @pri_detector_add_pulse(%struct.pri_detector* %de, %struct.pulse_event* %event) #0 !dbg !490 {
entry:
  %retval = alloca %struct.pri_sequence*, align 8
  %de.addr = alloca %struct.pri_detector*, align 8
  %event.addr = alloca %struct.pulse_event*, align 8
  %max_updated_seq = alloca i32, align 4
  %ps = alloca %struct.pri_sequence*, align 8
  %ts = alloca i64, align 8
  %rs = alloca %struct.radar_detector_specs*, align 8
  store %struct.pri_detector* %de, %struct.pri_detector** %de.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pri_detector** %de.addr, metadata !491, metadata !DIExpression()), !dbg !492
  store %struct.pulse_event* %event, %struct.pulse_event** %event.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pulse_event** %event.addr, metadata !493, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.declare(metadata i32* %max_updated_seq, metadata !495, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.declare(metadata %struct.pri_sequence** %ps, metadata !497, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata i64* %ts, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load %struct.pulse_event*, %struct.pulse_event** %event.addr, align 8, !dbg !501
  %ts1 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %0, i32 0, i32 0, !dbg !502
  %1 = load i64, i64* %ts1, align 8, !dbg !502
  store i64 %1, i64* %ts, align 8, !dbg !500
  call void @llvm.dbg.declare(metadata %struct.radar_detector_specs** %rs, metadata !503, metadata !DIExpression()), !dbg !504
  %2 = load %struct.pri_detector*, %struct.pri_detector** %de.addr, align 8, !dbg !505
  %rs2 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %2, i32 0, i32 3, !dbg !506
  %3 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs2, align 8, !dbg !506
  store %struct.radar_detector_specs* %3, %struct.radar_detector_specs** %rs, align 8, !dbg !504
  %4 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs, align 8, !dbg !507
  %width_min = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %4, i32 0, i32 1, !dbg !509
  %5 = load i8, i8* %width_min, align 1, !dbg !509
  %conv = zext i8 %5 to i32, !dbg !507
  %6 = load %struct.pulse_event*, %struct.pulse_event** %event.addr, align 8, !dbg !510
  %width = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %6, i32 0, i32 2, !dbg !511
  %7 = load i8, i8* %width, align 2, !dbg !511
  %conv3 = zext i8 %7 to i32, !dbg !510
  %cmp = icmp sgt i32 %conv, %conv3, !dbg !512
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !513

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs, align 8, !dbg !514
  %width_max = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %8, i32 0, i32 2, !dbg !515
  %9 = load i8, i8* %width_max, align 2, !dbg !515
  %conv5 = zext i8 %9 to i32, !dbg !514
  %10 = load %struct.pulse_event*, %struct.pulse_event** %event.addr, align 8, !dbg !516
  %width6 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %10, i32 0, i32 2, !dbg !517
  %11 = load i8, i8* %width6, align 2, !dbg !517
  %conv7 = zext i8 %11 to i32, !dbg !516
  %cmp8 = icmp slt i32 %conv5, %conv7, !dbg !518
  br i1 %cmp8, label %if.then, label %if.end, !dbg !519

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.pri_sequence* null, %struct.pri_sequence** %retval, align 8, !dbg !520
  br label %return, !dbg !520

if.end:                                           ; preds = %lor.lhs.false
  %12 = load i64, i64* %ts, align 8, !dbg !521
  %13 = load %struct.pri_detector*, %struct.pri_detector** %de.addr, align 8, !dbg !523
  %last_ts = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %13, i32 0, i32 4, !dbg !524
  %14 = load i64, i64* %last_ts, align 8, !dbg !524
  %sub = sub i64 %12, %14, !dbg !525
  %15 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs, align 8, !dbg !526
  %max_pri_tolerance = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %15, i32 0, i32 8, !dbg !527
  %16 = load i8, i8* %max_pri_tolerance, align 1, !dbg !527
  %conv10 = zext i8 %16 to i64, !dbg !526
  %cmp11 = icmp ult i64 %sub, %conv10, !dbg !528
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !529

if.then13:                                        ; preds = %if.end
  store %struct.pri_sequence* null, %struct.pri_sequence** %retval, align 8, !dbg !530
  br label %return, !dbg !530

if.end14:                                         ; preds = %if.end
  %17 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs, align 8, !dbg !531
  %chirp = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %17, i32 0, i32 9, !dbg !533
  %18 = load i8, i8* %chirp, align 2, !dbg !533
  %tobool = trunc i8 %18 to i1, !dbg !533
  br i1 %tobool, label %land.lhs.true, label %if.end25, !dbg !534

land.lhs.true:                                    ; preds = %if.end14
  %19 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs, align 8, !dbg !535
  %chirp16 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %19, i32 0, i32 9, !dbg !536
  %20 = load i8, i8* %chirp16, align 2, !dbg !536
  %tobool17 = trunc i8 %20 to i1, !dbg !536
  %conv18 = zext i1 %tobool17 to i32, !dbg !535
  %21 = load %struct.pulse_event*, %struct.pulse_event** %event.addr, align 8, !dbg !537
  %chirp19 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %21, i32 0, i32 4, !dbg !538
  %22 = load i8, i8* %chirp19, align 4, !dbg !538
  %tobool20 = trunc i8 %22 to i1, !dbg !538
  %conv21 = zext i1 %tobool20 to i32, !dbg !537
  %cmp22 = icmp ne i32 %conv18, %conv21, !dbg !539
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !540

if.then24:                                        ; preds = %land.lhs.true
  store %struct.pri_sequence* null, %struct.pri_sequence** %retval, align 8, !dbg !541
  br label %return, !dbg !541

if.end25:                                         ; preds = %land.lhs.true, %if.end14
  %23 = load i64, i64* %ts, align 8, !dbg !542
  %24 = load %struct.pri_detector*, %struct.pri_detector** %de.addr, align 8, !dbg !543
  %last_ts26 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %24, i32 0, i32 4, !dbg !544
  store i64 %23, i64* %last_ts26, align 8, !dbg !545
  %25 = load %struct.pri_detector*, %struct.pri_detector** %de.addr, align 8, !dbg !546
  %26 = load i64, i64* %ts, align 8, !dbg !547
  %call = call i32 @pseq_handler_add_to_existing_seqs(%struct.pri_detector* %25, i64 %26) #8, !dbg !548
  store i32 %call, i32* %max_updated_seq, align 4, !dbg !549
  %27 = load %struct.pri_detector*, %struct.pri_detector** %de.addr, align 8, !dbg !550
  %28 = load i64, i64* %ts, align 8, !dbg !552
  %29 = load i32, i32* %max_updated_seq, align 4, !dbg !553
  %call27 = call zeroext i1 @pseq_handler_create_sequences(%struct.pri_detector* %27, i64 %28, i32 %29) #8, !dbg !554
  br i1 %call27, label %if.end29, label %if.then28, !dbg !555

if.then28:                                        ; preds = %if.end25
  %30 = load %struct.pri_detector*, %struct.pri_detector** %de.addr, align 8, !dbg !556
  %31 = load i64, i64* %ts, align 8, !dbg !558
  call void @pri_detector_reset(%struct.pri_detector* %30, i64 %31) #8, !dbg !559
  store %struct.pri_sequence* null, %struct.pri_sequence** %retval, align 8, !dbg !560
  br label %return, !dbg !560

if.end29:                                         ; preds = %if.end25
  %32 = load %struct.pri_detector*, %struct.pri_detector** %de.addr, align 8, !dbg !561
  %call30 = call %struct.pri_sequence* @pseq_handler_check_detection(%struct.pri_detector* %32) #8, !dbg !562
  store %struct.pri_sequence* %call30, %struct.pri_sequence** %ps, align 8, !dbg !563
  %33 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !564
  %cmp31 = icmp eq %struct.pri_sequence* %33, null, !dbg !566
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !567

if.then33:                                        ; preds = %if.end29
  %34 = load %struct.pri_detector*, %struct.pri_detector** %de.addr, align 8, !dbg !568
  %35 = load i64, i64* %ts, align 8, !dbg !569
  %call34 = call zeroext i1 @pulse_queue_enqueue(%struct.pri_detector* %34, i64 %35) #8, !dbg !570
  br label %if.end35, !dbg !570

if.end35:                                         ; preds = %if.then33, %if.end29
  %36 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !571
  store %struct.pri_sequence* %36, %struct.pri_sequence** %retval, align 8, !dbg !572
  br label %return, !dbg !572

return:                                           ; preds = %if.end35, %if.then28, %if.then24, %if.then13, %if.then
  %37 = load %struct.pri_sequence*, %struct.pri_sequence** %retval, align 8, !dbg !573
  ret %struct.pri_sequence* %37, !dbg !573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pri_detector_reset(%struct.pri_detector* %pde, i64 %ts) #0 !dbg !574 {
entry:
  %pde.addr = alloca %struct.pri_detector*, align 8
  %ts.addr = alloca i64, align 8
  %ps = alloca %struct.pri_sequence*, align 8
  %ps0 = alloca %struct.pri_sequence*, align 8
  %p = alloca %struct.pulse_elem*, align 8
  %p0 = alloca %struct.pulse_elem*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pri_sequence*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.pri_sequence*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp15 = alloca %struct.pri_sequence*, align 8
  %__mptr17 = alloca i8*, align 8
  %tmp21 = alloca %struct.pulse_elem*, align 8
  %__mptr23 = alloca i8*, align 8
  %tmp28 = alloca %struct.pulse_elem*, align 8
  %__mptr38 = alloca i8*, align 8
  %tmp43 = alloca %struct.pulse_elem*, align 8
  store %struct.pri_detector* %pde, %struct.pri_detector** %pde.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pri_detector** %pde.addr, metadata !575, metadata !DIExpression()), !dbg !576
  store i64 %ts, i64* %ts.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ts.addr, metadata !577, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.declare(metadata %struct.pri_sequence** %ps, metadata !579, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.declare(metadata %struct.pri_sequence** %ps0, metadata !581, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.declare(metadata %struct.pulse_elem** %p, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.declare(metadata %struct.pulse_elem** %p0, metadata !585, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !587, metadata !DIExpression()), !dbg !590
  %0 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !590
  %sequences = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %0, i32 0, i32 5, !dbg !590
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %sequences, i32 0, i32 0, !dbg !590
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !590
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !590
  store i8* %2, i8** %__mptr, align 8, !dbg !590
  br label %do.body, !dbg !590

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !591

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !590
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !590
  %4 = bitcast i8* %add.ptr to %struct.pri_sequence*, !dbg !590
  store %struct.pri_sequence* %4, %struct.pri_sequence** %tmp, align 8, !dbg !591
  %5 = load %struct.pri_sequence*, %struct.pri_sequence** %tmp, align 8, !dbg !590
  store %struct.pri_sequence* %5, %struct.pri_sequence** %ps, align 8, !dbg !593
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !594, metadata !DIExpression()), !dbg !596
  %6 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !596
  %head = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %6, i32 0, i32 0, !dbg !596
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i32 0, i32 0, !dbg !596
  %7 = load %struct.list_head*, %struct.list_head** %next2, align 8, !dbg !596
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !596
  store i8* %8, i8** %__mptr1, align 8, !dbg !596
  br label %do.body3, !dbg !596

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !597

do.end4:                                          ; preds = %do.body3
  %9 = load i8*, i8** %__mptr1, align 8, !dbg !596
  %add.ptr6 = getelementptr i8, i8* %9, i64 0, !dbg !596
  %10 = bitcast i8* %add.ptr6 to %struct.pri_sequence*, !dbg !596
  store %struct.pri_sequence* %10, %struct.pri_sequence** %tmp5, align 8, !dbg !597
  %11 = load %struct.pri_sequence*, %struct.pri_sequence** %tmp5, align 8, !dbg !596
  store %struct.pri_sequence* %11, %struct.pri_sequence** %ps0, align 8, !dbg !593
  br label %for.cond, !dbg !593

for.cond:                                         ; preds = %do.end14, %do.end4
  %12 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !599
  %head7 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %12, i32 0, i32 0, !dbg !599
  %13 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !599
  %sequences8 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %13, i32 0, i32 5, !dbg !599
  %cmp = icmp eq %struct.list_head* %head7, %sequences8, !dbg !599
  %lnot = xor i1 %cmp, true, !dbg !599
  br i1 %lnot, label %for.body, label %for.end, !dbg !593

for.body:                                         ; preds = %for.cond
  %14 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !601
  %head9 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %14, i32 0, i32 0, !dbg !603
  call void @list_del_init(%struct.list_head* %head9) #8, !dbg !604
  %15 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !605
  call void @pool_put_pseq_elem(%struct.pri_sequence* %15) #8, !dbg !606
  br label %for.inc, !dbg !607

for.inc:                                          ; preds = %for.body
  %16 = load %struct.pri_sequence*, %struct.pri_sequence** %ps0, align 8, !dbg !599
  store %struct.pri_sequence* %16, %struct.pri_sequence** %ps, align 8, !dbg !599
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !608, metadata !DIExpression()), !dbg !610
  %17 = load %struct.pri_sequence*, %struct.pri_sequence** %ps0, align 8, !dbg !610
  %head11 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %17, i32 0, i32 0, !dbg !610
  %next12 = getelementptr inbounds %struct.list_head, %struct.list_head* %head11, i32 0, i32 0, !dbg !610
  %18 = load %struct.list_head*, %struct.list_head** %next12, align 8, !dbg !610
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !610
  store i8* %19, i8** %__mptr10, align 8, !dbg !610
  br label %do.body13, !dbg !610

do.body13:                                        ; preds = %for.inc
  br label %do.end14, !dbg !611

do.end14:                                         ; preds = %do.body13
  %20 = load i8*, i8** %__mptr10, align 8, !dbg !610
  %add.ptr16 = getelementptr i8, i8* %20, i64 0, !dbg !610
  %21 = bitcast i8* %add.ptr16 to %struct.pri_sequence*, !dbg !610
  store %struct.pri_sequence* %21, %struct.pri_sequence** %tmp15, align 8, !dbg !611
  %22 = load %struct.pri_sequence*, %struct.pri_sequence** %tmp15, align 8, !dbg !610
  store %struct.pri_sequence* %22, %struct.pri_sequence** %ps0, align 8, !dbg !599
  br label %for.cond, !dbg !599, !llvm.loop !613

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr17, metadata !615, metadata !DIExpression()), !dbg !618
  %23 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !618
  %pulses = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %23, i32 0, i32 6, !dbg !618
  %next18 = getelementptr inbounds %struct.list_head, %struct.list_head* %pulses, i32 0, i32 0, !dbg !618
  %24 = load %struct.list_head*, %struct.list_head** %next18, align 8, !dbg !618
  %25 = bitcast %struct.list_head* %24 to i8*, !dbg !618
  store i8* %25, i8** %__mptr17, align 8, !dbg !618
  br label %do.body19, !dbg !618

do.body19:                                        ; preds = %for.end
  br label %do.end20, !dbg !619

do.end20:                                         ; preds = %do.body19
  %26 = load i8*, i8** %__mptr17, align 8, !dbg !618
  %add.ptr22 = getelementptr i8, i8* %26, i64 0, !dbg !618
  %27 = bitcast i8* %add.ptr22 to %struct.pulse_elem*, !dbg !618
  store %struct.pulse_elem* %27, %struct.pulse_elem** %tmp21, align 8, !dbg !619
  %28 = load %struct.pulse_elem*, %struct.pulse_elem** %tmp21, align 8, !dbg !618
  store %struct.pulse_elem* %28, %struct.pulse_elem** %p, align 8, !dbg !621
  call void @llvm.dbg.declare(metadata i8** %__mptr23, metadata !622, metadata !DIExpression()), !dbg !624
  %29 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !624
  %head24 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %29, i32 0, i32 0, !dbg !624
  %next25 = getelementptr inbounds %struct.list_head, %struct.list_head* %head24, i32 0, i32 0, !dbg !624
  %30 = load %struct.list_head*, %struct.list_head** %next25, align 8, !dbg !624
  %31 = bitcast %struct.list_head* %30 to i8*, !dbg !624
  store i8* %31, i8** %__mptr23, align 8, !dbg !624
  br label %do.body26, !dbg !624

do.body26:                                        ; preds = %do.end20
  br label %do.end27, !dbg !625

do.end27:                                         ; preds = %do.body26
  %32 = load i8*, i8** %__mptr23, align 8, !dbg !624
  %add.ptr29 = getelementptr i8, i8* %32, i64 0, !dbg !624
  %33 = bitcast i8* %add.ptr29 to %struct.pulse_elem*, !dbg !624
  store %struct.pulse_elem* %33, %struct.pulse_elem** %tmp28, align 8, !dbg !625
  %34 = load %struct.pulse_elem*, %struct.pulse_elem** %tmp28, align 8, !dbg !624
  store %struct.pulse_elem* %34, %struct.pulse_elem** %p0, align 8, !dbg !621
  br label %for.cond30, !dbg !621

for.cond30:                                       ; preds = %do.end42, %do.end27
  %35 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !627
  %head31 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %35, i32 0, i32 0, !dbg !627
  %36 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !627
  %pulses32 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %36, i32 0, i32 6, !dbg !627
  %cmp33 = icmp eq %struct.list_head* %head31, %pulses32, !dbg !627
  %lnot34 = xor i1 %cmp33, true, !dbg !627
  br i1 %lnot34, label %for.body35, label %for.end45, !dbg !621

for.body35:                                       ; preds = %for.cond30
  %37 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !629
  %head36 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %37, i32 0, i32 0, !dbg !631
  call void @list_del_init(%struct.list_head* %head36) #8, !dbg !632
  %38 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !633
  call void @pool_put_pulse_elem(%struct.pulse_elem* %38) #8, !dbg !634
  br label %for.inc37, !dbg !635

for.inc37:                                        ; preds = %for.body35
  %39 = load %struct.pulse_elem*, %struct.pulse_elem** %p0, align 8, !dbg !627
  store %struct.pulse_elem* %39, %struct.pulse_elem** %p, align 8, !dbg !627
  call void @llvm.dbg.declare(metadata i8** %__mptr38, metadata !636, metadata !DIExpression()), !dbg !638
  %40 = load %struct.pulse_elem*, %struct.pulse_elem** %p0, align 8, !dbg !638
  %head39 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %40, i32 0, i32 0, !dbg !638
  %next40 = getelementptr inbounds %struct.list_head, %struct.list_head* %head39, i32 0, i32 0, !dbg !638
  %41 = load %struct.list_head*, %struct.list_head** %next40, align 8, !dbg !638
  %42 = bitcast %struct.list_head* %41 to i8*, !dbg !638
  store i8* %42, i8** %__mptr38, align 8, !dbg !638
  br label %do.body41, !dbg !638

do.body41:                                        ; preds = %for.inc37
  br label %do.end42, !dbg !639

do.end42:                                         ; preds = %do.body41
  %43 = load i8*, i8** %__mptr38, align 8, !dbg !638
  %add.ptr44 = getelementptr i8, i8* %43, i64 0, !dbg !638
  %44 = bitcast i8* %add.ptr44 to %struct.pulse_elem*, !dbg !638
  store %struct.pulse_elem* %44, %struct.pulse_elem** %tmp43, align 8, !dbg !639
  %45 = load %struct.pulse_elem*, %struct.pulse_elem** %tmp43, align 8, !dbg !638
  store %struct.pulse_elem* %45, %struct.pulse_elem** %p0, align 8, !dbg !627
  br label %for.cond30, !dbg !627, !llvm.loop !641

for.end45:                                        ; preds = %for.cond30
  %46 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !643
  %count = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %46, i32 0, i32 7, !dbg !644
  store i32 0, i32* %count, align 8, !dbg !645
  %47 = load i64, i64* %ts.addr, align 8, !dbg !646
  %48 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !647
  %last_ts = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %48, i32 0, i32 4, !dbg !648
  store i64 %47, i64* %last_ts, align 8, !dbg !649
  ret void, !dbg !650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !651 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !655, metadata !DIExpression()), !dbg !656
  br label %do.body, !dbg !657

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !658

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !660

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !658

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !662
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !662
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !662
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !662
  br label %do.end3, !dbg !662

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !658

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !664
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !665
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !666
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !667
  ret void, !dbg !668
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pool_register_ref() #0 !dbg !669 {
entry:
  call void @spin_lock_bh(%struct.spinlock* @pool_lock) #8, !dbg !672
  %0 = load i32, i32* @singleton_pool_references, align 4, !dbg !673
  %inc = add i32 %0, 1, !dbg !673
  store i32 %inc, i32* @singleton_pool_references, align 4, !dbg !673
  %1 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 0), align 4, !dbg !674
  %inc1 = add i32 %1, 1, !dbg !674
  store i32 %inc1, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 0), align 4, !dbg !674
  call void @spin_unlock_bh(%struct.spinlock* @pool_lock) #8, !dbg !675
  ret void, !dbg !676
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !677 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !681, metadata !DIExpression()), !dbg !686
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !688, metadata !DIExpression()), !dbg !689
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !690, metadata !DIExpression()), !dbg !691
  %0 = load i64, i64* %size.addr, align 8, !dbg !692
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !694
  br i1 %1, label %if.then, label %if.end447, !dbg !695

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !696
  %tobool = icmp ne i64 %2, 0, !dbg !696
  br i1 %tobool, label %if.end, label %if.then1, !dbg !699

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !700
  br label %return, !dbg !700

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !701
  %cmp = icmp ult i64 %3, 4096, !dbg !703
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !704

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !705
  br label %return, !dbg !705

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub = sub i64 %4, 1, !dbg !706
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !706
  br i1 %5, label %cond.true, label %cond.false442, !dbg !706

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub4 = sub i64 %6, 1, !dbg !706
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !706
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !706

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub6 = sub i64 %8, 1, !dbg !706
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !706
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !706

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !706

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub9 = sub i64 %9, 1, !dbg !706
  %and = and i64 %sub9, -9223372036854775808, !dbg !706
  %tobool10 = icmp ne i64 %and, 0, !dbg !706
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !706

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !706

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub13 = sub i64 %10, 1, !dbg !706
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !706
  %tobool15 = icmp ne i64 %and14, 0, !dbg !706
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !706

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !706

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub18 = sub i64 %11, 1, !dbg !706
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !706
  %tobool20 = icmp ne i64 %and19, 0, !dbg !706
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !706

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !706

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub23 = sub i64 %12, 1, !dbg !706
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !706
  %tobool25 = icmp ne i64 %and24, 0, !dbg !706
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !706

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !706

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub28 = sub i64 %13, 1, !dbg !706
  %and29 = and i64 %sub28, 576460752303423488, !dbg !706
  %tobool30 = icmp ne i64 %and29, 0, !dbg !706
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !706

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !706

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub33 = sub i64 %14, 1, !dbg !706
  %and34 = and i64 %sub33, 288230376151711744, !dbg !706
  %tobool35 = icmp ne i64 %and34, 0, !dbg !706
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !706

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !706

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub38 = sub i64 %15, 1, !dbg !706
  %and39 = and i64 %sub38, 144115188075855872, !dbg !706
  %tobool40 = icmp ne i64 %and39, 0, !dbg !706
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !706

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !706

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub43 = sub i64 %16, 1, !dbg !706
  %and44 = and i64 %sub43, 72057594037927936, !dbg !706
  %tobool45 = icmp ne i64 %and44, 0, !dbg !706
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !706

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !706

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub48 = sub i64 %17, 1, !dbg !706
  %and49 = and i64 %sub48, 36028797018963968, !dbg !706
  %tobool50 = icmp ne i64 %and49, 0, !dbg !706
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !706

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !706

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub53 = sub i64 %18, 1, !dbg !706
  %and54 = and i64 %sub53, 18014398509481984, !dbg !706
  %tobool55 = icmp ne i64 %and54, 0, !dbg !706
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !706

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !706

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub58 = sub i64 %19, 1, !dbg !706
  %and59 = and i64 %sub58, 9007199254740992, !dbg !706
  %tobool60 = icmp ne i64 %and59, 0, !dbg !706
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !706

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !706

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub63 = sub i64 %20, 1, !dbg !706
  %and64 = and i64 %sub63, 4503599627370496, !dbg !706
  %tobool65 = icmp ne i64 %and64, 0, !dbg !706
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !706

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !706

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub68 = sub i64 %21, 1, !dbg !706
  %and69 = and i64 %sub68, 2251799813685248, !dbg !706
  %tobool70 = icmp ne i64 %and69, 0, !dbg !706
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !706

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !706

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub73 = sub i64 %22, 1, !dbg !706
  %and74 = and i64 %sub73, 1125899906842624, !dbg !706
  %tobool75 = icmp ne i64 %and74, 0, !dbg !706
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !706

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !706

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub78 = sub i64 %23, 1, !dbg !706
  %and79 = and i64 %sub78, 562949953421312, !dbg !706
  %tobool80 = icmp ne i64 %and79, 0, !dbg !706
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !706

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !706

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub83 = sub i64 %24, 1, !dbg !706
  %and84 = and i64 %sub83, 281474976710656, !dbg !706
  %tobool85 = icmp ne i64 %and84, 0, !dbg !706
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !706

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !706

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub88 = sub i64 %25, 1, !dbg !706
  %and89 = and i64 %sub88, 140737488355328, !dbg !706
  %tobool90 = icmp ne i64 %and89, 0, !dbg !706
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !706

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !706

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub93 = sub i64 %26, 1, !dbg !706
  %and94 = and i64 %sub93, 70368744177664, !dbg !706
  %tobool95 = icmp ne i64 %and94, 0, !dbg !706
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !706

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !706

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub98 = sub i64 %27, 1, !dbg !706
  %and99 = and i64 %sub98, 35184372088832, !dbg !706
  %tobool100 = icmp ne i64 %and99, 0, !dbg !706
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !706

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !706

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub103 = sub i64 %28, 1, !dbg !706
  %and104 = and i64 %sub103, 17592186044416, !dbg !706
  %tobool105 = icmp ne i64 %and104, 0, !dbg !706
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !706

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !706

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub108 = sub i64 %29, 1, !dbg !706
  %and109 = and i64 %sub108, 8796093022208, !dbg !706
  %tobool110 = icmp ne i64 %and109, 0, !dbg !706
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !706

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !706

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub113 = sub i64 %30, 1, !dbg !706
  %and114 = and i64 %sub113, 4398046511104, !dbg !706
  %tobool115 = icmp ne i64 %and114, 0, !dbg !706
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !706

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !706

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub118 = sub i64 %31, 1, !dbg !706
  %and119 = and i64 %sub118, 2199023255552, !dbg !706
  %tobool120 = icmp ne i64 %and119, 0, !dbg !706
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !706

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !706

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub123 = sub i64 %32, 1, !dbg !706
  %and124 = and i64 %sub123, 1099511627776, !dbg !706
  %tobool125 = icmp ne i64 %and124, 0, !dbg !706
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !706

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !706

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub128 = sub i64 %33, 1, !dbg !706
  %and129 = and i64 %sub128, 549755813888, !dbg !706
  %tobool130 = icmp ne i64 %and129, 0, !dbg !706
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !706

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !706

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub133 = sub i64 %34, 1, !dbg !706
  %and134 = and i64 %sub133, 274877906944, !dbg !706
  %tobool135 = icmp ne i64 %and134, 0, !dbg !706
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !706

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !706

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub138 = sub i64 %35, 1, !dbg !706
  %and139 = and i64 %sub138, 137438953472, !dbg !706
  %tobool140 = icmp ne i64 %and139, 0, !dbg !706
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !706

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !706

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub143 = sub i64 %36, 1, !dbg !706
  %and144 = and i64 %sub143, 68719476736, !dbg !706
  %tobool145 = icmp ne i64 %and144, 0, !dbg !706
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !706

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !706

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub148 = sub i64 %37, 1, !dbg !706
  %and149 = and i64 %sub148, 34359738368, !dbg !706
  %tobool150 = icmp ne i64 %and149, 0, !dbg !706
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !706

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !706

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub153 = sub i64 %38, 1, !dbg !706
  %and154 = and i64 %sub153, 17179869184, !dbg !706
  %tobool155 = icmp ne i64 %and154, 0, !dbg !706
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !706

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !706

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub158 = sub i64 %39, 1, !dbg !706
  %and159 = and i64 %sub158, 8589934592, !dbg !706
  %tobool160 = icmp ne i64 %and159, 0, !dbg !706
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !706

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !706

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub163 = sub i64 %40, 1, !dbg !706
  %and164 = and i64 %sub163, 4294967296, !dbg !706
  %tobool165 = icmp ne i64 %and164, 0, !dbg !706
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !706

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !706

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub168 = sub i64 %41, 1, !dbg !706
  %and169 = and i64 %sub168, 2147483648, !dbg !706
  %tobool170 = icmp ne i64 %and169, 0, !dbg !706
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !706

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !706

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub173 = sub i64 %42, 1, !dbg !706
  %and174 = and i64 %sub173, 1073741824, !dbg !706
  %tobool175 = icmp ne i64 %and174, 0, !dbg !706
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !706

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !706

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub178 = sub i64 %43, 1, !dbg !706
  %and179 = and i64 %sub178, 536870912, !dbg !706
  %tobool180 = icmp ne i64 %and179, 0, !dbg !706
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !706

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !706

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub183 = sub i64 %44, 1, !dbg !706
  %and184 = and i64 %sub183, 268435456, !dbg !706
  %tobool185 = icmp ne i64 %and184, 0, !dbg !706
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !706

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !706

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub188 = sub i64 %45, 1, !dbg !706
  %and189 = and i64 %sub188, 134217728, !dbg !706
  %tobool190 = icmp ne i64 %and189, 0, !dbg !706
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !706

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !706

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub193 = sub i64 %46, 1, !dbg !706
  %and194 = and i64 %sub193, 67108864, !dbg !706
  %tobool195 = icmp ne i64 %and194, 0, !dbg !706
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !706

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !706

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub198 = sub i64 %47, 1, !dbg !706
  %and199 = and i64 %sub198, 33554432, !dbg !706
  %tobool200 = icmp ne i64 %and199, 0, !dbg !706
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !706

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !706

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub203 = sub i64 %48, 1, !dbg !706
  %and204 = and i64 %sub203, 16777216, !dbg !706
  %tobool205 = icmp ne i64 %and204, 0, !dbg !706
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !706

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !706

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub208 = sub i64 %49, 1, !dbg !706
  %and209 = and i64 %sub208, 8388608, !dbg !706
  %tobool210 = icmp ne i64 %and209, 0, !dbg !706
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !706

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !706

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub213 = sub i64 %50, 1, !dbg !706
  %and214 = and i64 %sub213, 4194304, !dbg !706
  %tobool215 = icmp ne i64 %and214, 0, !dbg !706
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !706

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !706

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub218 = sub i64 %51, 1, !dbg !706
  %and219 = and i64 %sub218, 2097152, !dbg !706
  %tobool220 = icmp ne i64 %and219, 0, !dbg !706
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !706

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !706

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub223 = sub i64 %52, 1, !dbg !706
  %and224 = and i64 %sub223, 1048576, !dbg !706
  %tobool225 = icmp ne i64 %and224, 0, !dbg !706
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !706

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !706

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub228 = sub i64 %53, 1, !dbg !706
  %and229 = and i64 %sub228, 524288, !dbg !706
  %tobool230 = icmp ne i64 %and229, 0, !dbg !706
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !706

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !706

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub233 = sub i64 %54, 1, !dbg !706
  %and234 = and i64 %sub233, 262144, !dbg !706
  %tobool235 = icmp ne i64 %and234, 0, !dbg !706
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !706

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !706

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub238 = sub i64 %55, 1, !dbg !706
  %and239 = and i64 %sub238, 131072, !dbg !706
  %tobool240 = icmp ne i64 %and239, 0, !dbg !706
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !706

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !706

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub243 = sub i64 %56, 1, !dbg !706
  %and244 = and i64 %sub243, 65536, !dbg !706
  %tobool245 = icmp ne i64 %and244, 0, !dbg !706
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !706

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !706

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub248 = sub i64 %57, 1, !dbg !706
  %and249 = and i64 %sub248, 32768, !dbg !706
  %tobool250 = icmp ne i64 %and249, 0, !dbg !706
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !706

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !706

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub253 = sub i64 %58, 1, !dbg !706
  %and254 = and i64 %sub253, 16384, !dbg !706
  %tobool255 = icmp ne i64 %and254, 0, !dbg !706
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !706

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !706

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub258 = sub i64 %59, 1, !dbg !706
  %and259 = and i64 %sub258, 8192, !dbg !706
  %tobool260 = icmp ne i64 %and259, 0, !dbg !706
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !706

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !706

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub263 = sub i64 %60, 1, !dbg !706
  %and264 = and i64 %sub263, 4096, !dbg !706
  %tobool265 = icmp ne i64 %and264, 0, !dbg !706
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !706

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !706

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub268 = sub i64 %61, 1, !dbg !706
  %and269 = and i64 %sub268, 2048, !dbg !706
  %tobool270 = icmp ne i64 %and269, 0, !dbg !706
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !706

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !706

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub273 = sub i64 %62, 1, !dbg !706
  %and274 = and i64 %sub273, 1024, !dbg !706
  %tobool275 = icmp ne i64 %and274, 0, !dbg !706
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !706

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !706

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub278 = sub i64 %63, 1, !dbg !706
  %and279 = and i64 %sub278, 512, !dbg !706
  %tobool280 = icmp ne i64 %and279, 0, !dbg !706
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !706

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !706

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub283 = sub i64 %64, 1, !dbg !706
  %and284 = and i64 %sub283, 256, !dbg !706
  %tobool285 = icmp ne i64 %and284, 0, !dbg !706
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !706

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !706

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub288 = sub i64 %65, 1, !dbg !706
  %and289 = and i64 %sub288, 128, !dbg !706
  %tobool290 = icmp ne i64 %and289, 0, !dbg !706
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !706

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !706

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub293 = sub i64 %66, 1, !dbg !706
  %and294 = and i64 %sub293, 64, !dbg !706
  %tobool295 = icmp ne i64 %and294, 0, !dbg !706
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !706

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !706

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub298 = sub i64 %67, 1, !dbg !706
  %and299 = and i64 %sub298, 32, !dbg !706
  %tobool300 = icmp ne i64 %and299, 0, !dbg !706
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !706

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !706

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub303 = sub i64 %68, 1, !dbg !706
  %and304 = and i64 %sub303, 16, !dbg !706
  %tobool305 = icmp ne i64 %and304, 0, !dbg !706
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !706

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !706

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub308 = sub i64 %69, 1, !dbg !706
  %and309 = and i64 %sub308, 8, !dbg !706
  %tobool310 = icmp ne i64 %and309, 0, !dbg !706
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !706

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !706

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub313 = sub i64 %70, 1, !dbg !706
  %and314 = and i64 %sub313, 4, !dbg !706
  %tobool315 = icmp ne i64 %and314, 0, !dbg !706
  %71 = zext i1 %tobool315 to i64, !dbg !706
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !706
  br label %cond.end, !dbg !706

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !706
  br label %cond.end317, !dbg !706

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !706
  br label %cond.end319, !dbg !706

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !706
  br label %cond.end321, !dbg !706

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !706
  br label %cond.end323, !dbg !706

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !706
  br label %cond.end325, !dbg !706

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !706
  br label %cond.end327, !dbg !706

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !706
  br label %cond.end329, !dbg !706

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !706
  br label %cond.end331, !dbg !706

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !706
  br label %cond.end333, !dbg !706

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !706
  br label %cond.end335, !dbg !706

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !706
  br label %cond.end337, !dbg !706

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !706
  br label %cond.end339, !dbg !706

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !706
  br label %cond.end341, !dbg !706

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !706
  br label %cond.end343, !dbg !706

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !706
  br label %cond.end345, !dbg !706

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !706
  br label %cond.end347, !dbg !706

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !706
  br label %cond.end349, !dbg !706

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !706
  br label %cond.end351, !dbg !706

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !706
  br label %cond.end353, !dbg !706

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !706
  br label %cond.end355, !dbg !706

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !706
  br label %cond.end357, !dbg !706

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !706
  br label %cond.end359, !dbg !706

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !706
  br label %cond.end361, !dbg !706

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !706
  br label %cond.end363, !dbg !706

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !706
  br label %cond.end365, !dbg !706

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !706
  br label %cond.end367, !dbg !706

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !706
  br label %cond.end369, !dbg !706

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !706
  br label %cond.end371, !dbg !706

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !706
  br label %cond.end373, !dbg !706

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !706
  br label %cond.end375, !dbg !706

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !706
  br label %cond.end377, !dbg !706

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !706
  br label %cond.end379, !dbg !706

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !706
  br label %cond.end381, !dbg !706

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !706
  br label %cond.end383, !dbg !706

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !706
  br label %cond.end385, !dbg !706

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !706
  br label %cond.end387, !dbg !706

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !706
  br label %cond.end389, !dbg !706

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !706
  br label %cond.end391, !dbg !706

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !706
  br label %cond.end393, !dbg !706

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !706
  br label %cond.end395, !dbg !706

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !706
  br label %cond.end397, !dbg !706

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !706
  br label %cond.end399, !dbg !706

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !706
  br label %cond.end401, !dbg !706

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !706
  br label %cond.end403, !dbg !706

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !706
  br label %cond.end405, !dbg !706

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !706
  br label %cond.end407, !dbg !706

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !706
  br label %cond.end409, !dbg !706

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !706
  br label %cond.end411, !dbg !706

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !706
  br label %cond.end413, !dbg !706

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !706
  br label %cond.end415, !dbg !706

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !706
  br label %cond.end417, !dbg !706

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !706
  br label %cond.end419, !dbg !706

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !706
  br label %cond.end421, !dbg !706

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !706
  br label %cond.end423, !dbg !706

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !706
  br label %cond.end425, !dbg !706

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !706
  br label %cond.end427, !dbg !706

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !706
  br label %cond.end429, !dbg !706

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !706
  br label %cond.end431, !dbg !706

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !706
  br label %cond.end433, !dbg !706

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !706
  br label %cond.end435, !dbg !706

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !706
  br label %cond.end437, !dbg !706

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !706
  br label %cond.end440, !dbg !706

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !706

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !706
  br label %cond.end444, !dbg !706

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !706
  %sub443 = sub i64 %72, 1, !dbg !706
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !706
  br label %cond.end444, !dbg !706

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !706
  %sub446 = sub i32 %cond445, 12, !dbg !707
  %add = add i32 %sub446, 1, !dbg !708
  store i32 %add, i32* %retval, align 4, !dbg !709
  br label %return, !dbg !709

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !710
  %dec = add i64 %73, -1, !dbg !710
  store i64 %dec, i64* %size.addr, align 8, !dbg !710
  %74 = load i64, i64* %size.addr, align 8, !dbg !711
  %shr = lshr i64 %74, 12, !dbg !711
  store i64 %shr, i64* %size.addr, align 8, !dbg !711
  %75 = load i64, i64* %size.addr, align 8, !dbg !712
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !689
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !713
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !714
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !713, !srcloc !715
  store i32 %78, i32* %bitpos.i, align 4, !dbg !713
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !716
  %add.i = add i32 %79, 1, !dbg !717
  store i32 %add.i, i32* %retval, align 4, !dbg !718
  br label %return, !dbg !718

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !719
  ret i32 %80, !dbg !719
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !720 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !681, metadata !DIExpression()), !dbg !724
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !688, metadata !DIExpression()), !dbg !726
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !727, metadata !DIExpression()), !dbg !728
  %0 = load i64, i64* %n.addr, align 8, !dbg !729
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !726
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !730
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !731
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !730, !srcloc !715
  store i32 %3, i32* %bitpos.i, align 4, !dbg !730
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !732
  %add.i = add i32 %4, 1, !dbg !733
  %sub = sub i32 %add.i, 1, !dbg !734
  ret i32 %sub, !dbg !735
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !736 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !742, metadata !DIExpression()), !dbg !743
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !744, metadata !DIExpression()), !dbg !745
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !746, metadata !DIExpression()), !dbg !747
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !748, metadata !DIExpression()), !dbg !749
  %0 = load i8*, i8** %object.addr, align 8, !dbg !750
  ret i8* %0, !dbg !751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pool_deregister_ref() #0 !dbg !752 {
entry:
  %ps = alloca %struct.pri_sequence*, align 8
  %ps0 = alloca %struct.pri_sequence*, align 8
  %p = alloca %struct.pulse_elem*, align 8
  %p0 = alloca %struct.pulse_elem*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pulse_elem*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.pulse_elem*, align 8
  %__mptr11 = alloca i8*, align 8
  %tmp16 = alloca %struct.pulse_elem*, align 8
  %__mptr18 = alloca i8*, align 8
  %tmp21 = alloca %struct.pri_sequence*, align 8
  %__mptr23 = alloca i8*, align 8
  %tmp28 = alloca %struct.pri_sequence*, align 8
  %__mptr38 = alloca i8*, align 8
  %tmp43 = alloca %struct.pri_sequence*, align 8
  call void @spin_lock_bh(%struct.spinlock* @pool_lock) #8, !dbg !753
  %0 = load i32, i32* @singleton_pool_references, align 4, !dbg !754
  %dec = add i32 %0, -1, !dbg !754
  store i32 %dec, i32* @singleton_pool_references, align 4, !dbg !754
  %1 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 0), align 4, !dbg !755
  %dec1 = add i32 %1, -1, !dbg !755
  store i32 %dec1, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 0), align 4, !dbg !755
  %2 = load i32, i32* @singleton_pool_references, align 4, !dbg !756
  %cmp = icmp eq i32 %2, 0, !dbg !758
  br i1 %cmp, label %if.then, label %if.end, !dbg !759

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.pri_sequence** %ps, metadata !760, metadata !DIExpression()), !dbg !762
  call void @llvm.dbg.declare(metadata %struct.pri_sequence** %ps0, metadata !763, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.declare(metadata %struct.pulse_elem** %p, metadata !765, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.declare(metadata %struct.pulse_elem** %p0, metadata !767, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !769, metadata !DIExpression()), !dbg !772
  %3 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pulse_pool, i32 0, i32 0), align 8, !dbg !772
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !772
  store i8* %4, i8** %__mptr, align 8, !dbg !772
  br label %do.body, !dbg !772

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !773

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !772
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !772
  %6 = bitcast i8* %add.ptr to %struct.pulse_elem*, !dbg !772
  store %struct.pulse_elem* %6, %struct.pulse_elem** %tmp, align 8, !dbg !773
  %7 = load %struct.pulse_elem*, %struct.pulse_elem** %tmp, align 8, !dbg !772
  store %struct.pulse_elem* %7, %struct.pulse_elem** %p, align 8, !dbg !775
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !776, metadata !DIExpression()), !dbg !778
  %8 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !778
  %head = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %8, i32 0, i32 0, !dbg !778
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i32 0, i32 0, !dbg !778
  %9 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !778
  %10 = bitcast %struct.list_head* %9 to i8*, !dbg !778
  store i8* %10, i8** %__mptr2, align 8, !dbg !778
  br label %do.body3, !dbg !778

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !779

do.end4:                                          ; preds = %do.body3
  %11 = load i8*, i8** %__mptr2, align 8, !dbg !778
  %add.ptr6 = getelementptr i8, i8* %11, i64 0, !dbg !778
  %12 = bitcast i8* %add.ptr6 to %struct.pulse_elem*, !dbg !778
  store %struct.pulse_elem* %12, %struct.pulse_elem** %tmp5, align 8, !dbg !779
  %13 = load %struct.pulse_elem*, %struct.pulse_elem** %tmp5, align 8, !dbg !778
  store %struct.pulse_elem* %13, %struct.pulse_elem** %p0, align 8, !dbg !775
  br label %for.cond, !dbg !775

for.cond:                                         ; preds = %do.end15, %do.end4
  %14 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !781
  %head7 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %14, i32 0, i32 0, !dbg !781
  %cmp8 = icmp eq %struct.list_head* %head7, @pulse_pool, !dbg !781
  %lnot = xor i1 %cmp8, true, !dbg !781
  br i1 %lnot, label %for.body, label %for.end, !dbg !775

for.body:                                         ; preds = %for.cond
  %15 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !783
  %head9 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %15, i32 0, i32 0, !dbg !785
  call void @list_del(%struct.list_head* %head9) #8, !dbg !786
  %16 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 1), align 4, !dbg !787
  %dec10 = add i32 %16, -1, !dbg !787
  store i32 %dec10, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 1), align 4, !dbg !787
  %17 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !788
  %18 = bitcast %struct.pulse_elem* %17 to i8*, !dbg !788
  call void @kfree(i8* %18) #8, !dbg !789
  br label %for.inc, !dbg !790

for.inc:                                          ; preds = %for.body
  %19 = load %struct.pulse_elem*, %struct.pulse_elem** %p0, align 8, !dbg !781
  store %struct.pulse_elem* %19, %struct.pulse_elem** %p, align 8, !dbg !781
  call void @llvm.dbg.declare(metadata i8** %__mptr11, metadata !791, metadata !DIExpression()), !dbg !793
  %20 = load %struct.pulse_elem*, %struct.pulse_elem** %p0, align 8, !dbg !793
  %head12 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %20, i32 0, i32 0, !dbg !793
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %head12, i32 0, i32 0, !dbg !793
  %21 = load %struct.list_head*, %struct.list_head** %next13, align 8, !dbg !793
  %22 = bitcast %struct.list_head* %21 to i8*, !dbg !793
  store i8* %22, i8** %__mptr11, align 8, !dbg !793
  br label %do.body14, !dbg !793

do.body14:                                        ; preds = %for.inc
  br label %do.end15, !dbg !794

do.end15:                                         ; preds = %do.body14
  %23 = load i8*, i8** %__mptr11, align 8, !dbg !793
  %add.ptr17 = getelementptr i8, i8* %23, i64 0, !dbg !793
  %24 = bitcast i8* %add.ptr17 to %struct.pulse_elem*, !dbg !793
  store %struct.pulse_elem* %24, %struct.pulse_elem** %tmp16, align 8, !dbg !794
  %25 = load %struct.pulse_elem*, %struct.pulse_elem** %tmp16, align 8, !dbg !793
  store %struct.pulse_elem* %25, %struct.pulse_elem** %p0, align 8, !dbg !781
  br label %for.cond, !dbg !781, !llvm.loop !796

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr18, metadata !798, metadata !DIExpression()), !dbg !801
  %26 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pseq_pool, i32 0, i32 0), align 8, !dbg !801
  %27 = bitcast %struct.list_head* %26 to i8*, !dbg !801
  store i8* %27, i8** %__mptr18, align 8, !dbg !801
  br label %do.body19, !dbg !801

do.body19:                                        ; preds = %for.end
  br label %do.end20, !dbg !802

do.end20:                                         ; preds = %do.body19
  %28 = load i8*, i8** %__mptr18, align 8, !dbg !801
  %add.ptr22 = getelementptr i8, i8* %28, i64 0, !dbg !801
  %29 = bitcast i8* %add.ptr22 to %struct.pri_sequence*, !dbg !801
  store %struct.pri_sequence* %29, %struct.pri_sequence** %tmp21, align 8, !dbg !802
  %30 = load %struct.pri_sequence*, %struct.pri_sequence** %tmp21, align 8, !dbg !801
  store %struct.pri_sequence* %30, %struct.pri_sequence** %ps, align 8, !dbg !804
  call void @llvm.dbg.declare(metadata i8** %__mptr23, metadata !805, metadata !DIExpression()), !dbg !807
  %31 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !807
  %head24 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %31, i32 0, i32 0, !dbg !807
  %next25 = getelementptr inbounds %struct.list_head, %struct.list_head* %head24, i32 0, i32 0, !dbg !807
  %32 = load %struct.list_head*, %struct.list_head** %next25, align 8, !dbg !807
  %33 = bitcast %struct.list_head* %32 to i8*, !dbg !807
  store i8* %33, i8** %__mptr23, align 8, !dbg !807
  br label %do.body26, !dbg !807

do.body26:                                        ; preds = %do.end20
  br label %do.end27, !dbg !808

do.end27:                                         ; preds = %do.body26
  %34 = load i8*, i8** %__mptr23, align 8, !dbg !807
  %add.ptr29 = getelementptr i8, i8* %34, i64 0, !dbg !807
  %35 = bitcast i8* %add.ptr29 to %struct.pri_sequence*, !dbg !807
  store %struct.pri_sequence* %35, %struct.pri_sequence** %tmp28, align 8, !dbg !808
  %36 = load %struct.pri_sequence*, %struct.pri_sequence** %tmp28, align 8, !dbg !807
  store %struct.pri_sequence* %36, %struct.pri_sequence** %ps0, align 8, !dbg !804
  br label %for.cond30, !dbg !804

for.cond30:                                       ; preds = %do.end42, %do.end27
  %37 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !810
  %head31 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %37, i32 0, i32 0, !dbg !810
  %cmp32 = icmp eq %struct.list_head* %head31, @pseq_pool, !dbg !810
  %lnot33 = xor i1 %cmp32, true, !dbg !810
  br i1 %lnot33, label %for.body34, label %for.end45, !dbg !804

for.body34:                                       ; preds = %for.cond30
  %38 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !812
  %head35 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %38, i32 0, i32 0, !dbg !814
  call void @list_del(%struct.list_head* %head35) #8, !dbg !815
  %39 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 4), align 4, !dbg !816
  %dec36 = add i32 %39, -1, !dbg !816
  store i32 %dec36, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 4), align 4, !dbg !816
  %40 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !817
  %41 = bitcast %struct.pri_sequence* %40 to i8*, !dbg !817
  call void @kfree(i8* %41) #8, !dbg !818
  br label %for.inc37, !dbg !819

for.inc37:                                        ; preds = %for.body34
  %42 = load %struct.pri_sequence*, %struct.pri_sequence** %ps0, align 8, !dbg !810
  store %struct.pri_sequence* %42, %struct.pri_sequence** %ps, align 8, !dbg !810
  call void @llvm.dbg.declare(metadata i8** %__mptr38, metadata !820, metadata !DIExpression()), !dbg !822
  %43 = load %struct.pri_sequence*, %struct.pri_sequence** %ps0, align 8, !dbg !822
  %head39 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %43, i32 0, i32 0, !dbg !822
  %next40 = getelementptr inbounds %struct.list_head, %struct.list_head* %head39, i32 0, i32 0, !dbg !822
  %44 = load %struct.list_head*, %struct.list_head** %next40, align 8, !dbg !822
  %45 = bitcast %struct.list_head* %44 to i8*, !dbg !822
  store i8* %45, i8** %__mptr38, align 8, !dbg !822
  br label %do.body41, !dbg !822

do.body41:                                        ; preds = %for.inc37
  br label %do.end42, !dbg !823

do.end42:                                         ; preds = %do.body41
  %46 = load i8*, i8** %__mptr38, align 8, !dbg !822
  %add.ptr44 = getelementptr i8, i8* %46, i64 0, !dbg !822
  %47 = bitcast i8* %add.ptr44 to %struct.pri_sequence*, !dbg !822
  store %struct.pri_sequence* %47, %struct.pri_sequence** %tmp43, align 8, !dbg !823
  %48 = load %struct.pri_sequence*, %struct.pri_sequence** %tmp43, align 8, !dbg !822
  store %struct.pri_sequence* %48, %struct.pri_sequence** %ps0, align 8, !dbg !810
  br label %for.cond30, !dbg !810, !llvm.loop !825

for.end45:                                        ; preds = %for.cond30
  br label %if.end, !dbg !827

if.end:                                           ; preds = %for.end45, %entry
  call void @spin_unlock_bh(%struct.spinlock* @pool_lock) #8, !dbg !828
  ret void, !dbg !829
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: alwaysinline noredzone nounwind sspstrong
define internal void @spin_lock_bh(%struct.spinlock* %lock) #6 !dbg !830 {
entry:
  %val.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr.i.i, metadata !835, metadata !DIExpression()), !dbg !840
  %pao_ID__.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pao_ID__.i.i, metadata !848, metadata !DIExpression()), !dbg !851
  %pto_val__.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pto_val__.i.i, metadata !852, metadata !DIExpression()), !dbg !856
  %ip.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %ip.addr.i, metadata !857, metadata !DIExpression()), !dbg !858
  %cnt.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %cnt.addr.i, metadata !859, metadata !DIExpression()), !dbg !860
  %lock.addr = alloca %struct.spinlock*, align 8
  %tmp = alloca i64, align 8
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !861, metadata !DIExpression()), !dbg !862
  br label %do.body, !dbg !863

do.body:                                          ; preds = %entry
  br label %__here, !dbg !864

__here:                                           ; preds = %indirectgoto, %do.body
  call void @llvm.dbg.label(metadata !866), !dbg !864
  store i64 ptrtoint (i8* blockaddress(@spin_lock_bh, %__here) to i64), i64* %tmp, align 8, !dbg !864
  %0 = load i64, i64* %tmp, align 8, !dbg !864
  store i64 %0, i64* %ip.addr.i, align 8
  store i32 512, i32* %cnt.addr.i, align 4
  %1 = load i32, i32* %cnt.addr.i, align 4, !dbg !867
  store i32 %1, i32* %val.addr.i.i, align 4
  %2 = load i32, i32* %val.addr.i.i, align 4, !dbg !851
  %3 = call i1 @llvm.is.constant.i32(i32 %2) #9, !dbg !851
  br i1 %3, label %land.lhs.true.i.i, label %cond.false.i.i, !dbg !851

land.lhs.true.i.i:                                ; preds = %__here
  %4 = load i32, i32* %val.addr.i.i, align 4, !dbg !851
  %cmp.i.i = icmp eq i32 %4, 1, !dbg !851
  br i1 %cmp.i.i, label %cond.true.i.i, label %lor.lhs.false.i.i, !dbg !851

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %5 = load i32, i32* %val.addr.i.i, align 4, !dbg !851
  %cmp1.i.i = icmp eq i32 %5, -1, !dbg !851
  br i1 %cmp1.i.i, label %cond.true.i.i, label %cond.false.i.i, !dbg !851

cond.true.i.i:                                    ; preds = %lor.lhs.false.i.i, %land.lhs.true.i.i
  %6 = load i32, i32* %val.addr.i.i, align 4, !dbg !851
  br label %__local_bh_disable_ip.exit, !dbg !851

cond.false.i.i:                                   ; preds = %lor.lhs.false.i.i, %__here
  br label %__local_bh_disable_ip.exit, !dbg !851

__local_bh_disable_ip.exit:                       ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %6, %cond.true.i.i ], [ 0, %cond.false.i.i ], !dbg !851
  store i32 %cond.i.i, i32* %pao_ID__.i.i, align 4, !dbg !851
  %7 = load i32, i32* %val.addr.i.i, align 4, !dbg !856
  %conv.i.i = sext i32 %7 to i64, !dbg !856
  %and.i.i = and i64 %conv.i.i, 4294967295, !dbg !856
  %conv3.i.i = trunc i64 %and.i.i to i32, !dbg !856
  store i32 %conv3.i.i, i32* %pto_val__.i.i, align 4, !dbg !856
  %8 = load i32, i32* %pto_val__.i.i, align 4, !dbg !856
  call void asm "addl $1, $0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(i32* @__preempt_count, i32 %8, i32* @__preempt_count) #9, !dbg !856, !srcloc !868
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !869, !srcloc !870
  br label %do.body1, !dbg !871

do.body1:                                         ; preds = %__local_bh_disable_ip.exit
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !872
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !872
  %rlock = bitcast %union.anon* %10 to %struct.raw_spinlock*, !dbg !872
  br label %do.end, !dbg !872

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !871

do.end2:                                          ; preds = %do.end
  ret void, !dbg !874

indirectgoto:                                     ; No predecessors!
  indirectbr i8* undef, [label %__here]
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !875 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !876, metadata !DIExpression()), !dbg !877
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !878
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !879
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !880
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !881
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !882
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !883
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !884
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !885
  ret void, !dbg !886
}

; Function Attrs: alwaysinline noredzone nounwind sspstrong
define internal void @spin_unlock_bh(%struct.spinlock* %lock) #6 !dbg !887 {
entry:
  %lock.addr = alloca %struct.spinlock*, align 8
  %tmp = alloca i64, align 8
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr, metadata !888, metadata !DIExpression()), !dbg !889
  br label %do.body, !dbg !890

do.body:                                          ; preds = %entry
  br label %__here, !dbg !891

__here:                                           ; preds = %indirectgoto, %do.body
  call void @llvm.dbg.label(metadata !894), !dbg !891
  store i64 ptrtoint (i8* blockaddress(@spin_unlock_bh, %__here) to i64), i64* %tmp, align 8, !dbg !891
  %0 = load i64, i64* %tmp, align 8, !dbg !891
  call void @__local_bh_enable_ip(i64 %0, i32 512) #8, !dbg !895
  br label %do.body1, !dbg !895

do.body1:                                         ; preds = %__here
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr, align 8, !dbg !896
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !896
  %rlock = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !896
  br label %do.end, !dbg !896

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !895

do.end2:                                          ; preds = %do.end
  ret void, !dbg !898

indirectgoto:                                     ; No predecessors!
  indirectbr i8* undef, [label %__here]
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !899 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !900, metadata !DIExpression()), !dbg !901
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !902
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !904
  br i1 %call, label %if.end, label %if.then, !dbg !905

if.then:                                          ; preds = %entry
  br label %return, !dbg !906

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !907
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !908
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !908
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !909
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !910
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !910
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !911
  br label %return, !dbg !912

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !912
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !913 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !916, metadata !DIExpression()), !dbg !917
  ret i1 true, !dbg !918
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !919 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !922, metadata !DIExpression()), !dbg !923
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !924, metadata !DIExpression()), !dbg !925
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !926
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !927
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !928
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !929
  br label %do.body, !dbg !930

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !931

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !933

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !931

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !935
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !935
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !935
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !935
  br label %do.end5, !dbg !935

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !931

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !937
}

; Function Attrs: noredzone
declare dso_local void @__local_bh_enable_ip(i64, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pseq_handler_add_to_existing_seqs(%struct.pri_detector* %pde, i64 %ts) #0 !dbg !938 {
entry:
  %pde.addr = alloca %struct.pri_detector*, align 8
  %ts.addr = alloca i64, align 8
  %max_count = alloca i32, align 4
  %ps = alloca %struct.pri_sequence*, align 8
  %ps2 = alloca %struct.pri_sequence*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pri_sequence*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.pri_sequence*, align 8
  %delta_ts = alloca i32, align 4
  %factor = alloca i32, align 4
  %__mptr24 = alloca i8*, align 8
  %tmp29 = alloca %struct.pri_sequence*, align 8
  store %struct.pri_detector* %pde, %struct.pri_detector** %pde.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pri_detector** %pde.addr, metadata !941, metadata !DIExpression()), !dbg !942
  store i64 %ts, i64* %ts.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ts.addr, metadata !943, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.declare(metadata i32* %max_count, metadata !945, metadata !DIExpression()), !dbg !946
  store i32 0, i32* %max_count, align 4, !dbg !946
  call void @llvm.dbg.declare(metadata %struct.pri_sequence** %ps, metadata !947, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.declare(metadata %struct.pri_sequence** %ps2, metadata !949, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !951, metadata !DIExpression()), !dbg !954
  %0 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !954
  %sequences = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %0, i32 0, i32 5, !dbg !954
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %sequences, i32 0, i32 0, !dbg !954
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !954
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !954
  store i8* %2, i8** %__mptr, align 8, !dbg !954
  br label %do.body, !dbg !954

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !955

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !954
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !954
  %4 = bitcast i8* %add.ptr to %struct.pri_sequence*, !dbg !954
  store %struct.pri_sequence* %4, %struct.pri_sequence** %tmp, align 8, !dbg !955
  %5 = load %struct.pri_sequence*, %struct.pri_sequence** %tmp, align 8, !dbg !954
  store %struct.pri_sequence* %5, %struct.pri_sequence** %ps, align 8, !dbg !957
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !958, metadata !DIExpression()), !dbg !960
  %6 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !960
  %head = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %6, i32 0, i32 0, !dbg !960
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i32 0, i32 0, !dbg !960
  %7 = load %struct.list_head*, %struct.list_head** %next2, align 8, !dbg !960
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !960
  store i8* %8, i8** %__mptr1, align 8, !dbg !960
  br label %do.body3, !dbg !960

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !961

do.end4:                                          ; preds = %do.body3
  %9 = load i8*, i8** %__mptr1, align 8, !dbg !960
  %add.ptr6 = getelementptr i8, i8* %9, i64 0, !dbg !960
  %10 = bitcast i8* %add.ptr6 to %struct.pri_sequence*, !dbg !960
  store %struct.pri_sequence* %10, %struct.pri_sequence** %tmp5, align 8, !dbg !961
  %11 = load %struct.pri_sequence*, %struct.pri_sequence** %tmp5, align 8, !dbg !960
  store %struct.pri_sequence* %11, %struct.pri_sequence** %ps2, align 8, !dbg !957
  br label %for.cond, !dbg !957

for.cond:                                         ; preds = %do.end28, %do.end4
  %12 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !963
  %head7 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %12, i32 0, i32 0, !dbg !963
  %13 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !963
  %sequences8 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %13, i32 0, i32 5, !dbg !963
  %cmp = icmp eq %struct.list_head* %head7, %sequences8, !dbg !963
  %lnot = xor i1 %cmp, true, !dbg !963
  br i1 %lnot, label %for.body, label %for.end, !dbg !957

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %delta_ts, metadata !965, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.declare(metadata i32* %factor, metadata !968, metadata !DIExpression()), !dbg !969
  %14 = load i64, i64* %ts.addr, align 8, !dbg !970
  %15 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !972
  %deadline_ts = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %15, i32 0, i32 7, !dbg !973
  %16 = load i64, i64* %deadline_ts, align 8, !dbg !973
  %cmp9 = icmp ugt i64 %14, %16, !dbg !974
  br i1 %cmp9, label %if.then, label %if.end, !dbg !975

if.then:                                          ; preds = %for.body
  %17 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !976
  %head10 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %17, i32 0, i32 0, !dbg !978
  call void @list_del_init(%struct.list_head* %head10) #8, !dbg !979
  %18 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !980
  call void @pool_put_pseq_elem(%struct.pri_sequence* %18) #8, !dbg !981
  br label %for.inc, !dbg !982

if.end:                                           ; preds = %for.body
  %19 = load i64, i64* %ts.addr, align 8, !dbg !983
  %20 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !984
  %last_ts = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %20, i32 0, i32 6, !dbg !985
  %21 = load i64, i64* %last_ts, align 8, !dbg !985
  %sub = sub i64 %19, %21, !dbg !986
  %conv = trunc i64 %sub to i32, !dbg !983
  store i32 %conv, i32* %delta_ts, align 4, !dbg !987
  %22 = load i32, i32* %delta_ts, align 4, !dbg !988
  %23 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !989
  %pri = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %23, i32 0, i32 1, !dbg !990
  %24 = load i32, i32* %pri, align 8, !dbg !990
  %25 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !991
  %rs = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %25, i32 0, i32 3, !dbg !992
  %26 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs, align 8, !dbg !992
  %max_pri_tolerance = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %26, i32 0, i32 8, !dbg !993
  %27 = load i8, i8* %max_pri_tolerance, align 1, !dbg !993
  %conv11 = zext i8 %27 to i32, !dbg !991
  %call = call i32 @pde_get_multiple(i32 %22, i32 %24, i32 %conv11) #8, !dbg !994
  store i32 %call, i32* %factor, align 4, !dbg !995
  %28 = load i32, i32* %factor, align 4, !dbg !996
  %cmp12 = icmp ugt i32 %28, 0, !dbg !998
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !999

if.then14:                                        ; preds = %if.end
  %29 = load i64, i64* %ts.addr, align 8, !dbg !1000
  %30 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !1002
  %last_ts15 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %30, i32 0, i32 6, !dbg !1003
  store i64 %29, i64* %last_ts15, align 8, !dbg !1004
  %31 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !1005
  %count = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %31, i32 0, i32 3, !dbg !1006
  %32 = load i32, i32* %count, align 8, !dbg !1007
  %inc = add i32 %32, 1, !dbg !1007
  store i32 %inc, i32* %count, align 8, !dbg !1007
  %33 = load i32, i32* %max_count, align 4, !dbg !1008
  %34 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !1010
  %count16 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %34, i32 0, i32 3, !dbg !1011
  %35 = load i32, i32* %count16, align 8, !dbg !1011
  %cmp17 = icmp ult i32 %33, %35, !dbg !1012
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !1013

if.then19:                                        ; preds = %if.then14
  %36 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !1014
  %count20 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %36, i32 0, i32 3, !dbg !1015
  %37 = load i32, i32* %count20, align 8, !dbg !1015
  store i32 %37, i32* %max_count, align 4, !dbg !1016
  br label %if.end21, !dbg !1017

if.end21:                                         ; preds = %if.then19, %if.then14
  br label %if.end23, !dbg !1018

if.else:                                          ; preds = %if.end
  %38 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !1019
  %count_falses = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %38, i32 0, i32 4, !dbg !1021
  %39 = load i32, i32* %count_falses, align 4, !dbg !1022
  %inc22 = add i32 %39, 1, !dbg !1022
  store i32 %inc22, i32* %count_falses, align 4, !dbg !1022
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end21
  br label %for.inc, !dbg !1023

for.inc:                                          ; preds = %if.end23, %if.then
  %40 = load %struct.pri_sequence*, %struct.pri_sequence** %ps2, align 8, !dbg !963
  store %struct.pri_sequence* %40, %struct.pri_sequence** %ps, align 8, !dbg !963
  call void @llvm.dbg.declare(metadata i8** %__mptr24, metadata !1024, metadata !DIExpression()), !dbg !1026
  %41 = load %struct.pri_sequence*, %struct.pri_sequence** %ps2, align 8, !dbg !1026
  %head25 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %41, i32 0, i32 0, !dbg !1026
  %next26 = getelementptr inbounds %struct.list_head, %struct.list_head* %head25, i32 0, i32 0, !dbg !1026
  %42 = load %struct.list_head*, %struct.list_head** %next26, align 8, !dbg !1026
  %43 = bitcast %struct.list_head* %42 to i8*, !dbg !1026
  store i8* %43, i8** %__mptr24, align 8, !dbg !1026
  br label %do.body27, !dbg !1026

do.body27:                                        ; preds = %for.inc
  br label %do.end28, !dbg !1027

do.end28:                                         ; preds = %do.body27
  %44 = load i8*, i8** %__mptr24, align 8, !dbg !1026
  %add.ptr30 = getelementptr i8, i8* %44, i64 0, !dbg !1026
  %45 = bitcast i8* %add.ptr30 to %struct.pri_sequence*, !dbg !1026
  store %struct.pri_sequence* %45, %struct.pri_sequence** %tmp29, align 8, !dbg !1027
  %46 = load %struct.pri_sequence*, %struct.pri_sequence** %tmp29, align 8, !dbg !1026
  store %struct.pri_sequence* %46, %struct.pri_sequence** %ps2, align 8, !dbg !963
  br label %for.cond, !dbg !963, !llvm.loop !1029

for.end:                                          ; preds = %for.cond
  %47 = load i32, i32* %max_count, align 4, !dbg !1031
  ret i32 %47, !dbg !1032
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pseq_handler_create_sequences(%struct.pri_detector* %pde, i64 %ts, i32 %min_count) #0 !dbg !1033 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !209, metadata !DIExpression()), !dbg !1036
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !222, metadata !DIExpression()), !dbg !1044
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !224, metadata !DIExpression()), !dbg !1045
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !226, metadata !DIExpression()), !dbg !1046
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !228, metadata !DIExpression()), !dbg !1047
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !234, metadata !DIExpression()), !dbg !1049
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !240, metadata !DIExpression()), !dbg !1051
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !249, metadata !DIExpression()), !dbg !1054
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !251, metadata !DIExpression()), !dbg !1055
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !253, metadata !DIExpression()), !dbg !1056
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !255, metadata !DIExpression()), !dbg !1057
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !257, metadata !DIExpression()), !dbg !1058
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !259, metadata !DIExpression()), !dbg !1059
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !261, metadata !DIExpression()), !dbg !1060
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !263, metadata !DIExpression()), !dbg !1061
  %retval = alloca i1, align 1
  %pde.addr = alloca %struct.pri_detector*, align 8
  %ts.addr = alloca i64, align 8
  %min_count.addr = alloca i32, align 4
  %p = alloca %struct.pulse_elem*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pulse_elem*, align 8
  %ps = alloca %struct.pri_sequence, align 8
  %new_ps = alloca %struct.pri_sequence*, align 8
  %p2 = alloca %struct.pulse_elem*, align 8
  %tmp_false_count = alloca i32, align 4
  %min_valid_ts = alloca i64, align 8
  %delta_ts = alloca i32, align 4
  %__mptr41 = alloca i8*, align 8
  %tmp46 = alloca %struct.pulse_elem*, align 8
  %factor = alloca i32, align 4
  %__mptr78 = alloca i8*, align 8
  %tmp83 = alloca %struct.pulse_elem*, align 8
  %__mptr110 = alloca i8*, align 8
  %tmp115 = alloca %struct.pulse_elem*, align 8
  store %struct.pri_detector* %pde, %struct.pri_detector** %pde.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pri_detector** %pde.addr, metadata !1062, metadata !DIExpression()), !dbg !1063
  store i64 %ts, i64* %ts.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ts.addr, metadata !1064, metadata !DIExpression()), !dbg !1065
  store i32 %min_count, i32* %min_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %min_count.addr, metadata !1066, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.declare(metadata %struct.pulse_elem** %p, metadata !1068, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1070, metadata !DIExpression()), !dbg !1072
  %0 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1072
  %pulses = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %0, i32 0, i32 6, !dbg !1072
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %pulses, i32 0, i32 0, !dbg !1072
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1072
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !1072
  store i8* %2, i8** %__mptr, align 8, !dbg !1072
  br label %do.body, !dbg !1072

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1073

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !1072
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !1072
  %4 = bitcast i8* %add.ptr to %struct.pulse_elem*, !dbg !1072
  store %struct.pulse_elem* %4, %struct.pulse_elem** %tmp, align 8, !dbg !1073
  %5 = load %struct.pulse_elem*, %struct.pulse_elem** %tmp, align 8, !dbg !1072
  store %struct.pulse_elem* %5, %struct.pulse_elem** %p, align 8, !dbg !1075
  br label %for.cond, !dbg !1075

for.cond:                                         ; preds = %do.end114, %do.end
  %6 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1076
  %head = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %6, i32 0, i32 0, !dbg !1076
  %7 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1076
  %pulses1 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %7, i32 0, i32 6, !dbg !1076
  %cmp = icmp eq %struct.list_head* %head, %pulses1, !dbg !1076
  %lnot = xor i1 %cmp, true, !dbg !1076
  br i1 %lnot, label %for.body, label %for.end117, !dbg !1075

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pri_sequence* %ps, metadata !1077, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.declare(metadata %struct.pri_sequence** %new_ps, metadata !1079, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.declare(metadata %struct.pulse_elem** %p2, metadata !1081, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.declare(metadata i32* %tmp_false_count, metadata !1083, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.declare(metadata i64* %min_valid_ts, metadata !1085, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.declare(metadata i32* %delta_ts, metadata !1087, metadata !DIExpression()), !dbg !1088
  %8 = load i64, i64* %ts.addr, align 8, !dbg !1089
  %9 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1090
  %ts2 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %9, i32 0, i32 1, !dbg !1091
  %10 = load i64, i64* %ts2, align 8, !dbg !1091
  %sub = sub i64 %8, %10, !dbg !1092
  %conv = trunc i64 %sub to i32, !dbg !1089
  store i32 %conv, i32* %delta_ts, align 4, !dbg !1088
  %11 = load i32, i32* %delta_ts, align 4, !dbg !1093
  %12 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1095
  %rs = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %12, i32 0, i32 3, !dbg !1096
  %13 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs, align 8, !dbg !1096
  %pri_min = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %13, i32 0, i32 3, !dbg !1097
  %14 = load i16, i16* %pri_min, align 2, !dbg !1097
  %conv3 = zext i16 %14 to i32, !dbg !1095
  %cmp4 = icmp ult i32 %11, %conv3, !dbg !1098
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1099

if.then:                                          ; preds = %for.body
  br label %for.inc109, !dbg !1100

if.end:                                           ; preds = %for.body
  %15 = load i32, i32* %delta_ts, align 4, !dbg !1101
  %16 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1103
  %rs6 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %16, i32 0, i32 3, !dbg !1104
  %17 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs6, align 8, !dbg !1104
  %pri_max = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %17, i32 0, i32 4, !dbg !1105
  %18 = load i16, i16* %pri_max, align 2, !dbg !1105
  %conv7 = zext i16 %18 to i32, !dbg !1103
  %cmp8 = icmp ugt i32 %15, %conv7, !dbg !1106
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1107

if.then10:                                        ; preds = %if.end
  br label %for.end117, !dbg !1108

if.end11:                                         ; preds = %if.end
  %count = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 3, !dbg !1109
  store i32 2, i32* %count, align 8, !dbg !1110
  %count_falses = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 4, !dbg !1111
  store i32 0, i32* %count_falses, align 4, !dbg !1112
  %19 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1113
  %ts12 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %19, i32 0, i32 1, !dbg !1114
  %20 = load i64, i64* %ts12, align 8, !dbg !1114
  %first_ts = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 5, !dbg !1115
  store i64 %20, i64* %first_ts, align 8, !dbg !1116
  %21 = load i64, i64* %ts.addr, align 8, !dbg !1117
  %last_ts = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 6, !dbg !1118
  store i64 %21, i64* %last_ts, align 8, !dbg !1119
  %22 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1120
  %rs13 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %22, i32 0, i32 3, !dbg !1120
  %23 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs13, align 8, !dbg !1120
  %pri_min14 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %23, i32 0, i32 3, !dbg !1120
  %24 = load i16, i16* %pri_min14, align 2, !dbg !1120
  %conv15 = zext i16 %24 to i32, !dbg !1120
  %add = add i32 %conv15, 16, !dbg !1120
  %25 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1120
  %rs16 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %25, i32 0, i32 3, !dbg !1120
  %26 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs16, align 8, !dbg !1120
  %pri_max17 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %26, i32 0, i32 4, !dbg !1120
  %27 = load i16, i16* %pri_max17, align 2, !dbg !1120
  %conv18 = zext i16 %27 to i32, !dbg !1120
  %sub19 = sub i32 %conv18, 16, !dbg !1120
  %cmp20 = icmp eq i32 %add, %sub19, !dbg !1120
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !1120

cond.true:                                        ; preds = %if.end11
  %28 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1120
  %rs22 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %28, i32 0, i32 3, !dbg !1120
  %29 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs22, align 8, !dbg !1120
  %pri_min23 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %29, i32 0, i32 3, !dbg !1120
  %30 = load i16, i16* %pri_min23, align 2, !dbg !1120
  %conv24 = zext i16 %30 to i32, !dbg !1120
  %add25 = add i32 %conv24, 16, !dbg !1120
  %conv26 = sext i32 %add25 to i64, !dbg !1120
  br label %cond.end, !dbg !1120

cond.false:                                       ; preds = %if.end11
  %31 = load i64, i64* %ts.addr, align 8, !dbg !1120
  %32 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1120
  %ts27 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %32, i32 0, i32 1, !dbg !1120
  %33 = load i64, i64* %ts27, align 8, !dbg !1120
  %sub28 = sub i64 %31, %33, !dbg !1120
  br label %cond.end, !dbg !1120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv26, %cond.true ], [ %sub28, %cond.false ], !dbg !1120
  %conv29 = trunc i64 %cond to i32, !dbg !1120
  %pri = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 1, !dbg !1121
  store i32 %conv29, i32* %pri, align 8, !dbg !1122
  %pri30 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 1, !dbg !1123
  %34 = load i32, i32* %pri30, align 8, !dbg !1123
  %35 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1124
  %rs31 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %35, i32 0, i32 3, !dbg !1125
  %36 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs31, align 8, !dbg !1125
  %ppb = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %36, i32 0, i32 6, !dbg !1126
  %37 = load i8, i8* %ppb, align 1, !dbg !1126
  %conv32 = zext i8 %37 to i32, !dbg !1124
  %sub33 = sub i32 %conv32, 1, !dbg !1127
  %mul = mul i32 %34, %sub33, !dbg !1128
  %38 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1129
  %rs34 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %38, i32 0, i32 3, !dbg !1130
  %39 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs34, align 8, !dbg !1130
  %max_pri_tolerance = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %39, i32 0, i32 8, !dbg !1131
  %40 = load i8, i8* %max_pri_tolerance, align 1, !dbg !1131
  %conv35 = zext i8 %40 to i32, !dbg !1129
  %mul36 = mul i32 2, %conv35, !dbg !1132
  %add37 = add i32 %mul, %mul36, !dbg !1133
  %dur = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 2, !dbg !1134
  store i32 %add37, i32* %dur, align 4, !dbg !1135
  %41 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1136
  store %struct.pulse_elem* %41, %struct.pulse_elem** %p2, align 8, !dbg !1137
  store i32 0, i32* %tmp_false_count, align 4, !dbg !1138
  %42 = load i64, i64* %ts.addr, align 8, !dbg !1139
  %dur38 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 2, !dbg !1140
  %43 = load i32, i32* %dur38, align 4, !dbg !1140
  %conv39 = zext i32 %43 to i64, !dbg !1141
  %sub40 = sub i64 %42, %conv39, !dbg !1142
  store i64 %sub40, i64* %min_valid_ts, align 8, !dbg !1143
  call void @llvm.dbg.declare(metadata i8** %__mptr41, metadata !1144, metadata !DIExpression()), !dbg !1147
  %44 = load %struct.pulse_elem*, %struct.pulse_elem** %p2, align 8, !dbg !1147
  %head42 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %44, i32 0, i32 0, !dbg !1147
  %next43 = getelementptr inbounds %struct.list_head, %struct.list_head* %head42, i32 0, i32 0, !dbg !1147
  %45 = load %struct.list_head*, %struct.list_head** %next43, align 8, !dbg !1147
  %46 = bitcast %struct.list_head* %45 to i8*, !dbg !1147
  store i8* %46, i8** %__mptr41, align 8, !dbg !1147
  br label %do.body44, !dbg !1147

do.body44:                                        ; preds = %cond.end
  br label %do.end45, !dbg !1148

do.end45:                                         ; preds = %do.body44
  %47 = load i8*, i8** %__mptr41, align 8, !dbg !1147
  %add.ptr47 = getelementptr i8, i8* %47, i64 0, !dbg !1147
  %48 = bitcast i8* %add.ptr47 to %struct.pulse_elem*, !dbg !1147
  store %struct.pulse_elem* %48, %struct.pulse_elem** %tmp46, align 8, !dbg !1148
  %49 = load %struct.pulse_elem*, %struct.pulse_elem** %tmp46, align 8, !dbg !1147
  store %struct.pulse_elem* %49, %struct.pulse_elem** %p2, align 8, !dbg !1150
  br label %for.cond48, !dbg !1150

for.cond48:                                       ; preds = %do.end82, %do.end45
  %50 = load %struct.pulse_elem*, %struct.pulse_elem** %p2, align 8, !dbg !1151
  %head49 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %50, i32 0, i32 0, !dbg !1151
  %51 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1151
  %pulses50 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %51, i32 0, i32 6, !dbg !1151
  %cmp51 = icmp eq %struct.list_head* %head49, %pulses50, !dbg !1151
  %lnot53 = xor i1 %cmp51, true, !dbg !1151
  br i1 %lnot53, label %for.body54, label %for.end, !dbg !1150

for.body54:                                       ; preds = %for.cond48
  call void @llvm.dbg.declare(metadata i32* %factor, metadata !1153, metadata !DIExpression()), !dbg !1155
  %52 = load %struct.pulse_elem*, %struct.pulse_elem** %p2, align 8, !dbg !1156
  %ts55 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %52, i32 0, i32 1, !dbg !1158
  %53 = load i64, i64* %ts55, align 8, !dbg !1158
  %54 = load i64, i64* %min_valid_ts, align 8, !dbg !1159
  %cmp56 = icmp ult i64 %53, %54, !dbg !1160
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !1161

if.then58:                                        ; preds = %for.body54
  br label %for.end, !dbg !1162

if.end59:                                         ; preds = %for.body54
  %last_ts60 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 6, !dbg !1163
  %55 = load i64, i64* %last_ts60, align 8, !dbg !1163
  %56 = load %struct.pulse_elem*, %struct.pulse_elem** %p2, align 8, !dbg !1164
  %ts61 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %56, i32 0, i32 1, !dbg !1165
  %57 = load i64, i64* %ts61, align 8, !dbg !1165
  %sub62 = sub i64 %55, %57, !dbg !1166
  %conv63 = trunc i64 %sub62 to i32, !dbg !1167
  %pri64 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 1, !dbg !1168
  %58 = load i32, i32* %pri64, align 8, !dbg !1168
  %59 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1169
  %rs65 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %59, i32 0, i32 3, !dbg !1170
  %60 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs65, align 8, !dbg !1170
  %max_pri_tolerance66 = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %60, i32 0, i32 8, !dbg !1171
  %61 = load i8, i8* %max_pri_tolerance66, align 1, !dbg !1171
  %conv67 = zext i8 %61 to i32, !dbg !1169
  %call = call i32 @pde_get_multiple(i32 %conv63, i32 %58, i32 %conv67) #8, !dbg !1172
  store i32 %call, i32* %factor, align 4, !dbg !1173
  %62 = load i32, i32* %factor, align 4, !dbg !1174
  %cmp68 = icmp ugt i32 %62, 0, !dbg !1176
  br i1 %cmp68, label %if.then70, label %if.else, !dbg !1177

if.then70:                                        ; preds = %if.end59
  %count71 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 3, !dbg !1178
  %63 = load i32, i32* %count71, align 8, !dbg !1180
  %inc = add i32 %63, 1, !dbg !1180
  store i32 %inc, i32* %count71, align 8, !dbg !1180
  %64 = load %struct.pulse_elem*, %struct.pulse_elem** %p2, align 8, !dbg !1181
  %ts72 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %64, i32 0, i32 1, !dbg !1182
  %65 = load i64, i64* %ts72, align 8, !dbg !1182
  %first_ts73 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 5, !dbg !1183
  store i64 %65, i64* %first_ts73, align 8, !dbg !1184
  %66 = load i32, i32* %tmp_false_count, align 4, !dbg !1185
  %count_falses74 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 4, !dbg !1186
  %67 = load i32, i32* %count_falses74, align 4, !dbg !1187
  %add75 = add i32 %67, %66, !dbg !1187
  store i32 %add75, i32* %count_falses74, align 4, !dbg !1187
  store i32 0, i32* %tmp_false_count, align 4, !dbg !1188
  br label %if.end77, !dbg !1189

if.else:                                          ; preds = %if.end59
  %68 = load i32, i32* %tmp_false_count, align 4, !dbg !1190
  %inc76 = add i32 %68, 1, !dbg !1190
  store i32 %inc76, i32* %tmp_false_count, align 4, !dbg !1190
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then70
  br label %for.inc, !dbg !1192

for.inc:                                          ; preds = %if.end77
  call void @llvm.dbg.declare(metadata i8** %__mptr78, metadata !1193, metadata !DIExpression()), !dbg !1195
  %69 = load %struct.pulse_elem*, %struct.pulse_elem** %p2, align 8, !dbg !1195
  %head79 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %69, i32 0, i32 0, !dbg !1195
  %next80 = getelementptr inbounds %struct.list_head, %struct.list_head* %head79, i32 0, i32 0, !dbg !1195
  %70 = load %struct.list_head*, %struct.list_head** %next80, align 8, !dbg !1195
  %71 = bitcast %struct.list_head* %70 to i8*, !dbg !1195
  store i8* %71, i8** %__mptr78, align 8, !dbg !1195
  br label %do.body81, !dbg !1195

do.body81:                                        ; preds = %for.inc
  br label %do.end82, !dbg !1196

do.end82:                                         ; preds = %do.body81
  %72 = load i8*, i8** %__mptr78, align 8, !dbg !1195
  %add.ptr84 = getelementptr i8, i8* %72, i64 0, !dbg !1195
  %73 = bitcast i8* %add.ptr84 to %struct.pulse_elem*, !dbg !1195
  store %struct.pulse_elem* %73, %struct.pulse_elem** %tmp83, align 8, !dbg !1196
  %74 = load %struct.pulse_elem*, %struct.pulse_elem** %tmp83, align 8, !dbg !1195
  store %struct.pulse_elem* %74, %struct.pulse_elem** %p2, align 8, !dbg !1151
  br label %for.cond48, !dbg !1151, !llvm.loop !1198

for.end:                                          ; preds = %if.then58, %for.cond48
  %count85 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 3, !dbg !1200
  %75 = load i32, i32* %count85, align 8, !dbg !1200
  %76 = load i32, i32* %min_count.addr, align 4, !dbg !1202
  %cmp86 = icmp ule i32 %75, %76, !dbg !1203
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !1204

if.then88:                                        ; preds = %for.end
  br label %for.inc109, !dbg !1205

if.end89:                                         ; preds = %for.end
  %first_ts90 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 5, !dbg !1206
  %77 = load i64, i64* %first_ts90, align 8, !dbg !1206
  %dur91 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 2, !dbg !1207
  %78 = load i32, i32* %dur91, align 4, !dbg !1207
  %conv92 = zext i32 %78 to i64, !dbg !1208
  %add93 = add i64 %77, %conv92, !dbg !1209
  %deadline_ts = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %ps, i32 0, i32 7, !dbg !1210
  store i64 %add93, i64* %deadline_ts, align 8, !dbg !1211
  %call94 = call %struct.pri_sequence* @pool_get_pseq_elem() #8, !dbg !1212
  store %struct.pri_sequence* %call94, %struct.pri_sequence** %new_ps, align 8, !dbg !1213
  %79 = load %struct.pri_sequence*, %struct.pri_sequence** %new_ps, align 8, !dbg !1214
  %cmp95 = icmp eq %struct.pri_sequence* %79, null, !dbg !1215
  br i1 %cmp95, label %if.then97, label %if.end106, !dbg !1216

if.then97:                                        ; preds = %if.end89
  store i64 56, i64* %size.addr.i, align 8
  store i32 2592, i32* %flags.addr.i, align 4
  %80 = load i64, i64* %size.addr.i, align 8, !dbg !1217
  %81 = call i1 @llvm.is.constant.i64(i64 %80) #9, !dbg !1218
  br i1 %81, label %if.then.i, label %if.end9.i, !dbg !1219

if.then.i:                                        ; preds = %if.then97
  %82 = load i64, i64* %size.addr.i, align 8, !dbg !1220
  %cmp.i = icmp ugt i64 %82, 8192, !dbg !1221
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1222

if.then1.i:                                       ; preds = %if.then.i
  %83 = load i64, i64* %size.addr.i, align 8, !dbg !1223
  %84 = load i32, i32* %flags.addr.i, align 4, !dbg !1224
  store i64 %83, i64* %size.addr.i.i, align 8
  store i32 %84, i32* %flags.addr.i.i, align 4
  %85 = load i64, i64* %size.addr.i.i, align 8, !dbg !1225
  %call.i.i = call i32 @get_order(i64 %85) #10, !dbg !1226
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1058
  %86 = load i64, i64* %size.addr.i.i, align 8, !dbg !1227
  %87 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1228
  %88 = load i32, i32* %order.i.i, align 4, !dbg !1229
  store i64 %86, i64* %size.addr.i.i.i, align 8
  store i32 %87, i32* %flags.addr.i.i.i, align 4
  store i32 %88, i32* %order.addr.i.i.i, align 4
  %89 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1230
  %90 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1231
  %91 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1232
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %89, i32 %90, i32 %91) #11, !dbg !1233
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1233
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1233
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1233
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !1233
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1234
  br label %kmalloc.exit, !dbg !1234

if.end.i:                                         ; preds = %if.then.i
  %92 = load i64, i64* %size.addr.i, align 8, !dbg !1235
  store i64 %92, i64* %size.addr.i11.i, align 8
  %93 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1236
  %tobool.i.i = icmp ne i64 %93, 0, !dbg !1236
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1237

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1238
  br label %kmalloc_index.exit.i, !dbg !1238

if.end.i.i:                                       ; preds = %if.end.i
  %94 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1239
  %cmp.i.i = icmp ule i64 %94, 8, !dbg !1240
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1241

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1242
  br label %kmalloc_index.exit.i, !dbg !1242

if.end2.i.i:                                      ; preds = %if.end.i.i
  %95 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1243
  %cmp3.i.i = icmp ugt i64 %95, 64, !dbg !1244
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1245

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %96 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1246
  %cmp4.i.i = icmp ule i64 %96, 96, !dbg !1247
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1248

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1249
  br label %kmalloc_index.exit.i, !dbg !1249

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %97 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1250
  %cmp7.i.i = icmp ugt i64 %97, 128, !dbg !1251
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1252

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %98 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1253
  %cmp9.i.i = icmp ule i64 %98, 192, !dbg !1254
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1255

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1256
  br label %kmalloc_index.exit.i, !dbg !1256

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %99 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1257
  %cmp12.i.i = icmp ule i64 %99, 8, !dbg !1258
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1259

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1260
  br label %kmalloc_index.exit.i, !dbg !1260

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %100 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1261
  %cmp15.i.i = icmp ule i64 %100, 16, !dbg !1262
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1263

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1264
  br label %kmalloc_index.exit.i, !dbg !1264

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %101 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1265
  %cmp18.i.i = icmp ule i64 %101, 32, !dbg !1266
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1267

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1268
  br label %kmalloc_index.exit.i, !dbg !1268

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %102 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1269
  %cmp21.i.i = icmp ule i64 %102, 64, !dbg !1270
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1271

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1272
  br label %kmalloc_index.exit.i, !dbg !1272

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %103 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1273
  %cmp24.i.i = icmp ule i64 %103, 128, !dbg !1274
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1275

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1276
  br label %kmalloc_index.exit.i, !dbg !1276

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %104 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1277
  %cmp27.i.i = icmp ule i64 %104, 256, !dbg !1278
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1279

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1280
  br label %kmalloc_index.exit.i, !dbg !1280

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %105 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1281
  %cmp30.i.i = icmp ule i64 %105, 512, !dbg !1282
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1283

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1284
  br label %kmalloc_index.exit.i, !dbg !1284

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %106 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1285
  %cmp33.i.i = icmp ule i64 %106, 1024, !dbg !1286
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1287

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1288
  br label %kmalloc_index.exit.i, !dbg !1288

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %107 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1289
  %cmp36.i.i = icmp ule i64 %107, 2048, !dbg !1290
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1291

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1292
  br label %kmalloc_index.exit.i, !dbg !1292

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %108 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1293
  %cmp39.i.i = icmp ule i64 %108, 4096, !dbg !1294
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1295

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1296
  br label %kmalloc_index.exit.i, !dbg !1296

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %109 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1297
  %cmp42.i.i = icmp ule i64 %109, 8192, !dbg !1298
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1299

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1300
  br label %kmalloc_index.exit.i, !dbg !1300

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %110 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1301
  %cmp45.i.i = icmp ule i64 %110, 16384, !dbg !1302
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1303

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1304
  br label %kmalloc_index.exit.i, !dbg !1304

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %111 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1305
  %cmp48.i.i = icmp ule i64 %111, 32768, !dbg !1306
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1307

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1308
  br label %kmalloc_index.exit.i, !dbg !1308

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %112 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1309
  %cmp51.i.i = icmp ule i64 %112, 65536, !dbg !1310
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1311

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1312
  br label %kmalloc_index.exit.i, !dbg !1312

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %113 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1313
  %cmp54.i.i = icmp ule i64 %113, 131072, !dbg !1314
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1315

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1316
  br label %kmalloc_index.exit.i, !dbg !1316

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %114 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1317
  %cmp57.i.i = icmp ule i64 %114, 262144, !dbg !1318
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1319

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1320
  br label %kmalloc_index.exit.i, !dbg !1320

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %115 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1321
  %cmp60.i.i = icmp ule i64 %115, 524288, !dbg !1322
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1323

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1324
  br label %kmalloc_index.exit.i, !dbg !1324

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %116 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1325
  %cmp63.i.i = icmp ule i64 %116, 1048576, !dbg !1326
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1327

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1328
  br label %kmalloc_index.exit.i, !dbg !1328

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %117 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1329
  %cmp66.i.i = icmp ule i64 %117, 2097152, !dbg !1330
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1331

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1332
  br label %kmalloc_index.exit.i, !dbg !1332

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %118 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1333
  %cmp69.i.i = icmp ule i64 %118, 4194304, !dbg !1334
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1335

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1336
  br label %kmalloc_index.exit.i, !dbg !1336

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %119 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1337
  %cmp72.i.i = icmp ule i64 %119, 8388608, !dbg !1338
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1339

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1340
  br label %kmalloc_index.exit.i, !dbg !1340

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %120 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1341
  %cmp75.i.i = icmp ule i64 %120, 16777216, !dbg !1342
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1343

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1344
  br label %kmalloc_index.exit.i, !dbg !1344

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %121 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1345
  %cmp78.i.i = icmp ule i64 %121, 33554432, !dbg !1346
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1347

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1348
  br label %kmalloc_index.exit.i, !dbg !1348

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %122 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1349
  %cmp81.i.i = icmp ule i64 %122, 67108864, !dbg !1350
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1351

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1352
  br label %kmalloc_index.exit.i, !dbg !1352

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !1353, !srcloc !439
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !1354, !srcloc !443
  unreachable, !dbg !1355

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %123 = load i32, i32* %retval.i.i, align 4, !dbg !1356
  store i32 %123, i32* %index.i, align 4, !dbg !1357
  %124 = load i32, i32* %index.i, align 4, !dbg !1358
  %tobool.i = icmp ne i32 %124, 0, !dbg !1358
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1359

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1360
  br label %kmalloc.exit, !dbg !1360

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %125 = load i32, i32* %flags.addr.i, align 4, !dbg !1361
  store i32 %125, i32* %flags.addr.i13.i, align 4
  %126 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1362
  %and.i.i = and i32 %126, 17, !dbg !1362
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1362
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1362
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1362
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1362
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1363

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1364
  br label %kmalloc_type.exit.i, !dbg !1364

if.end.i16.i:                                     ; preds = %if.end4.i
  %127 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1365
  %and2.i.i = and i32 %127, 1, !dbg !1366
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1365
  %128 = zext i1 %tobool3.i.i to i64, !dbg !1365
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1365
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1367
  br label %kmalloc_type.exit.i, !dbg !1367

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %129 = load i32, i32* %retval.i12.i, align 4, !dbg !1368
  %idxprom.i = zext i32 %129 to i64, !dbg !1369
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1369
  %130 = load i32, i32* %index.i, align 4, !dbg !1370
  %idxprom6.i = zext i32 %130 to i64, !dbg !1369
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1369
  %131 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1369
  %132 = load i32, i32* %flags.addr.i, align 4, !dbg !1371
  %133 = load i64, i64* %size.addr.i, align 8, !dbg !1372
  store %struct.kmem_cache* %131, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %132, i32* %flags.addr.i17.i, align 4
  store i64 %133, i64* %size.addr.i18.i, align 8
  %134 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1373
  %135 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1374
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %134, i32 %135) #11, !dbg !1375
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1375
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1375
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1375
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !1375
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1046
  %136 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1376
  %137 = load i8*, i8** %ret.i.i, align 8, !dbg !1377
  %138 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1378
  %139 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1379
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %136, i8* %137, i64 %138, i32 %139) #11, !dbg !1380
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1381
  %140 = load i8*, i8** %ret.i.i, align 8, !dbg !1382
  store i8* %140, i8** %retval.i, align 8, !dbg !1383
  br label %kmalloc.exit, !dbg !1383

if.end9.i:                                        ; preds = %if.then97
  %141 = load i64, i64* %size.addr.i, align 8, !dbg !1384
  %142 = load i32, i32* %flags.addr.i, align 4, !dbg !1385
  %call10.i = call noalias i8* @__kmalloc(i64 %141, i32 %142) #11, !dbg !1386
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1386
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1386
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1386
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !1386
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1387
  br label %kmalloc.exit, !dbg !1387

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %143 = load i8*, i8** %retval.i, align 8, !dbg !1388
  %144 = bitcast i8* %143 to %struct.pri_sequence*, !dbg !1389
  store %struct.pri_sequence* %144, %struct.pri_sequence** %new_ps, align 8, !dbg !1390
  %145 = load %struct.pri_sequence*, %struct.pri_sequence** %new_ps, align 8, !dbg !1391
  %cmp99 = icmp eq %struct.pri_sequence* %145, null, !dbg !1393
  br i1 %cmp99, label %if.then101, label %if.end103, !dbg !1394

if.then101:                                       ; preds = %kmalloc.exit
  %146 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 5), align 4, !dbg !1395
  %inc102 = add i32 %146, 1, !dbg !1395
  store i32 %inc102, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 5), align 4, !dbg !1395
  store i1 false, i1* %retval, align 1, !dbg !1397
  br label %return, !dbg !1397

if.end103:                                        ; preds = %kmalloc.exit
  %147 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 4), align 4, !dbg !1398
  %inc104 = add i32 %147, 1, !dbg !1398
  store i32 %inc104, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 4), align 4, !dbg !1398
  %148 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 6), align 4, !dbg !1399
  %inc105 = add i32 %148, 1, !dbg !1399
  store i32 %inc105, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 6), align 4, !dbg !1399
  br label %if.end106, !dbg !1400

if.end106:                                        ; preds = %if.end103, %if.end89
  %149 = load %struct.pri_sequence*, %struct.pri_sequence** %new_ps, align 8, !dbg !1401
  %150 = bitcast %struct.pri_sequence* %149 to i8*, !dbg !1402
  %151 = bitcast %struct.pri_sequence* %ps to i8*, !dbg !1402
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 56, i1 false), !dbg !1402
  %152 = load %struct.pri_sequence*, %struct.pri_sequence** %new_ps, align 8, !dbg !1403
  %head107 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %152, i32 0, i32 0, !dbg !1404
  call void @INIT_LIST_HEAD(%struct.list_head* %head107) #8, !dbg !1405
  %153 = load %struct.pri_sequence*, %struct.pri_sequence** %new_ps, align 8, !dbg !1406
  %head108 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %153, i32 0, i32 0, !dbg !1407
  %154 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1408
  %sequences = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %154, i32 0, i32 5, !dbg !1409
  call void @list_add(%struct.list_head* %head108, %struct.list_head* %sequences) #8, !dbg !1410
  br label %for.inc109, !dbg !1411

for.inc109:                                       ; preds = %if.end106, %if.then88, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr110, metadata !1412, metadata !DIExpression()), !dbg !1414
  %155 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1414
  %head111 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %155, i32 0, i32 0, !dbg !1414
  %next112 = getelementptr inbounds %struct.list_head, %struct.list_head* %head111, i32 0, i32 0, !dbg !1414
  %156 = load %struct.list_head*, %struct.list_head** %next112, align 8, !dbg !1414
  %157 = bitcast %struct.list_head* %156 to i8*, !dbg !1414
  store i8* %157, i8** %__mptr110, align 8, !dbg !1414
  br label %do.body113, !dbg !1414

do.body113:                                       ; preds = %for.inc109
  br label %do.end114, !dbg !1415

do.end114:                                        ; preds = %do.body113
  %158 = load i8*, i8** %__mptr110, align 8, !dbg !1414
  %add.ptr116 = getelementptr i8, i8* %158, i64 0, !dbg !1414
  %159 = bitcast i8* %add.ptr116 to %struct.pulse_elem*, !dbg !1414
  store %struct.pulse_elem* %159, %struct.pulse_elem** %tmp115, align 8, !dbg !1415
  %160 = load %struct.pulse_elem*, %struct.pulse_elem** %tmp115, align 8, !dbg !1414
  store %struct.pulse_elem* %160, %struct.pulse_elem** %p, align 8, !dbg !1076
  br label %for.cond, !dbg !1076, !llvm.loop !1417

for.end117:                                       ; preds = %if.then10, %for.cond
  store i1 true, i1* %retval, align 1, !dbg !1419
  br label %return, !dbg !1419

return:                                           ; preds = %for.end117, %if.then101
  %161 = load i1, i1* %retval, align 1, !dbg !1420
  ret i1 %161, !dbg !1420
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pri_sequence* @pseq_handler_check_detection(%struct.pri_detector* %pde) #0 !dbg !1421 {
entry:
  %retval = alloca %struct.pri_sequence*, align 8
  %pde.addr = alloca %struct.pri_detector*, align 8
  %ps = alloca %struct.pri_sequence*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pri_sequence*, align 8
  %__mptr12 = alloca i8*, align 8
  %tmp17 = alloca %struct.pri_sequence*, align 8
  store %struct.pri_detector* %pde, %struct.pri_detector** %pde.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pri_detector** %pde.addr, metadata !1424, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.declare(metadata %struct.pri_sequence** %ps, metadata !1426, metadata !DIExpression()), !dbg !1427
  %0 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1428
  %sequences = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %0, i32 0, i32 5, !dbg !1430
  %call = call i32 @list_empty(%struct.list_head* %sequences) #8, !dbg !1431
  %tobool = icmp ne i32 %call, 0, !dbg !1431
  br i1 %tobool, label %if.then, label %if.end, !dbg !1432

if.then:                                          ; preds = %entry
  store %struct.pri_sequence* null, %struct.pri_sequence** %retval, align 8, !dbg !1433
  br label %return, !dbg !1433

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1434, metadata !DIExpression()), !dbg !1437
  %1 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1437
  %sequences1 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %1, i32 0, i32 5, !dbg !1437
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %sequences1, i32 0, i32 0, !dbg !1437
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1437
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !1437
  store i8* %3, i8** %__mptr, align 8, !dbg !1437
  br label %do.body, !dbg !1437

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !1438

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !1437
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !1437
  %5 = bitcast i8* %add.ptr to %struct.pri_sequence*, !dbg !1437
  store %struct.pri_sequence* %5, %struct.pri_sequence** %tmp, align 8, !dbg !1438
  %6 = load %struct.pri_sequence*, %struct.pri_sequence** %tmp, align 8, !dbg !1437
  store %struct.pri_sequence* %6, %struct.pri_sequence** %ps, align 8, !dbg !1440
  br label %for.cond, !dbg !1440

for.cond:                                         ; preds = %do.end16, %do.end
  %7 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !1441
  %head = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %7, i32 0, i32 0, !dbg !1441
  %8 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1441
  %sequences2 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %8, i32 0, i32 5, !dbg !1441
  %cmp = icmp eq %struct.list_head* %head, %sequences2, !dbg !1441
  %lnot = xor i1 %cmp, true, !dbg !1441
  br i1 %lnot, label %for.body, label %for.end, !dbg !1440

for.body:                                         ; preds = %for.cond
  %9 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !1443
  %count = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %9, i32 0, i32 3, !dbg !1446
  %10 = load i32, i32* %count, align 8, !dbg !1446
  %11 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1447
  %rs = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %11, i32 0, i32 3, !dbg !1448
  %12 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs, align 8, !dbg !1448
  %ppb_thresh = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %12, i32 0, i32 7, !dbg !1449
  %13 = load i8, i8* %ppb_thresh, align 2, !dbg !1449
  %conv = zext i8 %13 to i32, !dbg !1447
  %cmp3 = icmp uge i32 %10, %conv, !dbg !1450
  br i1 %cmp3, label %land.lhs.true, label %if.end11, !dbg !1451

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !1452
  %count5 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %14, i32 0, i32 3, !dbg !1453
  %15 = load i32, i32* %count5, align 8, !dbg !1453
  %16 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1454
  %rs6 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %16, i32 0, i32 3, !dbg !1455
  %17 = load %struct.radar_detector_specs*, %struct.radar_detector_specs** %rs6, align 8, !dbg !1455
  %num_pri = getelementptr inbounds %struct.radar_detector_specs, %struct.radar_detector_specs* %17, i32 0, i32 5, !dbg !1456
  %18 = load i8, i8* %num_pri, align 2, !dbg !1456
  %conv7 = zext i8 %18 to i32, !dbg !1454
  %mul = mul i32 %15, %conv7, !dbg !1457
  %19 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !1458
  %count_falses = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %19, i32 0, i32 4, !dbg !1459
  %20 = load i32, i32* %count_falses, align 4, !dbg !1459
  %cmp8 = icmp uge i32 %mul, %20, !dbg !1460
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1461

if.then10:                                        ; preds = %land.lhs.true
  %21 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !1462
  store %struct.pri_sequence* %21, %struct.pri_sequence** %retval, align 8, !dbg !1463
  br label %return, !dbg !1463

if.end11:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !1464

for.inc:                                          ; preds = %if.end11
  call void @llvm.dbg.declare(metadata i8** %__mptr12, metadata !1465, metadata !DIExpression()), !dbg !1467
  %22 = load %struct.pri_sequence*, %struct.pri_sequence** %ps, align 8, !dbg !1467
  %head13 = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %22, i32 0, i32 0, !dbg !1467
  %next14 = getelementptr inbounds %struct.list_head, %struct.list_head* %head13, i32 0, i32 0, !dbg !1467
  %23 = load %struct.list_head*, %struct.list_head** %next14, align 8, !dbg !1467
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !1467
  store i8* %24, i8** %__mptr12, align 8, !dbg !1467
  br label %do.body15, !dbg !1467

do.body15:                                        ; preds = %for.inc
  br label %do.end16, !dbg !1468

do.end16:                                         ; preds = %do.body15
  %25 = load i8*, i8** %__mptr12, align 8, !dbg !1467
  %add.ptr18 = getelementptr i8, i8* %25, i64 0, !dbg !1467
  %26 = bitcast i8* %add.ptr18 to %struct.pri_sequence*, !dbg !1467
  store %struct.pri_sequence* %26, %struct.pri_sequence** %tmp17, align 8, !dbg !1468
  %27 = load %struct.pri_sequence*, %struct.pri_sequence** %tmp17, align 8, !dbg !1467
  store %struct.pri_sequence* %27, %struct.pri_sequence** %ps, align 8, !dbg !1441
  br label %for.cond, !dbg !1441, !llvm.loop !1470

for.end:                                          ; preds = %for.cond
  store %struct.pri_sequence* null, %struct.pri_sequence** %retval, align 8, !dbg !1472
  br label %return, !dbg !1472

return:                                           ; preds = %for.end, %if.then10, %if.then
  %28 = load %struct.pri_sequence*, %struct.pri_sequence** %retval, align 8, !dbg !1473
  ret %struct.pri_sequence* %28, !dbg !1473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pulse_queue_enqueue(%struct.pri_detector* %pde, i64 %ts) #0 !dbg !1474 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !209, metadata !DIExpression()), !dbg !1477
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !222, metadata !DIExpression()), !dbg !1482
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !224, metadata !DIExpression()), !dbg !1483
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !226, metadata !DIExpression()), !dbg !1484
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !228, metadata !DIExpression()), !dbg !1485
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !234, metadata !DIExpression()), !dbg !1487
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !240, metadata !DIExpression()), !dbg !1489
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !249, metadata !DIExpression()), !dbg !1492
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !251, metadata !DIExpression()), !dbg !1493
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !253, metadata !DIExpression()), !dbg !1494
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !255, metadata !DIExpression()), !dbg !1495
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !257, metadata !DIExpression()), !dbg !1496
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !259, metadata !DIExpression()), !dbg !1497
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !261, metadata !DIExpression()), !dbg !1498
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !263, metadata !DIExpression()), !dbg !1499
  %retval = alloca i1, align 1
  %pde.addr = alloca %struct.pri_detector*, align 8
  %ts.addr = alloca i64, align 8
  %p = alloca %struct.pulse_elem*, align 8
  store %struct.pri_detector* %pde, %struct.pri_detector** %pde.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pri_detector** %pde.addr, metadata !1500, metadata !DIExpression()), !dbg !1501
  store i64 %ts, i64* %ts.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ts.addr, metadata !1502, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.declare(metadata %struct.pulse_elem** %p, metadata !1504, metadata !DIExpression()), !dbg !1505
  %call = call %struct.pulse_elem* @pool_get_pulse_elem() #8, !dbg !1506
  store %struct.pulse_elem* %call, %struct.pulse_elem** %p, align 8, !dbg !1505
  %0 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1507
  %cmp = icmp eq %struct.pulse_elem* %0, null, !dbg !1508
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1509

if.then:                                          ; preds = %entry
  store i64 24, i64* %size.addr.i, align 8
  store i32 2592, i32* %flags.addr.i, align 4
  %1 = load i64, i64* %size.addr.i, align 8, !dbg !1510
  %2 = call i1 @llvm.is.constant.i64(i64 %1) #9, !dbg !1511
  br i1 %2, label %if.then.i, label %if.end9.i, !dbg !1512

if.then.i:                                        ; preds = %if.then
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !1513
  %cmp.i = icmp ugt i64 %3, 8192, !dbg !1514
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1515

if.then1.i:                                       ; preds = %if.then.i
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1516
  %5 = load i32, i32* %flags.addr.i, align 4, !dbg !1517
  store i64 %4, i64* %size.addr.i.i, align 8
  store i32 %5, i32* %flags.addr.i.i, align 4
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !1518
  %call.i.i = call i32 @get_order(i64 %6) #10, !dbg !1519
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1496
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1520
  %8 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1521
  %9 = load i32, i32* %order.i.i, align 4, !dbg !1522
  store i64 %7, i64* %size.addr.i.i.i, align 8
  store i32 %8, i32* %flags.addr.i.i.i, align 4
  store i32 %9, i32* %order.addr.i.i.i, align 4
  %10 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1523
  %11 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1524
  %12 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1525
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %10, i32 %11, i32 %12) #11, !dbg !1526
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1526
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1526
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1526
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !1526
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1527
  br label %kmalloc.exit, !dbg !1527

if.end.i:                                         ; preds = %if.then.i
  %13 = load i64, i64* %size.addr.i, align 8, !dbg !1528
  store i64 %13, i64* %size.addr.i11.i, align 8
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1529
  %tobool.i.i = icmp ne i64 %14, 0, !dbg !1529
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1530

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1531
  br label %kmalloc_index.exit.i, !dbg !1531

if.end.i.i:                                       ; preds = %if.end.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1532
  %cmp.i.i = icmp ule i64 %15, 8, !dbg !1533
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1534

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1535
  br label %kmalloc_index.exit.i, !dbg !1535

if.end2.i.i:                                      ; preds = %if.end.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1536
  %cmp3.i.i = icmp ugt i64 %16, 64, !dbg !1537
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1538

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1539
  %cmp4.i.i = icmp ule i64 %17, 96, !dbg !1540
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1541

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1542
  br label %kmalloc_index.exit.i, !dbg !1542

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1543
  %cmp7.i.i = icmp ugt i64 %18, 128, !dbg !1544
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1545

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1546
  %cmp9.i.i = icmp ule i64 %19, 192, !dbg !1547
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1548

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1549
  br label %kmalloc_index.exit.i, !dbg !1549

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1550
  %cmp12.i.i = icmp ule i64 %20, 8, !dbg !1551
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1552

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1553
  br label %kmalloc_index.exit.i, !dbg !1553

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1554
  %cmp15.i.i = icmp ule i64 %21, 16, !dbg !1555
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1556

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1557
  br label %kmalloc_index.exit.i, !dbg !1557

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1558
  %cmp18.i.i = icmp ule i64 %22, 32, !dbg !1559
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1560

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1561
  br label %kmalloc_index.exit.i, !dbg !1561

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1562
  %cmp21.i.i = icmp ule i64 %23, 64, !dbg !1563
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1564

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1565
  br label %kmalloc_index.exit.i, !dbg !1565

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1566
  %cmp24.i.i = icmp ule i64 %24, 128, !dbg !1567
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1568

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1569
  br label %kmalloc_index.exit.i, !dbg !1569

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1570
  %cmp27.i.i = icmp ule i64 %25, 256, !dbg !1571
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1572

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1573
  br label %kmalloc_index.exit.i, !dbg !1573

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1574
  %cmp30.i.i = icmp ule i64 %26, 512, !dbg !1575
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1576

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1577
  br label %kmalloc_index.exit.i, !dbg !1577

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1578
  %cmp33.i.i = icmp ule i64 %27, 1024, !dbg !1579
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1580

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1581
  br label %kmalloc_index.exit.i, !dbg !1581

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1582
  %cmp36.i.i = icmp ule i64 %28, 2048, !dbg !1583
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1584

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1585
  br label %kmalloc_index.exit.i, !dbg !1585

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1586
  %cmp39.i.i = icmp ule i64 %29, 4096, !dbg !1587
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1588

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1589
  br label %kmalloc_index.exit.i, !dbg !1589

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1590
  %cmp42.i.i = icmp ule i64 %30, 8192, !dbg !1591
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1592

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1593
  br label %kmalloc_index.exit.i, !dbg !1593

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1594
  %cmp45.i.i = icmp ule i64 %31, 16384, !dbg !1595
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1596

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1597
  br label %kmalloc_index.exit.i, !dbg !1597

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1598
  %cmp48.i.i = icmp ule i64 %32, 32768, !dbg !1599
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1600

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1601
  br label %kmalloc_index.exit.i, !dbg !1601

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1602
  %cmp51.i.i = icmp ule i64 %33, 65536, !dbg !1603
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1604

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1605
  br label %kmalloc_index.exit.i, !dbg !1605

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1606
  %cmp54.i.i = icmp ule i64 %34, 131072, !dbg !1607
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1608

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1609
  br label %kmalloc_index.exit.i, !dbg !1609

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1610
  %cmp57.i.i = icmp ule i64 %35, 262144, !dbg !1611
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1612

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1613
  br label %kmalloc_index.exit.i, !dbg !1613

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1614
  %cmp60.i.i = icmp ule i64 %36, 524288, !dbg !1615
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1616

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1617
  br label %kmalloc_index.exit.i, !dbg !1617

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1618
  %cmp63.i.i = icmp ule i64 %37, 1048576, !dbg !1619
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1620

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1621
  br label %kmalloc_index.exit.i, !dbg !1621

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1622
  %cmp66.i.i = icmp ule i64 %38, 2097152, !dbg !1623
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1624

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1625
  br label %kmalloc_index.exit.i, !dbg !1625

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1626
  %cmp69.i.i = icmp ule i64 %39, 4194304, !dbg !1627
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1628

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1629
  br label %kmalloc_index.exit.i, !dbg !1629

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1630
  %cmp72.i.i = icmp ule i64 %40, 8388608, !dbg !1631
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1632

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1633
  br label %kmalloc_index.exit.i, !dbg !1633

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1634
  %cmp75.i.i = icmp ule i64 %41, 16777216, !dbg !1635
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1636

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1637
  br label %kmalloc_index.exit.i, !dbg !1637

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1638
  %cmp78.i.i = icmp ule i64 %42, 33554432, !dbg !1639
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1640

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1641
  br label %kmalloc_index.exit.i, !dbg !1641

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1642
  %cmp81.i.i = icmp ule i64 %43, 67108864, !dbg !1643
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1644

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1645
  br label %kmalloc_index.exit.i, !dbg !1645

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !1646, !srcloc !439
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !1647, !srcloc !443
  unreachable, !dbg !1648

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %44 = load i32, i32* %retval.i.i, align 4, !dbg !1649
  store i32 %44, i32* %index.i, align 4, !dbg !1650
  %45 = load i32, i32* %index.i, align 4, !dbg !1651
  %tobool.i = icmp ne i32 %45, 0, !dbg !1651
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1652

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1653
  br label %kmalloc.exit, !dbg !1653

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %46 = load i32, i32* %flags.addr.i, align 4, !dbg !1654
  store i32 %46, i32* %flags.addr.i13.i, align 4
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1655
  %and.i.i = and i32 %47, 17, !dbg !1655
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1655
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1655
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1655
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1655
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1656

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1657
  br label %kmalloc_type.exit.i, !dbg !1657

if.end.i16.i:                                     ; preds = %if.end4.i
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1658
  %and2.i.i = and i32 %48, 1, !dbg !1659
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1658
  %49 = zext i1 %tobool3.i.i to i64, !dbg !1658
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1658
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1660
  br label %kmalloc_type.exit.i, !dbg !1660

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %50 = load i32, i32* %retval.i12.i, align 4, !dbg !1661
  %idxprom.i = zext i32 %50 to i64, !dbg !1662
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1662
  %51 = load i32, i32* %index.i, align 4, !dbg !1663
  %idxprom6.i = zext i32 %51 to i64, !dbg !1662
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1662
  %52 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1662
  %53 = load i32, i32* %flags.addr.i, align 4, !dbg !1664
  %54 = load i64, i64* %size.addr.i, align 8, !dbg !1665
  store %struct.kmem_cache* %52, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %53, i32* %flags.addr.i17.i, align 4
  store i64 %54, i64* %size.addr.i18.i, align 8
  %55 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1666
  %56 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1667
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %55, i32 %56) #11, !dbg !1668
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1668
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1668
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1668
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !1668
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1484
  %57 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1669
  %58 = load i8*, i8** %ret.i.i, align 8, !dbg !1670
  %59 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1671
  %60 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1672
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %57, i8* %58, i64 %59, i32 %60) #11, !dbg !1673
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1674
  %61 = load i8*, i8** %ret.i.i, align 8, !dbg !1675
  store i8* %61, i8** %retval.i, align 8, !dbg !1676
  br label %kmalloc.exit, !dbg !1676

if.end9.i:                                        ; preds = %if.then
  %62 = load i64, i64* %size.addr.i, align 8, !dbg !1677
  %63 = load i32, i32* %flags.addr.i, align 4, !dbg !1678
  %call10.i = call noalias i8* @__kmalloc(i64 %62, i32 %63) #11, !dbg !1679
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1679
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1679
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1679
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !1679
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1680
  br label %kmalloc.exit, !dbg !1680

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %64 = load i8*, i8** %retval.i, align 8, !dbg !1681
  %65 = bitcast i8* %64 to %struct.pulse_elem*, !dbg !1682
  store %struct.pulse_elem* %65, %struct.pulse_elem** %p, align 8, !dbg !1683
  %66 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1684
  %cmp2 = icmp eq %struct.pulse_elem* %66, null, !dbg !1686
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1687

if.then3:                                         ; preds = %kmalloc.exit
  %67 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 2), align 4, !dbg !1688
  %inc = add i32 %67, 1, !dbg !1688
  store i32 %inc, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 2), align 4, !dbg !1688
  store i1 false, i1* %retval, align 1, !dbg !1690
  br label %return, !dbg !1690

if.end:                                           ; preds = %kmalloc.exit
  %68 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 1), align 4, !dbg !1691
  %inc4 = add i32 %68, 1, !dbg !1691
  store i32 %inc4, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 1), align 4, !dbg !1691
  %69 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 3), align 4, !dbg !1692
  %inc5 = add i32 %69, 1, !dbg !1692
  store i32 %inc5, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 3), align 4, !dbg !1692
  br label %if.end6, !dbg !1693

if.end6:                                          ; preds = %if.end, %entry
  %70 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1694
  %head = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %70, i32 0, i32 0, !dbg !1695
  call void @INIT_LIST_HEAD(%struct.list_head* %head) #8, !dbg !1696
  %71 = load i64, i64* %ts.addr, align 8, !dbg !1697
  %72 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1698
  %ts7 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %72, i32 0, i32 1, !dbg !1699
  store i64 %71, i64* %ts7, align 8, !dbg !1700
  %73 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1701
  %head8 = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %73, i32 0, i32 0, !dbg !1702
  %74 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1703
  %pulses = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %74, i32 0, i32 6, !dbg !1704
  call void @list_add(%struct.list_head* %head8, %struct.list_head* %pulses) #8, !dbg !1705
  %75 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1706
  %count = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %75, i32 0, i32 7, !dbg !1707
  %76 = load i32, i32* %count, align 8, !dbg !1708
  %inc9 = add i32 %76, 1, !dbg !1708
  store i32 %inc9, i32* %count, align 8, !dbg !1708
  %77 = load i64, i64* %ts.addr, align 8, !dbg !1709
  %78 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1710
  %last_ts = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %78, i32 0, i32 4, !dbg !1711
  store i64 %77, i64* %last_ts, align 8, !dbg !1712
  %79 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1713
  call void @pulse_queue_check_window(%struct.pri_detector* %79) #8, !dbg !1714
  %80 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1715
  %count10 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %80, i32 0, i32 7, !dbg !1717
  %81 = load i32, i32* %count10, align 8, !dbg !1717
  %82 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1718
  %max_count = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %82, i32 0, i32 8, !dbg !1719
  %83 = load i32, i32* %max_count, align 4, !dbg !1719
  %cmp11 = icmp uge i32 %81, %83, !dbg !1720
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !1721

if.then12:                                        ; preds = %if.end6
  %84 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1722
  %call13 = call zeroext i1 @pulse_queue_dequeue(%struct.pri_detector* %84) #8, !dbg !1723
  br label %if.end14, !dbg !1723

if.end14:                                         ; preds = %if.then12, %if.end6
  store i1 true, i1* %retval, align 1, !dbg !1724
  br label %return, !dbg !1724

return:                                           ; preds = %if.end14, %if.then3
  %85 = load i1, i1* %retval, align 1, !dbg !1725
  ret i1 %85, !dbg !1725
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del_init(%struct.list_head* %entry1) #0 !dbg !1726 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1727, metadata !DIExpression()), !dbg !1728
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1729
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !1730
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1731
  call void @INIT_LIST_HEAD(%struct.list_head* %1) #8, !dbg !1732
  ret void, !dbg !1733
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pool_put_pseq_elem(%struct.pri_sequence* %pse) #0 !dbg !1734 {
entry:
  %pse.addr = alloca %struct.pri_sequence*, align 8
  store %struct.pri_sequence* %pse, %struct.pri_sequence** %pse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pri_sequence** %pse.addr, metadata !1737, metadata !DIExpression()), !dbg !1738
  call void @spin_lock_bh(%struct.spinlock* @pool_lock) #8, !dbg !1739
  %0 = load %struct.pri_sequence*, %struct.pri_sequence** %pse.addr, align 8, !dbg !1740
  %head = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %0, i32 0, i32 0, !dbg !1741
  call void @list_add(%struct.list_head* %head, %struct.list_head* @pseq_pool) #8, !dbg !1742
  %1 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 6), align 4, !dbg !1743
  %dec = add i32 %1, -1, !dbg !1743
  store i32 %dec, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 6), align 4, !dbg !1743
  call void @spin_unlock_bh(%struct.spinlock* @pool_lock) #8, !dbg !1744
  ret void, !dbg !1745
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pde_get_multiple(i32 %val, i32 %fraction, i32 %tolerance) #0 !dbg !1746 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %fraction.addr = alloca i32, align 4
  %tolerance.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  %factor = alloca i32, align 4
  %delta = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1749, metadata !DIExpression()), !dbg !1750
  store i32 %fraction, i32* %fraction.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fraction.addr, metadata !1751, metadata !DIExpression()), !dbg !1752
  store i32 %tolerance, i32* %tolerance.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tolerance.addr, metadata !1753, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !1755, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.declare(metadata i32* %factor, metadata !1757, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.declare(metadata i32* %delta, metadata !1759, metadata !DIExpression()), !dbg !1760
  %0 = load i32, i32* %fraction.addr, align 4, !dbg !1761
  %cmp = icmp eq i32 %0, 0, !dbg !1763
  br i1 %cmp, label %if.then, label %if.end, !dbg !1764

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1765
  br label %return, !dbg !1765

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %val.addr, align 4, !dbg !1766
  %2 = load i32, i32* %fraction.addr, align 4, !dbg !1767
  %cmp1 = icmp ult i32 %1, %2, !dbg !1768
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1769

cond.true:                                        ; preds = %if.end
  %3 = load i32, i32* %fraction.addr, align 4, !dbg !1770
  %4 = load i32, i32* %val.addr, align 4, !dbg !1771
  %sub = sub i32 %3, %4, !dbg !1772
  br label %cond.end, !dbg !1769

cond.false:                                       ; preds = %if.end
  %5 = load i32, i32* %val.addr, align 4, !dbg !1773
  %6 = load i32, i32* %fraction.addr, align 4, !dbg !1774
  %sub2 = sub i32 %5, %6, !dbg !1775
  br label %cond.end, !dbg !1769

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub2, %cond.false ], !dbg !1769
  store i32 %cond, i32* %delta, align 4, !dbg !1776
  %7 = load i32, i32* %delta, align 4, !dbg !1777
  %8 = load i32, i32* %tolerance.addr, align 4, !dbg !1779
  %cmp3 = icmp ule i32 %7, %8, !dbg !1780
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1781

if.then4:                                         ; preds = %cond.end
  store i32 1, i32* %retval, align 4, !dbg !1782
  br label %return, !dbg !1782

if.end5:                                          ; preds = %cond.end
  %9 = load i32, i32* %val.addr, align 4, !dbg !1783
  %10 = load i32, i32* %fraction.addr, align 4, !dbg !1784
  %div = udiv i32 %9, %10, !dbg !1785
  store i32 %div, i32* %factor, align 4, !dbg !1786
  %11 = load i32, i32* %val.addr, align 4, !dbg !1787
  %12 = load i32, i32* %fraction.addr, align 4, !dbg !1788
  %rem = urem i32 %11, %12, !dbg !1789
  store i32 %rem, i32* %remainder, align 4, !dbg !1790
  %13 = load i32, i32* %remainder, align 4, !dbg !1791
  %14 = load i32, i32* %tolerance.addr, align 4, !dbg !1793
  %cmp6 = icmp ugt i32 %13, %14, !dbg !1794
  br i1 %cmp6, label %if.then7, label %if.end12, !dbg !1795

if.then7:                                         ; preds = %if.end5
  %15 = load i32, i32* %fraction.addr, align 4, !dbg !1796
  %16 = load i32, i32* %remainder, align 4, !dbg !1799
  %sub8 = sub i32 %15, %16, !dbg !1800
  %17 = load i32, i32* %tolerance.addr, align 4, !dbg !1801
  %cmp9 = icmp ule i32 %sub8, %17, !dbg !1802
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !1803

if.then10:                                        ; preds = %if.then7
  %18 = load i32, i32* %factor, align 4, !dbg !1804
  %inc = add i32 %18, 1, !dbg !1804
  store i32 %inc, i32* %factor, align 4, !dbg !1804
  br label %if.end11, !dbg !1805

if.else:                                          ; preds = %if.then7
  store i32 0, i32* %factor, align 4, !dbg !1806
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  br label %if.end12, !dbg !1807

if.end12:                                         ; preds = %if.end11, %if.end5
  %19 = load i32, i32* %factor, align 4, !dbg !1808
  store i32 %19, i32* %retval, align 4, !dbg !1809
  br label %return, !dbg !1809

return:                                           ; preds = %if.end12, %if.then4, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !1810
  ret i32 %20, !dbg !1810
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !1811 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1812, metadata !DIExpression()), !dbg !1813
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !1814, metadata !DIExpression()), !dbg !1815
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1816
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !1817
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !1818
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !1819
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1819
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #8, !dbg !1820
  ret void, !dbg !1821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1822 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1825, metadata !DIExpression()), !dbg !1826
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1827, metadata !DIExpression()), !dbg !1828
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1829, metadata !DIExpression()), !dbg !1830
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1831
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1833
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1834
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !1835
  br i1 %call, label %if.end, label %if.then, !dbg !1836

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !1837

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1838
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1839
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !1840
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !1841
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1842
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1843
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !1844
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !1845
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1846
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1847
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !1848
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !1849
  br label %do.body, !dbg !1850

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !1851

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !1853

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !1851

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1855
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1855
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !1855
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !1855
  br label %do.end7, !dbg !1855

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !1851

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !1857
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1858 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1861, metadata !DIExpression()), !dbg !1862
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1863, metadata !DIExpression()), !dbg !1864
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1865, metadata !DIExpression()), !dbg !1866
  ret i1 true, !dbg !1867
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pri_sequence* @pool_get_pseq_elem() #0 !dbg !1868 {
entry:
  %pse = alloca %struct.pri_sequence*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pri_sequence*, align 8
  call void @llvm.dbg.declare(metadata %struct.pri_sequence** %pse, metadata !1871, metadata !DIExpression()), !dbg !1872
  store %struct.pri_sequence* null, %struct.pri_sequence** %pse, align 8, !dbg !1872
  call void @spin_lock_bh(%struct.spinlock* @pool_lock) #8, !dbg !1873
  %call = call i32 @list_empty(%struct.list_head* @pseq_pool) #8, !dbg !1874
  %tobool = icmp ne i32 %call, 0, !dbg !1874
  br i1 %tobool, label %if.end, label %if.then, !dbg !1876

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1877, metadata !DIExpression()), !dbg !1880
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pseq_pool, i32 0, i32 0), align 8, !dbg !1880
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !1880
  store i8* %1, i8** %__mptr, align 8, !dbg !1880
  br label %do.body, !dbg !1880

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !1881

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1880
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1880
  %3 = bitcast i8* %add.ptr to %struct.pri_sequence*, !dbg !1880
  store %struct.pri_sequence* %3, %struct.pri_sequence** %tmp, align 8, !dbg !1881
  %4 = load %struct.pri_sequence*, %struct.pri_sequence** %tmp, align 8, !dbg !1880
  store %struct.pri_sequence* %4, %struct.pri_sequence** %pse, align 8, !dbg !1883
  %5 = load %struct.pri_sequence*, %struct.pri_sequence** %pse, align 8, !dbg !1884
  %head = getelementptr inbounds %struct.pri_sequence, %struct.pri_sequence* %5, i32 0, i32 0, !dbg !1885
  call void @list_del(%struct.list_head* %head) #8, !dbg !1886
  %6 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 6), align 4, !dbg !1887
  %inc = add i32 %6, 1, !dbg !1887
  store i32 %inc, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 6), align 4, !dbg !1887
  br label %if.end, !dbg !1888

if.end:                                           ; preds = %do.end, %entry
  call void @spin_unlock_bh(%struct.spinlock* @pool_lock) #8, !dbg !1889
  %7 = load %struct.pri_sequence*, %struct.pri_sequence** %pse, align 8, !dbg !1890
  ret %struct.pri_sequence* %7, !dbg !1891
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !1892 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !1897, metadata !DIExpression()), !dbg !1898
  br label %do.body, !dbg !1899

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1901

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !1899
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !1899
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1899
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !1901
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !1899
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !1903
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !1904
  %conv = zext i1 %cmp to i32, !dbg !1904
  ret i32 %conv, !dbg !1905
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pulse_elem* @pool_get_pulse_elem() #0 !dbg !1906 {
entry:
  %pe = alloca %struct.pulse_elem*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pulse_elem*, align 8
  call void @llvm.dbg.declare(metadata %struct.pulse_elem** %pe, metadata !1909, metadata !DIExpression()), !dbg !1910
  store %struct.pulse_elem* null, %struct.pulse_elem** %pe, align 8, !dbg !1910
  call void @spin_lock_bh(%struct.spinlock* @pool_lock) #8, !dbg !1911
  %call = call i32 @list_empty(%struct.list_head* @pulse_pool) #8, !dbg !1912
  %tobool = icmp ne i32 %call, 0, !dbg !1912
  br i1 %tobool, label %if.end, label %if.then, !dbg !1914

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1915, metadata !DIExpression()), !dbg !1918
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pulse_pool, i32 0, i32 0), align 8, !dbg !1918
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !1918
  store i8* %1, i8** %__mptr, align 8, !dbg !1918
  br label %do.body, !dbg !1918

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !1919

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1918
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1918
  %3 = bitcast i8* %add.ptr to %struct.pulse_elem*, !dbg !1918
  store %struct.pulse_elem* %3, %struct.pulse_elem** %tmp, align 8, !dbg !1919
  %4 = load %struct.pulse_elem*, %struct.pulse_elem** %tmp, align 8, !dbg !1918
  store %struct.pulse_elem* %4, %struct.pulse_elem** %pe, align 8, !dbg !1921
  %5 = load %struct.pulse_elem*, %struct.pulse_elem** %pe, align 8, !dbg !1922
  %head = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %5, i32 0, i32 0, !dbg !1923
  call void @list_del(%struct.list_head* %head) #8, !dbg !1924
  %6 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 3), align 4, !dbg !1925
  %inc = add i32 %6, 1, !dbg !1925
  store i32 %inc, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 3), align 4, !dbg !1925
  br label %if.end, !dbg !1926

if.end:                                           ; preds = %do.end, %entry
  call void @spin_unlock_bh(%struct.spinlock* @pool_lock) #8, !dbg !1927
  %7 = load %struct.pulse_elem*, %struct.pulse_elem** %pe, align 8, !dbg !1928
  ret %struct.pulse_elem* %7, !dbg !1929
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pulse_queue_check_window(%struct.pri_detector* %pde) #0 !dbg !1930 {
entry:
  %pde.addr = alloca %struct.pri_detector*, align 8
  %min_valid_ts = alloca i64, align 8
  %p = alloca %struct.pulse_elem*, align 8
  store %struct.pri_detector* %pde, %struct.pri_detector** %pde.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pri_detector** %pde.addr, metadata !1931, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.declare(metadata i64* %min_valid_ts, metadata !1933, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.declare(metadata %struct.pulse_elem** %p, metadata !1935, metadata !DIExpression()), !dbg !1936
  %0 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1937
  %count = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %0, i32 0, i32 7, !dbg !1939
  %1 = load i32, i32* %count, align 8, !dbg !1939
  %cmp = icmp ult i32 %1, 2, !dbg !1940
  br i1 %cmp, label %if.then, label %if.end, !dbg !1941

if.then:                                          ; preds = %entry
  br label %while.end, !dbg !1942

if.end:                                           ; preds = %entry
  %2 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1943
  %last_ts = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %2, i32 0, i32 4, !dbg !1945
  %3 = load i64, i64* %last_ts, align 8, !dbg !1945
  %4 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1946
  %window_size = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %4, i32 0, i32 9, !dbg !1947
  %5 = load i32, i32* %window_size, align 8, !dbg !1947
  %conv = zext i32 %5 to i64, !dbg !1946
  %cmp1 = icmp ule i64 %3, %conv, !dbg !1948
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !1949

if.then3:                                         ; preds = %if.end
  br label %while.end, !dbg !1950

if.end4:                                          ; preds = %if.end
  %6 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1951
  %last_ts5 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %6, i32 0, i32 4, !dbg !1952
  %7 = load i64, i64* %last_ts5, align 8, !dbg !1952
  %8 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1953
  %window_size6 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %8, i32 0, i32 9, !dbg !1954
  %9 = load i32, i32* %window_size6, align 8, !dbg !1954
  %conv7 = zext i32 %9 to i64, !dbg !1953
  %sub = sub i64 %7, %conv7, !dbg !1955
  store i64 %sub, i64* %min_valid_ts, align 8, !dbg !1956
  br label %while.cond, !dbg !1957

while.cond:                                       ; preds = %if.end13, %if.end4
  %10 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1958
  %call = call %struct.pulse_elem* @pulse_queue_get_tail(%struct.pri_detector* %10) #8, !dbg !1959
  store %struct.pulse_elem* %call, %struct.pulse_elem** %p, align 8, !dbg !1960
  %cmp8 = icmp ne %struct.pulse_elem* %call, null, !dbg !1961
  br i1 %cmp8, label %while.body, label %while.end, !dbg !1957

while.body:                                       ; preds = %while.cond
  %11 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1962
  %ts = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %11, i32 0, i32 1, !dbg !1965
  %12 = load i64, i64* %ts, align 8, !dbg !1965
  %13 = load i64, i64* %min_valid_ts, align 8, !dbg !1966
  %cmp10 = icmp uge i64 %12, %13, !dbg !1967
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1968

if.then12:                                        ; preds = %while.body
  br label %while.end, !dbg !1969

if.end13:                                         ; preds = %while.body
  %14 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1970
  %call14 = call zeroext i1 @pulse_queue_dequeue(%struct.pri_detector* %14) #8, !dbg !1971
  br label %while.cond, !dbg !1957, !llvm.loop !1972

while.end:                                        ; preds = %if.then, %if.then3, %if.then12, %while.cond
  ret void, !dbg !1974
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pulse_queue_dequeue(%struct.pri_detector* %pde) #0 !dbg !1975 {
entry:
  %pde.addr = alloca %struct.pri_detector*, align 8
  %p = alloca %struct.pulse_elem*, align 8
  store %struct.pri_detector* %pde, %struct.pri_detector** %pde.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pri_detector** %pde.addr, metadata !1978, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.declare(metadata %struct.pulse_elem** %p, metadata !1980, metadata !DIExpression()), !dbg !1981
  %0 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1982
  %call = call %struct.pulse_elem* @pulse_queue_get_tail(%struct.pri_detector* %0) #8, !dbg !1983
  store %struct.pulse_elem* %call, %struct.pulse_elem** %p, align 8, !dbg !1981
  %1 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1984
  %cmp = icmp ne %struct.pulse_elem* %1, null, !dbg !1986
  br i1 %cmp, label %if.then, label %if.end, !dbg !1987

if.then:                                          ; preds = %entry
  %2 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1988
  %head = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %2, i32 0, i32 0, !dbg !1990
  call void @list_del_init(%struct.list_head* %head) #8, !dbg !1991
  %3 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1992
  %count = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %3, i32 0, i32 7, !dbg !1993
  %4 = load i32, i32* %count, align 8, !dbg !1994
  %dec = add i32 %4, -1, !dbg !1994
  store i32 %dec, i32* %count, align 8, !dbg !1994
  %5 = load %struct.pulse_elem*, %struct.pulse_elem** %p, align 8, !dbg !1995
  call void @pool_put_pulse_elem(%struct.pulse_elem* %5) #8, !dbg !1996
  br label %if.end, !dbg !1997

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !1998
  %count1 = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %6, i32 0, i32 7, !dbg !1999
  %7 = load i32, i32* %count1, align 8, !dbg !1999
  %cmp2 = icmp ugt i32 %7, 0, !dbg !2000
  ret i1 %cmp2, !dbg !2001
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pulse_elem* @pulse_queue_get_tail(%struct.pri_detector* %pde) #0 !dbg !2002 {
entry:
  %retval = alloca %struct.pulse_elem*, align 8
  %pde.addr = alloca %struct.pri_detector*, align 8
  %l = alloca %struct.list_head*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pulse_elem*, align 8
  store %struct.pri_detector* %pde, %struct.pri_detector** %pde.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pri_detector** %pde.addr, metadata !2005, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.declare(metadata %struct.list_head** %l, metadata !2007, metadata !DIExpression()), !dbg !2008
  %0 = load %struct.pri_detector*, %struct.pri_detector** %pde.addr, align 8, !dbg !2009
  %pulses = getelementptr inbounds %struct.pri_detector, %struct.pri_detector* %0, i32 0, i32 6, !dbg !2010
  store %struct.list_head* %pulses, %struct.list_head** %l, align 8, !dbg !2008
  %1 = load %struct.list_head*, %struct.list_head** %l, align 8, !dbg !2011
  %call = call i32 @list_empty(%struct.list_head* %1) #8, !dbg !2013
  %tobool = icmp ne i32 %call, 0, !dbg !2013
  br i1 %tobool, label %if.then, label %if.end, !dbg !2014

if.then:                                          ; preds = %entry
  store %struct.pulse_elem* null, %struct.pulse_elem** %retval, align 8, !dbg !2015
  br label %return, !dbg !2015

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2016, metadata !DIExpression()), !dbg !2018
  %2 = load %struct.list_head*, %struct.list_head** %l, align 8, !dbg !2018
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !2018
  %3 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2018
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !2018
  store i8* %4, i8** %__mptr, align 8, !dbg !2018
  br label %do.body, !dbg !2018

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2019

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2018
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !2018
  %6 = bitcast i8* %add.ptr to %struct.pulse_elem*, !dbg !2018
  store %struct.pulse_elem* %6, %struct.pulse_elem** %tmp, align 8, !dbg !2019
  %7 = load %struct.pulse_elem*, %struct.pulse_elem** %tmp, align 8, !dbg !2018
  store %struct.pulse_elem* %7, %struct.pulse_elem** %retval, align 8, !dbg !2021
  br label %return, !dbg !2021

return:                                           ; preds = %do.end, %if.then
  %8 = load %struct.pulse_elem*, %struct.pulse_elem** %retval, align 8, !dbg !2022
  ret %struct.pulse_elem* %8, !dbg !2022
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pool_put_pulse_elem(%struct.pulse_elem* %pe) #0 !dbg !2023 {
entry:
  %pe.addr = alloca %struct.pulse_elem*, align 8
  store %struct.pulse_elem* %pe, %struct.pulse_elem** %pe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pulse_elem** %pe.addr, metadata !2026, metadata !DIExpression()), !dbg !2027
  call void @spin_lock_bh(%struct.spinlock* @pool_lock) #8, !dbg !2028
  %0 = load %struct.pulse_elem*, %struct.pulse_elem** %pe.addr, align 8, !dbg !2029
  %head = getelementptr inbounds %struct.pulse_elem, %struct.pulse_elem* %0, i32 0, i32 0, !dbg !2030
  call void @list_add(%struct.list_head* %head, %struct.list_head* @pulse_pool) #8, !dbg !2031
  %1 = load i32, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 3), align 4, !dbg !2032
  %dec = add i32 %1, -1, !dbg !2032
  store i32 %dec, i32* getelementptr inbounds (%struct.ath_dfs_pool_stats, %struct.ath_dfs_pool_stats* @global_dfs_pool_stats, i32 0, i32 3), align 4, !dbg !2032
  call void @spin_unlock_bh(%struct.spinlock* @pool_lock) #8, !dbg !2033
  ret void, !dbg !2034
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { alwaysinline noredzone nounwind sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "global_dfs_pool_stats", scope: !2, file: !3, line: 24, type: !81, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !57, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/wireless/ath/dfs_pri_detector.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 10, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!18 = !{!19, !21, !22, !37, !51, !52, !43, !53, !55}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !20, line: 148, baseType: !7)
!20 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pulse_elem", file: !3, line: 36, size: 192, elements: !24)
!24 = !{!25, !31}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !23, file: !3, line: 37, baseType: !26, size: 128)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !20, line: 178, size: 128, elements: !27)
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !26, file: !20, line: 179, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !26, file: !20, line: 179, baseType: !29, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !23, file: !3, line: 38, baseType: !32, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !33, line: 23, baseType: !34)
!33 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !35, line: 31, baseType: !36)
!35 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!36 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pri_sequence", file: !39, line: 35, size: 448, elements: !40)
!39 = !DIFile(filename: "drivers/net/wireless/ath/dfs_pri_detector.h", directory: "/home/lizy2001/genbc/linux")
!40 = !{!41, !42, !45, !46, !47, !48, !49, !50}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !38, file: !39, line: 36, baseType: !26, size: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "pri", scope: !38, file: !39, line: 37, baseType: !43, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !33, line: 21, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !35, line: 27, baseType: !7)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dur", scope: !38, file: !39, line: 38, baseType: !43, size: 32, offset: 160)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !38, file: !39, line: 39, baseType: !43, size: 32, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "count_falses", scope: !38, file: !39, line: 40, baseType: !43, size: 32, offset: 224)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "first_ts", scope: !38, file: !39, line: 41, baseType: !32, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "last_ts", scope: !38, file: !39, line: 42, baseType: !32, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "deadline_ts", scope: !38, file: !39, line: 43, baseType: !32, size: 64, offset: 384)
!51 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!57 = !{!0, !58, !75, !77, !79}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "pool_lock", scope: !2, file: !3, line: 85, type: !60, isLocal: true, isDefinition: true)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !61, line: 83, baseType: !62)
!61 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !61, line: 71, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, scope: !62, file: !61, line: 72, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !61, line: 72, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !65, file: !61, line: 73, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !61, line: 20, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !68, file: !61, line: 21, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !72, line: 25, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 25, elements: !74)
!74 = !{}
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "singleton_pool_references", scope: !2, file: !3, line: 82, type: !43, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "pulse_pool", scope: !2, file: !3, line: 83, type: !26, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "pseq_pool", scope: !2, file: !3, line: 84, type: !26, isLocal: true, isDefinition: true)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ath_dfs_pool_stats", file: !82, line: 32, size: 224, elements: !83)
!82 = !DIFile(filename: "drivers/net/wireless/ath/dfs_pattern_detector.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !85, !86, !87, !88, !89, !90}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pool_reference", scope: !81, file: !82, line: 33, baseType: !43, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pulse_allocated", scope: !81, file: !82, line: 34, baseType: !43, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pulse_alloc_error", scope: !81, file: !82, line: 35, baseType: !43, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pulse_used", scope: !81, file: !82, line: 36, baseType: !43, size: 32, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pseq_allocated", scope: !81, file: !82, line: 37, baseType: !43, size: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pseq_alloc_error", scope: !81, file: !82, line: 38, baseType: !43, size: 32, offset: 160)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pseq_used", scope: !81, file: !82, line: 39, baseType: !43, size: 32, offset: 192)
!91 = !{i32 7, !"Dwarf Version", i32 4}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"Code Model", i32 2}
!95 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!96 = distinct !DISubprogram(name: "pri_detector_init", scope: !3, file: !3, line: 418, type: !97, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !74)
!97 = !DISubroutineType(types: !98)
!98 = !{!99, !131}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pri_detector", file: !39, line: 59, size: 704, elements: !101)
!101 = !{!102, !106, !126, !130, !145, !146, !147, !148, !149, !150}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !100, file: !39, line: 60, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !99}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "add_pulse", scope: !100, file: !39, line: 62, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!37, !99, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pulse_event", file: !82, line: 50, size: 128, elements: !112)
!112 = !{!113, !114, !118, !122, !123}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !111, file: !82, line: 51, baseType: !32, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !111, file: !82, line: 52, baseType: !115, size: 16, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !33, line: 19, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !35, line: 24, baseType: !117)
!117 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !111, file: !82, line: 53, baseType: !119, size: 8, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !33, line: 17, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !35, line: 21, baseType: !121)
!121 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "rssi", scope: !111, file: !82, line: 54, baseType: !119, size: 8, offset: 88)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "chirp", scope: !111, file: !82, line: 55, baseType: !124, size: 8, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !20, line: 30, baseType: !125)
!125 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !100, file: !39, line: 63, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !99, !32}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !100, file: !39, line: 65, baseType: !131, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "radar_detector_specs", file: !82, line: 71, size: 112, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type_id", scope: !133, file: !82, line: 72, baseType: !119, size: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "width_min", scope: !133, file: !82, line: 73, baseType: !119, size: 8, offset: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "width_max", scope: !133, file: !82, line: 74, baseType: !119, size: 8, offset: 16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pri_min", scope: !133, file: !82, line: 75, baseType: !115, size: 16, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pri_max", scope: !133, file: !82, line: 76, baseType: !115, size: 16, offset: 48)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "num_pri", scope: !133, file: !82, line: 77, baseType: !119, size: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ppb", scope: !133, file: !82, line: 78, baseType: !119, size: 8, offset: 72)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ppb_thresh", scope: !133, file: !82, line: 79, baseType: !119, size: 8, offset: 80)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "max_pri_tolerance", scope: !133, file: !82, line: 80, baseType: !119, size: 8, offset: 88)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "chirp", scope: !133, file: !82, line: 81, baseType: !124, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "last_ts", scope: !100, file: !39, line: 68, baseType: !32, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sequences", scope: !100, file: !39, line: 69, baseType: !26, size: 128, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pulses", scope: !100, file: !39, line: 70, baseType: !26, size: 128, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !100, file: !39, line: 71, baseType: !43, size: 32, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "max_count", scope: !100, file: !39, line: 72, baseType: !43, size: 32, offset: 608)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "window_size", scope: !100, file: !39, line: 73, baseType: !43, size: 32, offset: 640)
!151 = !DILocalVariable(name: "rs", arg: 1, scope: !96, file: !3, line: 418, type: !131)
!152 = !DILocation(line: 418, column: 75, scope: !96)
!153 = !DILocalVariable(name: "de", scope: !96, file: !3, line: 420, type: !99)
!154 = !DILocation(line: 420, column: 23, scope: !96)
!155 = !DILocation(line: 422, column: 7, scope: !96)
!156 = !DILocation(line: 422, column: 5, scope: !96)
!157 = !DILocation(line: 423, column: 6, scope: !158)
!158 = distinct !DILexicalBlock(scope: !96, file: !3, line: 423, column: 6)
!159 = !DILocation(line: 423, column: 9, scope: !158)
!160 = !DILocation(line: 423, column: 6, scope: !96)
!161 = !DILocation(line: 424, column: 3, scope: !158)
!162 = !DILocation(line: 425, column: 2, scope: !96)
!163 = !DILocation(line: 425, column: 6, scope: !96)
!164 = !DILocation(line: 425, column: 11, scope: !96)
!165 = !DILocation(line: 426, column: 2, scope: !96)
!166 = !DILocation(line: 426, column: 6, scope: !96)
!167 = !DILocation(line: 426, column: 16, scope: !96)
!168 = !DILocation(line: 427, column: 2, scope: !96)
!169 = !DILocation(line: 427, column: 6, scope: !96)
!170 = !DILocation(line: 427, column: 12, scope: !96)
!171 = !DILocation(line: 429, column: 18, scope: !96)
!172 = !DILocation(line: 429, column: 22, scope: !96)
!173 = !DILocation(line: 429, column: 2, scope: !96)
!174 = !DILocation(line: 430, column: 18, scope: !96)
!175 = !DILocation(line: 430, column: 22, scope: !96)
!176 = !DILocation(line: 430, column: 2, scope: !96)
!177 = !DILocation(line: 431, column: 20, scope: !96)
!178 = !DILocation(line: 431, column: 24, scope: !96)
!179 = !DILocation(line: 431, column: 34, scope: !96)
!180 = !DILocation(line: 431, column: 38, scope: !96)
!181 = !DILocation(line: 431, column: 32, scope: !96)
!182 = !DILocation(line: 431, column: 44, scope: !96)
!183 = !DILocation(line: 431, column: 48, scope: !96)
!184 = !DILocation(line: 431, column: 42, scope: !96)
!185 = !DILocation(line: 431, column: 2, scope: !96)
!186 = !DILocation(line: 431, column: 6, scope: !96)
!187 = !DILocation(line: 431, column: 18, scope: !96)
!188 = !DILocation(line: 432, column: 18, scope: !96)
!189 = !DILocation(line: 432, column: 22, scope: !96)
!190 = !DILocation(line: 432, column: 26, scope: !96)
!191 = !DILocation(line: 432, column: 2, scope: !96)
!192 = !DILocation(line: 432, column: 6, scope: !96)
!193 = !DILocation(line: 432, column: 16, scope: !96)
!194 = !DILocation(line: 433, column: 11, scope: !96)
!195 = !DILocation(line: 433, column: 2, scope: !96)
!196 = !DILocation(line: 433, column: 6, scope: !96)
!197 = !DILocation(line: 433, column: 9, scope: !96)
!198 = !DILocation(line: 435, column: 2, scope: !96)
!199 = !DILocation(line: 436, column: 9, scope: !96)
!200 = !DILocation(line: 436, column: 2, scope: !96)
!201 = !DILocation(line: 437, column: 1, scope: !96)
!202 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !203, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!203 = !DISubroutineType(types: !204)
!204 = !{!21, !205, !19}
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 55, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !207, line: 72, baseType: !208)
!207 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !207, line: 16, baseType: !51)
!209 = !DILocalVariable(name: "s", arg: 1, scope: !210, file: !6, line: 445, type: !213)
!210 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !211, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!211 = !DISubroutineType(types: !212)
!212 = !{!21, !213, !19, !205}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !215, line: 117, flags: DIFlagFwdDecl)
!215 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!216 = !DILocation(line: 445, column: 72, scope: !210, inlinedAt: !217)
!217 = distinct !DILocation(line: 552, column: 10, scope: !218, inlinedAt: !221)
!218 = distinct !DILexicalBlock(scope: !219, file: !6, line: 540, column: 34)
!219 = distinct !DILexicalBlock(scope: !220, file: !6, line: 540, column: 6)
!220 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !203, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!221 = distinct !DILocation(line: 664, column: 9, scope: !202)
!222 = !DILocalVariable(name: "flags", arg: 2, scope: !210, file: !6, line: 446, type: !19)
!223 = !DILocation(line: 446, column: 9, scope: !210, inlinedAt: !217)
!224 = !DILocalVariable(name: "size", arg: 3, scope: !210, file: !6, line: 446, type: !205)
!225 = !DILocation(line: 446, column: 23, scope: !210, inlinedAt: !217)
!226 = !DILocalVariable(name: "ret", scope: !210, file: !6, line: 448, type: !21)
!227 = !DILocation(line: 448, column: 8, scope: !210, inlinedAt: !217)
!228 = !DILocalVariable(name: "flags", arg: 1, scope: !229, file: !6, line: 318, type: !19)
!229 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !230, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!230 = !DISubroutineType(types: !231)
!231 = !{!5, !19}
!232 = !DILocation(line: 318, column: 67, scope: !229, inlinedAt: !233)
!233 = distinct !DILocation(line: 553, column: 20, scope: !218, inlinedAt: !221)
!234 = !DILocalVariable(name: "size", arg: 1, scope: !235, file: !6, line: 346, type: !205)
!235 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !236, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!236 = !DISubroutineType(types: !237)
!237 = !{!7, !205}
!238 = !DILocation(line: 346, column: 58, scope: !235, inlinedAt: !239)
!239 = distinct !DILocation(line: 547, column: 11, scope: !218, inlinedAt: !221)
!240 = !DILocalVariable(name: "size", arg: 1, scope: !241, file: !6, line: 472, type: !205)
!241 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !242, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!242 = !DISubroutineType(types: !243)
!243 = !{!21, !205, !19, !7}
!244 = !DILocation(line: 472, column: 28, scope: !241, inlinedAt: !245)
!245 = distinct !DILocation(line: 481, column: 9, scope: !246, inlinedAt: !247)
!246 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !203, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!247 = distinct !DILocation(line: 545, column: 11, scope: !248, inlinedAt: !221)
!248 = distinct !DILexicalBlock(scope: !218, file: !6, line: 544, column: 7)
!249 = !DILocalVariable(name: "flags", arg: 2, scope: !241, file: !6, line: 472, type: !19)
!250 = !DILocation(line: 472, column: 40, scope: !241, inlinedAt: !245)
!251 = !DILocalVariable(name: "order", arg: 3, scope: !241, file: !6, line: 472, type: !7)
!252 = !DILocation(line: 472, column: 60, scope: !241, inlinedAt: !245)
!253 = !DILocalVariable(name: "size", arg: 1, scope: !246, file: !6, line: 478, type: !205)
!254 = !DILocation(line: 478, column: 51, scope: !246, inlinedAt: !247)
!255 = !DILocalVariable(name: "flags", arg: 2, scope: !246, file: !6, line: 478, type: !19)
!256 = !DILocation(line: 478, column: 63, scope: !246, inlinedAt: !247)
!257 = !DILocalVariable(name: "order", scope: !246, file: !6, line: 480, type: !7)
!258 = !DILocation(line: 480, column: 15, scope: !246, inlinedAt: !247)
!259 = !DILocalVariable(name: "size", arg: 1, scope: !220, file: !6, line: 538, type: !205)
!260 = !DILocation(line: 538, column: 45, scope: !220, inlinedAt: !221)
!261 = !DILocalVariable(name: "flags", arg: 2, scope: !220, file: !6, line: 538, type: !19)
!262 = !DILocation(line: 538, column: 57, scope: !220, inlinedAt: !221)
!263 = !DILocalVariable(name: "index", scope: !218, file: !6, line: 542, type: !7)
!264 = !DILocation(line: 542, column: 16, scope: !218, inlinedAt: !221)
!265 = !DILocalVariable(name: "size", arg: 1, scope: !202, file: !6, line: 662, type: !205)
!266 = !DILocation(line: 662, column: 36, scope: !202)
!267 = !DILocalVariable(name: "flags", arg: 2, scope: !202, file: !6, line: 662, type: !19)
!268 = !DILocation(line: 662, column: 48, scope: !202)
!269 = !DILocation(line: 664, column: 17, scope: !202)
!270 = !DILocation(line: 664, column: 23, scope: !202)
!271 = !DILocation(line: 664, column: 29, scope: !202)
!272 = !DILocation(line: 540, column: 27, scope: !219, inlinedAt: !221)
!273 = !DILocation(line: 540, column: 6, scope: !219, inlinedAt: !221)
!274 = !DILocation(line: 540, column: 6, scope: !220, inlinedAt: !221)
!275 = !DILocation(line: 544, column: 7, scope: !248, inlinedAt: !221)
!276 = !DILocation(line: 544, column: 12, scope: !248, inlinedAt: !221)
!277 = !DILocation(line: 544, column: 7, scope: !218, inlinedAt: !221)
!278 = !DILocation(line: 545, column: 25, scope: !248, inlinedAt: !221)
!279 = !DILocation(line: 545, column: 31, scope: !248, inlinedAt: !221)
!280 = !DILocation(line: 480, column: 33, scope: !246, inlinedAt: !247)
!281 = !DILocation(line: 480, column: 23, scope: !246, inlinedAt: !247)
!282 = !DILocation(line: 481, column: 29, scope: !246, inlinedAt: !247)
!283 = !DILocation(line: 481, column: 35, scope: !246, inlinedAt: !247)
!284 = !DILocation(line: 481, column: 42, scope: !246, inlinedAt: !247)
!285 = !DILocation(line: 474, column: 23, scope: !241, inlinedAt: !245)
!286 = !DILocation(line: 474, column: 29, scope: !241, inlinedAt: !245)
!287 = !DILocation(line: 474, column: 36, scope: !241, inlinedAt: !245)
!288 = !DILocation(line: 474, column: 9, scope: !241, inlinedAt: !245)
!289 = !DILocation(line: 545, column: 4, scope: !248, inlinedAt: !221)
!290 = !DILocation(line: 547, column: 25, scope: !218, inlinedAt: !221)
!291 = !DILocation(line: 348, column: 7, scope: !292, inlinedAt: !239)
!292 = distinct !DILexicalBlock(scope: !235, file: !6, line: 348, column: 6)
!293 = !DILocation(line: 348, column: 6, scope: !235, inlinedAt: !239)
!294 = !DILocation(line: 349, column: 3, scope: !292, inlinedAt: !239)
!295 = !DILocation(line: 351, column: 6, scope: !296, inlinedAt: !239)
!296 = distinct !DILexicalBlock(scope: !235, file: !6, line: 351, column: 6)
!297 = !DILocation(line: 351, column: 11, scope: !296, inlinedAt: !239)
!298 = !DILocation(line: 351, column: 6, scope: !235, inlinedAt: !239)
!299 = !DILocation(line: 352, column: 3, scope: !296, inlinedAt: !239)
!300 = !DILocation(line: 354, column: 32, scope: !301, inlinedAt: !239)
!301 = distinct !DILexicalBlock(scope: !235, file: !6, line: 354, column: 6)
!302 = !DILocation(line: 354, column: 37, scope: !301, inlinedAt: !239)
!303 = !DILocation(line: 354, column: 42, scope: !301, inlinedAt: !239)
!304 = !DILocation(line: 354, column: 45, scope: !301, inlinedAt: !239)
!305 = !DILocation(line: 354, column: 50, scope: !301, inlinedAt: !239)
!306 = !DILocation(line: 354, column: 6, scope: !235, inlinedAt: !239)
!307 = !DILocation(line: 355, column: 3, scope: !301, inlinedAt: !239)
!308 = !DILocation(line: 356, column: 32, scope: !309, inlinedAt: !239)
!309 = distinct !DILexicalBlock(scope: !235, file: !6, line: 356, column: 6)
!310 = !DILocation(line: 356, column: 37, scope: !309, inlinedAt: !239)
!311 = !DILocation(line: 356, column: 43, scope: !309, inlinedAt: !239)
!312 = !DILocation(line: 356, column: 46, scope: !309, inlinedAt: !239)
!313 = !DILocation(line: 356, column: 51, scope: !309, inlinedAt: !239)
!314 = !DILocation(line: 356, column: 6, scope: !235, inlinedAt: !239)
!315 = !DILocation(line: 357, column: 3, scope: !309, inlinedAt: !239)
!316 = !DILocation(line: 358, column: 6, scope: !317, inlinedAt: !239)
!317 = distinct !DILexicalBlock(scope: !235, file: !6, line: 358, column: 6)
!318 = !DILocation(line: 358, column: 11, scope: !317, inlinedAt: !239)
!319 = !DILocation(line: 358, column: 6, scope: !235, inlinedAt: !239)
!320 = !DILocation(line: 358, column: 26, scope: !317, inlinedAt: !239)
!321 = !DILocation(line: 359, column: 6, scope: !322, inlinedAt: !239)
!322 = distinct !DILexicalBlock(scope: !235, file: !6, line: 359, column: 6)
!323 = !DILocation(line: 359, column: 11, scope: !322, inlinedAt: !239)
!324 = !DILocation(line: 359, column: 6, scope: !235, inlinedAt: !239)
!325 = !DILocation(line: 359, column: 26, scope: !322, inlinedAt: !239)
!326 = !DILocation(line: 360, column: 6, scope: !327, inlinedAt: !239)
!327 = distinct !DILexicalBlock(scope: !235, file: !6, line: 360, column: 6)
!328 = !DILocation(line: 360, column: 11, scope: !327, inlinedAt: !239)
!329 = !DILocation(line: 360, column: 6, scope: !235, inlinedAt: !239)
!330 = !DILocation(line: 360, column: 26, scope: !327, inlinedAt: !239)
!331 = !DILocation(line: 361, column: 6, scope: !332, inlinedAt: !239)
!332 = distinct !DILexicalBlock(scope: !235, file: !6, line: 361, column: 6)
!333 = !DILocation(line: 361, column: 11, scope: !332, inlinedAt: !239)
!334 = !DILocation(line: 361, column: 6, scope: !235, inlinedAt: !239)
!335 = !DILocation(line: 361, column: 26, scope: !332, inlinedAt: !239)
!336 = !DILocation(line: 362, column: 6, scope: !337, inlinedAt: !239)
!337 = distinct !DILexicalBlock(scope: !235, file: !6, line: 362, column: 6)
!338 = !DILocation(line: 362, column: 11, scope: !337, inlinedAt: !239)
!339 = !DILocation(line: 362, column: 6, scope: !235, inlinedAt: !239)
!340 = !DILocation(line: 362, column: 26, scope: !337, inlinedAt: !239)
!341 = !DILocation(line: 363, column: 6, scope: !342, inlinedAt: !239)
!342 = distinct !DILexicalBlock(scope: !235, file: !6, line: 363, column: 6)
!343 = !DILocation(line: 363, column: 11, scope: !342, inlinedAt: !239)
!344 = !DILocation(line: 363, column: 6, scope: !235, inlinedAt: !239)
!345 = !DILocation(line: 363, column: 26, scope: !342, inlinedAt: !239)
!346 = !DILocation(line: 364, column: 6, scope: !347, inlinedAt: !239)
!347 = distinct !DILexicalBlock(scope: !235, file: !6, line: 364, column: 6)
!348 = !DILocation(line: 364, column: 11, scope: !347, inlinedAt: !239)
!349 = !DILocation(line: 364, column: 6, scope: !235, inlinedAt: !239)
!350 = !DILocation(line: 364, column: 26, scope: !347, inlinedAt: !239)
!351 = !DILocation(line: 365, column: 6, scope: !352, inlinedAt: !239)
!352 = distinct !DILexicalBlock(scope: !235, file: !6, line: 365, column: 6)
!353 = !DILocation(line: 365, column: 11, scope: !352, inlinedAt: !239)
!354 = !DILocation(line: 365, column: 6, scope: !235, inlinedAt: !239)
!355 = !DILocation(line: 365, column: 26, scope: !352, inlinedAt: !239)
!356 = !DILocation(line: 366, column: 6, scope: !357, inlinedAt: !239)
!357 = distinct !DILexicalBlock(scope: !235, file: !6, line: 366, column: 6)
!358 = !DILocation(line: 366, column: 11, scope: !357, inlinedAt: !239)
!359 = !DILocation(line: 366, column: 6, scope: !235, inlinedAt: !239)
!360 = !DILocation(line: 366, column: 26, scope: !357, inlinedAt: !239)
!361 = !DILocation(line: 367, column: 6, scope: !362, inlinedAt: !239)
!362 = distinct !DILexicalBlock(scope: !235, file: !6, line: 367, column: 6)
!363 = !DILocation(line: 367, column: 11, scope: !362, inlinedAt: !239)
!364 = !DILocation(line: 367, column: 6, scope: !235, inlinedAt: !239)
!365 = !DILocation(line: 367, column: 26, scope: !362, inlinedAt: !239)
!366 = !DILocation(line: 368, column: 6, scope: !367, inlinedAt: !239)
!367 = distinct !DILexicalBlock(scope: !235, file: !6, line: 368, column: 6)
!368 = !DILocation(line: 368, column: 11, scope: !367, inlinedAt: !239)
!369 = !DILocation(line: 368, column: 6, scope: !235, inlinedAt: !239)
!370 = !DILocation(line: 368, column: 26, scope: !367, inlinedAt: !239)
!371 = !DILocation(line: 369, column: 6, scope: !372, inlinedAt: !239)
!372 = distinct !DILexicalBlock(scope: !235, file: !6, line: 369, column: 6)
!373 = !DILocation(line: 369, column: 11, scope: !372, inlinedAt: !239)
!374 = !DILocation(line: 369, column: 6, scope: !235, inlinedAt: !239)
!375 = !DILocation(line: 369, column: 26, scope: !372, inlinedAt: !239)
!376 = !DILocation(line: 370, column: 6, scope: !377, inlinedAt: !239)
!377 = distinct !DILexicalBlock(scope: !235, file: !6, line: 370, column: 6)
!378 = !DILocation(line: 370, column: 11, scope: !377, inlinedAt: !239)
!379 = !DILocation(line: 370, column: 6, scope: !235, inlinedAt: !239)
!380 = !DILocation(line: 370, column: 26, scope: !377, inlinedAt: !239)
!381 = !DILocation(line: 371, column: 6, scope: !382, inlinedAt: !239)
!382 = distinct !DILexicalBlock(scope: !235, file: !6, line: 371, column: 6)
!383 = !DILocation(line: 371, column: 11, scope: !382, inlinedAt: !239)
!384 = !DILocation(line: 371, column: 6, scope: !235, inlinedAt: !239)
!385 = !DILocation(line: 371, column: 26, scope: !382, inlinedAt: !239)
!386 = !DILocation(line: 372, column: 6, scope: !387, inlinedAt: !239)
!387 = distinct !DILexicalBlock(scope: !235, file: !6, line: 372, column: 6)
!388 = !DILocation(line: 372, column: 11, scope: !387, inlinedAt: !239)
!389 = !DILocation(line: 372, column: 6, scope: !235, inlinedAt: !239)
!390 = !DILocation(line: 372, column: 26, scope: !387, inlinedAt: !239)
!391 = !DILocation(line: 373, column: 6, scope: !392, inlinedAt: !239)
!392 = distinct !DILexicalBlock(scope: !235, file: !6, line: 373, column: 6)
!393 = !DILocation(line: 373, column: 11, scope: !392, inlinedAt: !239)
!394 = !DILocation(line: 373, column: 6, scope: !235, inlinedAt: !239)
!395 = !DILocation(line: 373, column: 26, scope: !392, inlinedAt: !239)
!396 = !DILocation(line: 374, column: 6, scope: !397, inlinedAt: !239)
!397 = distinct !DILexicalBlock(scope: !235, file: !6, line: 374, column: 6)
!398 = !DILocation(line: 374, column: 11, scope: !397, inlinedAt: !239)
!399 = !DILocation(line: 374, column: 6, scope: !235, inlinedAt: !239)
!400 = !DILocation(line: 374, column: 26, scope: !397, inlinedAt: !239)
!401 = !DILocation(line: 375, column: 6, scope: !402, inlinedAt: !239)
!402 = distinct !DILexicalBlock(scope: !235, file: !6, line: 375, column: 6)
!403 = !DILocation(line: 375, column: 11, scope: !402, inlinedAt: !239)
!404 = !DILocation(line: 375, column: 6, scope: !235, inlinedAt: !239)
!405 = !DILocation(line: 375, column: 27, scope: !402, inlinedAt: !239)
!406 = !DILocation(line: 376, column: 6, scope: !407, inlinedAt: !239)
!407 = distinct !DILexicalBlock(scope: !235, file: !6, line: 376, column: 6)
!408 = !DILocation(line: 376, column: 11, scope: !407, inlinedAt: !239)
!409 = !DILocation(line: 376, column: 6, scope: !235, inlinedAt: !239)
!410 = !DILocation(line: 376, column: 32, scope: !407, inlinedAt: !239)
!411 = !DILocation(line: 377, column: 6, scope: !412, inlinedAt: !239)
!412 = distinct !DILexicalBlock(scope: !235, file: !6, line: 377, column: 6)
!413 = !DILocation(line: 377, column: 11, scope: !412, inlinedAt: !239)
!414 = !DILocation(line: 377, column: 6, scope: !235, inlinedAt: !239)
!415 = !DILocation(line: 377, column: 32, scope: !412, inlinedAt: !239)
!416 = !DILocation(line: 378, column: 6, scope: !417, inlinedAt: !239)
!417 = distinct !DILexicalBlock(scope: !235, file: !6, line: 378, column: 6)
!418 = !DILocation(line: 378, column: 11, scope: !417, inlinedAt: !239)
!419 = !DILocation(line: 378, column: 6, scope: !235, inlinedAt: !239)
!420 = !DILocation(line: 378, column: 32, scope: !417, inlinedAt: !239)
!421 = !DILocation(line: 379, column: 6, scope: !422, inlinedAt: !239)
!422 = distinct !DILexicalBlock(scope: !235, file: !6, line: 379, column: 6)
!423 = !DILocation(line: 379, column: 11, scope: !422, inlinedAt: !239)
!424 = !DILocation(line: 379, column: 6, scope: !235, inlinedAt: !239)
!425 = !DILocation(line: 379, column: 33, scope: !422, inlinedAt: !239)
!426 = !DILocation(line: 380, column: 6, scope: !427, inlinedAt: !239)
!427 = distinct !DILexicalBlock(scope: !235, file: !6, line: 380, column: 6)
!428 = !DILocation(line: 380, column: 11, scope: !427, inlinedAt: !239)
!429 = !DILocation(line: 380, column: 6, scope: !235, inlinedAt: !239)
!430 = !DILocation(line: 380, column: 33, scope: !427, inlinedAt: !239)
!431 = !DILocation(line: 381, column: 6, scope: !432, inlinedAt: !239)
!432 = distinct !DILexicalBlock(scope: !235, file: !6, line: 381, column: 6)
!433 = !DILocation(line: 381, column: 11, scope: !432, inlinedAt: !239)
!434 = !DILocation(line: 381, column: 6, scope: !235, inlinedAt: !239)
!435 = !DILocation(line: 381, column: 33, scope: !432, inlinedAt: !239)
!436 = !DILocation(line: 382, column: 2, scope: !437, inlinedAt: !239)
!437 = distinct !DILexicalBlock(scope: !438, file: !6, line: 382, column: 2)
!438 = distinct !DILexicalBlock(scope: !235, file: !6, line: 382, column: 2)
!439 = !{i32 -2144644231, i32 -2144644202, i32 -2144644156, i32 -2144644098, i32 -2144644044, i32 -2144643990, i32 -2144643935, i32 -2144643904}
!440 = !DILocation(line: 382, column: 2, scope: !441, inlinedAt: !239)
!441 = distinct !DILexicalBlock(scope: !442, file: !6, line: 382, column: 2)
!442 = distinct !DILexicalBlock(scope: !438, file: !6, line: 382, column: 2)
!443 = !{i32 -2144643461, i32 -2144643454, i32 -2144643400, i32 -2144643369, i32 -2144643339}
!444 = !DILocation(line: 382, column: 2, scope: !442, inlinedAt: !239)
!445 = !DILocation(line: 386, column: 1, scope: !235, inlinedAt: !239)
!446 = !DILocation(line: 547, column: 9, scope: !218, inlinedAt: !221)
!447 = !DILocation(line: 549, column: 8, scope: !448, inlinedAt: !221)
!448 = distinct !DILexicalBlock(scope: !218, file: !6, line: 549, column: 7)
!449 = !DILocation(line: 549, column: 7, scope: !218, inlinedAt: !221)
!450 = !DILocation(line: 550, column: 4, scope: !448, inlinedAt: !221)
!451 = !DILocation(line: 553, column: 33, scope: !218, inlinedAt: !221)
!452 = !DILocation(line: 325, column: 6, scope: !453, inlinedAt: !233)
!453 = distinct !DILexicalBlock(scope: !229, file: !6, line: 325, column: 6)
!454 = !DILocation(line: 325, column: 6, scope: !229, inlinedAt: !233)
!455 = !DILocation(line: 326, column: 3, scope: !453, inlinedAt: !233)
!456 = !DILocation(line: 332, column: 9, scope: !229, inlinedAt: !233)
!457 = !DILocation(line: 332, column: 15, scope: !229, inlinedAt: !233)
!458 = !DILocation(line: 332, column: 2, scope: !229, inlinedAt: !233)
!459 = !DILocation(line: 336, column: 1, scope: !229, inlinedAt: !233)
!460 = !DILocation(line: 553, column: 5, scope: !218, inlinedAt: !221)
!461 = !DILocation(line: 553, column: 41, scope: !218, inlinedAt: !221)
!462 = !DILocation(line: 554, column: 5, scope: !218, inlinedAt: !221)
!463 = !DILocation(line: 554, column: 12, scope: !218, inlinedAt: !221)
!464 = !DILocation(line: 448, column: 31, scope: !210, inlinedAt: !217)
!465 = !DILocation(line: 448, column: 34, scope: !210, inlinedAt: !217)
!466 = !DILocation(line: 448, column: 14, scope: !210, inlinedAt: !217)
!467 = !DILocation(line: 450, column: 22, scope: !210, inlinedAt: !217)
!468 = !DILocation(line: 450, column: 25, scope: !210, inlinedAt: !217)
!469 = !DILocation(line: 450, column: 30, scope: !210, inlinedAt: !217)
!470 = !DILocation(line: 450, column: 36, scope: !210, inlinedAt: !217)
!471 = !DILocation(line: 450, column: 8, scope: !210, inlinedAt: !217)
!472 = !DILocation(line: 450, column: 6, scope: !210, inlinedAt: !217)
!473 = !DILocation(line: 451, column: 9, scope: !210, inlinedAt: !217)
!474 = !DILocation(line: 552, column: 3, scope: !218, inlinedAt: !221)
!475 = !DILocation(line: 557, column: 19, scope: !220, inlinedAt: !221)
!476 = !DILocation(line: 557, column: 25, scope: !220, inlinedAt: !221)
!477 = !DILocation(line: 557, column: 9, scope: !220, inlinedAt: !221)
!478 = !DILocation(line: 557, column: 2, scope: !220, inlinedAt: !221)
!479 = !DILocation(line: 558, column: 1, scope: !220, inlinedAt: !221)
!480 = !DILocation(line: 664, column: 2, scope: !202)
!481 = distinct !DISubprogram(name: "pri_detector_exit", scope: !3, file: !3, line: 375, type: !104, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!482 = !DILocalVariable(name: "de", arg: 1, scope: !481, file: !3, line: 375, type: !99)
!483 = !DILocation(line: 375, column: 52, scope: !481)
!484 = !DILocation(line: 377, column: 21, scope: !481)
!485 = !DILocation(line: 377, column: 2, scope: !481)
!486 = !DILocation(line: 378, column: 2, scope: !481)
!487 = !DILocation(line: 379, column: 8, scope: !481)
!488 = !DILocation(line: 379, column: 2, scope: !481)
!489 = !DILocation(line: 380, column: 1, scope: !481)
!490 = distinct !DISubprogram(name: "pri_detector_add_pulse", scope: !3, file: !3, line: 382, type: !108, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!491 = !DILocalVariable(name: "de", arg: 1, scope: !490, file: !3, line: 382, type: !99)
!492 = !DILocation(line: 382, column: 73, scope: !490)
!493 = !DILocalVariable(name: "event", arg: 2, scope: !490, file: !3, line: 383, type: !110)
!494 = !DILocation(line: 383, column: 30, scope: !490)
!495 = !DILocalVariable(name: "max_updated_seq", scope: !490, file: !3, line: 385, type: !43)
!496 = !DILocation(line: 385, column: 6, scope: !490)
!497 = !DILocalVariable(name: "ps", scope: !490, file: !3, line: 386, type: !37)
!498 = !DILocation(line: 386, column: 23, scope: !490)
!499 = !DILocalVariable(name: "ts", scope: !490, file: !3, line: 387, type: !32)
!500 = !DILocation(line: 387, column: 6, scope: !490)
!501 = !DILocation(line: 387, column: 11, scope: !490)
!502 = !DILocation(line: 387, column: 18, scope: !490)
!503 = !DILocalVariable(name: "rs", scope: !490, file: !3, line: 388, type: !131)
!504 = !DILocation(line: 388, column: 37, scope: !490)
!505 = !DILocation(line: 388, column: 42, scope: !490)
!506 = !DILocation(line: 388, column: 46, scope: !490)
!507 = !DILocation(line: 391, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !490, file: !3, line: 391, column: 6)
!509 = !DILocation(line: 391, column: 11, scope: !508)
!510 = !DILocation(line: 391, column: 23, scope: !508)
!511 = !DILocation(line: 391, column: 30, scope: !508)
!512 = !DILocation(line: 391, column: 21, scope: !508)
!513 = !DILocation(line: 391, column: 37, scope: !508)
!514 = !DILocation(line: 391, column: 41, scope: !508)
!515 = !DILocation(line: 391, column: 45, scope: !508)
!516 = !DILocation(line: 391, column: 57, scope: !508)
!517 = !DILocation(line: 391, column: 64, scope: !508)
!518 = !DILocation(line: 391, column: 55, scope: !508)
!519 = !DILocation(line: 391, column: 6, scope: !490)
!520 = !DILocation(line: 392, column: 3, scope: !508)
!521 = !DILocation(line: 394, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !490, file: !3, line: 394, column: 6)
!523 = !DILocation(line: 394, column: 12, scope: !522)
!524 = !DILocation(line: 394, column: 16, scope: !522)
!525 = !DILocation(line: 394, column: 10, scope: !522)
!526 = !DILocation(line: 394, column: 27, scope: !522)
!527 = !DILocation(line: 394, column: 31, scope: !522)
!528 = !DILocation(line: 394, column: 25, scope: !522)
!529 = !DILocation(line: 394, column: 6, scope: !490)
!530 = !DILocation(line: 396, column: 3, scope: !522)
!531 = !DILocation(line: 398, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !490, file: !3, line: 398, column: 6)
!533 = !DILocation(line: 398, column: 10, scope: !532)
!534 = !DILocation(line: 398, column: 16, scope: !532)
!535 = !DILocation(line: 398, column: 19, scope: !532)
!536 = !DILocation(line: 398, column: 23, scope: !532)
!537 = !DILocation(line: 398, column: 32, scope: !532)
!538 = !DILocation(line: 398, column: 39, scope: !532)
!539 = !DILocation(line: 398, column: 29, scope: !532)
!540 = !DILocation(line: 398, column: 6, scope: !490)
!541 = !DILocation(line: 399, column: 3, scope: !532)
!542 = !DILocation(line: 401, column: 16, scope: !490)
!543 = !DILocation(line: 401, column: 2, scope: !490)
!544 = !DILocation(line: 401, column: 6, scope: !490)
!545 = !DILocation(line: 401, column: 14, scope: !490)
!546 = !DILocation(line: 403, column: 54, scope: !490)
!547 = !DILocation(line: 403, column: 58, scope: !490)
!548 = !DILocation(line: 403, column: 20, scope: !490)
!549 = !DILocation(line: 403, column: 18, scope: !490)
!550 = !DILocation(line: 405, column: 37, scope: !551)
!551 = distinct !DILexicalBlock(scope: !490, file: !3, line: 405, column: 6)
!552 = !DILocation(line: 405, column: 41, scope: !551)
!553 = !DILocation(line: 405, column: 45, scope: !551)
!554 = !DILocation(line: 405, column: 7, scope: !551)
!555 = !DILocation(line: 405, column: 6, scope: !490)
!556 = !DILocation(line: 406, column: 22, scope: !557)
!557 = distinct !DILexicalBlock(scope: !551, file: !3, line: 405, column: 63)
!558 = !DILocation(line: 406, column: 26, scope: !557)
!559 = !DILocation(line: 406, column: 3, scope: !557)
!560 = !DILocation(line: 407, column: 3, scope: !557)
!561 = !DILocation(line: 410, column: 36, scope: !490)
!562 = !DILocation(line: 410, column: 7, scope: !490)
!563 = !DILocation(line: 410, column: 5, scope: !490)
!564 = !DILocation(line: 412, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !490, file: !3, line: 412, column: 6)
!566 = !DILocation(line: 412, column: 9, scope: !565)
!567 = !DILocation(line: 412, column: 6, scope: !490)
!568 = !DILocation(line: 413, column: 23, scope: !565)
!569 = !DILocation(line: 413, column: 27, scope: !565)
!570 = !DILocation(line: 413, column: 3, scope: !565)
!571 = !DILocation(line: 415, column: 9, scope: !490)
!572 = !DILocation(line: 415, column: 2, scope: !490)
!573 = !DILocation(line: 416, column: 1, scope: !490)
!574 = distinct !DISubprogram(name: "pri_detector_reset", scope: !3, file: !3, line: 359, type: !128, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!575 = !DILocalVariable(name: "pde", arg: 1, scope: !574, file: !3, line: 359, type: !99)
!576 = !DILocation(line: 359, column: 53, scope: !574)
!577 = !DILocalVariable(name: "ts", arg: 2, scope: !574, file: !3, line: 359, type: !32)
!578 = !DILocation(line: 359, column: 62, scope: !574)
!579 = !DILocalVariable(name: "ps", scope: !574, file: !3, line: 361, type: !37)
!580 = !DILocation(line: 361, column: 23, scope: !574)
!581 = !DILocalVariable(name: "ps0", scope: !574, file: !3, line: 361, type: !37)
!582 = !DILocation(line: 361, column: 28, scope: !574)
!583 = !DILocalVariable(name: "p", scope: !574, file: !3, line: 362, type: !22)
!584 = !DILocation(line: 362, column: 21, scope: !574)
!585 = !DILocalVariable(name: "p0", scope: !574, file: !3, line: 362, type: !22)
!586 = !DILocation(line: 362, column: 25, scope: !574)
!587 = !DILocalVariable(name: "__mptr", scope: !588, file: !3, line: 363, type: !21)
!588 = distinct !DILexicalBlock(scope: !589, file: !3, line: 363, column: 2)
!589 = distinct !DILexicalBlock(scope: !574, file: !3, line: 363, column: 2)
!590 = !DILocation(line: 363, column: 2, scope: !588)
!591 = !DILocation(line: 363, column: 2, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !3, line: 363, column: 2)
!593 = !DILocation(line: 363, column: 2, scope: !589)
!594 = !DILocalVariable(name: "__mptr", scope: !595, file: !3, line: 363, type: !21)
!595 = distinct !DILexicalBlock(scope: !589, file: !3, line: 363, column: 2)
!596 = !DILocation(line: 363, column: 2, scope: !595)
!597 = !DILocation(line: 363, column: 2, scope: !598)
!598 = distinct !DILexicalBlock(scope: !595, file: !3, line: 363, column: 2)
!599 = !DILocation(line: 363, column: 2, scope: !600)
!600 = distinct !DILexicalBlock(scope: !589, file: !3, line: 363, column: 2)
!601 = !DILocation(line: 364, column: 18, scope: !602)
!602 = distinct !DILexicalBlock(scope: !600, file: !3, line: 363, column: 59)
!603 = !DILocation(line: 364, column: 22, scope: !602)
!604 = !DILocation(line: 364, column: 3, scope: !602)
!605 = !DILocation(line: 365, column: 22, scope: !602)
!606 = !DILocation(line: 365, column: 3, scope: !602)
!607 = !DILocation(line: 366, column: 2, scope: !602)
!608 = !DILocalVariable(name: "__mptr", scope: !609, file: !3, line: 363, type: !21)
!609 = distinct !DILexicalBlock(scope: !600, file: !3, line: 363, column: 2)
!610 = !DILocation(line: 363, column: 2, scope: !609)
!611 = !DILocation(line: 363, column: 2, scope: !612)
!612 = distinct !DILexicalBlock(scope: !609, file: !3, line: 363, column: 2)
!613 = distinct !{!613, !593, !614}
!614 = !DILocation(line: 366, column: 2, scope: !589)
!615 = !DILocalVariable(name: "__mptr", scope: !616, file: !3, line: 367, type: !21)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 367, column: 2)
!617 = distinct !DILexicalBlock(scope: !574, file: !3, line: 367, column: 2)
!618 = !DILocation(line: 367, column: 2, scope: !616)
!619 = !DILocation(line: 367, column: 2, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !3, line: 367, column: 2)
!621 = !DILocation(line: 367, column: 2, scope: !617)
!622 = !DILocalVariable(name: "__mptr", scope: !623, file: !3, line: 367, type: !21)
!623 = distinct !DILexicalBlock(scope: !617, file: !3, line: 367, column: 2)
!624 = !DILocation(line: 367, column: 2, scope: !623)
!625 = !DILocation(line: 367, column: 2, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !3, line: 367, column: 2)
!627 = !DILocation(line: 367, column: 2, scope: !628)
!628 = distinct !DILexicalBlock(scope: !617, file: !3, line: 367, column: 2)
!629 = !DILocation(line: 368, column: 18, scope: !630)
!630 = distinct !DILexicalBlock(scope: !628, file: !3, line: 367, column: 54)
!631 = !DILocation(line: 368, column: 21, scope: !630)
!632 = !DILocation(line: 368, column: 3, scope: !630)
!633 = !DILocation(line: 369, column: 23, scope: !630)
!634 = !DILocation(line: 369, column: 3, scope: !630)
!635 = !DILocation(line: 370, column: 2, scope: !630)
!636 = !DILocalVariable(name: "__mptr", scope: !637, file: !3, line: 367, type: !21)
!637 = distinct !DILexicalBlock(scope: !628, file: !3, line: 367, column: 2)
!638 = !DILocation(line: 367, column: 2, scope: !637)
!639 = !DILocation(line: 367, column: 2, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !3, line: 367, column: 2)
!641 = distinct !{!641, !621, !642}
!642 = !DILocation(line: 370, column: 2, scope: !617)
!643 = !DILocation(line: 371, column: 2, scope: !574)
!644 = !DILocation(line: 371, column: 7, scope: !574)
!645 = !DILocation(line: 371, column: 13, scope: !574)
!646 = !DILocation(line: 372, column: 17, scope: !574)
!647 = !DILocation(line: 372, column: 2, scope: !574)
!648 = !DILocation(line: 372, column: 7, scope: !574)
!649 = !DILocation(line: 372, column: 15, scope: !574)
!650 = !DILocation(line: 373, column: 1, scope: !574)
!651 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !652, file: !652, line: 33, type: !653, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!652 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!653 = !DISubroutineType(types: !654)
!654 = !{null, !29}
!655 = !DILocalVariable(name: "list", arg: 1, scope: !651, file: !652, line: 33, type: !29)
!656 = !DILocation(line: 33, column: 53, scope: !651)
!657 = !DILocation(line: 35, column: 2, scope: !651)
!658 = !DILocation(line: 35, column: 2, scope: !659)
!659 = distinct !DILexicalBlock(scope: !651, file: !652, line: 35, column: 2)
!660 = !DILocation(line: 35, column: 2, scope: !661)
!661 = distinct !DILexicalBlock(scope: !659, file: !652, line: 35, column: 2)
!662 = !DILocation(line: 35, column: 2, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !652, line: 35, column: 2)
!664 = !DILocation(line: 36, column: 15, scope: !651)
!665 = !DILocation(line: 36, column: 2, scope: !651)
!666 = !DILocation(line: 36, column: 8, scope: !651)
!667 = !DILocation(line: 36, column: 13, scope: !651)
!668 = !DILocation(line: 37, column: 1, scope: !651)
!669 = distinct !DISubprogram(name: "pool_register_ref", scope: !3, file: !3, line: 87, type: !670, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!670 = !DISubroutineType(types: !671)
!671 = !{null}
!672 = !DILocation(line: 89, column: 2, scope: !669)
!673 = !DILocation(line: 90, column: 27, scope: !669)
!674 = !DILocation(line: 91, column: 2, scope: !669)
!675 = !DILocation(line: 92, column: 2, scope: !669)
!676 = !DILocation(line: 93, column: 1, scope: !669)
!677 = distinct !DISubprogram(name: "get_order", scope: !678, file: !678, line: 29, type: !679, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!678 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!679 = !DISubroutineType(types: !680)
!680 = !{!52, !51}
!681 = !DILocalVariable(name: "x", arg: 1, scope: !682, file: !683, line: 366, type: !34)
!682 = distinct !DISubprogram(name: "fls64", scope: !683, file: !683, line: 366, type: !684, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!683 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!684 = !DISubroutineType(types: !685)
!685 = !{!52, !34}
!686 = !DILocation(line: 366, column: 40, scope: !682, inlinedAt: !687)
!687 = distinct !DILocation(line: 46, column: 9, scope: !677)
!688 = !DILocalVariable(name: "bitpos", scope: !682, file: !683, line: 368, type: !52)
!689 = !DILocation(line: 368, column: 6, scope: !682, inlinedAt: !687)
!690 = !DILocalVariable(name: "size", arg: 1, scope: !677, file: !678, line: 29, type: !51)
!691 = !DILocation(line: 29, column: 63, scope: !677)
!692 = !DILocation(line: 31, column: 27, scope: !693)
!693 = distinct !DILexicalBlock(scope: !677, file: !678, line: 31, column: 6)
!694 = !DILocation(line: 31, column: 6, scope: !693)
!695 = !DILocation(line: 31, column: 6, scope: !677)
!696 = !DILocation(line: 32, column: 8, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !678, line: 32, column: 7)
!698 = distinct !DILexicalBlock(scope: !693, file: !678, line: 31, column: 34)
!699 = !DILocation(line: 32, column: 7, scope: !698)
!700 = !DILocation(line: 33, column: 4, scope: !697)
!701 = !DILocation(line: 35, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !698, file: !678, line: 35, column: 7)
!703 = !DILocation(line: 35, column: 12, scope: !702)
!704 = !DILocation(line: 35, column: 7, scope: !698)
!705 = !DILocation(line: 36, column: 4, scope: !702)
!706 = !DILocation(line: 38, column: 10, scope: !698)
!707 = !DILocation(line: 38, column: 28, scope: !698)
!708 = !DILocation(line: 38, column: 41, scope: !698)
!709 = !DILocation(line: 38, column: 3, scope: !698)
!710 = !DILocation(line: 41, column: 6, scope: !677)
!711 = !DILocation(line: 42, column: 7, scope: !677)
!712 = !DILocation(line: 46, column: 15, scope: !677)
!713 = !DILocation(line: 374, column: 2, scope: !682, inlinedAt: !687)
!714 = !DILocation(line: 376, column: 14, scope: !682, inlinedAt: !687)
!715 = !{i32 311081}
!716 = !DILocation(line: 377, column: 9, scope: !682, inlinedAt: !687)
!717 = !DILocation(line: 377, column: 16, scope: !682, inlinedAt: !687)
!718 = !DILocation(line: 46, column: 2, scope: !677)
!719 = !DILocation(line: 48, column: 1, scope: !677)
!720 = distinct !DISubprogram(name: "__ilog2_u64", scope: !721, file: !721, line: 30, type: !722, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!721 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!722 = !DISubroutineType(types: !723)
!723 = !{!52, !32}
!724 = !DILocation(line: 366, column: 40, scope: !682, inlinedAt: !725)
!725 = distinct !DILocation(line: 32, column: 9, scope: !720)
!726 = !DILocation(line: 368, column: 6, scope: !682, inlinedAt: !725)
!727 = !DILocalVariable(name: "n", arg: 1, scope: !720, file: !721, line: 30, type: !32)
!728 = !DILocation(line: 30, column: 21, scope: !720)
!729 = !DILocation(line: 32, column: 15, scope: !720)
!730 = !DILocation(line: 374, column: 2, scope: !682, inlinedAt: !725)
!731 = !DILocation(line: 376, column: 14, scope: !682, inlinedAt: !725)
!732 = !DILocation(line: 377, column: 9, scope: !682, inlinedAt: !725)
!733 = !DILocation(line: 377, column: 16, scope: !682, inlinedAt: !725)
!734 = !DILocation(line: 32, column: 18, scope: !720)
!735 = !DILocation(line: 32, column: 2, scope: !720)
!736 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !737, file: !737, line: 137, type: !738, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!737 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!738 = !DISubroutineType(types: !739)
!739 = !{!21, !213, !740, !205, !19}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!742 = !DILocalVariable(name: "s", arg: 1, scope: !736, file: !737, line: 137, type: !213)
!743 = !DILocation(line: 137, column: 54, scope: !736)
!744 = !DILocalVariable(name: "object", arg: 2, scope: !736, file: !737, line: 137, type: !740)
!745 = !DILocation(line: 137, column: 69, scope: !736)
!746 = !DILocalVariable(name: "size", arg: 3, scope: !736, file: !737, line: 138, type: !205)
!747 = !DILocation(line: 138, column: 12, scope: !736)
!748 = !DILocalVariable(name: "flags", arg: 4, scope: !736, file: !737, line: 138, type: !19)
!749 = !DILocation(line: 138, column: 24, scope: !736)
!750 = !DILocation(line: 140, column: 17, scope: !736)
!751 = !DILocation(line: 140, column: 2, scope: !736)
!752 = distinct !DISubprogram(name: "pool_deregister_ref", scope: !3, file: !3, line: 95, type: !670, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!753 = !DILocation(line: 97, column: 2, scope: !752)
!754 = !DILocation(line: 98, column: 27, scope: !752)
!755 = !DILocation(line: 99, column: 2, scope: !752)
!756 = !DILocation(line: 100, column: 6, scope: !757)
!757 = distinct !DILexicalBlock(scope: !752, file: !3, line: 100, column: 6)
!758 = !DILocation(line: 100, column: 32, scope: !757)
!759 = !DILocation(line: 100, column: 6, scope: !752)
!760 = !DILocalVariable(name: "ps", scope: !761, file: !3, line: 102, type: !37)
!761 = distinct !DILexicalBlock(scope: !757, file: !3, line: 100, column: 38)
!762 = !DILocation(line: 102, column: 24, scope: !761)
!763 = !DILocalVariable(name: "ps0", scope: !761, file: !3, line: 102, type: !37)
!764 = !DILocation(line: 102, column: 29, scope: !761)
!765 = !DILocalVariable(name: "p", scope: !761, file: !3, line: 103, type: !22)
!766 = !DILocation(line: 103, column: 22, scope: !761)
!767 = !DILocalVariable(name: "p0", scope: !761, file: !3, line: 103, type: !22)
!768 = !DILocation(line: 103, column: 26, scope: !761)
!769 = !DILocalVariable(name: "__mptr", scope: !770, file: !3, line: 105, type: !21)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 105, column: 3)
!771 = distinct !DILexicalBlock(scope: !761, file: !3, line: 105, column: 3)
!772 = !DILocation(line: 105, column: 3, scope: !770)
!773 = !DILocation(line: 105, column: 3, scope: !774)
!774 = distinct !DILexicalBlock(scope: !770, file: !3, line: 105, column: 3)
!775 = !DILocation(line: 105, column: 3, scope: !771)
!776 = !DILocalVariable(name: "__mptr", scope: !777, file: !3, line: 105, type: !21)
!777 = distinct !DILexicalBlock(scope: !771, file: !3, line: 105, column: 3)
!778 = !DILocation(line: 105, column: 3, scope: !777)
!779 = !DILocation(line: 105, column: 3, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !3, line: 105, column: 3)
!781 = !DILocation(line: 105, column: 3, scope: !782)
!782 = distinct !DILexicalBlock(scope: !771, file: !3, line: 105, column: 3)
!783 = !DILocation(line: 106, column: 14, scope: !784)
!784 = distinct !DILexicalBlock(scope: !782, file: !3, line: 105, column: 54)
!785 = !DILocation(line: 106, column: 17, scope: !784)
!786 = !DILocation(line: 106, column: 4, scope: !784)
!787 = !DILocation(line: 107, column: 4, scope: !784)
!788 = !DILocation(line: 108, column: 10, scope: !784)
!789 = !DILocation(line: 108, column: 4, scope: !784)
!790 = !DILocation(line: 109, column: 3, scope: !784)
!791 = !DILocalVariable(name: "__mptr", scope: !792, file: !3, line: 105, type: !21)
!792 = distinct !DILexicalBlock(scope: !782, file: !3, line: 105, column: 3)
!793 = !DILocation(line: 105, column: 3, scope: !792)
!794 = !DILocation(line: 105, column: 3, scope: !795)
!795 = distinct !DILexicalBlock(scope: !792, file: !3, line: 105, column: 3)
!796 = distinct !{!796, !775, !797}
!797 = !DILocation(line: 109, column: 3, scope: !771)
!798 = !DILocalVariable(name: "__mptr", scope: !799, file: !3, line: 110, type: !21)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 110, column: 3)
!800 = distinct !DILexicalBlock(scope: !761, file: !3, line: 110, column: 3)
!801 = !DILocation(line: 110, column: 3, scope: !799)
!802 = !DILocation(line: 110, column: 3, scope: !803)
!803 = distinct !DILexicalBlock(scope: !799, file: !3, line: 110, column: 3)
!804 = !DILocation(line: 110, column: 3, scope: !800)
!805 = !DILocalVariable(name: "__mptr", scope: !806, file: !3, line: 110, type: !21)
!806 = distinct !DILexicalBlock(scope: !800, file: !3, line: 110, column: 3)
!807 = !DILocation(line: 110, column: 3, scope: !806)
!808 = !DILocation(line: 110, column: 3, scope: !809)
!809 = distinct !DILexicalBlock(scope: !806, file: !3, line: 110, column: 3)
!810 = !DILocation(line: 110, column: 3, scope: !811)
!811 = distinct !DILexicalBlock(scope: !800, file: !3, line: 110, column: 3)
!812 = !DILocation(line: 111, column: 14, scope: !813)
!813 = distinct !DILexicalBlock(scope: !811, file: !3, line: 110, column: 55)
!814 = !DILocation(line: 111, column: 18, scope: !813)
!815 = !DILocation(line: 111, column: 4, scope: !813)
!816 = !DILocation(line: 112, column: 4, scope: !813)
!817 = !DILocation(line: 113, column: 10, scope: !813)
!818 = !DILocation(line: 113, column: 4, scope: !813)
!819 = !DILocation(line: 114, column: 3, scope: !813)
!820 = !DILocalVariable(name: "__mptr", scope: !821, file: !3, line: 110, type: !21)
!821 = distinct !DILexicalBlock(scope: !811, file: !3, line: 110, column: 3)
!822 = !DILocation(line: 110, column: 3, scope: !821)
!823 = !DILocation(line: 110, column: 3, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !3, line: 110, column: 3)
!825 = distinct !{!825, !804, !826}
!826 = !DILocation(line: 114, column: 3, scope: !800)
!827 = !DILocation(line: 115, column: 2, scope: !761)
!828 = !DILocation(line: 116, column: 2, scope: !752)
!829 = !DILocation(line: 117, column: 1, scope: !752)
!830 = distinct !DISubprogram(name: "spin_lock_bh", scope: !831, file: !831, line: 357, type: !832, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!831 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!832 = !DISubroutineType(types: !833)
!833 = !{null, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!835 = !DILocalVariable(name: "val", arg: 1, scope: !836, file: !837, line: 77, type: !52)
!836 = distinct !DISubprogram(name: "__preempt_count_add", scope: !837, file: !837, line: 77, type: !838, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!837 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/lizy2001/genbc/linux")
!838 = !DISubroutineType(types: !839)
!839 = !{null, !52}
!840 = !DILocation(line: 77, column: 53, scope: !836, inlinedAt: !841)
!841 = distinct !DILocation(line: 12, column: 2, scope: !842, inlinedAt: !846)
!842 = distinct !DISubprogram(name: "__local_bh_disable_ip", scope: !843, file: !843, line: 10, type: !844, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!843 = !DIFile(filename: "./include/linux/bottom_half.h", directory: "/home/lizy2001/genbc/linux")
!844 = !DISubroutineType(types: !845)
!845 = !{null, !51, !7}
!846 = distinct !DILocation(line: 359, column: 2, scope: !847)
!847 = distinct !DILexicalBlock(scope: !830, file: !831, line: 359, column: 2)
!848 = !DILocalVariable(name: "pao_ID__", scope: !849, file: !837, line: 79, type: !850)
!849 = distinct !DILexicalBlock(scope: !836, file: !837, line: 79, column: 2)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!851 = !DILocation(line: 79, column: 2, scope: !849, inlinedAt: !841)
!852 = !DILocalVariable(name: "pto_val__", scope: !853, file: !837, line: 79, type: !43)
!853 = distinct !DILexicalBlock(scope: !854, file: !837, line: 79, column: 2)
!854 = distinct !DILexicalBlock(scope: !855, file: !837, line: 79, column: 2)
!855 = distinct !DILexicalBlock(scope: !849, file: !837, line: 79, column: 2)
!856 = !DILocation(line: 79, column: 2, scope: !853, inlinedAt: !841)
!857 = !DILocalVariable(name: "ip", arg: 1, scope: !842, file: !843, line: 10, type: !51)
!858 = !DILocation(line: 10, column: 65, scope: !842, inlinedAt: !846)
!859 = !DILocalVariable(name: "cnt", arg: 2, scope: !842, file: !843, line: 10, type: !7)
!860 = !DILocation(line: 10, column: 82, scope: !842, inlinedAt: !846)
!861 = !DILocalVariable(name: "lock", arg: 1, scope: !830, file: !831, line: 357, type: !834)
!862 = !DILocation(line: 357, column: 54, scope: !830)
!863 = !DILocation(line: 359, column: 2, scope: !830)
!864 = !DILocation(line: 359, column: 2, scope: !865)
!865 = distinct !DILexicalBlock(scope: !847, file: !831, line: 359, column: 2)
!866 = !DILabel(scope: !865, name: "__here", file: !831, line: 359)
!867 = !DILocation(line: 12, column: 2, scope: !842, inlinedAt: !846)
!868 = !{i32 -2145596975}
!869 = !DILocation(line: 13, column: 2, scope: !842, inlinedAt: !846)
!870 = !{i32 -2145587373}
!871 = !DILocation(line: 359, column: 2, scope: !847)
!872 = !DILocation(line: 359, column: 2, scope: !873)
!873 = distinct !DILexicalBlock(scope: !847, file: !831, line: 359, column: 2)
!874 = !DILocation(line: 360, column: 1, scope: !830)
!875 = distinct !DISubprogram(name: "list_del", scope: !652, file: !652, line: 144, type: !653, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!876 = !DILocalVariable(name: "entry", arg: 1, scope: !875, file: !652, line: 144, type: !29)
!877 = !DILocation(line: 144, column: 47, scope: !875)
!878 = !DILocation(line: 146, column: 19, scope: !875)
!879 = !DILocation(line: 146, column: 2, scope: !875)
!880 = !DILocation(line: 147, column: 2, scope: !875)
!881 = !DILocation(line: 147, column: 9, scope: !875)
!882 = !DILocation(line: 147, column: 14, scope: !875)
!883 = !DILocation(line: 148, column: 2, scope: !875)
!884 = !DILocation(line: 148, column: 9, scope: !875)
!885 = !DILocation(line: 148, column: 14, scope: !875)
!886 = !DILocation(line: 149, column: 1, scope: !875)
!887 = distinct !DISubprogram(name: "spin_unlock_bh", scope: !831, file: !831, line: 397, type: !832, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!888 = !DILocalVariable(name: "lock", arg: 1, scope: !887, file: !831, line: 397, type: !834)
!889 = !DILocation(line: 397, column: 56, scope: !887)
!890 = !DILocation(line: 399, column: 2, scope: !887)
!891 = !DILocation(line: 399, column: 2, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !831, line: 399, column: 2)
!893 = distinct !DILexicalBlock(scope: !887, file: !831, line: 399, column: 2)
!894 = !DILabel(scope: !892, name: "__here", file: !831, line: 399)
!895 = !DILocation(line: 399, column: 2, scope: !893)
!896 = !DILocation(line: 399, column: 2, scope: !897)
!897 = distinct !DILexicalBlock(scope: !893, file: !831, line: 399, column: 2)
!898 = !DILocation(line: 400, column: 1, scope: !887)
!899 = distinct !DISubprogram(name: "__list_del_entry", scope: !652, file: !652, line: 130, type: !653, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!900 = !DILocalVariable(name: "entry", arg: 1, scope: !899, file: !652, line: 130, type: !29)
!901 = !DILocation(line: 130, column: 55, scope: !899)
!902 = !DILocation(line: 132, column: 30, scope: !903)
!903 = distinct !DILexicalBlock(scope: !899, file: !652, line: 132, column: 6)
!904 = !DILocation(line: 132, column: 7, scope: !903)
!905 = !DILocation(line: 132, column: 6, scope: !899)
!906 = !DILocation(line: 133, column: 3, scope: !903)
!907 = !DILocation(line: 135, column: 13, scope: !899)
!908 = !DILocation(line: 135, column: 20, scope: !899)
!909 = !DILocation(line: 135, column: 26, scope: !899)
!910 = !DILocation(line: 135, column: 33, scope: !899)
!911 = !DILocation(line: 135, column: 2, scope: !899)
!912 = !DILocation(line: 136, column: 1, scope: !899)
!913 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !652, file: !652, line: 51, type: !914, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!914 = !DISubroutineType(types: !915)
!915 = !{!124, !29}
!916 = !DILocalVariable(name: "entry", arg: 1, scope: !913, file: !652, line: 51, type: !29)
!917 = !DILocation(line: 51, column: 61, scope: !913)
!918 = !DILocation(line: 53, column: 2, scope: !913)
!919 = distinct !DISubprogram(name: "__list_del", scope: !652, file: !652, line: 110, type: !920, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !29, !29}
!922 = !DILocalVariable(name: "prev", arg: 1, scope: !919, file: !652, line: 110, type: !29)
!923 = !DILocation(line: 110, column: 50, scope: !919)
!924 = !DILocalVariable(name: "next", arg: 2, scope: !919, file: !652, line: 110, type: !29)
!925 = !DILocation(line: 110, column: 75, scope: !919)
!926 = !DILocation(line: 112, column: 15, scope: !919)
!927 = !DILocation(line: 112, column: 2, scope: !919)
!928 = !DILocation(line: 112, column: 8, scope: !919)
!929 = !DILocation(line: 112, column: 13, scope: !919)
!930 = !DILocation(line: 113, column: 2, scope: !919)
!931 = !DILocation(line: 113, column: 2, scope: !932)
!932 = distinct !DILexicalBlock(scope: !919, file: !652, line: 113, column: 2)
!933 = !DILocation(line: 113, column: 2, scope: !934)
!934 = distinct !DILexicalBlock(scope: !932, file: !652, line: 113, column: 2)
!935 = !DILocation(line: 113, column: 2, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !652, line: 113, column: 2)
!937 = !DILocation(line: 114, column: 1, scope: !919)
!938 = distinct !DISubprogram(name: "pseq_handler_add_to_existing_seqs", scope: !3, file: !3, line: 305, type: !939, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!939 = !DISubroutineType(types: !940)
!940 = !{!43, !99, !32}
!941 = !DILocalVariable(name: "pde", arg: 1, scope: !938, file: !3, line: 305, type: !99)
!942 = !DILocation(line: 305, column: 56, scope: !938)
!943 = !DILocalVariable(name: "ts", arg: 2, scope: !938, file: !3, line: 305, type: !32)
!944 = !DILocation(line: 305, column: 65, scope: !938)
!945 = !DILocalVariable(name: "max_count", scope: !938, file: !3, line: 307, type: !43)
!946 = !DILocation(line: 307, column: 6, scope: !938)
!947 = !DILocalVariable(name: "ps", scope: !938, file: !3, line: 308, type: !37)
!948 = !DILocation(line: 308, column: 23, scope: !938)
!949 = !DILocalVariable(name: "ps2", scope: !938, file: !3, line: 308, type: !37)
!950 = !DILocation(line: 308, column: 28, scope: !938)
!951 = !DILocalVariable(name: "__mptr", scope: !952, file: !3, line: 309, type: !21)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 309, column: 2)
!953 = distinct !DILexicalBlock(scope: !938, file: !3, line: 309, column: 2)
!954 = !DILocation(line: 309, column: 2, scope: !952)
!955 = !DILocation(line: 309, column: 2, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !3, line: 309, column: 2)
!957 = !DILocation(line: 309, column: 2, scope: !953)
!958 = !DILocalVariable(name: "__mptr", scope: !959, file: !3, line: 309, type: !21)
!959 = distinct !DILexicalBlock(scope: !953, file: !3, line: 309, column: 2)
!960 = !DILocation(line: 309, column: 2, scope: !959)
!961 = !DILocation(line: 309, column: 2, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !3, line: 309, column: 2)
!963 = !DILocation(line: 309, column: 2, scope: !964)
!964 = distinct !DILexicalBlock(scope: !953, file: !3, line: 309, column: 2)
!965 = !DILocalVariable(name: "delta_ts", scope: !966, file: !3, line: 310, type: !43)
!966 = distinct !DILexicalBlock(scope: !964, file: !3, line: 309, column: 59)
!967 = !DILocation(line: 310, column: 7, scope: !966)
!968 = !DILocalVariable(name: "factor", scope: !966, file: !3, line: 311, type: !43)
!969 = !DILocation(line: 311, column: 7, scope: !966)
!970 = !DILocation(line: 314, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !966, file: !3, line: 314, column: 7)
!972 = !DILocation(line: 314, column: 12, scope: !971)
!973 = !DILocation(line: 314, column: 16, scope: !971)
!974 = !DILocation(line: 314, column: 10, scope: !971)
!975 = !DILocation(line: 314, column: 7, scope: !966)
!976 = !DILocation(line: 315, column: 19, scope: !977)
!977 = distinct !DILexicalBlock(scope: !971, file: !3, line: 314, column: 29)
!978 = !DILocation(line: 315, column: 23, scope: !977)
!979 = !DILocation(line: 315, column: 4, scope: !977)
!980 = !DILocation(line: 316, column: 23, scope: !977)
!981 = !DILocation(line: 316, column: 4, scope: !977)
!982 = !DILocation(line: 317, column: 4, scope: !977)
!983 = !DILocation(line: 320, column: 14, scope: !966)
!984 = !DILocation(line: 320, column: 19, scope: !966)
!985 = !DILocation(line: 320, column: 23, scope: !966)
!986 = !DILocation(line: 320, column: 17, scope: !966)
!987 = !DILocation(line: 320, column: 12, scope: !966)
!988 = !DILocation(line: 321, column: 29, scope: !966)
!989 = !DILocation(line: 321, column: 39, scope: !966)
!990 = !DILocation(line: 321, column: 43, scope: !966)
!991 = !DILocation(line: 322, column: 8, scope: !966)
!992 = !DILocation(line: 322, column: 13, scope: !966)
!993 = !DILocation(line: 322, column: 17, scope: !966)
!994 = !DILocation(line: 321, column: 12, scope: !966)
!995 = !DILocation(line: 321, column: 10, scope: !966)
!996 = !DILocation(line: 323, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !966, file: !3, line: 323, column: 7)
!998 = !DILocation(line: 323, column: 14, scope: !997)
!999 = !DILocation(line: 323, column: 7, scope: !966)
!1000 = !DILocation(line: 324, column: 18, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !3, line: 323, column: 19)
!1002 = !DILocation(line: 324, column: 4, scope: !1001)
!1003 = !DILocation(line: 324, column: 8, scope: !1001)
!1004 = !DILocation(line: 324, column: 16, scope: !1001)
!1005 = !DILocation(line: 325, column: 4, scope: !1001)
!1006 = !DILocation(line: 325, column: 8, scope: !1001)
!1007 = !DILocation(line: 325, column: 13, scope: !1001)
!1008 = !DILocation(line: 327, column: 8, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 327, column: 8)
!1010 = !DILocation(line: 327, column: 20, scope: !1009)
!1011 = !DILocation(line: 327, column: 24, scope: !1009)
!1012 = !DILocation(line: 327, column: 18, scope: !1009)
!1013 = !DILocation(line: 327, column: 8, scope: !1001)
!1014 = !DILocation(line: 328, column: 17, scope: !1009)
!1015 = !DILocation(line: 328, column: 21, scope: !1009)
!1016 = !DILocation(line: 328, column: 15, scope: !1009)
!1017 = !DILocation(line: 328, column: 5, scope: !1009)
!1018 = !DILocation(line: 329, column: 3, scope: !1001)
!1019 = !DILocation(line: 330, column: 4, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !997, file: !3, line: 329, column: 10)
!1021 = !DILocation(line: 330, column: 8, scope: !1020)
!1022 = !DILocation(line: 330, column: 20, scope: !1020)
!1023 = !DILocation(line: 332, column: 2, scope: !966)
!1024 = !DILocalVariable(name: "__mptr", scope: !1025, file: !3, line: 309, type: !21)
!1025 = distinct !DILexicalBlock(scope: !964, file: !3, line: 309, column: 2)
!1026 = !DILocation(line: 309, column: 2, scope: !1025)
!1027 = !DILocation(line: 309, column: 2, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 309, column: 2)
!1029 = distinct !{!1029, !957, !1030}
!1030 = !DILocation(line: 332, column: 2, scope: !953)
!1031 = !DILocation(line: 333, column: 9, scope: !938)
!1032 = !DILocation(line: 333, column: 2, scope: !938)
!1033 = distinct !DISubprogram(name: "pseq_handler_create_sequences", scope: !3, file: !3, line: 225, type: !1034, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!124, !99, !32, !43}
!1036 = !DILocation(line: 445, column: 72, scope: !210, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 552, column: 10, scope: !218, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 288, column: 13, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 287, column: 23)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 287, column: 7)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 229, column: 45)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 229, column: 2)
!1043 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 229, column: 2)
!1044 = !DILocation(line: 446, column: 9, scope: !210, inlinedAt: !1037)
!1045 = !DILocation(line: 446, column: 23, scope: !210, inlinedAt: !1037)
!1046 = !DILocation(line: 448, column: 8, scope: !210, inlinedAt: !1037)
!1047 = !DILocation(line: 318, column: 67, scope: !229, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 553, column: 20, scope: !218, inlinedAt: !1038)
!1049 = !DILocation(line: 346, column: 58, scope: !235, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 547, column: 11, scope: !218, inlinedAt: !1038)
!1051 = !DILocation(line: 472, column: 28, scope: !241, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 481, column: 9, scope: !246, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 545, column: 11, scope: !248, inlinedAt: !1038)
!1054 = !DILocation(line: 472, column: 40, scope: !241, inlinedAt: !1052)
!1055 = !DILocation(line: 472, column: 60, scope: !241, inlinedAt: !1052)
!1056 = !DILocation(line: 478, column: 51, scope: !246, inlinedAt: !1053)
!1057 = !DILocation(line: 478, column: 63, scope: !246, inlinedAt: !1053)
!1058 = !DILocation(line: 480, column: 15, scope: !246, inlinedAt: !1053)
!1059 = !DILocation(line: 538, column: 45, scope: !220, inlinedAt: !1038)
!1060 = !DILocation(line: 538, column: 57, scope: !220, inlinedAt: !1038)
!1061 = !DILocation(line: 542, column: 16, scope: !218, inlinedAt: !1038)
!1062 = !DILocalVariable(name: "pde", arg: 1, scope: !1033, file: !3, line: 225, type: !99)
!1063 = !DILocation(line: 225, column: 64, scope: !1033)
!1064 = !DILocalVariable(name: "ts", arg: 2, scope: !1033, file: !3, line: 226, type: !32)
!1065 = !DILocation(line: 226, column: 12, scope: !1033)
!1066 = !DILocalVariable(name: "min_count", arg: 3, scope: !1033, file: !3, line: 226, type: !43)
!1067 = !DILocation(line: 226, column: 20, scope: !1033)
!1068 = !DILocalVariable(name: "p", scope: !1033, file: !3, line: 228, type: !22)
!1069 = !DILocation(line: 228, column: 21, scope: !1033)
!1070 = !DILocalVariable(name: "__mptr", scope: !1071, file: !3, line: 229, type: !21)
!1071 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 229, column: 2)
!1072 = !DILocation(line: 229, column: 2, scope: !1071)
!1073 = !DILocation(line: 229, column: 2, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 229, column: 2)
!1075 = !DILocation(line: 229, column: 2, scope: !1043)
!1076 = !DILocation(line: 229, column: 2, scope: !1042)
!1077 = !DILocalVariable(name: "ps", scope: !1041, file: !3, line: 230, type: !38)
!1078 = !DILocation(line: 230, column: 23, scope: !1041)
!1079 = !DILocalVariable(name: "new_ps", scope: !1041, file: !3, line: 230, type: !37)
!1080 = !DILocation(line: 230, column: 28, scope: !1041)
!1081 = !DILocalVariable(name: "p2", scope: !1041, file: !3, line: 231, type: !22)
!1082 = !DILocation(line: 231, column: 22, scope: !1041)
!1083 = !DILocalVariable(name: "tmp_false_count", scope: !1041, file: !3, line: 232, type: !43)
!1084 = !DILocation(line: 232, column: 7, scope: !1041)
!1085 = !DILocalVariable(name: "min_valid_ts", scope: !1041, file: !3, line: 233, type: !32)
!1086 = !DILocation(line: 233, column: 7, scope: !1041)
!1087 = !DILocalVariable(name: "delta_ts", scope: !1041, file: !3, line: 234, type: !43)
!1088 = !DILocation(line: 234, column: 7, scope: !1041)
!1089 = !DILocation(line: 234, column: 18, scope: !1041)
!1090 = !DILocation(line: 234, column: 23, scope: !1041)
!1091 = !DILocation(line: 234, column: 26, scope: !1041)
!1092 = !DILocation(line: 234, column: 21, scope: !1041)
!1093 = !DILocation(line: 236, column: 7, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 236, column: 7)
!1095 = !DILocation(line: 236, column: 18, scope: !1094)
!1096 = !DILocation(line: 236, column: 23, scope: !1094)
!1097 = !DILocation(line: 236, column: 27, scope: !1094)
!1098 = !DILocation(line: 236, column: 16, scope: !1094)
!1099 = !DILocation(line: 236, column: 7, scope: !1041)
!1100 = !DILocation(line: 238, column: 4, scope: !1094)
!1101 = !DILocation(line: 240, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 240, column: 7)
!1103 = !DILocation(line: 240, column: 18, scope: !1102)
!1104 = !DILocation(line: 240, column: 23, scope: !1102)
!1105 = !DILocation(line: 240, column: 27, scope: !1102)
!1106 = !DILocation(line: 240, column: 16, scope: !1102)
!1107 = !DILocation(line: 240, column: 7, scope: !1041)
!1108 = !DILocation(line: 242, column: 4, scope: !1102)
!1109 = !DILocation(line: 245, column: 6, scope: !1041)
!1110 = !DILocation(line: 245, column: 12, scope: !1041)
!1111 = !DILocation(line: 246, column: 6, scope: !1041)
!1112 = !DILocation(line: 246, column: 19, scope: !1041)
!1113 = !DILocation(line: 247, column: 17, scope: !1041)
!1114 = !DILocation(line: 247, column: 20, scope: !1041)
!1115 = !DILocation(line: 247, column: 6, scope: !1041)
!1116 = !DILocation(line: 247, column: 15, scope: !1041)
!1117 = !DILocation(line: 248, column: 16, scope: !1041)
!1118 = !DILocation(line: 248, column: 6, scope: !1041)
!1119 = !DILocation(line: 248, column: 14, scope: !1041)
!1120 = !DILocation(line: 249, column: 12, scope: !1041)
!1121 = !DILocation(line: 249, column: 6, scope: !1041)
!1122 = !DILocation(line: 249, column: 10, scope: !1041)
!1123 = !DILocation(line: 251, column: 15, scope: !1041)
!1124 = !DILocation(line: 251, column: 22, scope: !1041)
!1125 = !DILocation(line: 251, column: 27, scope: !1041)
!1126 = !DILocation(line: 251, column: 31, scope: !1041)
!1127 = !DILocation(line: 251, column: 35, scope: !1041)
!1128 = !DILocation(line: 251, column: 19, scope: !1041)
!1129 = !DILocation(line: 252, column: 11, scope: !1041)
!1130 = !DILocation(line: 252, column: 16, scope: !1041)
!1131 = !DILocation(line: 252, column: 20, scope: !1041)
!1132 = !DILocation(line: 252, column: 9, scope: !1041)
!1133 = !DILocation(line: 252, column: 5, scope: !1041)
!1134 = !DILocation(line: 251, column: 6, scope: !1041)
!1135 = !DILocation(line: 251, column: 10, scope: !1041)
!1136 = !DILocation(line: 254, column: 8, scope: !1041)
!1137 = !DILocation(line: 254, column: 6, scope: !1041)
!1138 = !DILocation(line: 255, column: 19, scope: !1041)
!1139 = !DILocation(line: 256, column: 18, scope: !1041)
!1140 = !DILocation(line: 256, column: 26, scope: !1041)
!1141 = !DILocation(line: 256, column: 23, scope: !1041)
!1142 = !DILocation(line: 256, column: 21, scope: !1041)
!1143 = !DILocation(line: 256, column: 16, scope: !1041)
!1144 = !DILocalVariable(name: "__mptr", scope: !1145, file: !3, line: 258, type: !21)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 258, column: 3)
!1146 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 258, column: 3)
!1147 = !DILocation(line: 258, column: 3, scope: !1145)
!1148 = !DILocation(line: 258, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 258, column: 3)
!1150 = !DILocation(line: 258, column: 3, scope: !1146)
!1151 = !DILocation(line: 258, column: 3, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 258, column: 3)
!1153 = !DILocalVariable(name: "factor", scope: !1154, file: !3, line: 259, type: !43)
!1154 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 258, column: 56)
!1155 = !DILocation(line: 259, column: 8, scope: !1154)
!1156 = !DILocation(line: 260, column: 8, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 260, column: 8)
!1158 = !DILocation(line: 260, column: 12, scope: !1157)
!1159 = !DILocation(line: 260, column: 17, scope: !1157)
!1160 = !DILocation(line: 260, column: 15, scope: !1157)
!1161 = !DILocation(line: 260, column: 8, scope: !1154)
!1162 = !DILocation(line: 262, column: 5, scope: !1157)
!1163 = !DILocation(line: 264, column: 33, scope: !1154)
!1164 = !DILocation(line: 264, column: 43, scope: !1154)
!1165 = !DILocation(line: 264, column: 47, scope: !1154)
!1166 = !DILocation(line: 264, column: 41, scope: !1154)
!1167 = !DILocation(line: 264, column: 30, scope: !1154)
!1168 = !DILocation(line: 264, column: 54, scope: !1154)
!1169 = !DILocation(line: 265, column: 9, scope: !1154)
!1170 = !DILocation(line: 265, column: 14, scope: !1154)
!1171 = !DILocation(line: 265, column: 18, scope: !1154)
!1172 = !DILocation(line: 264, column: 13, scope: !1154)
!1173 = !DILocation(line: 264, column: 11, scope: !1154)
!1174 = !DILocation(line: 266, column: 8, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 266, column: 8)
!1176 = !DILocation(line: 266, column: 15, scope: !1175)
!1177 = !DILocation(line: 266, column: 8, scope: !1154)
!1178 = !DILocation(line: 267, column: 8, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 266, column: 20)
!1180 = !DILocation(line: 267, column: 13, scope: !1179)
!1181 = !DILocation(line: 268, column: 19, scope: !1179)
!1182 = !DILocation(line: 268, column: 23, scope: !1179)
!1183 = !DILocation(line: 268, column: 8, scope: !1179)
!1184 = !DILocation(line: 268, column: 17, scope: !1179)
!1185 = !DILocation(line: 273, column: 24, scope: !1179)
!1186 = !DILocation(line: 273, column: 8, scope: !1179)
!1187 = !DILocation(line: 273, column: 21, scope: !1179)
!1188 = !DILocation(line: 274, column: 21, scope: !1179)
!1189 = !DILocation(line: 275, column: 4, scope: !1179)
!1190 = !DILocation(line: 277, column: 20, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 275, column: 11)
!1192 = !DILocation(line: 279, column: 3, scope: !1154)
!1193 = !DILocalVariable(name: "__mptr", scope: !1194, file: !3, line: 258, type: !21)
!1194 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 258, column: 3)
!1195 = !DILocation(line: 258, column: 3, scope: !1194)
!1196 = !DILocation(line: 258, column: 3, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 258, column: 3)
!1198 = distinct !{!1198, !1150, !1199}
!1199 = !DILocation(line: 279, column: 3, scope: !1146)
!1200 = !DILocation(line: 280, column: 10, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 280, column: 7)
!1202 = !DILocation(line: 280, column: 19, scope: !1201)
!1203 = !DILocation(line: 280, column: 16, scope: !1201)
!1204 = !DILocation(line: 280, column: 7, scope: !1041)
!1205 = !DILocation(line: 282, column: 4, scope: !1201)
!1206 = !DILocation(line: 285, column: 23, scope: !1041)
!1207 = !DILocation(line: 285, column: 37, scope: !1041)
!1208 = !DILocation(line: 285, column: 34, scope: !1041)
!1209 = !DILocation(line: 285, column: 32, scope: !1041)
!1210 = !DILocation(line: 285, column: 6, scope: !1041)
!1211 = !DILocation(line: 285, column: 18, scope: !1041)
!1212 = !DILocation(line: 286, column: 12, scope: !1041)
!1213 = !DILocation(line: 286, column: 10, scope: !1041)
!1214 = !DILocation(line: 287, column: 7, scope: !1040)
!1215 = !DILocation(line: 287, column: 14, scope: !1040)
!1216 = !DILocation(line: 287, column: 7, scope: !1041)
!1217 = !DILocation(line: 540, column: 27, scope: !219, inlinedAt: !1038)
!1218 = !DILocation(line: 540, column: 6, scope: !219, inlinedAt: !1038)
!1219 = !DILocation(line: 540, column: 6, scope: !220, inlinedAt: !1038)
!1220 = !DILocation(line: 544, column: 7, scope: !248, inlinedAt: !1038)
!1221 = !DILocation(line: 544, column: 12, scope: !248, inlinedAt: !1038)
!1222 = !DILocation(line: 544, column: 7, scope: !218, inlinedAt: !1038)
!1223 = !DILocation(line: 545, column: 25, scope: !248, inlinedAt: !1038)
!1224 = !DILocation(line: 545, column: 31, scope: !248, inlinedAt: !1038)
!1225 = !DILocation(line: 480, column: 33, scope: !246, inlinedAt: !1053)
!1226 = !DILocation(line: 480, column: 23, scope: !246, inlinedAt: !1053)
!1227 = !DILocation(line: 481, column: 29, scope: !246, inlinedAt: !1053)
!1228 = !DILocation(line: 481, column: 35, scope: !246, inlinedAt: !1053)
!1229 = !DILocation(line: 481, column: 42, scope: !246, inlinedAt: !1053)
!1230 = !DILocation(line: 474, column: 23, scope: !241, inlinedAt: !1052)
!1231 = !DILocation(line: 474, column: 29, scope: !241, inlinedAt: !1052)
!1232 = !DILocation(line: 474, column: 36, scope: !241, inlinedAt: !1052)
!1233 = !DILocation(line: 474, column: 9, scope: !241, inlinedAt: !1052)
!1234 = !DILocation(line: 545, column: 4, scope: !248, inlinedAt: !1038)
!1235 = !DILocation(line: 547, column: 25, scope: !218, inlinedAt: !1038)
!1236 = !DILocation(line: 348, column: 7, scope: !292, inlinedAt: !1050)
!1237 = !DILocation(line: 348, column: 6, scope: !235, inlinedAt: !1050)
!1238 = !DILocation(line: 349, column: 3, scope: !292, inlinedAt: !1050)
!1239 = !DILocation(line: 351, column: 6, scope: !296, inlinedAt: !1050)
!1240 = !DILocation(line: 351, column: 11, scope: !296, inlinedAt: !1050)
!1241 = !DILocation(line: 351, column: 6, scope: !235, inlinedAt: !1050)
!1242 = !DILocation(line: 352, column: 3, scope: !296, inlinedAt: !1050)
!1243 = !DILocation(line: 354, column: 32, scope: !301, inlinedAt: !1050)
!1244 = !DILocation(line: 354, column: 37, scope: !301, inlinedAt: !1050)
!1245 = !DILocation(line: 354, column: 42, scope: !301, inlinedAt: !1050)
!1246 = !DILocation(line: 354, column: 45, scope: !301, inlinedAt: !1050)
!1247 = !DILocation(line: 354, column: 50, scope: !301, inlinedAt: !1050)
!1248 = !DILocation(line: 354, column: 6, scope: !235, inlinedAt: !1050)
!1249 = !DILocation(line: 355, column: 3, scope: !301, inlinedAt: !1050)
!1250 = !DILocation(line: 356, column: 32, scope: !309, inlinedAt: !1050)
!1251 = !DILocation(line: 356, column: 37, scope: !309, inlinedAt: !1050)
!1252 = !DILocation(line: 356, column: 43, scope: !309, inlinedAt: !1050)
!1253 = !DILocation(line: 356, column: 46, scope: !309, inlinedAt: !1050)
!1254 = !DILocation(line: 356, column: 51, scope: !309, inlinedAt: !1050)
!1255 = !DILocation(line: 356, column: 6, scope: !235, inlinedAt: !1050)
!1256 = !DILocation(line: 357, column: 3, scope: !309, inlinedAt: !1050)
!1257 = !DILocation(line: 358, column: 6, scope: !317, inlinedAt: !1050)
!1258 = !DILocation(line: 358, column: 11, scope: !317, inlinedAt: !1050)
!1259 = !DILocation(line: 358, column: 6, scope: !235, inlinedAt: !1050)
!1260 = !DILocation(line: 358, column: 26, scope: !317, inlinedAt: !1050)
!1261 = !DILocation(line: 359, column: 6, scope: !322, inlinedAt: !1050)
!1262 = !DILocation(line: 359, column: 11, scope: !322, inlinedAt: !1050)
!1263 = !DILocation(line: 359, column: 6, scope: !235, inlinedAt: !1050)
!1264 = !DILocation(line: 359, column: 26, scope: !322, inlinedAt: !1050)
!1265 = !DILocation(line: 360, column: 6, scope: !327, inlinedAt: !1050)
!1266 = !DILocation(line: 360, column: 11, scope: !327, inlinedAt: !1050)
!1267 = !DILocation(line: 360, column: 6, scope: !235, inlinedAt: !1050)
!1268 = !DILocation(line: 360, column: 26, scope: !327, inlinedAt: !1050)
!1269 = !DILocation(line: 361, column: 6, scope: !332, inlinedAt: !1050)
!1270 = !DILocation(line: 361, column: 11, scope: !332, inlinedAt: !1050)
!1271 = !DILocation(line: 361, column: 6, scope: !235, inlinedAt: !1050)
!1272 = !DILocation(line: 361, column: 26, scope: !332, inlinedAt: !1050)
!1273 = !DILocation(line: 362, column: 6, scope: !337, inlinedAt: !1050)
!1274 = !DILocation(line: 362, column: 11, scope: !337, inlinedAt: !1050)
!1275 = !DILocation(line: 362, column: 6, scope: !235, inlinedAt: !1050)
!1276 = !DILocation(line: 362, column: 26, scope: !337, inlinedAt: !1050)
!1277 = !DILocation(line: 363, column: 6, scope: !342, inlinedAt: !1050)
!1278 = !DILocation(line: 363, column: 11, scope: !342, inlinedAt: !1050)
!1279 = !DILocation(line: 363, column: 6, scope: !235, inlinedAt: !1050)
!1280 = !DILocation(line: 363, column: 26, scope: !342, inlinedAt: !1050)
!1281 = !DILocation(line: 364, column: 6, scope: !347, inlinedAt: !1050)
!1282 = !DILocation(line: 364, column: 11, scope: !347, inlinedAt: !1050)
!1283 = !DILocation(line: 364, column: 6, scope: !235, inlinedAt: !1050)
!1284 = !DILocation(line: 364, column: 26, scope: !347, inlinedAt: !1050)
!1285 = !DILocation(line: 365, column: 6, scope: !352, inlinedAt: !1050)
!1286 = !DILocation(line: 365, column: 11, scope: !352, inlinedAt: !1050)
!1287 = !DILocation(line: 365, column: 6, scope: !235, inlinedAt: !1050)
!1288 = !DILocation(line: 365, column: 26, scope: !352, inlinedAt: !1050)
!1289 = !DILocation(line: 366, column: 6, scope: !357, inlinedAt: !1050)
!1290 = !DILocation(line: 366, column: 11, scope: !357, inlinedAt: !1050)
!1291 = !DILocation(line: 366, column: 6, scope: !235, inlinedAt: !1050)
!1292 = !DILocation(line: 366, column: 26, scope: !357, inlinedAt: !1050)
!1293 = !DILocation(line: 367, column: 6, scope: !362, inlinedAt: !1050)
!1294 = !DILocation(line: 367, column: 11, scope: !362, inlinedAt: !1050)
!1295 = !DILocation(line: 367, column: 6, scope: !235, inlinedAt: !1050)
!1296 = !DILocation(line: 367, column: 26, scope: !362, inlinedAt: !1050)
!1297 = !DILocation(line: 368, column: 6, scope: !367, inlinedAt: !1050)
!1298 = !DILocation(line: 368, column: 11, scope: !367, inlinedAt: !1050)
!1299 = !DILocation(line: 368, column: 6, scope: !235, inlinedAt: !1050)
!1300 = !DILocation(line: 368, column: 26, scope: !367, inlinedAt: !1050)
!1301 = !DILocation(line: 369, column: 6, scope: !372, inlinedAt: !1050)
!1302 = !DILocation(line: 369, column: 11, scope: !372, inlinedAt: !1050)
!1303 = !DILocation(line: 369, column: 6, scope: !235, inlinedAt: !1050)
!1304 = !DILocation(line: 369, column: 26, scope: !372, inlinedAt: !1050)
!1305 = !DILocation(line: 370, column: 6, scope: !377, inlinedAt: !1050)
!1306 = !DILocation(line: 370, column: 11, scope: !377, inlinedAt: !1050)
!1307 = !DILocation(line: 370, column: 6, scope: !235, inlinedAt: !1050)
!1308 = !DILocation(line: 370, column: 26, scope: !377, inlinedAt: !1050)
!1309 = !DILocation(line: 371, column: 6, scope: !382, inlinedAt: !1050)
!1310 = !DILocation(line: 371, column: 11, scope: !382, inlinedAt: !1050)
!1311 = !DILocation(line: 371, column: 6, scope: !235, inlinedAt: !1050)
!1312 = !DILocation(line: 371, column: 26, scope: !382, inlinedAt: !1050)
!1313 = !DILocation(line: 372, column: 6, scope: !387, inlinedAt: !1050)
!1314 = !DILocation(line: 372, column: 11, scope: !387, inlinedAt: !1050)
!1315 = !DILocation(line: 372, column: 6, scope: !235, inlinedAt: !1050)
!1316 = !DILocation(line: 372, column: 26, scope: !387, inlinedAt: !1050)
!1317 = !DILocation(line: 373, column: 6, scope: !392, inlinedAt: !1050)
!1318 = !DILocation(line: 373, column: 11, scope: !392, inlinedAt: !1050)
!1319 = !DILocation(line: 373, column: 6, scope: !235, inlinedAt: !1050)
!1320 = !DILocation(line: 373, column: 26, scope: !392, inlinedAt: !1050)
!1321 = !DILocation(line: 374, column: 6, scope: !397, inlinedAt: !1050)
!1322 = !DILocation(line: 374, column: 11, scope: !397, inlinedAt: !1050)
!1323 = !DILocation(line: 374, column: 6, scope: !235, inlinedAt: !1050)
!1324 = !DILocation(line: 374, column: 26, scope: !397, inlinedAt: !1050)
!1325 = !DILocation(line: 375, column: 6, scope: !402, inlinedAt: !1050)
!1326 = !DILocation(line: 375, column: 11, scope: !402, inlinedAt: !1050)
!1327 = !DILocation(line: 375, column: 6, scope: !235, inlinedAt: !1050)
!1328 = !DILocation(line: 375, column: 27, scope: !402, inlinedAt: !1050)
!1329 = !DILocation(line: 376, column: 6, scope: !407, inlinedAt: !1050)
!1330 = !DILocation(line: 376, column: 11, scope: !407, inlinedAt: !1050)
!1331 = !DILocation(line: 376, column: 6, scope: !235, inlinedAt: !1050)
!1332 = !DILocation(line: 376, column: 32, scope: !407, inlinedAt: !1050)
!1333 = !DILocation(line: 377, column: 6, scope: !412, inlinedAt: !1050)
!1334 = !DILocation(line: 377, column: 11, scope: !412, inlinedAt: !1050)
!1335 = !DILocation(line: 377, column: 6, scope: !235, inlinedAt: !1050)
!1336 = !DILocation(line: 377, column: 32, scope: !412, inlinedAt: !1050)
!1337 = !DILocation(line: 378, column: 6, scope: !417, inlinedAt: !1050)
!1338 = !DILocation(line: 378, column: 11, scope: !417, inlinedAt: !1050)
!1339 = !DILocation(line: 378, column: 6, scope: !235, inlinedAt: !1050)
!1340 = !DILocation(line: 378, column: 32, scope: !417, inlinedAt: !1050)
!1341 = !DILocation(line: 379, column: 6, scope: !422, inlinedAt: !1050)
!1342 = !DILocation(line: 379, column: 11, scope: !422, inlinedAt: !1050)
!1343 = !DILocation(line: 379, column: 6, scope: !235, inlinedAt: !1050)
!1344 = !DILocation(line: 379, column: 33, scope: !422, inlinedAt: !1050)
!1345 = !DILocation(line: 380, column: 6, scope: !427, inlinedAt: !1050)
!1346 = !DILocation(line: 380, column: 11, scope: !427, inlinedAt: !1050)
!1347 = !DILocation(line: 380, column: 6, scope: !235, inlinedAt: !1050)
!1348 = !DILocation(line: 380, column: 33, scope: !427, inlinedAt: !1050)
!1349 = !DILocation(line: 381, column: 6, scope: !432, inlinedAt: !1050)
!1350 = !DILocation(line: 381, column: 11, scope: !432, inlinedAt: !1050)
!1351 = !DILocation(line: 381, column: 6, scope: !235, inlinedAt: !1050)
!1352 = !DILocation(line: 381, column: 33, scope: !432, inlinedAt: !1050)
!1353 = !DILocation(line: 382, column: 2, scope: !437, inlinedAt: !1050)
!1354 = !DILocation(line: 382, column: 2, scope: !441, inlinedAt: !1050)
!1355 = !DILocation(line: 382, column: 2, scope: !442, inlinedAt: !1050)
!1356 = !DILocation(line: 386, column: 1, scope: !235, inlinedAt: !1050)
!1357 = !DILocation(line: 547, column: 9, scope: !218, inlinedAt: !1038)
!1358 = !DILocation(line: 549, column: 8, scope: !448, inlinedAt: !1038)
!1359 = !DILocation(line: 549, column: 7, scope: !218, inlinedAt: !1038)
!1360 = !DILocation(line: 550, column: 4, scope: !448, inlinedAt: !1038)
!1361 = !DILocation(line: 553, column: 33, scope: !218, inlinedAt: !1038)
!1362 = !DILocation(line: 325, column: 6, scope: !453, inlinedAt: !1048)
!1363 = !DILocation(line: 325, column: 6, scope: !229, inlinedAt: !1048)
!1364 = !DILocation(line: 326, column: 3, scope: !453, inlinedAt: !1048)
!1365 = !DILocation(line: 332, column: 9, scope: !229, inlinedAt: !1048)
!1366 = !DILocation(line: 332, column: 15, scope: !229, inlinedAt: !1048)
!1367 = !DILocation(line: 332, column: 2, scope: !229, inlinedAt: !1048)
!1368 = !DILocation(line: 336, column: 1, scope: !229, inlinedAt: !1048)
!1369 = !DILocation(line: 553, column: 5, scope: !218, inlinedAt: !1038)
!1370 = !DILocation(line: 553, column: 41, scope: !218, inlinedAt: !1038)
!1371 = !DILocation(line: 554, column: 5, scope: !218, inlinedAt: !1038)
!1372 = !DILocation(line: 554, column: 12, scope: !218, inlinedAt: !1038)
!1373 = !DILocation(line: 448, column: 31, scope: !210, inlinedAt: !1037)
!1374 = !DILocation(line: 448, column: 34, scope: !210, inlinedAt: !1037)
!1375 = !DILocation(line: 448, column: 14, scope: !210, inlinedAt: !1037)
!1376 = !DILocation(line: 450, column: 22, scope: !210, inlinedAt: !1037)
!1377 = !DILocation(line: 450, column: 25, scope: !210, inlinedAt: !1037)
!1378 = !DILocation(line: 450, column: 30, scope: !210, inlinedAt: !1037)
!1379 = !DILocation(line: 450, column: 36, scope: !210, inlinedAt: !1037)
!1380 = !DILocation(line: 450, column: 8, scope: !210, inlinedAt: !1037)
!1381 = !DILocation(line: 450, column: 6, scope: !210, inlinedAt: !1037)
!1382 = !DILocation(line: 451, column: 9, scope: !210, inlinedAt: !1037)
!1383 = !DILocation(line: 552, column: 3, scope: !218, inlinedAt: !1038)
!1384 = !DILocation(line: 557, column: 19, scope: !220, inlinedAt: !1038)
!1385 = !DILocation(line: 557, column: 25, scope: !220, inlinedAt: !1038)
!1386 = !DILocation(line: 557, column: 9, scope: !220, inlinedAt: !1038)
!1387 = !DILocation(line: 557, column: 2, scope: !220, inlinedAt: !1038)
!1388 = !DILocation(line: 558, column: 1, scope: !220, inlinedAt: !1038)
!1389 = !DILocation(line: 288, column: 13, scope: !1039)
!1390 = !DILocation(line: 288, column: 11, scope: !1039)
!1391 = !DILocation(line: 289, column: 8, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 289, column: 8)
!1393 = !DILocation(line: 289, column: 15, scope: !1392)
!1394 = !DILocation(line: 289, column: 8, scope: !1039)
!1395 = !DILocation(line: 290, column: 5, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 289, column: 24)
!1397 = !DILocation(line: 291, column: 5, scope: !1396)
!1398 = !DILocation(line: 293, column: 4, scope: !1039)
!1399 = !DILocation(line: 294, column: 4, scope: !1039)
!1400 = !DILocation(line: 295, column: 3, scope: !1039)
!1401 = !DILocation(line: 296, column: 10, scope: !1041)
!1402 = !DILocation(line: 296, column: 3, scope: !1041)
!1403 = !DILocation(line: 297, column: 19, scope: !1041)
!1404 = !DILocation(line: 297, column: 27, scope: !1041)
!1405 = !DILocation(line: 297, column: 3, scope: !1041)
!1406 = !DILocation(line: 298, column: 13, scope: !1041)
!1407 = !DILocation(line: 298, column: 21, scope: !1041)
!1408 = !DILocation(line: 298, column: 28, scope: !1041)
!1409 = !DILocation(line: 298, column: 33, scope: !1041)
!1410 = !DILocation(line: 298, column: 3, scope: !1041)
!1411 = !DILocation(line: 299, column: 2, scope: !1041)
!1412 = !DILocalVariable(name: "__mptr", scope: !1413, file: !3, line: 229, type: !21)
!1413 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 229, column: 2)
!1414 = !DILocation(line: 229, column: 2, scope: !1413)
!1415 = !DILocation(line: 229, column: 2, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 229, column: 2)
!1417 = distinct !{!1417, !1075, !1418}
!1418 = !DILocation(line: 299, column: 2, scope: !1043)
!1419 = !DILocation(line: 300, column: 2, scope: !1033)
!1420 = !DILocation(line: 301, column: 1, scope: !1033)
!1421 = distinct !DISubprogram(name: "pseq_handler_check_detection", scope: !3, file: !3, line: 337, type: !1422, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!37, !99}
!1424 = !DILocalVariable(name: "pde", arg: 1, scope: !1421, file: !3, line: 337, type: !99)
!1425 = !DILocation(line: 337, column: 51, scope: !1421)
!1426 = !DILocalVariable(name: "ps", scope: !1421, file: !3, line: 339, type: !37)
!1427 = !DILocation(line: 339, column: 23, scope: !1421)
!1428 = !DILocation(line: 341, column: 18, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 341, column: 6)
!1430 = !DILocation(line: 341, column: 23, scope: !1429)
!1431 = !DILocation(line: 341, column: 6, scope: !1429)
!1432 = !DILocation(line: 341, column: 6, scope: !1421)
!1433 = !DILocation(line: 342, column: 3, scope: !1429)
!1434 = !DILocalVariable(name: "__mptr", scope: !1435, file: !3, line: 344, type: !21)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 344, column: 2)
!1436 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 344, column: 2)
!1437 = !DILocation(line: 344, column: 2, scope: !1435)
!1438 = !DILocation(line: 344, column: 2, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 344, column: 2)
!1440 = !DILocation(line: 344, column: 2, scope: !1436)
!1441 = !DILocation(line: 344, column: 2, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 344, column: 2)
!1443 = !DILocation(line: 350, column: 8, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 350, column: 7)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 344, column: 49)
!1446 = !DILocation(line: 350, column: 12, scope: !1444)
!1447 = !DILocation(line: 350, column: 21, scope: !1444)
!1448 = !DILocation(line: 350, column: 26, scope: !1444)
!1449 = !DILocation(line: 350, column: 30, scope: !1444)
!1450 = !DILocation(line: 350, column: 18, scope: !1444)
!1451 = !DILocation(line: 350, column: 42, scope: !1444)
!1452 = !DILocation(line: 351, column: 8, scope: !1444)
!1453 = !DILocation(line: 351, column: 12, scope: !1444)
!1454 = !DILocation(line: 351, column: 20, scope: !1444)
!1455 = !DILocation(line: 351, column: 25, scope: !1444)
!1456 = !DILocation(line: 351, column: 29, scope: !1444)
!1457 = !DILocation(line: 351, column: 18, scope: !1444)
!1458 = !DILocation(line: 351, column: 40, scope: !1444)
!1459 = !DILocation(line: 351, column: 44, scope: !1444)
!1460 = !DILocation(line: 351, column: 37, scope: !1444)
!1461 = !DILocation(line: 350, column: 7, scope: !1445)
!1462 = !DILocation(line: 352, column: 11, scope: !1444)
!1463 = !DILocation(line: 352, column: 4, scope: !1444)
!1464 = !DILocation(line: 353, column: 2, scope: !1445)
!1465 = !DILocalVariable(name: "__mptr", scope: !1466, file: !3, line: 344, type: !21)
!1466 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 344, column: 2)
!1467 = !DILocation(line: 344, column: 2, scope: !1466)
!1468 = !DILocation(line: 344, column: 2, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 344, column: 2)
!1470 = distinct !{!1470, !1440, !1471}
!1471 = !DILocation(line: 353, column: 2, scope: !1436)
!1472 = !DILocation(line: 354, column: 2, scope: !1421)
!1473 = !DILocation(line: 355, column: 1, scope: !1421)
!1474 = distinct !DISubprogram(name: "pulse_queue_enqueue", scope: !3, file: !3, line: 202, type: !1475, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!124, !99, !32}
!1477 = !DILocation(line: 445, column: 72, scope: !210, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 552, column: 10, scope: !218, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 206, column: 7, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 205, column: 17)
!1481 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 205, column: 6)
!1482 = !DILocation(line: 446, column: 9, scope: !210, inlinedAt: !1478)
!1483 = !DILocation(line: 446, column: 23, scope: !210, inlinedAt: !1478)
!1484 = !DILocation(line: 448, column: 8, scope: !210, inlinedAt: !1478)
!1485 = !DILocation(line: 318, column: 67, scope: !229, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 553, column: 20, scope: !218, inlinedAt: !1479)
!1487 = !DILocation(line: 346, column: 58, scope: !235, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 547, column: 11, scope: !218, inlinedAt: !1479)
!1489 = !DILocation(line: 472, column: 28, scope: !241, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 481, column: 9, scope: !246, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 545, column: 11, scope: !248, inlinedAt: !1479)
!1492 = !DILocation(line: 472, column: 40, scope: !241, inlinedAt: !1490)
!1493 = !DILocation(line: 472, column: 60, scope: !241, inlinedAt: !1490)
!1494 = !DILocation(line: 478, column: 51, scope: !246, inlinedAt: !1491)
!1495 = !DILocation(line: 478, column: 63, scope: !246, inlinedAt: !1491)
!1496 = !DILocation(line: 480, column: 15, scope: !246, inlinedAt: !1491)
!1497 = !DILocation(line: 538, column: 45, scope: !220, inlinedAt: !1479)
!1498 = !DILocation(line: 538, column: 57, scope: !220, inlinedAt: !1479)
!1499 = !DILocation(line: 542, column: 16, scope: !218, inlinedAt: !1479)
!1500 = !DILocalVariable(name: "pde", arg: 1, scope: !1474, file: !3, line: 202, type: !99)
!1501 = !DILocation(line: 202, column: 54, scope: !1474)
!1502 = !DILocalVariable(name: "ts", arg: 2, scope: !1474, file: !3, line: 202, type: !32)
!1503 = !DILocation(line: 202, column: 63, scope: !1474)
!1504 = !DILocalVariable(name: "p", scope: !1474, file: !3, line: 204, type: !22)
!1505 = !DILocation(line: 204, column: 21, scope: !1474)
!1506 = !DILocation(line: 204, column: 25, scope: !1474)
!1507 = !DILocation(line: 205, column: 6, scope: !1481)
!1508 = !DILocation(line: 205, column: 8, scope: !1481)
!1509 = !DILocation(line: 205, column: 6, scope: !1474)
!1510 = !DILocation(line: 540, column: 27, scope: !219, inlinedAt: !1479)
!1511 = !DILocation(line: 540, column: 6, scope: !219, inlinedAt: !1479)
!1512 = !DILocation(line: 540, column: 6, scope: !220, inlinedAt: !1479)
!1513 = !DILocation(line: 544, column: 7, scope: !248, inlinedAt: !1479)
!1514 = !DILocation(line: 544, column: 12, scope: !248, inlinedAt: !1479)
!1515 = !DILocation(line: 544, column: 7, scope: !218, inlinedAt: !1479)
!1516 = !DILocation(line: 545, column: 25, scope: !248, inlinedAt: !1479)
!1517 = !DILocation(line: 545, column: 31, scope: !248, inlinedAt: !1479)
!1518 = !DILocation(line: 480, column: 33, scope: !246, inlinedAt: !1491)
!1519 = !DILocation(line: 480, column: 23, scope: !246, inlinedAt: !1491)
!1520 = !DILocation(line: 481, column: 29, scope: !246, inlinedAt: !1491)
!1521 = !DILocation(line: 481, column: 35, scope: !246, inlinedAt: !1491)
!1522 = !DILocation(line: 481, column: 42, scope: !246, inlinedAt: !1491)
!1523 = !DILocation(line: 474, column: 23, scope: !241, inlinedAt: !1490)
!1524 = !DILocation(line: 474, column: 29, scope: !241, inlinedAt: !1490)
!1525 = !DILocation(line: 474, column: 36, scope: !241, inlinedAt: !1490)
!1526 = !DILocation(line: 474, column: 9, scope: !241, inlinedAt: !1490)
!1527 = !DILocation(line: 545, column: 4, scope: !248, inlinedAt: !1479)
!1528 = !DILocation(line: 547, column: 25, scope: !218, inlinedAt: !1479)
!1529 = !DILocation(line: 348, column: 7, scope: !292, inlinedAt: !1488)
!1530 = !DILocation(line: 348, column: 6, scope: !235, inlinedAt: !1488)
!1531 = !DILocation(line: 349, column: 3, scope: !292, inlinedAt: !1488)
!1532 = !DILocation(line: 351, column: 6, scope: !296, inlinedAt: !1488)
!1533 = !DILocation(line: 351, column: 11, scope: !296, inlinedAt: !1488)
!1534 = !DILocation(line: 351, column: 6, scope: !235, inlinedAt: !1488)
!1535 = !DILocation(line: 352, column: 3, scope: !296, inlinedAt: !1488)
!1536 = !DILocation(line: 354, column: 32, scope: !301, inlinedAt: !1488)
!1537 = !DILocation(line: 354, column: 37, scope: !301, inlinedAt: !1488)
!1538 = !DILocation(line: 354, column: 42, scope: !301, inlinedAt: !1488)
!1539 = !DILocation(line: 354, column: 45, scope: !301, inlinedAt: !1488)
!1540 = !DILocation(line: 354, column: 50, scope: !301, inlinedAt: !1488)
!1541 = !DILocation(line: 354, column: 6, scope: !235, inlinedAt: !1488)
!1542 = !DILocation(line: 355, column: 3, scope: !301, inlinedAt: !1488)
!1543 = !DILocation(line: 356, column: 32, scope: !309, inlinedAt: !1488)
!1544 = !DILocation(line: 356, column: 37, scope: !309, inlinedAt: !1488)
!1545 = !DILocation(line: 356, column: 43, scope: !309, inlinedAt: !1488)
!1546 = !DILocation(line: 356, column: 46, scope: !309, inlinedAt: !1488)
!1547 = !DILocation(line: 356, column: 51, scope: !309, inlinedAt: !1488)
!1548 = !DILocation(line: 356, column: 6, scope: !235, inlinedAt: !1488)
!1549 = !DILocation(line: 357, column: 3, scope: !309, inlinedAt: !1488)
!1550 = !DILocation(line: 358, column: 6, scope: !317, inlinedAt: !1488)
!1551 = !DILocation(line: 358, column: 11, scope: !317, inlinedAt: !1488)
!1552 = !DILocation(line: 358, column: 6, scope: !235, inlinedAt: !1488)
!1553 = !DILocation(line: 358, column: 26, scope: !317, inlinedAt: !1488)
!1554 = !DILocation(line: 359, column: 6, scope: !322, inlinedAt: !1488)
!1555 = !DILocation(line: 359, column: 11, scope: !322, inlinedAt: !1488)
!1556 = !DILocation(line: 359, column: 6, scope: !235, inlinedAt: !1488)
!1557 = !DILocation(line: 359, column: 26, scope: !322, inlinedAt: !1488)
!1558 = !DILocation(line: 360, column: 6, scope: !327, inlinedAt: !1488)
!1559 = !DILocation(line: 360, column: 11, scope: !327, inlinedAt: !1488)
!1560 = !DILocation(line: 360, column: 6, scope: !235, inlinedAt: !1488)
!1561 = !DILocation(line: 360, column: 26, scope: !327, inlinedAt: !1488)
!1562 = !DILocation(line: 361, column: 6, scope: !332, inlinedAt: !1488)
!1563 = !DILocation(line: 361, column: 11, scope: !332, inlinedAt: !1488)
!1564 = !DILocation(line: 361, column: 6, scope: !235, inlinedAt: !1488)
!1565 = !DILocation(line: 361, column: 26, scope: !332, inlinedAt: !1488)
!1566 = !DILocation(line: 362, column: 6, scope: !337, inlinedAt: !1488)
!1567 = !DILocation(line: 362, column: 11, scope: !337, inlinedAt: !1488)
!1568 = !DILocation(line: 362, column: 6, scope: !235, inlinedAt: !1488)
!1569 = !DILocation(line: 362, column: 26, scope: !337, inlinedAt: !1488)
!1570 = !DILocation(line: 363, column: 6, scope: !342, inlinedAt: !1488)
!1571 = !DILocation(line: 363, column: 11, scope: !342, inlinedAt: !1488)
!1572 = !DILocation(line: 363, column: 6, scope: !235, inlinedAt: !1488)
!1573 = !DILocation(line: 363, column: 26, scope: !342, inlinedAt: !1488)
!1574 = !DILocation(line: 364, column: 6, scope: !347, inlinedAt: !1488)
!1575 = !DILocation(line: 364, column: 11, scope: !347, inlinedAt: !1488)
!1576 = !DILocation(line: 364, column: 6, scope: !235, inlinedAt: !1488)
!1577 = !DILocation(line: 364, column: 26, scope: !347, inlinedAt: !1488)
!1578 = !DILocation(line: 365, column: 6, scope: !352, inlinedAt: !1488)
!1579 = !DILocation(line: 365, column: 11, scope: !352, inlinedAt: !1488)
!1580 = !DILocation(line: 365, column: 6, scope: !235, inlinedAt: !1488)
!1581 = !DILocation(line: 365, column: 26, scope: !352, inlinedAt: !1488)
!1582 = !DILocation(line: 366, column: 6, scope: !357, inlinedAt: !1488)
!1583 = !DILocation(line: 366, column: 11, scope: !357, inlinedAt: !1488)
!1584 = !DILocation(line: 366, column: 6, scope: !235, inlinedAt: !1488)
!1585 = !DILocation(line: 366, column: 26, scope: !357, inlinedAt: !1488)
!1586 = !DILocation(line: 367, column: 6, scope: !362, inlinedAt: !1488)
!1587 = !DILocation(line: 367, column: 11, scope: !362, inlinedAt: !1488)
!1588 = !DILocation(line: 367, column: 6, scope: !235, inlinedAt: !1488)
!1589 = !DILocation(line: 367, column: 26, scope: !362, inlinedAt: !1488)
!1590 = !DILocation(line: 368, column: 6, scope: !367, inlinedAt: !1488)
!1591 = !DILocation(line: 368, column: 11, scope: !367, inlinedAt: !1488)
!1592 = !DILocation(line: 368, column: 6, scope: !235, inlinedAt: !1488)
!1593 = !DILocation(line: 368, column: 26, scope: !367, inlinedAt: !1488)
!1594 = !DILocation(line: 369, column: 6, scope: !372, inlinedAt: !1488)
!1595 = !DILocation(line: 369, column: 11, scope: !372, inlinedAt: !1488)
!1596 = !DILocation(line: 369, column: 6, scope: !235, inlinedAt: !1488)
!1597 = !DILocation(line: 369, column: 26, scope: !372, inlinedAt: !1488)
!1598 = !DILocation(line: 370, column: 6, scope: !377, inlinedAt: !1488)
!1599 = !DILocation(line: 370, column: 11, scope: !377, inlinedAt: !1488)
!1600 = !DILocation(line: 370, column: 6, scope: !235, inlinedAt: !1488)
!1601 = !DILocation(line: 370, column: 26, scope: !377, inlinedAt: !1488)
!1602 = !DILocation(line: 371, column: 6, scope: !382, inlinedAt: !1488)
!1603 = !DILocation(line: 371, column: 11, scope: !382, inlinedAt: !1488)
!1604 = !DILocation(line: 371, column: 6, scope: !235, inlinedAt: !1488)
!1605 = !DILocation(line: 371, column: 26, scope: !382, inlinedAt: !1488)
!1606 = !DILocation(line: 372, column: 6, scope: !387, inlinedAt: !1488)
!1607 = !DILocation(line: 372, column: 11, scope: !387, inlinedAt: !1488)
!1608 = !DILocation(line: 372, column: 6, scope: !235, inlinedAt: !1488)
!1609 = !DILocation(line: 372, column: 26, scope: !387, inlinedAt: !1488)
!1610 = !DILocation(line: 373, column: 6, scope: !392, inlinedAt: !1488)
!1611 = !DILocation(line: 373, column: 11, scope: !392, inlinedAt: !1488)
!1612 = !DILocation(line: 373, column: 6, scope: !235, inlinedAt: !1488)
!1613 = !DILocation(line: 373, column: 26, scope: !392, inlinedAt: !1488)
!1614 = !DILocation(line: 374, column: 6, scope: !397, inlinedAt: !1488)
!1615 = !DILocation(line: 374, column: 11, scope: !397, inlinedAt: !1488)
!1616 = !DILocation(line: 374, column: 6, scope: !235, inlinedAt: !1488)
!1617 = !DILocation(line: 374, column: 26, scope: !397, inlinedAt: !1488)
!1618 = !DILocation(line: 375, column: 6, scope: !402, inlinedAt: !1488)
!1619 = !DILocation(line: 375, column: 11, scope: !402, inlinedAt: !1488)
!1620 = !DILocation(line: 375, column: 6, scope: !235, inlinedAt: !1488)
!1621 = !DILocation(line: 375, column: 27, scope: !402, inlinedAt: !1488)
!1622 = !DILocation(line: 376, column: 6, scope: !407, inlinedAt: !1488)
!1623 = !DILocation(line: 376, column: 11, scope: !407, inlinedAt: !1488)
!1624 = !DILocation(line: 376, column: 6, scope: !235, inlinedAt: !1488)
!1625 = !DILocation(line: 376, column: 32, scope: !407, inlinedAt: !1488)
!1626 = !DILocation(line: 377, column: 6, scope: !412, inlinedAt: !1488)
!1627 = !DILocation(line: 377, column: 11, scope: !412, inlinedAt: !1488)
!1628 = !DILocation(line: 377, column: 6, scope: !235, inlinedAt: !1488)
!1629 = !DILocation(line: 377, column: 32, scope: !412, inlinedAt: !1488)
!1630 = !DILocation(line: 378, column: 6, scope: !417, inlinedAt: !1488)
!1631 = !DILocation(line: 378, column: 11, scope: !417, inlinedAt: !1488)
!1632 = !DILocation(line: 378, column: 6, scope: !235, inlinedAt: !1488)
!1633 = !DILocation(line: 378, column: 32, scope: !417, inlinedAt: !1488)
!1634 = !DILocation(line: 379, column: 6, scope: !422, inlinedAt: !1488)
!1635 = !DILocation(line: 379, column: 11, scope: !422, inlinedAt: !1488)
!1636 = !DILocation(line: 379, column: 6, scope: !235, inlinedAt: !1488)
!1637 = !DILocation(line: 379, column: 33, scope: !422, inlinedAt: !1488)
!1638 = !DILocation(line: 380, column: 6, scope: !427, inlinedAt: !1488)
!1639 = !DILocation(line: 380, column: 11, scope: !427, inlinedAt: !1488)
!1640 = !DILocation(line: 380, column: 6, scope: !235, inlinedAt: !1488)
!1641 = !DILocation(line: 380, column: 33, scope: !427, inlinedAt: !1488)
!1642 = !DILocation(line: 381, column: 6, scope: !432, inlinedAt: !1488)
!1643 = !DILocation(line: 381, column: 11, scope: !432, inlinedAt: !1488)
!1644 = !DILocation(line: 381, column: 6, scope: !235, inlinedAt: !1488)
!1645 = !DILocation(line: 381, column: 33, scope: !432, inlinedAt: !1488)
!1646 = !DILocation(line: 382, column: 2, scope: !437, inlinedAt: !1488)
!1647 = !DILocation(line: 382, column: 2, scope: !441, inlinedAt: !1488)
!1648 = !DILocation(line: 382, column: 2, scope: !442, inlinedAt: !1488)
!1649 = !DILocation(line: 386, column: 1, scope: !235, inlinedAt: !1488)
!1650 = !DILocation(line: 547, column: 9, scope: !218, inlinedAt: !1479)
!1651 = !DILocation(line: 549, column: 8, scope: !448, inlinedAt: !1479)
!1652 = !DILocation(line: 549, column: 7, scope: !218, inlinedAt: !1479)
!1653 = !DILocation(line: 550, column: 4, scope: !448, inlinedAt: !1479)
!1654 = !DILocation(line: 553, column: 33, scope: !218, inlinedAt: !1479)
!1655 = !DILocation(line: 325, column: 6, scope: !453, inlinedAt: !1486)
!1656 = !DILocation(line: 325, column: 6, scope: !229, inlinedAt: !1486)
!1657 = !DILocation(line: 326, column: 3, scope: !453, inlinedAt: !1486)
!1658 = !DILocation(line: 332, column: 9, scope: !229, inlinedAt: !1486)
!1659 = !DILocation(line: 332, column: 15, scope: !229, inlinedAt: !1486)
!1660 = !DILocation(line: 332, column: 2, scope: !229, inlinedAt: !1486)
!1661 = !DILocation(line: 336, column: 1, scope: !229, inlinedAt: !1486)
!1662 = !DILocation(line: 553, column: 5, scope: !218, inlinedAt: !1479)
!1663 = !DILocation(line: 553, column: 41, scope: !218, inlinedAt: !1479)
!1664 = !DILocation(line: 554, column: 5, scope: !218, inlinedAt: !1479)
!1665 = !DILocation(line: 554, column: 12, scope: !218, inlinedAt: !1479)
!1666 = !DILocation(line: 448, column: 31, scope: !210, inlinedAt: !1478)
!1667 = !DILocation(line: 448, column: 34, scope: !210, inlinedAt: !1478)
!1668 = !DILocation(line: 448, column: 14, scope: !210, inlinedAt: !1478)
!1669 = !DILocation(line: 450, column: 22, scope: !210, inlinedAt: !1478)
!1670 = !DILocation(line: 450, column: 25, scope: !210, inlinedAt: !1478)
!1671 = !DILocation(line: 450, column: 30, scope: !210, inlinedAt: !1478)
!1672 = !DILocation(line: 450, column: 36, scope: !210, inlinedAt: !1478)
!1673 = !DILocation(line: 450, column: 8, scope: !210, inlinedAt: !1478)
!1674 = !DILocation(line: 450, column: 6, scope: !210, inlinedAt: !1478)
!1675 = !DILocation(line: 451, column: 9, scope: !210, inlinedAt: !1478)
!1676 = !DILocation(line: 552, column: 3, scope: !218, inlinedAt: !1479)
!1677 = !DILocation(line: 557, column: 19, scope: !220, inlinedAt: !1479)
!1678 = !DILocation(line: 557, column: 25, scope: !220, inlinedAt: !1479)
!1679 = !DILocation(line: 557, column: 9, scope: !220, inlinedAt: !1479)
!1680 = !DILocation(line: 557, column: 2, scope: !220, inlinedAt: !1479)
!1681 = !DILocation(line: 558, column: 1, scope: !220, inlinedAt: !1479)
!1682 = !DILocation(line: 206, column: 7, scope: !1480)
!1683 = !DILocation(line: 206, column: 5, scope: !1480)
!1684 = !DILocation(line: 207, column: 7, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 207, column: 7)
!1686 = !DILocation(line: 207, column: 9, scope: !1685)
!1687 = !DILocation(line: 207, column: 7, scope: !1480)
!1688 = !DILocation(line: 208, column: 4, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 207, column: 18)
!1690 = !DILocation(line: 209, column: 4, scope: !1689)
!1691 = !DILocation(line: 211, column: 3, scope: !1480)
!1692 = !DILocation(line: 212, column: 3, scope: !1480)
!1693 = !DILocation(line: 213, column: 2, scope: !1480)
!1694 = !DILocation(line: 214, column: 18, scope: !1474)
!1695 = !DILocation(line: 214, column: 21, scope: !1474)
!1696 = !DILocation(line: 214, column: 2, scope: !1474)
!1697 = !DILocation(line: 215, column: 10, scope: !1474)
!1698 = !DILocation(line: 215, column: 2, scope: !1474)
!1699 = !DILocation(line: 215, column: 5, scope: !1474)
!1700 = !DILocation(line: 215, column: 8, scope: !1474)
!1701 = !DILocation(line: 216, column: 12, scope: !1474)
!1702 = !DILocation(line: 216, column: 15, scope: !1474)
!1703 = !DILocation(line: 216, column: 22, scope: !1474)
!1704 = !DILocation(line: 216, column: 27, scope: !1474)
!1705 = !DILocation(line: 216, column: 2, scope: !1474)
!1706 = !DILocation(line: 217, column: 2, scope: !1474)
!1707 = !DILocation(line: 217, column: 7, scope: !1474)
!1708 = !DILocation(line: 217, column: 12, scope: !1474)
!1709 = !DILocation(line: 218, column: 17, scope: !1474)
!1710 = !DILocation(line: 218, column: 2, scope: !1474)
!1711 = !DILocation(line: 218, column: 7, scope: !1474)
!1712 = !DILocation(line: 218, column: 15, scope: !1474)
!1713 = !DILocation(line: 219, column: 27, scope: !1474)
!1714 = !DILocation(line: 219, column: 2, scope: !1474)
!1715 = !DILocation(line: 220, column: 6, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 220, column: 6)
!1717 = !DILocation(line: 220, column: 11, scope: !1716)
!1718 = !DILocation(line: 220, column: 20, scope: !1716)
!1719 = !DILocation(line: 220, column: 25, scope: !1716)
!1720 = !DILocation(line: 220, column: 17, scope: !1716)
!1721 = !DILocation(line: 220, column: 6, scope: !1474)
!1722 = !DILocation(line: 221, column: 23, scope: !1716)
!1723 = !DILocation(line: 221, column: 3, scope: !1716)
!1724 = !DILocation(line: 222, column: 2, scope: !1474)
!1725 = !DILocation(line: 223, column: 1, scope: !1474)
!1726 = distinct !DISubprogram(name: "list_del_init", scope: !652, file: !652, line: 202, type: !653, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1727 = !DILocalVariable(name: "entry", arg: 1, scope: !1726, file: !652, line: 202, type: !29)
!1728 = !DILocation(line: 202, column: 52, scope: !1726)
!1729 = !DILocation(line: 204, column: 19, scope: !1726)
!1730 = !DILocation(line: 204, column: 2, scope: !1726)
!1731 = !DILocation(line: 205, column: 17, scope: !1726)
!1732 = !DILocation(line: 205, column: 2, scope: !1726)
!1733 = !DILocation(line: 206, column: 1, scope: !1726)
!1734 = distinct !DISubprogram(name: "pool_put_pseq_elem", scope: !3, file: !3, line: 127, type: !1735, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !37}
!1737 = !DILocalVariable(name: "pse", arg: 1, scope: !1734, file: !3, line: 127, type: !37)
!1738 = !DILocation(line: 127, column: 53, scope: !1734)
!1739 = !DILocation(line: 129, column: 2, scope: !1734)
!1740 = !DILocation(line: 130, column: 12, scope: !1734)
!1741 = !DILocation(line: 130, column: 17, scope: !1734)
!1742 = !DILocation(line: 130, column: 2, scope: !1734)
!1743 = !DILocation(line: 131, column: 2, scope: !1734)
!1744 = !DILocation(line: 132, column: 2, scope: !1734)
!1745 = !DILocation(line: 133, column: 1, scope: !1734)
!1746 = distinct !DISubprogram(name: "pde_get_multiple", scope: !3, file: !3, line: 45, type: !1747, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!43, !43, !43, !43}
!1749 = !DILocalVariable(name: "val", arg: 1, scope: !1746, file: !3, line: 45, type: !43)
!1750 = !DILocation(line: 45, column: 33, scope: !1746)
!1751 = !DILocalVariable(name: "fraction", arg: 2, scope: !1746, file: !3, line: 45, type: !43)
!1752 = !DILocation(line: 45, column: 42, scope: !1746)
!1753 = !DILocalVariable(name: "tolerance", arg: 3, scope: !1746, file: !3, line: 45, type: !43)
!1754 = !DILocation(line: 45, column: 56, scope: !1746)
!1755 = !DILocalVariable(name: "remainder", scope: !1746, file: !3, line: 47, type: !43)
!1756 = !DILocation(line: 47, column: 6, scope: !1746)
!1757 = !DILocalVariable(name: "factor", scope: !1746, file: !3, line: 48, type: !43)
!1758 = !DILocation(line: 48, column: 6, scope: !1746)
!1759 = !DILocalVariable(name: "delta", scope: !1746, file: !3, line: 49, type: !43)
!1760 = !DILocation(line: 49, column: 6, scope: !1746)
!1761 = !DILocation(line: 51, column: 6, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 51, column: 6)
!1763 = !DILocation(line: 51, column: 15, scope: !1762)
!1764 = !DILocation(line: 51, column: 6, scope: !1746)
!1765 = !DILocation(line: 52, column: 3, scope: !1762)
!1766 = !DILocation(line: 54, column: 11, scope: !1746)
!1767 = !DILocation(line: 54, column: 17, scope: !1746)
!1768 = !DILocation(line: 54, column: 15, scope: !1746)
!1769 = !DILocation(line: 54, column: 10, scope: !1746)
!1770 = !DILocation(line: 54, column: 30, scope: !1746)
!1771 = !DILocation(line: 54, column: 41, scope: !1746)
!1772 = !DILocation(line: 54, column: 39, scope: !1746)
!1773 = !DILocation(line: 54, column: 49, scope: !1746)
!1774 = !DILocation(line: 54, column: 55, scope: !1746)
!1775 = !DILocation(line: 54, column: 53, scope: !1746)
!1776 = !DILocation(line: 54, column: 8, scope: !1746)
!1777 = !DILocation(line: 56, column: 6, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 56, column: 6)
!1779 = !DILocation(line: 56, column: 15, scope: !1778)
!1780 = !DILocation(line: 56, column: 12, scope: !1778)
!1781 = !DILocation(line: 56, column: 6, scope: !1746)
!1782 = !DILocation(line: 58, column: 3, scope: !1778)
!1783 = !DILocation(line: 60, column: 11, scope: !1746)
!1784 = !DILocation(line: 60, column: 17, scope: !1746)
!1785 = !DILocation(line: 60, column: 15, scope: !1746)
!1786 = !DILocation(line: 60, column: 9, scope: !1746)
!1787 = !DILocation(line: 61, column: 14, scope: !1746)
!1788 = !DILocation(line: 61, column: 20, scope: !1746)
!1789 = !DILocation(line: 61, column: 18, scope: !1746)
!1790 = !DILocation(line: 61, column: 12, scope: !1746)
!1791 = !DILocation(line: 62, column: 6, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 62, column: 6)
!1793 = !DILocation(line: 62, column: 18, scope: !1792)
!1794 = !DILocation(line: 62, column: 16, scope: !1792)
!1795 = !DILocation(line: 62, column: 6, scope: !1746)
!1796 = !DILocation(line: 64, column: 8, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 64, column: 7)
!1798 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 62, column: 29)
!1799 = !DILocation(line: 64, column: 19, scope: !1797)
!1800 = !DILocation(line: 64, column: 17, scope: !1797)
!1801 = !DILocation(line: 64, column: 33, scope: !1797)
!1802 = !DILocation(line: 64, column: 30, scope: !1797)
!1803 = !DILocation(line: 64, column: 7, scope: !1798)
!1804 = !DILocation(line: 66, column: 10, scope: !1797)
!1805 = !DILocation(line: 66, column: 4, scope: !1797)
!1806 = !DILocation(line: 68, column: 11, scope: !1797)
!1807 = !DILocation(line: 69, column: 2, scope: !1798)
!1808 = !DILocation(line: 70, column: 9, scope: !1746)
!1809 = !DILocation(line: 70, column: 2, scope: !1746)
!1810 = !DILocation(line: 71, column: 1, scope: !1746)
!1811 = distinct !DISubprogram(name: "list_add", scope: !652, file: !652, line: 84, type: !920, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1812 = !DILocalVariable(name: "new", arg: 1, scope: !1811, file: !652, line: 84, type: !29)
!1813 = !DILocation(line: 84, column: 47, scope: !1811)
!1814 = !DILocalVariable(name: "head", arg: 2, scope: !1811, file: !652, line: 84, type: !29)
!1815 = !DILocation(line: 84, column: 70, scope: !1811)
!1816 = !DILocation(line: 86, column: 13, scope: !1811)
!1817 = !DILocation(line: 86, column: 18, scope: !1811)
!1818 = !DILocation(line: 86, column: 24, scope: !1811)
!1819 = !DILocation(line: 86, column: 30, scope: !1811)
!1820 = !DILocation(line: 86, column: 2, scope: !1811)
!1821 = !DILocation(line: 87, column: 1, scope: !1811)
!1822 = distinct !DISubprogram(name: "__list_add", scope: !652, file: !652, line: 63, type: !1823, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !29, !29, !29}
!1825 = !DILocalVariable(name: "new", arg: 1, scope: !1822, file: !652, line: 63, type: !29)
!1826 = !DILocation(line: 63, column: 49, scope: !1822)
!1827 = !DILocalVariable(name: "prev", arg: 2, scope: !1822, file: !652, line: 64, type: !29)
!1828 = !DILocation(line: 64, column: 28, scope: !1822)
!1829 = !DILocalVariable(name: "next", arg: 3, scope: !1822, file: !652, line: 65, type: !29)
!1830 = !DILocation(line: 65, column: 28, scope: !1822)
!1831 = !DILocation(line: 67, column: 24, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1822, file: !652, line: 67, column: 6)
!1833 = !DILocation(line: 67, column: 29, scope: !1832)
!1834 = !DILocation(line: 67, column: 35, scope: !1832)
!1835 = !DILocation(line: 67, column: 7, scope: !1832)
!1836 = !DILocation(line: 67, column: 6, scope: !1822)
!1837 = !DILocation(line: 68, column: 3, scope: !1832)
!1838 = !DILocation(line: 70, column: 15, scope: !1822)
!1839 = !DILocation(line: 70, column: 2, scope: !1822)
!1840 = !DILocation(line: 70, column: 8, scope: !1822)
!1841 = !DILocation(line: 70, column: 13, scope: !1822)
!1842 = !DILocation(line: 71, column: 14, scope: !1822)
!1843 = !DILocation(line: 71, column: 2, scope: !1822)
!1844 = !DILocation(line: 71, column: 7, scope: !1822)
!1845 = !DILocation(line: 71, column: 12, scope: !1822)
!1846 = !DILocation(line: 72, column: 14, scope: !1822)
!1847 = !DILocation(line: 72, column: 2, scope: !1822)
!1848 = !DILocation(line: 72, column: 7, scope: !1822)
!1849 = !DILocation(line: 72, column: 12, scope: !1822)
!1850 = !DILocation(line: 73, column: 2, scope: !1822)
!1851 = !DILocation(line: 73, column: 2, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1822, file: !652, line: 73, column: 2)
!1853 = !DILocation(line: 73, column: 2, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1852, file: !652, line: 73, column: 2)
!1855 = !DILocation(line: 73, column: 2, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1852, file: !652, line: 73, column: 2)
!1857 = !DILocation(line: 74, column: 1, scope: !1822)
!1858 = distinct !DISubprogram(name: "__list_add_valid", scope: !652, file: !652, line: 45, type: !1859, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!124, !29, !29, !29}
!1861 = !DILocalVariable(name: "new", arg: 1, scope: !1858, file: !652, line: 45, type: !29)
!1862 = !DILocation(line: 45, column: 55, scope: !1858)
!1863 = !DILocalVariable(name: "prev", arg: 2, scope: !1858, file: !652, line: 46, type: !29)
!1864 = !DILocation(line: 46, column: 23, scope: !1858)
!1865 = !DILocalVariable(name: "next", arg: 3, scope: !1858, file: !652, line: 47, type: !29)
!1866 = !DILocation(line: 47, column: 23, scope: !1858)
!1867 = !DILocation(line: 49, column: 2, scope: !1858)
!1868 = distinct !DISubprogram(name: "pool_get_pseq_elem", scope: !3, file: !3, line: 135, type: !1869, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!37}
!1871 = !DILocalVariable(name: "pse", scope: !1868, file: !3, line: 137, type: !37)
!1872 = !DILocation(line: 137, column: 23, scope: !1868)
!1873 = !DILocation(line: 138, column: 2, scope: !1868)
!1874 = !DILocation(line: 139, column: 7, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 139, column: 6)
!1876 = !DILocation(line: 139, column: 6, scope: !1868)
!1877 = !DILocalVariable(name: "__mptr", scope: !1878, file: !3, line: 140, type: !21)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 140, column: 9)
!1879 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 139, column: 31)
!1880 = !DILocation(line: 140, column: 9, scope: !1878)
!1881 = !DILocation(line: 140, column: 9, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 140, column: 9)
!1883 = !DILocation(line: 140, column: 7, scope: !1879)
!1884 = !DILocation(line: 141, column: 13, scope: !1879)
!1885 = !DILocation(line: 141, column: 18, scope: !1879)
!1886 = !DILocation(line: 141, column: 3, scope: !1879)
!1887 = !DILocation(line: 142, column: 3, scope: !1879)
!1888 = !DILocation(line: 143, column: 2, scope: !1879)
!1889 = !DILocation(line: 144, column: 2, scope: !1868)
!1890 = !DILocation(line: 145, column: 9, scope: !1868)
!1891 = !DILocation(line: 145, column: 2, scope: !1868)
!1892 = distinct !DISubprogram(name: "list_empty", scope: !652, file: !652, line: 280, type: !1893, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!52, !1895}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!1897 = !DILocalVariable(name: "head", arg: 1, scope: !1892, file: !652, line: 280, type: !1895)
!1898 = !DILocation(line: 280, column: 54, scope: !1892)
!1899 = !DILocation(line: 282, column: 9, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1892, file: !652, line: 282, column: 9)
!1901 = !DILocation(line: 282, column: 9, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1900, file: !652, line: 282, column: 9)
!1903 = !DILocation(line: 282, column: 34, scope: !1892)
!1904 = !DILocation(line: 282, column: 31, scope: !1892)
!1905 = !DILocation(line: 282, column: 2, scope: !1892)
!1906 = distinct !DISubprogram(name: "pool_get_pulse_elem", scope: !3, file: !3, line: 148, type: !1907, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!22}
!1909 = !DILocalVariable(name: "pe", scope: !1906, file: !3, line: 150, type: !22)
!1910 = !DILocation(line: 150, column: 21, scope: !1906)
!1911 = !DILocation(line: 151, column: 2, scope: !1906)
!1912 = !DILocation(line: 152, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 152, column: 6)
!1914 = !DILocation(line: 152, column: 6, scope: !1906)
!1915 = !DILocalVariable(name: "__mptr", scope: !1916, file: !3, line: 153, type: !21)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 153, column: 8)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 152, column: 32)
!1918 = !DILocation(line: 153, column: 8, scope: !1916)
!1919 = !DILocation(line: 153, column: 8, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 153, column: 8)
!1921 = !DILocation(line: 153, column: 6, scope: !1917)
!1922 = !DILocation(line: 154, column: 13, scope: !1917)
!1923 = !DILocation(line: 154, column: 17, scope: !1917)
!1924 = !DILocation(line: 154, column: 3, scope: !1917)
!1925 = !DILocation(line: 155, column: 3, scope: !1917)
!1926 = !DILocation(line: 156, column: 2, scope: !1917)
!1927 = !DILocation(line: 157, column: 2, scope: !1906)
!1928 = !DILocation(line: 158, column: 9, scope: !1906)
!1929 = !DILocation(line: 158, column: 2, scope: !1906)
!1930 = distinct !DISubprogram(name: "pulse_queue_check_window", scope: !3, file: !3, line: 182, type: !104, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1931 = !DILocalVariable(name: "pde", arg: 1, scope: !1930, file: !3, line: 182, type: !99)
!1932 = !DILocation(line: 182, column: 59, scope: !1930)
!1933 = !DILocalVariable(name: "min_valid_ts", scope: !1930, file: !3, line: 184, type: !32)
!1934 = !DILocation(line: 184, column: 6, scope: !1930)
!1935 = !DILocalVariable(name: "p", scope: !1930, file: !3, line: 185, type: !22)
!1936 = !DILocation(line: 185, column: 21, scope: !1930)
!1937 = !DILocation(line: 188, column: 6, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 188, column: 6)
!1939 = !DILocation(line: 188, column: 11, scope: !1938)
!1940 = !DILocation(line: 188, column: 17, scope: !1938)
!1941 = !DILocation(line: 188, column: 6, scope: !1930)
!1942 = !DILocation(line: 189, column: 3, scope: !1938)
!1943 = !DILocation(line: 191, column: 6, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 191, column: 6)
!1945 = !DILocation(line: 191, column: 11, scope: !1944)
!1946 = !DILocation(line: 191, column: 22, scope: !1944)
!1947 = !DILocation(line: 191, column: 27, scope: !1944)
!1948 = !DILocation(line: 191, column: 19, scope: !1944)
!1949 = !DILocation(line: 191, column: 6, scope: !1930)
!1950 = !DILocation(line: 192, column: 3, scope: !1944)
!1951 = !DILocation(line: 194, column: 17, scope: !1930)
!1952 = !DILocation(line: 194, column: 22, scope: !1930)
!1953 = !DILocation(line: 194, column: 32, scope: !1930)
!1954 = !DILocation(line: 194, column: 37, scope: !1930)
!1955 = !DILocation(line: 194, column: 30, scope: !1930)
!1956 = !DILocation(line: 194, column: 15, scope: !1930)
!1957 = !DILocation(line: 195, column: 2, scope: !1930)
!1958 = !DILocation(line: 195, column: 35, scope: !1930)
!1959 = !DILocation(line: 195, column: 14, scope: !1930)
!1960 = !DILocation(line: 195, column: 12, scope: !1930)
!1961 = !DILocation(line: 195, column: 41, scope: !1930)
!1962 = !DILocation(line: 196, column: 7, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 196, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 195, column: 50)
!1965 = !DILocation(line: 196, column: 10, scope: !1963)
!1966 = !DILocation(line: 196, column: 16, scope: !1963)
!1967 = !DILocation(line: 196, column: 13, scope: !1963)
!1968 = !DILocation(line: 196, column: 7, scope: !1964)
!1969 = !DILocation(line: 197, column: 4, scope: !1963)
!1970 = !DILocation(line: 198, column: 23, scope: !1964)
!1971 = !DILocation(line: 198, column: 3, scope: !1964)
!1972 = distinct !{!1972, !1957, !1973}
!1973 = !DILocation(line: 199, column: 2, scope: !1930)
!1974 = !DILocation(line: 200, column: 1, scope: !1930)
!1975 = distinct !DISubprogram(name: "pulse_queue_dequeue", scope: !3, file: !3, line: 169, type: !1976, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!124, !99}
!1978 = !DILocalVariable(name: "pde", arg: 1, scope: !1975, file: !3, line: 169, type: !99)
!1979 = !DILocation(line: 169, column: 54, scope: !1975)
!1980 = !DILocalVariable(name: "p", scope: !1975, file: !3, line: 171, type: !22)
!1981 = !DILocation(line: 171, column: 21, scope: !1975)
!1982 = !DILocation(line: 171, column: 46, scope: !1975)
!1983 = !DILocation(line: 171, column: 25, scope: !1975)
!1984 = !DILocation(line: 172, column: 6, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 172, column: 6)
!1986 = !DILocation(line: 172, column: 8, scope: !1985)
!1987 = !DILocation(line: 172, column: 6, scope: !1975)
!1988 = !DILocation(line: 173, column: 18, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 172, column: 17)
!1990 = !DILocation(line: 173, column: 21, scope: !1989)
!1991 = !DILocation(line: 173, column: 3, scope: !1989)
!1992 = !DILocation(line: 174, column: 3, scope: !1989)
!1993 = !DILocation(line: 174, column: 8, scope: !1989)
!1994 = !DILocation(line: 174, column: 13, scope: !1989)
!1995 = !DILocation(line: 176, column: 23, scope: !1989)
!1996 = !DILocation(line: 176, column: 3, scope: !1989)
!1997 = !DILocation(line: 177, column: 2, scope: !1989)
!1998 = !DILocation(line: 178, column: 10, scope: !1975)
!1999 = !DILocation(line: 178, column: 15, scope: !1975)
!2000 = !DILocation(line: 178, column: 21, scope: !1975)
!2001 = !DILocation(line: 178, column: 2, scope: !1975)
!2002 = distinct !DISubprogram(name: "pulse_queue_get_tail", scope: !3, file: !3, line: 161, type: !2003, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!22, !99}
!2005 = !DILocalVariable(name: "pde", arg: 1, scope: !2002, file: !3, line: 161, type: !99)
!2006 = !DILocation(line: 161, column: 69, scope: !2002)
!2007 = !DILocalVariable(name: "l", scope: !2002, file: !3, line: 163, type: !29)
!2008 = !DILocation(line: 163, column: 20, scope: !2002)
!2009 = !DILocation(line: 163, column: 25, scope: !2002)
!2010 = !DILocation(line: 163, column: 30, scope: !2002)
!2011 = !DILocation(line: 164, column: 17, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 164, column: 6)
!2013 = !DILocation(line: 164, column: 6, scope: !2012)
!2014 = !DILocation(line: 164, column: 6, scope: !2002)
!2015 = !DILocation(line: 165, column: 3, scope: !2012)
!2016 = !DILocalVariable(name: "__mptr", scope: !2017, file: !3, line: 166, type: !21)
!2017 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 166, column: 9)
!2018 = !DILocation(line: 166, column: 9, scope: !2017)
!2019 = !DILocation(line: 166, column: 9, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 166, column: 9)
!2021 = !DILocation(line: 166, column: 2, scope: !2002)
!2022 = !DILocation(line: 167, column: 1, scope: !2002)
!2023 = distinct !DISubprogram(name: "pool_put_pulse_elem", scope: !3, file: !3, line: 119, type: !2024, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !74)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !22}
!2026 = !DILocalVariable(name: "pe", arg: 1, scope: !2023, file: !3, line: 119, type: !22)
!2027 = !DILocation(line: 119, column: 52, scope: !2023)
!2028 = !DILocation(line: 121, column: 2, scope: !2023)
!2029 = !DILocation(line: 122, column: 12, scope: !2023)
!2030 = !DILocation(line: 122, column: 16, scope: !2023)
!2031 = !DILocation(line: 122, column: 2, scope: !2023)
!2032 = !DILocation(line: 123, column: 2, scope: !2023)
!2033 = !DILocation(line: 124, column: 2, scope: !2023)
!2034 = !DILocation(line: 125, column: 1, scope: !2023)
