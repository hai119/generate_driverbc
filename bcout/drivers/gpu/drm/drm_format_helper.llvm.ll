; ModuleID = '../bcout/drivers/gpu/drm/drm_format_helper.llvm.bc'
source_filename = "drivers/gpu/drm/drm_format_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.drm_framebuffer = type { %struct.drm_device*, %struct.list_head, %struct.drm_mode_object, [16 x i8], %struct.drm_format_info*, %struct.drm_framebuffer_funcs*, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x %struct.drm_gem_object*] }
%struct.drm_device = type opaque
%struct.drm_mode_object = type { i32, i32, %struct.drm_object_properties*, %struct.kref, void (%struct.kref*)* }
%struct.drm_object_properties = type { i32, [24 x %struct.drm_property*], [24 x i64] }
%struct.drm_property = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon = type { [4 x i8] }
%struct.drm_framebuffer_funcs = type { void (%struct.drm_framebuffer*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32*)*, i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* }
%struct.drm_file = type opaque
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.drm_gem_object = type opaque
%struct.drm_rect = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"drivers/gpu/drm/drm_format_helper.c\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_fb_memcpy(i8* %dst, i8* %vaddr, %struct.drm_framebuffer* %fb, %struct.drm_rect* %clip) #0 !dbg !24 {
entry:
  %dst.addr = alloca i8*, align 8
  %vaddr.addr = alloca i8*, align 8
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  %clip.addr = alloca %struct.drm_rect*, align 8
  %cpp = alloca i32, align 4
  %len = alloca i64, align 8
  %y = alloca i32, align 4
  %lines = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !171, metadata !DIExpression()), !dbg !172
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !173, metadata !DIExpression()), !dbg !174
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !175, metadata !DIExpression()), !dbg !176
  store %struct.drm_rect* %clip, %struct.drm_rect** %clip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %clip.addr, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %cpp, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !181
  %format = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %0, i32 0, i32 4, !dbg !182
  %1 = load %struct.drm_format_info*, %struct.drm_format_info** %format, align 8, !dbg !182
  %2 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %1, i32 0, i32 3, !dbg !183
  %cpp1 = bitcast %union.anon* %2 to [4 x i8]*, !dbg !183
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %cpp1, i64 0, i64 0, !dbg !181
  %3 = load i8, i8* %arrayidx, align 2, !dbg !181
  %conv = zext i8 %3 to i32, !dbg !181
  store i32 %conv, i32* %cpp, align 4, !dbg !180
  call void @llvm.dbg.declare(metadata i64* %len, metadata !184, metadata !DIExpression()), !dbg !190
  %4 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !191
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %4, i32 0, i32 2, !dbg !192
  %5 = load i32, i32* %x2, align 4, !dbg !192
  %6 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !193
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %6, i32 0, i32 0, !dbg !194
  %7 = load i32, i32* %x1, align 4, !dbg !194
  %sub = sub i32 %5, %7, !dbg !195
  %8 = load i32, i32* %cpp, align 4, !dbg !196
  %mul = mul i32 %sub, %8, !dbg !197
  %conv2 = zext i32 %mul to i64, !dbg !198
  store i64 %conv2, i64* %len, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i32* %y, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata i32* %lines, metadata !201, metadata !DIExpression()), !dbg !202
  %9 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !203
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 3, !dbg !204
  %10 = load i32, i32* %y2, align 4, !dbg !204
  %11 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !205
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %11, i32 0, i32 1, !dbg !206
  %12 = load i32, i32* %y1, align 4, !dbg !206
  %sub3 = sub i32 %10, %12, !dbg !207
  store i32 %sub3, i32* %lines, align 4, !dbg !202
  %13 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !208
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !209
  %pitches = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %14, i32 0, i32 6, !dbg !210
  %arrayidx4 = getelementptr [4 x i32], [4 x i32]* %pitches, i64 0, i64 0, !dbg !209
  %15 = load i32, i32* %arrayidx4, align 8, !dbg !209
  %16 = load i32, i32* %cpp, align 4, !dbg !211
  %call = call i32 @clip_offset(%struct.drm_rect* %13, i32 %15, i32 %16) #7, !dbg !212
  %17 = load i8*, i8** %vaddr.addr, align 8, !dbg !213
  %idx.ext = zext i32 %call to i64, !dbg !213
  %add.ptr = getelementptr i8, i8* %17, i64 %idx.ext, !dbg !213
  store i8* %add.ptr, i8** %vaddr.addr, align 8, !dbg !213
  store i32 0, i32* %y, align 4, !dbg !214
  br label %for.cond, !dbg !216

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* %y, align 4, !dbg !217
  %19 = load i32, i32* %lines, align 4, !dbg !219
  %cmp = icmp ult i32 %18, %19, !dbg !220
  br i1 %cmp, label %for.body, label %for.end, !dbg !221

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %dst.addr, align 8, !dbg !222
  %21 = load i8*, i8** %vaddr.addr, align 8, !dbg !224
  %22 = load i64, i64* %len, align 8, !dbg !225
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %21, i64 %22, i1 false), !dbg !226
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !227
  %pitches6 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %23, i32 0, i32 6, !dbg !228
  %arrayidx7 = getelementptr [4 x i32], [4 x i32]* %pitches6, i64 0, i64 0, !dbg !227
  %24 = load i32, i32* %arrayidx7, align 8, !dbg !227
  %25 = load i8*, i8** %vaddr.addr, align 8, !dbg !229
  %idx.ext8 = zext i32 %24 to i64, !dbg !229
  %add.ptr9 = getelementptr i8, i8* %25, i64 %idx.ext8, !dbg !229
  store i8* %add.ptr9, i8** %vaddr.addr, align 8, !dbg !229
  %26 = load i64, i64* %len, align 8, !dbg !230
  %27 = load i8*, i8** %dst.addr, align 8, !dbg !231
  %add.ptr10 = getelementptr i8, i8* %27, i64 %26, !dbg !231
  store i8* %add.ptr10, i8** %dst.addr, align 8, !dbg !231
  br label %for.inc, !dbg !232

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %y, align 4, !dbg !233
  %inc = add i32 %28, 1, !dbg !233
  store i32 %inc, i32* %y, align 4, !dbg !233
  br label %for.cond, !dbg !234, !llvm.loop !235

for.end:                                          ; preds = %for.cond
  ret void, !dbg !237
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clip_offset(%struct.drm_rect* %clip, i32 %pitch, i32 %cpp) #0 !dbg !238 {
entry:
  %clip.addr = alloca %struct.drm_rect*, align 8
  %pitch.addr = alloca i32, align 4
  %cpp.addr = alloca i32, align 4
  store %struct.drm_rect* %clip, %struct.drm_rect** %clip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %clip.addr, metadata !241, metadata !DIExpression()), !dbg !242
  store i32 %pitch, i32* %pitch.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pitch.addr, metadata !243, metadata !DIExpression()), !dbg !244
  store i32 %cpp, i32* %cpp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpp.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !247
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %0, i32 0, i32 1, !dbg !248
  %1 = load i32, i32* %y1, align 4, !dbg !248
  %2 = load i32, i32* %pitch.addr, align 4, !dbg !249
  %mul = mul i32 %1, %2, !dbg !250
  %3 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !251
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %3, i32 0, i32 0, !dbg !252
  %4 = load i32, i32* %x1, align 4, !dbg !252
  %5 = load i32, i32* %cpp.addr, align 4, !dbg !253
  %mul1 = mul i32 %4, %5, !dbg !254
  %add = add i32 %mul, %mul1, !dbg !255
  ret i32 %add, !dbg !256
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_fb_memcpy_dstclip(i8* %dst, i8* %vaddr, %struct.drm_framebuffer* %fb, %struct.drm_rect* %clip) #0 !dbg !257 {
entry:
  %dst.addr = alloca i8*, align 8
  %vaddr.addr = alloca i8*, align 8
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  %clip.addr = alloca %struct.drm_rect*, align 8
  %cpp = alloca i32, align 4
  %offset = alloca i32, align 4
  %len = alloca i64, align 8
  %y = alloca i32, align 4
  %lines = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !258, metadata !DIExpression()), !dbg !259
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !260, metadata !DIExpression()), !dbg !261
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !262, metadata !DIExpression()), !dbg !263
  store %struct.drm_rect* %clip, %struct.drm_rect** %clip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %clip.addr, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i32* %cpp, metadata !266, metadata !DIExpression()), !dbg !267
  %0 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !268
  %format = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %0, i32 0, i32 4, !dbg !269
  %1 = load %struct.drm_format_info*, %struct.drm_format_info** %format, align 8, !dbg !269
  %2 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %1, i32 0, i32 3, !dbg !270
  %cpp1 = bitcast %union.anon* %2 to [4 x i8]*, !dbg !270
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %cpp1, i64 0, i64 0, !dbg !268
  %3 = load i8, i8* %arrayidx, align 2, !dbg !268
  %conv = zext i8 %3 to i32, !dbg !268
  store i32 %conv, i32* %cpp, align 4, !dbg !267
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !271, metadata !DIExpression()), !dbg !272
  %4 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !273
  %5 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !274
  %pitches = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %5, i32 0, i32 6, !dbg !275
  %arrayidx2 = getelementptr [4 x i32], [4 x i32]* %pitches, i64 0, i64 0, !dbg !274
  %6 = load i32, i32* %arrayidx2, align 8, !dbg !274
  %7 = load i32, i32* %cpp, align 4, !dbg !276
  %call = call i32 @clip_offset(%struct.drm_rect* %4, i32 %6, i32 %7) #7, !dbg !277
  store i32 %call, i32* %offset, align 4, !dbg !272
  call void @llvm.dbg.declare(metadata i64* %len, metadata !278, metadata !DIExpression()), !dbg !279
  %8 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !280
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 2, !dbg !281
  %9 = load i32, i32* %x2, align 4, !dbg !281
  %10 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !282
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %10, i32 0, i32 0, !dbg !283
  %11 = load i32, i32* %x1, align 4, !dbg !283
  %sub = sub i32 %9, %11, !dbg !284
  %12 = load i32, i32* %cpp, align 4, !dbg !285
  %mul = mul i32 %sub, %12, !dbg !286
  %conv3 = zext i32 %mul to i64, !dbg !287
  store i64 %conv3, i64* %len, align 8, !dbg !279
  call void @llvm.dbg.declare(metadata i32* %y, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata i32* %lines, metadata !290, metadata !DIExpression()), !dbg !291
  %13 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !292
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %13, i32 0, i32 3, !dbg !293
  %14 = load i32, i32* %y2, align 4, !dbg !293
  %15 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !294
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %15, i32 0, i32 1, !dbg !295
  %16 = load i32, i32* %y1, align 4, !dbg !295
  %sub4 = sub i32 %14, %16, !dbg !296
  store i32 %sub4, i32* %lines, align 4, !dbg !291
  %17 = load i32, i32* %offset, align 4, !dbg !297
  %18 = load i8*, i8** %vaddr.addr, align 8, !dbg !298
  %idx.ext = zext i32 %17 to i64, !dbg !298
  %add.ptr = getelementptr i8, i8* %18, i64 %idx.ext, !dbg !298
  store i8* %add.ptr, i8** %vaddr.addr, align 8, !dbg !298
  %19 = load i32, i32* %offset, align 4, !dbg !299
  %20 = load i8*, i8** %dst.addr, align 8, !dbg !300
  %idx.ext5 = zext i32 %19 to i64, !dbg !300
  %add.ptr6 = getelementptr i8, i8* %20, i64 %idx.ext5, !dbg !300
  store i8* %add.ptr6, i8** %dst.addr, align 8, !dbg !300
  store i32 0, i32* %y, align 4, !dbg !301
  br label %for.cond, !dbg !303

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %y, align 4, !dbg !304
  %22 = load i32, i32* %lines, align 4, !dbg !306
  %cmp = icmp ult i32 %21, %22, !dbg !307
  br i1 %cmp, label %for.body, label %for.end, !dbg !308

for.body:                                         ; preds = %for.cond
  %23 = load i8*, i8** %dst.addr, align 8, !dbg !309
  %24 = load i8*, i8** %vaddr.addr, align 8, !dbg !311
  %25 = load i64, i64* %len, align 8, !dbg !312
  call void @memcpy_toio(i8* %23, i8* %24, i64 %25) #7, !dbg !313
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !314
  %pitches8 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %26, i32 0, i32 6, !dbg !315
  %arrayidx9 = getelementptr [4 x i32], [4 x i32]* %pitches8, i64 0, i64 0, !dbg !314
  %27 = load i32, i32* %arrayidx9, align 8, !dbg !314
  %28 = load i8*, i8** %vaddr.addr, align 8, !dbg !316
  %idx.ext10 = zext i32 %27 to i64, !dbg !316
  %add.ptr11 = getelementptr i8, i8* %28, i64 %idx.ext10, !dbg !316
  store i8* %add.ptr11, i8** %vaddr.addr, align 8, !dbg !316
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !317
  %pitches12 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %29, i32 0, i32 6, !dbg !318
  %arrayidx13 = getelementptr [4 x i32], [4 x i32]* %pitches12, i64 0, i64 0, !dbg !317
  %30 = load i32, i32* %arrayidx13, align 8, !dbg !317
  %31 = load i8*, i8** %dst.addr, align 8, !dbg !319
  %idx.ext14 = zext i32 %30 to i64, !dbg !319
  %add.ptr15 = getelementptr i8, i8* %31, i64 %idx.ext14, !dbg !319
  store i8* %add.ptr15, i8** %dst.addr, align 8, !dbg !319
  br label %for.inc, !dbg !320

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %y, align 4, !dbg !321
  %inc = add i32 %32, 1, !dbg !321
  store i32 %inc, i32* %y, align 4, !dbg !321
  br label %for.cond, !dbg !322, !llvm.loop !323

for.end:                                          ; preds = %for.cond
  ret void, !dbg !325
}

; Function Attrs: noredzone
declare dso_local void @memcpy_toio(i8*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_fb_swab(i8* %dst, i8* %src, %struct.drm_framebuffer* %fb, %struct.drm_rect* %clip, i1 zeroext %cached) #0 !dbg !326 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !329, metadata !DIExpression()), !dbg !336
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !345, metadata !DIExpression()), !dbg !346
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !347, metadata !DIExpression()), !dbg !348
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !349, metadata !DIExpression()), !dbg !350
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !351, metadata !DIExpression()), !dbg !355
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !357, metadata !DIExpression()), !dbg !361
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !363, metadata !DIExpression()), !dbg !367
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !372, metadata !DIExpression()), !dbg !373
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !374, metadata !DIExpression()), !dbg !375
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !376, metadata !DIExpression()), !dbg !377
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !378, metadata !DIExpression()), !dbg !379
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !380, metadata !DIExpression()), !dbg !381
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !382, metadata !DIExpression()), !dbg !383
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !384, metadata !DIExpression()), !dbg !385
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !386, metadata !DIExpression()), !dbg !387
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  %clip.addr = alloca %struct.drm_rect*, align 8
  %cached.addr = alloca i8, align 1
  %cpp = alloca i8, align 1
  %len = alloca i64, align 8
  %src16 = alloca i16*, align 8
  %dst16 = alloca i16*, align 8
  %src32 = alloca i32*, align 8
  %dst32 = alloca i32*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %buf = alloca i8*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !388, metadata !DIExpression()), !dbg !389
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !390, metadata !DIExpression()), !dbg !391
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !392, metadata !DIExpression()), !dbg !393
  store %struct.drm_rect* %clip, %struct.drm_rect** %clip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %clip.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %frombool = zext i1 %cached to i8
  store i8 %frombool, i8* %cached.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cached.addr, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata i8* %cpp, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !400
  %format = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %0, i32 0, i32 4, !dbg !401
  %1 = load %struct.drm_format_info*, %struct.drm_format_info** %format, align 8, !dbg !401
  %2 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %1, i32 0, i32 3, !dbg !402
  %cpp1 = bitcast %union.anon* %2 to [4 x i8]*, !dbg !402
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %cpp1, i64 0, i64 0, !dbg !400
  %3 = load i8, i8* %arrayidx, align 2, !dbg !400
  store i8 %3, i8* %cpp, align 1, !dbg !399
  call void @llvm.dbg.declare(metadata i64* %len, metadata !403, metadata !DIExpression()), !dbg !404
  %4 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !405
  %call = call i32 @drm_rect_width(%struct.drm_rect* %4) #7, !dbg !406
  %5 = load i8, i8* %cpp, align 1, !dbg !407
  %conv = zext i8 %5 to i32, !dbg !407
  %mul = mul i32 %call, %conv, !dbg !408
  %conv2 = sext i32 %mul to i64, !dbg !406
  store i64 %conv2, i64* %len, align 8, !dbg !404
  call void @llvm.dbg.declare(metadata i16** %src16, metadata !409, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata i16** %dst16, metadata !413, metadata !DIExpression()), !dbg !414
  %6 = load i8*, i8** %dst.addr, align 8, !dbg !415
  %7 = bitcast i8* %6 to i16*, !dbg !415
  store i16* %7, i16** %dst16, align 8, !dbg !414
  call void @llvm.dbg.declare(metadata i32** %src32, metadata !416, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata i32** %dst32, metadata !419, metadata !DIExpression()), !dbg !420
  %8 = load i8*, i8** %dst.addr, align 8, !dbg !421
  %9 = bitcast i8* %8 to i32*, !dbg !421
  store i32* %9, i32** %dst32, align 8, !dbg !420
  call void @llvm.dbg.declare(metadata i32* %x, metadata !422, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.declare(metadata i32* %y, metadata !424, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !426, metadata !DIExpression()), !dbg !427
  store i8* null, i8** %buf, align 8, !dbg !427
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !428, metadata !DIExpression()), !dbg !431
  %10 = load i8, i8* %cpp, align 1, !dbg !431
  %conv3 = zext i8 %10 to i32, !dbg !431
  %cmp = icmp ne i32 %conv3, 2, !dbg !431
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !431

land.rhs:                                         ; preds = %entry
  %11 = load i8, i8* %cpp, align 1, !dbg !431
  %conv5 = zext i8 %11 to i32, !dbg !431
  %cmp6 = icmp ne i32 %conv5, 4, !dbg !431
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %cmp6, %land.rhs ], !dbg !432
  %lnot = xor i1 %12, true, !dbg !431
  %lnot8 = xor i1 %lnot, true, !dbg !431
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !431
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !431
  %13 = load i32, i32* %__ret_warn_on, align 4, !dbg !433
  %tobool = icmp ne i32 %13, 0, !dbg !433
  %lnot9 = xor i1 %tobool, true, !dbg !433
  %lnot11 = xor i1 %lnot9, true, !dbg !433
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !433
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !433
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !433
  br i1 %tobool14, label %if.then, label %if.end, !dbg !431

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !433

do.body:                                          ; preds = %if.then
  br label %do.body15, !dbg !435

do.body15:                                        ; preds = %do.body
  br label %do.end, !dbg !437

do.end:                                           ; preds = %do.body15
  br label %do.body16, !dbg !435

do.body16:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 105, i32 2307, i64 12) #8, !dbg !439, !srcloc !441
  br label %do.end17, !dbg !439

do.end17:                                         ; preds = %do.body16
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #8, !dbg !442, !srcloc !444
  br label %do.body18, !dbg !435

do.body18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !445

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !435

do.end20:                                         ; preds = %do.end19
  br label %if.end, !dbg !435

if.end:                                           ; preds = %do.end20, %land.end
  %14 = load i32, i32* %__ret_warn_on, align 4, !dbg !431
  %tobool21 = icmp ne i32 %14, 0, !dbg !431
  %lnot22 = xor i1 %tobool21, true, !dbg !431
  %lnot24 = xor i1 %lnot22, true, !dbg !431
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !431
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !431
  store i64 %conv26, i64* %tmp, align 8, !dbg !433
  %15 = load i64, i64* %tmp, align 8, !dbg !431
  %tobool27 = icmp ne i64 %15, 0, !dbg !447
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !448

if.then28:                                        ; preds = %if.end
  br label %return, !dbg !449

if.end29:                                         ; preds = %if.end
  %16 = load i8, i8* %cached.addr, align 1, !dbg !450
  %tobool30 = trunc i8 %16 to i1, !dbg !450
  br i1 %tobool30, label %if.end33, label %if.then31, !dbg !451

if.then31:                                        ; preds = %if.end29
  %17 = load i64, i64* %len, align 8, !dbg !452
  store i64 %17, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !453
  %19 = call i1 @llvm.is.constant.i64(i64 %18) #8, !dbg !454
  br i1 %19, label %if.then.i, label %if.end9.i, !dbg !455

if.then.i:                                        ; preds = %if.then31
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !456
  %cmp.i = icmp ugt i64 %20, 8192, !dbg !457
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !458

if.then1.i:                                       ; preds = %if.then.i
  %21 = load i64, i64* %size.addr.i, align 8, !dbg !459
  %22 = load i32, i32* %flags.addr.i, align 4, !dbg !460
  store i64 %21, i64* %size.addr.i.i, align 8
  store i32 %22, i32* %flags.addr.i.i, align 4
  %23 = load i64, i64* %size.addr.i.i, align 8, !dbg !461
  %call.i.i = call i32 @get_order(i64 %23) #9, !dbg !462
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !381
  %24 = load i64, i64* %size.addr.i.i, align 8, !dbg !463
  %25 = load i32, i32* %flags.addr.i.i, align 4, !dbg !464
  %26 = load i32, i32* %order.i.i, align 4, !dbg !465
  store i64 %24, i64* %size.addr.i.i.i, align 8
  store i32 %25, i32* %flags.addr.i.i.i, align 4
  store i32 %26, i32* %order.addr.i.i.i, align 4
  %27 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !466
  %28 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !467
  %29 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !468
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %27, i32 %28, i32 %29) #10, !dbg !469
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !469
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !469
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !469
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !469
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !470
  br label %kmalloc.exit, !dbg !470

if.end.i:                                         ; preds = %if.then.i
  %30 = load i64, i64* %size.addr.i, align 8, !dbg !471
  store i64 %30, i64* %size.addr.i11.i, align 8
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !472
  %tobool.i.i = icmp ne i64 %31, 0, !dbg !472
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !474

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !475
  br label %kmalloc_index.exit.i, !dbg !475

if.end.i.i:                                       ; preds = %if.end.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !476
  %cmp.i.i = icmp ule i64 %32, 8, !dbg !478
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !479

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !480
  br label %kmalloc_index.exit.i, !dbg !480

if.end2.i.i:                                      ; preds = %if.end.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !481
  %cmp3.i.i = icmp ugt i64 %33, 64, !dbg !483
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !484

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !485
  %cmp4.i.i = icmp ule i64 %34, 96, !dbg !486
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !487

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !488
  br label %kmalloc_index.exit.i, !dbg !488

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !489
  %cmp7.i.i = icmp ugt i64 %35, 128, !dbg !491
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !492

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !493
  %cmp9.i.i = icmp ule i64 %36, 192, !dbg !494
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !495

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !496
  br label %kmalloc_index.exit.i, !dbg !496

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !497
  %cmp12.i.i = icmp ule i64 %37, 8, !dbg !499
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !500

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !501
  br label %kmalloc_index.exit.i, !dbg !501

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !502
  %cmp15.i.i = icmp ule i64 %38, 16, !dbg !504
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !505

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !506
  br label %kmalloc_index.exit.i, !dbg !506

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !507
  %cmp18.i.i = icmp ule i64 %39, 32, !dbg !509
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !510

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !511
  br label %kmalloc_index.exit.i, !dbg !511

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !512
  %cmp21.i.i = icmp ule i64 %40, 64, !dbg !514
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !515

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !516
  br label %kmalloc_index.exit.i, !dbg !516

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !517
  %cmp24.i.i = icmp ule i64 %41, 128, !dbg !519
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !520

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !521
  br label %kmalloc_index.exit.i, !dbg !521

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !522
  %cmp27.i.i = icmp ule i64 %42, 256, !dbg !524
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !525

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !526
  br label %kmalloc_index.exit.i, !dbg !526

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !527
  %cmp30.i.i = icmp ule i64 %43, 512, !dbg !529
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !530

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !531
  br label %kmalloc_index.exit.i, !dbg !531

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !532
  %cmp33.i.i = icmp ule i64 %44, 1024, !dbg !534
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !535

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !536
  br label %kmalloc_index.exit.i, !dbg !536

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !537
  %cmp36.i.i = icmp ule i64 %45, 2048, !dbg !539
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !540

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !541
  br label %kmalloc_index.exit.i, !dbg !541

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !542
  %cmp39.i.i = icmp ule i64 %46, 4096, !dbg !544
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !545

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !546
  br label %kmalloc_index.exit.i, !dbg !546

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !547
  %cmp42.i.i = icmp ule i64 %47, 8192, !dbg !549
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !550

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !551
  br label %kmalloc_index.exit.i, !dbg !551

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !552
  %cmp45.i.i = icmp ule i64 %48, 16384, !dbg !554
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !555

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !556
  br label %kmalloc_index.exit.i, !dbg !556

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !557
  %cmp48.i.i = icmp ule i64 %49, 32768, !dbg !559
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !560

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !561
  br label %kmalloc_index.exit.i, !dbg !561

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !562
  %cmp51.i.i = icmp ule i64 %50, 65536, !dbg !564
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !565

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !566
  br label %kmalloc_index.exit.i, !dbg !566

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !567
  %cmp54.i.i = icmp ule i64 %51, 131072, !dbg !569
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !570

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !571
  br label %kmalloc_index.exit.i, !dbg !571

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !572
  %cmp57.i.i = icmp ule i64 %52, 262144, !dbg !574
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !575

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !576
  br label %kmalloc_index.exit.i, !dbg !576

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !577
  %cmp60.i.i = icmp ule i64 %53, 524288, !dbg !579
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !580

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !581
  br label %kmalloc_index.exit.i, !dbg !581

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !582
  %cmp63.i.i = icmp ule i64 %54, 1048576, !dbg !584
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !585

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !586
  br label %kmalloc_index.exit.i, !dbg !586

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !587
  %cmp66.i.i = icmp ule i64 %55, 2097152, !dbg !589
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !590

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !591
  br label %kmalloc_index.exit.i, !dbg !591

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !592
  %cmp69.i.i = icmp ule i64 %56, 4194304, !dbg !594
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !595

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !596
  br label %kmalloc_index.exit.i, !dbg !596

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !597
  %cmp72.i.i = icmp ule i64 %57, 8388608, !dbg !599
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !600

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !601
  br label %kmalloc_index.exit.i, !dbg !601

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !602
  %cmp75.i.i = icmp ule i64 %58, 16777216, !dbg !604
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !605

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !606
  br label %kmalloc_index.exit.i, !dbg !606

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !607
  %cmp78.i.i = icmp ule i64 %59, 33554432, !dbg !609
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !610

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !611
  br label %kmalloc_index.exit.i, !dbg !611

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !612
  %cmp81.i.i = icmp ule i64 %60, 67108864, !dbg !614
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !615

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !616
  br label %kmalloc_index.exit.i, !dbg !616

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !617, !srcloc !620
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #8, !dbg !621, !srcloc !624
  unreachable, !dbg !625

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %61 = load i32, i32* %retval.i.i, align 4, !dbg !626
  store i32 %61, i32* %index.i, align 4, !dbg !627
  %62 = load i32, i32* %index.i, align 4, !dbg !628
  %tobool.i = icmp ne i32 %62, 0, !dbg !628
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !630

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !631
  br label %kmalloc.exit, !dbg !631

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %63 = load i32, i32* %flags.addr.i, align 4, !dbg !632
  store i32 %63, i32* %flags.addr.i13.i, align 4
  %64 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !633
  %and.i.i = and i32 %64, 17, !dbg !633
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !633
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !633
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !633
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !633
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !635

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !636
  br label %kmalloc_type.exit.i, !dbg !636

if.end.i16.i:                                     ; preds = %if.end4.i
  %65 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !637
  %and2.i.i = and i32 %65, 1, !dbg !638
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !637
  %66 = zext i1 %tobool3.i.i to i64, !dbg !637
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !637
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !639
  br label %kmalloc_type.exit.i, !dbg !639

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %67 = load i32, i32* %retval.i12.i, align 4, !dbg !640
  %idxprom.i = zext i32 %67 to i64, !dbg !641
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !641
  %68 = load i32, i32* %index.i, align 4, !dbg !642
  %idxprom6.i = zext i32 %68 to i64, !dbg !641
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !641
  %69 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !641
  %70 = load i32, i32* %flags.addr.i, align 4, !dbg !643
  %71 = load i64, i64* %size.addr.i, align 8, !dbg !644
  store %struct.kmem_cache* %69, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %70, i32* %flags.addr.i17.i, align 4
  store i64 %71, i64* %size.addr.i18.i, align 8
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !645
  %73 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !646
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %72, i32 %73) #10, !dbg !647
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !647
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !647
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !647
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !647
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !350
  %74 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !648
  %75 = load i8*, i8** %ret.i.i, align 8, !dbg !649
  %76 = load i64, i64* %size.addr.i18.i, align 8, !dbg !650
  %77 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !651
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %74, i8* %75, i64 %76, i32 %77) #10, !dbg !652
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !653
  %78 = load i8*, i8** %ret.i.i, align 8, !dbg !654
  store i8* %78, i8** %retval.i, align 8, !dbg !655
  br label %kmalloc.exit, !dbg !655

if.end9.i:                                        ; preds = %if.then31
  %79 = load i64, i64* %size.addr.i, align 8, !dbg !656
  %80 = load i32, i32* %flags.addr.i, align 4, !dbg !657
  %call10.i = call noalias i8* @__kmalloc(i64 %79, i32 %80) #10, !dbg !658
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !658
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !658
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !658
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !658
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !659
  br label %kmalloc.exit, !dbg !659

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %81 = load i8*, i8** %retval.i, align 8, !dbg !660
  store i8* %81, i8** %buf, align 8, !dbg !661
  br label %if.end33, !dbg !662

if.end33:                                         ; preds = %kmalloc.exit, %if.end29
  %82 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !663
  %83 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !664
  %pitches = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %83, i32 0, i32 6, !dbg !665
  %arrayidx34 = getelementptr [4 x i32], [4 x i32]* %pitches, i64 0, i64 0, !dbg !664
  %84 = load i32, i32* %arrayidx34, align 8, !dbg !664
  %85 = load i8, i8* %cpp, align 1, !dbg !666
  %conv35 = zext i8 %85 to i32, !dbg !666
  %call36 = call i32 @clip_offset(%struct.drm_rect* %82, i32 %84, i32 %conv35) #7, !dbg !667
  %86 = load i8*, i8** %src.addr, align 8, !dbg !668
  %idx.ext = zext i32 %call36 to i64, !dbg !668
  %add.ptr = getelementptr i8, i8* %86, i64 %idx.ext, !dbg !668
  store i8* %add.ptr, i8** %src.addr, align 8, !dbg !668
  %87 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !669
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %87, i32 0, i32 1, !dbg !671
  %88 = load i32, i32* %y1, align 4, !dbg !671
  store i32 %88, i32* %y, align 4, !dbg !672
  br label %for.cond, !dbg !673

for.cond:                                         ; preds = %for.inc63, %if.end33
  %89 = load i32, i32* %y, align 4, !dbg !674
  %90 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !676
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %90, i32 0, i32 3, !dbg !677
  %91 = load i32, i32* %y2, align 4, !dbg !677
  %cmp37 = icmp ult i32 %89, %91, !dbg !678
  br i1 %cmp37, label %for.body, label %for.end65, !dbg !679

for.body:                                         ; preds = %for.cond
  %92 = load i8*, i8** %buf, align 8, !dbg !680
  %tobool39 = icmp ne i8* %92, null, !dbg !680
  br i1 %tobool39, label %if.then40, label %if.else, !dbg !683

if.then40:                                        ; preds = %for.body
  %93 = load i8*, i8** %buf, align 8, !dbg !684
  %94 = load i8*, i8** %src.addr, align 8, !dbg !686
  %95 = load i64, i64* %len, align 8, !dbg !687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %93, i8* align 1 %94, i64 %95, i1 false), !dbg !688
  %96 = load i8*, i8** %buf, align 8, !dbg !689
  %97 = bitcast i8* %96 to i16*, !dbg !689
  store i16* %97, i16** %src16, align 8, !dbg !690
  %98 = load i8*, i8** %buf, align 8, !dbg !691
  %99 = bitcast i8* %98 to i32*, !dbg !691
  store i32* %99, i32** %src32, align 8, !dbg !692
  br label %if.end41, !dbg !693

if.else:                                          ; preds = %for.body
  %100 = load i8*, i8** %src.addr, align 8, !dbg !694
  %101 = bitcast i8* %100 to i16*, !dbg !694
  store i16* %101, i16** %src16, align 8, !dbg !696
  %102 = load i8*, i8** %src.addr, align 8, !dbg !697
  %103 = bitcast i8* %102 to i32*, !dbg !697
  store i32* %103, i32** %src32, align 8, !dbg !698
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then40
  %104 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !699
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %104, i32 0, i32 0, !dbg !701
  %105 = load i32, i32* %x1, align 4, !dbg !701
  store i32 %105, i32* %x, align 4, !dbg !702
  br label %for.cond42, !dbg !703

for.cond42:                                       ; preds = %for.inc, %if.end41
  %106 = load i32, i32* %x, align 4, !dbg !704
  %107 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !706
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %107, i32 0, i32 2, !dbg !707
  %108 = load i32, i32* %x2, align 4, !dbg !707
  %cmp43 = icmp ult i32 %106, %108, !dbg !708
  br i1 %cmp43, label %for.body45, label %for.end, !dbg !709

for.body45:                                       ; preds = %for.cond42
  %109 = load i8, i8* %cpp, align 1, !dbg !710
  %conv46 = zext i8 %109 to i32, !dbg !710
  %cmp47 = icmp eq i32 %conv46, 4, !dbg !713
  br i1 %cmp47, label %if.then49, label %if.else52, !dbg !714

if.then49:                                        ; preds = %for.body45
  %110 = load i32*, i32** %src32, align 8, !dbg !715
  %incdec.ptr = getelementptr i32, i32* %110, i32 1, !dbg !715
  store i32* %incdec.ptr, i32** %src32, align 8, !dbg !715
  %111 = load i32, i32* %110, align 4, !dbg !715
  %call50 = call i32 @__fswab32(i32 %111) #9, !dbg !715
  %112 = load i32*, i32** %dst32, align 8, !dbg !716
  %incdec.ptr51 = getelementptr i32, i32* %112, i32 1, !dbg !716
  store i32* %incdec.ptr51, i32** %dst32, align 8, !dbg !716
  store i32 %call50, i32* %112, align 4, !dbg !717
  br label %if.end58, !dbg !718

if.else52:                                        ; preds = %for.body45
  %113 = load i16*, i16** %src16, align 8, !dbg !719
  %incdec.ptr53 = getelementptr i16, i16* %113, i32 1, !dbg !719
  store i16* %incdec.ptr53, i16** %src16, align 8, !dbg !719
  %114 = load i16, i16* %113, align 2, !dbg !719
  %call54 = call zeroext i16 @__fswab16(i16 zeroext %114) #9, !dbg !719
  %conv55 = zext i16 %call54 to i32, !dbg !719
  %conv56 = trunc i32 %conv55 to i16, !dbg !719
  %115 = load i16*, i16** %dst16, align 8, !dbg !720
  %incdec.ptr57 = getelementptr i16, i16* %115, i32 1, !dbg !720
  store i16* %incdec.ptr57, i16** %dst16, align 8, !dbg !720
  store i16 %conv56, i16* %115, align 2, !dbg !721
  br label %if.end58

if.end58:                                         ; preds = %if.else52, %if.then49
  br label %for.inc, !dbg !722

for.inc:                                          ; preds = %if.end58
  %116 = load i32, i32* %x, align 4, !dbg !723
  %inc = add i32 %116, 1, !dbg !723
  store i32 %inc, i32* %x, align 4, !dbg !723
  br label %for.cond42, !dbg !724, !llvm.loop !725

for.end:                                          ; preds = %for.cond42
  %117 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !727
  %pitches59 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %117, i32 0, i32 6, !dbg !728
  %arrayidx60 = getelementptr [4 x i32], [4 x i32]* %pitches59, i64 0, i64 0, !dbg !727
  %118 = load i32, i32* %arrayidx60, align 8, !dbg !727
  %119 = load i8*, i8** %src.addr, align 8, !dbg !729
  %idx.ext61 = zext i32 %118 to i64, !dbg !729
  %add.ptr62 = getelementptr i8, i8* %119, i64 %idx.ext61, !dbg !729
  store i8* %add.ptr62, i8** %src.addr, align 8, !dbg !729
  br label %for.inc63, !dbg !730

for.inc63:                                        ; preds = %for.end
  %120 = load i32, i32* %y, align 4, !dbg !731
  %inc64 = add i32 %120, 1, !dbg !731
  store i32 %inc64, i32* %y, align 4, !dbg !731
  br label %for.cond, !dbg !732, !llvm.loop !733

for.end65:                                        ; preds = %for.cond
  %121 = load i8*, i8** %buf, align 8, !dbg !735
  call void @kfree(i8* %121) #7, !dbg !736
  br label %return, !dbg !737

return:                                           ; preds = %for.end65, %if.then28
  ret void, !dbg !737
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_rect_width(%struct.drm_rect* %r) #0 !dbg !738 {
entry:
  %r.addr = alloca %struct.drm_rect*, align 8
  store %struct.drm_rect* %r, %struct.drm_rect** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %r.addr, metadata !743, metadata !DIExpression()), !dbg !744
  %0 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !745
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %0, i32 0, i32 2, !dbg !746
  %1 = load i32, i32* %x2, align 4, !dbg !746
  %2 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !747
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %2, i32 0, i32 0, !dbg !748
  %3 = load i32, i32* %x1, align 4, !dbg !748
  %sub = sub i32 %1, %3, !dbg !749
  ret i32 %sub, !dbg !750
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #4 !dbg !751 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !755, metadata !DIExpression()), !dbg !756
  %0 = load i32, i32* %val.addr, align 4, !dbg !757
  %call = call i32 @__arch_swab32(i32 %0) #9, !dbg !758
  ret i32 %call, !dbg !759
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #4 !dbg !760 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !763, metadata !DIExpression()), !dbg !764
  %0 = load i16, i16* %val.addr, align 2, !dbg !765
  %conv = zext i16 %0 to i32, !dbg !765
  %and = and i32 %conv, 255, !dbg !765
  %shl = shl i32 %and, 8, !dbg !765
  %1 = load i16, i16* %val.addr, align 2, !dbg !765
  %conv1 = zext i16 %1 to i32, !dbg !765
  %and2 = and i32 %conv1, 65280, !dbg !765
  %shr = ashr i32 %and2, 8, !dbg !765
  %or = or i32 %shl, %shr, !dbg !765
  %conv3 = trunc i32 %or to i16, !dbg !765
  ret i16 %conv3, !dbg !766
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_fb_xrgb8888_to_rgb565(i8* %dst, i8* %vaddr, %struct.drm_framebuffer* %fb, %struct.drm_rect* %clip, i1 zeroext %__swab) #0 !dbg !767 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !329, metadata !DIExpression()), !dbg !768
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !345, metadata !DIExpression()), !dbg !771
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !347, metadata !DIExpression()), !dbg !772
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !349, metadata !DIExpression()), !dbg !773
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !351, metadata !DIExpression()), !dbg !774
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !357, metadata !DIExpression()), !dbg !776
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !363, metadata !DIExpression()), !dbg !778
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !372, metadata !DIExpression()), !dbg !781
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !374, metadata !DIExpression()), !dbg !782
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !376, metadata !DIExpression()), !dbg !783
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !378, metadata !DIExpression()), !dbg !784
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !380, metadata !DIExpression()), !dbg !785
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !382, metadata !DIExpression()), !dbg !786
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !384, metadata !DIExpression()), !dbg !787
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !386, metadata !DIExpression()), !dbg !788
  %dst.addr = alloca i8*, align 8
  %vaddr.addr = alloca i8*, align 8
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  %clip.addr = alloca %struct.drm_rect*, align 8
  %__swab.addr = alloca i8, align 1
  %linepixels = alloca i64, align 8
  %src_len = alloca i64, align 8
  %dst_len = alloca i64, align 8
  %y = alloca i32, align 4
  %lines = alloca i32, align 4
  %sbuf = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !789, metadata !DIExpression()), !dbg !790
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !791, metadata !DIExpression()), !dbg !792
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !793, metadata !DIExpression()), !dbg !794
  store %struct.drm_rect* %clip, %struct.drm_rect** %clip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %clip.addr, metadata !795, metadata !DIExpression()), !dbg !796
  %frombool = zext i1 %__swab to i8
  store i8 %frombool, i8* %__swab.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %__swab.addr, metadata !797, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.declare(metadata i64* %linepixels, metadata !799, metadata !DIExpression()), !dbg !800
  %0 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !801
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %0, i32 0, i32 2, !dbg !802
  %1 = load i32, i32* %x2, align 4, !dbg !802
  %2 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !803
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %2, i32 0, i32 0, !dbg !804
  %3 = load i32, i32* %x1, align 4, !dbg !804
  %sub = sub i32 %1, %3, !dbg !805
  %conv = sext i32 %sub to i64, !dbg !801
  store i64 %conv, i64* %linepixels, align 8, !dbg !800
  call void @llvm.dbg.declare(metadata i64* %src_len, metadata !806, metadata !DIExpression()), !dbg !807
  %4 = load i64, i64* %linepixels, align 8, !dbg !808
  %mul = mul i64 %4, 4, !dbg !809
  store i64 %mul, i64* %src_len, align 8, !dbg !807
  call void @llvm.dbg.declare(metadata i64* %dst_len, metadata !810, metadata !DIExpression()), !dbg !811
  %5 = load i64, i64* %linepixels, align 8, !dbg !812
  %mul1 = mul i64 %5, 2, !dbg !813
  store i64 %mul1, i64* %dst_len, align 8, !dbg !811
  call void @llvm.dbg.declare(metadata i32* %y, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata i32* %lines, metadata !816, metadata !DIExpression()), !dbg !817
  %6 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !818
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %6, i32 0, i32 3, !dbg !819
  %7 = load i32, i32* %y2, align 4, !dbg !819
  %8 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !820
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 1, !dbg !821
  %9 = load i32, i32* %y1, align 4, !dbg !821
  %sub2 = sub i32 %7, %9, !dbg !822
  store i32 %sub2, i32* %lines, align 4, !dbg !817
  call void @llvm.dbg.declare(metadata i8** %sbuf, metadata !823, metadata !DIExpression()), !dbg !824
  %10 = load i64, i64* %src_len, align 8, !dbg !825
  store i64 %10, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !826
  %12 = call i1 @llvm.is.constant.i64(i64 %11) #8, !dbg !827
  br i1 %12, label %if.then.i, label %if.end9.i, !dbg !828

if.then.i:                                        ; preds = %entry
  %13 = load i64, i64* %size.addr.i, align 8, !dbg !829
  %cmp.i = icmp ugt i64 %13, 8192, !dbg !830
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !831

if.then1.i:                                       ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !832
  %15 = load i32, i32* %flags.addr.i, align 4, !dbg !833
  store i64 %14, i64* %size.addr.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i, align 4
  %16 = load i64, i64* %size.addr.i.i, align 8, !dbg !834
  %call.i.i = call i32 @get_order(i64 %16) #9, !dbg !835
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !785
  %17 = load i64, i64* %size.addr.i.i, align 8, !dbg !836
  %18 = load i32, i32* %flags.addr.i.i, align 4, !dbg !837
  %19 = load i32, i32* %order.i.i, align 4, !dbg !838
  store i64 %17, i64* %size.addr.i.i.i, align 8
  store i32 %18, i32* %flags.addr.i.i.i, align 4
  store i32 %19, i32* %order.addr.i.i.i, align 4
  %20 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !839
  %21 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !840
  %22 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !841
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %20, i32 %21, i32 %22) #10, !dbg !842
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !842
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !842
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !842
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !842
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !843
  br label %kmalloc.exit, !dbg !843

if.end.i:                                         ; preds = %if.then.i
  %23 = load i64, i64* %size.addr.i, align 8, !dbg !844
  store i64 %23, i64* %size.addr.i11.i, align 8
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !845
  %tobool.i.i = icmp ne i64 %24, 0, !dbg !845
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !846

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !847
  br label %kmalloc_index.exit.i, !dbg !847

if.end.i.i:                                       ; preds = %if.end.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !848
  %cmp.i.i = icmp ule i64 %25, 8, !dbg !849
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !850

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !851
  br label %kmalloc_index.exit.i, !dbg !851

if.end2.i.i:                                      ; preds = %if.end.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !852
  %cmp3.i.i = icmp ugt i64 %26, 64, !dbg !853
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !854

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !855
  %cmp4.i.i = icmp ule i64 %27, 96, !dbg !856
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !857

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !858
  br label %kmalloc_index.exit.i, !dbg !858

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !859
  %cmp7.i.i = icmp ugt i64 %28, 128, !dbg !860
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !861

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !862
  %cmp9.i.i = icmp ule i64 %29, 192, !dbg !863
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !864

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !865
  br label %kmalloc_index.exit.i, !dbg !865

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !866
  %cmp12.i.i = icmp ule i64 %30, 8, !dbg !867
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !868

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !869
  br label %kmalloc_index.exit.i, !dbg !869

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !870
  %cmp15.i.i = icmp ule i64 %31, 16, !dbg !871
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !872

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !873
  br label %kmalloc_index.exit.i, !dbg !873

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !874
  %cmp18.i.i = icmp ule i64 %32, 32, !dbg !875
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !876

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !877
  br label %kmalloc_index.exit.i, !dbg !877

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !878
  %cmp21.i.i = icmp ule i64 %33, 64, !dbg !879
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !880

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !881
  br label %kmalloc_index.exit.i, !dbg !881

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !882
  %cmp24.i.i = icmp ule i64 %34, 128, !dbg !883
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !884

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !885
  br label %kmalloc_index.exit.i, !dbg !885

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !886
  %cmp27.i.i = icmp ule i64 %35, 256, !dbg !887
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !888

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !889
  br label %kmalloc_index.exit.i, !dbg !889

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !890
  %cmp30.i.i = icmp ule i64 %36, 512, !dbg !891
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !892

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !893
  br label %kmalloc_index.exit.i, !dbg !893

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !894
  %cmp33.i.i = icmp ule i64 %37, 1024, !dbg !895
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !896

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !897
  br label %kmalloc_index.exit.i, !dbg !897

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !898
  %cmp36.i.i = icmp ule i64 %38, 2048, !dbg !899
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !900

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !901
  br label %kmalloc_index.exit.i, !dbg !901

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !902
  %cmp39.i.i = icmp ule i64 %39, 4096, !dbg !903
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !904

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !905
  br label %kmalloc_index.exit.i, !dbg !905

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !906
  %cmp42.i.i = icmp ule i64 %40, 8192, !dbg !907
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !908

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !909
  br label %kmalloc_index.exit.i, !dbg !909

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !910
  %cmp45.i.i = icmp ule i64 %41, 16384, !dbg !911
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !912

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !913
  br label %kmalloc_index.exit.i, !dbg !913

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !914
  %cmp48.i.i = icmp ule i64 %42, 32768, !dbg !915
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !916

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !917
  br label %kmalloc_index.exit.i, !dbg !917

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !918
  %cmp51.i.i = icmp ule i64 %43, 65536, !dbg !919
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !920

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !921
  br label %kmalloc_index.exit.i, !dbg !921

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !922
  %cmp54.i.i = icmp ule i64 %44, 131072, !dbg !923
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !924

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !925
  br label %kmalloc_index.exit.i, !dbg !925

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !926
  %cmp57.i.i = icmp ule i64 %45, 262144, !dbg !927
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !928

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !929
  br label %kmalloc_index.exit.i, !dbg !929

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !930
  %cmp60.i.i = icmp ule i64 %46, 524288, !dbg !931
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !932

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !933
  br label %kmalloc_index.exit.i, !dbg !933

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !934
  %cmp63.i.i = icmp ule i64 %47, 1048576, !dbg !935
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !936

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !937
  br label %kmalloc_index.exit.i, !dbg !937

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !938
  %cmp66.i.i = icmp ule i64 %48, 2097152, !dbg !939
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !940

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !941
  br label %kmalloc_index.exit.i, !dbg !941

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !942
  %cmp69.i.i = icmp ule i64 %49, 4194304, !dbg !943
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !944

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !945
  br label %kmalloc_index.exit.i, !dbg !945

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !946
  %cmp72.i.i = icmp ule i64 %50, 8388608, !dbg !947
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !948

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !949
  br label %kmalloc_index.exit.i, !dbg !949

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !950
  %cmp75.i.i = icmp ule i64 %51, 16777216, !dbg !951
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !952

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !953
  br label %kmalloc_index.exit.i, !dbg !953

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !954
  %cmp78.i.i = icmp ule i64 %52, 33554432, !dbg !955
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !956

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !957
  br label %kmalloc_index.exit.i, !dbg !957

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !958
  %cmp81.i.i = icmp ule i64 %53, 67108864, !dbg !959
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !960

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !961
  br label %kmalloc_index.exit.i, !dbg !961

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !962, !srcloc !620
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #8, !dbg !963, !srcloc !624
  unreachable, !dbg !964

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %54 = load i32, i32* %retval.i.i, align 4, !dbg !965
  store i32 %54, i32* %index.i, align 4, !dbg !966
  %55 = load i32, i32* %index.i, align 4, !dbg !967
  %tobool.i = icmp ne i32 %55, 0, !dbg !967
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !968

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !969
  br label %kmalloc.exit, !dbg !969

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %56 = load i32, i32* %flags.addr.i, align 4, !dbg !970
  store i32 %56, i32* %flags.addr.i13.i, align 4
  %57 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !971
  %and.i.i = and i32 %57, 17, !dbg !971
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !971
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !971
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !971
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !971
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !972

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !973
  br label %kmalloc_type.exit.i, !dbg !973

if.end.i16.i:                                     ; preds = %if.end4.i
  %58 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !974
  %and2.i.i = and i32 %58, 1, !dbg !975
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !974
  %59 = zext i1 %tobool3.i.i to i64, !dbg !974
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !974
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !976
  br label %kmalloc_type.exit.i, !dbg !976

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %60 = load i32, i32* %retval.i12.i, align 4, !dbg !977
  %idxprom.i = zext i32 %60 to i64, !dbg !978
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !978
  %61 = load i32, i32* %index.i, align 4, !dbg !979
  %idxprom6.i = zext i32 %61 to i64, !dbg !978
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !978
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !978
  %63 = load i32, i32* %flags.addr.i, align 4, !dbg !980
  %64 = load i64, i64* %size.addr.i, align 8, !dbg !981
  store %struct.kmem_cache* %62, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %63, i32* %flags.addr.i17.i, align 4
  store i64 %64, i64* %size.addr.i18.i, align 8
  %65 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !982
  %66 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !983
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %65, i32 %66) #10, !dbg !984
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !984
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !984
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !984
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !984
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !773
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !985
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !986
  %69 = load i64, i64* %size.addr.i18.i, align 8, !dbg !987
  %70 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !988
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %67, i8* %68, i64 %69, i32 %70) #10, !dbg !989
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !990
  %71 = load i8*, i8** %ret.i.i, align 8, !dbg !991
  store i8* %71, i8** %retval.i, align 8, !dbg !992
  br label %kmalloc.exit, !dbg !992

if.end9.i:                                        ; preds = %entry
  %72 = load i64, i64* %size.addr.i, align 8, !dbg !993
  %73 = load i32, i32* %flags.addr.i, align 4, !dbg !994
  %call10.i = call noalias i8* @__kmalloc(i64 %72, i32 %73) #10, !dbg !995
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !995
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !995
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !995
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !995
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !996
  br label %kmalloc.exit, !dbg !996

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %74 = load i8*, i8** %retval.i, align 8, !dbg !997
  store i8* %74, i8** %sbuf, align 8, !dbg !998
  %75 = load i8*, i8** %sbuf, align 8, !dbg !999
  %tobool = icmp ne i8* %75, null, !dbg !999
  br i1 %tobool, label %if.end, label %if.then, !dbg !1001

if.then:                                          ; preds = %kmalloc.exit
  br label %return, !dbg !1002

if.end:                                           ; preds = %kmalloc.exit
  %76 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1003
  %77 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !1004
  %pitches = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %77, i32 0, i32 6, !dbg !1005
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %pitches, i64 0, i64 0, !dbg !1004
  %78 = load i32, i32* %arrayidx, align 8, !dbg !1004
  %call3 = call i32 @clip_offset(%struct.drm_rect* %76, i32 %78, i32 4) #7, !dbg !1006
  %79 = load i8*, i8** %vaddr.addr, align 8, !dbg !1007
  %idx.ext = zext i32 %call3 to i64, !dbg !1007
  %add.ptr = getelementptr i8, i8* %79, i64 %idx.ext, !dbg !1007
  store i8* %add.ptr, i8** %vaddr.addr, align 8, !dbg !1007
  store i32 0, i32* %y, align 4, !dbg !1008
  br label %for.cond, !dbg !1010

for.cond:                                         ; preds = %for.inc, %if.end
  %80 = load i32, i32* %y, align 4, !dbg !1011
  %81 = load i32, i32* %lines, align 4, !dbg !1013
  %cmp = icmp ult i32 %80, %81, !dbg !1014
  br i1 %cmp, label %for.body, label %for.end, !dbg !1015

for.body:                                         ; preds = %for.cond
  %82 = load i8*, i8** %sbuf, align 8, !dbg !1016
  %83 = load i8*, i8** %vaddr.addr, align 8, !dbg !1018
  %84 = load i64, i64* %src_len, align 8, !dbg !1019
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %82, i8* align 1 %83, i64 %84, i1 false), !dbg !1020
  %85 = load i8*, i8** %dst.addr, align 8, !dbg !1021
  %86 = bitcast i8* %85 to i16*, !dbg !1021
  %87 = load i8*, i8** %sbuf, align 8, !dbg !1022
  %88 = bitcast i8* %87 to i32*, !dbg !1022
  %89 = load i64, i64* %linepixels, align 8, !dbg !1023
  %conv5 = trunc i64 %89 to i32, !dbg !1023
  %90 = load i8, i8* %__swab.addr, align 1, !dbg !1024
  %tobool6 = trunc i8 %90 to i1, !dbg !1024
  call void @drm_fb_xrgb8888_to_rgb565_line(i16* %86, i32* %88, i32 %conv5, i1 zeroext %tobool6) #7, !dbg !1025
  %91 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !1026
  %pitches7 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %91, i32 0, i32 6, !dbg !1027
  %arrayidx8 = getelementptr [4 x i32], [4 x i32]* %pitches7, i64 0, i64 0, !dbg !1026
  %92 = load i32, i32* %arrayidx8, align 8, !dbg !1026
  %93 = load i8*, i8** %vaddr.addr, align 8, !dbg !1028
  %idx.ext9 = zext i32 %92 to i64, !dbg !1028
  %add.ptr10 = getelementptr i8, i8* %93, i64 %idx.ext9, !dbg !1028
  store i8* %add.ptr10, i8** %vaddr.addr, align 8, !dbg !1028
  %94 = load i64, i64* %dst_len, align 8, !dbg !1029
  %95 = load i8*, i8** %dst.addr, align 8, !dbg !1030
  %add.ptr11 = getelementptr i8, i8* %95, i64 %94, !dbg !1030
  store i8* %add.ptr11, i8** %dst.addr, align 8, !dbg !1030
  br label %for.inc, !dbg !1031

for.inc:                                          ; preds = %for.body
  %96 = load i32, i32* %y, align 4, !dbg !1032
  %inc = add i32 %96, 1, !dbg !1032
  store i32 %inc, i32* %y, align 4, !dbg !1032
  br label %for.cond, !dbg !1033, !llvm.loop !1034

for.end:                                          ; preds = %for.cond
  %97 = load i8*, i8** %sbuf, align 8, !dbg !1036
  call void @kfree(i8* %97) #7, !dbg !1037
  br label %return, !dbg !1038

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !1038
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_fb_xrgb8888_to_rgb565_line(i16* %dbuf, i32* %sbuf, i32 %pixels, i1 zeroext %__swab) #0 !dbg !1039 {
entry:
  %dbuf.addr = alloca i16*, align 8
  %sbuf.addr = alloca i32*, align 8
  %pixels.addr = alloca i32, align 4
  %__swab.addr = alloca i8, align 1
  %x = alloca i32, align 4
  %val16 = alloca i16, align 2
  store i16* %dbuf, i16** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %dbuf.addr, metadata !1042, metadata !DIExpression()), !dbg !1043
  store i32* %sbuf, i32** %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sbuf.addr, metadata !1044, metadata !DIExpression()), !dbg !1045
  store i32 %pixels, i32* %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pixels.addr, metadata !1046, metadata !DIExpression()), !dbg !1047
  %frombool = zext i1 %__swab to i8
  store i8 %frombool, i8* %__swab.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %__swab.addr, metadata !1048, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.declare(metadata i32* %x, metadata !1050, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.declare(metadata i16* %val16, metadata !1052, metadata !DIExpression()), !dbg !1053
  store i32 0, i32* %x, align 4, !dbg !1054
  br label %for.cond, !dbg !1056

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4, !dbg !1057
  %1 = load i32, i32* %pixels.addr, align 4, !dbg !1059
  %cmp = icmp ult i32 %0, %1, !dbg !1060
  br i1 %cmp, label %for.body, label %for.end, !dbg !1061

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %sbuf.addr, align 8, !dbg !1062
  %3 = load i32, i32* %x, align 4, !dbg !1064
  %idxprom = zext i32 %3 to i64, !dbg !1062
  %arrayidx = getelementptr i32, i32* %2, i64 %idxprom, !dbg !1062
  %4 = load i32, i32* %arrayidx, align 4, !dbg !1062
  %and = and i32 %4, 16252928, !dbg !1065
  %shr = lshr i32 %and, 8, !dbg !1066
  %5 = load i32*, i32** %sbuf.addr, align 8, !dbg !1067
  %6 = load i32, i32* %x, align 4, !dbg !1068
  %idxprom1 = zext i32 %6 to i64, !dbg !1067
  %arrayidx2 = getelementptr i32, i32* %5, i64 %idxprom1, !dbg !1067
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !1067
  %and3 = and i32 %7, 64512, !dbg !1069
  %shr4 = lshr i32 %and3, 5, !dbg !1070
  %or = or i32 %shr, %shr4, !dbg !1071
  %8 = load i32*, i32** %sbuf.addr, align 8, !dbg !1072
  %9 = load i32, i32* %x, align 4, !dbg !1073
  %idxprom5 = zext i32 %9 to i64, !dbg !1072
  %arrayidx6 = getelementptr i32, i32* %8, i64 %idxprom5, !dbg !1072
  %10 = load i32, i32* %arrayidx6, align 4, !dbg !1072
  %and7 = and i32 %10, 248, !dbg !1074
  %shr8 = lshr i32 %and7, 3, !dbg !1075
  %or9 = or i32 %or, %shr8, !dbg !1076
  %conv = trunc i32 %or9 to i16, !dbg !1077
  store i16 %conv, i16* %val16, align 2, !dbg !1078
  %11 = load i8, i8* %__swab.addr, align 1, !dbg !1079
  %tobool = trunc i8 %11 to i1, !dbg !1079
  br i1 %tobool, label %if.then, label %if.else, !dbg !1081

if.then:                                          ; preds = %for.body
  %12 = load i16, i16* %val16, align 2, !dbg !1082
  %13 = call i1 @llvm.is.constant.i16(i16 %12), !dbg !1082
  br i1 %13, label %cond.true, label %cond.false, !dbg !1082

cond.true:                                        ; preds = %if.then
  %14 = load i16, i16* %val16, align 2, !dbg !1082
  %conv10 = zext i16 %14 to i32, !dbg !1082
  %and11 = and i32 %conv10, 255, !dbg !1082
  %shl = shl i32 %and11, 8, !dbg !1082
  %15 = load i16, i16* %val16, align 2, !dbg !1082
  %conv12 = zext i16 %15 to i32, !dbg !1082
  %and13 = and i32 %conv12, 65280, !dbg !1082
  %shr14 = ashr i32 %and13, 8, !dbg !1082
  %or15 = or i32 %shl, %shr14, !dbg !1082
  %conv16 = trunc i32 %or15 to i16, !dbg !1082
  %conv17 = zext i16 %conv16 to i32, !dbg !1082
  br label %cond.end, !dbg !1082

cond.false:                                       ; preds = %if.then
  %16 = load i16, i16* %val16, align 2, !dbg !1082
  %call = call zeroext i16 @__fswab16(i16 zeroext %16) #9, !dbg !1082
  %conv18 = zext i16 %call to i32, !dbg !1082
  br label %cond.end, !dbg !1082

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv17, %cond.true ], [ %conv18, %cond.false ], !dbg !1082
  %conv19 = trunc i32 %cond to i16, !dbg !1082
  %17 = load i16*, i16** %dbuf.addr, align 8, !dbg !1083
  %18 = load i32, i32* %x, align 4, !dbg !1084
  %idxprom20 = zext i32 %18 to i64, !dbg !1083
  %arrayidx21 = getelementptr i16, i16* %17, i64 %idxprom20, !dbg !1083
  store i16 %conv19, i16* %arrayidx21, align 2, !dbg !1085
  br label %if.end, !dbg !1083

if.else:                                          ; preds = %for.body
  %19 = load i16, i16* %val16, align 2, !dbg !1086
  %20 = load i16*, i16** %dbuf.addr, align 8, !dbg !1087
  %21 = load i32, i32* %x, align 4, !dbg !1088
  %idxprom22 = zext i32 %21 to i64, !dbg !1087
  %arrayidx23 = getelementptr i16, i16* %20, i64 %idxprom22, !dbg !1087
  store i16 %19, i16* %arrayidx23, align 2, !dbg !1089
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  br label %for.inc, !dbg !1090

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %x, align 4, !dbg !1091
  %inc = add i32 %22, 1, !dbg !1091
  store i32 %inc, i32* %x, align 4, !dbg !1091
  br label %for.cond, !dbg !1092, !llvm.loop !1093

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_fb_xrgb8888_to_rgb565_dstclip(i8* %dst, i32 %dst_pitch, i8* %vaddr, %struct.drm_framebuffer* %fb, %struct.drm_rect* %clip, i1 zeroext %__swab) #0 !dbg !1096 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !329, metadata !DIExpression()), !dbg !1099
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !345, metadata !DIExpression()), !dbg !1102
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !347, metadata !DIExpression()), !dbg !1103
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !349, metadata !DIExpression()), !dbg !1104
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !351, metadata !DIExpression()), !dbg !1105
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !357, metadata !DIExpression()), !dbg !1107
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !363, metadata !DIExpression()), !dbg !1109
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !372, metadata !DIExpression()), !dbg !1112
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !374, metadata !DIExpression()), !dbg !1113
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !376, metadata !DIExpression()), !dbg !1114
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !378, metadata !DIExpression()), !dbg !1115
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !380, metadata !DIExpression()), !dbg !1116
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !382, metadata !DIExpression()), !dbg !1117
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !384, metadata !DIExpression()), !dbg !1118
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !386, metadata !DIExpression()), !dbg !1119
  %dst.addr = alloca i8*, align 8
  %dst_pitch.addr = alloca i32, align 4
  %vaddr.addr = alloca i8*, align 8
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  %clip.addr = alloca %struct.drm_rect*, align 8
  %__swab.addr = alloca i8, align 1
  %linepixels = alloca i64, align 8
  %dst_len = alloca i64, align 8
  %y = alloca i32, align 4
  %lines = alloca i32, align 4
  %dbuf = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !1120, metadata !DIExpression()), !dbg !1121
  store i32 %dst_pitch, i32* %dst_pitch.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dst_pitch.addr, metadata !1122, metadata !DIExpression()), !dbg !1123
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !1124, metadata !DIExpression()), !dbg !1125
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !1126, metadata !DIExpression()), !dbg !1127
  store %struct.drm_rect* %clip, %struct.drm_rect** %clip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %clip.addr, metadata !1128, metadata !DIExpression()), !dbg !1129
  %frombool = zext i1 %__swab to i8
  store i8 %frombool, i8* %__swab.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %__swab.addr, metadata !1130, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.declare(metadata i64* %linepixels, metadata !1132, metadata !DIExpression()), !dbg !1133
  %0 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1134
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %0, i32 0, i32 2, !dbg !1135
  %1 = load i32, i32* %x2, align 4, !dbg !1135
  %2 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1136
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %2, i32 0, i32 0, !dbg !1137
  %3 = load i32, i32* %x1, align 4, !dbg !1137
  %sub = sub i32 %1, %3, !dbg !1138
  %conv = sext i32 %sub to i64, !dbg !1134
  store i64 %conv, i64* %linepixels, align 8, !dbg !1133
  call void @llvm.dbg.declare(metadata i64* %dst_len, metadata !1139, metadata !DIExpression()), !dbg !1140
  %4 = load i64, i64* %linepixels, align 8, !dbg !1141
  %mul = mul i64 %4, 2, !dbg !1142
  store i64 %mul, i64* %dst_len, align 8, !dbg !1140
  call void @llvm.dbg.declare(metadata i32* %y, metadata !1143, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.declare(metadata i32* %lines, metadata !1145, metadata !DIExpression()), !dbg !1146
  %5 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1147
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %5, i32 0, i32 3, !dbg !1148
  %6 = load i32, i32* %y2, align 4, !dbg !1148
  %7 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1149
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %7, i32 0, i32 1, !dbg !1150
  %8 = load i32, i32* %y1, align 4, !dbg !1150
  %sub1 = sub i32 %6, %8, !dbg !1151
  store i32 %sub1, i32* %lines, align 4, !dbg !1146
  call void @llvm.dbg.declare(metadata i8** %dbuf, metadata !1152, metadata !DIExpression()), !dbg !1153
  %9 = load i64, i64* %dst_len, align 8, !dbg !1154
  store i64 %9, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !1155
  %11 = call i1 @llvm.is.constant.i64(i64 %10) #8, !dbg !1156
  br i1 %11, label %if.then.i, label %if.end9.i, !dbg !1157

if.then.i:                                        ; preds = %entry
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !1158
  %cmp.i = icmp ugt i64 %12, 8192, !dbg !1159
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1160

if.then1.i:                                       ; preds = %if.then.i
  %13 = load i64, i64* %size.addr.i, align 8, !dbg !1161
  %14 = load i32, i32* %flags.addr.i, align 4, !dbg !1162
  store i64 %13, i64* %size.addr.i.i, align 8
  store i32 %14, i32* %flags.addr.i.i, align 4
  %15 = load i64, i64* %size.addr.i.i, align 8, !dbg !1163
  %call.i.i = call i32 @get_order(i64 %15) #9, !dbg !1164
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1116
  %16 = load i64, i64* %size.addr.i.i, align 8, !dbg !1165
  %17 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1166
  %18 = load i32, i32* %order.i.i, align 4, !dbg !1167
  store i64 %16, i64* %size.addr.i.i.i, align 8
  store i32 %17, i32* %flags.addr.i.i.i, align 4
  store i32 %18, i32* %order.addr.i.i.i, align 4
  %19 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1168
  %20 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1169
  %21 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1170
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %19, i32 %20, i32 %21) #10, !dbg !1171
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1171
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1171
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1171
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1171
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1172
  br label %kmalloc.exit, !dbg !1172

if.end.i:                                         ; preds = %if.then.i
  %22 = load i64, i64* %size.addr.i, align 8, !dbg !1173
  store i64 %22, i64* %size.addr.i11.i, align 8
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1174
  %tobool.i.i = icmp ne i64 %23, 0, !dbg !1174
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1175

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1176
  br label %kmalloc_index.exit.i, !dbg !1176

if.end.i.i:                                       ; preds = %if.end.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1177
  %cmp.i.i = icmp ule i64 %24, 8, !dbg !1178
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1179

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1180
  br label %kmalloc_index.exit.i, !dbg !1180

if.end2.i.i:                                      ; preds = %if.end.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1181
  %cmp3.i.i = icmp ugt i64 %25, 64, !dbg !1182
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1183

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1184
  %cmp4.i.i = icmp ule i64 %26, 96, !dbg !1185
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1186

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1187
  br label %kmalloc_index.exit.i, !dbg !1187

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1188
  %cmp7.i.i = icmp ugt i64 %27, 128, !dbg !1189
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1190

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1191
  %cmp9.i.i = icmp ule i64 %28, 192, !dbg !1192
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1193

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1194
  br label %kmalloc_index.exit.i, !dbg !1194

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1195
  %cmp12.i.i = icmp ule i64 %29, 8, !dbg !1196
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1197

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1198
  br label %kmalloc_index.exit.i, !dbg !1198

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1199
  %cmp15.i.i = icmp ule i64 %30, 16, !dbg !1200
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1201

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1202
  br label %kmalloc_index.exit.i, !dbg !1202

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1203
  %cmp18.i.i = icmp ule i64 %31, 32, !dbg !1204
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1205

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1206
  br label %kmalloc_index.exit.i, !dbg !1206

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1207
  %cmp21.i.i = icmp ule i64 %32, 64, !dbg !1208
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1209

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1210
  br label %kmalloc_index.exit.i, !dbg !1210

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1211
  %cmp24.i.i = icmp ule i64 %33, 128, !dbg !1212
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1213

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1214
  br label %kmalloc_index.exit.i, !dbg !1214

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1215
  %cmp27.i.i = icmp ule i64 %34, 256, !dbg !1216
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1217

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1218
  br label %kmalloc_index.exit.i, !dbg !1218

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1219
  %cmp30.i.i = icmp ule i64 %35, 512, !dbg !1220
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1221

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1222
  br label %kmalloc_index.exit.i, !dbg !1222

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1223
  %cmp33.i.i = icmp ule i64 %36, 1024, !dbg !1224
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1225

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1226
  br label %kmalloc_index.exit.i, !dbg !1226

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1227
  %cmp36.i.i = icmp ule i64 %37, 2048, !dbg !1228
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1229

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1230
  br label %kmalloc_index.exit.i, !dbg !1230

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1231
  %cmp39.i.i = icmp ule i64 %38, 4096, !dbg !1232
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1233

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1234
  br label %kmalloc_index.exit.i, !dbg !1234

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1235
  %cmp42.i.i = icmp ule i64 %39, 8192, !dbg !1236
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1237

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1238
  br label %kmalloc_index.exit.i, !dbg !1238

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1239
  %cmp45.i.i = icmp ule i64 %40, 16384, !dbg !1240
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1241

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1242
  br label %kmalloc_index.exit.i, !dbg !1242

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1243
  %cmp48.i.i = icmp ule i64 %41, 32768, !dbg !1244
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1245

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1246
  br label %kmalloc_index.exit.i, !dbg !1246

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1247
  %cmp51.i.i = icmp ule i64 %42, 65536, !dbg !1248
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1249

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1250
  br label %kmalloc_index.exit.i, !dbg !1250

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1251
  %cmp54.i.i = icmp ule i64 %43, 131072, !dbg !1252
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1253

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1254
  br label %kmalloc_index.exit.i, !dbg !1254

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1255
  %cmp57.i.i = icmp ule i64 %44, 262144, !dbg !1256
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1257

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1258
  br label %kmalloc_index.exit.i, !dbg !1258

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1259
  %cmp60.i.i = icmp ule i64 %45, 524288, !dbg !1260
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1261

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1262
  br label %kmalloc_index.exit.i, !dbg !1262

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1263
  %cmp63.i.i = icmp ule i64 %46, 1048576, !dbg !1264
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1265

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1266
  br label %kmalloc_index.exit.i, !dbg !1266

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1267
  %cmp66.i.i = icmp ule i64 %47, 2097152, !dbg !1268
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1269

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1270
  br label %kmalloc_index.exit.i, !dbg !1270

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1271
  %cmp69.i.i = icmp ule i64 %48, 4194304, !dbg !1272
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1273

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1274
  br label %kmalloc_index.exit.i, !dbg !1274

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1275
  %cmp72.i.i = icmp ule i64 %49, 8388608, !dbg !1276
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1277

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1278
  br label %kmalloc_index.exit.i, !dbg !1278

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1279
  %cmp75.i.i = icmp ule i64 %50, 16777216, !dbg !1280
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1281

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1282
  br label %kmalloc_index.exit.i, !dbg !1282

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1283
  %cmp78.i.i = icmp ule i64 %51, 33554432, !dbg !1284
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1285

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1286
  br label %kmalloc_index.exit.i, !dbg !1286

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1287
  %cmp81.i.i = icmp ule i64 %52, 67108864, !dbg !1288
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1289

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1290
  br label %kmalloc_index.exit.i, !dbg !1290

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1291, !srcloc !620
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #8, !dbg !1292, !srcloc !624
  unreachable, !dbg !1293

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %53 = load i32, i32* %retval.i.i, align 4, !dbg !1294
  store i32 %53, i32* %index.i, align 4, !dbg !1295
  %54 = load i32, i32* %index.i, align 4, !dbg !1296
  %tobool.i = icmp ne i32 %54, 0, !dbg !1296
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1297

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1298
  br label %kmalloc.exit, !dbg !1298

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %55 = load i32, i32* %flags.addr.i, align 4, !dbg !1299
  store i32 %55, i32* %flags.addr.i13.i, align 4
  %56 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1300
  %and.i.i = and i32 %56, 17, !dbg !1300
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1300
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1300
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1300
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1300
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1301

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1302
  br label %kmalloc_type.exit.i, !dbg !1302

if.end.i16.i:                                     ; preds = %if.end4.i
  %57 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1303
  %and2.i.i = and i32 %57, 1, !dbg !1304
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1303
  %58 = zext i1 %tobool3.i.i to i64, !dbg !1303
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1303
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1305
  br label %kmalloc_type.exit.i, !dbg !1305

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %59 = load i32, i32* %retval.i12.i, align 4, !dbg !1306
  %idxprom.i = zext i32 %59 to i64, !dbg !1307
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1307
  %60 = load i32, i32* %index.i, align 4, !dbg !1308
  %idxprom6.i = zext i32 %60 to i64, !dbg !1307
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1307
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1307
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !1309
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1310
  store %struct.kmem_cache* %61, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %62, i32* %flags.addr.i17.i, align 4
  store i64 %63, i64* %size.addr.i18.i, align 8
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1311
  %65 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1312
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %64, i32 %65) #10, !dbg !1313
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1313
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1313
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1313
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1313
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1104
  %66 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1314
  %67 = load i8*, i8** %ret.i.i, align 8, !dbg !1315
  %68 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1316
  %69 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1317
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %66, i8* %67, i64 %68, i32 %69) #10, !dbg !1318
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1319
  %70 = load i8*, i8** %ret.i.i, align 8, !dbg !1320
  store i8* %70, i8** %retval.i, align 8, !dbg !1321
  br label %kmalloc.exit, !dbg !1321

if.end9.i:                                        ; preds = %entry
  %71 = load i64, i64* %size.addr.i, align 8, !dbg !1322
  %72 = load i32, i32* %flags.addr.i, align 4, !dbg !1323
  %call10.i = call noalias i8* @__kmalloc(i64 %71, i32 %72) #10, !dbg !1324
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1324
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1324
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1324
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1324
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1325
  br label %kmalloc.exit, !dbg !1325

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %73 = load i8*, i8** %retval.i, align 8, !dbg !1326
  store i8* %73, i8** %dbuf, align 8, !dbg !1327
  %74 = load i8*, i8** %dbuf, align 8, !dbg !1328
  %tobool = icmp ne i8* %74, null, !dbg !1328
  br i1 %tobool, label %if.end, label %if.then, !dbg !1330

if.then:                                          ; preds = %kmalloc.exit
  br label %return, !dbg !1331

if.end:                                           ; preds = %kmalloc.exit
  %75 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1332
  %76 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !1333
  %pitches = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %76, i32 0, i32 6, !dbg !1334
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %pitches, i64 0, i64 0, !dbg !1333
  %77 = load i32, i32* %arrayidx, align 8, !dbg !1333
  %call2 = call i32 @clip_offset(%struct.drm_rect* %75, i32 %77, i32 4) #7, !dbg !1335
  %78 = load i8*, i8** %vaddr.addr, align 8, !dbg !1336
  %idx.ext = zext i32 %call2 to i64, !dbg !1336
  %add.ptr = getelementptr i8, i8* %78, i64 %idx.ext, !dbg !1336
  store i8* %add.ptr, i8** %vaddr.addr, align 8, !dbg !1336
  %79 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1337
  %80 = load i32, i32* %dst_pitch.addr, align 4, !dbg !1338
  %call3 = call i32 @clip_offset(%struct.drm_rect* %79, i32 %80, i32 2) #7, !dbg !1339
  %81 = load i8*, i8** %dst.addr, align 8, !dbg !1340
  %idx.ext4 = zext i32 %call3 to i64, !dbg !1340
  %add.ptr5 = getelementptr i8, i8* %81, i64 %idx.ext4, !dbg !1340
  store i8* %add.ptr5, i8** %dst.addr, align 8, !dbg !1340
  store i32 0, i32* %y, align 4, !dbg !1341
  br label %for.cond, !dbg !1343

for.cond:                                         ; preds = %for.inc, %if.end
  %82 = load i32, i32* %y, align 4, !dbg !1344
  %83 = load i32, i32* %lines, align 4, !dbg !1346
  %cmp = icmp ult i32 %82, %83, !dbg !1347
  br i1 %cmp, label %for.body, label %for.end, !dbg !1348

for.body:                                         ; preds = %for.cond
  %84 = load i8*, i8** %dbuf, align 8, !dbg !1349
  %85 = bitcast i8* %84 to i16*, !dbg !1349
  %86 = load i8*, i8** %vaddr.addr, align 8, !dbg !1351
  %87 = bitcast i8* %86 to i32*, !dbg !1351
  %88 = load i64, i64* %linepixels, align 8, !dbg !1352
  %conv7 = trunc i64 %88 to i32, !dbg !1352
  %89 = load i8, i8* %__swab.addr, align 1, !dbg !1353
  %tobool8 = trunc i8 %89 to i1, !dbg !1353
  call void @drm_fb_xrgb8888_to_rgb565_line(i16* %85, i32* %87, i32 %conv7, i1 zeroext %tobool8) #7, !dbg !1354
  %90 = load i8*, i8** %dst.addr, align 8, !dbg !1355
  %91 = load i8*, i8** %dbuf, align 8, !dbg !1356
  %92 = load i64, i64* %dst_len, align 8, !dbg !1357
  call void @memcpy_toio(i8* %90, i8* %91, i64 %92) #7, !dbg !1358
  %93 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !1359
  %pitches9 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %93, i32 0, i32 6, !dbg !1360
  %arrayidx10 = getelementptr [4 x i32], [4 x i32]* %pitches9, i64 0, i64 0, !dbg !1359
  %94 = load i32, i32* %arrayidx10, align 8, !dbg !1359
  %95 = load i8*, i8** %vaddr.addr, align 8, !dbg !1361
  %idx.ext11 = zext i32 %94 to i64, !dbg !1361
  %add.ptr12 = getelementptr i8, i8* %95, i64 %idx.ext11, !dbg !1361
  store i8* %add.ptr12, i8** %vaddr.addr, align 8, !dbg !1361
  %96 = load i64, i64* %dst_len, align 8, !dbg !1362
  %97 = load i8*, i8** %dst.addr, align 8, !dbg !1363
  %add.ptr13 = getelementptr i8, i8* %97, i64 %96, !dbg !1363
  store i8* %add.ptr13, i8** %dst.addr, align 8, !dbg !1363
  br label %for.inc, !dbg !1364

for.inc:                                          ; preds = %for.body
  %98 = load i32, i32* %y, align 4, !dbg !1365
  %inc = add i32 %98, 1, !dbg !1365
  store i32 %inc, i32* %y, align 4, !dbg !1365
  br label %for.cond, !dbg !1366, !llvm.loop !1367

for.end:                                          ; preds = %for.cond
  %99 = load i8*, i8** %dbuf, align 8, !dbg !1369
  call void @kfree(i8* %99) #7, !dbg !1370
  br label %return, !dbg !1371

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !1371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_fb_xrgb8888_to_rgb888_dstclip(i8* %dst, i32 %dst_pitch, i8* %vaddr, %struct.drm_framebuffer* %fb, %struct.drm_rect* %clip) #0 !dbg !1372 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !329, metadata !DIExpression()), !dbg !1375
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !345, metadata !DIExpression()), !dbg !1378
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !347, metadata !DIExpression()), !dbg !1379
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !349, metadata !DIExpression()), !dbg !1380
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !351, metadata !DIExpression()), !dbg !1381
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !357, metadata !DIExpression()), !dbg !1383
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !363, metadata !DIExpression()), !dbg !1385
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !372, metadata !DIExpression()), !dbg !1388
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !374, metadata !DIExpression()), !dbg !1389
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !376, metadata !DIExpression()), !dbg !1390
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !378, metadata !DIExpression()), !dbg !1391
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !380, metadata !DIExpression()), !dbg !1392
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !382, metadata !DIExpression()), !dbg !1393
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !384, metadata !DIExpression()), !dbg !1394
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !386, metadata !DIExpression()), !dbg !1395
  %dst.addr = alloca i8*, align 8
  %dst_pitch.addr = alloca i32, align 4
  %vaddr.addr = alloca i8*, align 8
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  %clip.addr = alloca %struct.drm_rect*, align 8
  %linepixels = alloca i64, align 8
  %dst_len = alloca i64, align 8
  %y = alloca i32, align 4
  %lines = alloca i32, align 4
  %dbuf = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !1396, metadata !DIExpression()), !dbg !1397
  store i32 %dst_pitch, i32* %dst_pitch.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dst_pitch.addr, metadata !1398, metadata !DIExpression()), !dbg !1399
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !1400, metadata !DIExpression()), !dbg !1401
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !1402, metadata !DIExpression()), !dbg !1403
  store %struct.drm_rect* %clip, %struct.drm_rect** %clip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %clip.addr, metadata !1404, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.declare(metadata i64* %linepixels, metadata !1406, metadata !DIExpression()), !dbg !1407
  %0 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1408
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %0, i32 0, i32 2, !dbg !1409
  %1 = load i32, i32* %x2, align 4, !dbg !1409
  %2 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1410
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %2, i32 0, i32 0, !dbg !1411
  %3 = load i32, i32* %x1, align 4, !dbg !1411
  %sub = sub i32 %1, %3, !dbg !1412
  %conv = sext i32 %sub to i64, !dbg !1408
  store i64 %conv, i64* %linepixels, align 8, !dbg !1407
  call void @llvm.dbg.declare(metadata i64* %dst_len, metadata !1413, metadata !DIExpression()), !dbg !1414
  %4 = load i64, i64* %linepixels, align 8, !dbg !1415
  %mul = mul i64 %4, 3, !dbg !1416
  store i64 %mul, i64* %dst_len, align 8, !dbg !1414
  call void @llvm.dbg.declare(metadata i32* %y, metadata !1417, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.declare(metadata i32* %lines, metadata !1419, metadata !DIExpression()), !dbg !1420
  %5 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1421
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %5, i32 0, i32 3, !dbg !1422
  %6 = load i32, i32* %y2, align 4, !dbg !1422
  %7 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1423
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %7, i32 0, i32 1, !dbg !1424
  %8 = load i32, i32* %y1, align 4, !dbg !1424
  %sub1 = sub i32 %6, %8, !dbg !1425
  store i32 %sub1, i32* %lines, align 4, !dbg !1420
  call void @llvm.dbg.declare(metadata i8** %dbuf, metadata !1426, metadata !DIExpression()), !dbg !1427
  %9 = load i64, i64* %dst_len, align 8, !dbg !1428
  store i64 %9, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !1429
  %11 = call i1 @llvm.is.constant.i64(i64 %10) #8, !dbg !1430
  br i1 %11, label %if.then.i, label %if.end9.i, !dbg !1431

if.then.i:                                        ; preds = %entry
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !1432
  %cmp.i = icmp ugt i64 %12, 8192, !dbg !1433
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1434

if.then1.i:                                       ; preds = %if.then.i
  %13 = load i64, i64* %size.addr.i, align 8, !dbg !1435
  %14 = load i32, i32* %flags.addr.i, align 4, !dbg !1436
  store i64 %13, i64* %size.addr.i.i, align 8
  store i32 %14, i32* %flags.addr.i.i, align 4
  %15 = load i64, i64* %size.addr.i.i, align 8, !dbg !1437
  %call.i.i = call i32 @get_order(i64 %15) #9, !dbg !1438
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1392
  %16 = load i64, i64* %size.addr.i.i, align 8, !dbg !1439
  %17 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1440
  %18 = load i32, i32* %order.i.i, align 4, !dbg !1441
  store i64 %16, i64* %size.addr.i.i.i, align 8
  store i32 %17, i32* %flags.addr.i.i.i, align 4
  store i32 %18, i32* %order.addr.i.i.i, align 4
  %19 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1442
  %20 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1443
  %21 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1444
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %19, i32 %20, i32 %21) #10, !dbg !1445
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1445
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1445
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1445
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1445
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1446
  br label %kmalloc.exit, !dbg !1446

if.end.i:                                         ; preds = %if.then.i
  %22 = load i64, i64* %size.addr.i, align 8, !dbg !1447
  store i64 %22, i64* %size.addr.i11.i, align 8
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1448
  %tobool.i.i = icmp ne i64 %23, 0, !dbg !1448
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1449

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1450
  br label %kmalloc_index.exit.i, !dbg !1450

if.end.i.i:                                       ; preds = %if.end.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1451
  %cmp.i.i = icmp ule i64 %24, 8, !dbg !1452
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1453

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1454
  br label %kmalloc_index.exit.i, !dbg !1454

if.end2.i.i:                                      ; preds = %if.end.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1455
  %cmp3.i.i = icmp ugt i64 %25, 64, !dbg !1456
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1457

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1458
  %cmp4.i.i = icmp ule i64 %26, 96, !dbg !1459
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1460

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1461
  br label %kmalloc_index.exit.i, !dbg !1461

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1462
  %cmp7.i.i = icmp ugt i64 %27, 128, !dbg !1463
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1464

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1465
  %cmp9.i.i = icmp ule i64 %28, 192, !dbg !1466
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1467

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1468
  br label %kmalloc_index.exit.i, !dbg !1468

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1469
  %cmp12.i.i = icmp ule i64 %29, 8, !dbg !1470
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1471

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1472
  br label %kmalloc_index.exit.i, !dbg !1472

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1473
  %cmp15.i.i = icmp ule i64 %30, 16, !dbg !1474
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1475

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1476
  br label %kmalloc_index.exit.i, !dbg !1476

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1477
  %cmp18.i.i = icmp ule i64 %31, 32, !dbg !1478
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1479

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1480
  br label %kmalloc_index.exit.i, !dbg !1480

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1481
  %cmp21.i.i = icmp ule i64 %32, 64, !dbg !1482
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1483

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1484
  br label %kmalloc_index.exit.i, !dbg !1484

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1485
  %cmp24.i.i = icmp ule i64 %33, 128, !dbg !1486
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1487

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1488
  br label %kmalloc_index.exit.i, !dbg !1488

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1489
  %cmp27.i.i = icmp ule i64 %34, 256, !dbg !1490
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1491

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1492
  br label %kmalloc_index.exit.i, !dbg !1492

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1493
  %cmp30.i.i = icmp ule i64 %35, 512, !dbg !1494
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1495

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1496
  br label %kmalloc_index.exit.i, !dbg !1496

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1497
  %cmp33.i.i = icmp ule i64 %36, 1024, !dbg !1498
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1499

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1500
  br label %kmalloc_index.exit.i, !dbg !1500

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1501
  %cmp36.i.i = icmp ule i64 %37, 2048, !dbg !1502
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1503

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1504
  br label %kmalloc_index.exit.i, !dbg !1504

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1505
  %cmp39.i.i = icmp ule i64 %38, 4096, !dbg !1506
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1507

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1508
  br label %kmalloc_index.exit.i, !dbg !1508

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1509
  %cmp42.i.i = icmp ule i64 %39, 8192, !dbg !1510
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1511

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1512
  br label %kmalloc_index.exit.i, !dbg !1512

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1513
  %cmp45.i.i = icmp ule i64 %40, 16384, !dbg !1514
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1515

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1516
  br label %kmalloc_index.exit.i, !dbg !1516

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1517
  %cmp48.i.i = icmp ule i64 %41, 32768, !dbg !1518
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1519

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1520
  br label %kmalloc_index.exit.i, !dbg !1520

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1521
  %cmp51.i.i = icmp ule i64 %42, 65536, !dbg !1522
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1523

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1524
  br label %kmalloc_index.exit.i, !dbg !1524

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1525
  %cmp54.i.i = icmp ule i64 %43, 131072, !dbg !1526
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1527

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1528
  br label %kmalloc_index.exit.i, !dbg !1528

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1529
  %cmp57.i.i = icmp ule i64 %44, 262144, !dbg !1530
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1531

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1532
  br label %kmalloc_index.exit.i, !dbg !1532

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1533
  %cmp60.i.i = icmp ule i64 %45, 524288, !dbg !1534
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1535

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1536
  br label %kmalloc_index.exit.i, !dbg !1536

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1537
  %cmp63.i.i = icmp ule i64 %46, 1048576, !dbg !1538
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1539

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1540
  br label %kmalloc_index.exit.i, !dbg !1540

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1541
  %cmp66.i.i = icmp ule i64 %47, 2097152, !dbg !1542
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1543

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1544
  br label %kmalloc_index.exit.i, !dbg !1544

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1545
  %cmp69.i.i = icmp ule i64 %48, 4194304, !dbg !1546
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1547

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1548
  br label %kmalloc_index.exit.i, !dbg !1548

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1549
  %cmp72.i.i = icmp ule i64 %49, 8388608, !dbg !1550
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1551

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1552
  br label %kmalloc_index.exit.i, !dbg !1552

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1553
  %cmp75.i.i = icmp ule i64 %50, 16777216, !dbg !1554
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1555

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1556
  br label %kmalloc_index.exit.i, !dbg !1556

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1557
  %cmp78.i.i = icmp ule i64 %51, 33554432, !dbg !1558
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1559

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1560
  br label %kmalloc_index.exit.i, !dbg !1560

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1561
  %cmp81.i.i = icmp ule i64 %52, 67108864, !dbg !1562
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1563

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1564
  br label %kmalloc_index.exit.i, !dbg !1564

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1565, !srcloc !620
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #8, !dbg !1566, !srcloc !624
  unreachable, !dbg !1567

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %53 = load i32, i32* %retval.i.i, align 4, !dbg !1568
  store i32 %53, i32* %index.i, align 4, !dbg !1569
  %54 = load i32, i32* %index.i, align 4, !dbg !1570
  %tobool.i = icmp ne i32 %54, 0, !dbg !1570
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1571

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1572
  br label %kmalloc.exit, !dbg !1572

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %55 = load i32, i32* %flags.addr.i, align 4, !dbg !1573
  store i32 %55, i32* %flags.addr.i13.i, align 4
  %56 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1574
  %and.i.i = and i32 %56, 17, !dbg !1574
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1574
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1574
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1574
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1574
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1575

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1576
  br label %kmalloc_type.exit.i, !dbg !1576

if.end.i16.i:                                     ; preds = %if.end4.i
  %57 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1577
  %and2.i.i = and i32 %57, 1, !dbg !1578
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1577
  %58 = zext i1 %tobool3.i.i to i64, !dbg !1577
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1577
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1579
  br label %kmalloc_type.exit.i, !dbg !1579

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %59 = load i32, i32* %retval.i12.i, align 4, !dbg !1580
  %idxprom.i = zext i32 %59 to i64, !dbg !1581
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1581
  %60 = load i32, i32* %index.i, align 4, !dbg !1582
  %idxprom6.i = zext i32 %60 to i64, !dbg !1581
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1581
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1581
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !1583
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1584
  store %struct.kmem_cache* %61, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %62, i32* %flags.addr.i17.i, align 4
  store i64 %63, i64* %size.addr.i18.i, align 8
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1585
  %65 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1586
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %64, i32 %65) #10, !dbg !1587
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1587
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1587
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1587
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1587
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1380
  %66 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1588
  %67 = load i8*, i8** %ret.i.i, align 8, !dbg !1589
  %68 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1590
  %69 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1591
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %66, i8* %67, i64 %68, i32 %69) #10, !dbg !1592
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1593
  %70 = load i8*, i8** %ret.i.i, align 8, !dbg !1594
  store i8* %70, i8** %retval.i, align 8, !dbg !1595
  br label %kmalloc.exit, !dbg !1595

if.end9.i:                                        ; preds = %entry
  %71 = load i64, i64* %size.addr.i, align 8, !dbg !1596
  %72 = load i32, i32* %flags.addr.i, align 4, !dbg !1597
  %call10.i = call noalias i8* @__kmalloc(i64 %71, i32 %72) #10, !dbg !1598
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1598
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1598
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1598
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1598
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1599
  br label %kmalloc.exit, !dbg !1599

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %73 = load i8*, i8** %retval.i, align 8, !dbg !1600
  store i8* %73, i8** %dbuf, align 8, !dbg !1601
  %74 = load i8*, i8** %dbuf, align 8, !dbg !1602
  %tobool = icmp ne i8* %74, null, !dbg !1602
  br i1 %tobool, label %if.end, label %if.then, !dbg !1604

if.then:                                          ; preds = %kmalloc.exit
  br label %return, !dbg !1605

if.end:                                           ; preds = %kmalloc.exit
  %75 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1606
  %76 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !1607
  %pitches = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %76, i32 0, i32 6, !dbg !1608
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %pitches, i64 0, i64 0, !dbg !1607
  %77 = load i32, i32* %arrayidx, align 8, !dbg !1607
  %call2 = call i32 @clip_offset(%struct.drm_rect* %75, i32 %77, i32 4) #7, !dbg !1609
  %78 = load i8*, i8** %vaddr.addr, align 8, !dbg !1610
  %idx.ext = zext i32 %call2 to i64, !dbg !1610
  %add.ptr = getelementptr i8, i8* %78, i64 %idx.ext, !dbg !1610
  store i8* %add.ptr, i8** %vaddr.addr, align 8, !dbg !1610
  %79 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1611
  %80 = load i32, i32* %dst_pitch.addr, align 4, !dbg !1612
  %call3 = call i32 @clip_offset(%struct.drm_rect* %79, i32 %80, i32 2) #7, !dbg !1613
  %81 = load i8*, i8** %dst.addr, align 8, !dbg !1614
  %idx.ext4 = zext i32 %call3 to i64, !dbg !1614
  %add.ptr5 = getelementptr i8, i8* %81, i64 %idx.ext4, !dbg !1614
  store i8* %add.ptr5, i8** %dst.addr, align 8, !dbg !1614
  store i32 0, i32* %y, align 4, !dbg !1615
  br label %for.cond, !dbg !1617

for.cond:                                         ; preds = %for.inc, %if.end
  %82 = load i32, i32* %y, align 4, !dbg !1618
  %83 = load i32, i32* %lines, align 4, !dbg !1620
  %cmp = icmp ult i32 %82, %83, !dbg !1621
  br i1 %cmp, label %for.body, label %for.end, !dbg !1622

for.body:                                         ; preds = %for.cond
  %84 = load i8*, i8** %dbuf, align 8, !dbg !1623
  %85 = load i8*, i8** %vaddr.addr, align 8, !dbg !1625
  %86 = bitcast i8* %85 to i32*, !dbg !1625
  %87 = load i64, i64* %linepixels, align 8, !dbg !1626
  %conv7 = trunc i64 %87 to i32, !dbg !1626
  call void @drm_fb_xrgb8888_to_rgb888_line(i8* %84, i32* %86, i32 %conv7) #7, !dbg !1627
  %88 = load i8*, i8** %dst.addr, align 8, !dbg !1628
  %89 = load i8*, i8** %dbuf, align 8, !dbg !1629
  %90 = load i64, i64* %dst_len, align 8, !dbg !1630
  call void @memcpy_toio(i8* %88, i8* %89, i64 %90) #7, !dbg !1631
  %91 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !1632
  %pitches8 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %91, i32 0, i32 6, !dbg !1633
  %arrayidx9 = getelementptr [4 x i32], [4 x i32]* %pitches8, i64 0, i64 0, !dbg !1632
  %92 = load i32, i32* %arrayidx9, align 8, !dbg !1632
  %93 = load i8*, i8** %vaddr.addr, align 8, !dbg !1634
  %idx.ext10 = zext i32 %92 to i64, !dbg !1634
  %add.ptr11 = getelementptr i8, i8* %93, i64 %idx.ext10, !dbg !1634
  store i8* %add.ptr11, i8** %vaddr.addr, align 8, !dbg !1634
  %94 = load i64, i64* %dst_len, align 8, !dbg !1635
  %95 = load i8*, i8** %dst.addr, align 8, !dbg !1636
  %add.ptr12 = getelementptr i8, i8* %95, i64 %94, !dbg !1636
  store i8* %add.ptr12, i8** %dst.addr, align 8, !dbg !1636
  br label %for.inc, !dbg !1637

for.inc:                                          ; preds = %for.body
  %96 = load i32, i32* %y, align 4, !dbg !1638
  %inc = add i32 %96, 1, !dbg !1638
  store i32 %inc, i32* %y, align 4, !dbg !1638
  br label %for.cond, !dbg !1639, !llvm.loop !1640

for.end:                                          ; preds = %for.cond
  %97 = load i8*, i8** %dbuf, align 8, !dbg !1642
  call void @kfree(i8* %97) #7, !dbg !1643
  br label %return, !dbg !1644

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !1644
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_fb_xrgb8888_to_rgb888_line(i8* %dbuf, i32* %sbuf, i32 %pixels) #0 !dbg !1645 {
entry:
  %dbuf.addr = alloca i8*, align 8
  %sbuf.addr = alloca i32*, align 8
  %pixels.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i8* %dbuf, i8** %dbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dbuf.addr, metadata !1649, metadata !DIExpression()), !dbg !1650
  store i32* %sbuf, i32** %sbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sbuf.addr, metadata !1651, metadata !DIExpression()), !dbg !1652
  store i32 %pixels, i32* %pixels.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pixels.addr, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.declare(metadata i32* %x, metadata !1655, metadata !DIExpression()), !dbg !1656
  store i32 0, i32* %x, align 4, !dbg !1657
  br label %for.cond, !dbg !1659

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4, !dbg !1660
  %1 = load i32, i32* %pixels.addr, align 4, !dbg !1662
  %cmp = icmp ult i32 %0, %1, !dbg !1663
  br i1 %cmp, label %for.body, label %for.end, !dbg !1664

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %sbuf.addr, align 8, !dbg !1665
  %3 = load i32, i32* %x, align 4, !dbg !1667
  %idxprom = zext i32 %3 to i64, !dbg !1665
  %arrayidx = getelementptr i32, i32* %2, i64 %idxprom, !dbg !1665
  %4 = load i32, i32* %arrayidx, align 4, !dbg !1665
  %and = and i32 %4, 255, !dbg !1668
  %shr = lshr i32 %and, 0, !dbg !1669
  %conv = trunc i32 %shr to i8, !dbg !1670
  %5 = load i8*, i8** %dbuf.addr, align 8, !dbg !1671
  %incdec.ptr = getelementptr i8, i8* %5, i32 1, !dbg !1671
  store i8* %incdec.ptr, i8** %dbuf.addr, align 8, !dbg !1671
  store i8 %conv, i8* %5, align 1, !dbg !1672
  %6 = load i32*, i32** %sbuf.addr, align 8, !dbg !1673
  %7 = load i32, i32* %x, align 4, !dbg !1674
  %idxprom1 = zext i32 %7 to i64, !dbg !1673
  %arrayidx2 = getelementptr i32, i32* %6, i64 %idxprom1, !dbg !1673
  %8 = load i32, i32* %arrayidx2, align 4, !dbg !1673
  %and3 = and i32 %8, 65280, !dbg !1675
  %shr4 = lshr i32 %and3, 8, !dbg !1676
  %conv5 = trunc i32 %shr4 to i8, !dbg !1677
  %9 = load i8*, i8** %dbuf.addr, align 8, !dbg !1678
  %incdec.ptr6 = getelementptr i8, i8* %9, i32 1, !dbg !1678
  store i8* %incdec.ptr6, i8** %dbuf.addr, align 8, !dbg !1678
  store i8 %conv5, i8* %9, align 1, !dbg !1679
  %10 = load i32*, i32** %sbuf.addr, align 8, !dbg !1680
  %11 = load i32, i32* %x, align 4, !dbg !1681
  %idxprom7 = zext i32 %11 to i64, !dbg !1680
  %arrayidx8 = getelementptr i32, i32* %10, i64 %idxprom7, !dbg !1680
  %12 = load i32, i32* %arrayidx8, align 4, !dbg !1680
  %and9 = and i32 %12, 16711680, !dbg !1682
  %shr10 = lshr i32 %and9, 16, !dbg !1683
  %conv11 = trunc i32 %shr10 to i8, !dbg !1684
  %13 = load i8*, i8** %dbuf.addr, align 8, !dbg !1685
  %incdec.ptr12 = getelementptr i8, i8* %13, i32 1, !dbg !1685
  store i8* %incdec.ptr12, i8** %dbuf.addr, align 8, !dbg !1685
  store i8 %conv11, i8* %13, align 1, !dbg !1686
  br label %for.inc, !dbg !1687

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %x, align 4, !dbg !1688
  %inc = add i32 %14, 1, !dbg !1688
  store i32 %inc, i32* %x, align 4, !dbg !1688
  br label %for.cond, !dbg !1689, !llvm.loop !1690

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1692
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_fb_xrgb8888_to_gray8(i8* %dst, i8* %vaddr, %struct.drm_framebuffer* %fb, %struct.drm_rect* %clip) #0 !dbg !1693 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !329, metadata !DIExpression()), !dbg !1696
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !345, metadata !DIExpression()), !dbg !1699
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !347, metadata !DIExpression()), !dbg !1700
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !349, metadata !DIExpression()), !dbg !1701
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !351, metadata !DIExpression()), !dbg !1702
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !357, metadata !DIExpression()), !dbg !1704
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !363, metadata !DIExpression()), !dbg !1706
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !372, metadata !DIExpression()), !dbg !1709
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !374, metadata !DIExpression()), !dbg !1710
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !376, metadata !DIExpression()), !dbg !1711
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !378, metadata !DIExpression()), !dbg !1712
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !380, metadata !DIExpression()), !dbg !1713
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !382, metadata !DIExpression()), !dbg !1714
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !384, metadata !DIExpression()), !dbg !1715
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !386, metadata !DIExpression()), !dbg !1716
  %dst.addr = alloca i8*, align 8
  %vaddr.addr = alloca i8*, align 8
  %fb.addr = alloca %struct.drm_framebuffer*, align 8
  %clip.addr = alloca %struct.drm_rect*, align 8
  %len = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %buf = alloca i8*, align 8
  %src = alloca i32*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !1717, metadata !DIExpression()), !dbg !1718
  store i8* %vaddr, i8** %vaddr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vaddr.addr, metadata !1719, metadata !DIExpression()), !dbg !1720
  store %struct.drm_framebuffer* %fb, %struct.drm_framebuffer** %fb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_framebuffer** %fb.addr, metadata !1721, metadata !DIExpression()), !dbg !1722
  store %struct.drm_rect* %clip, %struct.drm_rect** %clip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %clip.addr, metadata !1723, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.declare(metadata i32* %len, metadata !1725, metadata !DIExpression()), !dbg !1726
  %0 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1727
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %0, i32 0, i32 2, !dbg !1728
  %1 = load i32, i32* %x2, align 4, !dbg !1728
  %2 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1729
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %2, i32 0, i32 0, !dbg !1730
  %3 = load i32, i32* %x1, align 4, !dbg !1730
  %sub = sub i32 %1, %3, !dbg !1731
  %conv = sext i32 %sub to i64, !dbg !1732
  %mul = mul i64 %conv, 4, !dbg !1733
  %conv1 = trunc i64 %mul to i32, !dbg !1732
  store i32 %conv1, i32* %len, align 4, !dbg !1726
  call void @llvm.dbg.declare(metadata i32* %x, metadata !1734, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.declare(metadata i32* %y, metadata !1736, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !1738, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.declare(metadata i32** %src, metadata !1740, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !1742, metadata !DIExpression()), !dbg !1745
  %4 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !1745
  %format = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %4, i32 0, i32 4, !dbg !1745
  %5 = load %struct.drm_format_info*, %struct.drm_format_info** %format, align 8, !dbg !1745
  %format2 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %5, i32 0, i32 0, !dbg !1745
  %6 = load i32, i32* %format2, align 4, !dbg !1745
  %cmp = icmp ne i32 %6, 875713112, !dbg !1745
  %lnot = xor i1 %cmp, true, !dbg !1745
  %lnot4 = xor i1 %lnot, true, !dbg !1745
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1745
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !1745
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !1746
  %tobool = icmp ne i32 %7, 0, !dbg !1746
  %lnot5 = xor i1 %tobool, true, !dbg !1746
  %lnot7 = xor i1 %lnot5, true, !dbg !1746
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1746
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !1746
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !1746
  br i1 %tobool10, label %if.then, label %if.end, !dbg !1745

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1746

do.body:                                          ; preds = %if.then
  br label %do.body11, !dbg !1748

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !1750

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !1748

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 316, i32 2305, i64 12) #8, !dbg !1752, !srcloc !1754
  br label %do.end13, !dbg !1752

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 161) #8, !dbg !1755, !srcloc !1757
  br label %do.body14, !dbg !1748

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !1758

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !1748

do.end16:                                         ; preds = %do.end15
  br label %if.end, !dbg !1748

if.end:                                           ; preds = %do.end16, %entry
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !1745
  %tobool17 = icmp ne i32 %8, 0, !dbg !1745
  %lnot18 = xor i1 %tobool17, true, !dbg !1745
  %lnot20 = xor i1 %lnot18, true, !dbg !1745
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !1745
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !1745
  store i64 %conv22, i64* %tmp, align 8, !dbg !1746
  %9 = load i64, i64* %tmp, align 8, !dbg !1745
  %tobool23 = icmp ne i64 %9, 0, !dbg !1760
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1761

if.then24:                                        ; preds = %if.end
  br label %return, !dbg !1762

if.end25:                                         ; preds = %if.end
  %10 = load i32, i32* %len, align 4, !dbg !1763
  %conv26 = zext i32 %10 to i64, !dbg !1763
  store i64 %conv26, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !1764
  %12 = call i1 @llvm.is.constant.i64(i64 %11) #8, !dbg !1765
  br i1 %12, label %if.then.i, label %if.end9.i, !dbg !1766

if.then.i:                                        ; preds = %if.end25
  %13 = load i64, i64* %size.addr.i, align 8, !dbg !1767
  %cmp.i = icmp ugt i64 %13, 8192, !dbg !1768
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1769

if.then1.i:                                       ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1770
  %15 = load i32, i32* %flags.addr.i, align 4, !dbg !1771
  store i64 %14, i64* %size.addr.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i, align 4
  %16 = load i64, i64* %size.addr.i.i, align 8, !dbg !1772
  %call.i.i = call i32 @get_order(i64 %16) #9, !dbg !1773
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1713
  %17 = load i64, i64* %size.addr.i.i, align 8, !dbg !1774
  %18 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1775
  %19 = load i32, i32* %order.i.i, align 4, !dbg !1776
  store i64 %17, i64* %size.addr.i.i.i, align 8
  store i32 %18, i32* %flags.addr.i.i.i, align 4
  store i32 %19, i32* %order.addr.i.i.i, align 4
  %20 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1777
  %21 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1778
  %22 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1779
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %20, i32 %21, i32 %22) #10, !dbg !1780
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1780
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1780
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1780
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1780
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1781
  br label %kmalloc.exit, !dbg !1781

if.end.i:                                         ; preds = %if.then.i
  %23 = load i64, i64* %size.addr.i, align 8, !dbg !1782
  store i64 %23, i64* %size.addr.i11.i, align 8
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1783
  %tobool.i.i = icmp ne i64 %24, 0, !dbg !1783
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1784

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1785
  br label %kmalloc_index.exit.i, !dbg !1785

if.end.i.i:                                       ; preds = %if.end.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1786
  %cmp.i.i = icmp ule i64 %25, 8, !dbg !1787
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1788

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1789
  br label %kmalloc_index.exit.i, !dbg !1789

if.end2.i.i:                                      ; preds = %if.end.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1790
  %cmp3.i.i = icmp ugt i64 %26, 64, !dbg !1791
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1792

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1793
  %cmp4.i.i = icmp ule i64 %27, 96, !dbg !1794
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1795

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1796
  br label %kmalloc_index.exit.i, !dbg !1796

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1797
  %cmp7.i.i = icmp ugt i64 %28, 128, !dbg !1798
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1799

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1800
  %cmp9.i.i = icmp ule i64 %29, 192, !dbg !1801
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1802

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1803
  br label %kmalloc_index.exit.i, !dbg !1803

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1804
  %cmp12.i.i = icmp ule i64 %30, 8, !dbg !1805
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1806

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1807
  br label %kmalloc_index.exit.i, !dbg !1807

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1808
  %cmp15.i.i = icmp ule i64 %31, 16, !dbg !1809
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1810

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1811
  br label %kmalloc_index.exit.i, !dbg !1811

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1812
  %cmp18.i.i = icmp ule i64 %32, 32, !dbg !1813
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1814

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1815
  br label %kmalloc_index.exit.i, !dbg !1815

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1816
  %cmp21.i.i = icmp ule i64 %33, 64, !dbg !1817
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1818

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1819
  br label %kmalloc_index.exit.i, !dbg !1819

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1820
  %cmp24.i.i = icmp ule i64 %34, 128, !dbg !1821
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1822

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1823
  br label %kmalloc_index.exit.i, !dbg !1823

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1824
  %cmp27.i.i = icmp ule i64 %35, 256, !dbg !1825
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1826

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1827
  br label %kmalloc_index.exit.i, !dbg !1827

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1828
  %cmp30.i.i = icmp ule i64 %36, 512, !dbg !1829
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1830

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1831
  br label %kmalloc_index.exit.i, !dbg !1831

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1832
  %cmp33.i.i = icmp ule i64 %37, 1024, !dbg !1833
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1834

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1835
  br label %kmalloc_index.exit.i, !dbg !1835

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1836
  %cmp36.i.i = icmp ule i64 %38, 2048, !dbg !1837
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1838

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1839
  br label %kmalloc_index.exit.i, !dbg !1839

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1840
  %cmp39.i.i = icmp ule i64 %39, 4096, !dbg !1841
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1842

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1843
  br label %kmalloc_index.exit.i, !dbg !1843

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1844
  %cmp42.i.i = icmp ule i64 %40, 8192, !dbg !1845
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1846

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1847
  br label %kmalloc_index.exit.i, !dbg !1847

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1848
  %cmp45.i.i = icmp ule i64 %41, 16384, !dbg !1849
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1850

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1851
  br label %kmalloc_index.exit.i, !dbg !1851

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1852
  %cmp48.i.i = icmp ule i64 %42, 32768, !dbg !1853
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1854

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1855
  br label %kmalloc_index.exit.i, !dbg !1855

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1856
  %cmp51.i.i = icmp ule i64 %43, 65536, !dbg !1857
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1858

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1859
  br label %kmalloc_index.exit.i, !dbg !1859

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1860
  %cmp54.i.i = icmp ule i64 %44, 131072, !dbg !1861
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1862

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1863
  br label %kmalloc_index.exit.i, !dbg !1863

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1864
  %cmp57.i.i = icmp ule i64 %45, 262144, !dbg !1865
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1866

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1867
  br label %kmalloc_index.exit.i, !dbg !1867

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1868
  %cmp60.i.i = icmp ule i64 %46, 524288, !dbg !1869
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1870

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1871
  br label %kmalloc_index.exit.i, !dbg !1871

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1872
  %cmp63.i.i = icmp ule i64 %47, 1048576, !dbg !1873
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1874

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1875
  br label %kmalloc_index.exit.i, !dbg !1875

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1876
  %cmp66.i.i = icmp ule i64 %48, 2097152, !dbg !1877
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1878

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1879
  br label %kmalloc_index.exit.i, !dbg !1879

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1880
  %cmp69.i.i = icmp ule i64 %49, 4194304, !dbg !1881
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1882

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1883
  br label %kmalloc_index.exit.i, !dbg !1883

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1884
  %cmp72.i.i = icmp ule i64 %50, 8388608, !dbg !1885
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1886

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1887
  br label %kmalloc_index.exit.i, !dbg !1887

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1888
  %cmp75.i.i = icmp ule i64 %51, 16777216, !dbg !1889
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1890

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1891
  br label %kmalloc_index.exit.i, !dbg !1891

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1892
  %cmp78.i.i = icmp ule i64 %52, 33554432, !dbg !1893
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1894

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1895
  br label %kmalloc_index.exit.i, !dbg !1895

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1896
  %cmp81.i.i = icmp ule i64 %53, 67108864, !dbg !1897
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1898

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1899
  br label %kmalloc_index.exit.i, !dbg !1899

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1900, !srcloc !620
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #8, !dbg !1901, !srcloc !624
  unreachable, !dbg !1902

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %54 = load i32, i32* %retval.i.i, align 4, !dbg !1903
  store i32 %54, i32* %index.i, align 4, !dbg !1904
  %55 = load i32, i32* %index.i, align 4, !dbg !1905
  %tobool.i = icmp ne i32 %55, 0, !dbg !1905
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1906

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1907
  br label %kmalloc.exit, !dbg !1907

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %56 = load i32, i32* %flags.addr.i, align 4, !dbg !1908
  store i32 %56, i32* %flags.addr.i13.i, align 4
  %57 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1909
  %and.i.i = and i32 %57, 17, !dbg !1909
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1909
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1909
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1909
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1909
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1910

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1911
  br label %kmalloc_type.exit.i, !dbg !1911

if.end.i16.i:                                     ; preds = %if.end4.i
  %58 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1912
  %and2.i.i = and i32 %58, 1, !dbg !1913
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1912
  %59 = zext i1 %tobool3.i.i to i64, !dbg !1912
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1912
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1914
  br label %kmalloc_type.exit.i, !dbg !1914

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %60 = load i32, i32* %retval.i12.i, align 4, !dbg !1915
  %idxprom.i = zext i32 %60 to i64, !dbg !1916
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1916
  %61 = load i32, i32* %index.i, align 4, !dbg !1917
  %idxprom6.i = zext i32 %61 to i64, !dbg !1916
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1916
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1916
  %63 = load i32, i32* %flags.addr.i, align 4, !dbg !1918
  %64 = load i64, i64* %size.addr.i, align 8, !dbg !1919
  store %struct.kmem_cache* %62, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %63, i32* %flags.addr.i17.i, align 4
  store i64 %64, i64* %size.addr.i18.i, align 8
  %65 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1920
  %66 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1921
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %65, i32 %66) #10, !dbg !1922
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1922
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1922
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1922
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1922
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1701
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1923
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !1924
  %69 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1925
  %70 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1926
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %67, i8* %68, i64 %69, i32 %70) #10, !dbg !1927
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1928
  %71 = load i8*, i8** %ret.i.i, align 8, !dbg !1929
  store i8* %71, i8** %retval.i, align 8, !dbg !1930
  br label %kmalloc.exit, !dbg !1930

if.end9.i:                                        ; preds = %if.end25
  %72 = load i64, i64* %size.addr.i, align 8, !dbg !1931
  %73 = load i32, i32* %flags.addr.i, align 4, !dbg !1932
  %call10.i = call noalias i8* @__kmalloc(i64 %72, i32 %73) #10, !dbg !1933
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1933
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1933
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1933
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1933
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1934
  br label %kmalloc.exit, !dbg !1934

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %74 = load i8*, i8** %retval.i, align 8, !dbg !1935
  store i8* %74, i8** %buf, align 8, !dbg !1936
  %75 = load i8*, i8** %buf, align 8, !dbg !1937
  %tobool27 = icmp ne i8* %75, null, !dbg !1937
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !1939

if.then28:                                        ; preds = %kmalloc.exit
  br label %return, !dbg !1940

if.end29:                                         ; preds = %kmalloc.exit
  %76 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1941
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %76, i32 0, i32 1, !dbg !1943
  %77 = load i32, i32* %y1, align 4, !dbg !1943
  store i32 %77, i32* %y, align 4, !dbg !1944
  br label %for.cond, !dbg !1945

for.cond:                                         ; preds = %for.inc57, %if.end29
  %78 = load i32, i32* %y, align 4, !dbg !1946
  %79 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1948
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %79, i32 0, i32 3, !dbg !1949
  %80 = load i32, i32* %y2, align 4, !dbg !1949
  %cmp30 = icmp ult i32 %78, %80, !dbg !1950
  br i1 %cmp30, label %for.body, label %for.end59, !dbg !1951

for.body:                                         ; preds = %for.cond
  %81 = load i8*, i8** %vaddr.addr, align 8, !dbg !1952
  %82 = load i32, i32* %y, align 4, !dbg !1954
  %83 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %fb.addr, align 8, !dbg !1955
  %pitches = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %83, i32 0, i32 6, !dbg !1956
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %pitches, i64 0, i64 0, !dbg !1955
  %84 = load i32, i32* %arrayidx, align 8, !dbg !1955
  %mul32 = mul i32 %82, %84, !dbg !1957
  %idx.ext = zext i32 %mul32 to i64, !dbg !1958
  %add.ptr = getelementptr i8, i8* %81, i64 %idx.ext, !dbg !1958
  %85 = bitcast i8* %add.ptr to i32*, !dbg !1952
  store i32* %85, i32** %src, align 8, !dbg !1959
  %86 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1960
  %x133 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %86, i32 0, i32 0, !dbg !1961
  %87 = load i32, i32* %x133, align 4, !dbg !1961
  %88 = load i32*, i32** %src, align 8, !dbg !1962
  %idx.ext34 = sext i32 %87 to i64, !dbg !1962
  %add.ptr35 = getelementptr i32, i32* %88, i64 %idx.ext34, !dbg !1962
  store i32* %add.ptr35, i32** %src, align 8, !dbg !1962
  %89 = load i8*, i8** %buf, align 8, !dbg !1963
  %90 = load i32*, i32** %src, align 8, !dbg !1964
  %91 = bitcast i32* %90 to i8*, !dbg !1965
  %92 = load i32, i32* %len, align 4, !dbg !1966
  %conv36 = zext i32 %92 to i64, !dbg !1966
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %89, i8* align 4 %91, i64 %conv36, i1 false), !dbg !1965
  %93 = load i8*, i8** %buf, align 8, !dbg !1967
  %94 = bitcast i8* %93 to i32*, !dbg !1967
  store i32* %94, i32** %src, align 8, !dbg !1968
  %95 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1969
  %x137 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %95, i32 0, i32 0, !dbg !1971
  %96 = load i32, i32* %x137, align 4, !dbg !1971
  store i32 %96, i32* %x, align 4, !dbg !1972
  br label %for.cond38, !dbg !1973

for.cond38:                                       ; preds = %for.inc, %for.body
  %97 = load i32, i32* %x, align 4, !dbg !1974
  %98 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !1976
  %x239 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %98, i32 0, i32 2, !dbg !1977
  %99 = load i32, i32* %x239, align 4, !dbg !1977
  %cmp40 = icmp ult i32 %97, %99, !dbg !1978
  br i1 %cmp40, label %for.body42, label %for.end, !dbg !1979

for.body42:                                       ; preds = %for.cond38
  call void @llvm.dbg.declare(metadata i8* %r, metadata !1980, metadata !DIExpression()), !dbg !1982
  %100 = load i32*, i32** %src, align 8, !dbg !1983
  %101 = load i32, i32* %100, align 4, !dbg !1984
  %and = and i32 %101, 16711680, !dbg !1985
  %shr = lshr i32 %and, 16, !dbg !1986
  %conv43 = trunc i32 %shr to i8, !dbg !1987
  store i8 %conv43, i8* %r, align 1, !dbg !1982
  call void @llvm.dbg.declare(metadata i8* %g, metadata !1988, metadata !DIExpression()), !dbg !1989
  %102 = load i32*, i32** %src, align 8, !dbg !1990
  %103 = load i32, i32* %102, align 4, !dbg !1991
  %and44 = and i32 %103, 65280, !dbg !1992
  %shr45 = lshr i32 %and44, 8, !dbg !1993
  %conv46 = trunc i32 %shr45 to i8, !dbg !1994
  store i8 %conv46, i8* %g, align 1, !dbg !1989
  call void @llvm.dbg.declare(metadata i8* %b, metadata !1995, metadata !DIExpression()), !dbg !1996
  %104 = load i32*, i32** %src, align 8, !dbg !1997
  %105 = load i32, i32* %104, align 4, !dbg !1998
  %and47 = and i32 %105, 255, !dbg !1999
  %conv48 = trunc i32 %and47 to i8, !dbg !1998
  store i8 %conv48, i8* %b, align 1, !dbg !1996
  %106 = load i8, i8* %r, align 1, !dbg !2000
  %conv49 = zext i8 %106 to i32, !dbg !2000
  %mul50 = mul i32 3, %conv49, !dbg !2001
  %107 = load i8, i8* %g, align 1, !dbg !2002
  %conv51 = zext i8 %107 to i32, !dbg !2002
  %mul52 = mul i32 6, %conv51, !dbg !2003
  %add = add i32 %mul50, %mul52, !dbg !2004
  %108 = load i8, i8* %b, align 1, !dbg !2005
  %conv53 = zext i8 %108 to i32, !dbg !2005
  %add54 = add i32 %add, %conv53, !dbg !2006
  %div = sdiv i32 %add54, 10, !dbg !2007
  %conv55 = trunc i32 %div to i8, !dbg !2008
  %109 = load i8*, i8** %dst.addr, align 8, !dbg !2009
  %incdec.ptr = getelementptr i8, i8* %109, i32 1, !dbg !2009
  store i8* %incdec.ptr, i8** %dst.addr, align 8, !dbg !2009
  store i8 %conv55, i8* %109, align 1, !dbg !2010
  %110 = load i32*, i32** %src, align 8, !dbg !2011
  %incdec.ptr56 = getelementptr i32, i32* %110, i32 1, !dbg !2011
  store i32* %incdec.ptr56, i32** %src, align 8, !dbg !2011
  br label %for.inc, !dbg !2012

for.inc:                                          ; preds = %for.body42
  %111 = load i32, i32* %x, align 4, !dbg !2013
  %inc = add i32 %111, 1, !dbg !2013
  store i32 %inc, i32* %x, align 4, !dbg !2013
  br label %for.cond38, !dbg !2014, !llvm.loop !2015

for.end:                                          ; preds = %for.cond38
  br label %for.inc57, !dbg !2017

for.inc57:                                        ; preds = %for.end
  %112 = load i32, i32* %y, align 4, !dbg !2018
  %inc58 = add i32 %112, 1, !dbg !2018
  store i32 %inc58, i32* %y, align 4, !dbg !2018
  br label %for.cond, !dbg !2019, !llvm.loop !2020

for.end59:                                        ; preds = %for.cond
  %113 = load i8*, i8** %buf, align 8, !dbg !2022
  call void @kfree(i8* %113) #7, !dbg !2023
  br label %return, !dbg !2024

return:                                           ; preds = %for.end59, %if.then28, %if.then24
  ret void, !dbg !2024
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #4 !dbg !2025 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2029, metadata !DIExpression()), !dbg !2034
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2036, metadata !DIExpression()), !dbg !2037
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2038, metadata !DIExpression()), !dbg !2039
  %0 = load i64, i64* %size.addr, align 8, !dbg !2040
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2042
  br i1 %1, label %if.then, label %if.end447, !dbg !2043

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2044
  %tobool = icmp ne i64 %2, 0, !dbg !2044
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2047

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2048
  br label %return, !dbg !2048

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2049
  %cmp = icmp ult i64 %3, 4096, !dbg !2051
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2052

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2053
  br label %return, !dbg !2053

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub = sub i64 %4, 1, !dbg !2054
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2054
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2054

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub4 = sub i64 %6, 1, !dbg !2054
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2054
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2054

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub6 = sub i64 %8, 1, !dbg !2054
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2054
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2054

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2054

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub9 = sub i64 %9, 1, !dbg !2054
  %and = and i64 %sub9, -9223372036854775808, !dbg !2054
  %tobool10 = icmp ne i64 %and, 0, !dbg !2054
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2054

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2054

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub13 = sub i64 %10, 1, !dbg !2054
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2054
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2054
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2054

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2054

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub18 = sub i64 %11, 1, !dbg !2054
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2054
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2054
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2054

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2054

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub23 = sub i64 %12, 1, !dbg !2054
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2054
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2054
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2054

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2054

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub28 = sub i64 %13, 1, !dbg !2054
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2054
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2054
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2054

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2054

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub33 = sub i64 %14, 1, !dbg !2054
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2054
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2054
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2054

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2054

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub38 = sub i64 %15, 1, !dbg !2054
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2054
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2054
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2054

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2054

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub43 = sub i64 %16, 1, !dbg !2054
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2054
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2054
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2054

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2054

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub48 = sub i64 %17, 1, !dbg !2054
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2054
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2054
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2054

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2054

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub53 = sub i64 %18, 1, !dbg !2054
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2054
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2054
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2054

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2054

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub58 = sub i64 %19, 1, !dbg !2054
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2054
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2054
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2054

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2054

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub63 = sub i64 %20, 1, !dbg !2054
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2054
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2054
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2054

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2054

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub68 = sub i64 %21, 1, !dbg !2054
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2054
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2054
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2054

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2054

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub73 = sub i64 %22, 1, !dbg !2054
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2054
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2054
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2054

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2054

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub78 = sub i64 %23, 1, !dbg !2054
  %and79 = and i64 %sub78, 562949953421312, !dbg !2054
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2054
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2054

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2054

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub83 = sub i64 %24, 1, !dbg !2054
  %and84 = and i64 %sub83, 281474976710656, !dbg !2054
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2054
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2054

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2054

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub88 = sub i64 %25, 1, !dbg !2054
  %and89 = and i64 %sub88, 140737488355328, !dbg !2054
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2054
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2054

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2054

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub93 = sub i64 %26, 1, !dbg !2054
  %and94 = and i64 %sub93, 70368744177664, !dbg !2054
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2054
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2054

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2054

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub98 = sub i64 %27, 1, !dbg !2054
  %and99 = and i64 %sub98, 35184372088832, !dbg !2054
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2054
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2054

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2054

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub103 = sub i64 %28, 1, !dbg !2054
  %and104 = and i64 %sub103, 17592186044416, !dbg !2054
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2054
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2054

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2054

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub108 = sub i64 %29, 1, !dbg !2054
  %and109 = and i64 %sub108, 8796093022208, !dbg !2054
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2054
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2054

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2054

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub113 = sub i64 %30, 1, !dbg !2054
  %and114 = and i64 %sub113, 4398046511104, !dbg !2054
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2054
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2054

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2054

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub118 = sub i64 %31, 1, !dbg !2054
  %and119 = and i64 %sub118, 2199023255552, !dbg !2054
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2054
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2054

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2054

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub123 = sub i64 %32, 1, !dbg !2054
  %and124 = and i64 %sub123, 1099511627776, !dbg !2054
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2054
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2054

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2054

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub128 = sub i64 %33, 1, !dbg !2054
  %and129 = and i64 %sub128, 549755813888, !dbg !2054
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2054
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2054

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2054

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub133 = sub i64 %34, 1, !dbg !2054
  %and134 = and i64 %sub133, 274877906944, !dbg !2054
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2054
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2054

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2054

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub138 = sub i64 %35, 1, !dbg !2054
  %and139 = and i64 %sub138, 137438953472, !dbg !2054
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2054
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2054

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2054

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub143 = sub i64 %36, 1, !dbg !2054
  %and144 = and i64 %sub143, 68719476736, !dbg !2054
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2054
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2054

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2054

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub148 = sub i64 %37, 1, !dbg !2054
  %and149 = and i64 %sub148, 34359738368, !dbg !2054
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2054
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2054

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2054

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub153 = sub i64 %38, 1, !dbg !2054
  %and154 = and i64 %sub153, 17179869184, !dbg !2054
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2054
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2054

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2054

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub158 = sub i64 %39, 1, !dbg !2054
  %and159 = and i64 %sub158, 8589934592, !dbg !2054
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2054
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2054

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2054

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub163 = sub i64 %40, 1, !dbg !2054
  %and164 = and i64 %sub163, 4294967296, !dbg !2054
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2054
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2054

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2054

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub168 = sub i64 %41, 1, !dbg !2054
  %and169 = and i64 %sub168, 2147483648, !dbg !2054
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2054
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2054

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2054

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub173 = sub i64 %42, 1, !dbg !2054
  %and174 = and i64 %sub173, 1073741824, !dbg !2054
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2054
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2054

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2054

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub178 = sub i64 %43, 1, !dbg !2054
  %and179 = and i64 %sub178, 536870912, !dbg !2054
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2054
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2054

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2054

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub183 = sub i64 %44, 1, !dbg !2054
  %and184 = and i64 %sub183, 268435456, !dbg !2054
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2054
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2054

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2054

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub188 = sub i64 %45, 1, !dbg !2054
  %and189 = and i64 %sub188, 134217728, !dbg !2054
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2054
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2054

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2054

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub193 = sub i64 %46, 1, !dbg !2054
  %and194 = and i64 %sub193, 67108864, !dbg !2054
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2054
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2054

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2054

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub198 = sub i64 %47, 1, !dbg !2054
  %and199 = and i64 %sub198, 33554432, !dbg !2054
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2054
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2054

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2054

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub203 = sub i64 %48, 1, !dbg !2054
  %and204 = and i64 %sub203, 16777216, !dbg !2054
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2054
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2054

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2054

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub208 = sub i64 %49, 1, !dbg !2054
  %and209 = and i64 %sub208, 8388608, !dbg !2054
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2054
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2054

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2054

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub213 = sub i64 %50, 1, !dbg !2054
  %and214 = and i64 %sub213, 4194304, !dbg !2054
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2054
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2054

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2054

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub218 = sub i64 %51, 1, !dbg !2054
  %and219 = and i64 %sub218, 2097152, !dbg !2054
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2054
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2054

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2054

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub223 = sub i64 %52, 1, !dbg !2054
  %and224 = and i64 %sub223, 1048576, !dbg !2054
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2054
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2054

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2054

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub228 = sub i64 %53, 1, !dbg !2054
  %and229 = and i64 %sub228, 524288, !dbg !2054
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2054
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2054

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2054

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub233 = sub i64 %54, 1, !dbg !2054
  %and234 = and i64 %sub233, 262144, !dbg !2054
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2054
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2054

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2054

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub238 = sub i64 %55, 1, !dbg !2054
  %and239 = and i64 %sub238, 131072, !dbg !2054
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2054
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2054

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2054

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub243 = sub i64 %56, 1, !dbg !2054
  %and244 = and i64 %sub243, 65536, !dbg !2054
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2054
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2054

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2054

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub248 = sub i64 %57, 1, !dbg !2054
  %and249 = and i64 %sub248, 32768, !dbg !2054
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2054
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2054

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2054

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub253 = sub i64 %58, 1, !dbg !2054
  %and254 = and i64 %sub253, 16384, !dbg !2054
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2054
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2054

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2054

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub258 = sub i64 %59, 1, !dbg !2054
  %and259 = and i64 %sub258, 8192, !dbg !2054
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2054
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2054

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2054

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub263 = sub i64 %60, 1, !dbg !2054
  %and264 = and i64 %sub263, 4096, !dbg !2054
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2054
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2054

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2054

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub268 = sub i64 %61, 1, !dbg !2054
  %and269 = and i64 %sub268, 2048, !dbg !2054
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2054
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2054

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2054

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub273 = sub i64 %62, 1, !dbg !2054
  %and274 = and i64 %sub273, 1024, !dbg !2054
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2054
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2054

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2054

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub278 = sub i64 %63, 1, !dbg !2054
  %and279 = and i64 %sub278, 512, !dbg !2054
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2054
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2054

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2054

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub283 = sub i64 %64, 1, !dbg !2054
  %and284 = and i64 %sub283, 256, !dbg !2054
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2054
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2054

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2054

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub288 = sub i64 %65, 1, !dbg !2054
  %and289 = and i64 %sub288, 128, !dbg !2054
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2054
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2054

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2054

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub293 = sub i64 %66, 1, !dbg !2054
  %and294 = and i64 %sub293, 64, !dbg !2054
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2054
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2054

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2054

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub298 = sub i64 %67, 1, !dbg !2054
  %and299 = and i64 %sub298, 32, !dbg !2054
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2054
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2054

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2054

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub303 = sub i64 %68, 1, !dbg !2054
  %and304 = and i64 %sub303, 16, !dbg !2054
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2054
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2054

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2054

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub308 = sub i64 %69, 1, !dbg !2054
  %and309 = and i64 %sub308, 8, !dbg !2054
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2054
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2054

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2054

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub313 = sub i64 %70, 1, !dbg !2054
  %and314 = and i64 %sub313, 4, !dbg !2054
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2054
  %71 = zext i1 %tobool315 to i64, !dbg !2054
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2054
  br label %cond.end, !dbg !2054

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2054
  br label %cond.end317, !dbg !2054

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2054
  br label %cond.end319, !dbg !2054

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2054
  br label %cond.end321, !dbg !2054

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2054
  br label %cond.end323, !dbg !2054

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2054
  br label %cond.end325, !dbg !2054

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2054
  br label %cond.end327, !dbg !2054

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2054
  br label %cond.end329, !dbg !2054

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2054
  br label %cond.end331, !dbg !2054

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2054
  br label %cond.end333, !dbg !2054

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2054
  br label %cond.end335, !dbg !2054

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2054
  br label %cond.end337, !dbg !2054

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2054
  br label %cond.end339, !dbg !2054

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2054
  br label %cond.end341, !dbg !2054

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2054
  br label %cond.end343, !dbg !2054

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2054
  br label %cond.end345, !dbg !2054

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2054
  br label %cond.end347, !dbg !2054

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2054
  br label %cond.end349, !dbg !2054

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2054
  br label %cond.end351, !dbg !2054

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2054
  br label %cond.end353, !dbg !2054

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2054
  br label %cond.end355, !dbg !2054

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2054
  br label %cond.end357, !dbg !2054

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2054
  br label %cond.end359, !dbg !2054

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2054
  br label %cond.end361, !dbg !2054

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2054
  br label %cond.end363, !dbg !2054

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2054
  br label %cond.end365, !dbg !2054

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2054
  br label %cond.end367, !dbg !2054

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2054
  br label %cond.end369, !dbg !2054

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2054
  br label %cond.end371, !dbg !2054

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2054
  br label %cond.end373, !dbg !2054

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2054
  br label %cond.end375, !dbg !2054

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2054
  br label %cond.end377, !dbg !2054

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2054
  br label %cond.end379, !dbg !2054

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2054
  br label %cond.end381, !dbg !2054

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2054
  br label %cond.end383, !dbg !2054

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2054
  br label %cond.end385, !dbg !2054

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2054
  br label %cond.end387, !dbg !2054

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2054
  br label %cond.end389, !dbg !2054

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2054
  br label %cond.end391, !dbg !2054

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2054
  br label %cond.end393, !dbg !2054

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2054
  br label %cond.end395, !dbg !2054

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2054
  br label %cond.end397, !dbg !2054

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2054
  br label %cond.end399, !dbg !2054

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2054
  br label %cond.end401, !dbg !2054

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2054
  br label %cond.end403, !dbg !2054

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2054
  br label %cond.end405, !dbg !2054

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2054
  br label %cond.end407, !dbg !2054

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2054
  br label %cond.end409, !dbg !2054

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2054
  br label %cond.end411, !dbg !2054

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2054
  br label %cond.end413, !dbg !2054

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2054
  br label %cond.end415, !dbg !2054

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2054
  br label %cond.end417, !dbg !2054

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2054
  br label %cond.end419, !dbg !2054

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2054
  br label %cond.end421, !dbg !2054

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2054
  br label %cond.end423, !dbg !2054

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2054
  br label %cond.end425, !dbg !2054

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2054
  br label %cond.end427, !dbg !2054

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2054
  br label %cond.end429, !dbg !2054

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2054
  br label %cond.end431, !dbg !2054

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2054
  br label %cond.end433, !dbg !2054

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2054
  br label %cond.end435, !dbg !2054

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2054
  br label %cond.end437, !dbg !2054

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2054
  br label %cond.end440, !dbg !2054

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2054

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2054
  br label %cond.end444, !dbg !2054

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2054
  %sub443 = sub i64 %72, 1, !dbg !2054
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !2054
  br label %cond.end444, !dbg !2054

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2054
  %sub446 = sub i32 %cond445, 12, !dbg !2055
  %add = add i32 %sub446, 1, !dbg !2056
  store i32 %add, i32* %retval, align 4, !dbg !2057
  br label %return, !dbg !2057

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2058
  %dec = add i64 %73, -1, !dbg !2058
  store i64 %dec, i64* %size.addr, align 8, !dbg !2058
  %74 = load i64, i64* %size.addr, align 8, !dbg !2059
  %shr = lshr i64 %74, 12, !dbg !2059
  store i64 %shr, i64* %size.addr, align 8, !dbg !2059
  %75 = load i64, i64* %size.addr, align 8, !dbg !2060
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2037
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2061
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2062
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !2061, !srcloc !2063
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2061
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2064
  %add.i = add i32 %79, 1, !dbg !2065
  store i32 %add.i, i32* %retval, align 4, !dbg !2066
  br label %return, !dbg !2066

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2067
  ret i32 %80, !dbg !2067
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #4 !dbg !2068 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2029, metadata !DIExpression()), !dbg !2072
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2036, metadata !DIExpression()), !dbg !2074
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2075, metadata !DIExpression()), !dbg !2076
  %0 = load i64, i64* %n.addr, align 8, !dbg !2077
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2074
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2078
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2079
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !2078, !srcloc !2063
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2078
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2080
  %add.i = add i32 %4, 1, !dbg !2081
  %sub = sub i32 %add.i, 1, !dbg !2082
  ret i32 %sub, !dbg !2083
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2084 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2090, metadata !DIExpression()), !dbg !2091
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2092, metadata !DIExpression()), !dbg !2093
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2094, metadata !DIExpression()), !dbg !2095
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2096, metadata !DIExpression()), !dbg !2097
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2098
  ret i8* %0, !dbg !2099
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #4 !dbg !2100 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2102, metadata !DIExpression()), !dbg !2103
  %0 = load i32, i32* %val.addr, align 4, !dbg !2104
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #12, !dbg !2105, !srcloc !2106
  store i32 %1, i32* %val.addr, align 4, !dbg !2105
  %2 = load i32, i32* %val.addr, align 4, !dbg !2107
  ret i32 %2, !dbg !2108
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #5

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/drm_format_helper.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4, line: 305, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!11 = !{!12, !13, !15, !17}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !14, line: 148, baseType: !5)
!14 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !5)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !18)
!18 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"Code Model", i32 2}
!23 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!24 = distinct !DISubprogram(name: "drm_fb_memcpy", scope: !1, file: !1, line: 36, type: !25, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !170)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !12, !12, !27, !162}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !29, line: 117, size: 1600, elements: !30)
!29 = !DIFile(filename: "./include/drm/drm_framebuffer.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !35, !41, !87, !92, !120, !148, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !28, file: !29, line: 121, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !34, line: 10, flags: DIFlagFwdDecl)
!34 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/lizy2001/genbc/linux")
!35 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !28, file: !29, line: 126, baseType: !36, size: 128, offset: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !14, line: 178, size: 128, elements: !37)
!37 = !{!38, !40}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !36, file: !14, line: 179, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !36, file: !14, line: 179, baseType: !39, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !28, file: !29, line: 131, baseType: !42, size: 256, offset: 192)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !43, line: 55, size: 256, elements: !44)
!43 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !49, !50, !68, !82}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !42, file: !43, line: 56, baseType: !46, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 104, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !48, line: 21, baseType: !15)
!48 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!49 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !43, line: 57, baseType: !46, size: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !42, file: !43, line: 58, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !43, line: 67, size: 3136, elements: !53)
!53 = !{!54, !56, !62}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !52, file: !43, line: 73, baseType: !55, size: 32)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !52, file: !43, line: 82, baseType: !57, size: 1536, offset: 64)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1536, elements: !60)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !43, line: 29, flags: DIFlagFwdDecl)
!60 = !{!61}
!61 = !DISubrange(count: 24)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !52, file: !43, line: 102, baseType: !63, size: 1536, offset: 1600)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 1536, elements: !60)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 107, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !48, line: 23, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !67)
!67 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !42, file: !43, line: 59, baseType: !69, size: 32, offset: 128)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !70, line: 19, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !69, file: !70, line: 20, baseType: !73, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !74, line: 113, baseType: !75)
!74 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !74, line: 111, size: 32, elements: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !75, file: !74, line: 112, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !14, line: 168, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 166, size: 32, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !79, file: !14, line: 167, baseType: !55, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !42, file: !43, line: 60, baseType: !83, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !28, file: !29, line: 136, baseType: !88, size: 128, offset: 448)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !90)
!89 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!90 = !{!91}
!91 = !DISubrange(count: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !28, file: !29, line: 141, baseType: !93, size: 64, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !96, line: 56, size: 192, elements: !97)
!96 = !DIFile(filename: "./include/drm/drm_fourcc.h", directory: "/home/lizy2001/genbc/linux")
!97 = !{!98, !99, !103, !104, !112, !113, !114, !115, !116, !119}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !95, file: !96, line: 58, baseType: !47, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !95, file: !96, line: 67, baseType: !100, size: 8, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !48, line: 17, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !102)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "num_planes", scope: !95, file: !96, line: 70, baseType: !100, size: 8, offset: 40)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !96, line: 72, baseType: !105, size: 32, offset: 48)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !96, line: 72, size: 32, elements: !106)
!106 = !{!107, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "cpp", scope: !105, file: !96, line: 81, baseType: !108, size: 32)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 32, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 4)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "char_per_block", scope: !105, file: !96, line: 107, baseType: !108, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "block_w", scope: !95, file: !96, line: 116, baseType: !108, size: 32, offset: 80)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "block_h", scope: !95, file: !96, line: 124, baseType: !108, size: 32, offset: 112)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "hsub", scope: !95, file: !96, line: 127, baseType: !100, size: 8, offset: 144)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "vsub", scope: !95, file: !96, line: 129, baseType: !100, size: 8, offset: 152)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "has_alpha", scope: !95, file: !96, line: 132, baseType: !117, size: 8, offset: 160)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !14, line: 30, baseType: !118)
!118 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "is_yuv", scope: !95, file: !96, line: 135, baseType: !117, size: 8, offset: 168)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !28, file: !29, line: 145, baseType: !121, size: 64, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer_funcs", file: !29, line: 42, size: 192, elements: !124)
!124 = !{!125, !129, !136}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !123, file: !29, line: 53, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !27}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "create_handle", scope: !123, file: !29, line: 73, baseType: !130, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!55, !27, !133, !135}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !34, line: 9, flags: DIFlagFwdDecl)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !123, file: !29, line: 97, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!55, !27, !133, !5, !5, !140, !5}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_clip_rect", file: !142, line: 97, size: 64, elements: !143)
!142 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/lizy2001/genbc/linux")
!143 = !{!144, !145, !146, !147}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !141, file: !142, line: 98, baseType: !18, size: 16)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !141, file: !142, line: 99, baseType: !18, size: 16, offset: 16)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !141, file: !142, line: 100, baseType: !18, size: 16, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !141, file: !142, line: 101, baseType: !18, size: 16, offset: 48)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !28, file: !29, line: 150, baseType: !149, size: 128, offset: 704)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !109)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !28, file: !29, line: 168, baseType: !149, size: 128, offset: 832)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !28, file: !29, line: 175, baseType: !64, size: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !28, file: !29, line: 180, baseType: !5, size: 32, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !28, file: !29, line: 185, baseType: !5, size: 32, offset: 1056)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !28, file: !29, line: 190, baseType: !55, size: 32, offset: 1088)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "hot_x", scope: !28, file: !29, line: 196, baseType: !55, size: 32, offset: 1120)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "hot_y", scope: !28, file: !29, line: 202, baseType: !55, size: 32, offset: 1152)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "filp_head", scope: !28, file: !29, line: 206, baseType: !36, size: 128, offset: 1216)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !28, file: !29, line: 213, baseType: !159, size: 256, offset: 1344)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !109)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !29, line: 37, flags: DIFlagFwdDecl)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !164, line: 43, size: 128, elements: !165)
!164 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !167, !168, !169}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !163, file: !164, line: 44, baseType: !55, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !163, file: !164, line: 44, baseType: !55, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !163, file: !164, line: 44, baseType: !55, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !163, file: !164, line: 44, baseType: !55, size: 32, offset: 96)
!170 = !{}
!171 = !DILocalVariable(name: "dst", arg: 1, scope: !24, file: !1, line: 36, type: !12)
!172 = !DILocation(line: 36, column: 26, scope: !24)
!173 = !DILocalVariable(name: "vaddr", arg: 2, scope: !24, file: !1, line: 36, type: !12)
!174 = !DILocation(line: 36, column: 37, scope: !24)
!175 = !DILocalVariable(name: "fb", arg: 3, scope: !24, file: !1, line: 36, type: !27)
!176 = !DILocation(line: 36, column: 68, scope: !24)
!177 = !DILocalVariable(name: "clip", arg: 4, scope: !24, file: !1, line: 37, type: !162)
!178 = !DILocation(line: 37, column: 23, scope: !24)
!179 = !DILocalVariable(name: "cpp", scope: !24, file: !1, line: 39, type: !5)
!180 = !DILocation(line: 39, column: 15, scope: !24)
!181 = !DILocation(line: 39, column: 21, scope: !24)
!182 = !DILocation(line: 39, column: 25, scope: !24)
!183 = !DILocation(line: 39, column: 33, scope: !24)
!184 = !DILocalVariable(name: "len", scope: !24, file: !1, line: 40, type: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 55, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !187, line: 72, baseType: !188)
!187 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !187, line: 16, baseType: !189)
!189 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!190 = !DILocation(line: 40, column: 9, scope: !24)
!191 = !DILocation(line: 40, column: 16, scope: !24)
!192 = !DILocation(line: 40, column: 22, scope: !24)
!193 = !DILocation(line: 40, column: 27, scope: !24)
!194 = !DILocation(line: 40, column: 33, scope: !24)
!195 = !DILocation(line: 40, column: 25, scope: !24)
!196 = !DILocation(line: 40, column: 39, scope: !24)
!197 = !DILocation(line: 40, column: 37, scope: !24)
!198 = !DILocation(line: 40, column: 15, scope: !24)
!199 = !DILocalVariable(name: "y", scope: !24, file: !1, line: 41, type: !5)
!200 = !DILocation(line: 41, column: 15, scope: !24)
!201 = !DILocalVariable(name: "lines", scope: !24, file: !1, line: 41, type: !5)
!202 = !DILocation(line: 41, column: 18, scope: !24)
!203 = !DILocation(line: 41, column: 26, scope: !24)
!204 = !DILocation(line: 41, column: 32, scope: !24)
!205 = !DILocation(line: 41, column: 37, scope: !24)
!206 = !DILocation(line: 41, column: 43, scope: !24)
!207 = !DILocation(line: 41, column: 35, scope: !24)
!208 = !DILocation(line: 43, column: 23, scope: !24)
!209 = !DILocation(line: 43, column: 29, scope: !24)
!210 = !DILocation(line: 43, column: 33, scope: !24)
!211 = !DILocation(line: 43, column: 45, scope: !24)
!212 = !DILocation(line: 43, column: 11, scope: !24)
!213 = !DILocation(line: 43, column: 8, scope: !24)
!214 = !DILocation(line: 44, column: 9, scope: !215)
!215 = distinct !DILexicalBlock(scope: !24, file: !1, line: 44, column: 2)
!216 = !DILocation(line: 44, column: 7, scope: !215)
!217 = !DILocation(line: 44, column: 14, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !1, line: 44, column: 2)
!219 = !DILocation(line: 44, column: 18, scope: !218)
!220 = !DILocation(line: 44, column: 16, scope: !218)
!221 = !DILocation(line: 44, column: 2, scope: !215)
!222 = !DILocation(line: 45, column: 10, scope: !223)
!223 = distinct !DILexicalBlock(scope: !218, file: !1, line: 44, column: 30)
!224 = !DILocation(line: 45, column: 15, scope: !223)
!225 = !DILocation(line: 45, column: 22, scope: !223)
!226 = !DILocation(line: 45, column: 3, scope: !223)
!227 = !DILocation(line: 46, column: 12, scope: !223)
!228 = !DILocation(line: 46, column: 16, scope: !223)
!229 = !DILocation(line: 46, column: 9, scope: !223)
!230 = !DILocation(line: 47, column: 10, scope: !223)
!231 = !DILocation(line: 47, column: 7, scope: !223)
!232 = !DILocation(line: 48, column: 2, scope: !223)
!233 = !DILocation(line: 44, column: 26, scope: !218)
!234 = !DILocation(line: 44, column: 2, scope: !218)
!235 = distinct !{!235, !221, !236}
!236 = !DILocation(line: 48, column: 2, scope: !215)
!237 = !DILocation(line: 49, column: 1, scope: !24)
!238 = distinct !DISubprogram(name: "clip_offset", scope: !1, file: !1, line: 20, type: !239, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!239 = !DISubroutineType(types: !240)
!240 = !{!5, !162, !5, !5}
!241 = !DILocalVariable(name: "clip", arg: 1, scope: !238, file: !1, line: 20, type: !162)
!242 = !DILocation(line: 20, column: 50, scope: !238)
!243 = !DILocalVariable(name: "pitch", arg: 2, scope: !238, file: !1, line: 21, type: !5)
!244 = !DILocation(line: 21, column: 18, scope: !238)
!245 = !DILocalVariable(name: "cpp", arg: 3, scope: !238, file: !1, line: 21, type: !5)
!246 = !DILocation(line: 21, column: 38, scope: !238)
!247 = !DILocation(line: 23, column: 9, scope: !238)
!248 = !DILocation(line: 23, column: 15, scope: !238)
!249 = !DILocation(line: 23, column: 20, scope: !238)
!250 = !DILocation(line: 23, column: 18, scope: !238)
!251 = !DILocation(line: 23, column: 28, scope: !238)
!252 = !DILocation(line: 23, column: 34, scope: !238)
!253 = !DILocation(line: 23, column: 39, scope: !238)
!254 = !DILocation(line: 23, column: 37, scope: !238)
!255 = !DILocation(line: 23, column: 26, scope: !238)
!256 = !DILocation(line: 23, column: 2, scope: !238)
!257 = distinct !DISubprogram(name: "drm_fb_memcpy_dstclip", scope: !1, file: !1, line: 62, type: !25, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !170)
!258 = !DILocalVariable(name: "dst", arg: 1, scope: !257, file: !1, line: 62, type: !12)
!259 = !DILocation(line: 62, column: 42, scope: !257)
!260 = !DILocalVariable(name: "vaddr", arg: 2, scope: !257, file: !1, line: 62, type: !12)
!261 = !DILocation(line: 62, column: 53, scope: !257)
!262 = !DILocalVariable(name: "fb", arg: 3, scope: !257, file: !1, line: 63, type: !27)
!263 = !DILocation(line: 63, column: 31, scope: !257)
!264 = !DILocalVariable(name: "clip", arg: 4, scope: !257, file: !1, line: 64, type: !162)
!265 = !DILocation(line: 64, column: 24, scope: !257)
!266 = !DILocalVariable(name: "cpp", scope: !257, file: !1, line: 66, type: !5)
!267 = !DILocation(line: 66, column: 15, scope: !257)
!268 = !DILocation(line: 66, column: 21, scope: !257)
!269 = !DILocation(line: 66, column: 25, scope: !257)
!270 = !DILocation(line: 66, column: 33, scope: !257)
!271 = !DILocalVariable(name: "offset", scope: !257, file: !1, line: 67, type: !5)
!272 = !DILocation(line: 67, column: 15, scope: !257)
!273 = !DILocation(line: 67, column: 36, scope: !257)
!274 = !DILocation(line: 67, column: 42, scope: !257)
!275 = !DILocation(line: 67, column: 46, scope: !257)
!276 = !DILocation(line: 67, column: 58, scope: !257)
!277 = !DILocation(line: 67, column: 24, scope: !257)
!278 = !DILocalVariable(name: "len", scope: !257, file: !1, line: 68, type: !185)
!279 = !DILocation(line: 68, column: 9, scope: !257)
!280 = !DILocation(line: 68, column: 16, scope: !257)
!281 = !DILocation(line: 68, column: 22, scope: !257)
!282 = !DILocation(line: 68, column: 27, scope: !257)
!283 = !DILocation(line: 68, column: 33, scope: !257)
!284 = !DILocation(line: 68, column: 25, scope: !257)
!285 = !DILocation(line: 68, column: 39, scope: !257)
!286 = !DILocation(line: 68, column: 37, scope: !257)
!287 = !DILocation(line: 68, column: 15, scope: !257)
!288 = !DILocalVariable(name: "y", scope: !257, file: !1, line: 69, type: !5)
!289 = !DILocation(line: 69, column: 15, scope: !257)
!290 = !DILocalVariable(name: "lines", scope: !257, file: !1, line: 69, type: !5)
!291 = !DILocation(line: 69, column: 18, scope: !257)
!292 = !DILocation(line: 69, column: 26, scope: !257)
!293 = !DILocation(line: 69, column: 32, scope: !257)
!294 = !DILocation(line: 69, column: 37, scope: !257)
!295 = !DILocation(line: 69, column: 43, scope: !257)
!296 = !DILocation(line: 69, column: 35, scope: !257)
!297 = !DILocation(line: 71, column: 11, scope: !257)
!298 = !DILocation(line: 71, column: 8, scope: !257)
!299 = !DILocation(line: 72, column: 9, scope: !257)
!300 = !DILocation(line: 72, column: 6, scope: !257)
!301 = !DILocation(line: 73, column: 9, scope: !302)
!302 = distinct !DILexicalBlock(scope: !257, file: !1, line: 73, column: 2)
!303 = !DILocation(line: 73, column: 7, scope: !302)
!304 = !DILocation(line: 73, column: 14, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !1, line: 73, column: 2)
!306 = !DILocation(line: 73, column: 18, scope: !305)
!307 = !DILocation(line: 73, column: 16, scope: !305)
!308 = !DILocation(line: 73, column: 2, scope: !302)
!309 = !DILocation(line: 74, column: 15, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !1, line: 73, column: 30)
!311 = !DILocation(line: 74, column: 20, scope: !310)
!312 = !DILocation(line: 74, column: 27, scope: !310)
!313 = !DILocation(line: 74, column: 3, scope: !310)
!314 = !DILocation(line: 75, column: 12, scope: !310)
!315 = !DILocation(line: 75, column: 16, scope: !310)
!316 = !DILocation(line: 75, column: 9, scope: !310)
!317 = !DILocation(line: 76, column: 10, scope: !310)
!318 = !DILocation(line: 76, column: 14, scope: !310)
!319 = !DILocation(line: 76, column: 7, scope: !310)
!320 = !DILocation(line: 77, column: 2, scope: !310)
!321 = !DILocation(line: 73, column: 26, scope: !305)
!322 = !DILocation(line: 73, column: 2, scope: !305)
!323 = distinct !{!323, !308, !324}
!324 = !DILocation(line: 77, column: 2, scope: !302)
!325 = !DILocation(line: 78, column: 1, scope: !257)
!326 = distinct !DISubprogram(name: "drm_fb_swab", scope: !1, file: !1, line: 95, type: !327, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !170)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !12, !12, !27, !162, !117}
!329 = !DILocalVariable(name: "s", arg: 1, scope: !330, file: !4, line: 445, type: !333)
!330 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4, file: !4, line: 445, type: !331, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!331 = !DISubroutineType(types: !332)
!332 = !{!12, !333, !13, !185}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !335, line: 117, flags: DIFlagFwdDecl)
!335 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!336 = !DILocation(line: 445, column: 72, scope: !330, inlinedAt: !337)
!337 = distinct !DILocation(line: 552, column: 10, scope: !338, inlinedAt: !343)
!338 = distinct !DILexicalBlock(scope: !339, file: !4, line: 540, column: 34)
!339 = distinct !DILexicalBlock(scope: !340, file: !4, line: 540, column: 6)
!340 = distinct !DISubprogram(name: "kmalloc", scope: !4, file: !4, line: 538, type: !341, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!341 = !DISubroutineType(types: !342)
!342 = !{!12, !185, !13}
!343 = distinct !DILocation(line: 109, column: 9, scope: !344)
!344 = distinct !DILexicalBlock(scope: !326, file: !1, line: 108, column: 6)
!345 = !DILocalVariable(name: "flags", arg: 2, scope: !330, file: !4, line: 446, type: !13)
!346 = !DILocation(line: 446, column: 9, scope: !330, inlinedAt: !337)
!347 = !DILocalVariable(name: "size", arg: 3, scope: !330, file: !4, line: 446, type: !185)
!348 = !DILocation(line: 446, column: 23, scope: !330, inlinedAt: !337)
!349 = !DILocalVariable(name: "ret", scope: !330, file: !4, line: 448, type: !12)
!350 = !DILocation(line: 448, column: 8, scope: !330, inlinedAt: !337)
!351 = !DILocalVariable(name: "flags", arg: 1, scope: !352, file: !4, line: 318, type: !13)
!352 = distinct !DISubprogram(name: "kmalloc_type", scope: !4, file: !4, line: 318, type: !353, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!353 = !DISubroutineType(types: !354)
!354 = !{!3, !13}
!355 = !DILocation(line: 318, column: 67, scope: !352, inlinedAt: !356)
!356 = distinct !DILocation(line: 553, column: 20, scope: !338, inlinedAt: !343)
!357 = !DILocalVariable(name: "size", arg: 1, scope: !358, file: !4, line: 346, type: !185)
!358 = distinct !DISubprogram(name: "kmalloc_index", scope: !4, file: !4, line: 346, type: !359, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!359 = !DISubroutineType(types: !360)
!360 = !{!5, !185}
!361 = !DILocation(line: 346, column: 58, scope: !358, inlinedAt: !362)
!362 = distinct !DILocation(line: 547, column: 11, scope: !338, inlinedAt: !343)
!363 = !DILocalVariable(name: "size", arg: 1, scope: !364, file: !4, line: 472, type: !185)
!364 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4, file: !4, line: 472, type: !365, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!365 = !DISubroutineType(types: !366)
!366 = !{!12, !185, !13, !5}
!367 = !DILocation(line: 472, column: 28, scope: !364, inlinedAt: !368)
!368 = distinct !DILocation(line: 481, column: 9, scope: !369, inlinedAt: !370)
!369 = distinct !DISubprogram(name: "kmalloc_large", scope: !4, file: !4, line: 478, type: !341, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!370 = distinct !DILocation(line: 545, column: 11, scope: !371, inlinedAt: !343)
!371 = distinct !DILexicalBlock(scope: !338, file: !4, line: 544, column: 7)
!372 = !DILocalVariable(name: "flags", arg: 2, scope: !364, file: !4, line: 472, type: !13)
!373 = !DILocation(line: 472, column: 40, scope: !364, inlinedAt: !368)
!374 = !DILocalVariable(name: "order", arg: 3, scope: !364, file: !4, line: 472, type: !5)
!375 = !DILocation(line: 472, column: 60, scope: !364, inlinedAt: !368)
!376 = !DILocalVariable(name: "size", arg: 1, scope: !369, file: !4, line: 478, type: !185)
!377 = !DILocation(line: 478, column: 51, scope: !369, inlinedAt: !370)
!378 = !DILocalVariable(name: "flags", arg: 2, scope: !369, file: !4, line: 478, type: !13)
!379 = !DILocation(line: 478, column: 63, scope: !369, inlinedAt: !370)
!380 = !DILocalVariable(name: "order", scope: !369, file: !4, line: 480, type: !5)
!381 = !DILocation(line: 480, column: 15, scope: !369, inlinedAt: !370)
!382 = !DILocalVariable(name: "size", arg: 1, scope: !340, file: !4, line: 538, type: !185)
!383 = !DILocation(line: 538, column: 45, scope: !340, inlinedAt: !343)
!384 = !DILocalVariable(name: "flags", arg: 2, scope: !340, file: !4, line: 538, type: !13)
!385 = !DILocation(line: 538, column: 57, scope: !340, inlinedAt: !343)
!386 = !DILocalVariable(name: "index", scope: !338, file: !4, line: 542, type: !5)
!387 = !DILocation(line: 542, column: 16, scope: !338, inlinedAt: !343)
!388 = !DILocalVariable(name: "dst", arg: 1, scope: !326, file: !1, line: 95, type: !12)
!389 = !DILocation(line: 95, column: 24, scope: !326)
!390 = !DILocalVariable(name: "src", arg: 2, scope: !326, file: !1, line: 95, type: !12)
!391 = !DILocation(line: 95, column: 35, scope: !326)
!392 = !DILocalVariable(name: "fb", arg: 3, scope: !326, file: !1, line: 95, type: !27)
!393 = !DILocation(line: 95, column: 64, scope: !326)
!394 = !DILocalVariable(name: "clip", arg: 4, scope: !326, file: !1, line: 96, type: !162)
!395 = !DILocation(line: 96, column: 21, scope: !326)
!396 = !DILocalVariable(name: "cached", arg: 5, scope: !326, file: !1, line: 96, type: !117)
!397 = !DILocation(line: 96, column: 32, scope: !326)
!398 = !DILocalVariable(name: "cpp", scope: !326, file: !1, line: 98, type: !100)
!399 = !DILocation(line: 98, column: 5, scope: !326)
!400 = !DILocation(line: 98, column: 11, scope: !326)
!401 = !DILocation(line: 98, column: 15, scope: !326)
!402 = !DILocation(line: 98, column: 23, scope: !326)
!403 = !DILocalVariable(name: "len", scope: !326, file: !1, line: 99, type: !185)
!404 = !DILocation(line: 99, column: 9, scope: !326)
!405 = !DILocation(line: 99, column: 30, scope: !326)
!406 = !DILocation(line: 99, column: 15, scope: !326)
!407 = !DILocation(line: 99, column: 38, scope: !326)
!408 = !DILocation(line: 99, column: 36, scope: !326)
!409 = !DILocalVariable(name: "src16", scope: !326, file: !1, line: 100, type: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !48, line: 19, baseType: !17)
!412 = !DILocation(line: 100, column: 7, scope: !326)
!413 = !DILocalVariable(name: "dst16", scope: !326, file: !1, line: 100, type: !410)
!414 = !DILocation(line: 100, column: 15, scope: !326)
!415 = !DILocation(line: 100, column: 23, scope: !326)
!416 = !DILocalVariable(name: "src32", scope: !326, file: !1, line: 101, type: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!418 = !DILocation(line: 101, column: 7, scope: !326)
!419 = !DILocalVariable(name: "dst32", scope: !326, file: !1, line: 101, type: !417)
!420 = !DILocation(line: 101, column: 15, scope: !326)
!421 = !DILocation(line: 101, column: 23, scope: !326)
!422 = !DILocalVariable(name: "x", scope: !326, file: !1, line: 102, type: !5)
!423 = !DILocation(line: 102, column: 15, scope: !326)
!424 = !DILocalVariable(name: "y", scope: !326, file: !1, line: 102, type: !5)
!425 = !DILocation(line: 102, column: 18, scope: !326)
!426 = !DILocalVariable(name: "buf", scope: !326, file: !1, line: 103, type: !12)
!427 = !DILocation(line: 103, column: 8, scope: !326)
!428 = !DILocalVariable(name: "__ret_warn_on", scope: !429, file: !1, line: 105, type: !55)
!429 = distinct !DILexicalBlock(scope: !430, file: !1, line: 105, column: 6)
!430 = distinct !DILexicalBlock(scope: !326, file: !1, line: 105, column: 6)
!431 = !DILocation(line: 105, column: 6, scope: !429)
!432 = !DILocation(line: 0, scope: !429)
!433 = !DILocation(line: 105, column: 6, scope: !434)
!434 = distinct !DILexicalBlock(scope: !429, file: !1, line: 105, column: 6)
!435 = !DILocation(line: 105, column: 6, scope: !436)
!436 = distinct !DILexicalBlock(scope: !434, file: !1, line: 105, column: 6)
!437 = !DILocation(line: 105, column: 6, scope: !438)
!438 = distinct !DILexicalBlock(scope: !436, file: !1, line: 105, column: 6)
!439 = !DILocation(line: 105, column: 6, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !1, line: 105, column: 6)
!441 = !{i32 -2143482103, i32 -2143482074, i32 -2143482028, i32 -2143481970, i32 -2143481916, i32 -2143481862, i32 -2143481807, i32 -2143481776}
!442 = !DILocation(line: 105, column: 6, scope: !443)
!443 = distinct !DILexicalBlock(scope: !436, file: !1, line: 105, column: 6)
!444 = !{i32 -2143481348, i32 -2143481341, i32 -2143481289, i32 -2143481258, i32 -2143481228}
!445 = !DILocation(line: 105, column: 6, scope: !446)
!446 = distinct !DILexicalBlock(scope: !436, file: !1, line: 105, column: 6)
!447 = !DILocation(line: 105, column: 6, scope: !430)
!448 = !DILocation(line: 105, column: 6, scope: !326)
!449 = !DILocation(line: 106, column: 3, scope: !430)
!450 = !DILocation(line: 108, column: 7, scope: !344)
!451 = !DILocation(line: 108, column: 6, scope: !326)
!452 = !DILocation(line: 109, column: 17, scope: !344)
!453 = !DILocation(line: 540, column: 27, scope: !339, inlinedAt: !343)
!454 = !DILocation(line: 540, column: 6, scope: !339, inlinedAt: !343)
!455 = !DILocation(line: 540, column: 6, scope: !340, inlinedAt: !343)
!456 = !DILocation(line: 544, column: 7, scope: !371, inlinedAt: !343)
!457 = !DILocation(line: 544, column: 12, scope: !371, inlinedAt: !343)
!458 = !DILocation(line: 544, column: 7, scope: !338, inlinedAt: !343)
!459 = !DILocation(line: 545, column: 25, scope: !371, inlinedAt: !343)
!460 = !DILocation(line: 545, column: 31, scope: !371, inlinedAt: !343)
!461 = !DILocation(line: 480, column: 33, scope: !369, inlinedAt: !370)
!462 = !DILocation(line: 480, column: 23, scope: !369, inlinedAt: !370)
!463 = !DILocation(line: 481, column: 29, scope: !369, inlinedAt: !370)
!464 = !DILocation(line: 481, column: 35, scope: !369, inlinedAt: !370)
!465 = !DILocation(line: 481, column: 42, scope: !369, inlinedAt: !370)
!466 = !DILocation(line: 474, column: 23, scope: !364, inlinedAt: !368)
!467 = !DILocation(line: 474, column: 29, scope: !364, inlinedAt: !368)
!468 = !DILocation(line: 474, column: 36, scope: !364, inlinedAt: !368)
!469 = !DILocation(line: 474, column: 9, scope: !364, inlinedAt: !368)
!470 = !DILocation(line: 545, column: 4, scope: !371, inlinedAt: !343)
!471 = !DILocation(line: 547, column: 25, scope: !338, inlinedAt: !343)
!472 = !DILocation(line: 348, column: 7, scope: !473, inlinedAt: !362)
!473 = distinct !DILexicalBlock(scope: !358, file: !4, line: 348, column: 6)
!474 = !DILocation(line: 348, column: 6, scope: !358, inlinedAt: !362)
!475 = !DILocation(line: 349, column: 3, scope: !473, inlinedAt: !362)
!476 = !DILocation(line: 351, column: 6, scope: !477, inlinedAt: !362)
!477 = distinct !DILexicalBlock(scope: !358, file: !4, line: 351, column: 6)
!478 = !DILocation(line: 351, column: 11, scope: !477, inlinedAt: !362)
!479 = !DILocation(line: 351, column: 6, scope: !358, inlinedAt: !362)
!480 = !DILocation(line: 352, column: 3, scope: !477, inlinedAt: !362)
!481 = !DILocation(line: 354, column: 32, scope: !482, inlinedAt: !362)
!482 = distinct !DILexicalBlock(scope: !358, file: !4, line: 354, column: 6)
!483 = !DILocation(line: 354, column: 37, scope: !482, inlinedAt: !362)
!484 = !DILocation(line: 354, column: 42, scope: !482, inlinedAt: !362)
!485 = !DILocation(line: 354, column: 45, scope: !482, inlinedAt: !362)
!486 = !DILocation(line: 354, column: 50, scope: !482, inlinedAt: !362)
!487 = !DILocation(line: 354, column: 6, scope: !358, inlinedAt: !362)
!488 = !DILocation(line: 355, column: 3, scope: !482, inlinedAt: !362)
!489 = !DILocation(line: 356, column: 32, scope: !490, inlinedAt: !362)
!490 = distinct !DILexicalBlock(scope: !358, file: !4, line: 356, column: 6)
!491 = !DILocation(line: 356, column: 37, scope: !490, inlinedAt: !362)
!492 = !DILocation(line: 356, column: 43, scope: !490, inlinedAt: !362)
!493 = !DILocation(line: 356, column: 46, scope: !490, inlinedAt: !362)
!494 = !DILocation(line: 356, column: 51, scope: !490, inlinedAt: !362)
!495 = !DILocation(line: 356, column: 6, scope: !358, inlinedAt: !362)
!496 = !DILocation(line: 357, column: 3, scope: !490, inlinedAt: !362)
!497 = !DILocation(line: 358, column: 6, scope: !498, inlinedAt: !362)
!498 = distinct !DILexicalBlock(scope: !358, file: !4, line: 358, column: 6)
!499 = !DILocation(line: 358, column: 11, scope: !498, inlinedAt: !362)
!500 = !DILocation(line: 358, column: 6, scope: !358, inlinedAt: !362)
!501 = !DILocation(line: 358, column: 26, scope: !498, inlinedAt: !362)
!502 = !DILocation(line: 359, column: 6, scope: !503, inlinedAt: !362)
!503 = distinct !DILexicalBlock(scope: !358, file: !4, line: 359, column: 6)
!504 = !DILocation(line: 359, column: 11, scope: !503, inlinedAt: !362)
!505 = !DILocation(line: 359, column: 6, scope: !358, inlinedAt: !362)
!506 = !DILocation(line: 359, column: 26, scope: !503, inlinedAt: !362)
!507 = !DILocation(line: 360, column: 6, scope: !508, inlinedAt: !362)
!508 = distinct !DILexicalBlock(scope: !358, file: !4, line: 360, column: 6)
!509 = !DILocation(line: 360, column: 11, scope: !508, inlinedAt: !362)
!510 = !DILocation(line: 360, column: 6, scope: !358, inlinedAt: !362)
!511 = !DILocation(line: 360, column: 26, scope: !508, inlinedAt: !362)
!512 = !DILocation(line: 361, column: 6, scope: !513, inlinedAt: !362)
!513 = distinct !DILexicalBlock(scope: !358, file: !4, line: 361, column: 6)
!514 = !DILocation(line: 361, column: 11, scope: !513, inlinedAt: !362)
!515 = !DILocation(line: 361, column: 6, scope: !358, inlinedAt: !362)
!516 = !DILocation(line: 361, column: 26, scope: !513, inlinedAt: !362)
!517 = !DILocation(line: 362, column: 6, scope: !518, inlinedAt: !362)
!518 = distinct !DILexicalBlock(scope: !358, file: !4, line: 362, column: 6)
!519 = !DILocation(line: 362, column: 11, scope: !518, inlinedAt: !362)
!520 = !DILocation(line: 362, column: 6, scope: !358, inlinedAt: !362)
!521 = !DILocation(line: 362, column: 26, scope: !518, inlinedAt: !362)
!522 = !DILocation(line: 363, column: 6, scope: !523, inlinedAt: !362)
!523 = distinct !DILexicalBlock(scope: !358, file: !4, line: 363, column: 6)
!524 = !DILocation(line: 363, column: 11, scope: !523, inlinedAt: !362)
!525 = !DILocation(line: 363, column: 6, scope: !358, inlinedAt: !362)
!526 = !DILocation(line: 363, column: 26, scope: !523, inlinedAt: !362)
!527 = !DILocation(line: 364, column: 6, scope: !528, inlinedAt: !362)
!528 = distinct !DILexicalBlock(scope: !358, file: !4, line: 364, column: 6)
!529 = !DILocation(line: 364, column: 11, scope: !528, inlinedAt: !362)
!530 = !DILocation(line: 364, column: 6, scope: !358, inlinedAt: !362)
!531 = !DILocation(line: 364, column: 26, scope: !528, inlinedAt: !362)
!532 = !DILocation(line: 365, column: 6, scope: !533, inlinedAt: !362)
!533 = distinct !DILexicalBlock(scope: !358, file: !4, line: 365, column: 6)
!534 = !DILocation(line: 365, column: 11, scope: !533, inlinedAt: !362)
!535 = !DILocation(line: 365, column: 6, scope: !358, inlinedAt: !362)
!536 = !DILocation(line: 365, column: 26, scope: !533, inlinedAt: !362)
!537 = !DILocation(line: 366, column: 6, scope: !538, inlinedAt: !362)
!538 = distinct !DILexicalBlock(scope: !358, file: !4, line: 366, column: 6)
!539 = !DILocation(line: 366, column: 11, scope: !538, inlinedAt: !362)
!540 = !DILocation(line: 366, column: 6, scope: !358, inlinedAt: !362)
!541 = !DILocation(line: 366, column: 26, scope: !538, inlinedAt: !362)
!542 = !DILocation(line: 367, column: 6, scope: !543, inlinedAt: !362)
!543 = distinct !DILexicalBlock(scope: !358, file: !4, line: 367, column: 6)
!544 = !DILocation(line: 367, column: 11, scope: !543, inlinedAt: !362)
!545 = !DILocation(line: 367, column: 6, scope: !358, inlinedAt: !362)
!546 = !DILocation(line: 367, column: 26, scope: !543, inlinedAt: !362)
!547 = !DILocation(line: 368, column: 6, scope: !548, inlinedAt: !362)
!548 = distinct !DILexicalBlock(scope: !358, file: !4, line: 368, column: 6)
!549 = !DILocation(line: 368, column: 11, scope: !548, inlinedAt: !362)
!550 = !DILocation(line: 368, column: 6, scope: !358, inlinedAt: !362)
!551 = !DILocation(line: 368, column: 26, scope: !548, inlinedAt: !362)
!552 = !DILocation(line: 369, column: 6, scope: !553, inlinedAt: !362)
!553 = distinct !DILexicalBlock(scope: !358, file: !4, line: 369, column: 6)
!554 = !DILocation(line: 369, column: 11, scope: !553, inlinedAt: !362)
!555 = !DILocation(line: 369, column: 6, scope: !358, inlinedAt: !362)
!556 = !DILocation(line: 369, column: 26, scope: !553, inlinedAt: !362)
!557 = !DILocation(line: 370, column: 6, scope: !558, inlinedAt: !362)
!558 = distinct !DILexicalBlock(scope: !358, file: !4, line: 370, column: 6)
!559 = !DILocation(line: 370, column: 11, scope: !558, inlinedAt: !362)
!560 = !DILocation(line: 370, column: 6, scope: !358, inlinedAt: !362)
!561 = !DILocation(line: 370, column: 26, scope: !558, inlinedAt: !362)
!562 = !DILocation(line: 371, column: 6, scope: !563, inlinedAt: !362)
!563 = distinct !DILexicalBlock(scope: !358, file: !4, line: 371, column: 6)
!564 = !DILocation(line: 371, column: 11, scope: !563, inlinedAt: !362)
!565 = !DILocation(line: 371, column: 6, scope: !358, inlinedAt: !362)
!566 = !DILocation(line: 371, column: 26, scope: !563, inlinedAt: !362)
!567 = !DILocation(line: 372, column: 6, scope: !568, inlinedAt: !362)
!568 = distinct !DILexicalBlock(scope: !358, file: !4, line: 372, column: 6)
!569 = !DILocation(line: 372, column: 11, scope: !568, inlinedAt: !362)
!570 = !DILocation(line: 372, column: 6, scope: !358, inlinedAt: !362)
!571 = !DILocation(line: 372, column: 26, scope: !568, inlinedAt: !362)
!572 = !DILocation(line: 373, column: 6, scope: !573, inlinedAt: !362)
!573 = distinct !DILexicalBlock(scope: !358, file: !4, line: 373, column: 6)
!574 = !DILocation(line: 373, column: 11, scope: !573, inlinedAt: !362)
!575 = !DILocation(line: 373, column: 6, scope: !358, inlinedAt: !362)
!576 = !DILocation(line: 373, column: 26, scope: !573, inlinedAt: !362)
!577 = !DILocation(line: 374, column: 6, scope: !578, inlinedAt: !362)
!578 = distinct !DILexicalBlock(scope: !358, file: !4, line: 374, column: 6)
!579 = !DILocation(line: 374, column: 11, scope: !578, inlinedAt: !362)
!580 = !DILocation(line: 374, column: 6, scope: !358, inlinedAt: !362)
!581 = !DILocation(line: 374, column: 26, scope: !578, inlinedAt: !362)
!582 = !DILocation(line: 375, column: 6, scope: !583, inlinedAt: !362)
!583 = distinct !DILexicalBlock(scope: !358, file: !4, line: 375, column: 6)
!584 = !DILocation(line: 375, column: 11, scope: !583, inlinedAt: !362)
!585 = !DILocation(line: 375, column: 6, scope: !358, inlinedAt: !362)
!586 = !DILocation(line: 375, column: 27, scope: !583, inlinedAt: !362)
!587 = !DILocation(line: 376, column: 6, scope: !588, inlinedAt: !362)
!588 = distinct !DILexicalBlock(scope: !358, file: !4, line: 376, column: 6)
!589 = !DILocation(line: 376, column: 11, scope: !588, inlinedAt: !362)
!590 = !DILocation(line: 376, column: 6, scope: !358, inlinedAt: !362)
!591 = !DILocation(line: 376, column: 32, scope: !588, inlinedAt: !362)
!592 = !DILocation(line: 377, column: 6, scope: !593, inlinedAt: !362)
!593 = distinct !DILexicalBlock(scope: !358, file: !4, line: 377, column: 6)
!594 = !DILocation(line: 377, column: 11, scope: !593, inlinedAt: !362)
!595 = !DILocation(line: 377, column: 6, scope: !358, inlinedAt: !362)
!596 = !DILocation(line: 377, column: 32, scope: !593, inlinedAt: !362)
!597 = !DILocation(line: 378, column: 6, scope: !598, inlinedAt: !362)
!598 = distinct !DILexicalBlock(scope: !358, file: !4, line: 378, column: 6)
!599 = !DILocation(line: 378, column: 11, scope: !598, inlinedAt: !362)
!600 = !DILocation(line: 378, column: 6, scope: !358, inlinedAt: !362)
!601 = !DILocation(line: 378, column: 32, scope: !598, inlinedAt: !362)
!602 = !DILocation(line: 379, column: 6, scope: !603, inlinedAt: !362)
!603 = distinct !DILexicalBlock(scope: !358, file: !4, line: 379, column: 6)
!604 = !DILocation(line: 379, column: 11, scope: !603, inlinedAt: !362)
!605 = !DILocation(line: 379, column: 6, scope: !358, inlinedAt: !362)
!606 = !DILocation(line: 379, column: 33, scope: !603, inlinedAt: !362)
!607 = !DILocation(line: 380, column: 6, scope: !608, inlinedAt: !362)
!608 = distinct !DILexicalBlock(scope: !358, file: !4, line: 380, column: 6)
!609 = !DILocation(line: 380, column: 11, scope: !608, inlinedAt: !362)
!610 = !DILocation(line: 380, column: 6, scope: !358, inlinedAt: !362)
!611 = !DILocation(line: 380, column: 33, scope: !608, inlinedAt: !362)
!612 = !DILocation(line: 381, column: 6, scope: !613, inlinedAt: !362)
!613 = distinct !DILexicalBlock(scope: !358, file: !4, line: 381, column: 6)
!614 = !DILocation(line: 381, column: 11, scope: !613, inlinedAt: !362)
!615 = !DILocation(line: 381, column: 6, scope: !358, inlinedAt: !362)
!616 = !DILocation(line: 381, column: 33, scope: !613, inlinedAt: !362)
!617 = !DILocation(line: 382, column: 2, scope: !618, inlinedAt: !362)
!618 = distinct !DILexicalBlock(scope: !619, file: !4, line: 382, column: 2)
!619 = distinct !DILexicalBlock(scope: !358, file: !4, line: 382, column: 2)
!620 = !{i32 -2144238375, i32 -2144238346, i32 -2144238300, i32 -2144238242, i32 -2144238188, i32 -2144238134, i32 -2144238079, i32 -2144238048}
!621 = !DILocation(line: 382, column: 2, scope: !622, inlinedAt: !362)
!622 = distinct !DILexicalBlock(scope: !623, file: !4, line: 382, column: 2)
!623 = distinct !DILexicalBlock(scope: !619, file: !4, line: 382, column: 2)
!624 = !{i32 -2144237605, i32 -2144237598, i32 -2144237544, i32 -2144237513, i32 -2144237483}
!625 = !DILocation(line: 382, column: 2, scope: !623, inlinedAt: !362)
!626 = !DILocation(line: 386, column: 1, scope: !358, inlinedAt: !362)
!627 = !DILocation(line: 547, column: 9, scope: !338, inlinedAt: !343)
!628 = !DILocation(line: 549, column: 8, scope: !629, inlinedAt: !343)
!629 = distinct !DILexicalBlock(scope: !338, file: !4, line: 549, column: 7)
!630 = !DILocation(line: 549, column: 7, scope: !338, inlinedAt: !343)
!631 = !DILocation(line: 550, column: 4, scope: !629, inlinedAt: !343)
!632 = !DILocation(line: 553, column: 33, scope: !338, inlinedAt: !343)
!633 = !DILocation(line: 325, column: 6, scope: !634, inlinedAt: !356)
!634 = distinct !DILexicalBlock(scope: !352, file: !4, line: 325, column: 6)
!635 = !DILocation(line: 325, column: 6, scope: !352, inlinedAt: !356)
!636 = !DILocation(line: 326, column: 3, scope: !634, inlinedAt: !356)
!637 = !DILocation(line: 332, column: 9, scope: !352, inlinedAt: !356)
!638 = !DILocation(line: 332, column: 15, scope: !352, inlinedAt: !356)
!639 = !DILocation(line: 332, column: 2, scope: !352, inlinedAt: !356)
!640 = !DILocation(line: 336, column: 1, scope: !352, inlinedAt: !356)
!641 = !DILocation(line: 553, column: 5, scope: !338, inlinedAt: !343)
!642 = !DILocation(line: 553, column: 41, scope: !338, inlinedAt: !343)
!643 = !DILocation(line: 554, column: 5, scope: !338, inlinedAt: !343)
!644 = !DILocation(line: 554, column: 12, scope: !338, inlinedAt: !343)
!645 = !DILocation(line: 448, column: 31, scope: !330, inlinedAt: !337)
!646 = !DILocation(line: 448, column: 34, scope: !330, inlinedAt: !337)
!647 = !DILocation(line: 448, column: 14, scope: !330, inlinedAt: !337)
!648 = !DILocation(line: 450, column: 22, scope: !330, inlinedAt: !337)
!649 = !DILocation(line: 450, column: 25, scope: !330, inlinedAt: !337)
!650 = !DILocation(line: 450, column: 30, scope: !330, inlinedAt: !337)
!651 = !DILocation(line: 450, column: 36, scope: !330, inlinedAt: !337)
!652 = !DILocation(line: 450, column: 8, scope: !330, inlinedAt: !337)
!653 = !DILocation(line: 450, column: 6, scope: !330, inlinedAt: !337)
!654 = !DILocation(line: 451, column: 9, scope: !330, inlinedAt: !337)
!655 = !DILocation(line: 552, column: 3, scope: !338, inlinedAt: !343)
!656 = !DILocation(line: 557, column: 19, scope: !340, inlinedAt: !343)
!657 = !DILocation(line: 557, column: 25, scope: !340, inlinedAt: !343)
!658 = !DILocation(line: 557, column: 9, scope: !340, inlinedAt: !343)
!659 = !DILocation(line: 557, column: 2, scope: !340, inlinedAt: !343)
!660 = !DILocation(line: 558, column: 1, scope: !340, inlinedAt: !343)
!661 = !DILocation(line: 109, column: 7, scope: !344)
!662 = !DILocation(line: 109, column: 3, scope: !344)
!663 = !DILocation(line: 111, column: 21, scope: !326)
!664 = !DILocation(line: 111, column: 27, scope: !326)
!665 = !DILocation(line: 111, column: 31, scope: !326)
!666 = !DILocation(line: 111, column: 43, scope: !326)
!667 = !DILocation(line: 111, column: 9, scope: !326)
!668 = !DILocation(line: 111, column: 6, scope: !326)
!669 = !DILocation(line: 113, column: 11, scope: !670)
!670 = distinct !DILexicalBlock(scope: !326, file: !1, line: 113, column: 2)
!671 = !DILocation(line: 113, column: 17, scope: !670)
!672 = !DILocation(line: 113, column: 9, scope: !670)
!673 = !DILocation(line: 113, column: 7, scope: !670)
!674 = !DILocation(line: 113, column: 21, scope: !675)
!675 = distinct !DILexicalBlock(scope: !670, file: !1, line: 113, column: 2)
!676 = !DILocation(line: 113, column: 25, scope: !675)
!677 = !DILocation(line: 113, column: 31, scope: !675)
!678 = !DILocation(line: 113, column: 23, scope: !675)
!679 = !DILocation(line: 113, column: 2, scope: !670)
!680 = !DILocation(line: 114, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !1, line: 114, column: 7)
!682 = distinct !DILexicalBlock(scope: !675, file: !1, line: 113, column: 40)
!683 = !DILocation(line: 114, column: 7, scope: !682)
!684 = !DILocation(line: 115, column: 11, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !1, line: 114, column: 12)
!686 = !DILocation(line: 115, column: 16, scope: !685)
!687 = !DILocation(line: 115, column: 21, scope: !685)
!688 = !DILocation(line: 115, column: 4, scope: !685)
!689 = !DILocation(line: 116, column: 12, scope: !685)
!690 = !DILocation(line: 116, column: 10, scope: !685)
!691 = !DILocation(line: 117, column: 12, scope: !685)
!692 = !DILocation(line: 117, column: 10, scope: !685)
!693 = !DILocation(line: 118, column: 3, scope: !685)
!694 = !DILocation(line: 119, column: 12, scope: !695)
!695 = distinct !DILexicalBlock(scope: !681, file: !1, line: 118, column: 10)
!696 = !DILocation(line: 119, column: 10, scope: !695)
!697 = !DILocation(line: 120, column: 12, scope: !695)
!698 = !DILocation(line: 120, column: 10, scope: !695)
!699 = !DILocation(line: 123, column: 12, scope: !700)
!700 = distinct !DILexicalBlock(scope: !682, file: !1, line: 123, column: 3)
!701 = !DILocation(line: 123, column: 18, scope: !700)
!702 = !DILocation(line: 123, column: 10, scope: !700)
!703 = !DILocation(line: 123, column: 8, scope: !700)
!704 = !DILocation(line: 123, column: 22, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !1, line: 123, column: 3)
!706 = !DILocation(line: 123, column: 26, scope: !705)
!707 = !DILocation(line: 123, column: 32, scope: !705)
!708 = !DILocation(line: 123, column: 24, scope: !705)
!709 = !DILocation(line: 123, column: 3, scope: !700)
!710 = !DILocation(line: 124, column: 8, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !1, line: 124, column: 8)
!712 = distinct !DILexicalBlock(scope: !705, file: !1, line: 123, column: 41)
!713 = !DILocation(line: 124, column: 12, scope: !711)
!714 = !DILocation(line: 124, column: 8, scope: !712)
!715 = !DILocation(line: 125, column: 16, scope: !711)
!716 = !DILocation(line: 125, column: 11, scope: !711)
!717 = !DILocation(line: 125, column: 14, scope: !711)
!718 = !DILocation(line: 125, column: 5, scope: !711)
!719 = !DILocation(line: 127, column: 16, scope: !711)
!720 = !DILocation(line: 127, column: 11, scope: !711)
!721 = !DILocation(line: 127, column: 14, scope: !711)
!722 = !DILocation(line: 128, column: 3, scope: !712)
!723 = !DILocation(line: 123, column: 37, scope: !705)
!724 = !DILocation(line: 123, column: 3, scope: !705)
!725 = distinct !{!725, !709, !726}
!726 = !DILocation(line: 128, column: 3, scope: !700)
!727 = !DILocation(line: 130, column: 10, scope: !682)
!728 = !DILocation(line: 130, column: 14, scope: !682)
!729 = !DILocation(line: 130, column: 7, scope: !682)
!730 = !DILocation(line: 131, column: 2, scope: !682)
!731 = !DILocation(line: 113, column: 36, scope: !675)
!732 = !DILocation(line: 113, column: 2, scope: !675)
!733 = distinct !{!733, !679, !734}
!734 = !DILocation(line: 131, column: 2, scope: !670)
!735 = !DILocation(line: 133, column: 8, scope: !326)
!736 = !DILocation(line: 133, column: 2, scope: !326)
!737 = !DILocation(line: 134, column: 1, scope: !326)
!738 = distinct !DISubprogram(name: "drm_rect_width", scope: !164, file: !164, line: 165, type: !739, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!739 = !DISubroutineType(types: !740)
!740 = !{!55, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!743 = !DILocalVariable(name: "r", arg: 1, scope: !738, file: !164, line: 165, type: !741)
!744 = !DILocation(line: 165, column: 57, scope: !738)
!745 = !DILocation(line: 167, column: 9, scope: !738)
!746 = !DILocation(line: 167, column: 12, scope: !738)
!747 = !DILocation(line: 167, column: 17, scope: !738)
!748 = !DILocation(line: 167, column: 20, scope: !738)
!749 = !DILocation(line: 167, column: 15, scope: !738)
!750 = !DILocation(line: 167, column: 2, scope: !738)
!751 = distinct !DISubprogram(name: "__fswab32", scope: !752, file: !752, line: 57, type: !753, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!752 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!753 = !DISubroutineType(types: !754)
!754 = !{!15, !15}
!755 = !DILocalVariable(name: "val", arg: 1, scope: !751, file: !752, line: 57, type: !15)
!756 = !DILocation(line: 57, column: 57, scope: !751)
!757 = !DILocation(line: 60, column: 23, scope: !751)
!758 = !DILocation(line: 60, column: 9, scope: !751)
!759 = !DILocation(line: 60, column: 2, scope: !751)
!760 = distinct !DISubprogram(name: "__fswab16", scope: !752, file: !752, line: 48, type: !761, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!761 = !DISubroutineType(types: !762)
!762 = !{!17, !17}
!763 = !DILocalVariable(name: "val", arg: 1, scope: !760, file: !752, line: 48, type: !17)
!764 = !DILocation(line: 48, column: 57, scope: !760)
!765 = !DILocation(line: 53, column: 9, scope: !760)
!766 = !DILocation(line: 53, column: 2, scope: !760)
!767 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgb565", scope: !1, file: !1, line: 169, type: !327, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !170)
!768 = !DILocation(line: 445, column: 72, scope: !330, inlinedAt: !769)
!769 = distinct !DILocation(line: 552, column: 10, scope: !338, inlinedAt: !770)
!770 = distinct !DILocation(line: 183, column: 9, scope: !767)
!771 = !DILocation(line: 446, column: 9, scope: !330, inlinedAt: !769)
!772 = !DILocation(line: 446, column: 23, scope: !330, inlinedAt: !769)
!773 = !DILocation(line: 448, column: 8, scope: !330, inlinedAt: !769)
!774 = !DILocation(line: 318, column: 67, scope: !352, inlinedAt: !775)
!775 = distinct !DILocation(line: 553, column: 20, scope: !338, inlinedAt: !770)
!776 = !DILocation(line: 346, column: 58, scope: !358, inlinedAt: !777)
!777 = distinct !DILocation(line: 547, column: 11, scope: !338, inlinedAt: !770)
!778 = !DILocation(line: 472, column: 28, scope: !364, inlinedAt: !779)
!779 = distinct !DILocation(line: 481, column: 9, scope: !369, inlinedAt: !780)
!780 = distinct !DILocation(line: 545, column: 11, scope: !371, inlinedAt: !770)
!781 = !DILocation(line: 472, column: 40, scope: !364, inlinedAt: !779)
!782 = !DILocation(line: 472, column: 60, scope: !364, inlinedAt: !779)
!783 = !DILocation(line: 478, column: 51, scope: !369, inlinedAt: !780)
!784 = !DILocation(line: 478, column: 63, scope: !369, inlinedAt: !780)
!785 = !DILocation(line: 480, column: 15, scope: !369, inlinedAt: !780)
!786 = !DILocation(line: 538, column: 45, scope: !340, inlinedAt: !770)
!787 = !DILocation(line: 538, column: 57, scope: !340, inlinedAt: !770)
!788 = !DILocation(line: 542, column: 16, scope: !338, inlinedAt: !770)
!789 = !DILocalVariable(name: "dst", arg: 1, scope: !767, file: !1, line: 169, type: !12)
!790 = !DILocation(line: 169, column: 38, scope: !767)
!791 = !DILocalVariable(name: "vaddr", arg: 2, scope: !767, file: !1, line: 169, type: !12)
!792 = !DILocation(line: 169, column: 49, scope: !767)
!793 = !DILocalVariable(name: "fb", arg: 3, scope: !767, file: !1, line: 170, type: !27)
!794 = !DILocation(line: 170, column: 35, scope: !767)
!795 = !DILocalVariable(name: "clip", arg: 4, scope: !767, file: !1, line: 171, type: !162)
!796 = !DILocation(line: 171, column: 28, scope: !767)
!797 = !DILocalVariable(name: "__swab", arg: 5, scope: !767, file: !1, line: 171, type: !117)
!798 = !DILocation(line: 171, column: 39, scope: !767)
!799 = !DILocalVariable(name: "linepixels", scope: !767, file: !1, line: 173, type: !185)
!800 = !DILocation(line: 173, column: 9, scope: !767)
!801 = !DILocation(line: 173, column: 22, scope: !767)
!802 = !DILocation(line: 173, column: 28, scope: !767)
!803 = !DILocation(line: 173, column: 33, scope: !767)
!804 = !DILocation(line: 173, column: 39, scope: !767)
!805 = !DILocation(line: 173, column: 31, scope: !767)
!806 = !DILocalVariable(name: "src_len", scope: !767, file: !1, line: 174, type: !185)
!807 = !DILocation(line: 174, column: 9, scope: !767)
!808 = !DILocation(line: 174, column: 19, scope: !767)
!809 = !DILocation(line: 174, column: 30, scope: !767)
!810 = !DILocalVariable(name: "dst_len", scope: !767, file: !1, line: 175, type: !185)
!811 = !DILocation(line: 175, column: 9, scope: !767)
!812 = !DILocation(line: 175, column: 19, scope: !767)
!813 = !DILocation(line: 175, column: 30, scope: !767)
!814 = !DILocalVariable(name: "y", scope: !767, file: !1, line: 176, type: !5)
!815 = !DILocation(line: 176, column: 11, scope: !767)
!816 = !DILocalVariable(name: "lines", scope: !767, file: !1, line: 176, type: !5)
!817 = !DILocation(line: 176, column: 14, scope: !767)
!818 = !DILocation(line: 176, column: 22, scope: !767)
!819 = !DILocation(line: 176, column: 28, scope: !767)
!820 = !DILocation(line: 176, column: 33, scope: !767)
!821 = !DILocation(line: 176, column: 39, scope: !767)
!822 = !DILocation(line: 176, column: 31, scope: !767)
!823 = !DILocalVariable(name: "sbuf", scope: !767, file: !1, line: 177, type: !12)
!824 = !DILocation(line: 177, column: 8, scope: !767)
!825 = !DILocation(line: 183, column: 17, scope: !767)
!826 = !DILocation(line: 540, column: 27, scope: !339, inlinedAt: !770)
!827 = !DILocation(line: 540, column: 6, scope: !339, inlinedAt: !770)
!828 = !DILocation(line: 540, column: 6, scope: !340, inlinedAt: !770)
!829 = !DILocation(line: 544, column: 7, scope: !371, inlinedAt: !770)
!830 = !DILocation(line: 544, column: 12, scope: !371, inlinedAt: !770)
!831 = !DILocation(line: 544, column: 7, scope: !338, inlinedAt: !770)
!832 = !DILocation(line: 545, column: 25, scope: !371, inlinedAt: !770)
!833 = !DILocation(line: 545, column: 31, scope: !371, inlinedAt: !770)
!834 = !DILocation(line: 480, column: 33, scope: !369, inlinedAt: !780)
!835 = !DILocation(line: 480, column: 23, scope: !369, inlinedAt: !780)
!836 = !DILocation(line: 481, column: 29, scope: !369, inlinedAt: !780)
!837 = !DILocation(line: 481, column: 35, scope: !369, inlinedAt: !780)
!838 = !DILocation(line: 481, column: 42, scope: !369, inlinedAt: !780)
!839 = !DILocation(line: 474, column: 23, scope: !364, inlinedAt: !779)
!840 = !DILocation(line: 474, column: 29, scope: !364, inlinedAt: !779)
!841 = !DILocation(line: 474, column: 36, scope: !364, inlinedAt: !779)
!842 = !DILocation(line: 474, column: 9, scope: !364, inlinedAt: !779)
!843 = !DILocation(line: 545, column: 4, scope: !371, inlinedAt: !770)
!844 = !DILocation(line: 547, column: 25, scope: !338, inlinedAt: !770)
!845 = !DILocation(line: 348, column: 7, scope: !473, inlinedAt: !777)
!846 = !DILocation(line: 348, column: 6, scope: !358, inlinedAt: !777)
!847 = !DILocation(line: 349, column: 3, scope: !473, inlinedAt: !777)
!848 = !DILocation(line: 351, column: 6, scope: !477, inlinedAt: !777)
!849 = !DILocation(line: 351, column: 11, scope: !477, inlinedAt: !777)
!850 = !DILocation(line: 351, column: 6, scope: !358, inlinedAt: !777)
!851 = !DILocation(line: 352, column: 3, scope: !477, inlinedAt: !777)
!852 = !DILocation(line: 354, column: 32, scope: !482, inlinedAt: !777)
!853 = !DILocation(line: 354, column: 37, scope: !482, inlinedAt: !777)
!854 = !DILocation(line: 354, column: 42, scope: !482, inlinedAt: !777)
!855 = !DILocation(line: 354, column: 45, scope: !482, inlinedAt: !777)
!856 = !DILocation(line: 354, column: 50, scope: !482, inlinedAt: !777)
!857 = !DILocation(line: 354, column: 6, scope: !358, inlinedAt: !777)
!858 = !DILocation(line: 355, column: 3, scope: !482, inlinedAt: !777)
!859 = !DILocation(line: 356, column: 32, scope: !490, inlinedAt: !777)
!860 = !DILocation(line: 356, column: 37, scope: !490, inlinedAt: !777)
!861 = !DILocation(line: 356, column: 43, scope: !490, inlinedAt: !777)
!862 = !DILocation(line: 356, column: 46, scope: !490, inlinedAt: !777)
!863 = !DILocation(line: 356, column: 51, scope: !490, inlinedAt: !777)
!864 = !DILocation(line: 356, column: 6, scope: !358, inlinedAt: !777)
!865 = !DILocation(line: 357, column: 3, scope: !490, inlinedAt: !777)
!866 = !DILocation(line: 358, column: 6, scope: !498, inlinedAt: !777)
!867 = !DILocation(line: 358, column: 11, scope: !498, inlinedAt: !777)
!868 = !DILocation(line: 358, column: 6, scope: !358, inlinedAt: !777)
!869 = !DILocation(line: 358, column: 26, scope: !498, inlinedAt: !777)
!870 = !DILocation(line: 359, column: 6, scope: !503, inlinedAt: !777)
!871 = !DILocation(line: 359, column: 11, scope: !503, inlinedAt: !777)
!872 = !DILocation(line: 359, column: 6, scope: !358, inlinedAt: !777)
!873 = !DILocation(line: 359, column: 26, scope: !503, inlinedAt: !777)
!874 = !DILocation(line: 360, column: 6, scope: !508, inlinedAt: !777)
!875 = !DILocation(line: 360, column: 11, scope: !508, inlinedAt: !777)
!876 = !DILocation(line: 360, column: 6, scope: !358, inlinedAt: !777)
!877 = !DILocation(line: 360, column: 26, scope: !508, inlinedAt: !777)
!878 = !DILocation(line: 361, column: 6, scope: !513, inlinedAt: !777)
!879 = !DILocation(line: 361, column: 11, scope: !513, inlinedAt: !777)
!880 = !DILocation(line: 361, column: 6, scope: !358, inlinedAt: !777)
!881 = !DILocation(line: 361, column: 26, scope: !513, inlinedAt: !777)
!882 = !DILocation(line: 362, column: 6, scope: !518, inlinedAt: !777)
!883 = !DILocation(line: 362, column: 11, scope: !518, inlinedAt: !777)
!884 = !DILocation(line: 362, column: 6, scope: !358, inlinedAt: !777)
!885 = !DILocation(line: 362, column: 26, scope: !518, inlinedAt: !777)
!886 = !DILocation(line: 363, column: 6, scope: !523, inlinedAt: !777)
!887 = !DILocation(line: 363, column: 11, scope: !523, inlinedAt: !777)
!888 = !DILocation(line: 363, column: 6, scope: !358, inlinedAt: !777)
!889 = !DILocation(line: 363, column: 26, scope: !523, inlinedAt: !777)
!890 = !DILocation(line: 364, column: 6, scope: !528, inlinedAt: !777)
!891 = !DILocation(line: 364, column: 11, scope: !528, inlinedAt: !777)
!892 = !DILocation(line: 364, column: 6, scope: !358, inlinedAt: !777)
!893 = !DILocation(line: 364, column: 26, scope: !528, inlinedAt: !777)
!894 = !DILocation(line: 365, column: 6, scope: !533, inlinedAt: !777)
!895 = !DILocation(line: 365, column: 11, scope: !533, inlinedAt: !777)
!896 = !DILocation(line: 365, column: 6, scope: !358, inlinedAt: !777)
!897 = !DILocation(line: 365, column: 26, scope: !533, inlinedAt: !777)
!898 = !DILocation(line: 366, column: 6, scope: !538, inlinedAt: !777)
!899 = !DILocation(line: 366, column: 11, scope: !538, inlinedAt: !777)
!900 = !DILocation(line: 366, column: 6, scope: !358, inlinedAt: !777)
!901 = !DILocation(line: 366, column: 26, scope: !538, inlinedAt: !777)
!902 = !DILocation(line: 367, column: 6, scope: !543, inlinedAt: !777)
!903 = !DILocation(line: 367, column: 11, scope: !543, inlinedAt: !777)
!904 = !DILocation(line: 367, column: 6, scope: !358, inlinedAt: !777)
!905 = !DILocation(line: 367, column: 26, scope: !543, inlinedAt: !777)
!906 = !DILocation(line: 368, column: 6, scope: !548, inlinedAt: !777)
!907 = !DILocation(line: 368, column: 11, scope: !548, inlinedAt: !777)
!908 = !DILocation(line: 368, column: 6, scope: !358, inlinedAt: !777)
!909 = !DILocation(line: 368, column: 26, scope: !548, inlinedAt: !777)
!910 = !DILocation(line: 369, column: 6, scope: !553, inlinedAt: !777)
!911 = !DILocation(line: 369, column: 11, scope: !553, inlinedAt: !777)
!912 = !DILocation(line: 369, column: 6, scope: !358, inlinedAt: !777)
!913 = !DILocation(line: 369, column: 26, scope: !553, inlinedAt: !777)
!914 = !DILocation(line: 370, column: 6, scope: !558, inlinedAt: !777)
!915 = !DILocation(line: 370, column: 11, scope: !558, inlinedAt: !777)
!916 = !DILocation(line: 370, column: 6, scope: !358, inlinedAt: !777)
!917 = !DILocation(line: 370, column: 26, scope: !558, inlinedAt: !777)
!918 = !DILocation(line: 371, column: 6, scope: !563, inlinedAt: !777)
!919 = !DILocation(line: 371, column: 11, scope: !563, inlinedAt: !777)
!920 = !DILocation(line: 371, column: 6, scope: !358, inlinedAt: !777)
!921 = !DILocation(line: 371, column: 26, scope: !563, inlinedAt: !777)
!922 = !DILocation(line: 372, column: 6, scope: !568, inlinedAt: !777)
!923 = !DILocation(line: 372, column: 11, scope: !568, inlinedAt: !777)
!924 = !DILocation(line: 372, column: 6, scope: !358, inlinedAt: !777)
!925 = !DILocation(line: 372, column: 26, scope: !568, inlinedAt: !777)
!926 = !DILocation(line: 373, column: 6, scope: !573, inlinedAt: !777)
!927 = !DILocation(line: 373, column: 11, scope: !573, inlinedAt: !777)
!928 = !DILocation(line: 373, column: 6, scope: !358, inlinedAt: !777)
!929 = !DILocation(line: 373, column: 26, scope: !573, inlinedAt: !777)
!930 = !DILocation(line: 374, column: 6, scope: !578, inlinedAt: !777)
!931 = !DILocation(line: 374, column: 11, scope: !578, inlinedAt: !777)
!932 = !DILocation(line: 374, column: 6, scope: !358, inlinedAt: !777)
!933 = !DILocation(line: 374, column: 26, scope: !578, inlinedAt: !777)
!934 = !DILocation(line: 375, column: 6, scope: !583, inlinedAt: !777)
!935 = !DILocation(line: 375, column: 11, scope: !583, inlinedAt: !777)
!936 = !DILocation(line: 375, column: 6, scope: !358, inlinedAt: !777)
!937 = !DILocation(line: 375, column: 27, scope: !583, inlinedAt: !777)
!938 = !DILocation(line: 376, column: 6, scope: !588, inlinedAt: !777)
!939 = !DILocation(line: 376, column: 11, scope: !588, inlinedAt: !777)
!940 = !DILocation(line: 376, column: 6, scope: !358, inlinedAt: !777)
!941 = !DILocation(line: 376, column: 32, scope: !588, inlinedAt: !777)
!942 = !DILocation(line: 377, column: 6, scope: !593, inlinedAt: !777)
!943 = !DILocation(line: 377, column: 11, scope: !593, inlinedAt: !777)
!944 = !DILocation(line: 377, column: 6, scope: !358, inlinedAt: !777)
!945 = !DILocation(line: 377, column: 32, scope: !593, inlinedAt: !777)
!946 = !DILocation(line: 378, column: 6, scope: !598, inlinedAt: !777)
!947 = !DILocation(line: 378, column: 11, scope: !598, inlinedAt: !777)
!948 = !DILocation(line: 378, column: 6, scope: !358, inlinedAt: !777)
!949 = !DILocation(line: 378, column: 32, scope: !598, inlinedAt: !777)
!950 = !DILocation(line: 379, column: 6, scope: !603, inlinedAt: !777)
!951 = !DILocation(line: 379, column: 11, scope: !603, inlinedAt: !777)
!952 = !DILocation(line: 379, column: 6, scope: !358, inlinedAt: !777)
!953 = !DILocation(line: 379, column: 33, scope: !603, inlinedAt: !777)
!954 = !DILocation(line: 380, column: 6, scope: !608, inlinedAt: !777)
!955 = !DILocation(line: 380, column: 11, scope: !608, inlinedAt: !777)
!956 = !DILocation(line: 380, column: 6, scope: !358, inlinedAt: !777)
!957 = !DILocation(line: 380, column: 33, scope: !608, inlinedAt: !777)
!958 = !DILocation(line: 381, column: 6, scope: !613, inlinedAt: !777)
!959 = !DILocation(line: 381, column: 11, scope: !613, inlinedAt: !777)
!960 = !DILocation(line: 381, column: 6, scope: !358, inlinedAt: !777)
!961 = !DILocation(line: 381, column: 33, scope: !613, inlinedAt: !777)
!962 = !DILocation(line: 382, column: 2, scope: !618, inlinedAt: !777)
!963 = !DILocation(line: 382, column: 2, scope: !622, inlinedAt: !777)
!964 = !DILocation(line: 382, column: 2, scope: !623, inlinedAt: !777)
!965 = !DILocation(line: 386, column: 1, scope: !358, inlinedAt: !777)
!966 = !DILocation(line: 547, column: 9, scope: !338, inlinedAt: !770)
!967 = !DILocation(line: 549, column: 8, scope: !629, inlinedAt: !770)
!968 = !DILocation(line: 549, column: 7, scope: !338, inlinedAt: !770)
!969 = !DILocation(line: 550, column: 4, scope: !629, inlinedAt: !770)
!970 = !DILocation(line: 553, column: 33, scope: !338, inlinedAt: !770)
!971 = !DILocation(line: 325, column: 6, scope: !634, inlinedAt: !775)
!972 = !DILocation(line: 325, column: 6, scope: !352, inlinedAt: !775)
!973 = !DILocation(line: 326, column: 3, scope: !634, inlinedAt: !775)
!974 = !DILocation(line: 332, column: 9, scope: !352, inlinedAt: !775)
!975 = !DILocation(line: 332, column: 15, scope: !352, inlinedAt: !775)
!976 = !DILocation(line: 332, column: 2, scope: !352, inlinedAt: !775)
!977 = !DILocation(line: 336, column: 1, scope: !352, inlinedAt: !775)
!978 = !DILocation(line: 553, column: 5, scope: !338, inlinedAt: !770)
!979 = !DILocation(line: 553, column: 41, scope: !338, inlinedAt: !770)
!980 = !DILocation(line: 554, column: 5, scope: !338, inlinedAt: !770)
!981 = !DILocation(line: 554, column: 12, scope: !338, inlinedAt: !770)
!982 = !DILocation(line: 448, column: 31, scope: !330, inlinedAt: !769)
!983 = !DILocation(line: 448, column: 34, scope: !330, inlinedAt: !769)
!984 = !DILocation(line: 448, column: 14, scope: !330, inlinedAt: !769)
!985 = !DILocation(line: 450, column: 22, scope: !330, inlinedAt: !769)
!986 = !DILocation(line: 450, column: 25, scope: !330, inlinedAt: !769)
!987 = !DILocation(line: 450, column: 30, scope: !330, inlinedAt: !769)
!988 = !DILocation(line: 450, column: 36, scope: !330, inlinedAt: !769)
!989 = !DILocation(line: 450, column: 8, scope: !330, inlinedAt: !769)
!990 = !DILocation(line: 450, column: 6, scope: !330, inlinedAt: !769)
!991 = !DILocation(line: 451, column: 9, scope: !330, inlinedAt: !769)
!992 = !DILocation(line: 552, column: 3, scope: !338, inlinedAt: !770)
!993 = !DILocation(line: 557, column: 19, scope: !340, inlinedAt: !770)
!994 = !DILocation(line: 557, column: 25, scope: !340, inlinedAt: !770)
!995 = !DILocation(line: 557, column: 9, scope: !340, inlinedAt: !770)
!996 = !DILocation(line: 557, column: 2, scope: !340, inlinedAt: !770)
!997 = !DILocation(line: 558, column: 1, scope: !340, inlinedAt: !770)
!998 = !DILocation(line: 183, column: 7, scope: !767)
!999 = !DILocation(line: 184, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !767, file: !1, line: 184, column: 6)
!1001 = !DILocation(line: 184, column: 6, scope: !767)
!1002 = !DILocation(line: 185, column: 3, scope: !1000)
!1003 = !DILocation(line: 187, column: 23, scope: !767)
!1004 = !DILocation(line: 187, column: 29, scope: !767)
!1005 = !DILocation(line: 187, column: 33, scope: !767)
!1006 = !DILocation(line: 187, column: 11, scope: !767)
!1007 = !DILocation(line: 187, column: 8, scope: !767)
!1008 = !DILocation(line: 188, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !767, file: !1, line: 188, column: 2)
!1010 = !DILocation(line: 188, column: 7, scope: !1009)
!1011 = !DILocation(line: 188, column: 14, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 188, column: 2)
!1013 = !DILocation(line: 188, column: 18, scope: !1012)
!1014 = !DILocation(line: 188, column: 16, scope: !1012)
!1015 = !DILocation(line: 188, column: 2, scope: !1009)
!1016 = !DILocation(line: 189, column: 10, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 188, column: 30)
!1018 = !DILocation(line: 189, column: 16, scope: !1017)
!1019 = !DILocation(line: 189, column: 23, scope: !1017)
!1020 = !DILocation(line: 189, column: 3, scope: !1017)
!1021 = !DILocation(line: 190, column: 34, scope: !1017)
!1022 = !DILocation(line: 190, column: 39, scope: !1017)
!1023 = !DILocation(line: 190, column: 45, scope: !1017)
!1024 = !DILocation(line: 190, column: 57, scope: !1017)
!1025 = !DILocation(line: 190, column: 3, scope: !1017)
!1026 = !DILocation(line: 191, column: 12, scope: !1017)
!1027 = !DILocation(line: 191, column: 16, scope: !1017)
!1028 = !DILocation(line: 191, column: 9, scope: !1017)
!1029 = !DILocation(line: 192, column: 10, scope: !1017)
!1030 = !DILocation(line: 192, column: 7, scope: !1017)
!1031 = !DILocation(line: 193, column: 2, scope: !1017)
!1032 = !DILocation(line: 188, column: 26, scope: !1012)
!1033 = !DILocation(line: 188, column: 2, scope: !1012)
!1034 = distinct !{!1034, !1015, !1035}
!1035 = !DILocation(line: 193, column: 2, scope: !1009)
!1036 = !DILocation(line: 195, column: 8, scope: !767)
!1037 = !DILocation(line: 195, column: 2, scope: !767)
!1038 = !DILocation(line: 196, column: 1, scope: !767)
!1039 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgb565_line", scope: !1, file: !1, line: 137, type: !1040, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !410, !417, !5, !117}
!1042 = !DILocalVariable(name: "dbuf", arg: 1, scope: !1039, file: !1, line: 137, type: !410)
!1043 = !DILocation(line: 137, column: 49, scope: !1039)
!1044 = !DILocalVariable(name: "sbuf", arg: 2, scope: !1039, file: !1, line: 137, type: !417)
!1045 = !DILocation(line: 137, column: 60, scope: !1039)
!1046 = !DILocalVariable(name: "pixels", arg: 3, scope: !1039, file: !1, line: 138, type: !5)
!1047 = !DILocation(line: 138, column: 22, scope: !1039)
!1048 = !DILocalVariable(name: "__swab", arg: 4, scope: !1039, file: !1, line: 139, type: !117)
!1049 = !DILocation(line: 139, column: 14, scope: !1039)
!1050 = !DILocalVariable(name: "x", scope: !1039, file: !1, line: 141, type: !5)
!1051 = !DILocation(line: 141, column: 15, scope: !1039)
!1052 = !DILocalVariable(name: "val16", scope: !1039, file: !1, line: 142, type: !411)
!1053 = !DILocation(line: 142, column: 6, scope: !1039)
!1054 = !DILocation(line: 144, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 144, column: 2)
!1056 = !DILocation(line: 144, column: 7, scope: !1055)
!1057 = !DILocation(line: 144, column: 14, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 144, column: 2)
!1059 = !DILocation(line: 144, column: 18, scope: !1058)
!1060 = !DILocation(line: 144, column: 16, scope: !1058)
!1061 = !DILocation(line: 144, column: 2, scope: !1055)
!1062 = !DILocation(line: 145, column: 13, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 144, column: 31)
!1064 = !DILocation(line: 145, column: 18, scope: !1063)
!1065 = !DILocation(line: 145, column: 21, scope: !1063)
!1066 = !DILocation(line: 145, column: 35, scope: !1063)
!1067 = !DILocation(line: 146, column: 6, scope: !1063)
!1068 = !DILocation(line: 146, column: 11, scope: !1063)
!1069 = !DILocation(line: 146, column: 14, scope: !1063)
!1070 = !DILocation(line: 146, column: 28, scope: !1063)
!1071 = !DILocation(line: 145, column: 41, scope: !1063)
!1072 = !DILocation(line: 147, column: 6, scope: !1063)
!1073 = !DILocation(line: 147, column: 11, scope: !1063)
!1074 = !DILocation(line: 147, column: 14, scope: !1063)
!1075 = !DILocation(line: 147, column: 28, scope: !1063)
!1076 = !DILocation(line: 146, column: 34, scope: !1063)
!1077 = !DILocation(line: 145, column: 11, scope: !1063)
!1078 = !DILocation(line: 145, column: 9, scope: !1063)
!1079 = !DILocation(line: 148, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 148, column: 7)
!1081 = !DILocation(line: 148, column: 7, scope: !1063)
!1082 = !DILocation(line: 149, column: 14, scope: !1080)
!1083 = !DILocation(line: 149, column: 4, scope: !1080)
!1084 = !DILocation(line: 149, column: 9, scope: !1080)
!1085 = !DILocation(line: 149, column: 12, scope: !1080)
!1086 = !DILocation(line: 151, column: 14, scope: !1080)
!1087 = !DILocation(line: 151, column: 4, scope: !1080)
!1088 = !DILocation(line: 151, column: 9, scope: !1080)
!1089 = !DILocation(line: 151, column: 12, scope: !1080)
!1090 = !DILocation(line: 152, column: 2, scope: !1063)
!1091 = !DILocation(line: 144, column: 27, scope: !1058)
!1092 = !DILocation(line: 144, column: 2, scope: !1058)
!1093 = distinct !{!1093, !1061, !1094}
!1094 = !DILocation(line: 152, column: 2, scope: !1055)
!1095 = !DILocation(line: 153, column: 1, scope: !1039)
!1096 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgb565_dstclip", scope: !1, file: !1, line: 214, type: !1097, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !170)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !12, !5, !12, !27, !162, !117}
!1099 = !DILocation(line: 445, column: 72, scope: !330, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 552, column: 10, scope: !338, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 223, column: 9, scope: !1096)
!1102 = !DILocation(line: 446, column: 9, scope: !330, inlinedAt: !1100)
!1103 = !DILocation(line: 446, column: 23, scope: !330, inlinedAt: !1100)
!1104 = !DILocation(line: 448, column: 8, scope: !330, inlinedAt: !1100)
!1105 = !DILocation(line: 318, column: 67, scope: !352, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 553, column: 20, scope: !338, inlinedAt: !1101)
!1107 = !DILocation(line: 346, column: 58, scope: !358, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 547, column: 11, scope: !338, inlinedAt: !1101)
!1109 = !DILocation(line: 472, column: 28, scope: !364, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 481, column: 9, scope: !369, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 545, column: 11, scope: !371, inlinedAt: !1101)
!1112 = !DILocation(line: 472, column: 40, scope: !364, inlinedAt: !1110)
!1113 = !DILocation(line: 472, column: 60, scope: !364, inlinedAt: !1110)
!1114 = !DILocation(line: 478, column: 51, scope: !369, inlinedAt: !1111)
!1115 = !DILocation(line: 478, column: 63, scope: !369, inlinedAt: !1111)
!1116 = !DILocation(line: 480, column: 15, scope: !369, inlinedAt: !1111)
!1117 = !DILocation(line: 538, column: 45, scope: !340, inlinedAt: !1101)
!1118 = !DILocation(line: 538, column: 57, scope: !340, inlinedAt: !1101)
!1119 = !DILocation(line: 542, column: 16, scope: !338, inlinedAt: !1101)
!1120 = !DILocalVariable(name: "dst", arg: 1, scope: !1096, file: !1, line: 214, type: !12)
!1121 = !DILocation(line: 214, column: 54, scope: !1096)
!1122 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !1096, file: !1, line: 214, type: !5)
!1123 = !DILocation(line: 214, column: 72, scope: !1096)
!1124 = !DILocalVariable(name: "vaddr", arg: 3, scope: !1096, file: !1, line: 215, type: !12)
!1125 = !DILocation(line: 215, column: 18, scope: !1096)
!1126 = !DILocalVariable(name: "fb", arg: 4, scope: !1096, file: !1, line: 215, type: !27)
!1127 = !DILocation(line: 215, column: 49, scope: !1096)
!1128 = !DILocalVariable(name: "clip", arg: 5, scope: !1096, file: !1, line: 216, type: !162)
!1129 = !DILocation(line: 216, column: 29, scope: !1096)
!1130 = !DILocalVariable(name: "__swab", arg: 6, scope: !1096, file: !1, line: 216, type: !117)
!1131 = !DILocation(line: 216, column: 40, scope: !1096)
!1132 = !DILocalVariable(name: "linepixels", scope: !1096, file: !1, line: 218, type: !185)
!1133 = !DILocation(line: 218, column: 9, scope: !1096)
!1134 = !DILocation(line: 218, column: 22, scope: !1096)
!1135 = !DILocation(line: 218, column: 28, scope: !1096)
!1136 = !DILocation(line: 218, column: 33, scope: !1096)
!1137 = !DILocation(line: 218, column: 39, scope: !1096)
!1138 = !DILocation(line: 218, column: 31, scope: !1096)
!1139 = !DILocalVariable(name: "dst_len", scope: !1096, file: !1, line: 219, type: !185)
!1140 = !DILocation(line: 219, column: 9, scope: !1096)
!1141 = !DILocation(line: 219, column: 19, scope: !1096)
!1142 = !DILocation(line: 219, column: 30, scope: !1096)
!1143 = !DILocalVariable(name: "y", scope: !1096, file: !1, line: 220, type: !5)
!1144 = !DILocation(line: 220, column: 11, scope: !1096)
!1145 = !DILocalVariable(name: "lines", scope: !1096, file: !1, line: 220, type: !5)
!1146 = !DILocation(line: 220, column: 14, scope: !1096)
!1147 = !DILocation(line: 220, column: 22, scope: !1096)
!1148 = !DILocation(line: 220, column: 28, scope: !1096)
!1149 = !DILocation(line: 220, column: 33, scope: !1096)
!1150 = !DILocation(line: 220, column: 39, scope: !1096)
!1151 = !DILocation(line: 220, column: 31, scope: !1096)
!1152 = !DILocalVariable(name: "dbuf", scope: !1096, file: !1, line: 221, type: !12)
!1153 = !DILocation(line: 221, column: 8, scope: !1096)
!1154 = !DILocation(line: 223, column: 17, scope: !1096)
!1155 = !DILocation(line: 540, column: 27, scope: !339, inlinedAt: !1101)
!1156 = !DILocation(line: 540, column: 6, scope: !339, inlinedAt: !1101)
!1157 = !DILocation(line: 540, column: 6, scope: !340, inlinedAt: !1101)
!1158 = !DILocation(line: 544, column: 7, scope: !371, inlinedAt: !1101)
!1159 = !DILocation(line: 544, column: 12, scope: !371, inlinedAt: !1101)
!1160 = !DILocation(line: 544, column: 7, scope: !338, inlinedAt: !1101)
!1161 = !DILocation(line: 545, column: 25, scope: !371, inlinedAt: !1101)
!1162 = !DILocation(line: 545, column: 31, scope: !371, inlinedAt: !1101)
!1163 = !DILocation(line: 480, column: 33, scope: !369, inlinedAt: !1111)
!1164 = !DILocation(line: 480, column: 23, scope: !369, inlinedAt: !1111)
!1165 = !DILocation(line: 481, column: 29, scope: !369, inlinedAt: !1111)
!1166 = !DILocation(line: 481, column: 35, scope: !369, inlinedAt: !1111)
!1167 = !DILocation(line: 481, column: 42, scope: !369, inlinedAt: !1111)
!1168 = !DILocation(line: 474, column: 23, scope: !364, inlinedAt: !1110)
!1169 = !DILocation(line: 474, column: 29, scope: !364, inlinedAt: !1110)
!1170 = !DILocation(line: 474, column: 36, scope: !364, inlinedAt: !1110)
!1171 = !DILocation(line: 474, column: 9, scope: !364, inlinedAt: !1110)
!1172 = !DILocation(line: 545, column: 4, scope: !371, inlinedAt: !1101)
!1173 = !DILocation(line: 547, column: 25, scope: !338, inlinedAt: !1101)
!1174 = !DILocation(line: 348, column: 7, scope: !473, inlinedAt: !1108)
!1175 = !DILocation(line: 348, column: 6, scope: !358, inlinedAt: !1108)
!1176 = !DILocation(line: 349, column: 3, scope: !473, inlinedAt: !1108)
!1177 = !DILocation(line: 351, column: 6, scope: !477, inlinedAt: !1108)
!1178 = !DILocation(line: 351, column: 11, scope: !477, inlinedAt: !1108)
!1179 = !DILocation(line: 351, column: 6, scope: !358, inlinedAt: !1108)
!1180 = !DILocation(line: 352, column: 3, scope: !477, inlinedAt: !1108)
!1181 = !DILocation(line: 354, column: 32, scope: !482, inlinedAt: !1108)
!1182 = !DILocation(line: 354, column: 37, scope: !482, inlinedAt: !1108)
!1183 = !DILocation(line: 354, column: 42, scope: !482, inlinedAt: !1108)
!1184 = !DILocation(line: 354, column: 45, scope: !482, inlinedAt: !1108)
!1185 = !DILocation(line: 354, column: 50, scope: !482, inlinedAt: !1108)
!1186 = !DILocation(line: 354, column: 6, scope: !358, inlinedAt: !1108)
!1187 = !DILocation(line: 355, column: 3, scope: !482, inlinedAt: !1108)
!1188 = !DILocation(line: 356, column: 32, scope: !490, inlinedAt: !1108)
!1189 = !DILocation(line: 356, column: 37, scope: !490, inlinedAt: !1108)
!1190 = !DILocation(line: 356, column: 43, scope: !490, inlinedAt: !1108)
!1191 = !DILocation(line: 356, column: 46, scope: !490, inlinedAt: !1108)
!1192 = !DILocation(line: 356, column: 51, scope: !490, inlinedAt: !1108)
!1193 = !DILocation(line: 356, column: 6, scope: !358, inlinedAt: !1108)
!1194 = !DILocation(line: 357, column: 3, scope: !490, inlinedAt: !1108)
!1195 = !DILocation(line: 358, column: 6, scope: !498, inlinedAt: !1108)
!1196 = !DILocation(line: 358, column: 11, scope: !498, inlinedAt: !1108)
!1197 = !DILocation(line: 358, column: 6, scope: !358, inlinedAt: !1108)
!1198 = !DILocation(line: 358, column: 26, scope: !498, inlinedAt: !1108)
!1199 = !DILocation(line: 359, column: 6, scope: !503, inlinedAt: !1108)
!1200 = !DILocation(line: 359, column: 11, scope: !503, inlinedAt: !1108)
!1201 = !DILocation(line: 359, column: 6, scope: !358, inlinedAt: !1108)
!1202 = !DILocation(line: 359, column: 26, scope: !503, inlinedAt: !1108)
!1203 = !DILocation(line: 360, column: 6, scope: !508, inlinedAt: !1108)
!1204 = !DILocation(line: 360, column: 11, scope: !508, inlinedAt: !1108)
!1205 = !DILocation(line: 360, column: 6, scope: !358, inlinedAt: !1108)
!1206 = !DILocation(line: 360, column: 26, scope: !508, inlinedAt: !1108)
!1207 = !DILocation(line: 361, column: 6, scope: !513, inlinedAt: !1108)
!1208 = !DILocation(line: 361, column: 11, scope: !513, inlinedAt: !1108)
!1209 = !DILocation(line: 361, column: 6, scope: !358, inlinedAt: !1108)
!1210 = !DILocation(line: 361, column: 26, scope: !513, inlinedAt: !1108)
!1211 = !DILocation(line: 362, column: 6, scope: !518, inlinedAt: !1108)
!1212 = !DILocation(line: 362, column: 11, scope: !518, inlinedAt: !1108)
!1213 = !DILocation(line: 362, column: 6, scope: !358, inlinedAt: !1108)
!1214 = !DILocation(line: 362, column: 26, scope: !518, inlinedAt: !1108)
!1215 = !DILocation(line: 363, column: 6, scope: !523, inlinedAt: !1108)
!1216 = !DILocation(line: 363, column: 11, scope: !523, inlinedAt: !1108)
!1217 = !DILocation(line: 363, column: 6, scope: !358, inlinedAt: !1108)
!1218 = !DILocation(line: 363, column: 26, scope: !523, inlinedAt: !1108)
!1219 = !DILocation(line: 364, column: 6, scope: !528, inlinedAt: !1108)
!1220 = !DILocation(line: 364, column: 11, scope: !528, inlinedAt: !1108)
!1221 = !DILocation(line: 364, column: 6, scope: !358, inlinedAt: !1108)
!1222 = !DILocation(line: 364, column: 26, scope: !528, inlinedAt: !1108)
!1223 = !DILocation(line: 365, column: 6, scope: !533, inlinedAt: !1108)
!1224 = !DILocation(line: 365, column: 11, scope: !533, inlinedAt: !1108)
!1225 = !DILocation(line: 365, column: 6, scope: !358, inlinedAt: !1108)
!1226 = !DILocation(line: 365, column: 26, scope: !533, inlinedAt: !1108)
!1227 = !DILocation(line: 366, column: 6, scope: !538, inlinedAt: !1108)
!1228 = !DILocation(line: 366, column: 11, scope: !538, inlinedAt: !1108)
!1229 = !DILocation(line: 366, column: 6, scope: !358, inlinedAt: !1108)
!1230 = !DILocation(line: 366, column: 26, scope: !538, inlinedAt: !1108)
!1231 = !DILocation(line: 367, column: 6, scope: !543, inlinedAt: !1108)
!1232 = !DILocation(line: 367, column: 11, scope: !543, inlinedAt: !1108)
!1233 = !DILocation(line: 367, column: 6, scope: !358, inlinedAt: !1108)
!1234 = !DILocation(line: 367, column: 26, scope: !543, inlinedAt: !1108)
!1235 = !DILocation(line: 368, column: 6, scope: !548, inlinedAt: !1108)
!1236 = !DILocation(line: 368, column: 11, scope: !548, inlinedAt: !1108)
!1237 = !DILocation(line: 368, column: 6, scope: !358, inlinedAt: !1108)
!1238 = !DILocation(line: 368, column: 26, scope: !548, inlinedAt: !1108)
!1239 = !DILocation(line: 369, column: 6, scope: !553, inlinedAt: !1108)
!1240 = !DILocation(line: 369, column: 11, scope: !553, inlinedAt: !1108)
!1241 = !DILocation(line: 369, column: 6, scope: !358, inlinedAt: !1108)
!1242 = !DILocation(line: 369, column: 26, scope: !553, inlinedAt: !1108)
!1243 = !DILocation(line: 370, column: 6, scope: !558, inlinedAt: !1108)
!1244 = !DILocation(line: 370, column: 11, scope: !558, inlinedAt: !1108)
!1245 = !DILocation(line: 370, column: 6, scope: !358, inlinedAt: !1108)
!1246 = !DILocation(line: 370, column: 26, scope: !558, inlinedAt: !1108)
!1247 = !DILocation(line: 371, column: 6, scope: !563, inlinedAt: !1108)
!1248 = !DILocation(line: 371, column: 11, scope: !563, inlinedAt: !1108)
!1249 = !DILocation(line: 371, column: 6, scope: !358, inlinedAt: !1108)
!1250 = !DILocation(line: 371, column: 26, scope: !563, inlinedAt: !1108)
!1251 = !DILocation(line: 372, column: 6, scope: !568, inlinedAt: !1108)
!1252 = !DILocation(line: 372, column: 11, scope: !568, inlinedAt: !1108)
!1253 = !DILocation(line: 372, column: 6, scope: !358, inlinedAt: !1108)
!1254 = !DILocation(line: 372, column: 26, scope: !568, inlinedAt: !1108)
!1255 = !DILocation(line: 373, column: 6, scope: !573, inlinedAt: !1108)
!1256 = !DILocation(line: 373, column: 11, scope: !573, inlinedAt: !1108)
!1257 = !DILocation(line: 373, column: 6, scope: !358, inlinedAt: !1108)
!1258 = !DILocation(line: 373, column: 26, scope: !573, inlinedAt: !1108)
!1259 = !DILocation(line: 374, column: 6, scope: !578, inlinedAt: !1108)
!1260 = !DILocation(line: 374, column: 11, scope: !578, inlinedAt: !1108)
!1261 = !DILocation(line: 374, column: 6, scope: !358, inlinedAt: !1108)
!1262 = !DILocation(line: 374, column: 26, scope: !578, inlinedAt: !1108)
!1263 = !DILocation(line: 375, column: 6, scope: !583, inlinedAt: !1108)
!1264 = !DILocation(line: 375, column: 11, scope: !583, inlinedAt: !1108)
!1265 = !DILocation(line: 375, column: 6, scope: !358, inlinedAt: !1108)
!1266 = !DILocation(line: 375, column: 27, scope: !583, inlinedAt: !1108)
!1267 = !DILocation(line: 376, column: 6, scope: !588, inlinedAt: !1108)
!1268 = !DILocation(line: 376, column: 11, scope: !588, inlinedAt: !1108)
!1269 = !DILocation(line: 376, column: 6, scope: !358, inlinedAt: !1108)
!1270 = !DILocation(line: 376, column: 32, scope: !588, inlinedAt: !1108)
!1271 = !DILocation(line: 377, column: 6, scope: !593, inlinedAt: !1108)
!1272 = !DILocation(line: 377, column: 11, scope: !593, inlinedAt: !1108)
!1273 = !DILocation(line: 377, column: 6, scope: !358, inlinedAt: !1108)
!1274 = !DILocation(line: 377, column: 32, scope: !593, inlinedAt: !1108)
!1275 = !DILocation(line: 378, column: 6, scope: !598, inlinedAt: !1108)
!1276 = !DILocation(line: 378, column: 11, scope: !598, inlinedAt: !1108)
!1277 = !DILocation(line: 378, column: 6, scope: !358, inlinedAt: !1108)
!1278 = !DILocation(line: 378, column: 32, scope: !598, inlinedAt: !1108)
!1279 = !DILocation(line: 379, column: 6, scope: !603, inlinedAt: !1108)
!1280 = !DILocation(line: 379, column: 11, scope: !603, inlinedAt: !1108)
!1281 = !DILocation(line: 379, column: 6, scope: !358, inlinedAt: !1108)
!1282 = !DILocation(line: 379, column: 33, scope: !603, inlinedAt: !1108)
!1283 = !DILocation(line: 380, column: 6, scope: !608, inlinedAt: !1108)
!1284 = !DILocation(line: 380, column: 11, scope: !608, inlinedAt: !1108)
!1285 = !DILocation(line: 380, column: 6, scope: !358, inlinedAt: !1108)
!1286 = !DILocation(line: 380, column: 33, scope: !608, inlinedAt: !1108)
!1287 = !DILocation(line: 381, column: 6, scope: !613, inlinedAt: !1108)
!1288 = !DILocation(line: 381, column: 11, scope: !613, inlinedAt: !1108)
!1289 = !DILocation(line: 381, column: 6, scope: !358, inlinedAt: !1108)
!1290 = !DILocation(line: 381, column: 33, scope: !613, inlinedAt: !1108)
!1291 = !DILocation(line: 382, column: 2, scope: !618, inlinedAt: !1108)
!1292 = !DILocation(line: 382, column: 2, scope: !622, inlinedAt: !1108)
!1293 = !DILocation(line: 382, column: 2, scope: !623, inlinedAt: !1108)
!1294 = !DILocation(line: 386, column: 1, scope: !358, inlinedAt: !1108)
!1295 = !DILocation(line: 547, column: 9, scope: !338, inlinedAt: !1101)
!1296 = !DILocation(line: 549, column: 8, scope: !629, inlinedAt: !1101)
!1297 = !DILocation(line: 549, column: 7, scope: !338, inlinedAt: !1101)
!1298 = !DILocation(line: 550, column: 4, scope: !629, inlinedAt: !1101)
!1299 = !DILocation(line: 553, column: 33, scope: !338, inlinedAt: !1101)
!1300 = !DILocation(line: 325, column: 6, scope: !634, inlinedAt: !1106)
!1301 = !DILocation(line: 325, column: 6, scope: !352, inlinedAt: !1106)
!1302 = !DILocation(line: 326, column: 3, scope: !634, inlinedAt: !1106)
!1303 = !DILocation(line: 332, column: 9, scope: !352, inlinedAt: !1106)
!1304 = !DILocation(line: 332, column: 15, scope: !352, inlinedAt: !1106)
!1305 = !DILocation(line: 332, column: 2, scope: !352, inlinedAt: !1106)
!1306 = !DILocation(line: 336, column: 1, scope: !352, inlinedAt: !1106)
!1307 = !DILocation(line: 553, column: 5, scope: !338, inlinedAt: !1101)
!1308 = !DILocation(line: 553, column: 41, scope: !338, inlinedAt: !1101)
!1309 = !DILocation(line: 554, column: 5, scope: !338, inlinedAt: !1101)
!1310 = !DILocation(line: 554, column: 12, scope: !338, inlinedAt: !1101)
!1311 = !DILocation(line: 448, column: 31, scope: !330, inlinedAt: !1100)
!1312 = !DILocation(line: 448, column: 34, scope: !330, inlinedAt: !1100)
!1313 = !DILocation(line: 448, column: 14, scope: !330, inlinedAt: !1100)
!1314 = !DILocation(line: 450, column: 22, scope: !330, inlinedAt: !1100)
!1315 = !DILocation(line: 450, column: 25, scope: !330, inlinedAt: !1100)
!1316 = !DILocation(line: 450, column: 30, scope: !330, inlinedAt: !1100)
!1317 = !DILocation(line: 450, column: 36, scope: !330, inlinedAt: !1100)
!1318 = !DILocation(line: 450, column: 8, scope: !330, inlinedAt: !1100)
!1319 = !DILocation(line: 450, column: 6, scope: !330, inlinedAt: !1100)
!1320 = !DILocation(line: 451, column: 9, scope: !330, inlinedAt: !1100)
!1321 = !DILocation(line: 552, column: 3, scope: !338, inlinedAt: !1101)
!1322 = !DILocation(line: 557, column: 19, scope: !340, inlinedAt: !1101)
!1323 = !DILocation(line: 557, column: 25, scope: !340, inlinedAt: !1101)
!1324 = !DILocation(line: 557, column: 9, scope: !340, inlinedAt: !1101)
!1325 = !DILocation(line: 557, column: 2, scope: !340, inlinedAt: !1101)
!1326 = !DILocation(line: 558, column: 1, scope: !340, inlinedAt: !1101)
!1327 = !DILocation(line: 223, column: 7, scope: !1096)
!1328 = !DILocation(line: 224, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 224, column: 6)
!1330 = !DILocation(line: 224, column: 6, scope: !1096)
!1331 = !DILocation(line: 225, column: 3, scope: !1329)
!1332 = !DILocation(line: 227, column: 23, scope: !1096)
!1333 = !DILocation(line: 227, column: 29, scope: !1096)
!1334 = !DILocation(line: 227, column: 33, scope: !1096)
!1335 = !DILocation(line: 227, column: 11, scope: !1096)
!1336 = !DILocation(line: 227, column: 8, scope: !1096)
!1337 = !DILocation(line: 228, column: 21, scope: !1096)
!1338 = !DILocation(line: 228, column: 27, scope: !1096)
!1339 = !DILocation(line: 228, column: 9, scope: !1096)
!1340 = !DILocation(line: 228, column: 6, scope: !1096)
!1341 = !DILocation(line: 229, column: 9, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 229, column: 2)
!1343 = !DILocation(line: 229, column: 7, scope: !1342)
!1344 = !DILocation(line: 229, column: 14, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !1, line: 229, column: 2)
!1346 = !DILocation(line: 229, column: 18, scope: !1345)
!1347 = !DILocation(line: 229, column: 16, scope: !1345)
!1348 = !DILocation(line: 229, column: 2, scope: !1342)
!1349 = !DILocation(line: 230, column: 34, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 229, column: 30)
!1351 = !DILocation(line: 230, column: 40, scope: !1350)
!1352 = !DILocation(line: 230, column: 47, scope: !1350)
!1353 = !DILocation(line: 230, column: 59, scope: !1350)
!1354 = !DILocation(line: 230, column: 3, scope: !1350)
!1355 = !DILocation(line: 231, column: 15, scope: !1350)
!1356 = !DILocation(line: 231, column: 20, scope: !1350)
!1357 = !DILocation(line: 231, column: 26, scope: !1350)
!1358 = !DILocation(line: 231, column: 3, scope: !1350)
!1359 = !DILocation(line: 232, column: 12, scope: !1350)
!1360 = !DILocation(line: 232, column: 16, scope: !1350)
!1361 = !DILocation(line: 232, column: 9, scope: !1350)
!1362 = !DILocation(line: 233, column: 10, scope: !1350)
!1363 = !DILocation(line: 233, column: 7, scope: !1350)
!1364 = !DILocation(line: 234, column: 2, scope: !1350)
!1365 = !DILocation(line: 229, column: 26, scope: !1345)
!1366 = !DILocation(line: 229, column: 2, scope: !1345)
!1367 = distinct !{!1367, !1348, !1368}
!1368 = !DILocation(line: 234, column: 2, scope: !1342)
!1369 = !DILocation(line: 236, column: 8, scope: !1096)
!1370 = !DILocation(line: 236, column: 2, scope: !1096)
!1371 = !DILocation(line: 237, column: 1, scope: !1096)
!1372 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgb888_dstclip", scope: !1, file: !1, line: 266, type: !1373, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !170)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !12, !5, !12, !27, !162}
!1375 = !DILocation(line: 445, column: 72, scope: !330, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 552, column: 10, scope: !338, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 275, column: 9, scope: !1372)
!1378 = !DILocation(line: 446, column: 9, scope: !330, inlinedAt: !1376)
!1379 = !DILocation(line: 446, column: 23, scope: !330, inlinedAt: !1376)
!1380 = !DILocation(line: 448, column: 8, scope: !330, inlinedAt: !1376)
!1381 = !DILocation(line: 318, column: 67, scope: !352, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 553, column: 20, scope: !338, inlinedAt: !1377)
!1383 = !DILocation(line: 346, column: 58, scope: !358, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 547, column: 11, scope: !338, inlinedAt: !1377)
!1385 = !DILocation(line: 472, column: 28, scope: !364, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 481, column: 9, scope: !369, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 545, column: 11, scope: !371, inlinedAt: !1377)
!1388 = !DILocation(line: 472, column: 40, scope: !364, inlinedAt: !1386)
!1389 = !DILocation(line: 472, column: 60, scope: !364, inlinedAt: !1386)
!1390 = !DILocation(line: 478, column: 51, scope: !369, inlinedAt: !1387)
!1391 = !DILocation(line: 478, column: 63, scope: !369, inlinedAt: !1387)
!1392 = !DILocation(line: 480, column: 15, scope: !369, inlinedAt: !1387)
!1393 = !DILocation(line: 538, column: 45, scope: !340, inlinedAt: !1377)
!1394 = !DILocation(line: 538, column: 57, scope: !340, inlinedAt: !1377)
!1395 = !DILocation(line: 542, column: 16, scope: !338, inlinedAt: !1377)
!1396 = !DILocalVariable(name: "dst", arg: 1, scope: !1372, file: !1, line: 266, type: !12)
!1397 = !DILocation(line: 266, column: 54, scope: !1372)
!1398 = !DILocalVariable(name: "dst_pitch", arg: 2, scope: !1372, file: !1, line: 266, type: !5)
!1399 = !DILocation(line: 266, column: 72, scope: !1372)
!1400 = !DILocalVariable(name: "vaddr", arg: 3, scope: !1372, file: !1, line: 267, type: !12)
!1401 = !DILocation(line: 267, column: 18, scope: !1372)
!1402 = !DILocalVariable(name: "fb", arg: 4, scope: !1372, file: !1, line: 267, type: !27)
!1403 = !DILocation(line: 267, column: 49, scope: !1372)
!1404 = !DILocalVariable(name: "clip", arg: 5, scope: !1372, file: !1, line: 268, type: !162)
!1405 = !DILocation(line: 268, column: 29, scope: !1372)
!1406 = !DILocalVariable(name: "linepixels", scope: !1372, file: !1, line: 270, type: !185)
!1407 = !DILocation(line: 270, column: 9, scope: !1372)
!1408 = !DILocation(line: 270, column: 22, scope: !1372)
!1409 = !DILocation(line: 270, column: 28, scope: !1372)
!1410 = !DILocation(line: 270, column: 33, scope: !1372)
!1411 = !DILocation(line: 270, column: 39, scope: !1372)
!1412 = !DILocation(line: 270, column: 31, scope: !1372)
!1413 = !DILocalVariable(name: "dst_len", scope: !1372, file: !1, line: 271, type: !185)
!1414 = !DILocation(line: 271, column: 9, scope: !1372)
!1415 = !DILocation(line: 271, column: 19, scope: !1372)
!1416 = !DILocation(line: 271, column: 30, scope: !1372)
!1417 = !DILocalVariable(name: "y", scope: !1372, file: !1, line: 272, type: !5)
!1418 = !DILocation(line: 272, column: 11, scope: !1372)
!1419 = !DILocalVariable(name: "lines", scope: !1372, file: !1, line: 272, type: !5)
!1420 = !DILocation(line: 272, column: 14, scope: !1372)
!1421 = !DILocation(line: 272, column: 22, scope: !1372)
!1422 = !DILocation(line: 272, column: 28, scope: !1372)
!1423 = !DILocation(line: 272, column: 33, scope: !1372)
!1424 = !DILocation(line: 272, column: 39, scope: !1372)
!1425 = !DILocation(line: 272, column: 31, scope: !1372)
!1426 = !DILocalVariable(name: "dbuf", scope: !1372, file: !1, line: 273, type: !12)
!1427 = !DILocation(line: 273, column: 8, scope: !1372)
!1428 = !DILocation(line: 275, column: 17, scope: !1372)
!1429 = !DILocation(line: 540, column: 27, scope: !339, inlinedAt: !1377)
!1430 = !DILocation(line: 540, column: 6, scope: !339, inlinedAt: !1377)
!1431 = !DILocation(line: 540, column: 6, scope: !340, inlinedAt: !1377)
!1432 = !DILocation(line: 544, column: 7, scope: !371, inlinedAt: !1377)
!1433 = !DILocation(line: 544, column: 12, scope: !371, inlinedAt: !1377)
!1434 = !DILocation(line: 544, column: 7, scope: !338, inlinedAt: !1377)
!1435 = !DILocation(line: 545, column: 25, scope: !371, inlinedAt: !1377)
!1436 = !DILocation(line: 545, column: 31, scope: !371, inlinedAt: !1377)
!1437 = !DILocation(line: 480, column: 33, scope: !369, inlinedAt: !1387)
!1438 = !DILocation(line: 480, column: 23, scope: !369, inlinedAt: !1387)
!1439 = !DILocation(line: 481, column: 29, scope: !369, inlinedAt: !1387)
!1440 = !DILocation(line: 481, column: 35, scope: !369, inlinedAt: !1387)
!1441 = !DILocation(line: 481, column: 42, scope: !369, inlinedAt: !1387)
!1442 = !DILocation(line: 474, column: 23, scope: !364, inlinedAt: !1386)
!1443 = !DILocation(line: 474, column: 29, scope: !364, inlinedAt: !1386)
!1444 = !DILocation(line: 474, column: 36, scope: !364, inlinedAt: !1386)
!1445 = !DILocation(line: 474, column: 9, scope: !364, inlinedAt: !1386)
!1446 = !DILocation(line: 545, column: 4, scope: !371, inlinedAt: !1377)
!1447 = !DILocation(line: 547, column: 25, scope: !338, inlinedAt: !1377)
!1448 = !DILocation(line: 348, column: 7, scope: !473, inlinedAt: !1384)
!1449 = !DILocation(line: 348, column: 6, scope: !358, inlinedAt: !1384)
!1450 = !DILocation(line: 349, column: 3, scope: !473, inlinedAt: !1384)
!1451 = !DILocation(line: 351, column: 6, scope: !477, inlinedAt: !1384)
!1452 = !DILocation(line: 351, column: 11, scope: !477, inlinedAt: !1384)
!1453 = !DILocation(line: 351, column: 6, scope: !358, inlinedAt: !1384)
!1454 = !DILocation(line: 352, column: 3, scope: !477, inlinedAt: !1384)
!1455 = !DILocation(line: 354, column: 32, scope: !482, inlinedAt: !1384)
!1456 = !DILocation(line: 354, column: 37, scope: !482, inlinedAt: !1384)
!1457 = !DILocation(line: 354, column: 42, scope: !482, inlinedAt: !1384)
!1458 = !DILocation(line: 354, column: 45, scope: !482, inlinedAt: !1384)
!1459 = !DILocation(line: 354, column: 50, scope: !482, inlinedAt: !1384)
!1460 = !DILocation(line: 354, column: 6, scope: !358, inlinedAt: !1384)
!1461 = !DILocation(line: 355, column: 3, scope: !482, inlinedAt: !1384)
!1462 = !DILocation(line: 356, column: 32, scope: !490, inlinedAt: !1384)
!1463 = !DILocation(line: 356, column: 37, scope: !490, inlinedAt: !1384)
!1464 = !DILocation(line: 356, column: 43, scope: !490, inlinedAt: !1384)
!1465 = !DILocation(line: 356, column: 46, scope: !490, inlinedAt: !1384)
!1466 = !DILocation(line: 356, column: 51, scope: !490, inlinedAt: !1384)
!1467 = !DILocation(line: 356, column: 6, scope: !358, inlinedAt: !1384)
!1468 = !DILocation(line: 357, column: 3, scope: !490, inlinedAt: !1384)
!1469 = !DILocation(line: 358, column: 6, scope: !498, inlinedAt: !1384)
!1470 = !DILocation(line: 358, column: 11, scope: !498, inlinedAt: !1384)
!1471 = !DILocation(line: 358, column: 6, scope: !358, inlinedAt: !1384)
!1472 = !DILocation(line: 358, column: 26, scope: !498, inlinedAt: !1384)
!1473 = !DILocation(line: 359, column: 6, scope: !503, inlinedAt: !1384)
!1474 = !DILocation(line: 359, column: 11, scope: !503, inlinedAt: !1384)
!1475 = !DILocation(line: 359, column: 6, scope: !358, inlinedAt: !1384)
!1476 = !DILocation(line: 359, column: 26, scope: !503, inlinedAt: !1384)
!1477 = !DILocation(line: 360, column: 6, scope: !508, inlinedAt: !1384)
!1478 = !DILocation(line: 360, column: 11, scope: !508, inlinedAt: !1384)
!1479 = !DILocation(line: 360, column: 6, scope: !358, inlinedAt: !1384)
!1480 = !DILocation(line: 360, column: 26, scope: !508, inlinedAt: !1384)
!1481 = !DILocation(line: 361, column: 6, scope: !513, inlinedAt: !1384)
!1482 = !DILocation(line: 361, column: 11, scope: !513, inlinedAt: !1384)
!1483 = !DILocation(line: 361, column: 6, scope: !358, inlinedAt: !1384)
!1484 = !DILocation(line: 361, column: 26, scope: !513, inlinedAt: !1384)
!1485 = !DILocation(line: 362, column: 6, scope: !518, inlinedAt: !1384)
!1486 = !DILocation(line: 362, column: 11, scope: !518, inlinedAt: !1384)
!1487 = !DILocation(line: 362, column: 6, scope: !358, inlinedAt: !1384)
!1488 = !DILocation(line: 362, column: 26, scope: !518, inlinedAt: !1384)
!1489 = !DILocation(line: 363, column: 6, scope: !523, inlinedAt: !1384)
!1490 = !DILocation(line: 363, column: 11, scope: !523, inlinedAt: !1384)
!1491 = !DILocation(line: 363, column: 6, scope: !358, inlinedAt: !1384)
!1492 = !DILocation(line: 363, column: 26, scope: !523, inlinedAt: !1384)
!1493 = !DILocation(line: 364, column: 6, scope: !528, inlinedAt: !1384)
!1494 = !DILocation(line: 364, column: 11, scope: !528, inlinedAt: !1384)
!1495 = !DILocation(line: 364, column: 6, scope: !358, inlinedAt: !1384)
!1496 = !DILocation(line: 364, column: 26, scope: !528, inlinedAt: !1384)
!1497 = !DILocation(line: 365, column: 6, scope: !533, inlinedAt: !1384)
!1498 = !DILocation(line: 365, column: 11, scope: !533, inlinedAt: !1384)
!1499 = !DILocation(line: 365, column: 6, scope: !358, inlinedAt: !1384)
!1500 = !DILocation(line: 365, column: 26, scope: !533, inlinedAt: !1384)
!1501 = !DILocation(line: 366, column: 6, scope: !538, inlinedAt: !1384)
!1502 = !DILocation(line: 366, column: 11, scope: !538, inlinedAt: !1384)
!1503 = !DILocation(line: 366, column: 6, scope: !358, inlinedAt: !1384)
!1504 = !DILocation(line: 366, column: 26, scope: !538, inlinedAt: !1384)
!1505 = !DILocation(line: 367, column: 6, scope: !543, inlinedAt: !1384)
!1506 = !DILocation(line: 367, column: 11, scope: !543, inlinedAt: !1384)
!1507 = !DILocation(line: 367, column: 6, scope: !358, inlinedAt: !1384)
!1508 = !DILocation(line: 367, column: 26, scope: !543, inlinedAt: !1384)
!1509 = !DILocation(line: 368, column: 6, scope: !548, inlinedAt: !1384)
!1510 = !DILocation(line: 368, column: 11, scope: !548, inlinedAt: !1384)
!1511 = !DILocation(line: 368, column: 6, scope: !358, inlinedAt: !1384)
!1512 = !DILocation(line: 368, column: 26, scope: !548, inlinedAt: !1384)
!1513 = !DILocation(line: 369, column: 6, scope: !553, inlinedAt: !1384)
!1514 = !DILocation(line: 369, column: 11, scope: !553, inlinedAt: !1384)
!1515 = !DILocation(line: 369, column: 6, scope: !358, inlinedAt: !1384)
!1516 = !DILocation(line: 369, column: 26, scope: !553, inlinedAt: !1384)
!1517 = !DILocation(line: 370, column: 6, scope: !558, inlinedAt: !1384)
!1518 = !DILocation(line: 370, column: 11, scope: !558, inlinedAt: !1384)
!1519 = !DILocation(line: 370, column: 6, scope: !358, inlinedAt: !1384)
!1520 = !DILocation(line: 370, column: 26, scope: !558, inlinedAt: !1384)
!1521 = !DILocation(line: 371, column: 6, scope: !563, inlinedAt: !1384)
!1522 = !DILocation(line: 371, column: 11, scope: !563, inlinedAt: !1384)
!1523 = !DILocation(line: 371, column: 6, scope: !358, inlinedAt: !1384)
!1524 = !DILocation(line: 371, column: 26, scope: !563, inlinedAt: !1384)
!1525 = !DILocation(line: 372, column: 6, scope: !568, inlinedAt: !1384)
!1526 = !DILocation(line: 372, column: 11, scope: !568, inlinedAt: !1384)
!1527 = !DILocation(line: 372, column: 6, scope: !358, inlinedAt: !1384)
!1528 = !DILocation(line: 372, column: 26, scope: !568, inlinedAt: !1384)
!1529 = !DILocation(line: 373, column: 6, scope: !573, inlinedAt: !1384)
!1530 = !DILocation(line: 373, column: 11, scope: !573, inlinedAt: !1384)
!1531 = !DILocation(line: 373, column: 6, scope: !358, inlinedAt: !1384)
!1532 = !DILocation(line: 373, column: 26, scope: !573, inlinedAt: !1384)
!1533 = !DILocation(line: 374, column: 6, scope: !578, inlinedAt: !1384)
!1534 = !DILocation(line: 374, column: 11, scope: !578, inlinedAt: !1384)
!1535 = !DILocation(line: 374, column: 6, scope: !358, inlinedAt: !1384)
!1536 = !DILocation(line: 374, column: 26, scope: !578, inlinedAt: !1384)
!1537 = !DILocation(line: 375, column: 6, scope: !583, inlinedAt: !1384)
!1538 = !DILocation(line: 375, column: 11, scope: !583, inlinedAt: !1384)
!1539 = !DILocation(line: 375, column: 6, scope: !358, inlinedAt: !1384)
!1540 = !DILocation(line: 375, column: 27, scope: !583, inlinedAt: !1384)
!1541 = !DILocation(line: 376, column: 6, scope: !588, inlinedAt: !1384)
!1542 = !DILocation(line: 376, column: 11, scope: !588, inlinedAt: !1384)
!1543 = !DILocation(line: 376, column: 6, scope: !358, inlinedAt: !1384)
!1544 = !DILocation(line: 376, column: 32, scope: !588, inlinedAt: !1384)
!1545 = !DILocation(line: 377, column: 6, scope: !593, inlinedAt: !1384)
!1546 = !DILocation(line: 377, column: 11, scope: !593, inlinedAt: !1384)
!1547 = !DILocation(line: 377, column: 6, scope: !358, inlinedAt: !1384)
!1548 = !DILocation(line: 377, column: 32, scope: !593, inlinedAt: !1384)
!1549 = !DILocation(line: 378, column: 6, scope: !598, inlinedAt: !1384)
!1550 = !DILocation(line: 378, column: 11, scope: !598, inlinedAt: !1384)
!1551 = !DILocation(line: 378, column: 6, scope: !358, inlinedAt: !1384)
!1552 = !DILocation(line: 378, column: 32, scope: !598, inlinedAt: !1384)
!1553 = !DILocation(line: 379, column: 6, scope: !603, inlinedAt: !1384)
!1554 = !DILocation(line: 379, column: 11, scope: !603, inlinedAt: !1384)
!1555 = !DILocation(line: 379, column: 6, scope: !358, inlinedAt: !1384)
!1556 = !DILocation(line: 379, column: 33, scope: !603, inlinedAt: !1384)
!1557 = !DILocation(line: 380, column: 6, scope: !608, inlinedAt: !1384)
!1558 = !DILocation(line: 380, column: 11, scope: !608, inlinedAt: !1384)
!1559 = !DILocation(line: 380, column: 6, scope: !358, inlinedAt: !1384)
!1560 = !DILocation(line: 380, column: 33, scope: !608, inlinedAt: !1384)
!1561 = !DILocation(line: 381, column: 6, scope: !613, inlinedAt: !1384)
!1562 = !DILocation(line: 381, column: 11, scope: !613, inlinedAt: !1384)
!1563 = !DILocation(line: 381, column: 6, scope: !358, inlinedAt: !1384)
!1564 = !DILocation(line: 381, column: 33, scope: !613, inlinedAt: !1384)
!1565 = !DILocation(line: 382, column: 2, scope: !618, inlinedAt: !1384)
!1566 = !DILocation(line: 382, column: 2, scope: !622, inlinedAt: !1384)
!1567 = !DILocation(line: 382, column: 2, scope: !623, inlinedAt: !1384)
!1568 = !DILocation(line: 386, column: 1, scope: !358, inlinedAt: !1384)
!1569 = !DILocation(line: 547, column: 9, scope: !338, inlinedAt: !1377)
!1570 = !DILocation(line: 549, column: 8, scope: !629, inlinedAt: !1377)
!1571 = !DILocation(line: 549, column: 7, scope: !338, inlinedAt: !1377)
!1572 = !DILocation(line: 550, column: 4, scope: !629, inlinedAt: !1377)
!1573 = !DILocation(line: 553, column: 33, scope: !338, inlinedAt: !1377)
!1574 = !DILocation(line: 325, column: 6, scope: !634, inlinedAt: !1382)
!1575 = !DILocation(line: 325, column: 6, scope: !352, inlinedAt: !1382)
!1576 = !DILocation(line: 326, column: 3, scope: !634, inlinedAt: !1382)
!1577 = !DILocation(line: 332, column: 9, scope: !352, inlinedAt: !1382)
!1578 = !DILocation(line: 332, column: 15, scope: !352, inlinedAt: !1382)
!1579 = !DILocation(line: 332, column: 2, scope: !352, inlinedAt: !1382)
!1580 = !DILocation(line: 336, column: 1, scope: !352, inlinedAt: !1382)
!1581 = !DILocation(line: 553, column: 5, scope: !338, inlinedAt: !1377)
!1582 = !DILocation(line: 553, column: 41, scope: !338, inlinedAt: !1377)
!1583 = !DILocation(line: 554, column: 5, scope: !338, inlinedAt: !1377)
!1584 = !DILocation(line: 554, column: 12, scope: !338, inlinedAt: !1377)
!1585 = !DILocation(line: 448, column: 31, scope: !330, inlinedAt: !1376)
!1586 = !DILocation(line: 448, column: 34, scope: !330, inlinedAt: !1376)
!1587 = !DILocation(line: 448, column: 14, scope: !330, inlinedAt: !1376)
!1588 = !DILocation(line: 450, column: 22, scope: !330, inlinedAt: !1376)
!1589 = !DILocation(line: 450, column: 25, scope: !330, inlinedAt: !1376)
!1590 = !DILocation(line: 450, column: 30, scope: !330, inlinedAt: !1376)
!1591 = !DILocation(line: 450, column: 36, scope: !330, inlinedAt: !1376)
!1592 = !DILocation(line: 450, column: 8, scope: !330, inlinedAt: !1376)
!1593 = !DILocation(line: 450, column: 6, scope: !330, inlinedAt: !1376)
!1594 = !DILocation(line: 451, column: 9, scope: !330, inlinedAt: !1376)
!1595 = !DILocation(line: 552, column: 3, scope: !338, inlinedAt: !1377)
!1596 = !DILocation(line: 557, column: 19, scope: !340, inlinedAt: !1377)
!1597 = !DILocation(line: 557, column: 25, scope: !340, inlinedAt: !1377)
!1598 = !DILocation(line: 557, column: 9, scope: !340, inlinedAt: !1377)
!1599 = !DILocation(line: 557, column: 2, scope: !340, inlinedAt: !1377)
!1600 = !DILocation(line: 558, column: 1, scope: !340, inlinedAt: !1377)
!1601 = !DILocation(line: 275, column: 7, scope: !1372)
!1602 = !DILocation(line: 276, column: 7, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 276, column: 6)
!1604 = !DILocation(line: 276, column: 6, scope: !1372)
!1605 = !DILocation(line: 277, column: 3, scope: !1603)
!1606 = !DILocation(line: 279, column: 23, scope: !1372)
!1607 = !DILocation(line: 279, column: 29, scope: !1372)
!1608 = !DILocation(line: 279, column: 33, scope: !1372)
!1609 = !DILocation(line: 279, column: 11, scope: !1372)
!1610 = !DILocation(line: 279, column: 8, scope: !1372)
!1611 = !DILocation(line: 280, column: 21, scope: !1372)
!1612 = !DILocation(line: 280, column: 27, scope: !1372)
!1613 = !DILocation(line: 280, column: 9, scope: !1372)
!1614 = !DILocation(line: 280, column: 6, scope: !1372)
!1615 = !DILocation(line: 281, column: 9, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 281, column: 2)
!1617 = !DILocation(line: 281, column: 7, scope: !1616)
!1618 = !DILocation(line: 281, column: 14, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 281, column: 2)
!1620 = !DILocation(line: 281, column: 18, scope: !1619)
!1621 = !DILocation(line: 281, column: 16, scope: !1619)
!1622 = !DILocation(line: 281, column: 2, scope: !1616)
!1623 = !DILocation(line: 282, column: 34, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 281, column: 30)
!1625 = !DILocation(line: 282, column: 40, scope: !1624)
!1626 = !DILocation(line: 282, column: 47, scope: !1624)
!1627 = !DILocation(line: 282, column: 3, scope: !1624)
!1628 = !DILocation(line: 283, column: 15, scope: !1624)
!1629 = !DILocation(line: 283, column: 20, scope: !1624)
!1630 = !DILocation(line: 283, column: 26, scope: !1624)
!1631 = !DILocation(line: 283, column: 3, scope: !1624)
!1632 = !DILocation(line: 284, column: 12, scope: !1624)
!1633 = !DILocation(line: 284, column: 16, scope: !1624)
!1634 = !DILocation(line: 284, column: 9, scope: !1624)
!1635 = !DILocation(line: 285, column: 10, scope: !1624)
!1636 = !DILocation(line: 285, column: 7, scope: !1624)
!1637 = !DILocation(line: 286, column: 2, scope: !1624)
!1638 = !DILocation(line: 281, column: 26, scope: !1619)
!1639 = !DILocation(line: 281, column: 2, scope: !1619)
!1640 = distinct !{!1640, !1622, !1641}
!1641 = !DILocation(line: 286, column: 2, scope: !1616)
!1642 = !DILocation(line: 288, column: 8, scope: !1372)
!1643 = !DILocation(line: 288, column: 2, scope: !1372)
!1644 = !DILocation(line: 289, column: 1, scope: !1372)
!1645 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_rgb888_line", scope: !1, file: !1, line: 240, type: !1646, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1648, !417, !5}
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!1649 = !DILocalVariable(name: "dbuf", arg: 1, scope: !1645, file: !1, line: 240, type: !1648)
!1650 = !DILocation(line: 240, column: 48, scope: !1645)
!1651 = !DILocalVariable(name: "sbuf", arg: 2, scope: !1645, file: !1, line: 240, type: !417)
!1652 = !DILocation(line: 240, column: 59, scope: !1645)
!1653 = !DILocalVariable(name: "pixels", arg: 3, scope: !1645, file: !1, line: 241, type: !5)
!1654 = !DILocation(line: 241, column: 22, scope: !1645)
!1655 = !DILocalVariable(name: "x", scope: !1645, file: !1, line: 243, type: !5)
!1656 = !DILocation(line: 243, column: 15, scope: !1645)
!1657 = !DILocation(line: 245, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1645, file: !1, line: 245, column: 2)
!1659 = !DILocation(line: 245, column: 7, scope: !1658)
!1660 = !DILocation(line: 245, column: 14, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 245, column: 2)
!1662 = !DILocation(line: 245, column: 18, scope: !1661)
!1663 = !DILocation(line: 245, column: 16, scope: !1661)
!1664 = !DILocation(line: 245, column: 2, scope: !1658)
!1665 = !DILocation(line: 246, column: 14, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 245, column: 31)
!1667 = !DILocation(line: 246, column: 19, scope: !1666)
!1668 = !DILocation(line: 246, column: 22, scope: !1666)
!1669 = !DILocation(line: 246, column: 36, scope: !1666)
!1670 = !DILocation(line: 246, column: 13, scope: !1666)
!1671 = !DILocation(line: 246, column: 8, scope: !1666)
!1672 = !DILocation(line: 246, column: 11, scope: !1666)
!1673 = !DILocation(line: 247, column: 14, scope: !1666)
!1674 = !DILocation(line: 247, column: 19, scope: !1666)
!1675 = !DILocation(line: 247, column: 22, scope: !1666)
!1676 = !DILocation(line: 247, column: 36, scope: !1666)
!1677 = !DILocation(line: 247, column: 13, scope: !1666)
!1678 = !DILocation(line: 247, column: 8, scope: !1666)
!1679 = !DILocation(line: 247, column: 11, scope: !1666)
!1680 = !DILocation(line: 248, column: 14, scope: !1666)
!1681 = !DILocation(line: 248, column: 19, scope: !1666)
!1682 = !DILocation(line: 248, column: 22, scope: !1666)
!1683 = !DILocation(line: 248, column: 36, scope: !1666)
!1684 = !DILocation(line: 248, column: 13, scope: !1666)
!1685 = !DILocation(line: 248, column: 8, scope: !1666)
!1686 = !DILocation(line: 248, column: 11, scope: !1666)
!1687 = !DILocation(line: 249, column: 2, scope: !1666)
!1688 = !DILocation(line: 245, column: 27, scope: !1661)
!1689 = !DILocation(line: 245, column: 2, scope: !1661)
!1690 = distinct !{!1690, !1664, !1691}
!1691 = !DILocation(line: 249, column: 2, scope: !1658)
!1692 = !DILocation(line: 250, column: 1, scope: !1645)
!1693 = distinct !DISubprogram(name: "drm_fb_xrgb8888_to_gray8", scope: !1, file: !1, line: 308, type: !1694, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !170)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1648, !12, !27, !162}
!1696 = !DILocation(line: 445, column: 72, scope: !330, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 552, column: 10, scope: !338, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 322, column: 8, scope: !1693)
!1699 = !DILocation(line: 446, column: 9, scope: !330, inlinedAt: !1697)
!1700 = !DILocation(line: 446, column: 23, scope: !330, inlinedAt: !1697)
!1701 = !DILocation(line: 448, column: 8, scope: !330, inlinedAt: !1697)
!1702 = !DILocation(line: 318, column: 67, scope: !352, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 553, column: 20, scope: !338, inlinedAt: !1698)
!1704 = !DILocation(line: 346, column: 58, scope: !358, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 547, column: 11, scope: !338, inlinedAt: !1698)
!1706 = !DILocation(line: 472, column: 28, scope: !364, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 481, column: 9, scope: !369, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 545, column: 11, scope: !371, inlinedAt: !1698)
!1709 = !DILocation(line: 472, column: 40, scope: !364, inlinedAt: !1707)
!1710 = !DILocation(line: 472, column: 60, scope: !364, inlinedAt: !1707)
!1711 = !DILocation(line: 478, column: 51, scope: !369, inlinedAt: !1708)
!1712 = !DILocation(line: 478, column: 63, scope: !369, inlinedAt: !1708)
!1713 = !DILocation(line: 480, column: 15, scope: !369, inlinedAt: !1708)
!1714 = !DILocation(line: 538, column: 45, scope: !340, inlinedAt: !1698)
!1715 = !DILocation(line: 538, column: 57, scope: !340, inlinedAt: !1698)
!1716 = !DILocation(line: 542, column: 16, scope: !338, inlinedAt: !1698)
!1717 = !DILocalVariable(name: "dst", arg: 1, scope: !1693, file: !1, line: 308, type: !1648)
!1718 = !DILocation(line: 308, column: 35, scope: !1693)
!1719 = !DILocalVariable(name: "vaddr", arg: 2, scope: !1693, file: !1, line: 308, type: !12)
!1720 = !DILocation(line: 308, column: 46, scope: !1693)
!1721 = !DILocalVariable(name: "fb", arg: 3, scope: !1693, file: !1, line: 308, type: !27)
!1722 = !DILocation(line: 308, column: 77, scope: !1693)
!1723 = !DILocalVariable(name: "clip", arg: 4, scope: !1693, file: !1, line: 309, type: !162)
!1724 = !DILocation(line: 309, column: 28, scope: !1693)
!1725 = !DILocalVariable(name: "len", scope: !1693, file: !1, line: 311, type: !5)
!1726 = !DILocation(line: 311, column: 15, scope: !1693)
!1727 = !DILocation(line: 311, column: 22, scope: !1693)
!1728 = !DILocation(line: 311, column: 28, scope: !1693)
!1729 = !DILocation(line: 311, column: 33, scope: !1693)
!1730 = !DILocation(line: 311, column: 39, scope: !1693)
!1731 = !DILocation(line: 311, column: 31, scope: !1693)
!1732 = !DILocation(line: 311, column: 21, scope: !1693)
!1733 = !DILocation(line: 311, column: 43, scope: !1693)
!1734 = !DILocalVariable(name: "x", scope: !1693, file: !1, line: 312, type: !5)
!1735 = !DILocation(line: 312, column: 15, scope: !1693)
!1736 = !DILocalVariable(name: "y", scope: !1693, file: !1, line: 312, type: !5)
!1737 = !DILocation(line: 312, column: 18, scope: !1693)
!1738 = !DILocalVariable(name: "buf", scope: !1693, file: !1, line: 313, type: !12)
!1739 = !DILocation(line: 313, column: 8, scope: !1693)
!1740 = !DILocalVariable(name: "src", scope: !1693, file: !1, line: 314, type: !417)
!1741 = !DILocation(line: 314, column: 7, scope: !1693)
!1742 = !DILocalVariable(name: "__ret_warn_on", scope: !1743, file: !1, line: 316, type: !55)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !1, line: 316, column: 6)
!1744 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 316, column: 6)
!1745 = !DILocation(line: 316, column: 6, scope: !1743)
!1746 = !DILocation(line: 316, column: 6, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1743, file: !1, line: 316, column: 6)
!1748 = !DILocation(line: 316, column: 6, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1747, file: !1, line: 316, column: 6)
!1750 = !DILocation(line: 316, column: 6, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 316, column: 6)
!1752 = !DILocation(line: 316, column: 6, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 316, column: 6)
!1754 = !{i32 -2143478360, i32 -2143478331, i32 -2143478285, i32 -2143478227, i32 -2143478173, i32 -2143478119, i32 -2143478064, i32 -2143478033}
!1755 = !DILocation(line: 316, column: 6, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 316, column: 6)
!1757 = !{i32 -2143477616, i32 -2143477609, i32 -2143477557, i32 -2143477526, i32 -2143477496}
!1758 = !DILocation(line: 316, column: 6, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 316, column: 6)
!1760 = !DILocation(line: 316, column: 6, scope: !1744)
!1761 = !DILocation(line: 316, column: 6, scope: !1693)
!1762 = !DILocation(line: 317, column: 3, scope: !1744)
!1763 = !DILocation(line: 322, column: 16, scope: !1693)
!1764 = !DILocation(line: 540, column: 27, scope: !339, inlinedAt: !1698)
!1765 = !DILocation(line: 540, column: 6, scope: !339, inlinedAt: !1698)
!1766 = !DILocation(line: 540, column: 6, scope: !340, inlinedAt: !1698)
!1767 = !DILocation(line: 544, column: 7, scope: !371, inlinedAt: !1698)
!1768 = !DILocation(line: 544, column: 12, scope: !371, inlinedAt: !1698)
!1769 = !DILocation(line: 544, column: 7, scope: !338, inlinedAt: !1698)
!1770 = !DILocation(line: 545, column: 25, scope: !371, inlinedAt: !1698)
!1771 = !DILocation(line: 545, column: 31, scope: !371, inlinedAt: !1698)
!1772 = !DILocation(line: 480, column: 33, scope: !369, inlinedAt: !1708)
!1773 = !DILocation(line: 480, column: 23, scope: !369, inlinedAt: !1708)
!1774 = !DILocation(line: 481, column: 29, scope: !369, inlinedAt: !1708)
!1775 = !DILocation(line: 481, column: 35, scope: !369, inlinedAt: !1708)
!1776 = !DILocation(line: 481, column: 42, scope: !369, inlinedAt: !1708)
!1777 = !DILocation(line: 474, column: 23, scope: !364, inlinedAt: !1707)
!1778 = !DILocation(line: 474, column: 29, scope: !364, inlinedAt: !1707)
!1779 = !DILocation(line: 474, column: 36, scope: !364, inlinedAt: !1707)
!1780 = !DILocation(line: 474, column: 9, scope: !364, inlinedAt: !1707)
!1781 = !DILocation(line: 545, column: 4, scope: !371, inlinedAt: !1698)
!1782 = !DILocation(line: 547, column: 25, scope: !338, inlinedAt: !1698)
!1783 = !DILocation(line: 348, column: 7, scope: !473, inlinedAt: !1705)
!1784 = !DILocation(line: 348, column: 6, scope: !358, inlinedAt: !1705)
!1785 = !DILocation(line: 349, column: 3, scope: !473, inlinedAt: !1705)
!1786 = !DILocation(line: 351, column: 6, scope: !477, inlinedAt: !1705)
!1787 = !DILocation(line: 351, column: 11, scope: !477, inlinedAt: !1705)
!1788 = !DILocation(line: 351, column: 6, scope: !358, inlinedAt: !1705)
!1789 = !DILocation(line: 352, column: 3, scope: !477, inlinedAt: !1705)
!1790 = !DILocation(line: 354, column: 32, scope: !482, inlinedAt: !1705)
!1791 = !DILocation(line: 354, column: 37, scope: !482, inlinedAt: !1705)
!1792 = !DILocation(line: 354, column: 42, scope: !482, inlinedAt: !1705)
!1793 = !DILocation(line: 354, column: 45, scope: !482, inlinedAt: !1705)
!1794 = !DILocation(line: 354, column: 50, scope: !482, inlinedAt: !1705)
!1795 = !DILocation(line: 354, column: 6, scope: !358, inlinedAt: !1705)
!1796 = !DILocation(line: 355, column: 3, scope: !482, inlinedAt: !1705)
!1797 = !DILocation(line: 356, column: 32, scope: !490, inlinedAt: !1705)
!1798 = !DILocation(line: 356, column: 37, scope: !490, inlinedAt: !1705)
!1799 = !DILocation(line: 356, column: 43, scope: !490, inlinedAt: !1705)
!1800 = !DILocation(line: 356, column: 46, scope: !490, inlinedAt: !1705)
!1801 = !DILocation(line: 356, column: 51, scope: !490, inlinedAt: !1705)
!1802 = !DILocation(line: 356, column: 6, scope: !358, inlinedAt: !1705)
!1803 = !DILocation(line: 357, column: 3, scope: !490, inlinedAt: !1705)
!1804 = !DILocation(line: 358, column: 6, scope: !498, inlinedAt: !1705)
!1805 = !DILocation(line: 358, column: 11, scope: !498, inlinedAt: !1705)
!1806 = !DILocation(line: 358, column: 6, scope: !358, inlinedAt: !1705)
!1807 = !DILocation(line: 358, column: 26, scope: !498, inlinedAt: !1705)
!1808 = !DILocation(line: 359, column: 6, scope: !503, inlinedAt: !1705)
!1809 = !DILocation(line: 359, column: 11, scope: !503, inlinedAt: !1705)
!1810 = !DILocation(line: 359, column: 6, scope: !358, inlinedAt: !1705)
!1811 = !DILocation(line: 359, column: 26, scope: !503, inlinedAt: !1705)
!1812 = !DILocation(line: 360, column: 6, scope: !508, inlinedAt: !1705)
!1813 = !DILocation(line: 360, column: 11, scope: !508, inlinedAt: !1705)
!1814 = !DILocation(line: 360, column: 6, scope: !358, inlinedAt: !1705)
!1815 = !DILocation(line: 360, column: 26, scope: !508, inlinedAt: !1705)
!1816 = !DILocation(line: 361, column: 6, scope: !513, inlinedAt: !1705)
!1817 = !DILocation(line: 361, column: 11, scope: !513, inlinedAt: !1705)
!1818 = !DILocation(line: 361, column: 6, scope: !358, inlinedAt: !1705)
!1819 = !DILocation(line: 361, column: 26, scope: !513, inlinedAt: !1705)
!1820 = !DILocation(line: 362, column: 6, scope: !518, inlinedAt: !1705)
!1821 = !DILocation(line: 362, column: 11, scope: !518, inlinedAt: !1705)
!1822 = !DILocation(line: 362, column: 6, scope: !358, inlinedAt: !1705)
!1823 = !DILocation(line: 362, column: 26, scope: !518, inlinedAt: !1705)
!1824 = !DILocation(line: 363, column: 6, scope: !523, inlinedAt: !1705)
!1825 = !DILocation(line: 363, column: 11, scope: !523, inlinedAt: !1705)
!1826 = !DILocation(line: 363, column: 6, scope: !358, inlinedAt: !1705)
!1827 = !DILocation(line: 363, column: 26, scope: !523, inlinedAt: !1705)
!1828 = !DILocation(line: 364, column: 6, scope: !528, inlinedAt: !1705)
!1829 = !DILocation(line: 364, column: 11, scope: !528, inlinedAt: !1705)
!1830 = !DILocation(line: 364, column: 6, scope: !358, inlinedAt: !1705)
!1831 = !DILocation(line: 364, column: 26, scope: !528, inlinedAt: !1705)
!1832 = !DILocation(line: 365, column: 6, scope: !533, inlinedAt: !1705)
!1833 = !DILocation(line: 365, column: 11, scope: !533, inlinedAt: !1705)
!1834 = !DILocation(line: 365, column: 6, scope: !358, inlinedAt: !1705)
!1835 = !DILocation(line: 365, column: 26, scope: !533, inlinedAt: !1705)
!1836 = !DILocation(line: 366, column: 6, scope: !538, inlinedAt: !1705)
!1837 = !DILocation(line: 366, column: 11, scope: !538, inlinedAt: !1705)
!1838 = !DILocation(line: 366, column: 6, scope: !358, inlinedAt: !1705)
!1839 = !DILocation(line: 366, column: 26, scope: !538, inlinedAt: !1705)
!1840 = !DILocation(line: 367, column: 6, scope: !543, inlinedAt: !1705)
!1841 = !DILocation(line: 367, column: 11, scope: !543, inlinedAt: !1705)
!1842 = !DILocation(line: 367, column: 6, scope: !358, inlinedAt: !1705)
!1843 = !DILocation(line: 367, column: 26, scope: !543, inlinedAt: !1705)
!1844 = !DILocation(line: 368, column: 6, scope: !548, inlinedAt: !1705)
!1845 = !DILocation(line: 368, column: 11, scope: !548, inlinedAt: !1705)
!1846 = !DILocation(line: 368, column: 6, scope: !358, inlinedAt: !1705)
!1847 = !DILocation(line: 368, column: 26, scope: !548, inlinedAt: !1705)
!1848 = !DILocation(line: 369, column: 6, scope: !553, inlinedAt: !1705)
!1849 = !DILocation(line: 369, column: 11, scope: !553, inlinedAt: !1705)
!1850 = !DILocation(line: 369, column: 6, scope: !358, inlinedAt: !1705)
!1851 = !DILocation(line: 369, column: 26, scope: !553, inlinedAt: !1705)
!1852 = !DILocation(line: 370, column: 6, scope: !558, inlinedAt: !1705)
!1853 = !DILocation(line: 370, column: 11, scope: !558, inlinedAt: !1705)
!1854 = !DILocation(line: 370, column: 6, scope: !358, inlinedAt: !1705)
!1855 = !DILocation(line: 370, column: 26, scope: !558, inlinedAt: !1705)
!1856 = !DILocation(line: 371, column: 6, scope: !563, inlinedAt: !1705)
!1857 = !DILocation(line: 371, column: 11, scope: !563, inlinedAt: !1705)
!1858 = !DILocation(line: 371, column: 6, scope: !358, inlinedAt: !1705)
!1859 = !DILocation(line: 371, column: 26, scope: !563, inlinedAt: !1705)
!1860 = !DILocation(line: 372, column: 6, scope: !568, inlinedAt: !1705)
!1861 = !DILocation(line: 372, column: 11, scope: !568, inlinedAt: !1705)
!1862 = !DILocation(line: 372, column: 6, scope: !358, inlinedAt: !1705)
!1863 = !DILocation(line: 372, column: 26, scope: !568, inlinedAt: !1705)
!1864 = !DILocation(line: 373, column: 6, scope: !573, inlinedAt: !1705)
!1865 = !DILocation(line: 373, column: 11, scope: !573, inlinedAt: !1705)
!1866 = !DILocation(line: 373, column: 6, scope: !358, inlinedAt: !1705)
!1867 = !DILocation(line: 373, column: 26, scope: !573, inlinedAt: !1705)
!1868 = !DILocation(line: 374, column: 6, scope: !578, inlinedAt: !1705)
!1869 = !DILocation(line: 374, column: 11, scope: !578, inlinedAt: !1705)
!1870 = !DILocation(line: 374, column: 6, scope: !358, inlinedAt: !1705)
!1871 = !DILocation(line: 374, column: 26, scope: !578, inlinedAt: !1705)
!1872 = !DILocation(line: 375, column: 6, scope: !583, inlinedAt: !1705)
!1873 = !DILocation(line: 375, column: 11, scope: !583, inlinedAt: !1705)
!1874 = !DILocation(line: 375, column: 6, scope: !358, inlinedAt: !1705)
!1875 = !DILocation(line: 375, column: 27, scope: !583, inlinedAt: !1705)
!1876 = !DILocation(line: 376, column: 6, scope: !588, inlinedAt: !1705)
!1877 = !DILocation(line: 376, column: 11, scope: !588, inlinedAt: !1705)
!1878 = !DILocation(line: 376, column: 6, scope: !358, inlinedAt: !1705)
!1879 = !DILocation(line: 376, column: 32, scope: !588, inlinedAt: !1705)
!1880 = !DILocation(line: 377, column: 6, scope: !593, inlinedAt: !1705)
!1881 = !DILocation(line: 377, column: 11, scope: !593, inlinedAt: !1705)
!1882 = !DILocation(line: 377, column: 6, scope: !358, inlinedAt: !1705)
!1883 = !DILocation(line: 377, column: 32, scope: !593, inlinedAt: !1705)
!1884 = !DILocation(line: 378, column: 6, scope: !598, inlinedAt: !1705)
!1885 = !DILocation(line: 378, column: 11, scope: !598, inlinedAt: !1705)
!1886 = !DILocation(line: 378, column: 6, scope: !358, inlinedAt: !1705)
!1887 = !DILocation(line: 378, column: 32, scope: !598, inlinedAt: !1705)
!1888 = !DILocation(line: 379, column: 6, scope: !603, inlinedAt: !1705)
!1889 = !DILocation(line: 379, column: 11, scope: !603, inlinedAt: !1705)
!1890 = !DILocation(line: 379, column: 6, scope: !358, inlinedAt: !1705)
!1891 = !DILocation(line: 379, column: 33, scope: !603, inlinedAt: !1705)
!1892 = !DILocation(line: 380, column: 6, scope: !608, inlinedAt: !1705)
!1893 = !DILocation(line: 380, column: 11, scope: !608, inlinedAt: !1705)
!1894 = !DILocation(line: 380, column: 6, scope: !358, inlinedAt: !1705)
!1895 = !DILocation(line: 380, column: 33, scope: !608, inlinedAt: !1705)
!1896 = !DILocation(line: 381, column: 6, scope: !613, inlinedAt: !1705)
!1897 = !DILocation(line: 381, column: 11, scope: !613, inlinedAt: !1705)
!1898 = !DILocation(line: 381, column: 6, scope: !358, inlinedAt: !1705)
!1899 = !DILocation(line: 381, column: 33, scope: !613, inlinedAt: !1705)
!1900 = !DILocation(line: 382, column: 2, scope: !618, inlinedAt: !1705)
!1901 = !DILocation(line: 382, column: 2, scope: !622, inlinedAt: !1705)
!1902 = !DILocation(line: 382, column: 2, scope: !623, inlinedAt: !1705)
!1903 = !DILocation(line: 386, column: 1, scope: !358, inlinedAt: !1705)
!1904 = !DILocation(line: 547, column: 9, scope: !338, inlinedAt: !1698)
!1905 = !DILocation(line: 549, column: 8, scope: !629, inlinedAt: !1698)
!1906 = !DILocation(line: 549, column: 7, scope: !338, inlinedAt: !1698)
!1907 = !DILocation(line: 550, column: 4, scope: !629, inlinedAt: !1698)
!1908 = !DILocation(line: 553, column: 33, scope: !338, inlinedAt: !1698)
!1909 = !DILocation(line: 325, column: 6, scope: !634, inlinedAt: !1703)
!1910 = !DILocation(line: 325, column: 6, scope: !352, inlinedAt: !1703)
!1911 = !DILocation(line: 326, column: 3, scope: !634, inlinedAt: !1703)
!1912 = !DILocation(line: 332, column: 9, scope: !352, inlinedAt: !1703)
!1913 = !DILocation(line: 332, column: 15, scope: !352, inlinedAt: !1703)
!1914 = !DILocation(line: 332, column: 2, scope: !352, inlinedAt: !1703)
!1915 = !DILocation(line: 336, column: 1, scope: !352, inlinedAt: !1703)
!1916 = !DILocation(line: 553, column: 5, scope: !338, inlinedAt: !1698)
!1917 = !DILocation(line: 553, column: 41, scope: !338, inlinedAt: !1698)
!1918 = !DILocation(line: 554, column: 5, scope: !338, inlinedAt: !1698)
!1919 = !DILocation(line: 554, column: 12, scope: !338, inlinedAt: !1698)
!1920 = !DILocation(line: 448, column: 31, scope: !330, inlinedAt: !1697)
!1921 = !DILocation(line: 448, column: 34, scope: !330, inlinedAt: !1697)
!1922 = !DILocation(line: 448, column: 14, scope: !330, inlinedAt: !1697)
!1923 = !DILocation(line: 450, column: 22, scope: !330, inlinedAt: !1697)
!1924 = !DILocation(line: 450, column: 25, scope: !330, inlinedAt: !1697)
!1925 = !DILocation(line: 450, column: 30, scope: !330, inlinedAt: !1697)
!1926 = !DILocation(line: 450, column: 36, scope: !330, inlinedAt: !1697)
!1927 = !DILocation(line: 450, column: 8, scope: !330, inlinedAt: !1697)
!1928 = !DILocation(line: 450, column: 6, scope: !330, inlinedAt: !1697)
!1929 = !DILocation(line: 451, column: 9, scope: !330, inlinedAt: !1697)
!1930 = !DILocation(line: 552, column: 3, scope: !338, inlinedAt: !1698)
!1931 = !DILocation(line: 557, column: 19, scope: !340, inlinedAt: !1698)
!1932 = !DILocation(line: 557, column: 25, scope: !340, inlinedAt: !1698)
!1933 = !DILocation(line: 557, column: 9, scope: !340, inlinedAt: !1698)
!1934 = !DILocation(line: 557, column: 2, scope: !340, inlinedAt: !1698)
!1935 = !DILocation(line: 558, column: 1, scope: !340, inlinedAt: !1698)
!1936 = !DILocation(line: 322, column: 6, scope: !1693)
!1937 = !DILocation(line: 323, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 323, column: 6)
!1939 = !DILocation(line: 323, column: 6, scope: !1693)
!1940 = !DILocation(line: 324, column: 3, scope: !1938)
!1941 = !DILocation(line: 326, column: 11, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 326, column: 2)
!1943 = !DILocation(line: 326, column: 17, scope: !1942)
!1944 = !DILocation(line: 326, column: 9, scope: !1942)
!1945 = !DILocation(line: 326, column: 7, scope: !1942)
!1946 = !DILocation(line: 326, column: 21, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1942, file: !1, line: 326, column: 2)
!1948 = !DILocation(line: 326, column: 25, scope: !1947)
!1949 = !DILocation(line: 326, column: 31, scope: !1947)
!1950 = !DILocation(line: 326, column: 23, scope: !1947)
!1951 = !DILocation(line: 326, column: 2, scope: !1942)
!1952 = !DILocation(line: 327, column: 9, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1947, file: !1, line: 326, column: 40)
!1954 = !DILocation(line: 327, column: 18, scope: !1953)
!1955 = !DILocation(line: 327, column: 22, scope: !1953)
!1956 = !DILocation(line: 327, column: 26, scope: !1953)
!1957 = !DILocation(line: 327, column: 20, scope: !1953)
!1958 = !DILocation(line: 327, column: 15, scope: !1953)
!1959 = !DILocation(line: 327, column: 7, scope: !1953)
!1960 = !DILocation(line: 328, column: 10, scope: !1953)
!1961 = !DILocation(line: 328, column: 16, scope: !1953)
!1962 = !DILocation(line: 328, column: 7, scope: !1953)
!1963 = !DILocation(line: 329, column: 10, scope: !1953)
!1964 = !DILocation(line: 329, column: 15, scope: !1953)
!1965 = !DILocation(line: 329, column: 3, scope: !1953)
!1966 = !DILocation(line: 329, column: 20, scope: !1953)
!1967 = !DILocation(line: 330, column: 9, scope: !1953)
!1968 = !DILocation(line: 330, column: 7, scope: !1953)
!1969 = !DILocation(line: 331, column: 12, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1953, file: !1, line: 331, column: 3)
!1971 = !DILocation(line: 331, column: 18, scope: !1970)
!1972 = !DILocation(line: 331, column: 10, scope: !1970)
!1973 = !DILocation(line: 331, column: 8, scope: !1970)
!1974 = !DILocation(line: 331, column: 22, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1970, file: !1, line: 331, column: 3)
!1976 = !DILocation(line: 331, column: 26, scope: !1975)
!1977 = !DILocation(line: 331, column: 32, scope: !1975)
!1978 = !DILocation(line: 331, column: 24, scope: !1975)
!1979 = !DILocation(line: 331, column: 3, scope: !1970)
!1980 = !DILocalVariable(name: "r", scope: !1981, file: !1, line: 332, type: !100)
!1981 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 331, column: 41)
!1982 = !DILocation(line: 332, column: 7, scope: !1981)
!1983 = !DILocation(line: 332, column: 13, scope: !1981)
!1984 = !DILocation(line: 332, column: 12, scope: !1981)
!1985 = !DILocation(line: 332, column: 17, scope: !1981)
!1986 = !DILocation(line: 332, column: 31, scope: !1981)
!1987 = !DILocation(line: 332, column: 11, scope: !1981)
!1988 = !DILocalVariable(name: "g", scope: !1981, file: !1, line: 333, type: !100)
!1989 = !DILocation(line: 333, column: 7, scope: !1981)
!1990 = !DILocation(line: 333, column: 13, scope: !1981)
!1991 = !DILocation(line: 333, column: 12, scope: !1981)
!1992 = !DILocation(line: 333, column: 17, scope: !1981)
!1993 = !DILocation(line: 333, column: 31, scope: !1981)
!1994 = !DILocation(line: 333, column: 11, scope: !1981)
!1995 = !DILocalVariable(name: "b", scope: !1981, file: !1, line: 334, type: !100)
!1996 = !DILocation(line: 334, column: 7, scope: !1981)
!1997 = !DILocation(line: 334, column: 13, scope: !1981)
!1998 = !DILocation(line: 334, column: 12, scope: !1981)
!1999 = !DILocation(line: 334, column: 17, scope: !1981)
!2000 = !DILocation(line: 337, column: 18, scope: !1981)
!2001 = !DILocation(line: 337, column: 16, scope: !1981)
!2002 = !DILocation(line: 337, column: 26, scope: !1981)
!2003 = !DILocation(line: 337, column: 24, scope: !1981)
!2004 = !DILocation(line: 337, column: 20, scope: !1981)
!2005 = !DILocation(line: 337, column: 30, scope: !1981)
!2006 = !DILocation(line: 337, column: 28, scope: !1981)
!2007 = !DILocation(line: 337, column: 33, scope: !1981)
!2008 = !DILocation(line: 337, column: 13, scope: !1981)
!2009 = !DILocation(line: 337, column: 8, scope: !1981)
!2010 = !DILocation(line: 337, column: 11, scope: !1981)
!2011 = !DILocation(line: 338, column: 7, scope: !1981)
!2012 = !DILocation(line: 339, column: 3, scope: !1981)
!2013 = !DILocation(line: 331, column: 37, scope: !1975)
!2014 = !DILocation(line: 331, column: 3, scope: !1975)
!2015 = distinct !{!2015, !1979, !2016}
!2016 = !DILocation(line: 339, column: 3, scope: !1970)
!2017 = !DILocation(line: 340, column: 2, scope: !1953)
!2018 = !DILocation(line: 326, column: 36, scope: !1947)
!2019 = !DILocation(line: 326, column: 2, scope: !1947)
!2020 = distinct !{!2020, !1951, !2021}
!2021 = !DILocation(line: 340, column: 2, scope: !1942)
!2022 = !DILocation(line: 342, column: 8, scope: !1693)
!2023 = !DILocation(line: 342, column: 2, scope: !1693)
!2024 = !DILocation(line: 343, column: 1, scope: !1693)
!2025 = distinct !DISubprogram(name: "get_order", scope: !2026, file: !2026, line: 29, type: !2027, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!2026 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!55, !189}
!2029 = !DILocalVariable(name: "x", arg: 1, scope: !2030, file: !2031, line: 366, type: !66)
!2030 = distinct !DISubprogram(name: "fls64", scope: !2031, file: !2031, line: 366, type: !2032, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!2031 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!55, !66}
!2034 = !DILocation(line: 366, column: 40, scope: !2030, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 46, column: 9, scope: !2025)
!2036 = !DILocalVariable(name: "bitpos", scope: !2030, file: !2031, line: 368, type: !55)
!2037 = !DILocation(line: 368, column: 6, scope: !2030, inlinedAt: !2035)
!2038 = !DILocalVariable(name: "size", arg: 1, scope: !2025, file: !2026, line: 29, type: !189)
!2039 = !DILocation(line: 29, column: 63, scope: !2025)
!2040 = !DILocation(line: 31, column: 27, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2025, file: !2026, line: 31, column: 6)
!2042 = !DILocation(line: 31, column: 6, scope: !2041)
!2043 = !DILocation(line: 31, column: 6, scope: !2025)
!2044 = !DILocation(line: 32, column: 8, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !2026, line: 32, column: 7)
!2046 = distinct !DILexicalBlock(scope: !2041, file: !2026, line: 31, column: 34)
!2047 = !DILocation(line: 32, column: 7, scope: !2046)
!2048 = !DILocation(line: 33, column: 4, scope: !2045)
!2049 = !DILocation(line: 35, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !2026, line: 35, column: 7)
!2051 = !DILocation(line: 35, column: 12, scope: !2050)
!2052 = !DILocation(line: 35, column: 7, scope: !2046)
!2053 = !DILocation(line: 36, column: 4, scope: !2050)
!2054 = !DILocation(line: 38, column: 10, scope: !2046)
!2055 = !DILocation(line: 38, column: 28, scope: !2046)
!2056 = !DILocation(line: 38, column: 41, scope: !2046)
!2057 = !DILocation(line: 38, column: 3, scope: !2046)
!2058 = !DILocation(line: 41, column: 6, scope: !2025)
!2059 = !DILocation(line: 42, column: 7, scope: !2025)
!2060 = !DILocation(line: 46, column: 15, scope: !2025)
!2061 = !DILocation(line: 374, column: 2, scope: !2030, inlinedAt: !2035)
!2062 = !DILocation(line: 376, column: 14, scope: !2030, inlinedAt: !2035)
!2063 = !{i32 305950}
!2064 = !DILocation(line: 377, column: 9, scope: !2030, inlinedAt: !2035)
!2065 = !DILocation(line: 377, column: 16, scope: !2030, inlinedAt: !2035)
!2066 = !DILocation(line: 46, column: 2, scope: !2025)
!2067 = !DILocation(line: 48, column: 1, scope: !2025)
!2068 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2069, file: !2069, line: 30, type: !2070, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!2069 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!55, !65}
!2072 = !DILocation(line: 366, column: 40, scope: !2030, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 32, column: 9, scope: !2068)
!2074 = !DILocation(line: 368, column: 6, scope: !2030, inlinedAt: !2073)
!2075 = !DILocalVariable(name: "n", arg: 1, scope: !2068, file: !2069, line: 30, type: !65)
!2076 = !DILocation(line: 30, column: 21, scope: !2068)
!2077 = !DILocation(line: 32, column: 15, scope: !2068)
!2078 = !DILocation(line: 374, column: 2, scope: !2030, inlinedAt: !2073)
!2079 = !DILocation(line: 376, column: 14, scope: !2030, inlinedAt: !2073)
!2080 = !DILocation(line: 377, column: 9, scope: !2030, inlinedAt: !2073)
!2081 = !DILocation(line: 377, column: 16, scope: !2030, inlinedAt: !2073)
!2082 = !DILocation(line: 32, column: 18, scope: !2068)
!2083 = !DILocation(line: 32, column: 2, scope: !2068)
!2084 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2085, file: !2085, line: 137, type: !2086, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!2085 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!12, !333, !2088, !185, !13}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2090 = !DILocalVariable(name: "s", arg: 1, scope: !2084, file: !2085, line: 137, type: !333)
!2091 = !DILocation(line: 137, column: 54, scope: !2084)
!2092 = !DILocalVariable(name: "object", arg: 2, scope: !2084, file: !2085, line: 137, type: !2088)
!2093 = !DILocation(line: 137, column: 69, scope: !2084)
!2094 = !DILocalVariable(name: "size", arg: 3, scope: !2084, file: !2085, line: 138, type: !185)
!2095 = !DILocation(line: 138, column: 12, scope: !2084)
!2096 = !DILocalVariable(name: "flags", arg: 4, scope: !2084, file: !2085, line: 138, type: !13)
!2097 = !DILocation(line: 138, column: 24, scope: !2084)
!2098 = !DILocation(line: 140, column: 17, scope: !2084)
!2099 = !DILocation(line: 140, column: 2, scope: !2084)
!2100 = distinct !DISubprogram(name: "__arch_swab32", scope: !2101, file: !2101, line: 8, type: !753, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !170)
!2101 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!2102 = !DILocalVariable(name: "val", arg: 1, scope: !2100, file: !2101, line: 8, type: !15)
!2103 = !DILocation(line: 8, column: 61, scope: !2100)
!2104 = !DILocation(line: 10, column: 38, scope: !2100)
!2105 = !DILocation(line: 10, column: 2, scope: !2100)
!2106 = !{i32 426174}
!2107 = !DILocation(line: 11, column: 9, scope: !2100)
!2108 = !DILocation(line: 11, column: 2, scope: !2100)
