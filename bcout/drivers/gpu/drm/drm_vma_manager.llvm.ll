; ModuleID = '../bcout/drivers/gpu/drm/drm_vma_manager.llvm.bc'
source_filename = "drivers/gpu/drm/drm_vma_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.drm_vma_offset_manager = type { %struct.rwlock_t, %struct.drm_mm }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.drm_mm = type { void (%struct.drm_mm_node*, i64, i64*, i64*)*, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.drm_mm_node = type { i64, i64, i64, %struct.drm_mm*, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, i8 }
%struct.drm_file = type opaque
%struct.drm_vma_offset_file = type { %struct.rb_node, %struct.drm_file*, i64 }

@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_vma_offset_manager_init(%struct.drm_vma_offset_manager* %mgr, i64 %page_offset, i64 %size) #0 !dbg !120 {
entry:
  %mgr.addr = alloca %struct.drm_vma_offset_manager*, align 8
  %page_offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.rwlock_t, align 1
  store %struct.drm_vma_offset_manager* %mgr, %struct.drm_vma_offset_manager** %mgr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_manager** %mgr.addr, metadata !128, metadata !DIExpression()), !dbg !129
  store i64 %page_offset, i64* %page_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %page_offset.addr, metadata !130, metadata !DIExpression()), !dbg !131
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !132, metadata !DIExpression()), !dbg !133
  br label %do.body, !dbg !134

do.body:                                          ; preds = %entry
  %0 = load %struct.drm_vma_offset_manager*, %struct.drm_vma_offset_manager** %mgr.addr, align 8, !dbg !135
  %vm_lock = getelementptr inbounds %struct.drm_vma_offset_manager, %struct.drm_vma_offset_manager* %0, i32 0, i32 0, !dbg !135
  %1 = bitcast %struct.rwlock_t* %vm_lock to i8*, !dbg !135
  %2 = bitcast %struct.rwlock_t* %.compoundliteral to i8*, !dbg !135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 1 %2, i64 0, i1 false), !dbg !135
  br label %do.end, !dbg !135

do.end:                                           ; preds = %do.body
  %3 = load %struct.drm_vma_offset_manager*, %struct.drm_vma_offset_manager** %mgr.addr, align 8, !dbg !137
  %vm_addr_space_mm = getelementptr inbounds %struct.drm_vma_offset_manager, %struct.drm_vma_offset_manager* %3, i32 0, i32 1, !dbg !138
  %4 = load i64, i64* %page_offset.addr, align 8, !dbg !139
  %5 = load i64, i64* %size.addr, align 8, !dbg !140
  call void @drm_mm_init(%struct.drm_mm* %vm_addr_space_mm, i64 %4, i64 %5) #7, !dbg !141
  ret void, !dbg !142
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local void @drm_mm_init(%struct.drm_mm*, i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_vma_offset_manager_destroy(%struct.drm_vma_offset_manager* %mgr) #0 !dbg !143 {
entry:
  %mgr.addr = alloca %struct.drm_vma_offset_manager*, align 8
  store %struct.drm_vma_offset_manager* %mgr, %struct.drm_vma_offset_manager** %mgr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_manager** %mgr.addr, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load %struct.drm_vma_offset_manager*, %struct.drm_vma_offset_manager** %mgr.addr, align 8, !dbg !148
  %vm_addr_space_mm = getelementptr inbounds %struct.drm_vma_offset_manager, %struct.drm_vma_offset_manager* %0, i32 0, i32 1, !dbg !149
  call void @drm_mm_takedown(%struct.drm_mm* %vm_addr_space_mm) #7, !dbg !150
  ret void, !dbg !151
}

; Function Attrs: noredzone
declare dso_local void @drm_mm_takedown(%struct.drm_mm*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_vma_offset_node* @drm_vma_offset_lookup_locked(%struct.drm_vma_offset_manager* %mgr, i64 %start, i64 %pages) #0 !dbg !152 {
entry:
  %retval = alloca %struct.drm_vma_offset_node*, align 8
  %mgr.addr = alloca %struct.drm_vma_offset_manager*, align 8
  %start.addr = alloca i64, align 8
  %pages.addr = alloca i64, align 8
  %node = alloca %struct.drm_mm_node*, align 8
  %best = alloca %struct.drm_mm_node*, align 8
  %iter = alloca %struct.rb_node*, align 8
  %offset = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %__mptr21 = alloca i8*, align 8
  %tmp24 = alloca %struct.drm_vma_offset_node*, align 8
  store %struct.drm_vma_offset_manager* %mgr, %struct.drm_vma_offset_manager** %mgr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_manager** %mgr.addr, metadata !155, metadata !DIExpression()), !dbg !156
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !157, metadata !DIExpression()), !dbg !158
  store i64 %pages, i64* %pages.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pages.addr, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %best, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata %struct.rb_node** %iter, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !167, metadata !DIExpression()), !dbg !168
  %0 = load %struct.drm_vma_offset_manager*, %struct.drm_vma_offset_manager** %mgr.addr, align 8, !dbg !169
  %vm_addr_space_mm = getelementptr inbounds %struct.drm_vma_offset_manager, %struct.drm_vma_offset_manager* %0, i32 0, i32 1, !dbg !170
  %interval_tree = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %vm_addr_space_mm, i32 0, i32 3, !dbg !171
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %interval_tree, i32 0, i32 0, !dbg !172
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %rb_root, i32 0, i32 0, !dbg !173
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8, !dbg !173
  store %struct.rb_node* %1, %struct.rb_node** %iter, align 8, !dbg !174
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %best, align 8, !dbg !175
  br label %while.cond, !dbg !176

while.cond:                                       ; preds = %if.end8, %entry
  %2 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !177
  %tobool = icmp ne %struct.rb_node* %2, null, !dbg !177
  %lnot = xor i1 %tobool, true, !dbg !177
  %lnot1 = xor i1 %lnot, true, !dbg !177
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !177
  %conv = sext i32 %lnot.ext to i64, !dbg !177
  %tobool2 = icmp ne i64 %conv, 0, !dbg !176
  br i1 %tobool2, label %while.body, label %while.end, !dbg !176

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !178, metadata !DIExpression()), !dbg !181
  %3 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !181
  %4 = bitcast %struct.rb_node* %3 to i8*, !dbg !181
  store i8* %4, i8** %__mptr, align 8, !dbg !181
  br label %do.body, !dbg !181

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !182

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !181
  %add.ptr = getelementptr i8, i8* %5, i64 -64, !dbg !181
  %6 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !181
  store %struct.drm_mm_node* %6, %struct.drm_mm_node** %tmp, align 8, !dbg !182
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !181
  store %struct.drm_mm_node* %7, %struct.drm_mm_node** %node, align 8, !dbg !184
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !185
  %start3 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %8, i32 0, i32 1, !dbg !186
  %9 = load i64, i64* %start3, align 8, !dbg !186
  store i64 %9, i64* %offset, align 8, !dbg !187
  %10 = load i64, i64* %start.addr, align 8, !dbg !188
  %11 = load i64, i64* %offset, align 8, !dbg !190
  %cmp = icmp uge i64 %10, %11, !dbg !191
  br i1 %cmp, label %if.then, label %if.else, !dbg !192

if.then:                                          ; preds = %do.end
  %12 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !193
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %12, i32 0, i32 1, !dbg !195
  %13 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8, !dbg !195
  store %struct.rb_node* %13, %struct.rb_node** %iter, align 8, !dbg !196
  %14 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !197
  store %struct.drm_mm_node* %14, %struct.drm_mm_node** %best, align 8, !dbg !198
  %15 = load i64, i64* %start.addr, align 8, !dbg !199
  %16 = load i64, i64* %offset, align 8, !dbg !201
  %cmp5 = icmp eq i64 %15, %16, !dbg !202
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !203

if.then7:                                         ; preds = %if.then
  br label %while.end, !dbg !204

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !205

if.else:                                          ; preds = %do.end
  %17 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !206
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %17, i32 0, i32 2, !dbg !208
  %18 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8, !dbg !208
  store %struct.rb_node* %18, %struct.rb_node** %iter, align 8, !dbg !209
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  br label %while.cond, !dbg !176, !llvm.loop !210

while.end:                                        ; preds = %if.then7, %while.cond
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %best, align 8, !dbg !212
  %tobool9 = icmp ne %struct.drm_mm_node* %19, null, !dbg !212
  br i1 %tobool9, label %if.then10, label %if.end17, !dbg !214

if.then10:                                        ; preds = %while.end
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %best, align 8, !dbg !215
  %start11 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %20, i32 0, i32 1, !dbg !217
  %21 = load i64, i64* %start11, align 8, !dbg !217
  %22 = load %struct.drm_mm_node*, %struct.drm_mm_node** %best, align 8, !dbg !218
  %size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %22, i32 0, i32 2, !dbg !219
  %23 = load i64, i64* %size, align 8, !dbg !219
  %add = add i64 %21, %23, !dbg !220
  store i64 %add, i64* %offset, align 8, !dbg !221
  %24 = load i64, i64* %offset, align 8, !dbg !222
  %25 = load i64, i64* %start.addr, align 8, !dbg !224
  %26 = load i64, i64* %pages.addr, align 8, !dbg !225
  %add12 = add i64 %25, %26, !dbg !226
  %cmp13 = icmp ult i64 %24, %add12, !dbg !227
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !228

if.then15:                                        ; preds = %if.then10
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %best, align 8, !dbg !229
  br label %if.end16, !dbg !230

if.end16:                                         ; preds = %if.then15, %if.then10
  br label %if.end17, !dbg !231

if.end17:                                         ; preds = %if.end16, %while.end
  %27 = load %struct.drm_mm_node*, %struct.drm_mm_node** %best, align 8, !dbg !232
  %tobool18 = icmp ne %struct.drm_mm_node* %27, null, !dbg !232
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !234

if.then19:                                        ; preds = %if.end17
  store %struct.drm_vma_offset_node* null, %struct.drm_vma_offset_node** %retval, align 8, !dbg !235
  br label %return, !dbg !235

if.end20:                                         ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i8** %__mptr21, metadata !236, metadata !DIExpression()), !dbg !238
  %28 = load %struct.drm_mm_node*, %struct.drm_mm_node** %best, align 8, !dbg !238
  %29 = bitcast %struct.drm_mm_node* %28 to i8*, !dbg !238
  store i8* %29, i8** %__mptr21, align 8, !dbg !238
  br label %do.body22, !dbg !238

do.body22:                                        ; preds = %if.end20
  br label %do.end23, !dbg !239

do.end23:                                         ; preds = %do.body22
  %30 = load i8*, i8** %__mptr21, align 8, !dbg !238
  %add.ptr25 = getelementptr i8, i8* %30, i64 0, !dbg !238
  %31 = bitcast i8* %add.ptr25 to %struct.drm_vma_offset_node*, !dbg !238
  store %struct.drm_vma_offset_node* %31, %struct.drm_vma_offset_node** %tmp24, align 8, !dbg !239
  %32 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %tmp24, align 8, !dbg !238
  store %struct.drm_vma_offset_node* %32, %struct.drm_vma_offset_node** %retval, align 8, !dbg !241
  br label %return, !dbg !241

return:                                           ; preds = %do.end23, %if.then19
  %33 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %retval, align 8, !dbg !242
  ret %struct.drm_vma_offset_node* %33, !dbg !242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_vma_offset_add(%struct.drm_vma_offset_manager* %mgr, %struct.drm_vma_offset_node* %node, i64 %pages) #0 !dbg !243 {
entry:
  %mgr.addr = alloca %struct.drm_vma_offset_manager*, align 8
  %node.addr = alloca %struct.drm_vma_offset_node*, align 8
  %pages.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.drm_vma_offset_manager* %mgr, %struct.drm_vma_offset_manager** %mgr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_manager** %mgr.addr, metadata !247, metadata !DIExpression()), !dbg !248
  store %struct.drm_vma_offset_node* %node, %struct.drm_vma_offset_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_node** %node.addr, metadata !249, metadata !DIExpression()), !dbg !250
  store i64 %pages, i64* %pages.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pages.addr, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !253, metadata !DIExpression()), !dbg !254
  store i32 0, i32* %ret, align 4, !dbg !254
  br label %do.body, !dbg !255

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !256, !srcloc !258
  br label %do.body1, !dbg !256

do.body1:                                         ; preds = %do.body
  %0 = load %struct.drm_vma_offset_manager*, %struct.drm_vma_offset_manager** %mgr.addr, align 8, !dbg !259
  %vm_lock = getelementptr inbounds %struct.drm_vma_offset_manager, %struct.drm_vma_offset_manager* %0, i32 0, i32 0, !dbg !259
  br label %do.end, !dbg !259

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !256

do.end2:                                          ; preds = %do.end
  %1 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !261
  %vm_node = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %1, i32 0, i32 1, !dbg !263
  %call = call zeroext i1 @drm_mm_node_allocated(%struct.drm_mm_node* %vm_node) #7, !dbg !264
  br i1 %call, label %if.end, label %if.then, !dbg !265

if.then:                                          ; preds = %do.end2
  %2 = load %struct.drm_vma_offset_manager*, %struct.drm_vma_offset_manager** %mgr.addr, align 8, !dbg !266
  %vm_addr_space_mm = getelementptr inbounds %struct.drm_vma_offset_manager, %struct.drm_vma_offset_manager* %2, i32 0, i32 1, !dbg !267
  %3 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !268
  %vm_node3 = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %3, i32 0, i32 1, !dbg !269
  %4 = load i64, i64* %pages.addr, align 8, !dbg !270
  %call4 = call i32 @drm_mm_insert_node(%struct.drm_mm* %vm_addr_space_mm, %struct.drm_mm_node* %vm_node3, i64 %4) #7, !dbg !271
  store i32 %call4, i32* %ret, align 4, !dbg !272
  br label %if.end, !dbg !273

if.end:                                           ; preds = %if.then, %do.end2
  br label %do.body5, !dbg !274

do.body5:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !275, !srcloc !277
  br label %do.body6, !dbg !275

do.body6:                                         ; preds = %do.body5
  %5 = load %struct.drm_vma_offset_manager*, %struct.drm_vma_offset_manager** %mgr.addr, align 8, !dbg !278
  %vm_lock7 = getelementptr inbounds %struct.drm_vma_offset_manager, %struct.drm_vma_offset_manager* %5, i32 0, i32 0, !dbg !278
  br label %do.end8, !dbg !278

do.end8:                                          ; preds = %do.body6
  br label %do.end9, !dbg !275

do.end9:                                          ; preds = %do.end8
  %6 = load i32, i32* %ret, align 4, !dbg !280
  ret i32 %6, !dbg !281
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_mm_node_allocated(%struct.drm_mm_node* %node) #0 !dbg !282 {
entry:
  %node.addr = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !287
  %flags = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 12, !dbg !288
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #7, !dbg !289
  ret i1 %call, !dbg !290
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_mm_insert_node(%struct.drm_mm* %mm, %struct.drm_mm_node* %node, i64 %size) #0 !dbg !291 {
entry:
  %mm.addr = alloca %struct.drm_mm*, align 8
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %size.addr = alloca i64, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !294, metadata !DIExpression()), !dbg !295
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !296, metadata !DIExpression()), !dbg !297
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !300
  %1 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !301
  %2 = load i64, i64* %size.addr, align 8, !dbg !302
  %call = call i32 @drm_mm_insert_node_generic(%struct.drm_mm* %0, %struct.drm_mm_node* %1, i64 %2, i64 0, i64 0, i32 0) #7, !dbg !303
  ret i32 %call, !dbg !304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_vma_offset_remove(%struct.drm_vma_offset_manager* %mgr, %struct.drm_vma_offset_node* %node) #0 !dbg !305 {
entry:
  %mgr.addr = alloca %struct.drm_vma_offset_manager*, align 8
  %node.addr = alloca %struct.drm_vma_offset_node*, align 8
  store %struct.drm_vma_offset_manager* %mgr, %struct.drm_vma_offset_manager** %mgr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_manager** %mgr.addr, metadata !308, metadata !DIExpression()), !dbg !309
  store %struct.drm_vma_offset_node* %node, %struct.drm_vma_offset_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_node** %node.addr, metadata !310, metadata !DIExpression()), !dbg !311
  br label %do.body, !dbg !312

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !313, !srcloc !315
  br label %do.body1, !dbg !313

do.body1:                                         ; preds = %do.body
  %0 = load %struct.drm_vma_offset_manager*, %struct.drm_vma_offset_manager** %mgr.addr, align 8, !dbg !316
  %vm_lock = getelementptr inbounds %struct.drm_vma_offset_manager, %struct.drm_vma_offset_manager* %0, i32 0, i32 0, !dbg !316
  br label %do.end, !dbg !316

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !313

do.end2:                                          ; preds = %do.end
  %1 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !318
  %vm_node = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %1, i32 0, i32 1, !dbg !320
  %call = call zeroext i1 @drm_mm_node_allocated(%struct.drm_mm_node* %vm_node) #7, !dbg !321
  br i1 %call, label %if.then, label %if.end, !dbg !322

if.then:                                          ; preds = %do.end2
  %2 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !323
  %vm_node3 = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %2, i32 0, i32 1, !dbg !325
  call void @drm_mm_remove_node(%struct.drm_mm_node* %vm_node3) #7, !dbg !326
  %3 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !327
  %vm_node4 = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %3, i32 0, i32 1, !dbg !328
  %4 = bitcast %struct.drm_mm_node* %vm_node4 to i8*, !dbg !329
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 168, i1 false), !dbg !329
  br label %if.end, !dbg !330

if.end:                                           ; preds = %if.then, %do.end2
  br label %do.body5, !dbg !331

do.body5:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !332, !srcloc !334
  br label %do.body6, !dbg !332

do.body6:                                         ; preds = %do.body5
  %5 = load %struct.drm_vma_offset_manager*, %struct.drm_vma_offset_manager** %mgr.addr, align 8, !dbg !335
  %vm_lock7 = getelementptr inbounds %struct.drm_vma_offset_manager, %struct.drm_vma_offset_manager* %5, i32 0, i32 0, !dbg !335
  br label %do.end8, !dbg !335

do.end8:                                          ; preds = %do.body6
  br label %do.end9, !dbg !332

do.end9:                                          ; preds = %do.end8
  ret void, !dbg !337
}

; Function Attrs: noredzone
declare dso_local void @drm_mm_remove_node(%struct.drm_mm_node*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_vma_node_allow(%struct.drm_vma_offset_node* %node, %struct.drm_file* %tag) #0 !dbg !338 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !341, metadata !DIExpression()), !dbg !352
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !360, metadata !DIExpression()), !dbg !361
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !362, metadata !DIExpression()), !dbg !363
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !364, metadata !DIExpression()), !dbg !365
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !366, metadata !DIExpression()), !dbg !370
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !372, metadata !DIExpression()), !dbg !376
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !378, metadata !DIExpression()), !dbg !382
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !387, metadata !DIExpression()), !dbg !388
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !389, metadata !DIExpression()), !dbg !390
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !391, metadata !DIExpression()), !dbg !392
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !393, metadata !DIExpression()), !dbg !394
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !395, metadata !DIExpression()), !dbg !396
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !397, metadata !DIExpression()), !dbg !398
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !399, metadata !DIExpression()), !dbg !400
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !401, metadata !DIExpression()), !dbg !402
  %node.addr = alloca %struct.drm_vma_offset_node*, align 8
  %tag.addr = alloca %struct.drm_file*, align 8
  %iter = alloca %struct.rb_node**, align 8
  %parent = alloca %struct.rb_node*, align 8
  %new = alloca %struct.drm_vma_offset_file*, align 8
  %entry1 = alloca %struct.drm_vma_offset_file*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_vma_offset_file*, align 8
  store %struct.drm_vma_offset_node* %node, %struct.drm_vma_offset_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_node** %node.addr, metadata !403, metadata !DIExpression()), !dbg !404
  store %struct.drm_file* %tag, %struct.drm_file** %tag.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %tag.addr, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %iter, metadata !407, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.declare(metadata %struct.rb_node** %parent, metadata !410, metadata !DIExpression()), !dbg !411
  store %struct.rb_node* null, %struct.rb_node** %parent, align 8, !dbg !411
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_file** %new, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_file** %entry1, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !416, metadata !DIExpression()), !dbg !417
  store i32 0, i32* %ret, align 4, !dbg !417
  store i64 40, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !418
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #8, !dbg !419
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !420

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !421
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !422
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !423

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !424
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !425
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !426
  %call.i.i = call i32 @get_order(i64 %5) #9, !dbg !427
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !396
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !428
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !429
  %8 = load i32, i32* %order.i.i, align 4, !dbg !430
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !431
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !432
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !433
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #10, !dbg !434
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !434
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !434
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !434
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !434
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !435
  br label %kmalloc.exit, !dbg !435

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !436
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !437
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !437
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !439

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !440
  br label %kmalloc_index.exit.i, !dbg !440

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !441
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !443
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !444

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !445
  br label %kmalloc_index.exit.i, !dbg !445

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !446
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !448
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !449

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !450
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !451
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !452

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !453
  br label %kmalloc_index.exit.i, !dbg !453

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !454
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !456
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !457

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !458
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !459
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !460

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !461
  br label %kmalloc_index.exit.i, !dbg !461

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !462
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !464
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !465

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !466
  br label %kmalloc_index.exit.i, !dbg !466

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !467
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !469
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !470

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !471
  br label %kmalloc_index.exit.i, !dbg !471

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !472
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !474
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !475

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !476
  br label %kmalloc_index.exit.i, !dbg !476

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !477
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !479
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !480

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !481
  br label %kmalloc_index.exit.i, !dbg !481

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !482
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !484
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !485

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !486
  br label %kmalloc_index.exit.i, !dbg !486

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !487
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !489
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !490

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !491
  br label %kmalloc_index.exit.i, !dbg !491

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !492
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !494
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !495

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !496
  br label %kmalloc_index.exit.i, !dbg !496

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !497
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !499
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !500

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !501
  br label %kmalloc_index.exit.i, !dbg !501

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !502
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !504
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !505

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !506
  br label %kmalloc_index.exit.i, !dbg !506

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !507
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !509
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !510

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !511
  br label %kmalloc_index.exit.i, !dbg !511

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !512
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !514
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !515

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !516
  br label %kmalloc_index.exit.i, !dbg !516

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !517
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !519
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !520

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !521
  br label %kmalloc_index.exit.i, !dbg !521

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !522
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !524
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !525

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !526
  br label %kmalloc_index.exit.i, !dbg !526

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !527
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !529
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !530

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !531
  br label %kmalloc_index.exit.i, !dbg !531

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !532
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !534
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !535

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !536
  br label %kmalloc_index.exit.i, !dbg !536

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !537
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !539
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !540

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !541
  br label %kmalloc_index.exit.i, !dbg !541

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !542
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !544
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !545

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !546
  br label %kmalloc_index.exit.i, !dbg !546

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !547
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !549
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !550

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !551
  br label %kmalloc_index.exit.i, !dbg !551

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !552
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !554
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !555

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !556
  br label %kmalloc_index.exit.i, !dbg !556

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !557
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !559
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !560

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !561
  br label %kmalloc_index.exit.i, !dbg !561

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !562
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !564
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !565

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !566
  br label %kmalloc_index.exit.i, !dbg !566

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !567
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !569
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !570

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !571
  br label %kmalloc_index.exit.i, !dbg !571

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !572
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !574
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !575

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !576
  br label %kmalloc_index.exit.i, !dbg !576

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !577
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !579
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !580

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !581
  br label %kmalloc_index.exit.i, !dbg !581

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !582, !srcloc !585
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 225) #8, !dbg !586, !srcloc !589
  unreachable, !dbg !590

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !591
  store i32 %43, i32* %index.i, align 4, !dbg !592
  %44 = load i32, i32* %index.i, align 4, !dbg !593
  %tobool.i = icmp ne i32 %44, 0, !dbg !593
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !595

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !596
  br label %kmalloc.exit, !dbg !596

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !597
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !598
  %and.i.i = and i32 %46, 17, !dbg !598
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !598
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !598
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !598
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !598
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !600

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !601
  br label %kmalloc_type.exit.i, !dbg !601

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !602
  %and2.i.i = and i32 %47, 1, !dbg !603
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !602
  %48 = zext i1 %tobool3.i.i to i64, !dbg !602
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !602
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !604
  br label %kmalloc_type.exit.i, !dbg !604

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !605
  %idxprom.i = zext i32 %49 to i64, !dbg !606
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !606
  %50 = load i32, i32* %index.i, align 4, !dbg !607
  %idxprom6.i = zext i32 %50 to i64, !dbg !606
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !606
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !606
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !608
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !609
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !610
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !611
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #10, !dbg !612
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !612
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !612
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !612
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !612
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !365
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !613
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !614
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !615
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !616
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #10, !dbg !617
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !618
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !619
  store i8* %60, i8** %retval.i, align 8, !dbg !620
  br label %kmalloc.exit, !dbg !620

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !621
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !622
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #10, !dbg !623
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !623
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !623
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !623
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !623
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !624
  br label %kmalloc.exit, !dbg !624

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !625
  %64 = bitcast i8* %63 to %struct.drm_vma_offset_file*, !dbg !626
  store %struct.drm_vma_offset_file* %64, %struct.drm_vma_offset_file** %new, align 8, !dbg !627
  br label %do.body, !dbg !628

do.body:                                          ; preds = %kmalloc.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !629, !srcloc !631
  br label %do.body2, !dbg !629

do.body2:                                         ; preds = %do.body
  %65 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !632
  %vm_lock = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %65, i32 0, i32 0, !dbg !632
  br label %do.end, !dbg !632

do.end:                                           ; preds = %do.body2
  br label %do.end3, !dbg !629

do.end3:                                          ; preds = %do.end
  %66 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !634
  %vm_files = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %66, i32 0, i32 2, !dbg !635
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %vm_files, i32 0, i32 0, !dbg !636
  store %struct.rb_node** %rb_node, %struct.rb_node*** %iter, align 8, !dbg !637
  br label %while.cond, !dbg !638

while.cond:                                       ; preds = %if.end14, %do.end3
  %67 = load %struct.rb_node**, %struct.rb_node*** %iter, align 8, !dbg !639
  %68 = load %struct.rb_node*, %struct.rb_node** %67, align 8, !dbg !639
  %tobool = icmp ne %struct.rb_node* %68, null, !dbg !639
  %lnot = xor i1 %tobool, true, !dbg !639
  %lnot4 = xor i1 %lnot, true, !dbg !639
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !639
  %conv = sext i32 %lnot.ext to i64, !dbg !639
  %tobool5 = icmp ne i64 %conv, 0, !dbg !638
  br i1 %tobool5, label %while.body, label %while.end, !dbg !638

while.body:                                       ; preds = %while.cond
  %69 = load %struct.rb_node**, %struct.rb_node*** %iter, align 8, !dbg !640
  %70 = load %struct.rb_node*, %struct.rb_node** %69, align 8, !dbg !642
  store %struct.rb_node* %70, %struct.rb_node** %parent, align 8, !dbg !643
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !644, metadata !DIExpression()), !dbg !646
  %71 = load %struct.rb_node**, %struct.rb_node*** %iter, align 8, !dbg !646
  %72 = load %struct.rb_node*, %struct.rb_node** %71, align 8, !dbg !646
  %73 = bitcast %struct.rb_node* %72 to i8*, !dbg !646
  store i8* %73, i8** %__mptr, align 8, !dbg !646
  br label %do.body6, !dbg !646

do.body6:                                         ; preds = %while.body
  br label %do.end7, !dbg !647

do.end7:                                          ; preds = %do.body6
  %74 = load i8*, i8** %__mptr, align 8, !dbg !646
  %add.ptr = getelementptr i8, i8* %74, i64 0, !dbg !646
  %75 = bitcast i8* %add.ptr to %struct.drm_vma_offset_file*, !dbg !646
  store %struct.drm_vma_offset_file* %75, %struct.drm_vma_offset_file** %tmp, align 8, !dbg !647
  %76 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %tmp, align 8, !dbg !646
  store %struct.drm_vma_offset_file* %76, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !649
  %77 = load %struct.drm_file*, %struct.drm_file** %tag.addr, align 8, !dbg !650
  %78 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !652
  %vm_tag = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %78, i32 0, i32 1, !dbg !653
  %79 = load %struct.drm_file*, %struct.drm_file** %vm_tag, align 8, !dbg !653
  %cmp = icmp eq %struct.drm_file* %77, %79, !dbg !654
  br i1 %cmp, label %if.then, label %if.else, !dbg !655

if.then:                                          ; preds = %do.end7
  %80 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !656
  %vm_count = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %80, i32 0, i32 2, !dbg !658
  %81 = load i64, i64* %vm_count, align 8, !dbg !659
  %inc = add i64 %81, 1, !dbg !659
  store i64 %inc, i64* %vm_count, align 8, !dbg !659
  br label %unlock, !dbg !660

if.else:                                          ; preds = %do.end7
  %82 = load %struct.drm_file*, %struct.drm_file** %tag.addr, align 8, !dbg !661
  %83 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !663
  %vm_tag9 = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %83, i32 0, i32 1, !dbg !664
  %84 = load %struct.drm_file*, %struct.drm_file** %vm_tag9, align 8, !dbg !664
  %cmp10 = icmp ugt %struct.drm_file* %82, %84, !dbg !665
  br i1 %cmp10, label %if.then12, label %if.else13, !dbg !666

if.then12:                                        ; preds = %if.else
  %85 = load %struct.rb_node**, %struct.rb_node*** %iter, align 8, !dbg !667
  %86 = load %struct.rb_node*, %struct.rb_node** %85, align 8, !dbg !669
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %86, i32 0, i32 1, !dbg !670
  store %struct.rb_node** %rb_right, %struct.rb_node*** %iter, align 8, !dbg !671
  br label %if.end, !dbg !672

if.else13:                                        ; preds = %if.else
  %87 = load %struct.rb_node**, %struct.rb_node*** %iter, align 8, !dbg !673
  %88 = load %struct.rb_node*, %struct.rb_node** %87, align 8, !dbg !675
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %88, i32 0, i32 2, !dbg !676
  store %struct.rb_node** %rb_left, %struct.rb_node*** %iter, align 8, !dbg !677
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  br label %if.end14

if.end14:                                         ; preds = %if.end
  br label %while.cond, !dbg !638, !llvm.loop !678

while.end:                                        ; preds = %while.cond
  %89 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %new, align 8, !dbg !680
  %tobool15 = icmp ne %struct.drm_vma_offset_file* %89, null, !dbg !680
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !682

if.then16:                                        ; preds = %while.end
  store i32 -12, i32* %ret, align 4, !dbg !683
  br label %unlock, !dbg !685

if.end17:                                         ; preds = %while.end
  %90 = load %struct.drm_file*, %struct.drm_file** %tag.addr, align 8, !dbg !686
  %91 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %new, align 8, !dbg !687
  %vm_tag18 = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %91, i32 0, i32 1, !dbg !688
  store %struct.drm_file* %90, %struct.drm_file** %vm_tag18, align 8, !dbg !689
  %92 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %new, align 8, !dbg !690
  %vm_count19 = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %92, i32 0, i32 2, !dbg !691
  store i64 1, i64* %vm_count19, align 8, !dbg !692
  %93 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %new, align 8, !dbg !693
  %vm_rb = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %93, i32 0, i32 0, !dbg !694
  %94 = load %struct.rb_node*, %struct.rb_node** %parent, align 8, !dbg !695
  %95 = load %struct.rb_node**, %struct.rb_node*** %iter, align 8, !dbg !696
  call void @rb_link_node(%struct.rb_node* %vm_rb, %struct.rb_node* %94, %struct.rb_node** %95) #7, !dbg !697
  %96 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %new, align 8, !dbg !698
  %vm_rb20 = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %96, i32 0, i32 0, !dbg !699
  %97 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !700
  %vm_files21 = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %97, i32 0, i32 2, !dbg !701
  call void @rb_insert_color(%struct.rb_node* %vm_rb20, %struct.rb_root* %vm_files21) #7, !dbg !702
  store %struct.drm_vma_offset_file* null, %struct.drm_vma_offset_file** %new, align 8, !dbg !703
  br label %unlock, !dbg !704

unlock:                                           ; preds = %if.end17, %if.then16, %if.then
  call void @llvm.dbg.label(metadata !705), !dbg !706
  br label %do.body22, !dbg !707

do.body22:                                        ; preds = %unlock
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !708, !srcloc !710
  br label %do.body23, !dbg !708

do.body23:                                        ; preds = %do.body22
  %98 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !711
  %vm_lock24 = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %98, i32 0, i32 0, !dbg !711
  br label %do.end25, !dbg !711

do.end25:                                         ; preds = %do.body23
  br label %do.end26, !dbg !708

do.end26:                                         ; preds = %do.end25
  %99 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %new, align 8, !dbg !713
  %100 = bitcast %struct.drm_vma_offset_file* %99 to i8*, !dbg !713
  call void @kfree(i8* %100) #7, !dbg !714
  %101 = load i32, i32* %ret, align 4, !dbg !715
  ret i32 %101, !dbg !716
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rb_link_node(%struct.rb_node* %node, %struct.rb_node* %parent, %struct.rb_node** %rb_link) #0 !dbg !717 {
entry:
  %node.addr = alloca %struct.rb_node*, align 8
  %parent.addr = alloca %struct.rb_node*, align 8
  %rb_link.addr = alloca %struct.rb_node**, align 8
  store %struct.rb_node* %node, %struct.rb_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node.addr, metadata !720, metadata !DIExpression()), !dbg !721
  store %struct.rb_node* %parent, %struct.rb_node** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %parent.addr, metadata !722, metadata !DIExpression()), !dbg !723
  store %struct.rb_node** %rb_link, %struct.rb_node*** %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %rb_link.addr, metadata !724, metadata !DIExpression()), !dbg !725
  %0 = load %struct.rb_node*, %struct.rb_node** %parent.addr, align 8, !dbg !726
  %1 = ptrtoint %struct.rb_node* %0 to i64, !dbg !727
  %2 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !728
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %2, i32 0, i32 0, !dbg !729
  store i64 %1, i64* %__rb_parent_color, align 8, !dbg !730
  %3 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !731
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i32 0, i32 1, !dbg !732
  store %struct.rb_node* null, %struct.rb_node** %rb_right, align 8, !dbg !733
  %4 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !734
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %4, i32 0, i32 2, !dbg !735
  store %struct.rb_node* null, %struct.rb_node** %rb_left, align 8, !dbg !736
  %5 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !737
  %6 = load %struct.rb_node**, %struct.rb_node*** %rb_link.addr, align 8, !dbg !738
  store %struct.rb_node* %5, %struct.rb_node** %6, align 8, !dbg !739
  ret void, !dbg !740
}

; Function Attrs: noredzone
declare dso_local void @rb_insert_color(%struct.rb_node*, %struct.rb_root*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_vma_node_revoke(%struct.drm_vma_offset_node* %node, %struct.drm_file* %tag) #0 !dbg !741 {
entry:
  %node.addr = alloca %struct.drm_vma_offset_node*, align 8
  %tag.addr = alloca %struct.drm_file*, align 8
  %entry1 = alloca %struct.drm_vma_offset_file*, align 8
  %iter = alloca %struct.rb_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_vma_offset_file*, align 8
  store %struct.drm_vma_offset_node* %node, %struct.drm_vma_offset_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_node** %node.addr, metadata !744, metadata !DIExpression()), !dbg !745
  store %struct.drm_file* %tag, %struct.drm_file** %tag.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %tag.addr, metadata !746, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_file** %entry1, metadata !748, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.declare(metadata %struct.rb_node** %iter, metadata !750, metadata !DIExpression()), !dbg !751
  br label %do.body, !dbg !752

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !753, !srcloc !755
  br label %do.body2, !dbg !753

do.body2:                                         ; preds = %do.body
  %0 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !756
  %vm_lock = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %0, i32 0, i32 0, !dbg !756
  br label %do.end, !dbg !756

do.end:                                           ; preds = %do.body2
  br label %do.end3, !dbg !753

do.end3:                                          ; preds = %do.end
  %1 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !758
  %vm_files = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %1, i32 0, i32 2, !dbg !759
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %vm_files, i32 0, i32 0, !dbg !760
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8, !dbg !760
  store %struct.rb_node* %2, %struct.rb_node** %iter, align 8, !dbg !761
  br label %while.cond, !dbg !762

while.cond:                                       ; preds = %if.end18, %do.end3
  %3 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !763
  %tobool = icmp ne %struct.rb_node* %3, null, !dbg !763
  %lnot = xor i1 %tobool, true, !dbg !763
  %lnot4 = xor i1 %lnot, true, !dbg !763
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !763
  %conv = sext i32 %lnot.ext to i64, !dbg !763
  %tobool5 = icmp ne i64 %conv, 0, !dbg !762
  br i1 %tobool5, label %while.body, label %while.end, !dbg !762

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !764, metadata !DIExpression()), !dbg !767
  %4 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !767
  %5 = bitcast %struct.rb_node* %4 to i8*, !dbg !767
  store i8* %5, i8** %__mptr, align 8, !dbg !767
  br label %do.body6, !dbg !767

do.body6:                                         ; preds = %while.body
  br label %do.end7, !dbg !768

do.end7:                                          ; preds = %do.body6
  %6 = load i8*, i8** %__mptr, align 8, !dbg !767
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !767
  %7 = bitcast i8* %add.ptr to %struct.drm_vma_offset_file*, !dbg !767
  store %struct.drm_vma_offset_file* %7, %struct.drm_vma_offset_file** %tmp, align 8, !dbg !768
  %8 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %tmp, align 8, !dbg !767
  store %struct.drm_vma_offset_file* %8, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !770
  %9 = load %struct.drm_file*, %struct.drm_file** %tag.addr, align 8, !dbg !771
  %10 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !773
  %vm_tag = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %10, i32 0, i32 1, !dbg !774
  %11 = load %struct.drm_file*, %struct.drm_file** %vm_tag, align 8, !dbg !774
  %cmp = icmp eq %struct.drm_file* %9, %11, !dbg !775
  br i1 %cmp, label %if.then, label %if.else, !dbg !776

if.then:                                          ; preds = %do.end7
  %12 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !777
  %vm_count = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %12, i32 0, i32 2, !dbg !780
  %13 = load i64, i64* %vm_count, align 8, !dbg !781
  %dec = add i64 %13, -1, !dbg !781
  store i64 %dec, i64* %vm_count, align 8, !dbg !781
  %tobool9 = icmp ne i64 %dec, 0, !dbg !781
  br i1 %tobool9, label %if.end, label %if.then10, !dbg !782

if.then10:                                        ; preds = %if.then
  %14 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !783
  %vm_rb = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %14, i32 0, i32 0, !dbg !785
  %15 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !786
  %vm_files11 = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %15, i32 0, i32 2, !dbg !787
  call void @rb_erase(%struct.rb_node* %vm_rb, %struct.rb_root* %vm_files11) #7, !dbg !788
  %16 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !789
  %17 = bitcast %struct.drm_vma_offset_file* %16 to i8*, !dbg !789
  call void @kfree(i8* %17) #7, !dbg !790
  br label %if.end, !dbg !791

if.end:                                           ; preds = %if.then10, %if.then
  br label %while.end, !dbg !792

if.else:                                          ; preds = %do.end7
  %18 = load %struct.drm_file*, %struct.drm_file** %tag.addr, align 8, !dbg !793
  %19 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !795
  %vm_tag12 = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %19, i32 0, i32 1, !dbg !796
  %20 = load %struct.drm_file*, %struct.drm_file** %vm_tag12, align 8, !dbg !796
  %cmp13 = icmp ugt %struct.drm_file* %18, %20, !dbg !797
  br i1 %cmp13, label %if.then15, label %if.else16, !dbg !798

if.then15:                                        ; preds = %if.else
  %21 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !799
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %21, i32 0, i32 1, !dbg !801
  %22 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8, !dbg !801
  store %struct.rb_node* %22, %struct.rb_node** %iter, align 8, !dbg !802
  br label %if.end17, !dbg !803

if.else16:                                        ; preds = %if.else
  %23 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !804
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %23, i32 0, i32 2, !dbg !806
  %24 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8, !dbg !806
  store %struct.rb_node* %24, %struct.rb_node** %iter, align 8, !dbg !807
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then15
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  br label %while.cond, !dbg !762, !llvm.loop !808

while.end:                                        ; preds = %if.end, %while.cond
  br label %do.body19, !dbg !810

do.body19:                                        ; preds = %while.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !811, !srcloc !813
  br label %do.body20, !dbg !811

do.body20:                                        ; preds = %do.body19
  %25 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !814
  %vm_lock21 = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %25, i32 0, i32 0, !dbg !814
  br label %do.end22, !dbg !814

do.end22:                                         ; preds = %do.body20
  br label %do.end23, !dbg !811

do.end23:                                         ; preds = %do.end22
  ret void, !dbg !816
}

; Function Attrs: noredzone
declare dso_local void @rb_erase(%struct.rb_node*, %struct.rb_root*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @drm_vma_node_is_allowed(%struct.drm_vma_offset_node* %node, %struct.drm_file* %tag) #0 !dbg !817 {
entry:
  %node.addr = alloca %struct.drm_vma_offset_node*, align 8
  %tag.addr = alloca %struct.drm_file*, align 8
  %entry1 = alloca %struct.drm_vma_offset_file*, align 8
  %iter = alloca %struct.rb_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_vma_offset_file*, align 8
  store %struct.drm_vma_offset_node* %node, %struct.drm_vma_offset_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_node** %node.addr, metadata !820, metadata !DIExpression()), !dbg !821
  store %struct.drm_file* %tag, %struct.drm_file** %tag.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_file** %tag.addr, metadata !822, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata %struct.drm_vma_offset_file** %entry1, metadata !824, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.declare(metadata %struct.rb_node** %iter, metadata !826, metadata !DIExpression()), !dbg !827
  br label %do.body, !dbg !828

do.body:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !829, !srcloc !831
  br label %do.body2, !dbg !829

do.body2:                                         ; preds = %do.body
  %0 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !832
  %vm_lock = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %0, i32 0, i32 0, !dbg !832
  br label %do.end, !dbg !832

do.end:                                           ; preds = %do.body2
  br label %do.end3, !dbg !829

do.end3:                                          ; preds = %do.end
  %1 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !834
  %vm_files = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %1, i32 0, i32 2, !dbg !835
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %vm_files, i32 0, i32 0, !dbg !836
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8, !dbg !836
  store %struct.rb_node* %2, %struct.rb_node** %iter, align 8, !dbg !837
  br label %while.cond, !dbg !838

while.cond:                                       ; preds = %if.end14, %do.end3
  %3 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !839
  %tobool = icmp ne %struct.rb_node* %3, null, !dbg !839
  %lnot = xor i1 %tobool, true, !dbg !839
  %lnot4 = xor i1 %lnot, true, !dbg !839
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !839
  %conv = sext i32 %lnot.ext to i64, !dbg !839
  %tobool5 = icmp ne i64 %conv, 0, !dbg !838
  br i1 %tobool5, label %while.body, label %while.end, !dbg !838

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !840, metadata !DIExpression()), !dbg !843
  %4 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !843
  %5 = bitcast %struct.rb_node* %4 to i8*, !dbg !843
  store i8* %5, i8** %__mptr, align 8, !dbg !843
  br label %do.body6, !dbg !843

do.body6:                                         ; preds = %while.body
  br label %do.end7, !dbg !844

do.end7:                                          ; preds = %do.body6
  %6 = load i8*, i8** %__mptr, align 8, !dbg !843
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !843
  %7 = bitcast i8* %add.ptr to %struct.drm_vma_offset_file*, !dbg !843
  store %struct.drm_vma_offset_file* %7, %struct.drm_vma_offset_file** %tmp, align 8, !dbg !844
  %8 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %tmp, align 8, !dbg !843
  store %struct.drm_vma_offset_file* %8, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !846
  %9 = load %struct.drm_file*, %struct.drm_file** %tag.addr, align 8, !dbg !847
  %10 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !849
  %vm_tag = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %10, i32 0, i32 1, !dbg !850
  %11 = load %struct.drm_file*, %struct.drm_file** %vm_tag, align 8, !dbg !850
  %cmp = icmp eq %struct.drm_file* %9, %11, !dbg !851
  br i1 %cmp, label %if.then, label %if.else, !dbg !852

if.then:                                          ; preds = %do.end7
  br label %while.end, !dbg !853

if.else:                                          ; preds = %do.end7
  %12 = load %struct.drm_file*, %struct.drm_file** %tag.addr, align 8, !dbg !854
  %13 = load %struct.drm_vma_offset_file*, %struct.drm_vma_offset_file** %entry1, align 8, !dbg !856
  %vm_tag9 = getelementptr inbounds %struct.drm_vma_offset_file, %struct.drm_vma_offset_file* %13, i32 0, i32 1, !dbg !857
  %14 = load %struct.drm_file*, %struct.drm_file** %vm_tag9, align 8, !dbg !857
  %cmp10 = icmp ugt %struct.drm_file* %12, %14, !dbg !858
  br i1 %cmp10, label %if.then12, label %if.else13, !dbg !859

if.then12:                                        ; preds = %if.else
  %15 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !860
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 1, !dbg !861
  %16 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8, !dbg !861
  store %struct.rb_node* %16, %struct.rb_node** %iter, align 8, !dbg !862
  br label %if.end, !dbg !863

if.else13:                                        ; preds = %if.else
  %17 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !864
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %17, i32 0, i32 2, !dbg !865
  %18 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8, !dbg !865
  store %struct.rb_node* %18, %struct.rb_node** %iter, align 8, !dbg !866
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  br label %if.end14

if.end14:                                         ; preds = %if.end
  br label %while.cond, !dbg !838, !llvm.loop !867

while.end:                                        ; preds = %if.then, %while.cond
  br label %do.body15, !dbg !869

do.body15:                                        ; preds = %while.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !870, !srcloc !872
  br label %do.body16, !dbg !870

do.body16:                                        ; preds = %do.body15
  %19 = load %struct.drm_vma_offset_node*, %struct.drm_vma_offset_node** %node.addr, align 8, !dbg !873
  %vm_lock17 = getelementptr inbounds %struct.drm_vma_offset_node, %struct.drm_vma_offset_node* %19, i32 0, i32 0, !dbg !873
  br label %do.end18, !dbg !873

do.end18:                                         ; preds = %do.body16
  br label %do.end19, !dbg !870

do.end19:                                         ; preds = %do.end18
  %20 = load %struct.rb_node*, %struct.rb_node** %iter, align 8, !dbg !875
  %tobool20 = icmp ne %struct.rb_node* %20, null, !dbg !875
  ret i1 %tobool20, !dbg !876
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !877 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !885, metadata !DIExpression()), !dbg !888
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !890, metadata !DIExpression()), !dbg !891
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !892, metadata !DIExpression()), !dbg !893
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !894, metadata !DIExpression()), !dbg !896
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !898, metadata !DIExpression()), !dbg !899
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !900, metadata !DIExpression()), !dbg !908
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !910, metadata !DIExpression()), !dbg !911
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !912, metadata !DIExpression()), !dbg !913
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !914, metadata !DIExpression()), !dbg !915
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !916
  %1 = load i64, i64* %nr.addr, align 8, !dbg !917
  %div = sdiv i64 %1, 64, !dbg !917
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !918
  %2 = bitcast i64* %add.ptr to i8*, !dbg !916
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !919
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !920
  %conv.i = trunc i64 %4 to i32, !dbg !920
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #10, !dbg !921
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !922
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !922
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #10, !dbg !922
  %7 = load i64, i64* %nr.addr, align 8, !dbg !923
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !923
  br i1 %8, label %cond.true, label %cond.false, !dbg !923

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !923
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !923
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !924
  %and.i = and i64 %11, 63, !dbg !925
  %shl.i = shl i64 1, %and.i, !dbg !926
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !927
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !928
  %shr.i = ashr i64 %13, 6, !dbg !929
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !927
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !927
  %and1.i = and i64 %shl.i, %14, !dbg !930
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !931
  %conv = zext i1 %cmp.i to i32, !dbg !923
  br label %cond.end, !dbg !923

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !923
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !923
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !932
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !933
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #8, !dbg !934, !srcloc !935
  store i8 %19, i8* %oldbit.i, align 1, !dbg !934
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !936
  %tobool.i = trunc i8 %20 to i1, !dbg !936
  %conv2 = zext i1 %tobool.i to i32, !dbg !923
  br label %cond.end, !dbg !923

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !923
  %tobool = icmp ne i32 %cond, 0, !dbg !923
  ret i1 %tobool, !dbg !937
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !938 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !942, metadata !DIExpression()), !dbg !943
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !944, metadata !DIExpression()), !dbg !945
  ret i1 true, !dbg !946
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !947 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !951, metadata !DIExpression()), !dbg !952
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !953, metadata !DIExpression()), !dbg !954
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !955, metadata !DIExpression()), !dbg !956
  ret void, !dbg !957
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_mm_insert_node_generic(%struct.drm_mm* %mm, %struct.drm_mm_node* %node, i64 %size, i64 %alignment, i64 %color, i32 %mode) #0 !dbg !958 {
entry:
  %mm.addr = alloca %struct.drm_mm*, align 8
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %size.addr = alloca i64, align 8
  %alignment.addr = alloca i64, align 8
  %color.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !961, metadata !DIExpression()), !dbg !962
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !963, metadata !DIExpression()), !dbg !964
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !965, metadata !DIExpression()), !dbg !966
  store i64 %alignment, i64* %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %alignment.addr, metadata !967, metadata !DIExpression()), !dbg !968
  store i64 %color, i64* %color.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %color.addr, metadata !969, metadata !DIExpression()), !dbg !970
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !971, metadata !DIExpression()), !dbg !972
  %0 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !973
  %1 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !974
  %2 = load i64, i64* %size.addr, align 8, !dbg !975
  %3 = load i64, i64* %alignment.addr, align 8, !dbg !976
  %4 = load i64, i64* %color.addr, align 8, !dbg !977
  %5 = load i32, i32* %mode.addr, align 4, !dbg !978
  %call = call i32 @drm_mm_insert_node_in_range(%struct.drm_mm* %0, %struct.drm_mm_node* %1, i64 %2, i64 %3, i64 %4, i64 0, i64 -1, i32 %5) #7, !dbg !979
  ret i32 %call, !dbg !980
}

; Function Attrs: noredzone
declare dso_local i32 @drm_mm_insert_node_in_range(%struct.drm_mm*, %struct.drm_mm_node*, i64, i64, i64, i64, i64, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !981 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !985, metadata !DIExpression()), !dbg !989
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !991, metadata !DIExpression()), !dbg !992
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !993, metadata !DIExpression()), !dbg !994
  %0 = load i64, i64* %size.addr, align 8, !dbg !995
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !997
  br i1 %1, label %if.then, label %if.end447, !dbg !998

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !999
  %tobool = icmp ne i64 %2, 0, !dbg !999
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1002

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1003
  br label %return, !dbg !1003

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1004
  %cmp = icmp ult i64 %3, 4096, !dbg !1006
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1007

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1008
  br label %return, !dbg !1008

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub = sub i64 %4, 1, !dbg !1009
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1009
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1009

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub4 = sub i64 %6, 1, !dbg !1009
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1009
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1009

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub6 = sub i64 %8, 1, !dbg !1009
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1009
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1009

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1009

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub9 = sub i64 %9, 1, !dbg !1009
  %and = and i64 %sub9, -9223372036854775808, !dbg !1009
  %tobool10 = icmp ne i64 %and, 0, !dbg !1009
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1009

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1009

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub13 = sub i64 %10, 1, !dbg !1009
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1009
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1009
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1009

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1009

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub18 = sub i64 %11, 1, !dbg !1009
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1009
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1009
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1009

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1009

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub23 = sub i64 %12, 1, !dbg !1009
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1009
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1009
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1009

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1009

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub28 = sub i64 %13, 1, !dbg !1009
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1009
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1009
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1009

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1009

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub33 = sub i64 %14, 1, !dbg !1009
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1009
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1009
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1009

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1009

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub38 = sub i64 %15, 1, !dbg !1009
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1009
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1009
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1009

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1009

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub43 = sub i64 %16, 1, !dbg !1009
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1009
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1009
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1009

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1009

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub48 = sub i64 %17, 1, !dbg !1009
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1009
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1009
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1009

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1009

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub53 = sub i64 %18, 1, !dbg !1009
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1009
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1009
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1009

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1009

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub58 = sub i64 %19, 1, !dbg !1009
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1009
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1009
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1009

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1009

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub63 = sub i64 %20, 1, !dbg !1009
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1009
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1009
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1009

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1009

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub68 = sub i64 %21, 1, !dbg !1009
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1009
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1009
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1009

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1009

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub73 = sub i64 %22, 1, !dbg !1009
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1009
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1009
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1009

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1009

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub78 = sub i64 %23, 1, !dbg !1009
  %and79 = and i64 %sub78, 562949953421312, !dbg !1009
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1009
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1009

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1009

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub83 = sub i64 %24, 1, !dbg !1009
  %and84 = and i64 %sub83, 281474976710656, !dbg !1009
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1009
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1009

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1009

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub88 = sub i64 %25, 1, !dbg !1009
  %and89 = and i64 %sub88, 140737488355328, !dbg !1009
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1009
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1009

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1009

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub93 = sub i64 %26, 1, !dbg !1009
  %and94 = and i64 %sub93, 70368744177664, !dbg !1009
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1009
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1009

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1009

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub98 = sub i64 %27, 1, !dbg !1009
  %and99 = and i64 %sub98, 35184372088832, !dbg !1009
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1009
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1009

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1009

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub103 = sub i64 %28, 1, !dbg !1009
  %and104 = and i64 %sub103, 17592186044416, !dbg !1009
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1009
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1009

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1009

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub108 = sub i64 %29, 1, !dbg !1009
  %and109 = and i64 %sub108, 8796093022208, !dbg !1009
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1009
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1009

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1009

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub113 = sub i64 %30, 1, !dbg !1009
  %and114 = and i64 %sub113, 4398046511104, !dbg !1009
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1009
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1009

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1009

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub118 = sub i64 %31, 1, !dbg !1009
  %and119 = and i64 %sub118, 2199023255552, !dbg !1009
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1009
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1009

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1009

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub123 = sub i64 %32, 1, !dbg !1009
  %and124 = and i64 %sub123, 1099511627776, !dbg !1009
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1009
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1009

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1009

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub128 = sub i64 %33, 1, !dbg !1009
  %and129 = and i64 %sub128, 549755813888, !dbg !1009
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1009
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1009

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1009

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub133 = sub i64 %34, 1, !dbg !1009
  %and134 = and i64 %sub133, 274877906944, !dbg !1009
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1009
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1009

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1009

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub138 = sub i64 %35, 1, !dbg !1009
  %and139 = and i64 %sub138, 137438953472, !dbg !1009
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1009
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1009

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1009

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub143 = sub i64 %36, 1, !dbg !1009
  %and144 = and i64 %sub143, 68719476736, !dbg !1009
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1009
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1009

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1009

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub148 = sub i64 %37, 1, !dbg !1009
  %and149 = and i64 %sub148, 34359738368, !dbg !1009
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1009
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1009

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1009

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub153 = sub i64 %38, 1, !dbg !1009
  %and154 = and i64 %sub153, 17179869184, !dbg !1009
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1009
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1009

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1009

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub158 = sub i64 %39, 1, !dbg !1009
  %and159 = and i64 %sub158, 8589934592, !dbg !1009
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1009
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1009

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1009

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub163 = sub i64 %40, 1, !dbg !1009
  %and164 = and i64 %sub163, 4294967296, !dbg !1009
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1009
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1009

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1009

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub168 = sub i64 %41, 1, !dbg !1009
  %and169 = and i64 %sub168, 2147483648, !dbg !1009
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1009
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1009

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1009

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub173 = sub i64 %42, 1, !dbg !1009
  %and174 = and i64 %sub173, 1073741824, !dbg !1009
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1009
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1009

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1009

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub178 = sub i64 %43, 1, !dbg !1009
  %and179 = and i64 %sub178, 536870912, !dbg !1009
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1009
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1009

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1009

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub183 = sub i64 %44, 1, !dbg !1009
  %and184 = and i64 %sub183, 268435456, !dbg !1009
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1009
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1009

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1009

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub188 = sub i64 %45, 1, !dbg !1009
  %and189 = and i64 %sub188, 134217728, !dbg !1009
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1009
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1009

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1009

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub193 = sub i64 %46, 1, !dbg !1009
  %and194 = and i64 %sub193, 67108864, !dbg !1009
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1009
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1009

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1009

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub198 = sub i64 %47, 1, !dbg !1009
  %and199 = and i64 %sub198, 33554432, !dbg !1009
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1009
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1009

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1009

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub203 = sub i64 %48, 1, !dbg !1009
  %and204 = and i64 %sub203, 16777216, !dbg !1009
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1009
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1009

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1009

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub208 = sub i64 %49, 1, !dbg !1009
  %and209 = and i64 %sub208, 8388608, !dbg !1009
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1009
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1009

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1009

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub213 = sub i64 %50, 1, !dbg !1009
  %and214 = and i64 %sub213, 4194304, !dbg !1009
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1009
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1009

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1009

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub218 = sub i64 %51, 1, !dbg !1009
  %and219 = and i64 %sub218, 2097152, !dbg !1009
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1009
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1009

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1009

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub223 = sub i64 %52, 1, !dbg !1009
  %and224 = and i64 %sub223, 1048576, !dbg !1009
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1009
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1009

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1009

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub228 = sub i64 %53, 1, !dbg !1009
  %and229 = and i64 %sub228, 524288, !dbg !1009
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1009
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1009

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1009

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub233 = sub i64 %54, 1, !dbg !1009
  %and234 = and i64 %sub233, 262144, !dbg !1009
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1009
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1009

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1009

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub238 = sub i64 %55, 1, !dbg !1009
  %and239 = and i64 %sub238, 131072, !dbg !1009
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1009
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1009

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1009

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub243 = sub i64 %56, 1, !dbg !1009
  %and244 = and i64 %sub243, 65536, !dbg !1009
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1009
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1009

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1009

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub248 = sub i64 %57, 1, !dbg !1009
  %and249 = and i64 %sub248, 32768, !dbg !1009
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1009
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1009

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1009

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub253 = sub i64 %58, 1, !dbg !1009
  %and254 = and i64 %sub253, 16384, !dbg !1009
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1009
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1009

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1009

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub258 = sub i64 %59, 1, !dbg !1009
  %and259 = and i64 %sub258, 8192, !dbg !1009
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1009
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1009

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1009

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub263 = sub i64 %60, 1, !dbg !1009
  %and264 = and i64 %sub263, 4096, !dbg !1009
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1009
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1009

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1009

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub268 = sub i64 %61, 1, !dbg !1009
  %and269 = and i64 %sub268, 2048, !dbg !1009
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1009
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1009

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1009

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub273 = sub i64 %62, 1, !dbg !1009
  %and274 = and i64 %sub273, 1024, !dbg !1009
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1009
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1009

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1009

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub278 = sub i64 %63, 1, !dbg !1009
  %and279 = and i64 %sub278, 512, !dbg !1009
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1009
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1009

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1009

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub283 = sub i64 %64, 1, !dbg !1009
  %and284 = and i64 %sub283, 256, !dbg !1009
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1009
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1009

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1009

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub288 = sub i64 %65, 1, !dbg !1009
  %and289 = and i64 %sub288, 128, !dbg !1009
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1009
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1009

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1009

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub293 = sub i64 %66, 1, !dbg !1009
  %and294 = and i64 %sub293, 64, !dbg !1009
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1009
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1009

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1009

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub298 = sub i64 %67, 1, !dbg !1009
  %and299 = and i64 %sub298, 32, !dbg !1009
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1009
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1009

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1009

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub303 = sub i64 %68, 1, !dbg !1009
  %and304 = and i64 %sub303, 16, !dbg !1009
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1009
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1009

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1009

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub308 = sub i64 %69, 1, !dbg !1009
  %and309 = and i64 %sub308, 8, !dbg !1009
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1009
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1009

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1009

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub313 = sub i64 %70, 1, !dbg !1009
  %and314 = and i64 %sub313, 4, !dbg !1009
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1009
  %71 = zext i1 %tobool315 to i64, !dbg !1009
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1009
  br label %cond.end, !dbg !1009

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1009
  br label %cond.end317, !dbg !1009

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1009
  br label %cond.end319, !dbg !1009

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1009
  br label %cond.end321, !dbg !1009

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1009
  br label %cond.end323, !dbg !1009

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1009
  br label %cond.end325, !dbg !1009

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1009
  br label %cond.end327, !dbg !1009

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1009
  br label %cond.end329, !dbg !1009

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1009
  br label %cond.end331, !dbg !1009

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1009
  br label %cond.end333, !dbg !1009

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1009
  br label %cond.end335, !dbg !1009

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1009
  br label %cond.end337, !dbg !1009

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1009
  br label %cond.end339, !dbg !1009

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1009
  br label %cond.end341, !dbg !1009

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1009
  br label %cond.end343, !dbg !1009

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1009
  br label %cond.end345, !dbg !1009

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1009
  br label %cond.end347, !dbg !1009

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1009
  br label %cond.end349, !dbg !1009

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1009
  br label %cond.end351, !dbg !1009

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1009
  br label %cond.end353, !dbg !1009

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1009
  br label %cond.end355, !dbg !1009

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1009
  br label %cond.end357, !dbg !1009

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1009
  br label %cond.end359, !dbg !1009

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1009
  br label %cond.end361, !dbg !1009

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1009
  br label %cond.end363, !dbg !1009

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1009
  br label %cond.end365, !dbg !1009

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1009
  br label %cond.end367, !dbg !1009

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1009
  br label %cond.end369, !dbg !1009

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1009
  br label %cond.end371, !dbg !1009

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1009
  br label %cond.end373, !dbg !1009

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1009
  br label %cond.end375, !dbg !1009

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1009
  br label %cond.end377, !dbg !1009

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1009
  br label %cond.end379, !dbg !1009

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1009
  br label %cond.end381, !dbg !1009

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1009
  br label %cond.end383, !dbg !1009

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1009
  br label %cond.end385, !dbg !1009

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1009
  br label %cond.end387, !dbg !1009

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1009
  br label %cond.end389, !dbg !1009

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1009
  br label %cond.end391, !dbg !1009

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1009
  br label %cond.end393, !dbg !1009

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1009
  br label %cond.end395, !dbg !1009

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1009
  br label %cond.end397, !dbg !1009

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1009
  br label %cond.end399, !dbg !1009

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1009
  br label %cond.end401, !dbg !1009

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1009
  br label %cond.end403, !dbg !1009

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1009
  br label %cond.end405, !dbg !1009

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1009
  br label %cond.end407, !dbg !1009

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1009
  br label %cond.end409, !dbg !1009

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1009
  br label %cond.end411, !dbg !1009

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1009
  br label %cond.end413, !dbg !1009

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1009
  br label %cond.end415, !dbg !1009

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1009
  br label %cond.end417, !dbg !1009

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1009
  br label %cond.end419, !dbg !1009

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1009
  br label %cond.end421, !dbg !1009

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1009
  br label %cond.end423, !dbg !1009

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1009
  br label %cond.end425, !dbg !1009

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1009
  br label %cond.end427, !dbg !1009

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1009
  br label %cond.end429, !dbg !1009

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1009
  br label %cond.end431, !dbg !1009

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1009
  br label %cond.end433, !dbg !1009

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1009
  br label %cond.end435, !dbg !1009

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1009
  br label %cond.end437, !dbg !1009

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1009
  br label %cond.end440, !dbg !1009

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1009

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1009
  br label %cond.end444, !dbg !1009

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1009
  %sub443 = sub i64 %72, 1, !dbg !1009
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1009
  br label %cond.end444, !dbg !1009

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1009
  %sub446 = sub i32 %cond445, 12, !dbg !1010
  %add = add i32 %sub446, 1, !dbg !1011
  store i32 %add, i32* %retval, align 4, !dbg !1012
  br label %return, !dbg !1012

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1013
  %dec = add i64 %73, -1, !dbg !1013
  store i64 %dec, i64* %size.addr, align 8, !dbg !1013
  %74 = load i64, i64* %size.addr, align 8, !dbg !1014
  %shr = lshr i64 %74, 12, !dbg !1014
  store i64 %shr, i64* %size.addr, align 8, !dbg !1014
  %75 = load i64, i64* %size.addr, align 8, !dbg !1015
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !992
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1016
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1017
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !1016, !srcloc !1018
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1016
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1019
  %add.i = add i32 %79, 1, !dbg !1020
  store i32 %add.i, i32* %retval, align 4, !dbg !1021
  br label %return, !dbg !1021

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1022
  ret i32 %80, !dbg !1022
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1023 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !985, metadata !DIExpression()), !dbg !1027
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !991, metadata !DIExpression()), !dbg !1029
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1030, metadata !DIExpression()), !dbg !1031
  %0 = load i64, i64* %n.addr, align 8, !dbg !1032
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1029
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1033
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1034
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !1033, !srcloc !1018
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1033
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1035
  %add.i = add i32 %4, 1, !dbg !1036
  %sub = sub i32 %add.i, 1, !dbg !1037
  ret i32 %sub, !dbg !1038
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1039 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1045, metadata !DIExpression()), !dbg !1046
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1047, metadata !DIExpression()), !dbg !1048
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1049, metadata !DIExpression()), !dbg !1050
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1051, metadata !DIExpression()), !dbg !1052
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1053
  ret i8* %0, !dbg !1054
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !26, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/drm_vma_manager.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !19}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mm_insert_mode", file: !10, line: 68, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !13, !14, !15, !16, !17, !18}
!12 = !DIEnumerator(name: "DRM_MM_INSERT_BEST", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "DRM_MM_INSERT_LOW", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "DRM_MM_INSERT_HIGH", value: 2, isUnsigned: true)
!15 = !DIEnumerator(name: "DRM_MM_INSERT_EVICT", value: 3, isUnsigned: true)
!16 = !DIEnumerator(name: "DRM_MM_INSERT_ONCE", value: 2147483648, isUnsigned: true)
!17 = !DIEnumerator(name: "DRM_MM_INSERT_HIGHEST", value: 2147483650, isUnsigned: true)
!18 = !DIEnumerator(name: "DRM_MM_INSERT_LOWEST", value: 2147483649, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !20, line: 305, baseType: !5, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!26 = !{!27, !28, !86, !105, !106, !114, !34, !32}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !10, line: 155, size: 1344, elements: !30)
!30 = !{!31, !33, !39, !40, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !29, file: !10, line: 157, baseType: !32, size: 64)
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !29, file: !10, line: 159, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !35, line: 23, baseType: !36)
!35 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !37, line: 31, baseType: !38)
!37 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!38 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !29, file: !10, line: 161, baseType: !34, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !29, file: !10, line: 163, baseType: !41, size: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !10, line: 188, size: 1920, elements: !43)
!43 = !{!44, !51, !58, !59, !74, !75, !76}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !42, file: !10, line: 198, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !32, !50, !50}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !42, file: !10, line: 204, baseType: !52, size: 128, offset: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !53, line: 178, size: 128, elements: !54)
!53 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !53, line: 179, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !52, file: !53, line: 179, baseType: !56, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !42, file: !10, line: 207, baseType: !29, size: 1344, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !42, file: !10, line: 209, baseType: !60, size: 128, offset: 1536)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !61, line: 125, size: 128, elements: !62)
!61 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !73}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !60, file: !61, line: 126, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !61, line: 31, size: 64, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !64, file: !61, line: 32, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !61, line: 24, size: 192, align: 64, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !68, file: !61, line: 25, baseType: !32, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !68, file: !61, line: 26, baseType: !67, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !68, file: !61, line: 27, baseType: !67, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !60, file: !61, line: 127, baseType: !67, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !42, file: !10, line: 210, baseType: !60, size: 128, offset: 1664)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !42, file: !10, line: 211, baseType: !64, size: 64, offset: 1792)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !42, file: !10, line: 213, baseType: !32, size: 64, offset: 1856)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !29, file: !10, line: 164, baseType: !52, size: 128, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !29, file: !10, line: 165, baseType: !52, size: 128, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !29, file: !10, line: 166, baseType: !68, size: 192, align: 64, offset: 512)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !29, file: !10, line: 167, baseType: !68, size: 192, align: 64, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !29, file: !10, line: 168, baseType: !68, size: 192, align: 64, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !29, file: !10, line: 169, baseType: !34, size: 64, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !29, file: !10, line: 170, baseType: !34, size: 64, offset: 1152)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !29, file: !10, line: 171, baseType: !34, size: 64, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !29, file: !10, line: 172, baseType: !32, size: 64, offset: 1280)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !88, line: 52, size: 1472, elements: !89)
!88 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !100, !101, !102}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !87, file: !88, line: 53, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !92, line: 20, baseType: !93)
!92 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 11, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !93, file: !92, line: 12, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !97, line: 33, baseType: !98)
!97 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 31, elements: !99)
!99 = !{}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !87, file: !88, line: 54, baseType: !29, size: 1344)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !87, file: !88, line: 55, baseType: !64, size: 64, offset: 1344)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !87, file: !88, line: 56, baseType: !103, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !53, line: 30, baseType: !104)
!104 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !53, line: 148, baseType: !5)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_file", file: !88, line: 46, size: 320, elements: !108)
!108 = !{!109, !110, !113}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !107, file: !88, line: 47, baseType: !68, size: 192, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "vm_tag", scope: !107, file: !88, line: 48, baseType: !111, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !88, line: 44, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_count", scope: !107, file: !88, line: 49, baseType: !32, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!115 = !{i32 7, !"Dwarf Version", i32 4}
!116 = !{i32 2, !"Debug Info Version", i32 3}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"Code Model", i32 2}
!119 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!120 = distinct !DISubprogram(name: "drm_vma_offset_manager_init", scope: !1, file: !1, line: 85, type: !121, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !99)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123, !32, !32}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !88, line: 59, size: 1920, elements: !125)
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !124, file: !88, line: 60, baseType: !91)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !124, file: !88, line: 61, baseType: !42, size: 1920)
!128 = !DILocalVariable(name: "mgr", arg: 1, scope: !120, file: !1, line: 85, type: !123)
!129 = !DILocation(line: 85, column: 65, scope: !120)
!130 = !DILocalVariable(name: "page_offset", arg: 2, scope: !120, file: !1, line: 86, type: !32)
!131 = !DILocation(line: 86, column: 20, scope: !120)
!132 = !DILocalVariable(name: "size", arg: 3, scope: !120, file: !1, line: 86, type: !32)
!133 = !DILocation(line: 86, column: 47, scope: !120)
!134 = !DILocation(line: 88, column: 2, scope: !120)
!135 = !DILocation(line: 88, column: 2, scope: !136)
!136 = distinct !DILexicalBlock(scope: !120, file: !1, line: 88, column: 2)
!137 = !DILocation(line: 89, column: 15, scope: !120)
!138 = !DILocation(line: 89, column: 20, scope: !120)
!139 = !DILocation(line: 89, column: 38, scope: !120)
!140 = !DILocation(line: 89, column: 51, scope: !120)
!141 = !DILocation(line: 89, column: 2, scope: !120)
!142 = !DILocation(line: 90, column: 1, scope: !120)
!143 = distinct !DISubprogram(name: "drm_vma_offset_manager_destroy", scope: !1, file: !1, line: 104, type: !144, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !99)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !123}
!146 = !DILocalVariable(name: "mgr", arg: 1, scope: !143, file: !1, line: 104, type: !123)
!147 = !DILocation(line: 104, column: 68, scope: !143)
!148 = !DILocation(line: 106, column: 19, scope: !143)
!149 = !DILocation(line: 106, column: 24, scope: !143)
!150 = !DILocation(line: 106, column: 2, scope: !143)
!151 = !DILocation(line: 107, column: 1, scope: !143)
!152 = distinct !DISubprogram(name: "drm_vma_offset_lookup_locked", scope: !1, file: !1, line: 140, type: !153, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !99)
!153 = !DISubroutineType(types: !154)
!154 = !{!86, !123, !32, !32}
!155 = !DILocalVariable(name: "mgr", arg: 1, scope: !152, file: !1, line: 140, type: !123)
!156 = !DILocation(line: 140, column: 89, scope: !152)
!157 = !DILocalVariable(name: "start", arg: 2, scope: !152, file: !1, line: 141, type: !32)
!158 = !DILocation(line: 141, column: 23, scope: !152)
!159 = !DILocalVariable(name: "pages", arg: 3, scope: !152, file: !1, line: 142, type: !32)
!160 = !DILocation(line: 142, column: 23, scope: !152)
!161 = !DILocalVariable(name: "node", scope: !152, file: !1, line: 144, type: !28)
!162 = !DILocation(line: 144, column: 22, scope: !152)
!163 = !DILocalVariable(name: "best", scope: !152, file: !1, line: 144, type: !28)
!164 = !DILocation(line: 144, column: 29, scope: !152)
!165 = !DILocalVariable(name: "iter", scope: !152, file: !1, line: 145, type: !67)
!166 = !DILocation(line: 145, column: 18, scope: !152)
!167 = !DILocalVariable(name: "offset", scope: !152, file: !1, line: 146, type: !32)
!168 = !DILocation(line: 146, column: 16, scope: !152)
!169 = !DILocation(line: 148, column: 9, scope: !152)
!170 = !DILocation(line: 148, column: 14, scope: !152)
!171 = !DILocation(line: 148, column: 31, scope: !152)
!172 = !DILocation(line: 148, column: 45, scope: !152)
!173 = !DILocation(line: 148, column: 53, scope: !152)
!174 = !DILocation(line: 148, column: 7, scope: !152)
!175 = !DILocation(line: 149, column: 7, scope: !152)
!176 = !DILocation(line: 151, column: 2, scope: !152)
!177 = !DILocation(line: 151, column: 9, scope: !152)
!178 = !DILocalVariable(name: "__mptr", scope: !179, file: !1, line: 152, type: !27)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 152, column: 10)
!180 = distinct !DILexicalBlock(scope: !152, file: !1, line: 151, column: 23)
!181 = !DILocation(line: 152, column: 10, scope: !179)
!182 = !DILocation(line: 152, column: 10, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !1, line: 152, column: 10)
!184 = !DILocation(line: 152, column: 8, scope: !180)
!185 = !DILocation(line: 153, column: 12, scope: !180)
!186 = !DILocation(line: 153, column: 18, scope: !180)
!187 = !DILocation(line: 153, column: 10, scope: !180)
!188 = !DILocation(line: 154, column: 7, scope: !189)
!189 = distinct !DILexicalBlock(scope: !180, file: !1, line: 154, column: 7)
!190 = !DILocation(line: 154, column: 16, scope: !189)
!191 = !DILocation(line: 154, column: 13, scope: !189)
!192 = !DILocation(line: 154, column: 7, scope: !180)
!193 = !DILocation(line: 155, column: 11, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !1, line: 154, column: 24)
!195 = !DILocation(line: 155, column: 17, scope: !194)
!196 = !DILocation(line: 155, column: 9, scope: !194)
!197 = !DILocation(line: 156, column: 11, scope: !194)
!198 = !DILocation(line: 156, column: 9, scope: !194)
!199 = !DILocation(line: 157, column: 8, scope: !200)
!200 = distinct !DILexicalBlock(scope: !194, file: !1, line: 157, column: 8)
!201 = !DILocation(line: 157, column: 17, scope: !200)
!202 = !DILocation(line: 157, column: 14, scope: !200)
!203 = !DILocation(line: 157, column: 8, scope: !194)
!204 = !DILocation(line: 158, column: 5, scope: !200)
!205 = !DILocation(line: 159, column: 3, scope: !194)
!206 = !DILocation(line: 160, column: 11, scope: !207)
!207 = distinct !DILexicalBlock(scope: !189, file: !1, line: 159, column: 10)
!208 = !DILocation(line: 160, column: 17, scope: !207)
!209 = !DILocation(line: 160, column: 9, scope: !207)
!210 = distinct !{!210, !176, !211}
!211 = !DILocation(line: 162, column: 2, scope: !152)
!212 = !DILocation(line: 165, column: 6, scope: !213)
!213 = distinct !DILexicalBlock(scope: !152, file: !1, line: 165, column: 6)
!214 = !DILocation(line: 165, column: 6, scope: !152)
!215 = !DILocation(line: 166, column: 12, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !1, line: 165, column: 12)
!217 = !DILocation(line: 166, column: 18, scope: !216)
!218 = !DILocation(line: 166, column: 26, scope: !216)
!219 = !DILocation(line: 166, column: 32, scope: !216)
!220 = !DILocation(line: 166, column: 24, scope: !216)
!221 = !DILocation(line: 166, column: 10, scope: !216)
!222 = !DILocation(line: 167, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !216, file: !1, line: 167, column: 7)
!224 = !DILocation(line: 167, column: 16, scope: !223)
!225 = !DILocation(line: 167, column: 24, scope: !223)
!226 = !DILocation(line: 167, column: 22, scope: !223)
!227 = !DILocation(line: 167, column: 14, scope: !223)
!228 = !DILocation(line: 167, column: 7, scope: !216)
!229 = !DILocation(line: 168, column: 9, scope: !223)
!230 = !DILocation(line: 168, column: 4, scope: !223)
!231 = !DILocation(line: 169, column: 2, scope: !216)
!232 = !DILocation(line: 171, column: 7, scope: !233)
!233 = distinct !DILexicalBlock(scope: !152, file: !1, line: 171, column: 6)
!234 = !DILocation(line: 171, column: 6, scope: !152)
!235 = !DILocation(line: 172, column: 3, scope: !233)
!236 = !DILocalVariable(name: "__mptr", scope: !237, file: !1, line: 174, type: !27)
!237 = distinct !DILexicalBlock(scope: !152, file: !1, line: 174, column: 9)
!238 = !DILocation(line: 174, column: 9, scope: !237)
!239 = !DILocation(line: 174, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !1, line: 174, column: 9)
!241 = !DILocation(line: 174, column: 2, scope: !152)
!242 = !DILocation(line: 175, column: 1, scope: !152)
!243 = distinct !DISubprogram(name: "drm_vma_offset_add", scope: !1, file: !1, line: 201, type: !244, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !99)
!244 = !DISubroutineType(types: !245)
!245 = !{!246, !123, !86, !32}
!246 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!247 = !DILocalVariable(name: "mgr", arg: 1, scope: !243, file: !1, line: 201, type: !123)
!248 = !DILocation(line: 201, column: 55, scope: !243)
!249 = !DILocalVariable(name: "node", arg: 2, scope: !243, file: !1, line: 202, type: !86)
!250 = !DILocation(line: 202, column: 38, scope: !243)
!251 = !DILocalVariable(name: "pages", arg: 3, scope: !243, file: !1, line: 202, type: !32)
!252 = !DILocation(line: 202, column: 58, scope: !243)
!253 = !DILocalVariable(name: "ret", scope: !243, file: !1, line: 204, type: !246)
!254 = !DILocation(line: 204, column: 6, scope: !243)
!255 = !DILocation(line: 206, column: 2, scope: !243)
!256 = !DILocation(line: 206, column: 2, scope: !257)
!257 = distinct !DILexicalBlock(scope: !243, file: !1, line: 206, column: 2)
!258 = !{i32 -2142098806}
!259 = !DILocation(line: 206, column: 2, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !1, line: 206, column: 2)
!261 = !DILocation(line: 208, column: 30, scope: !262)
!262 = distinct !DILexicalBlock(scope: !243, file: !1, line: 208, column: 6)
!263 = !DILocation(line: 208, column: 36, scope: !262)
!264 = !DILocation(line: 208, column: 7, scope: !262)
!265 = !DILocation(line: 208, column: 6, scope: !243)
!266 = !DILocation(line: 209, column: 29, scope: !262)
!267 = !DILocation(line: 209, column: 34, scope: !262)
!268 = !DILocation(line: 210, column: 8, scope: !262)
!269 = !DILocation(line: 210, column: 14, scope: !262)
!270 = !DILocation(line: 210, column: 23, scope: !262)
!271 = !DILocation(line: 209, column: 9, scope: !262)
!272 = !DILocation(line: 209, column: 7, scope: !262)
!273 = !DILocation(line: 209, column: 3, scope: !262)
!274 = !DILocation(line: 212, column: 2, scope: !243)
!275 = !DILocation(line: 212, column: 2, scope: !276)
!276 = distinct !DILexicalBlock(scope: !243, file: !1, line: 212, column: 2)
!277 = !{i32 -2142098541}
!278 = !DILocation(line: 212, column: 2, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !1, line: 212, column: 2)
!280 = !DILocation(line: 214, column: 9, scope: !243)
!281 = !DILocation(line: 214, column: 2, scope: !243)
!282 = distinct !DISubprogram(name: "drm_mm_node_allocated", scope: !10, file: !10, line: 256, type: !283, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!283 = !DISubroutineType(types: !284)
!284 = !{!103, !48}
!285 = !DILocalVariable(name: "node", arg: 1, scope: !282, file: !10, line: 256, type: !48)
!286 = !DILocation(line: 256, column: 68, scope: !282)
!287 = !DILocation(line: 258, column: 46, scope: !282)
!288 = !DILocation(line: 258, column: 52, scope: !282)
!289 = !DILocation(line: 258, column: 9, scope: !282)
!290 = !DILocation(line: 258, column: 2, scope: !282)
!291 = distinct !DISubprogram(name: "drm_mm_insert_node", scope: !10, file: !10, line: 456, type: !292, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!292 = !DISubroutineType(types: !293)
!293 = !{!246, !41, !28, !34}
!294 = !DILocalVariable(name: "mm", arg: 1, scope: !291, file: !10, line: 456, type: !41)
!295 = !DILocation(line: 456, column: 53, scope: !291)
!296 = !DILocalVariable(name: "node", arg: 2, scope: !291, file: !10, line: 457, type: !28)
!297 = !DILocation(line: 457, column: 30, scope: !291)
!298 = !DILocalVariable(name: "size", arg: 3, scope: !291, file: !10, line: 458, type: !34)
!299 = !DILocation(line: 458, column: 14, scope: !291)
!300 = !DILocation(line: 460, column: 36, scope: !291)
!301 = !DILocation(line: 460, column: 40, scope: !291)
!302 = !DILocation(line: 460, column: 46, scope: !291)
!303 = !DILocation(line: 460, column: 9, scope: !291)
!304 = !DILocation(line: 460, column: 2, scope: !291)
!305 = distinct !DISubprogram(name: "drm_vma_offset_remove", scope: !1, file: !1, line: 229, type: !306, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !99)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !123, !86}
!308 = !DILocalVariable(name: "mgr", arg: 1, scope: !305, file: !1, line: 229, type: !123)
!309 = !DILocation(line: 229, column: 59, scope: !305)
!310 = !DILocalVariable(name: "node", arg: 2, scope: !305, file: !1, line: 230, type: !86)
!311 = !DILocation(line: 230, column: 35, scope: !305)
!312 = !DILocation(line: 232, column: 2, scope: !305)
!313 = !DILocation(line: 232, column: 2, scope: !314)
!314 = distinct !DILexicalBlock(scope: !305, file: !1, line: 232, column: 2)
!315 = !{i32 -2142098186}
!316 = !DILocation(line: 232, column: 2, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !1, line: 232, column: 2)
!318 = !DILocation(line: 234, column: 29, scope: !319)
!319 = distinct !DILexicalBlock(scope: !305, file: !1, line: 234, column: 6)
!320 = !DILocation(line: 234, column: 35, scope: !319)
!321 = !DILocation(line: 234, column: 6, scope: !319)
!322 = !DILocation(line: 234, column: 6, scope: !305)
!323 = !DILocation(line: 235, column: 23, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !1, line: 234, column: 45)
!325 = !DILocation(line: 235, column: 29, scope: !324)
!326 = !DILocation(line: 235, column: 3, scope: !324)
!327 = !DILocation(line: 236, column: 11, scope: !324)
!328 = !DILocation(line: 236, column: 17, scope: !324)
!329 = !DILocation(line: 236, column: 3, scope: !324)
!330 = !DILocation(line: 237, column: 2, scope: !324)
!331 = !DILocation(line: 239, column: 2, scope: !305)
!332 = !DILocation(line: 239, column: 2, scope: !333)
!333 = distinct !DILexicalBlock(scope: !305, file: !1, line: 239, column: 2)
!334 = !{i32 -2142097921}
!335 = !DILocation(line: 239, column: 2, scope: !336)
!336 = distinct !DILexicalBlock(scope: !333, file: !1, line: 239, column: 2)
!337 = !DILocation(line: 240, column: 1, scope: !305)
!338 = distinct !DISubprogram(name: "drm_vma_node_allow", scope: !1, file: !1, line: 263, type: !339, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !99)
!339 = !DISubroutineType(types: !340)
!340 = !{!246, !86, !111}
!341 = !DILocalVariable(name: "s", arg: 1, scope: !342, file: !20, line: 445, type: !345)
!342 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !20, file: !20, line: 445, type: !343, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!343 = !DISubroutineType(types: !344)
!344 = !{!27, !345, !105, !348}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !347, line: 117, flags: DIFlagFwdDecl)
!347 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 55, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !350, line: 72, baseType: !351)
!350 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !350, line: 16, baseType: !32)
!352 = !DILocation(line: 445, column: 72, scope: !342, inlinedAt: !353)
!353 = distinct !DILocation(line: 552, column: 10, scope: !354, inlinedAt: !359)
!354 = distinct !DILexicalBlock(scope: !355, file: !20, line: 540, column: 34)
!355 = distinct !DILexicalBlock(scope: !356, file: !20, line: 540, column: 6)
!356 = distinct !DISubprogram(name: "kmalloc", scope: !20, file: !20, line: 538, type: !357, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!357 = !DISubroutineType(types: !358)
!358 = !{!27, !348, !105}
!359 = distinct !DILocation(line: 274, column: 8, scope: !338)
!360 = !DILocalVariable(name: "flags", arg: 2, scope: !342, file: !20, line: 446, type: !105)
!361 = !DILocation(line: 446, column: 9, scope: !342, inlinedAt: !353)
!362 = !DILocalVariable(name: "size", arg: 3, scope: !342, file: !20, line: 446, type: !348)
!363 = !DILocation(line: 446, column: 23, scope: !342, inlinedAt: !353)
!364 = !DILocalVariable(name: "ret", scope: !342, file: !20, line: 448, type: !27)
!365 = !DILocation(line: 448, column: 8, scope: !342, inlinedAt: !353)
!366 = !DILocalVariable(name: "flags", arg: 1, scope: !367, file: !20, line: 318, type: !105)
!367 = distinct !DISubprogram(name: "kmalloc_type", scope: !20, file: !20, line: 318, type: !368, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!368 = !DISubroutineType(types: !369)
!369 = !{!19, !105}
!370 = !DILocation(line: 318, column: 67, scope: !367, inlinedAt: !371)
!371 = distinct !DILocation(line: 553, column: 20, scope: !354, inlinedAt: !359)
!372 = !DILocalVariable(name: "size", arg: 1, scope: !373, file: !20, line: 346, type: !348)
!373 = distinct !DISubprogram(name: "kmalloc_index", scope: !20, file: !20, line: 346, type: !374, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!374 = !DISubroutineType(types: !375)
!375 = !{!5, !348}
!376 = !DILocation(line: 346, column: 58, scope: !373, inlinedAt: !377)
!377 = distinct !DILocation(line: 547, column: 11, scope: !354, inlinedAt: !359)
!378 = !DILocalVariable(name: "size", arg: 1, scope: !379, file: !20, line: 472, type: !348)
!379 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !20, file: !20, line: 472, type: !380, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!380 = !DISubroutineType(types: !381)
!381 = !{!27, !348, !105, !5}
!382 = !DILocation(line: 472, column: 28, scope: !379, inlinedAt: !383)
!383 = distinct !DILocation(line: 481, column: 9, scope: !384, inlinedAt: !385)
!384 = distinct !DISubprogram(name: "kmalloc_large", scope: !20, file: !20, line: 478, type: !357, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!385 = distinct !DILocation(line: 545, column: 11, scope: !386, inlinedAt: !359)
!386 = distinct !DILexicalBlock(scope: !354, file: !20, line: 544, column: 7)
!387 = !DILocalVariable(name: "flags", arg: 2, scope: !379, file: !20, line: 472, type: !105)
!388 = !DILocation(line: 472, column: 40, scope: !379, inlinedAt: !383)
!389 = !DILocalVariable(name: "order", arg: 3, scope: !379, file: !20, line: 472, type: !5)
!390 = !DILocation(line: 472, column: 60, scope: !379, inlinedAt: !383)
!391 = !DILocalVariable(name: "size", arg: 1, scope: !384, file: !20, line: 478, type: !348)
!392 = !DILocation(line: 478, column: 51, scope: !384, inlinedAt: !385)
!393 = !DILocalVariable(name: "flags", arg: 2, scope: !384, file: !20, line: 478, type: !105)
!394 = !DILocation(line: 478, column: 63, scope: !384, inlinedAt: !385)
!395 = !DILocalVariable(name: "order", scope: !384, file: !20, line: 480, type: !5)
!396 = !DILocation(line: 480, column: 15, scope: !384, inlinedAt: !385)
!397 = !DILocalVariable(name: "size", arg: 1, scope: !356, file: !20, line: 538, type: !348)
!398 = !DILocation(line: 538, column: 45, scope: !356, inlinedAt: !359)
!399 = !DILocalVariable(name: "flags", arg: 2, scope: !356, file: !20, line: 538, type: !105)
!400 = !DILocation(line: 538, column: 57, scope: !356, inlinedAt: !359)
!401 = !DILocalVariable(name: "index", scope: !354, file: !20, line: 542, type: !5)
!402 = !DILocation(line: 542, column: 16, scope: !354, inlinedAt: !359)
!403 = !DILocalVariable(name: "node", arg: 1, scope: !338, file: !1, line: 263, type: !86)
!404 = !DILocation(line: 263, column: 52, scope: !338)
!405 = !DILocalVariable(name: "tag", arg: 2, scope: !338, file: !1, line: 263, type: !111)
!406 = !DILocation(line: 263, column: 75, scope: !338)
!407 = !DILocalVariable(name: "iter", scope: !338, file: !1, line: 265, type: !408)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!409 = !DILocation(line: 265, column: 19, scope: !338)
!410 = !DILocalVariable(name: "parent", scope: !338, file: !1, line: 266, type: !67)
!411 = !DILocation(line: 266, column: 18, scope: !338)
!412 = !DILocalVariable(name: "new", scope: !338, file: !1, line: 267, type: !106)
!413 = !DILocation(line: 267, column: 30, scope: !338)
!414 = !DILocalVariable(name: "entry", scope: !338, file: !1, line: 267, type: !106)
!415 = !DILocation(line: 267, column: 36, scope: !338)
!416 = !DILocalVariable(name: "ret", scope: !338, file: !1, line: 268, type: !246)
!417 = !DILocation(line: 268, column: 6, scope: !338)
!418 = !DILocation(line: 540, column: 27, scope: !355, inlinedAt: !359)
!419 = !DILocation(line: 540, column: 6, scope: !355, inlinedAt: !359)
!420 = !DILocation(line: 540, column: 6, scope: !356, inlinedAt: !359)
!421 = !DILocation(line: 544, column: 7, scope: !386, inlinedAt: !359)
!422 = !DILocation(line: 544, column: 12, scope: !386, inlinedAt: !359)
!423 = !DILocation(line: 544, column: 7, scope: !354, inlinedAt: !359)
!424 = !DILocation(line: 545, column: 25, scope: !386, inlinedAt: !359)
!425 = !DILocation(line: 545, column: 31, scope: !386, inlinedAt: !359)
!426 = !DILocation(line: 480, column: 33, scope: !384, inlinedAt: !385)
!427 = !DILocation(line: 480, column: 23, scope: !384, inlinedAt: !385)
!428 = !DILocation(line: 481, column: 29, scope: !384, inlinedAt: !385)
!429 = !DILocation(line: 481, column: 35, scope: !384, inlinedAt: !385)
!430 = !DILocation(line: 481, column: 42, scope: !384, inlinedAt: !385)
!431 = !DILocation(line: 474, column: 23, scope: !379, inlinedAt: !383)
!432 = !DILocation(line: 474, column: 29, scope: !379, inlinedAt: !383)
!433 = !DILocation(line: 474, column: 36, scope: !379, inlinedAt: !383)
!434 = !DILocation(line: 474, column: 9, scope: !379, inlinedAt: !383)
!435 = !DILocation(line: 545, column: 4, scope: !386, inlinedAt: !359)
!436 = !DILocation(line: 547, column: 25, scope: !354, inlinedAt: !359)
!437 = !DILocation(line: 348, column: 7, scope: !438, inlinedAt: !377)
!438 = distinct !DILexicalBlock(scope: !373, file: !20, line: 348, column: 6)
!439 = !DILocation(line: 348, column: 6, scope: !373, inlinedAt: !377)
!440 = !DILocation(line: 349, column: 3, scope: !438, inlinedAt: !377)
!441 = !DILocation(line: 351, column: 6, scope: !442, inlinedAt: !377)
!442 = distinct !DILexicalBlock(scope: !373, file: !20, line: 351, column: 6)
!443 = !DILocation(line: 351, column: 11, scope: !442, inlinedAt: !377)
!444 = !DILocation(line: 351, column: 6, scope: !373, inlinedAt: !377)
!445 = !DILocation(line: 352, column: 3, scope: !442, inlinedAt: !377)
!446 = !DILocation(line: 354, column: 32, scope: !447, inlinedAt: !377)
!447 = distinct !DILexicalBlock(scope: !373, file: !20, line: 354, column: 6)
!448 = !DILocation(line: 354, column: 37, scope: !447, inlinedAt: !377)
!449 = !DILocation(line: 354, column: 42, scope: !447, inlinedAt: !377)
!450 = !DILocation(line: 354, column: 45, scope: !447, inlinedAt: !377)
!451 = !DILocation(line: 354, column: 50, scope: !447, inlinedAt: !377)
!452 = !DILocation(line: 354, column: 6, scope: !373, inlinedAt: !377)
!453 = !DILocation(line: 355, column: 3, scope: !447, inlinedAt: !377)
!454 = !DILocation(line: 356, column: 32, scope: !455, inlinedAt: !377)
!455 = distinct !DILexicalBlock(scope: !373, file: !20, line: 356, column: 6)
!456 = !DILocation(line: 356, column: 37, scope: !455, inlinedAt: !377)
!457 = !DILocation(line: 356, column: 43, scope: !455, inlinedAt: !377)
!458 = !DILocation(line: 356, column: 46, scope: !455, inlinedAt: !377)
!459 = !DILocation(line: 356, column: 51, scope: !455, inlinedAt: !377)
!460 = !DILocation(line: 356, column: 6, scope: !373, inlinedAt: !377)
!461 = !DILocation(line: 357, column: 3, scope: !455, inlinedAt: !377)
!462 = !DILocation(line: 358, column: 6, scope: !463, inlinedAt: !377)
!463 = distinct !DILexicalBlock(scope: !373, file: !20, line: 358, column: 6)
!464 = !DILocation(line: 358, column: 11, scope: !463, inlinedAt: !377)
!465 = !DILocation(line: 358, column: 6, scope: !373, inlinedAt: !377)
!466 = !DILocation(line: 358, column: 26, scope: !463, inlinedAt: !377)
!467 = !DILocation(line: 359, column: 6, scope: !468, inlinedAt: !377)
!468 = distinct !DILexicalBlock(scope: !373, file: !20, line: 359, column: 6)
!469 = !DILocation(line: 359, column: 11, scope: !468, inlinedAt: !377)
!470 = !DILocation(line: 359, column: 6, scope: !373, inlinedAt: !377)
!471 = !DILocation(line: 359, column: 26, scope: !468, inlinedAt: !377)
!472 = !DILocation(line: 360, column: 6, scope: !473, inlinedAt: !377)
!473 = distinct !DILexicalBlock(scope: !373, file: !20, line: 360, column: 6)
!474 = !DILocation(line: 360, column: 11, scope: !473, inlinedAt: !377)
!475 = !DILocation(line: 360, column: 6, scope: !373, inlinedAt: !377)
!476 = !DILocation(line: 360, column: 26, scope: !473, inlinedAt: !377)
!477 = !DILocation(line: 361, column: 6, scope: !478, inlinedAt: !377)
!478 = distinct !DILexicalBlock(scope: !373, file: !20, line: 361, column: 6)
!479 = !DILocation(line: 361, column: 11, scope: !478, inlinedAt: !377)
!480 = !DILocation(line: 361, column: 6, scope: !373, inlinedAt: !377)
!481 = !DILocation(line: 361, column: 26, scope: !478, inlinedAt: !377)
!482 = !DILocation(line: 362, column: 6, scope: !483, inlinedAt: !377)
!483 = distinct !DILexicalBlock(scope: !373, file: !20, line: 362, column: 6)
!484 = !DILocation(line: 362, column: 11, scope: !483, inlinedAt: !377)
!485 = !DILocation(line: 362, column: 6, scope: !373, inlinedAt: !377)
!486 = !DILocation(line: 362, column: 26, scope: !483, inlinedAt: !377)
!487 = !DILocation(line: 363, column: 6, scope: !488, inlinedAt: !377)
!488 = distinct !DILexicalBlock(scope: !373, file: !20, line: 363, column: 6)
!489 = !DILocation(line: 363, column: 11, scope: !488, inlinedAt: !377)
!490 = !DILocation(line: 363, column: 6, scope: !373, inlinedAt: !377)
!491 = !DILocation(line: 363, column: 26, scope: !488, inlinedAt: !377)
!492 = !DILocation(line: 364, column: 6, scope: !493, inlinedAt: !377)
!493 = distinct !DILexicalBlock(scope: !373, file: !20, line: 364, column: 6)
!494 = !DILocation(line: 364, column: 11, scope: !493, inlinedAt: !377)
!495 = !DILocation(line: 364, column: 6, scope: !373, inlinedAt: !377)
!496 = !DILocation(line: 364, column: 26, scope: !493, inlinedAt: !377)
!497 = !DILocation(line: 365, column: 6, scope: !498, inlinedAt: !377)
!498 = distinct !DILexicalBlock(scope: !373, file: !20, line: 365, column: 6)
!499 = !DILocation(line: 365, column: 11, scope: !498, inlinedAt: !377)
!500 = !DILocation(line: 365, column: 6, scope: !373, inlinedAt: !377)
!501 = !DILocation(line: 365, column: 26, scope: !498, inlinedAt: !377)
!502 = !DILocation(line: 366, column: 6, scope: !503, inlinedAt: !377)
!503 = distinct !DILexicalBlock(scope: !373, file: !20, line: 366, column: 6)
!504 = !DILocation(line: 366, column: 11, scope: !503, inlinedAt: !377)
!505 = !DILocation(line: 366, column: 6, scope: !373, inlinedAt: !377)
!506 = !DILocation(line: 366, column: 26, scope: !503, inlinedAt: !377)
!507 = !DILocation(line: 367, column: 6, scope: !508, inlinedAt: !377)
!508 = distinct !DILexicalBlock(scope: !373, file: !20, line: 367, column: 6)
!509 = !DILocation(line: 367, column: 11, scope: !508, inlinedAt: !377)
!510 = !DILocation(line: 367, column: 6, scope: !373, inlinedAt: !377)
!511 = !DILocation(line: 367, column: 26, scope: !508, inlinedAt: !377)
!512 = !DILocation(line: 368, column: 6, scope: !513, inlinedAt: !377)
!513 = distinct !DILexicalBlock(scope: !373, file: !20, line: 368, column: 6)
!514 = !DILocation(line: 368, column: 11, scope: !513, inlinedAt: !377)
!515 = !DILocation(line: 368, column: 6, scope: !373, inlinedAt: !377)
!516 = !DILocation(line: 368, column: 26, scope: !513, inlinedAt: !377)
!517 = !DILocation(line: 369, column: 6, scope: !518, inlinedAt: !377)
!518 = distinct !DILexicalBlock(scope: !373, file: !20, line: 369, column: 6)
!519 = !DILocation(line: 369, column: 11, scope: !518, inlinedAt: !377)
!520 = !DILocation(line: 369, column: 6, scope: !373, inlinedAt: !377)
!521 = !DILocation(line: 369, column: 26, scope: !518, inlinedAt: !377)
!522 = !DILocation(line: 370, column: 6, scope: !523, inlinedAt: !377)
!523 = distinct !DILexicalBlock(scope: !373, file: !20, line: 370, column: 6)
!524 = !DILocation(line: 370, column: 11, scope: !523, inlinedAt: !377)
!525 = !DILocation(line: 370, column: 6, scope: !373, inlinedAt: !377)
!526 = !DILocation(line: 370, column: 26, scope: !523, inlinedAt: !377)
!527 = !DILocation(line: 371, column: 6, scope: !528, inlinedAt: !377)
!528 = distinct !DILexicalBlock(scope: !373, file: !20, line: 371, column: 6)
!529 = !DILocation(line: 371, column: 11, scope: !528, inlinedAt: !377)
!530 = !DILocation(line: 371, column: 6, scope: !373, inlinedAt: !377)
!531 = !DILocation(line: 371, column: 26, scope: !528, inlinedAt: !377)
!532 = !DILocation(line: 372, column: 6, scope: !533, inlinedAt: !377)
!533 = distinct !DILexicalBlock(scope: !373, file: !20, line: 372, column: 6)
!534 = !DILocation(line: 372, column: 11, scope: !533, inlinedAt: !377)
!535 = !DILocation(line: 372, column: 6, scope: !373, inlinedAt: !377)
!536 = !DILocation(line: 372, column: 26, scope: !533, inlinedAt: !377)
!537 = !DILocation(line: 373, column: 6, scope: !538, inlinedAt: !377)
!538 = distinct !DILexicalBlock(scope: !373, file: !20, line: 373, column: 6)
!539 = !DILocation(line: 373, column: 11, scope: !538, inlinedAt: !377)
!540 = !DILocation(line: 373, column: 6, scope: !373, inlinedAt: !377)
!541 = !DILocation(line: 373, column: 26, scope: !538, inlinedAt: !377)
!542 = !DILocation(line: 374, column: 6, scope: !543, inlinedAt: !377)
!543 = distinct !DILexicalBlock(scope: !373, file: !20, line: 374, column: 6)
!544 = !DILocation(line: 374, column: 11, scope: !543, inlinedAt: !377)
!545 = !DILocation(line: 374, column: 6, scope: !373, inlinedAt: !377)
!546 = !DILocation(line: 374, column: 26, scope: !543, inlinedAt: !377)
!547 = !DILocation(line: 375, column: 6, scope: !548, inlinedAt: !377)
!548 = distinct !DILexicalBlock(scope: !373, file: !20, line: 375, column: 6)
!549 = !DILocation(line: 375, column: 11, scope: !548, inlinedAt: !377)
!550 = !DILocation(line: 375, column: 6, scope: !373, inlinedAt: !377)
!551 = !DILocation(line: 375, column: 27, scope: !548, inlinedAt: !377)
!552 = !DILocation(line: 376, column: 6, scope: !553, inlinedAt: !377)
!553 = distinct !DILexicalBlock(scope: !373, file: !20, line: 376, column: 6)
!554 = !DILocation(line: 376, column: 11, scope: !553, inlinedAt: !377)
!555 = !DILocation(line: 376, column: 6, scope: !373, inlinedAt: !377)
!556 = !DILocation(line: 376, column: 32, scope: !553, inlinedAt: !377)
!557 = !DILocation(line: 377, column: 6, scope: !558, inlinedAt: !377)
!558 = distinct !DILexicalBlock(scope: !373, file: !20, line: 377, column: 6)
!559 = !DILocation(line: 377, column: 11, scope: !558, inlinedAt: !377)
!560 = !DILocation(line: 377, column: 6, scope: !373, inlinedAt: !377)
!561 = !DILocation(line: 377, column: 32, scope: !558, inlinedAt: !377)
!562 = !DILocation(line: 378, column: 6, scope: !563, inlinedAt: !377)
!563 = distinct !DILexicalBlock(scope: !373, file: !20, line: 378, column: 6)
!564 = !DILocation(line: 378, column: 11, scope: !563, inlinedAt: !377)
!565 = !DILocation(line: 378, column: 6, scope: !373, inlinedAt: !377)
!566 = !DILocation(line: 378, column: 32, scope: !563, inlinedAt: !377)
!567 = !DILocation(line: 379, column: 6, scope: !568, inlinedAt: !377)
!568 = distinct !DILexicalBlock(scope: !373, file: !20, line: 379, column: 6)
!569 = !DILocation(line: 379, column: 11, scope: !568, inlinedAt: !377)
!570 = !DILocation(line: 379, column: 6, scope: !373, inlinedAt: !377)
!571 = !DILocation(line: 379, column: 33, scope: !568, inlinedAt: !377)
!572 = !DILocation(line: 380, column: 6, scope: !573, inlinedAt: !377)
!573 = distinct !DILexicalBlock(scope: !373, file: !20, line: 380, column: 6)
!574 = !DILocation(line: 380, column: 11, scope: !573, inlinedAt: !377)
!575 = !DILocation(line: 380, column: 6, scope: !373, inlinedAt: !377)
!576 = !DILocation(line: 380, column: 33, scope: !573, inlinedAt: !377)
!577 = !DILocation(line: 381, column: 6, scope: !578, inlinedAt: !377)
!578 = distinct !DILexicalBlock(scope: !373, file: !20, line: 381, column: 6)
!579 = !DILocation(line: 381, column: 11, scope: !578, inlinedAt: !377)
!580 = !DILocation(line: 381, column: 6, scope: !373, inlinedAt: !377)
!581 = !DILocation(line: 381, column: 33, scope: !578, inlinedAt: !377)
!582 = !DILocation(line: 382, column: 2, scope: !583, inlinedAt: !377)
!583 = distinct !DILexicalBlock(scope: !584, file: !20, line: 382, column: 2)
!584 = distinct !DILexicalBlock(scope: !373, file: !20, line: 382, column: 2)
!585 = !{i32 -2142463516, i32 -2142463487, i32 -2142463441, i32 -2142463383, i32 -2142463329, i32 -2142463275, i32 -2142463220, i32 -2142463189}
!586 = !DILocation(line: 382, column: 2, scope: !587, inlinedAt: !377)
!587 = distinct !DILexicalBlock(scope: !588, file: !20, line: 382, column: 2)
!588 = distinct !DILexicalBlock(scope: !584, file: !20, line: 382, column: 2)
!589 = !{i32 -2142462746, i32 -2142462739, i32 -2142462685, i32 -2142462654, i32 -2142462624}
!590 = !DILocation(line: 382, column: 2, scope: !588, inlinedAt: !377)
!591 = !DILocation(line: 386, column: 1, scope: !373, inlinedAt: !377)
!592 = !DILocation(line: 547, column: 9, scope: !354, inlinedAt: !359)
!593 = !DILocation(line: 549, column: 8, scope: !594, inlinedAt: !359)
!594 = distinct !DILexicalBlock(scope: !354, file: !20, line: 549, column: 7)
!595 = !DILocation(line: 549, column: 7, scope: !354, inlinedAt: !359)
!596 = !DILocation(line: 550, column: 4, scope: !594, inlinedAt: !359)
!597 = !DILocation(line: 553, column: 33, scope: !354, inlinedAt: !359)
!598 = !DILocation(line: 325, column: 6, scope: !599, inlinedAt: !371)
!599 = distinct !DILexicalBlock(scope: !367, file: !20, line: 325, column: 6)
!600 = !DILocation(line: 325, column: 6, scope: !367, inlinedAt: !371)
!601 = !DILocation(line: 326, column: 3, scope: !599, inlinedAt: !371)
!602 = !DILocation(line: 332, column: 9, scope: !367, inlinedAt: !371)
!603 = !DILocation(line: 332, column: 15, scope: !367, inlinedAt: !371)
!604 = !DILocation(line: 332, column: 2, scope: !367, inlinedAt: !371)
!605 = !DILocation(line: 336, column: 1, scope: !367, inlinedAt: !371)
!606 = !DILocation(line: 553, column: 5, scope: !354, inlinedAt: !359)
!607 = !DILocation(line: 553, column: 41, scope: !354, inlinedAt: !359)
!608 = !DILocation(line: 554, column: 5, scope: !354, inlinedAt: !359)
!609 = !DILocation(line: 554, column: 12, scope: !354, inlinedAt: !359)
!610 = !DILocation(line: 448, column: 31, scope: !342, inlinedAt: !353)
!611 = !DILocation(line: 448, column: 34, scope: !342, inlinedAt: !353)
!612 = !DILocation(line: 448, column: 14, scope: !342, inlinedAt: !353)
!613 = !DILocation(line: 450, column: 22, scope: !342, inlinedAt: !353)
!614 = !DILocation(line: 450, column: 25, scope: !342, inlinedAt: !353)
!615 = !DILocation(line: 450, column: 30, scope: !342, inlinedAt: !353)
!616 = !DILocation(line: 450, column: 36, scope: !342, inlinedAt: !353)
!617 = !DILocation(line: 450, column: 8, scope: !342, inlinedAt: !353)
!618 = !DILocation(line: 450, column: 6, scope: !342, inlinedAt: !353)
!619 = !DILocation(line: 451, column: 9, scope: !342, inlinedAt: !353)
!620 = !DILocation(line: 552, column: 3, scope: !354, inlinedAt: !359)
!621 = !DILocation(line: 557, column: 19, scope: !356, inlinedAt: !359)
!622 = !DILocation(line: 557, column: 25, scope: !356, inlinedAt: !359)
!623 = !DILocation(line: 557, column: 9, scope: !356, inlinedAt: !359)
!624 = !DILocation(line: 557, column: 2, scope: !356, inlinedAt: !359)
!625 = !DILocation(line: 558, column: 1, scope: !356, inlinedAt: !359)
!626 = !DILocation(line: 274, column: 8, scope: !338)
!627 = !DILocation(line: 274, column: 6, scope: !338)
!628 = !DILocation(line: 276, column: 2, scope: !338)
!629 = !DILocation(line: 276, column: 2, scope: !630)
!630 = distinct !DILexicalBlock(scope: !338, file: !1, line: 276, column: 2)
!631 = !{i32 -2142097364}
!632 = !DILocation(line: 276, column: 2, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !1, line: 276, column: 2)
!634 = !DILocation(line: 278, column: 10, scope: !338)
!635 = !DILocation(line: 278, column: 16, scope: !338)
!636 = !DILocation(line: 278, column: 25, scope: !338)
!637 = !DILocation(line: 278, column: 7, scope: !338)
!638 = !DILocation(line: 280, column: 2, scope: !338)
!639 = !DILocation(line: 280, column: 9, scope: !338)
!640 = !DILocation(line: 281, column: 13, scope: !641)
!641 = distinct !DILexicalBlock(scope: !338, file: !1, line: 280, column: 24)
!642 = !DILocation(line: 281, column: 12, scope: !641)
!643 = !DILocation(line: 281, column: 10, scope: !641)
!644 = !DILocalVariable(name: "__mptr", scope: !645, file: !1, line: 282, type: !27)
!645 = distinct !DILexicalBlock(scope: !641, file: !1, line: 282, column: 11)
!646 = !DILocation(line: 282, column: 11, scope: !645)
!647 = !DILocation(line: 282, column: 11, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !1, line: 282, column: 11)
!649 = !DILocation(line: 282, column: 9, scope: !641)
!650 = !DILocation(line: 284, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !641, file: !1, line: 284, column: 7)
!652 = !DILocation(line: 284, column: 14, scope: !651)
!653 = !DILocation(line: 284, column: 21, scope: !651)
!654 = !DILocation(line: 284, column: 11, scope: !651)
!655 = !DILocation(line: 284, column: 7, scope: !641)
!656 = !DILocation(line: 285, column: 4, scope: !657)
!657 = distinct !DILexicalBlock(scope: !651, file: !1, line: 284, column: 29)
!658 = !DILocation(line: 285, column: 11, scope: !657)
!659 = !DILocation(line: 285, column: 19, scope: !657)
!660 = !DILocation(line: 286, column: 4, scope: !657)
!661 = !DILocation(line: 287, column: 14, scope: !662)
!662 = distinct !DILexicalBlock(scope: !651, file: !1, line: 287, column: 14)
!663 = !DILocation(line: 287, column: 20, scope: !662)
!664 = !DILocation(line: 287, column: 27, scope: !662)
!665 = !DILocation(line: 287, column: 18, scope: !662)
!666 = !DILocation(line: 287, column: 14, scope: !651)
!667 = !DILocation(line: 288, column: 14, scope: !668)
!668 = distinct !DILexicalBlock(scope: !662, file: !1, line: 287, column: 35)
!669 = !DILocation(line: 288, column: 13, scope: !668)
!670 = !DILocation(line: 288, column: 21, scope: !668)
!671 = !DILocation(line: 288, column: 9, scope: !668)
!672 = !DILocation(line: 289, column: 3, scope: !668)
!673 = !DILocation(line: 290, column: 14, scope: !674)
!674 = distinct !DILexicalBlock(scope: !662, file: !1, line: 289, column: 10)
!675 = !DILocation(line: 290, column: 13, scope: !674)
!676 = !DILocation(line: 290, column: 21, scope: !674)
!677 = !DILocation(line: 290, column: 9, scope: !674)
!678 = distinct !{!678, !638, !679}
!679 = !DILocation(line: 292, column: 2, scope: !338)
!680 = !DILocation(line: 294, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !338, file: !1, line: 294, column: 6)
!682 = !DILocation(line: 294, column: 6, scope: !338)
!683 = !DILocation(line: 295, column: 7, scope: !684)
!684 = distinct !DILexicalBlock(scope: !681, file: !1, line: 294, column: 12)
!685 = !DILocation(line: 296, column: 3, scope: !684)
!686 = !DILocation(line: 299, column: 16, scope: !338)
!687 = !DILocation(line: 299, column: 2, scope: !338)
!688 = !DILocation(line: 299, column: 7, scope: !338)
!689 = !DILocation(line: 299, column: 14, scope: !338)
!690 = !DILocation(line: 300, column: 2, scope: !338)
!691 = !DILocation(line: 300, column: 7, scope: !338)
!692 = !DILocation(line: 300, column: 16, scope: !338)
!693 = !DILocation(line: 301, column: 16, scope: !338)
!694 = !DILocation(line: 301, column: 21, scope: !338)
!695 = !DILocation(line: 301, column: 28, scope: !338)
!696 = !DILocation(line: 301, column: 36, scope: !338)
!697 = !DILocation(line: 301, column: 2, scope: !338)
!698 = !DILocation(line: 302, column: 19, scope: !338)
!699 = !DILocation(line: 302, column: 24, scope: !338)
!700 = !DILocation(line: 302, column: 32, scope: !338)
!701 = !DILocation(line: 302, column: 38, scope: !338)
!702 = !DILocation(line: 302, column: 2, scope: !338)
!703 = !DILocation(line: 303, column: 6, scope: !338)
!704 = !DILocation(line: 303, column: 2, scope: !338)
!705 = !DILabel(scope: !338, name: "unlock", file: !1, line: 305)
!706 = !DILocation(line: 305, column: 1, scope: !338)
!707 = !DILocation(line: 306, column: 2, scope: !338)
!708 = !DILocation(line: 306, column: 2, scope: !709)
!709 = distinct !DILexicalBlock(scope: !338, file: !1, line: 306, column: 2)
!710 = !{i32 -2142095426}
!711 = !DILocation(line: 306, column: 2, scope: !712)
!712 = distinct !DILexicalBlock(scope: !709, file: !1, line: 306, column: 2)
!713 = !DILocation(line: 307, column: 8, scope: !338)
!714 = !DILocation(line: 307, column: 2, scope: !338)
!715 = !DILocation(line: 308, column: 9, scope: !338)
!716 = !DILocation(line: 308, column: 2, scope: !338)
!717 = distinct !DISubprogram(name: "rb_link_node", scope: !61, file: !61, line: 69, type: !718, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !67, !67, !408}
!720 = !DILocalVariable(name: "node", arg: 1, scope: !717, file: !61, line: 69, type: !67)
!721 = !DILocation(line: 69, column: 49, scope: !717)
!722 = !DILocalVariable(name: "parent", arg: 2, scope: !717, file: !61, line: 69, type: !67)
!723 = !DILocation(line: 69, column: 71, scope: !717)
!724 = !DILocalVariable(name: "rb_link", arg: 3, scope: !717, file: !61, line: 70, type: !408)
!725 = !DILocation(line: 70, column: 22, scope: !717)
!726 = !DILocation(line: 72, column: 43, scope: !717)
!727 = !DILocation(line: 72, column: 28, scope: !717)
!728 = !DILocation(line: 72, column: 2, scope: !717)
!729 = !DILocation(line: 72, column: 8, scope: !717)
!730 = !DILocation(line: 72, column: 26, scope: !717)
!731 = !DILocation(line: 73, column: 18, scope: !717)
!732 = !DILocation(line: 73, column: 24, scope: !717)
!733 = !DILocation(line: 73, column: 33, scope: !717)
!734 = !DILocation(line: 73, column: 2, scope: !717)
!735 = !DILocation(line: 73, column: 8, scope: !717)
!736 = !DILocation(line: 73, column: 16, scope: !717)
!737 = !DILocation(line: 75, column: 13, scope: !717)
!738 = !DILocation(line: 75, column: 3, scope: !717)
!739 = !DILocation(line: 75, column: 11, scope: !717)
!740 = !DILocation(line: 76, column: 1, scope: !717)
!741 = distinct !DISubprogram(name: "drm_vma_node_revoke", scope: !1, file: !1, line: 325, type: !742, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !99)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !86, !111}
!744 = !DILocalVariable(name: "node", arg: 1, scope: !741, file: !1, line: 325, type: !86)
!745 = !DILocation(line: 325, column: 54, scope: !741)
!746 = !DILocalVariable(name: "tag", arg: 2, scope: !741, file: !1, line: 326, type: !111)
!747 = !DILocation(line: 326, column: 22, scope: !741)
!748 = !DILocalVariable(name: "entry", scope: !741, file: !1, line: 328, type: !106)
!749 = !DILocation(line: 328, column: 30, scope: !741)
!750 = !DILocalVariable(name: "iter", scope: !741, file: !1, line: 329, type: !67)
!751 = !DILocation(line: 329, column: 18, scope: !741)
!752 = !DILocation(line: 331, column: 2, scope: !741)
!753 = !DILocation(line: 331, column: 2, scope: !754)
!754 = distinct !DILexicalBlock(scope: !741, file: !1, line: 331, column: 2)
!755 = !{i32 -2142095066}
!756 = !DILocation(line: 331, column: 2, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !1, line: 331, column: 2)
!758 = !DILocation(line: 333, column: 9, scope: !741)
!759 = !DILocation(line: 333, column: 15, scope: !741)
!760 = !DILocation(line: 333, column: 24, scope: !741)
!761 = !DILocation(line: 333, column: 7, scope: !741)
!762 = !DILocation(line: 334, column: 2, scope: !741)
!763 = !DILocation(line: 334, column: 9, scope: !741)
!764 = !DILocalVariable(name: "__mptr", scope: !765, file: !1, line: 335, type: !27)
!765 = distinct !DILexicalBlock(scope: !766, file: !1, line: 335, column: 11)
!766 = distinct !DILexicalBlock(scope: !741, file: !1, line: 334, column: 23)
!767 = !DILocation(line: 335, column: 11, scope: !765)
!768 = !DILocation(line: 335, column: 11, scope: !769)
!769 = distinct !DILexicalBlock(scope: !765, file: !1, line: 335, column: 11)
!770 = !DILocation(line: 335, column: 9, scope: !766)
!771 = !DILocation(line: 336, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !766, file: !1, line: 336, column: 7)
!773 = !DILocation(line: 336, column: 14, scope: !772)
!774 = !DILocation(line: 336, column: 21, scope: !772)
!775 = !DILocation(line: 336, column: 11, scope: !772)
!776 = !DILocation(line: 336, column: 7, scope: !766)
!777 = !DILocation(line: 337, column: 11, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !1, line: 337, column: 8)
!779 = distinct !DILexicalBlock(scope: !772, file: !1, line: 336, column: 29)
!780 = !DILocation(line: 337, column: 18, scope: !778)
!781 = !DILocation(line: 337, column: 9, scope: !778)
!782 = !DILocation(line: 337, column: 8, scope: !779)
!783 = !DILocation(line: 338, column: 15, scope: !784)
!784 = distinct !DILexicalBlock(scope: !778, file: !1, line: 337, column: 28)
!785 = !DILocation(line: 338, column: 22, scope: !784)
!786 = !DILocation(line: 338, column: 30, scope: !784)
!787 = !DILocation(line: 338, column: 36, scope: !784)
!788 = !DILocation(line: 338, column: 5, scope: !784)
!789 = !DILocation(line: 339, column: 11, scope: !784)
!790 = !DILocation(line: 339, column: 5, scope: !784)
!791 = !DILocation(line: 340, column: 4, scope: !784)
!792 = !DILocation(line: 341, column: 4, scope: !779)
!793 = !DILocation(line: 342, column: 14, scope: !794)
!794 = distinct !DILexicalBlock(scope: !772, file: !1, line: 342, column: 14)
!795 = !DILocation(line: 342, column: 20, scope: !794)
!796 = !DILocation(line: 342, column: 27, scope: !794)
!797 = !DILocation(line: 342, column: 18, scope: !794)
!798 = !DILocation(line: 342, column: 14, scope: !772)
!799 = !DILocation(line: 343, column: 11, scope: !800)
!800 = distinct !DILexicalBlock(scope: !794, file: !1, line: 342, column: 35)
!801 = !DILocation(line: 343, column: 17, scope: !800)
!802 = !DILocation(line: 343, column: 9, scope: !800)
!803 = !DILocation(line: 344, column: 3, scope: !800)
!804 = !DILocation(line: 345, column: 11, scope: !805)
!805 = distinct !DILexicalBlock(scope: !794, file: !1, line: 344, column: 10)
!806 = !DILocation(line: 345, column: 17, scope: !805)
!807 = !DILocation(line: 345, column: 9, scope: !805)
!808 = distinct !{!808, !762, !809}
!809 = !DILocation(line: 347, column: 2, scope: !741)
!810 = !DILocation(line: 349, column: 2, scope: !741)
!811 = !DILocation(line: 349, column: 2, scope: !812)
!812 = distinct !DILexicalBlock(scope: !741, file: !1, line: 349, column: 2)
!813 = !{i32 -2142093156}
!814 = !DILocation(line: 349, column: 2, scope: !815)
!815 = distinct !DILexicalBlock(scope: !812, file: !1, line: 349, column: 2)
!816 = !DILocation(line: 350, column: 1, scope: !741)
!817 = distinct !DISubprogram(name: "drm_vma_node_is_allowed", scope: !1, file: !1, line: 366, type: !818, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !99)
!818 = !DISubroutineType(types: !819)
!819 = !{!103, !86, !111}
!820 = !DILocalVariable(name: "node", arg: 1, scope: !817, file: !1, line: 366, type: !86)
!821 = !DILocation(line: 366, column: 58, scope: !817)
!822 = !DILocalVariable(name: "tag", arg: 2, scope: !817, file: !1, line: 367, type: !111)
!823 = !DILocation(line: 367, column: 26, scope: !817)
!824 = !DILocalVariable(name: "entry", scope: !817, file: !1, line: 369, type: !106)
!825 = !DILocation(line: 369, column: 30, scope: !817)
!826 = !DILocalVariable(name: "iter", scope: !817, file: !1, line: 370, type: !67)
!827 = !DILocation(line: 370, column: 18, scope: !817)
!828 = !DILocation(line: 372, column: 2, scope: !817)
!829 = !DILocation(line: 372, column: 2, scope: !830)
!830 = distinct !DILexicalBlock(scope: !817, file: !1, line: 372, column: 2)
!831 = !{i32 -2142092795}
!832 = !DILocation(line: 372, column: 2, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !1, line: 372, column: 2)
!834 = !DILocation(line: 374, column: 9, scope: !817)
!835 = !DILocation(line: 374, column: 15, scope: !817)
!836 = !DILocation(line: 374, column: 24, scope: !817)
!837 = !DILocation(line: 374, column: 7, scope: !817)
!838 = !DILocation(line: 375, column: 2, scope: !817)
!839 = !DILocation(line: 375, column: 9, scope: !817)
!840 = !DILocalVariable(name: "__mptr", scope: !841, file: !1, line: 376, type: !27)
!841 = distinct !DILexicalBlock(scope: !842, file: !1, line: 376, column: 11)
!842 = distinct !DILexicalBlock(scope: !817, file: !1, line: 375, column: 23)
!843 = !DILocation(line: 376, column: 11, scope: !841)
!844 = !DILocation(line: 376, column: 11, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !1, line: 376, column: 11)
!846 = !DILocation(line: 376, column: 9, scope: !842)
!847 = !DILocation(line: 377, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !842, file: !1, line: 377, column: 7)
!849 = !DILocation(line: 377, column: 14, scope: !848)
!850 = !DILocation(line: 377, column: 21, scope: !848)
!851 = !DILocation(line: 377, column: 11, scope: !848)
!852 = !DILocation(line: 377, column: 7, scope: !842)
!853 = !DILocation(line: 378, column: 4, scope: !848)
!854 = !DILocation(line: 379, column: 12, scope: !855)
!855 = distinct !DILexicalBlock(scope: !848, file: !1, line: 379, column: 12)
!856 = !DILocation(line: 379, column: 18, scope: !855)
!857 = !DILocation(line: 379, column: 25, scope: !855)
!858 = !DILocation(line: 379, column: 16, scope: !855)
!859 = !DILocation(line: 379, column: 12, scope: !848)
!860 = !DILocation(line: 380, column: 11, scope: !855)
!861 = !DILocation(line: 380, column: 17, scope: !855)
!862 = !DILocation(line: 380, column: 9, scope: !855)
!863 = !DILocation(line: 380, column: 4, scope: !855)
!864 = !DILocation(line: 382, column: 11, scope: !855)
!865 = !DILocation(line: 382, column: 17, scope: !855)
!866 = !DILocation(line: 382, column: 9, scope: !855)
!867 = distinct !{!867, !838, !868}
!868 = !DILocation(line: 383, column: 2, scope: !817)
!869 = !DILocation(line: 385, column: 2, scope: !817)
!870 = !DILocation(line: 385, column: 2, scope: !871)
!871 = distinct !DILexicalBlock(scope: !817, file: !1, line: 385, column: 2)
!872 = !{i32 -2142090886}
!873 = !DILocation(line: 385, column: 2, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !1, line: 385, column: 2)
!875 = !DILocation(line: 387, column: 9, scope: !817)
!876 = !DILocation(line: 387, column: 2, scope: !817)
!877 = distinct !DISubprogram(name: "test_bit", scope: !878, file: !878, line: 132, type: !879, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!878 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!879 = !DISubroutineType(types: !880)
!880 = !{!103, !881, !882}
!881 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!885 = !DILocalVariable(name: "nr", arg: 1, scope: !886, file: !887, line: 210, type: !881)
!886 = distinct !DISubprogram(name: "variable_test_bit", scope: !887, file: !887, line: 210, type: !879, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!887 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!888 = !DILocation(line: 210, column: 52, scope: !886, inlinedAt: !889)
!889 = distinct !DILocation(line: 135, column: 9, scope: !877)
!890 = !DILocalVariable(name: "addr", arg: 2, scope: !886, file: !887, line: 210, type: !882)
!891 = !DILocation(line: 210, column: 86, scope: !886, inlinedAt: !889)
!892 = !DILocalVariable(name: "oldbit", scope: !886, file: !887, line: 212, type: !103)
!893 = !DILocation(line: 212, column: 7, scope: !886, inlinedAt: !889)
!894 = !DILocalVariable(name: "nr", arg: 1, scope: !895, file: !887, line: 204, type: !881)
!895 = distinct !DISubprogram(name: "constant_test_bit", scope: !887, file: !887, line: 204, type: !879, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!896 = !DILocation(line: 204, column: 52, scope: !895, inlinedAt: !897)
!897 = distinct !DILocation(line: 135, column: 9, scope: !877)
!898 = !DILocalVariable(name: "addr", arg: 2, scope: !895, file: !887, line: 204, type: !882)
!899 = !DILocation(line: 204, column: 86, scope: !895, inlinedAt: !897)
!900 = !DILocalVariable(name: "v", arg: 1, scope: !901, file: !902, line: 69, type: !905)
!901 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !902, file: !902, line: 69, type: !903, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!902 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!903 = !DISubroutineType(types: !904)
!904 = !{null, !905, !348}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!908 = !DILocation(line: 69, column: 73, scope: !901, inlinedAt: !909)
!909 = distinct !DILocation(line: 134, column: 2, scope: !877)
!910 = !DILocalVariable(name: "size", arg: 2, scope: !901, file: !902, line: 69, type: !348)
!911 = !DILocation(line: 69, column: 83, scope: !901, inlinedAt: !909)
!912 = !DILocalVariable(name: "nr", arg: 1, scope: !877, file: !878, line: 132, type: !881)
!913 = !DILocation(line: 132, column: 34, scope: !877)
!914 = !DILocalVariable(name: "addr", arg: 2, scope: !877, file: !878, line: 132, type: !882)
!915 = !DILocation(line: 132, column: 68, scope: !877)
!916 = !DILocation(line: 134, column: 25, scope: !877)
!917 = !DILocation(line: 134, column: 32, scope: !877)
!918 = !DILocation(line: 134, column: 30, scope: !877)
!919 = !DILocation(line: 71, column: 19, scope: !901, inlinedAt: !909)
!920 = !DILocation(line: 71, column: 22, scope: !901, inlinedAt: !909)
!921 = !DILocation(line: 71, column: 2, scope: !901, inlinedAt: !909)
!922 = !DILocation(line: 72, column: 2, scope: !901, inlinedAt: !909)
!923 = !DILocation(line: 135, column: 9, scope: !877)
!924 = !DILocation(line: 206, column: 19, scope: !895, inlinedAt: !897)
!925 = !DILocation(line: 206, column: 22, scope: !895, inlinedAt: !897)
!926 = !DILocation(line: 206, column: 15, scope: !895, inlinedAt: !897)
!927 = !DILocation(line: 207, column: 4, scope: !895, inlinedAt: !897)
!928 = !DILocation(line: 207, column: 9, scope: !895, inlinedAt: !897)
!929 = !DILocation(line: 207, column: 12, scope: !895, inlinedAt: !897)
!930 = !DILocation(line: 206, column: 44, scope: !895, inlinedAt: !897)
!931 = !DILocation(line: 207, column: 37, scope: !895, inlinedAt: !897)
!932 = !DILocation(line: 217, column: 33, scope: !886, inlinedAt: !889)
!933 = !DILocation(line: 217, column: 46, scope: !886, inlinedAt: !889)
!934 = !DILocation(line: 214, column: 2, scope: !886, inlinedAt: !889)
!935 = !{i32 -2147065666, i32 -2147065606}
!936 = !DILocation(line: 219, column: 9, scope: !886, inlinedAt: !889)
!937 = !DILocation(line: 135, column: 2, scope: !877)
!938 = distinct !DISubprogram(name: "kasan_check_read", scope: !939, file: !939, line: 34, type: !940, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!939 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!940 = !DISubroutineType(types: !941)
!941 = !{!103, !905, !5}
!942 = !DILocalVariable(name: "p", arg: 1, scope: !938, file: !939, line: 34, type: !905)
!943 = !DILocation(line: 34, column: 58, scope: !938)
!944 = !DILocalVariable(name: "size", arg: 2, scope: !938, file: !939, line: 34, type: !5)
!945 = !DILocation(line: 34, column: 74, scope: !938)
!946 = !DILocation(line: 36, column: 2, scope: !938)
!947 = distinct !DISubprogram(name: "kcsan_check_access", scope: !948, file: !948, line: 178, type: !949, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!948 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!949 = !DISubroutineType(types: !950)
!950 = !{null, !905, !348, !246}
!951 = !DILocalVariable(name: "ptr", arg: 1, scope: !947, file: !948, line: 178, type: !905)
!952 = !DILocation(line: 178, column: 60, scope: !947)
!953 = !DILocalVariable(name: "size", arg: 2, scope: !947, file: !948, line: 178, type: !348)
!954 = !DILocation(line: 178, column: 72, scope: !947)
!955 = !DILocalVariable(name: "type", arg: 3, scope: !947, file: !948, line: 179, type: !246)
!956 = !DILocation(line: 179, column: 15, scope: !947)
!957 = !DILocation(line: 179, column: 23, scope: !947)
!958 = distinct !DISubprogram(name: "drm_mm_insert_node_generic", scope: !10, file: !10, line: 432, type: !959, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!959 = !DISubroutineType(types: !960)
!960 = !{!246, !41, !28, !34, !34, !32, !9}
!961 = !DILocalVariable(name: "mm", arg: 1, scope: !958, file: !10, line: 432, type: !41)
!962 = !DILocation(line: 432, column: 43, scope: !958)
!963 = !DILocalVariable(name: "node", arg: 2, scope: !958, file: !10, line: 432, type: !28)
!964 = !DILocation(line: 432, column: 67, scope: !958)
!965 = !DILocalVariable(name: "size", arg: 3, scope: !958, file: !10, line: 433, type: !34)
!966 = !DILocation(line: 433, column: 11, scope: !958)
!967 = !DILocalVariable(name: "alignment", arg: 4, scope: !958, file: !10, line: 433, type: !34)
!968 = !DILocation(line: 433, column: 21, scope: !958)
!969 = !DILocalVariable(name: "color", arg: 5, scope: !958, file: !10, line: 434, type: !32)
!970 = !DILocation(line: 434, column: 21, scope: !958)
!971 = !DILocalVariable(name: "mode", arg: 6, scope: !958, file: !10, line: 435, type: !9)
!972 = !DILocation(line: 435, column: 31, scope: !958)
!973 = !DILocation(line: 437, column: 37, scope: !958)
!974 = !DILocation(line: 437, column: 41, scope: !958)
!975 = !DILocation(line: 438, column: 9, scope: !958)
!976 = !DILocation(line: 438, column: 15, scope: !958)
!977 = !DILocation(line: 438, column: 26, scope: !958)
!978 = !DILocation(line: 439, column: 21, scope: !958)
!979 = !DILocation(line: 437, column: 9, scope: !958)
!980 = !DILocation(line: 437, column: 2, scope: !958)
!981 = distinct !DISubprogram(name: "get_order", scope: !982, file: !982, line: 29, type: !983, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!982 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!983 = !DISubroutineType(types: !984)
!984 = !{!246, !32}
!985 = !DILocalVariable(name: "x", arg: 1, scope: !986, file: !887, line: 366, type: !36)
!986 = distinct !DISubprogram(name: "fls64", scope: !887, file: !887, line: 366, type: !987, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!987 = !DISubroutineType(types: !988)
!988 = !{!246, !36}
!989 = !DILocation(line: 366, column: 40, scope: !986, inlinedAt: !990)
!990 = distinct !DILocation(line: 46, column: 9, scope: !981)
!991 = !DILocalVariable(name: "bitpos", scope: !986, file: !887, line: 368, type: !246)
!992 = !DILocation(line: 368, column: 6, scope: !986, inlinedAt: !990)
!993 = !DILocalVariable(name: "size", arg: 1, scope: !981, file: !982, line: 29, type: !32)
!994 = !DILocation(line: 29, column: 63, scope: !981)
!995 = !DILocation(line: 31, column: 27, scope: !996)
!996 = distinct !DILexicalBlock(scope: !981, file: !982, line: 31, column: 6)
!997 = !DILocation(line: 31, column: 6, scope: !996)
!998 = !DILocation(line: 31, column: 6, scope: !981)
!999 = !DILocation(line: 32, column: 8, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !982, line: 32, column: 7)
!1001 = distinct !DILexicalBlock(scope: !996, file: !982, line: 31, column: 34)
!1002 = !DILocation(line: 32, column: 7, scope: !1001)
!1003 = !DILocation(line: 33, column: 4, scope: !1000)
!1004 = !DILocation(line: 35, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !982, line: 35, column: 7)
!1006 = !DILocation(line: 35, column: 12, scope: !1005)
!1007 = !DILocation(line: 35, column: 7, scope: !1001)
!1008 = !DILocation(line: 36, column: 4, scope: !1005)
!1009 = !DILocation(line: 38, column: 10, scope: !1001)
!1010 = !DILocation(line: 38, column: 28, scope: !1001)
!1011 = !DILocation(line: 38, column: 41, scope: !1001)
!1012 = !DILocation(line: 38, column: 3, scope: !1001)
!1013 = !DILocation(line: 41, column: 6, scope: !981)
!1014 = !DILocation(line: 42, column: 7, scope: !981)
!1015 = !DILocation(line: 46, column: 15, scope: !981)
!1016 = !DILocation(line: 374, column: 2, scope: !986, inlinedAt: !990)
!1017 = !DILocation(line: 376, column: 14, scope: !986, inlinedAt: !990)
!1018 = !{i32 377307}
!1019 = !DILocation(line: 377, column: 9, scope: !986, inlinedAt: !990)
!1020 = !DILocation(line: 377, column: 16, scope: !986, inlinedAt: !990)
!1021 = !DILocation(line: 46, column: 2, scope: !981)
!1022 = !DILocation(line: 48, column: 1, scope: !981)
!1023 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1024, file: !1024, line: 30, type: !1025, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!1024 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!246, !34}
!1027 = !DILocation(line: 366, column: 40, scope: !986, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 32, column: 9, scope: !1023)
!1029 = !DILocation(line: 368, column: 6, scope: !986, inlinedAt: !1028)
!1030 = !DILocalVariable(name: "n", arg: 1, scope: !1023, file: !1024, line: 30, type: !34)
!1031 = !DILocation(line: 30, column: 21, scope: !1023)
!1032 = !DILocation(line: 32, column: 15, scope: !1023)
!1033 = !DILocation(line: 374, column: 2, scope: !986, inlinedAt: !1028)
!1034 = !DILocation(line: 376, column: 14, scope: !986, inlinedAt: !1028)
!1035 = !DILocation(line: 377, column: 9, scope: !986, inlinedAt: !1028)
!1036 = !DILocation(line: 377, column: 16, scope: !986, inlinedAt: !1028)
!1037 = !DILocation(line: 32, column: 18, scope: !1023)
!1038 = !DILocation(line: 32, column: 2, scope: !1023)
!1039 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1040, file: !1040, line: 137, type: !1041, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !99)
!1040 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!27, !345, !1043, !348, !105}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1045 = !DILocalVariable(name: "s", arg: 1, scope: !1039, file: !1040, line: 137, type: !345)
!1046 = !DILocation(line: 137, column: 54, scope: !1039)
!1047 = !DILocalVariable(name: "object", arg: 2, scope: !1039, file: !1040, line: 137, type: !1043)
!1048 = !DILocation(line: 137, column: 69, scope: !1039)
!1049 = !DILocalVariable(name: "size", arg: 3, scope: !1039, file: !1040, line: 138, type: !348)
!1050 = !DILocation(line: 138, column: 12, scope: !1039)
!1051 = !DILocalVariable(name: "flags", arg: 4, scope: !1039, file: !1040, line: 138, type: !105)
!1052 = !DILocation(line: 138, column: 24, scope: !1039)
!1053 = !DILocation(line: 140, column: 17, scope: !1039)
!1054 = !DILocation(line: 140, column: 2, scope: !1039)
