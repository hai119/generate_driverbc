; ModuleID = '../bcout/drivers/gpu/drm/drm_hashtab.llvm.bc'
source_filename = "drivers/gpu/drm/drm_hashtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.drm_open_hash = type { %struct.hlist_head*, i8 }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.drm_hash_item = type { %struct.hlist_node, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Out of memory for hash table\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Key is 0x%08lx, Hashed key is 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"count %d, key: 0x%08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Available key bit space exhausted\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_ht_create(%struct.drm_open_hash* %ht, i32 %order) #0 !dbg !57 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct.drm_open_hash*, align 8
  %order.addr = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.drm_open_hash* %ht, %struct.drm_open_hash** %ht.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_open_hash** %ht.addr, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %size, metadata !80, metadata !DIExpression()), !dbg !81
  %0 = load i32, i32* %order.addr, align 4, !dbg !82
  %shl = shl i32 1, %0, !dbg !83
  store i32 %shl, i32* %size, align 4, !dbg !81
  %1 = load i32, i32* %order.addr, align 4, !dbg !84
  %conv = trunc i32 %1 to i8, !dbg !84
  %2 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !85
  %order1 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %2, i32 0, i32 1, !dbg !86
  store i8 %conv, i8* %order1, align 8, !dbg !87
  %3 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !88
  %table = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %3, i32 0, i32 0, !dbg !89
  store %struct.hlist_head* null, %struct.hlist_head** %table, align 8, !dbg !90
  %4 = load i32, i32* %size, align 4, !dbg !91
  %conv2 = zext i32 %4 to i64, !dbg !91
  %cmp = icmp ule i64 %conv2, 512, !dbg !93
  br i1 %cmp, label %if.then, label %if.else, !dbg !94

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %size, align 4, !dbg !95
  %conv4 = zext i32 %5 to i64, !dbg !95
  %call = call i8* @kcalloc(i64 %conv4, i64 8, i32 3264) #6, !dbg !96
  %6 = bitcast i8* %call to %struct.hlist_head*, !dbg !96
  %7 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !97
  %table5 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %7, i32 0, i32 0, !dbg !98
  store %struct.hlist_head* %6, %struct.hlist_head** %table5, align 8, !dbg !99
  br label %if.end, !dbg !97

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %size, align 4, !dbg !100
  %conv6 = zext i32 %8 to i64, !dbg !100
  %call7 = call i64 @array_size(i64 %conv6, i64 8) #6, !dbg !101
  %call8 = call i8* @vzalloc(i64 %call7) #6, !dbg !102
  %9 = bitcast i8* %call8 to %struct.hlist_head*, !dbg !102
  %10 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !103
  %table9 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %10, i32 0, i32 0, !dbg !104
  store %struct.hlist_head* %9, %struct.hlist_head** %table9, align 8, !dbg !105
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !106
  %table10 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %11, i32 0, i32 0, !dbg !108
  %12 = load %struct.hlist_head*, %struct.hlist_head** %table10, align 8, !dbg !108
  %tobool = icmp ne %struct.hlist_head* %12, null, !dbg !106
  br i1 %tobool, label %if.end12, label %if.then11, !dbg !109

if.then11:                                        ; preds = %if.end
  call void (i8*, ...) @__drm_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #6, !dbg !110
  store i32 -12, i32* %retval, align 4, !dbg !112
  br label %return, !dbg !112

if.end12:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !113
  br label %return, !dbg !113

return:                                           ; preds = %if.end12, %if.then11
  %13 = load i32, i32* %retval, align 4, !dbg !114
  ret i32 %13, !dbg !114
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !115 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !118, metadata !DIExpression()), !dbg !119
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !120, metadata !DIExpression()), !dbg !121
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !122, metadata !DIExpression()), !dbg !123
  %0 = load i64, i64* %n.addr, align 8, !dbg !124
  %1 = load i64, i64* %size.addr, align 8, !dbg !125
  %2 = load i32, i32* %flags.addr, align 4, !dbg !126
  %or = or i32 %2, 256, !dbg !127
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #6, !dbg !128
  ret i8* %call, !dbg !129
}

; Function Attrs: noredzone
declare dso_local i8* @vzalloc(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @array_size(i64 %a, i64 %b) #0 !dbg !130 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !134, metadata !DIExpression()), !dbg !135
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !140, metadata !DIExpression()), !dbg !143
  %0 = load i64, i64* %a.addr, align 8, !dbg !143
  store i64 %0, i64* %__a, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !144, metadata !DIExpression()), !dbg !143
  %1 = load i64, i64* %b.addr, align 8, !dbg !143
  store i64 %1, i64* %__b, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !145, metadata !DIExpression()), !dbg !143
  store i64* %bytes, i64** %__d, align 8, !dbg !143
  %cmp = icmp eq i64* %__a, %__b, !dbg !143
  %conv = zext i1 %cmp to i32, !dbg !143
  %2 = load i64*, i64** %__d, align 8, !dbg !143
  %cmp1 = icmp eq i64* %__a, %2, !dbg !143
  %conv2 = zext i1 %cmp1 to i32, !dbg !143
  %3 = load i64, i64* %__a, align 8, !dbg !143
  %4 = load i64, i64* %__b, align 8, !dbg !143
  %5 = load i64*, i64** %__d, align 8, !dbg !143
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !143
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !143
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !143
  store i64 %8, i64* %5, align 8, !dbg !143
  %frombool = zext i1 %7 to i8, !dbg !143
  store i8 %frombool, i8* %tmp, align 1, !dbg !143
  %9 = load i8, i8* %tmp, align 1, !dbg !143
  %tobool = trunc i8 %9 to i1, !dbg !143
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #6, !dbg !147
  br i1 %call, label %if.then, label %if.end, !dbg !148

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !149
  br label %return, !dbg !149

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %bytes, align 8, !dbg !150
  store i64 %10, i64* %retval, align 8, !dbg !151
  br label %return, !dbg !151

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !152
  ret i64 %11, !dbg !152
}

; Function Attrs: noredzone
declare dso_local void @__drm_err(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_ht_verbose_list(%struct.drm_open_hash* %ht, i64 %key) #0 !dbg !153 {
entry:
  %val.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr.i, metadata !156, metadata !DIExpression()), !dbg !166
  %bits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr.i, metadata !168, metadata !DIExpression()), !dbg !169
  %ht.addr = alloca %struct.drm_open_hash*, align 8
  %key.addr = alloca i64, align 8
  %entry1 = alloca %struct.drm_hash_item*, align 8
  %h_list = alloca %struct.hlist_head*, align 8
  %hashed_key = alloca i32, align 4
  %count = alloca i32, align 4
  %____ptr = alloca %struct.hlist_node*, align 8
  %tmp = alloca %struct.drm_hash_item*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.drm_hash_item*, align 8
  %____ptr5 = alloca %struct.hlist_node*, align 8
  %tmp6 = alloca %struct.drm_hash_item*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp12 = alloca %struct.drm_hash_item*, align 8
  store %struct.drm_open_hash* %ht, %struct.drm_open_hash** %ht.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_open_hash** %ht.addr, metadata !170, metadata !DIExpression()), !dbg !171
  store i64 %key, i64* %key.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %key.addr, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata %struct.drm_hash_item** %entry1, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata %struct.hlist_head** %h_list, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i32* %hashed_key, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %count, metadata !180, metadata !DIExpression()), !dbg !181
  store i32 0, i32* %count, align 4, !dbg !181
  %0 = load i64, i64* %key.addr, align 8, !dbg !182
  %1 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !182
  %order = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %1, i32 0, i32 1, !dbg !182
  %2 = load i8, i8* %order, align 8, !dbg !182
  %conv = zext i8 %2 to i32, !dbg !182
  store i64 %0, i64* %val.addr.i, align 8
  store i32 %conv, i32* %bits.addr.i, align 4
  %3 = load i64, i64* %val.addr.i, align 8, !dbg !183
  %mul.i = mul i64 %3, 7046029254386353131, !dbg !184
  %4 = load i32, i32* %bits.addr.i, align 4, !dbg !185
  %sub.i = sub i32 64, %4, !dbg !186
  %sh_prom.i = zext i32 %sub.i to i64, !dbg !187
  %shr.i = lshr i64 %mul.i, %sh_prom.i, !dbg !187
  %conv.i = trunc i64 %shr.i to i32, !dbg !183
  store i32 %conv.i, i32* %hashed_key, align 4, !dbg !188
  %5 = load i64, i64* %key.addr, align 8, !dbg !189
  %6 = load i32, i32* %hashed_key, align 4, !dbg !189
  call void (i32, i8*, ...) @__drm_dbg(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %5, i32 %6) #6, !dbg !189
  %7 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !190
  %table = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %7, i32 0, i32 0, !dbg !191
  %8 = load %struct.hlist_head*, %struct.hlist_head** %table, align 8, !dbg !191
  %9 = load i32, i32* %hashed_key, align 4, !dbg !192
  %idxprom = zext i32 %9 to i64, !dbg !190
  %arrayidx = getelementptr %struct.hlist_head, %struct.hlist_head* %8, i64 %idxprom, !dbg !190
  store %struct.hlist_head* %arrayidx, %struct.hlist_head** %h_list, align 8, !dbg !193
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %____ptr, metadata !194, metadata !DIExpression()), !dbg !197
  %10 = load %struct.hlist_head*, %struct.hlist_head** %h_list, align 8, !dbg !197
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %10, i32 0, i32 0, !dbg !197
  %11 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8, !dbg !197
  store %struct.hlist_node* %11, %struct.hlist_node** %____ptr, align 8, !dbg !197
  %12 = load %struct.hlist_node*, %struct.hlist_node** %____ptr, align 8, !dbg !197
  %tobool = icmp ne %struct.hlist_node* %12, null, !dbg !197
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !197

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !198, metadata !DIExpression()), !dbg !200
  %13 = load %struct.hlist_node*, %struct.hlist_node** %____ptr, align 8, !dbg !200
  %14 = bitcast %struct.hlist_node* %13 to i8*, !dbg !200
  store i8* %14, i8** %__mptr, align 8, !dbg !200
  br label %do.body, !dbg !200

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !201

do.end:                                           ; preds = %do.body
  %15 = load i8*, i8** %__mptr, align 8, !dbg !200
  %add.ptr = getelementptr i8, i8* %15, i64 0, !dbg !200
  %16 = bitcast i8* %add.ptr to %struct.drm_hash_item*, !dbg !200
  store %struct.drm_hash_item* %16, %struct.drm_hash_item** %tmp2, align 8, !dbg !201
  %17 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp2, align 8, !dbg !200
  br label %cond.end, !dbg !197

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !197

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.drm_hash_item* [ %17, %do.end ], [ null, %cond.false ], !dbg !197
  store %struct.drm_hash_item* %cond, %struct.drm_hash_item** %tmp, align 8, !dbg !197
  %18 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp, align 8, !dbg !197
  store %struct.drm_hash_item* %18, %struct.drm_hash_item** %entry1, align 8, !dbg !203
  br label %for.cond, !dbg !203

for.cond:                                         ; preds = %cond.end15, %cond.end
  %19 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !204
  %tobool3 = icmp ne %struct.drm_hash_item* %19, null, !dbg !203
  br i1 %tobool3, label %for.body, label %for.end, !dbg !203

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %count, align 4, !dbg !206
  %inc = add i32 %20, 1, !dbg !206
  store i32 %inc, i32* %count, align 4, !dbg !206
  %21 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !206
  %key4 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %21, i32 0, i32 1, !dbg !206
  %22 = load i64, i64* %key4, align 8, !dbg !206
  call void (i32, i8*, ...) @__drm_dbg(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %20, i64 %22) #6, !dbg !206
  br label %for.inc, !dbg !206

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %____ptr5, metadata !207, metadata !DIExpression()), !dbg !209
  %23 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !209
  %head = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %23, i32 0, i32 0, !dbg !209
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %head, i32 0, i32 0, !dbg !209
  %24 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8, !dbg !209
  store %struct.hlist_node* %24, %struct.hlist_node** %____ptr5, align 8, !dbg !209
  %25 = load %struct.hlist_node*, %struct.hlist_node** %____ptr5, align 8, !dbg !209
  %tobool7 = icmp ne %struct.hlist_node* %25, null, !dbg !209
  br i1 %tobool7, label %cond.true8, label %cond.false14, !dbg !209

cond.true8:                                       ; preds = %for.inc
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !210, metadata !DIExpression()), !dbg !212
  %26 = load %struct.hlist_node*, %struct.hlist_node** %____ptr5, align 8, !dbg !212
  %27 = bitcast %struct.hlist_node* %26 to i8*, !dbg !212
  store i8* %27, i8** %__mptr9, align 8, !dbg !212
  br label %do.body10, !dbg !212

do.body10:                                        ; preds = %cond.true8
  br label %do.end11, !dbg !213

do.end11:                                         ; preds = %do.body10
  %28 = load i8*, i8** %__mptr9, align 8, !dbg !212
  %add.ptr13 = getelementptr i8, i8* %28, i64 0, !dbg !212
  %29 = bitcast i8* %add.ptr13 to %struct.drm_hash_item*, !dbg !212
  store %struct.drm_hash_item* %29, %struct.drm_hash_item** %tmp12, align 8, !dbg !213
  %30 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp12, align 8, !dbg !212
  br label %cond.end15, !dbg !209

cond.false14:                                     ; preds = %for.inc
  br label %cond.end15, !dbg !209

cond.end15:                                       ; preds = %cond.false14, %do.end11
  %cond16 = phi %struct.drm_hash_item* [ %30, %do.end11 ], [ null, %cond.false14 ], !dbg !209
  store %struct.drm_hash_item* %cond16, %struct.drm_hash_item** %tmp6, align 8, !dbg !209
  %31 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp6, align 8, !dbg !209
  store %struct.drm_hash_item* %31, %struct.drm_hash_item** %entry1, align 8, !dbg !204
  br label %for.cond, !dbg !204, !llvm.loop !215

for.end:                                          ; preds = %for.cond
  ret void, !dbg !217
}

; Function Attrs: noredzone
declare dso_local void @__drm_dbg(i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_ht_insert_item(%struct.drm_open_hash* %ht, %struct.drm_hash_item* %item) #0 !dbg !218 {
entry:
  %val.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr.i, metadata !156, metadata !DIExpression()), !dbg !221
  %bits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr.i, metadata !168, metadata !DIExpression()), !dbg !223
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct.drm_open_hash*, align 8
  %item.addr = alloca %struct.drm_hash_item*, align 8
  %entry1 = alloca %struct.drm_hash_item*, align 8
  %h_list = alloca %struct.hlist_head*, align 8
  %parent = alloca %struct.hlist_node*, align 8
  %hashed_key = alloca i32, align 4
  %key = alloca i64, align 8
  %____ptr = alloca %struct.hlist_node*, align 8
  %tmp = alloca %struct.drm_hash_item*, align 8
  %__mptr = alloca i8*, align 8
  %tmp3 = alloca %struct.drm_hash_item*, align 8
  %____ptr12 = alloca %struct.hlist_node*, align 8
  %tmp14 = alloca %struct.drm_hash_item*, align 8
  %__mptr17 = alloca i8*, align 8
  %tmp20 = alloca %struct.drm_hash_item*, align 8
  store %struct.drm_open_hash* %ht, %struct.drm_open_hash** %ht.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_open_hash** %ht.addr, metadata !224, metadata !DIExpression()), !dbg !225
  store %struct.drm_hash_item* %item, %struct.drm_hash_item** %item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_hash_item** %item.addr, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata %struct.drm_hash_item** %entry1, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata %struct.hlist_head** %h_list, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %parent, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %hashed_key, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64* %key, metadata !236, metadata !DIExpression()), !dbg !237
  %0 = load %struct.drm_hash_item*, %struct.drm_hash_item** %item.addr, align 8, !dbg !238
  %key2 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %0, i32 0, i32 1, !dbg !239
  %1 = load i64, i64* %key2, align 8, !dbg !239
  store i64 %1, i64* %key, align 8, !dbg !237
  %2 = load i64, i64* %key, align 8, !dbg !240
  %3 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !240
  %order = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %3, i32 0, i32 1, !dbg !240
  %4 = load i8, i8* %order, align 8, !dbg !240
  %conv = zext i8 %4 to i32, !dbg !240
  store i64 %2, i64* %val.addr.i, align 8
  store i32 %conv, i32* %bits.addr.i, align 4
  %5 = load i64, i64* %val.addr.i, align 8, !dbg !241
  %mul.i = mul i64 %5, 7046029254386353131, !dbg !242
  %6 = load i32, i32* %bits.addr.i, align 4, !dbg !243
  %sub.i = sub i32 64, %6, !dbg !244
  %sh_prom.i = zext i32 %sub.i to i64, !dbg !245
  %shr.i = lshr i64 %mul.i, %sh_prom.i, !dbg !245
  %conv.i = trunc i64 %shr.i to i32, !dbg !241
  store i32 %conv.i, i32* %hashed_key, align 4, !dbg !246
  %7 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !247
  %table = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %7, i32 0, i32 0, !dbg !248
  %8 = load %struct.hlist_head*, %struct.hlist_head** %table, align 8, !dbg !248
  %9 = load i32, i32* %hashed_key, align 4, !dbg !249
  %idxprom = zext i32 %9 to i64, !dbg !247
  %arrayidx = getelementptr %struct.hlist_head, %struct.hlist_head* %8, i64 %idxprom, !dbg !247
  store %struct.hlist_head* %arrayidx, %struct.hlist_head** %h_list, align 8, !dbg !250
  store %struct.hlist_node* null, %struct.hlist_node** %parent, align 8, !dbg !251
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %____ptr, metadata !252, metadata !DIExpression()), !dbg !255
  %10 = load %struct.hlist_head*, %struct.hlist_head** %h_list, align 8, !dbg !255
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %10, i32 0, i32 0, !dbg !255
  %11 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8, !dbg !255
  store %struct.hlist_node* %11, %struct.hlist_node** %____ptr, align 8, !dbg !255
  %12 = load %struct.hlist_node*, %struct.hlist_node** %____ptr, align 8, !dbg !255
  %tobool = icmp ne %struct.hlist_node* %12, null, !dbg !255
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !255

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !256, metadata !DIExpression()), !dbg !258
  %13 = load %struct.hlist_node*, %struct.hlist_node** %____ptr, align 8, !dbg !258
  %14 = bitcast %struct.hlist_node* %13 to i8*, !dbg !258
  store i8* %14, i8** %__mptr, align 8, !dbg !258
  br label %do.body, !dbg !258

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !259

do.end:                                           ; preds = %do.body
  %15 = load i8*, i8** %__mptr, align 8, !dbg !258
  %add.ptr = getelementptr i8, i8* %15, i64 0, !dbg !258
  %16 = bitcast i8* %add.ptr to %struct.drm_hash_item*, !dbg !258
  store %struct.drm_hash_item* %16, %struct.drm_hash_item** %tmp3, align 8, !dbg !259
  %17 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp3, align 8, !dbg !258
  br label %cond.end, !dbg !255

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !255

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.drm_hash_item* [ %17, %do.end ], [ null, %cond.false ], !dbg !255
  store %struct.drm_hash_item* %cond, %struct.drm_hash_item** %tmp, align 8, !dbg !255
  %18 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp, align 8, !dbg !255
  store %struct.drm_hash_item* %18, %struct.drm_hash_item** %entry1, align 8, !dbg !261
  br label %for.cond, !dbg !261

for.cond:                                         ; preds = %cond.end23, %cond.end
  %19 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !262
  %tobool4 = icmp ne %struct.drm_hash_item* %19, null, !dbg !261
  br i1 %tobool4, label %for.body, label %for.end, !dbg !261

for.body:                                         ; preds = %for.cond
  %20 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !264
  %key5 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %20, i32 0, i32 1, !dbg !267
  %21 = load i64, i64* %key5, align 8, !dbg !267
  %22 = load i64, i64* %key, align 8, !dbg !268
  %cmp = icmp eq i64 %21, %22, !dbg !269
  br i1 %cmp, label %if.then, label %if.end, !dbg !270

if.then:                                          ; preds = %for.body
  store i32 -22, i32* %retval, align 4, !dbg !271
  br label %return, !dbg !271

if.end:                                           ; preds = %for.body
  %23 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !272
  %key7 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %23, i32 0, i32 1, !dbg !274
  %24 = load i64, i64* %key7, align 8, !dbg !274
  %25 = load i64, i64* %key, align 8, !dbg !275
  %cmp8 = icmp ugt i64 %24, %25, !dbg !276
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !277

if.then10:                                        ; preds = %if.end
  br label %for.end, !dbg !278

if.end11:                                         ; preds = %if.end
  %26 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !279
  %head = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %26, i32 0, i32 0, !dbg !280
  store %struct.hlist_node* %head, %struct.hlist_node** %parent, align 8, !dbg !281
  br label %for.inc, !dbg !282

for.inc:                                          ; preds = %if.end11
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %____ptr12, metadata !283, metadata !DIExpression()), !dbg !285
  %27 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !285
  %head13 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %27, i32 0, i32 0, !dbg !285
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %head13, i32 0, i32 0, !dbg !285
  %28 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8, !dbg !285
  store %struct.hlist_node* %28, %struct.hlist_node** %____ptr12, align 8, !dbg !285
  %29 = load %struct.hlist_node*, %struct.hlist_node** %____ptr12, align 8, !dbg !285
  %tobool15 = icmp ne %struct.hlist_node* %29, null, !dbg !285
  br i1 %tobool15, label %cond.true16, label %cond.false22, !dbg !285

cond.true16:                                      ; preds = %for.inc
  call void @llvm.dbg.declare(metadata i8** %__mptr17, metadata !286, metadata !DIExpression()), !dbg !288
  %30 = load %struct.hlist_node*, %struct.hlist_node** %____ptr12, align 8, !dbg !288
  %31 = bitcast %struct.hlist_node* %30 to i8*, !dbg !288
  store i8* %31, i8** %__mptr17, align 8, !dbg !288
  br label %do.body18, !dbg !288

do.body18:                                        ; preds = %cond.true16
  br label %do.end19, !dbg !289

do.end19:                                         ; preds = %do.body18
  %32 = load i8*, i8** %__mptr17, align 8, !dbg !288
  %add.ptr21 = getelementptr i8, i8* %32, i64 0, !dbg !288
  %33 = bitcast i8* %add.ptr21 to %struct.drm_hash_item*, !dbg !288
  store %struct.drm_hash_item* %33, %struct.drm_hash_item** %tmp20, align 8, !dbg !289
  %34 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp20, align 8, !dbg !288
  br label %cond.end23, !dbg !285

cond.false22:                                     ; preds = %for.inc
  br label %cond.end23, !dbg !285

cond.end23:                                       ; preds = %cond.false22, %do.end19
  %cond24 = phi %struct.drm_hash_item* [ %34, %do.end19 ], [ null, %cond.false22 ], !dbg !285
  store %struct.drm_hash_item* %cond24, %struct.drm_hash_item** %tmp14, align 8, !dbg !285
  %35 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp14, align 8, !dbg !285
  store %struct.drm_hash_item* %35, %struct.drm_hash_item** %entry1, align 8, !dbg !262
  br label %for.cond, !dbg !262, !llvm.loop !291

for.end:                                          ; preds = %if.then10, %for.cond
  %36 = load %struct.hlist_node*, %struct.hlist_node** %parent, align 8, !dbg !293
  %tobool25 = icmp ne %struct.hlist_node* %36, null, !dbg !293
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !295

if.then26:                                        ; preds = %for.end
  %37 = load %struct.drm_hash_item*, %struct.drm_hash_item** %item.addr, align 8, !dbg !296
  %head27 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %37, i32 0, i32 0, !dbg !298
  %38 = load %struct.hlist_node*, %struct.hlist_node** %parent, align 8, !dbg !299
  call void @hlist_add_behind_rcu(%struct.hlist_node* %head27, %struct.hlist_node* %38) #6, !dbg !300
  br label %if.end29, !dbg !301

if.else:                                          ; preds = %for.end
  %39 = load %struct.drm_hash_item*, %struct.drm_hash_item** %item.addr, align 8, !dbg !302
  %head28 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %39, i32 0, i32 0, !dbg !304
  %40 = load %struct.hlist_head*, %struct.hlist_head** %h_list, align 8, !dbg !305
  call void @hlist_add_head_rcu(%struct.hlist_node* %head28, %struct.hlist_head* %40) #6, !dbg !306
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  store i32 0, i32* %retval, align 4, !dbg !307
  br label %return, !dbg !307

return:                                           ; preds = %if.end29, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !308
  ret i32 %41, !dbg !308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hlist_add_behind_rcu(%struct.hlist_node* %n, %struct.hlist_node* %prev) #0 !dbg !309 {
entry:
  %n.addr = alloca %struct.hlist_node*, align 8
  %prev.addr = alloca %struct.hlist_node*, align 8
  %_r_a_p__v = alloca i64, align 8
  store %struct.hlist_node* %n, %struct.hlist_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %n.addr, metadata !313, metadata !DIExpression()), !dbg !314
  store %struct.hlist_node* %prev, %struct.hlist_node** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %prev.addr, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = load %struct.hlist_node*, %struct.hlist_node** %prev.addr, align 8, !dbg !317
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i32 0, i32 0, !dbg !318
  %1 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8, !dbg !318
  %2 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !319
  %next1 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %2, i32 0, i32 0, !dbg !320
  store %struct.hlist_node* %1, %struct.hlist_node** %next1, align 8, !dbg !321
  br label %do.body, !dbg !322

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !323

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !325

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !323

do.body3:                                         ; preds = %do.end
  %3 = load %struct.hlist_node*, %struct.hlist_node** %prev.addr, align 8, !dbg !327
  %next4 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %3, i32 0, i32 0, !dbg !327
  %4 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !327
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %4, i32 0, i32 1, !dbg !327
  store volatile %struct.hlist_node** %next4, %struct.hlist_node*** %pprev, align 8, !dbg !327
  br label %do.end5, !dbg !327

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !323

do.end6:                                          ; preds = %do.end5
  br label %do.body7, !dbg !329

do.body7:                                         ; preds = %do.end6
  call void @llvm.dbg.declare(metadata i64* %_r_a_p__v, metadata !330, metadata !DIExpression()), !dbg !332
  %5 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !332
  %6 = ptrtoint %struct.hlist_node* %5 to i64, !dbg !332
  store i64 %6, i64* %_r_a_p__v, align 8, !dbg !332
  br i1 false, label %land.lhs.true, label %if.else, !dbg !333

land.lhs.true:                                    ; preds = %do.body7
  %7 = load i64, i64* %_r_a_p__v, align 8, !dbg !333
  %cmp = icmp eq i64 %7, 0, !dbg !333
  br i1 %cmp, label %if.then, label %if.else, !dbg !332

if.then:                                          ; preds = %land.lhs.true
  br label %do.body8, !dbg !333

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !335

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !337

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !335

do.body11:                                        ; preds = %do.end10
  %8 = load i64, i64* %_r_a_p__v, align 8, !dbg !339
  %9 = inttoptr i64 %8 to %struct.hlist_node*, !dbg !339
  %10 = load %struct.hlist_node*, %struct.hlist_node** %prev.addr, align 8, !dbg !339
  %next12 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %10, i32 0, i32 0, !dbg !339
  store volatile %struct.hlist_node* %9, %struct.hlist_node** %next12, align 8, !dbg !339
  br label %do.end13, !dbg !339

do.end13:                                         ; preds = %do.body11
  br label %do.end14, !dbg !335

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !335

if.else:                                          ; preds = %land.lhs.true, %do.body7
  br label %do.body15, !dbg !333

do.body15:                                        ; preds = %if.else
  br label %do.body16, !dbg !341

do.body16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !343

do.end17:                                         ; preds = %do.body16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !341, !srcloc !345
  br label %do.body18, !dbg !341

do.body18:                                        ; preds = %do.end17
  br label %do.body19, !dbg !346

do.body19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !348

do.end20:                                         ; preds = %do.body19
  br label %do.body21, !dbg !346

do.body21:                                        ; preds = %do.end20
  %11 = load i64, i64* %_r_a_p__v, align 8, !dbg !350
  %12 = inttoptr i64 %11 to %struct.hlist_node*, !dbg !350
  %13 = load %struct.hlist_node*, %struct.hlist_node** %prev.addr, align 8, !dbg !350
  %next22 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %13, i32 0, i32 0, !dbg !350
  store volatile %struct.hlist_node* %12, %struct.hlist_node** %next22, align 8, !dbg !350
  br label %do.end23, !dbg !350

do.end23:                                         ; preds = %do.body21
  br label %do.end24, !dbg !346

do.end24:                                         ; preds = %do.end23
  br label %do.end25, !dbg !341

do.end25:                                         ; preds = %do.end24
  br label %if.end

if.end:                                           ; preds = %do.end25, %do.end14
  br label %do.end26, !dbg !332

do.end26:                                         ; preds = %if.end
  %14 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !352
  %next27 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %14, i32 0, i32 0, !dbg !354
  %15 = load %struct.hlist_node*, %struct.hlist_node** %next27, align 8, !dbg !354
  %tobool = icmp ne %struct.hlist_node* %15, null, !dbg !352
  br i1 %tobool, label %if.then28, label %if.end38, !dbg !355

if.then28:                                        ; preds = %do.end26
  br label %do.body29, !dbg !356

do.body29:                                        ; preds = %if.then28
  br label %do.body30, !dbg !357

do.body30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !359

do.end31:                                         ; preds = %do.body30
  br label %do.body32, !dbg !357

do.body32:                                        ; preds = %do.end31
  %16 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !361
  %next33 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %16, i32 0, i32 0, !dbg !361
  %17 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !361
  %next34 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %17, i32 0, i32 0, !dbg !361
  %18 = load %struct.hlist_node*, %struct.hlist_node** %next34, align 8, !dbg !361
  %pprev35 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %18, i32 0, i32 1, !dbg !361
  store volatile %struct.hlist_node** %next33, %struct.hlist_node*** %pprev35, align 8, !dbg !361
  br label %do.end36, !dbg !361

do.end36:                                         ; preds = %do.body32
  br label %do.end37, !dbg !357

do.end37:                                         ; preds = %do.end36
  br label %if.end38, !dbg !357

if.end38:                                         ; preds = %do.end37, %do.end26
  ret void, !dbg !363
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hlist_add_head_rcu(%struct.hlist_node* %n, %struct.hlist_head* %h) #0 !dbg !364 {
entry:
  %n.addr = alloca %struct.hlist_node*, align 8
  %h.addr = alloca %struct.hlist_head*, align 8
  %first = alloca %struct.hlist_node*, align 8
  %_r_a_p__v = alloca i64, align 8
  store %struct.hlist_node* %n, %struct.hlist_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %n.addr, metadata !367, metadata !DIExpression()), !dbg !368
  store %struct.hlist_head* %h, %struct.hlist_head** %h.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hlist_head** %h.addr, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %first, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load %struct.hlist_head*, %struct.hlist_head** %h.addr, align 8, !dbg !373
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %0, i32 0, i32 0, !dbg !374
  %1 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8, !dbg !374
  store %struct.hlist_node* %1, %struct.hlist_node** %first, align 8, !dbg !372
  %2 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8, !dbg !375
  %3 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !376
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %3, i32 0, i32 0, !dbg !377
  store %struct.hlist_node* %2, %struct.hlist_node** %next, align 8, !dbg !378
  br label %do.body, !dbg !379

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !380

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !382

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !380

do.body3:                                         ; preds = %do.end
  %4 = load %struct.hlist_head*, %struct.hlist_head** %h.addr, align 8, !dbg !384
  %first4 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %4, i32 0, i32 0, !dbg !384
  %5 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !384
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %5, i32 0, i32 1, !dbg !384
  store volatile %struct.hlist_node** %first4, %struct.hlist_node*** %pprev, align 8, !dbg !384
  br label %do.end5, !dbg !384

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !380

do.end6:                                          ; preds = %do.end5
  br label %do.body7, !dbg !386

do.body7:                                         ; preds = %do.end6
  call void @llvm.dbg.declare(metadata i64* %_r_a_p__v, metadata !387, metadata !DIExpression()), !dbg !389
  %6 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !389
  %7 = ptrtoint %struct.hlist_node* %6 to i64, !dbg !389
  store i64 %7, i64* %_r_a_p__v, align 8, !dbg !389
  br i1 false, label %land.lhs.true, label %if.else, !dbg !390

land.lhs.true:                                    ; preds = %do.body7
  %8 = load i64, i64* %_r_a_p__v, align 8, !dbg !390
  %cmp = icmp eq i64 %8, 0, !dbg !390
  br i1 %cmp, label %if.then, label %if.else, !dbg !389

if.then:                                          ; preds = %land.lhs.true
  br label %do.body8, !dbg !390

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !392

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !394

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !392

do.body11:                                        ; preds = %do.end10
  %9 = load i64, i64* %_r_a_p__v, align 8, !dbg !396
  %10 = inttoptr i64 %9 to %struct.hlist_node*, !dbg !396
  %11 = load %struct.hlist_head*, %struct.hlist_head** %h.addr, align 8, !dbg !396
  %first12 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %11, i32 0, i32 0, !dbg !396
  store volatile %struct.hlist_node* %10, %struct.hlist_node** %first12, align 8, !dbg !396
  br label %do.end13, !dbg !396

do.end13:                                         ; preds = %do.body11
  br label %do.end14, !dbg !392

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !392

if.else:                                          ; preds = %land.lhs.true, %do.body7
  br label %do.body15, !dbg !390

do.body15:                                        ; preds = %if.else
  br label %do.body16, !dbg !398

do.body16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !400

do.end17:                                         ; preds = %do.body16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !398, !srcloc !402
  br label %do.body18, !dbg !398

do.body18:                                        ; preds = %do.end17
  br label %do.body19, !dbg !403

do.body19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !405

do.end20:                                         ; preds = %do.body19
  br label %do.body21, !dbg !403

do.body21:                                        ; preds = %do.end20
  %12 = load i64, i64* %_r_a_p__v, align 8, !dbg !407
  %13 = inttoptr i64 %12 to %struct.hlist_node*, !dbg !407
  %14 = load %struct.hlist_head*, %struct.hlist_head** %h.addr, align 8, !dbg !407
  %first22 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %14, i32 0, i32 0, !dbg !407
  store volatile %struct.hlist_node* %13, %struct.hlist_node** %first22, align 8, !dbg !407
  br label %do.end23, !dbg !407

do.end23:                                         ; preds = %do.body21
  br label %do.end24, !dbg !403

do.end24:                                         ; preds = %do.end23
  br label %do.end25, !dbg !398

do.end25:                                         ; preds = %do.end24
  br label %if.end

if.end:                                           ; preds = %do.end25, %do.end14
  br label %do.end26, !dbg !389

do.end26:                                         ; preds = %if.end
  %15 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8, !dbg !409
  %tobool = icmp ne %struct.hlist_node* %15, null, !dbg !409
  br i1 %tobool, label %if.then27, label %if.end36, !dbg !411

if.then27:                                        ; preds = %do.end26
  br label %do.body28, !dbg !412

do.body28:                                        ; preds = %if.then27
  br label %do.body29, !dbg !413

do.body29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !415

do.end30:                                         ; preds = %do.body29
  br label %do.body31, !dbg !413

do.body31:                                        ; preds = %do.end30
  %16 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !417
  %next32 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %16, i32 0, i32 0, !dbg !417
  %17 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8, !dbg !417
  %pprev33 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %17, i32 0, i32 1, !dbg !417
  store volatile %struct.hlist_node** %next32, %struct.hlist_node*** %pprev33, align 8, !dbg !417
  br label %do.end34, !dbg !417

do.end34:                                         ; preds = %do.body31
  br label %do.end35, !dbg !413

do.end35:                                         ; preds = %do.end34
  br label %if.end36, !dbg !413

if.end36:                                         ; preds = %do.end35, %do.end26
  ret void, !dbg !419
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_ht_just_insert_please(%struct.drm_open_hash* %ht, %struct.drm_hash_item* %item, i64 %seed, i32 %bits, i32 %shift, i64 %add) #0 !dbg !420 {
entry:
  %val.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr.i, metadata !156, metadata !DIExpression()), !dbg !423
  %bits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr.i, metadata !168, metadata !DIExpression()), !dbg !425
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct.drm_open_hash*, align 8
  %item.addr = alloca %struct.drm_hash_item*, align 8
  %seed.addr = alloca i64, align 8
  %bits.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  %add.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %mask = alloca i64, align 8
  %first = alloca i64, align 8
  %unshifted_key = alloca i64, align 8
  store %struct.drm_open_hash* %ht, %struct.drm_open_hash** %ht.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_open_hash** %ht.addr, metadata !426, metadata !DIExpression()), !dbg !427
  store %struct.drm_hash_item* %item, %struct.drm_hash_item** %item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_hash_item** %item.addr, metadata !428, metadata !DIExpression()), !dbg !429
  store i64 %seed, i64* %seed.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %seed.addr, metadata !430, metadata !DIExpression()), !dbg !431
  store i32 %bits, i32* %bits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr, metadata !432, metadata !DIExpression()), !dbg !433
  store i32 %shift, i32* %shift.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %shift.addr, metadata !434, metadata !DIExpression()), !dbg !435
  store i64 %add, i64* %add.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %add.addr, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = load i32, i32* %bits.addr, align 4, !dbg !442
  %sh_prom = zext i32 %0 to i64, !dbg !443
  %shl = shl i64 1, %sh_prom, !dbg !443
  %sub = sub i64 %shl, 1, !dbg !444
  store i64 %sub, i64* %mask, align 8, !dbg !441
  call void @llvm.dbg.declare(metadata i64* %first, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata i64* %unshifted_key, metadata !447, metadata !DIExpression()), !dbg !448
  %1 = load i64, i64* %seed.addr, align 8, !dbg !449
  %2 = load i32, i32* %bits.addr, align 4, !dbg !449
  store i64 %1, i64* %val.addr.i, align 8
  store i32 %2, i32* %bits.addr.i, align 4
  %3 = load i64, i64* %val.addr.i, align 8, !dbg !450
  %mul.i = mul i64 %3, 7046029254386353131, !dbg !451
  %4 = load i32, i32* %bits.addr.i, align 4, !dbg !452
  %sub.i = sub i32 64, %4, !dbg !453
  %sh_prom.i = zext i32 %sub.i to i64, !dbg !454
  %shr.i = lshr i64 %mul.i, %sh_prom.i, !dbg !454
  %conv.i = trunc i64 %shr.i to i32, !dbg !450
  %conv = zext i32 %conv.i to i64, !dbg !449
  store i64 %conv, i64* %unshifted_key, align 8, !dbg !455
  %5 = load i64, i64* %unshifted_key, align 8, !dbg !456
  store i64 %5, i64* %first, align 8, !dbg !457
  br label %do.body, !dbg !458

do.body:                                          ; preds = %land.end, %entry
  %6 = load i64, i64* %unshifted_key, align 8, !dbg !459
  %7 = load i32, i32* %shift.addr, align 4, !dbg !461
  %sh_prom1 = zext i32 %7 to i64, !dbg !462
  %shl2 = shl i64 %6, %sh_prom1, !dbg !462
  %8 = load i64, i64* %add.addr, align 8, !dbg !463
  %add3 = add i64 %shl2, %8, !dbg !464
  %9 = load %struct.drm_hash_item*, %struct.drm_hash_item** %item.addr, align 8, !dbg !465
  %key = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %9, i32 0, i32 1, !dbg !466
  store i64 %add3, i64* %key, align 8, !dbg !467
  %10 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !468
  %11 = load %struct.drm_hash_item*, %struct.drm_hash_item** %item.addr, align 8, !dbg !469
  %call4 = call i32 @drm_ht_insert_item(%struct.drm_open_hash* %10, %struct.drm_hash_item* %11) #6, !dbg !470
  store i32 %call4, i32* %ret, align 4, !dbg !471
  %12 = load i32, i32* %ret, align 4, !dbg !472
  %tobool = icmp ne i32 %12, 0, !dbg !472
  br i1 %tobool, label %if.then, label %if.end, !dbg !474

if.then:                                          ; preds = %do.body
  %13 = load i64, i64* %unshifted_key, align 8, !dbg !475
  %add5 = add i64 %13, 1, !dbg !476
  %14 = load i64, i64* %mask, align 8, !dbg !477
  %and = and i64 %add5, %14, !dbg !478
  store i64 %and, i64* %unshifted_key, align 8, !dbg !479
  br label %if.end, !dbg !480

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond, !dbg !481

do.cond:                                          ; preds = %if.end
  %15 = load i32, i32* %ret, align 4, !dbg !482
  %tobool6 = icmp ne i32 %15, 0, !dbg !482
  br i1 %tobool6, label %land.rhs, label %land.end, !dbg !483

land.rhs:                                         ; preds = %do.cond
  %16 = load i64, i64* %unshifted_key, align 8, !dbg !484
  %17 = load i64, i64* %first, align 8, !dbg !485
  %cmp = icmp ne i64 %16, %17, !dbg !486
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %18 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ], !dbg !487
  br i1 %18, label %do.body, label %do.end, !dbg !481, !llvm.loop !488

do.end:                                           ; preds = %land.end
  %19 = load i32, i32* %ret, align 4, !dbg !490
  %tobool8 = icmp ne i32 %19, 0, !dbg !490
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !492

if.then9:                                         ; preds = %do.end
  call void (i8*, ...) @__drm_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !493
  store i32 -22, i32* %retval, align 4, !dbg !495
  br label %return, !dbg !495

if.end10:                                         ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !496
  br label %return, !dbg !496

return:                                           ; preds = %if.end10, %if.then9
  %20 = load i32, i32* %retval, align 4, !dbg !497
  ret i32 %20, !dbg !497
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_ht_find_item(%struct.drm_open_hash* %ht, i64 %key, %struct.drm_hash_item** %item) #0 !dbg !498 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct.drm_open_hash*, align 8
  %key.addr = alloca i64, align 8
  %item.addr = alloca %struct.drm_hash_item**, align 8
  %list = alloca %struct.hlist_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_hash_item*, align 8
  store %struct.drm_open_hash* %ht, %struct.drm_open_hash** %ht.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_open_hash** %ht.addr, metadata !502, metadata !DIExpression()), !dbg !503
  store i64 %key, i64* %key.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %key.addr, metadata !504, metadata !DIExpression()), !dbg !505
  store %struct.drm_hash_item** %item, %struct.drm_hash_item*** %item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_hash_item*** %item.addr, metadata !506, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %list, metadata !508, metadata !DIExpression()), !dbg !509
  %0 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !510
  %1 = load i64, i64* %key.addr, align 8, !dbg !511
  %call = call %struct.hlist_node* @drm_ht_find_key_rcu(%struct.drm_open_hash* %0, i64 %1) #6, !dbg !512
  store %struct.hlist_node* %call, %struct.hlist_node** %list, align 8, !dbg !513
  %2 = load %struct.hlist_node*, %struct.hlist_node** %list, align 8, !dbg !514
  %tobool = icmp ne %struct.hlist_node* %2, null, !dbg !514
  br i1 %tobool, label %if.end, label %if.then, !dbg !516

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !517
  br label %return, !dbg !517

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !518, metadata !DIExpression()), !dbg !520
  %3 = load %struct.hlist_node*, %struct.hlist_node** %list, align 8, !dbg !520
  %4 = bitcast %struct.hlist_node* %3 to i8*, !dbg !520
  store i8* %4, i8** %__mptr, align 8, !dbg !520
  br label %do.body, !dbg !520

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !521

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !520
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !520
  %6 = bitcast i8* %add.ptr to %struct.drm_hash_item*, !dbg !520
  store %struct.drm_hash_item* %6, %struct.drm_hash_item** %tmp, align 8, !dbg !521
  %7 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp, align 8, !dbg !520
  %8 = load %struct.drm_hash_item**, %struct.drm_hash_item*** %item.addr, align 8, !dbg !523
  store %struct.drm_hash_item* %7, %struct.drm_hash_item** %8, align 8, !dbg !524
  store i32 0, i32* %retval, align 4, !dbg !525
  br label %return, !dbg !525

return:                                           ; preds = %do.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !526
  ret i32 %9, !dbg !526
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.hlist_node* @drm_ht_find_key_rcu(%struct.drm_open_hash* %ht, i64 %key) #0 !dbg !527 {
entry:
  %val.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr.i, metadata !156, metadata !DIExpression()), !dbg !530
  %bits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr.i, metadata !168, metadata !DIExpression()), !dbg !532
  %retval = alloca %struct.hlist_node*, align 8
  %ht.addr = alloca %struct.drm_open_hash*, align 8
  %key.addr = alloca i64, align 8
  %entry1 = alloca %struct.drm_hash_item*, align 8
  %h_list = alloca %struct.hlist_head*, align 8
  %hashed_key = alloca i32, align 4
  %____ptr = alloca %struct.hlist_node*, align 8
  %________p1 = alloca %struct.hlist_node*, align 8
  %tmp = alloca %struct.hlist_node*, align 8
  %tmp2 = alloca %struct.hlist_node*, align 8
  %tmp3 = alloca %struct.drm_hash_item*, align 8
  %__mptr = alloca i8*, align 8
  %tmp6 = alloca %struct.drm_hash_item*, align 8
  %____ptr15 = alloca %struct.hlist_node*, align 8
  %________p116 = alloca %struct.hlist_node*, align 8
  %tmp19 = alloca %struct.hlist_node*, align 8
  %tmp21 = alloca %struct.hlist_node*, align 8
  %tmp22 = alloca %struct.drm_hash_item*, align 8
  %__mptr25 = alloca i8*, align 8
  %tmp28 = alloca %struct.drm_hash_item*, align 8
  store %struct.drm_open_hash* %ht, %struct.drm_open_hash** %ht.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_open_hash** %ht.addr, metadata !533, metadata !DIExpression()), !dbg !534
  store i64 %key, i64* %key.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %key.addr, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata %struct.drm_hash_item** %entry1, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata %struct.hlist_head** %h_list, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata i32* %hashed_key, metadata !541, metadata !DIExpression()), !dbg !542
  %0 = load i64, i64* %key.addr, align 8, !dbg !543
  %1 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !543
  %order = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %1, i32 0, i32 1, !dbg !543
  %2 = load i8, i8* %order, align 8, !dbg !543
  %conv = zext i8 %2 to i32, !dbg !543
  store i64 %0, i64* %val.addr.i, align 8
  store i32 %conv, i32* %bits.addr.i, align 4
  %3 = load i64, i64* %val.addr.i, align 8, !dbg !544
  %mul.i = mul i64 %3, 7046029254386353131, !dbg !545
  %4 = load i32, i32* %bits.addr.i, align 4, !dbg !546
  %sub.i = sub i32 64, %4, !dbg !547
  %sh_prom.i = zext i32 %sub.i to i64, !dbg !548
  %shr.i = lshr i64 %mul.i, %sh_prom.i, !dbg !548
  %conv.i = trunc i64 %shr.i to i32, !dbg !544
  store i32 %conv.i, i32* %hashed_key, align 4, !dbg !549
  %5 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !550
  %table = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %5, i32 0, i32 0, !dbg !551
  %6 = load %struct.hlist_head*, %struct.hlist_head** %table, align 8, !dbg !551
  %7 = load i32, i32* %hashed_key, align 4, !dbg !552
  %idxprom = zext i32 %7 to i64, !dbg !550
  %arrayidx = getelementptr %struct.hlist_head, %struct.hlist_head* %6, i64 %idxprom, !dbg !550
  store %struct.hlist_head* %arrayidx, %struct.hlist_head** %h_list, align 8, !dbg !553
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %____ptr, metadata !554, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %________p1, metadata !558, metadata !DIExpression()), !dbg !560
  br label %do.body, !dbg !561

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !563

do.end:                                           ; preds = %do.body
  %8 = load %struct.hlist_head*, %struct.hlist_head** %h_list, align 8, !dbg !561
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %8, i32 0, i32 0, !dbg !561
  %9 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8, !dbg !561
  store %struct.hlist_node* %9, %struct.hlist_node** %tmp, align 8, !dbg !563
  %10 = load %struct.hlist_node*, %struct.hlist_node** %tmp, align 8, !dbg !561
  store %struct.hlist_node* %10, %struct.hlist_node** %________p1, align 8, !dbg !560
  %11 = load %struct.hlist_node*, %struct.hlist_node** %________p1, align 8, !dbg !560
  store %struct.hlist_node* %11, %struct.hlist_node** %tmp2, align 8, !dbg !560
  %12 = load %struct.hlist_node*, %struct.hlist_node** %tmp2, align 8, !dbg !560
  store %struct.hlist_node* %12, %struct.hlist_node** %____ptr, align 8, !dbg !557
  %13 = load %struct.hlist_node*, %struct.hlist_node** %____ptr, align 8, !dbg !557
  %tobool = icmp ne %struct.hlist_node* %13, null, !dbg !557
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !557

cond.true:                                        ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !565, metadata !DIExpression()), !dbg !567
  %14 = load %struct.hlist_node*, %struct.hlist_node** %____ptr, align 8, !dbg !567
  %15 = bitcast %struct.hlist_node* %14 to i8*, !dbg !567
  store i8* %15, i8** %__mptr, align 8, !dbg !567
  br label %do.body4, !dbg !567

do.body4:                                         ; preds = %cond.true
  br label %do.end5, !dbg !568

do.end5:                                          ; preds = %do.body4
  %16 = load i8*, i8** %__mptr, align 8, !dbg !567
  %add.ptr = getelementptr i8, i8* %16, i64 0, !dbg !567
  %17 = bitcast i8* %add.ptr to %struct.drm_hash_item*, !dbg !567
  store %struct.drm_hash_item* %17, %struct.drm_hash_item** %tmp6, align 8, !dbg !568
  %18 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp6, align 8, !dbg !567
  br label %cond.end, !dbg !557

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !557

cond.end:                                         ; preds = %cond.false, %do.end5
  %cond = phi %struct.drm_hash_item* [ %18, %do.end5 ], [ null, %cond.false ], !dbg !557
  store %struct.drm_hash_item* %cond, %struct.drm_hash_item** %tmp3, align 8, !dbg !557
  %19 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp3, align 8, !dbg !557
  store %struct.drm_hash_item* %19, %struct.drm_hash_item** %entry1, align 8, !dbg !570
  br label %for.cond, !dbg !570

for.cond:                                         ; preds = %cond.end31, %cond.end
  %20 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !571
  %tobool7 = icmp ne %struct.drm_hash_item* %20, null, !dbg !570
  br i1 %tobool7, label %for.body, label %for.end, !dbg !570

for.body:                                         ; preds = %for.cond
  %21 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !573
  %key8 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %21, i32 0, i32 1, !dbg !576
  %22 = load i64, i64* %key8, align 8, !dbg !576
  %23 = load i64, i64* %key.addr, align 8, !dbg !577
  %cmp = icmp eq i64 %22, %23, !dbg !578
  br i1 %cmp, label %if.then, label %if.end, !dbg !579

if.then:                                          ; preds = %for.body
  %24 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !580
  %head = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %24, i32 0, i32 0, !dbg !581
  store %struct.hlist_node* %head, %struct.hlist_node** %retval, align 8, !dbg !582
  br label %return, !dbg !582

if.end:                                           ; preds = %for.body
  %25 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !583
  %key10 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %25, i32 0, i32 1, !dbg !585
  %26 = load i64, i64* %key10, align 8, !dbg !585
  %27 = load i64, i64* %key.addr, align 8, !dbg !586
  %cmp11 = icmp ugt i64 %26, %27, !dbg !587
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !588

if.then13:                                        ; preds = %if.end
  br label %for.end, !dbg !589

if.end14:                                         ; preds = %if.end
  br label %for.inc, !dbg !590

for.inc:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %____ptr15, metadata !591, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %________p116, metadata !594, metadata !DIExpression()), !dbg !596
  br label %do.body17, !dbg !597

do.body17:                                        ; preds = %for.inc
  br label %do.end18, !dbg !599

do.end18:                                         ; preds = %do.body17
  %28 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !597
  %head20 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %28, i32 0, i32 0, !dbg !597
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %head20, i32 0, i32 0, !dbg !597
  %29 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8, !dbg !597
  store %struct.hlist_node* %29, %struct.hlist_node** %tmp19, align 8, !dbg !599
  %30 = load %struct.hlist_node*, %struct.hlist_node** %tmp19, align 8, !dbg !597
  store %struct.hlist_node* %30, %struct.hlist_node** %________p116, align 8, !dbg !596
  %31 = load %struct.hlist_node*, %struct.hlist_node** %________p116, align 8, !dbg !596
  store %struct.hlist_node* %31, %struct.hlist_node** %tmp21, align 8, !dbg !596
  %32 = load %struct.hlist_node*, %struct.hlist_node** %tmp21, align 8, !dbg !596
  store %struct.hlist_node* %32, %struct.hlist_node** %____ptr15, align 8, !dbg !593
  %33 = load %struct.hlist_node*, %struct.hlist_node** %____ptr15, align 8, !dbg !593
  %tobool23 = icmp ne %struct.hlist_node* %33, null, !dbg !593
  br i1 %tobool23, label %cond.true24, label %cond.false30, !dbg !593

cond.true24:                                      ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i8** %__mptr25, metadata !601, metadata !DIExpression()), !dbg !603
  %34 = load %struct.hlist_node*, %struct.hlist_node** %____ptr15, align 8, !dbg !603
  %35 = bitcast %struct.hlist_node* %34 to i8*, !dbg !603
  store i8* %35, i8** %__mptr25, align 8, !dbg !603
  br label %do.body26, !dbg !603

do.body26:                                        ; preds = %cond.true24
  br label %do.end27, !dbg !604

do.end27:                                         ; preds = %do.body26
  %36 = load i8*, i8** %__mptr25, align 8, !dbg !603
  %add.ptr29 = getelementptr i8, i8* %36, i64 0, !dbg !603
  %37 = bitcast i8* %add.ptr29 to %struct.drm_hash_item*, !dbg !603
  store %struct.drm_hash_item* %37, %struct.drm_hash_item** %tmp28, align 8, !dbg !604
  %38 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp28, align 8, !dbg !603
  br label %cond.end31, !dbg !593

cond.false30:                                     ; preds = %do.end18
  br label %cond.end31, !dbg !593

cond.end31:                                       ; preds = %cond.false30, %do.end27
  %cond32 = phi %struct.drm_hash_item* [ %38, %do.end27 ], [ null, %cond.false30 ], !dbg !593
  store %struct.drm_hash_item* %cond32, %struct.drm_hash_item** %tmp22, align 8, !dbg !593
  %39 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp22, align 8, !dbg !593
  store %struct.drm_hash_item* %39, %struct.drm_hash_item** %entry1, align 8, !dbg !571
  br label %for.cond, !dbg !571, !llvm.loop !606

for.end:                                          ; preds = %if.then13, %for.cond
  store %struct.hlist_node* null, %struct.hlist_node** %retval, align 8, !dbg !608
  br label %return, !dbg !608

return:                                           ; preds = %for.end, %if.then
  %40 = load %struct.hlist_node*, %struct.hlist_node** %retval, align 8, !dbg !609
  ret %struct.hlist_node* %40, !dbg !609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_ht_remove_key(%struct.drm_open_hash* %ht, i64 %key) #0 !dbg !610 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct.drm_open_hash*, align 8
  %key.addr = alloca i64, align 8
  %list = alloca %struct.hlist_node*, align 8
  store %struct.drm_open_hash* %ht, %struct.drm_open_hash** %ht.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_open_hash** %ht.addr, metadata !613, metadata !DIExpression()), !dbg !614
  store i64 %key, i64* %key.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %key.addr, metadata !615, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %list, metadata !617, metadata !DIExpression()), !dbg !618
  %0 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !619
  %1 = load i64, i64* %key.addr, align 8, !dbg !620
  %call = call %struct.hlist_node* @drm_ht_find_key(%struct.drm_open_hash* %0, i64 %1) #6, !dbg !621
  store %struct.hlist_node* %call, %struct.hlist_node** %list, align 8, !dbg !622
  %2 = load %struct.hlist_node*, %struct.hlist_node** %list, align 8, !dbg !623
  %tobool = icmp ne %struct.hlist_node* %2, null, !dbg !623
  br i1 %tobool, label %if.then, label %if.end, !dbg !625

if.then:                                          ; preds = %entry
  %3 = load %struct.hlist_node*, %struct.hlist_node** %list, align 8, !dbg !626
  call void @hlist_del_init_rcu(%struct.hlist_node* %3) #6, !dbg !628
  store i32 0, i32* %retval, align 4, !dbg !629
  br label %return, !dbg !629

if.end:                                           ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !630
  br label %return, !dbg !630

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !631
  ret i32 %4, !dbg !631
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.hlist_node* @drm_ht_find_key(%struct.drm_open_hash* %ht, i64 %key) #0 !dbg !632 {
entry:
  %val.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr.i, metadata !156, metadata !DIExpression()), !dbg !633
  %bits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr.i, metadata !168, metadata !DIExpression()), !dbg !635
  %retval = alloca %struct.hlist_node*, align 8
  %ht.addr = alloca %struct.drm_open_hash*, align 8
  %key.addr = alloca i64, align 8
  %entry1 = alloca %struct.drm_hash_item*, align 8
  %h_list = alloca %struct.hlist_head*, align 8
  %hashed_key = alloca i32, align 4
  %____ptr = alloca %struct.hlist_node*, align 8
  %tmp = alloca %struct.drm_hash_item*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.drm_hash_item*, align 8
  %____ptr11 = alloca %struct.hlist_node*, align 8
  %tmp13 = alloca %struct.drm_hash_item*, align 8
  %__mptr16 = alloca i8*, align 8
  %tmp19 = alloca %struct.drm_hash_item*, align 8
  store %struct.drm_open_hash* %ht, %struct.drm_open_hash** %ht.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_open_hash** %ht.addr, metadata !636, metadata !DIExpression()), !dbg !637
  store i64 %key, i64* %key.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %key.addr, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata %struct.drm_hash_item** %entry1, metadata !640, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.declare(metadata %struct.hlist_head** %h_list, metadata !642, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.declare(metadata i32* %hashed_key, metadata !644, metadata !DIExpression()), !dbg !645
  %0 = load i64, i64* %key.addr, align 8, !dbg !646
  %1 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !646
  %order = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %1, i32 0, i32 1, !dbg !646
  %2 = load i8, i8* %order, align 8, !dbg !646
  %conv = zext i8 %2 to i32, !dbg !646
  store i64 %0, i64* %val.addr.i, align 8
  store i32 %conv, i32* %bits.addr.i, align 4
  %3 = load i64, i64* %val.addr.i, align 8, !dbg !647
  %mul.i = mul i64 %3, 7046029254386353131, !dbg !648
  %4 = load i32, i32* %bits.addr.i, align 4, !dbg !649
  %sub.i = sub i32 64, %4, !dbg !650
  %sh_prom.i = zext i32 %sub.i to i64, !dbg !651
  %shr.i = lshr i64 %mul.i, %sh_prom.i, !dbg !651
  %conv.i = trunc i64 %shr.i to i32, !dbg !647
  store i32 %conv.i, i32* %hashed_key, align 4, !dbg !652
  %5 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !653
  %table = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %5, i32 0, i32 0, !dbg !654
  %6 = load %struct.hlist_head*, %struct.hlist_head** %table, align 8, !dbg !654
  %7 = load i32, i32* %hashed_key, align 4, !dbg !655
  %idxprom = zext i32 %7 to i64, !dbg !653
  %arrayidx = getelementptr %struct.hlist_head, %struct.hlist_head* %6, i64 %idxprom, !dbg !653
  store %struct.hlist_head* %arrayidx, %struct.hlist_head** %h_list, align 8, !dbg !656
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %____ptr, metadata !657, metadata !DIExpression()), !dbg !660
  %8 = load %struct.hlist_head*, %struct.hlist_head** %h_list, align 8, !dbg !660
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %8, i32 0, i32 0, !dbg !660
  %9 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8, !dbg !660
  store %struct.hlist_node* %9, %struct.hlist_node** %____ptr, align 8, !dbg !660
  %10 = load %struct.hlist_node*, %struct.hlist_node** %____ptr, align 8, !dbg !660
  %tobool = icmp ne %struct.hlist_node* %10, null, !dbg !660
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !660

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !661, metadata !DIExpression()), !dbg !663
  %11 = load %struct.hlist_node*, %struct.hlist_node** %____ptr, align 8, !dbg !663
  %12 = bitcast %struct.hlist_node* %11 to i8*, !dbg !663
  store i8* %12, i8** %__mptr, align 8, !dbg !663
  br label %do.body, !dbg !663

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !664

do.end:                                           ; preds = %do.body
  %13 = load i8*, i8** %__mptr, align 8, !dbg !663
  %add.ptr = getelementptr i8, i8* %13, i64 0, !dbg !663
  %14 = bitcast i8* %add.ptr to %struct.drm_hash_item*, !dbg !663
  store %struct.drm_hash_item* %14, %struct.drm_hash_item** %tmp2, align 8, !dbg !664
  %15 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp2, align 8, !dbg !663
  br label %cond.end, !dbg !660

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !660

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.drm_hash_item* [ %15, %do.end ], [ null, %cond.false ], !dbg !660
  store %struct.drm_hash_item* %cond, %struct.drm_hash_item** %tmp, align 8, !dbg !660
  %16 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp, align 8, !dbg !660
  store %struct.drm_hash_item* %16, %struct.drm_hash_item** %entry1, align 8, !dbg !666
  br label %for.cond, !dbg !666

for.cond:                                         ; preds = %cond.end22, %cond.end
  %17 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !667
  %tobool3 = icmp ne %struct.drm_hash_item* %17, null, !dbg !666
  br i1 %tobool3, label %for.body, label %for.end, !dbg !666

for.body:                                         ; preds = %for.cond
  %18 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !669
  %key4 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %18, i32 0, i32 1, !dbg !672
  %19 = load i64, i64* %key4, align 8, !dbg !672
  %20 = load i64, i64* %key.addr, align 8, !dbg !673
  %cmp = icmp eq i64 %19, %20, !dbg !674
  br i1 %cmp, label %if.then, label %if.end, !dbg !675

if.then:                                          ; preds = %for.body
  %21 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !676
  %head = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %21, i32 0, i32 0, !dbg !677
  store %struct.hlist_node* %head, %struct.hlist_node** %retval, align 8, !dbg !678
  br label %return, !dbg !678

if.end:                                           ; preds = %for.body
  %22 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !679
  %key6 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %22, i32 0, i32 1, !dbg !681
  %23 = load i64, i64* %key6, align 8, !dbg !681
  %24 = load i64, i64* %key.addr, align 8, !dbg !682
  %cmp7 = icmp ugt i64 %23, %24, !dbg !683
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !684

if.then9:                                         ; preds = %if.end
  br label %for.end, !dbg !685

if.end10:                                         ; preds = %if.end
  br label %for.inc, !dbg !686

for.inc:                                          ; preds = %if.end10
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %____ptr11, metadata !687, metadata !DIExpression()), !dbg !689
  %25 = load %struct.drm_hash_item*, %struct.drm_hash_item** %entry1, align 8, !dbg !689
  %head12 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %25, i32 0, i32 0, !dbg !689
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %head12, i32 0, i32 0, !dbg !689
  %26 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8, !dbg !689
  store %struct.hlist_node* %26, %struct.hlist_node** %____ptr11, align 8, !dbg !689
  %27 = load %struct.hlist_node*, %struct.hlist_node** %____ptr11, align 8, !dbg !689
  %tobool14 = icmp ne %struct.hlist_node* %27, null, !dbg !689
  br i1 %tobool14, label %cond.true15, label %cond.false21, !dbg !689

cond.true15:                                      ; preds = %for.inc
  call void @llvm.dbg.declare(metadata i8** %__mptr16, metadata !690, metadata !DIExpression()), !dbg !692
  %28 = load %struct.hlist_node*, %struct.hlist_node** %____ptr11, align 8, !dbg !692
  %29 = bitcast %struct.hlist_node* %28 to i8*, !dbg !692
  store i8* %29, i8** %__mptr16, align 8, !dbg !692
  br label %do.body17, !dbg !692

do.body17:                                        ; preds = %cond.true15
  br label %do.end18, !dbg !693

do.end18:                                         ; preds = %do.body17
  %30 = load i8*, i8** %__mptr16, align 8, !dbg !692
  %add.ptr20 = getelementptr i8, i8* %30, i64 0, !dbg !692
  %31 = bitcast i8* %add.ptr20 to %struct.drm_hash_item*, !dbg !692
  store %struct.drm_hash_item* %31, %struct.drm_hash_item** %tmp19, align 8, !dbg !693
  %32 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp19, align 8, !dbg !692
  br label %cond.end22, !dbg !689

cond.false21:                                     ; preds = %for.inc
  br label %cond.end22, !dbg !689

cond.end22:                                       ; preds = %cond.false21, %do.end18
  %cond23 = phi %struct.drm_hash_item* [ %32, %do.end18 ], [ null, %cond.false21 ], !dbg !689
  store %struct.drm_hash_item* %cond23, %struct.drm_hash_item** %tmp13, align 8, !dbg !689
  %33 = load %struct.drm_hash_item*, %struct.drm_hash_item** %tmp13, align 8, !dbg !689
  store %struct.drm_hash_item* %33, %struct.drm_hash_item** %entry1, align 8, !dbg !667
  br label %for.cond, !dbg !667, !llvm.loop !695

for.end:                                          ; preds = %if.then9, %for.cond
  store %struct.hlist_node* null, %struct.hlist_node** %retval, align 8, !dbg !697
  br label %return, !dbg !697

return:                                           ; preds = %for.end, %if.then
  %34 = load %struct.hlist_node*, %struct.hlist_node** %retval, align 8, !dbg !698
  ret %struct.hlist_node* %34, !dbg !698
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hlist_del_init_rcu(%struct.hlist_node* %n) #0 !dbg !699 {
entry:
  %n.addr = alloca %struct.hlist_node*, align 8
  store %struct.hlist_node* %n, %struct.hlist_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %n.addr, metadata !702, metadata !DIExpression()), !dbg !703
  %0 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !704
  %call = call i32 @hlist_unhashed(%struct.hlist_node* %0) #6, !dbg !706
  %tobool = icmp ne i32 %call, 0, !dbg !706
  br i1 %tobool, label %if.end, label %if.then, !dbg !707

if.then:                                          ; preds = %entry
  %1 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !708
  call void @__hlist_del(%struct.hlist_node* %1) #6, !dbg !710
  br label %do.body, !dbg !711

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !712

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !714

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !712

do.body2:                                         ; preds = %do.end
  %2 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !716
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %2, i32 0, i32 1, !dbg !716
  store volatile %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8, !dbg !716
  br label %do.end3, !dbg !716

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !712

do.end4:                                          ; preds = %do.end3
  br label %if.end, !dbg !718

if.end:                                           ; preds = %do.end4, %entry
  ret void, !dbg !719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_ht_remove_item(%struct.drm_open_hash* %ht, %struct.drm_hash_item* %item) #0 !dbg !720 {
entry:
  %ht.addr = alloca %struct.drm_open_hash*, align 8
  %item.addr = alloca %struct.drm_hash_item*, align 8
  store %struct.drm_open_hash* %ht, %struct.drm_open_hash** %ht.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_open_hash** %ht.addr, metadata !721, metadata !DIExpression()), !dbg !722
  store %struct.drm_hash_item* %item, %struct.drm_hash_item** %item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_hash_item** %item.addr, metadata !723, metadata !DIExpression()), !dbg !724
  %0 = load %struct.drm_hash_item*, %struct.drm_hash_item** %item.addr, align 8, !dbg !725
  %head = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %0, i32 0, i32 0, !dbg !726
  call void @hlist_del_init_rcu(%struct.hlist_node* %head) #6, !dbg !727
  ret i32 0, !dbg !728
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_ht_remove(%struct.drm_open_hash* %ht) #0 !dbg !729 {
entry:
  %ht.addr = alloca %struct.drm_open_hash*, align 8
  store %struct.drm_open_hash* %ht, %struct.drm_open_hash** %ht.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_open_hash** %ht.addr, metadata !732, metadata !DIExpression()), !dbg !733
  %0 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !734
  %table = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %0, i32 0, i32 0, !dbg !736
  %1 = load %struct.hlist_head*, %struct.hlist_head** %table, align 8, !dbg !736
  %tobool = icmp ne %struct.hlist_head* %1, null, !dbg !734
  br i1 %tobool, label %if.then, label %if.end, !dbg !737

if.then:                                          ; preds = %entry
  %2 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !738
  %table1 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %2, i32 0, i32 0, !dbg !740
  %3 = load %struct.hlist_head*, %struct.hlist_head** %table1, align 8, !dbg !740
  %4 = bitcast %struct.hlist_head* %3 to i8*, !dbg !738
  call void @kvfree(i8* %4) #6, !dbg !741
  %5 = load %struct.drm_open_hash*, %struct.drm_open_hash** %ht.addr, align 8, !dbg !742
  %table2 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %5, i32 0, i32 0, !dbg !743
  store %struct.hlist_head* null, %struct.hlist_head** %table2, align 8, !dbg !744
  br label %if.end, !dbg !745

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !746
}

; Function Attrs: noredzone
declare dso_local void @kvfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !747 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !748, metadata !DIExpression()), !dbg !755
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !764, metadata !DIExpression()), !dbg !765
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !766, metadata !DIExpression()), !dbg !767
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !768, metadata !DIExpression()), !dbg !769
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !770, metadata !DIExpression()), !dbg !774
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !776, metadata !DIExpression()), !dbg !780
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !782, metadata !DIExpression()), !dbg !786
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !791, metadata !DIExpression()), !dbg !792
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !793, metadata !DIExpression()), !dbg !794
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !795, metadata !DIExpression()), !dbg !796
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !797, metadata !DIExpression()), !dbg !798
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !799, metadata !DIExpression()), !dbg !800
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !801, metadata !DIExpression()), !dbg !802
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !803, metadata !DIExpression()), !dbg !804
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !805, metadata !DIExpression()), !dbg !806
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !807, metadata !DIExpression()), !dbg !808
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !809, metadata !DIExpression()), !dbg !810
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !811, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !813, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !815, metadata !DIExpression()), !dbg !818
  %0 = load i64, i64* %n.addr, align 8, !dbg !818
  store i64 %0, i64* %__a, align 8, !dbg !818
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !819, metadata !DIExpression()), !dbg !818
  %1 = load i64, i64* %size.addr, align 8, !dbg !818
  store i64 %1, i64* %__b, align 8, !dbg !818
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !820, metadata !DIExpression()), !dbg !818
  store i64* %bytes, i64** %__d, align 8, !dbg !818
  %cmp = icmp eq i64* %__a, %__b, !dbg !818
  %conv = zext i1 %cmp to i32, !dbg !818
  %2 = load i64*, i64** %__d, align 8, !dbg !818
  %cmp1 = icmp eq i64* %__a, %2, !dbg !818
  %conv2 = zext i1 %cmp1 to i32, !dbg !818
  %3 = load i64, i64* %__a, align 8, !dbg !818
  %4 = load i64, i64* %__b, align 8, !dbg !818
  %5 = load i64*, i64** %__d, align 8, !dbg !818
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !818
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !818
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !818
  store i64 %8, i64* %5, align 8, !dbg !818
  %frombool = zext i1 %7 to i8, !dbg !818
  store i8 %frombool, i8* %tmp, align 1, !dbg !818
  %9 = load i8, i8* %tmp, align 1, !dbg !818
  %tobool = trunc i8 %9 to i1, !dbg !818
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #6, !dbg !821
  %lnot = xor i1 %call, true, !dbg !821
  %lnot3 = xor i1 %lnot, true, !dbg !821
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !821
  %conv4 = sext i32 %lnot.ext to i64, !dbg !821
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !821
  br i1 %tobool5, label %if.then, label %if.end, !dbg !822

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !823
  br label %return, !dbg !823

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !824
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !825
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !826

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !827
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !828
  br i1 %13, label %if.then6, label %if.end8, !dbg !829

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !830
  %15 = load i32, i32* %flags.addr, align 4, !dbg !831
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !832
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #7, !dbg !833
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !834

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !835
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !836
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !837

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !838
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !839
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !840
  %call.i.i = call i32 @get_order(i64 %21) #8, !dbg !841
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !800
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !842
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !843
  %24 = load i32, i32* %order.i.i, align 4, !dbg !844
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !845
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !846
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !847
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #9, !dbg !848
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !848
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !848
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !848
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !848
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !849
  br label %kmalloc.exit, !dbg !849

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !850
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !851
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !851
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !853

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !854
  br label %kmalloc_index.exit.i, !dbg !854

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !855
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !857
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !858

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !859
  br label %kmalloc_index.exit.i, !dbg !859

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !860
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !862
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !863

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !864
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !865
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !866

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !867
  br label %kmalloc_index.exit.i, !dbg !867

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !868
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !870
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !871

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !872
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !873
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !874

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !875
  br label %kmalloc_index.exit.i, !dbg !875

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !876
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !878
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !879

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !880
  br label %kmalloc_index.exit.i, !dbg !880

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !881
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !883
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !884

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !885
  br label %kmalloc_index.exit.i, !dbg !885

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !886
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !888
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !889

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !890
  br label %kmalloc_index.exit.i, !dbg !890

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !891
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !893
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !894

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !895
  br label %kmalloc_index.exit.i, !dbg !895

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !896
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !898
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !899

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !900
  br label %kmalloc_index.exit.i, !dbg !900

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !901
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !903
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !904

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !905
  br label %kmalloc_index.exit.i, !dbg !905

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !906
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !908
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !909

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !910
  br label %kmalloc_index.exit.i, !dbg !910

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !911
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !913
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !914

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !915
  br label %kmalloc_index.exit.i, !dbg !915

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !916
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !918
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !919

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !920
  br label %kmalloc_index.exit.i, !dbg !920

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !921
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !923
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !924

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !925
  br label %kmalloc_index.exit.i, !dbg !925

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !926
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !928
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !929

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !930
  br label %kmalloc_index.exit.i, !dbg !930

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !931
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !933
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !934

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !935
  br label %kmalloc_index.exit.i, !dbg !935

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !936
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !938
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !939

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !940
  br label %kmalloc_index.exit.i, !dbg !940

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !941
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !943
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !944

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !945
  br label %kmalloc_index.exit.i, !dbg !945

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !946
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !948
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !949

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !950
  br label %kmalloc_index.exit.i, !dbg !950

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !951
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !953
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !954

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !955
  br label %kmalloc_index.exit.i, !dbg !955

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !956
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !958
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !959

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !960
  br label %kmalloc_index.exit.i, !dbg !960

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !961
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !963
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !964

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !965
  br label %kmalloc_index.exit.i, !dbg !965

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !966
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !968
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !969

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !970
  br label %kmalloc_index.exit.i, !dbg !970

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !971
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !973
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !974

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !975
  br label %kmalloc_index.exit.i, !dbg !975

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !976
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !978
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !979

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !980
  br label %kmalloc_index.exit.i, !dbg !980

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !981
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !983
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !984

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !985
  br label %kmalloc_index.exit.i, !dbg !985

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !986
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !988
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !989

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !990
  br label %kmalloc_index.exit.i, !dbg !990

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !991
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !993
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !994

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !995
  br label %kmalloc_index.exit.i, !dbg !995

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !996, !srcloc !999
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 214) #7, !dbg !1000, !srcloc !1003
  unreachable, !dbg !1004

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !1005
  store i32 %59, i32* %index.i, align 4, !dbg !1006
  %60 = load i32, i32* %index.i, align 4, !dbg !1007
  %tobool.i = icmp ne i32 %60, 0, !dbg !1007
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1009

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1010
  br label %kmalloc.exit, !dbg !1010

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !1011
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1012
  %and.i.i = and i32 %62, 17, !dbg !1012
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1012
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1012
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1012
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1012
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1014

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1015
  br label %kmalloc_type.exit.i, !dbg !1015

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1016
  %and2.i.i = and i32 %63, 1, !dbg !1017
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1016
  %64 = zext i1 %tobool3.i.i to i64, !dbg !1016
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1016
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1018
  br label %kmalloc_type.exit.i, !dbg !1018

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !1019
  %idxprom.i = zext i32 %65 to i64, !dbg !1020
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1020
  %66 = load i32, i32* %index.i, align 4, !dbg !1021
  %idxprom6.i = zext i32 %66 to i64, !dbg !1020
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1020
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1020
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !1022
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !1023
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1024
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1025
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #9, !dbg !1026
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1026
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1026
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1026
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1026
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !769
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1027
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !1028
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1029
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1030
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #9, !dbg !1031
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1032
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !1033
  store i8* %76, i8** %retval.i, align 8, !dbg !1034
  br label %kmalloc.exit, !dbg !1034

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !1035
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !1036
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #9, !dbg !1037
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1037
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1037
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1037
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1037
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1038
  br label %kmalloc.exit, !dbg !1038

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !1039
  store i8* %79, i8** %retval, align 8, !dbg !1040
  br label %return, !dbg !1040

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !1041
  %81 = load i32, i32* %flags.addr, align 4, !dbg !1042
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #6, !dbg !1043
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !1043
  %maskedptr = and i64 %ptrint, 7, !dbg !1043
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !1043
  call void @llvm.assume(i1 %maskcond), !dbg !1043
  store i8* %call9, i8** %retval, align 8, !dbg !1044
  br label %return, !dbg !1044

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !1045
  ret i8* %82, !dbg !1045
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !1046 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !1051, metadata !DIExpression()), !dbg !1052
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !1053
  %tobool = trunc i8 %0 to i1, !dbg !1053
  %lnot = xor i1 %tobool, true, !dbg !1053
  %lnot1 = xor i1 %lnot, true, !dbg !1053
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1053
  %conv = sext i32 %lnot.ext to i64, !dbg !1053
  %tobool2 = icmp ne i64 %conv, 0, !dbg !1053
  ret i1 %tobool2, !dbg !1054
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1055 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1059, metadata !DIExpression()), !dbg !1064
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1066, metadata !DIExpression()), !dbg !1067
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1068, metadata !DIExpression()), !dbg !1069
  %0 = load i64, i64* %size.addr, align 8, !dbg !1070
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1072
  br i1 %1, label %if.then, label %if.end447, !dbg !1073

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1074
  %tobool = icmp ne i64 %2, 0, !dbg !1074
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1077

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1078
  br label %return, !dbg !1078

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1079
  %cmp = icmp ult i64 %3, 4096, !dbg !1081
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1082

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1083
  br label %return, !dbg !1083

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub = sub i64 %4, 1, !dbg !1084
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1084
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1084

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub4 = sub i64 %6, 1, !dbg !1084
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1084
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1084

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub6 = sub i64 %8, 1, !dbg !1084
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1084
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1084

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1084

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub9 = sub i64 %9, 1, !dbg !1084
  %and = and i64 %sub9, -9223372036854775808, !dbg !1084
  %tobool10 = icmp ne i64 %and, 0, !dbg !1084
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1084

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1084

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub13 = sub i64 %10, 1, !dbg !1084
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1084
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1084
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1084

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1084

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub18 = sub i64 %11, 1, !dbg !1084
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1084
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1084
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1084

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1084

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub23 = sub i64 %12, 1, !dbg !1084
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1084
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1084
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1084

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1084

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub28 = sub i64 %13, 1, !dbg !1084
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1084
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1084
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1084

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1084

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub33 = sub i64 %14, 1, !dbg !1084
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1084
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1084
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1084

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1084

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub38 = sub i64 %15, 1, !dbg !1084
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1084
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1084
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1084

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1084

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub43 = sub i64 %16, 1, !dbg !1084
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1084
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1084
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1084

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1084

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub48 = sub i64 %17, 1, !dbg !1084
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1084
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1084
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1084

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1084

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub53 = sub i64 %18, 1, !dbg !1084
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1084
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1084
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1084

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1084

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub58 = sub i64 %19, 1, !dbg !1084
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1084
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1084
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1084

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1084

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub63 = sub i64 %20, 1, !dbg !1084
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1084
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1084
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1084

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1084

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub68 = sub i64 %21, 1, !dbg !1084
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1084
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1084
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1084

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1084

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub73 = sub i64 %22, 1, !dbg !1084
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1084
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1084
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1084

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1084

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub78 = sub i64 %23, 1, !dbg !1084
  %and79 = and i64 %sub78, 562949953421312, !dbg !1084
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1084
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1084

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1084

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub83 = sub i64 %24, 1, !dbg !1084
  %and84 = and i64 %sub83, 281474976710656, !dbg !1084
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1084
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1084

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1084

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub88 = sub i64 %25, 1, !dbg !1084
  %and89 = and i64 %sub88, 140737488355328, !dbg !1084
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1084
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1084

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1084

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub93 = sub i64 %26, 1, !dbg !1084
  %and94 = and i64 %sub93, 70368744177664, !dbg !1084
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1084
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1084

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1084

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub98 = sub i64 %27, 1, !dbg !1084
  %and99 = and i64 %sub98, 35184372088832, !dbg !1084
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1084
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1084

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1084

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub103 = sub i64 %28, 1, !dbg !1084
  %and104 = and i64 %sub103, 17592186044416, !dbg !1084
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1084
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1084

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1084

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub108 = sub i64 %29, 1, !dbg !1084
  %and109 = and i64 %sub108, 8796093022208, !dbg !1084
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1084
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1084

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1084

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub113 = sub i64 %30, 1, !dbg !1084
  %and114 = and i64 %sub113, 4398046511104, !dbg !1084
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1084
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1084

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1084

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub118 = sub i64 %31, 1, !dbg !1084
  %and119 = and i64 %sub118, 2199023255552, !dbg !1084
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1084
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1084

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1084

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub123 = sub i64 %32, 1, !dbg !1084
  %and124 = and i64 %sub123, 1099511627776, !dbg !1084
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1084
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1084

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1084

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub128 = sub i64 %33, 1, !dbg !1084
  %and129 = and i64 %sub128, 549755813888, !dbg !1084
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1084
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1084

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1084

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub133 = sub i64 %34, 1, !dbg !1084
  %and134 = and i64 %sub133, 274877906944, !dbg !1084
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1084
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1084

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1084

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub138 = sub i64 %35, 1, !dbg !1084
  %and139 = and i64 %sub138, 137438953472, !dbg !1084
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1084
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1084

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1084

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub143 = sub i64 %36, 1, !dbg !1084
  %and144 = and i64 %sub143, 68719476736, !dbg !1084
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1084
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1084

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1084

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub148 = sub i64 %37, 1, !dbg !1084
  %and149 = and i64 %sub148, 34359738368, !dbg !1084
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1084
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1084

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1084

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub153 = sub i64 %38, 1, !dbg !1084
  %and154 = and i64 %sub153, 17179869184, !dbg !1084
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1084
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1084

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1084

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub158 = sub i64 %39, 1, !dbg !1084
  %and159 = and i64 %sub158, 8589934592, !dbg !1084
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1084
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1084

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1084

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub163 = sub i64 %40, 1, !dbg !1084
  %and164 = and i64 %sub163, 4294967296, !dbg !1084
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1084
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1084

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1084

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub168 = sub i64 %41, 1, !dbg !1084
  %and169 = and i64 %sub168, 2147483648, !dbg !1084
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1084
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1084

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1084

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub173 = sub i64 %42, 1, !dbg !1084
  %and174 = and i64 %sub173, 1073741824, !dbg !1084
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1084
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1084

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1084

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub178 = sub i64 %43, 1, !dbg !1084
  %and179 = and i64 %sub178, 536870912, !dbg !1084
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1084
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1084

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1084

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub183 = sub i64 %44, 1, !dbg !1084
  %and184 = and i64 %sub183, 268435456, !dbg !1084
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1084
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1084

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1084

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub188 = sub i64 %45, 1, !dbg !1084
  %and189 = and i64 %sub188, 134217728, !dbg !1084
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1084
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1084

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1084

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub193 = sub i64 %46, 1, !dbg !1084
  %and194 = and i64 %sub193, 67108864, !dbg !1084
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1084
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1084

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1084

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub198 = sub i64 %47, 1, !dbg !1084
  %and199 = and i64 %sub198, 33554432, !dbg !1084
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1084
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1084

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1084

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub203 = sub i64 %48, 1, !dbg !1084
  %and204 = and i64 %sub203, 16777216, !dbg !1084
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1084
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1084

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1084

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub208 = sub i64 %49, 1, !dbg !1084
  %and209 = and i64 %sub208, 8388608, !dbg !1084
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1084
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1084

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1084

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub213 = sub i64 %50, 1, !dbg !1084
  %and214 = and i64 %sub213, 4194304, !dbg !1084
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1084
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1084

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1084

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub218 = sub i64 %51, 1, !dbg !1084
  %and219 = and i64 %sub218, 2097152, !dbg !1084
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1084
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1084

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1084

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub223 = sub i64 %52, 1, !dbg !1084
  %and224 = and i64 %sub223, 1048576, !dbg !1084
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1084
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1084

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1084

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub228 = sub i64 %53, 1, !dbg !1084
  %and229 = and i64 %sub228, 524288, !dbg !1084
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1084
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1084

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1084

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub233 = sub i64 %54, 1, !dbg !1084
  %and234 = and i64 %sub233, 262144, !dbg !1084
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1084
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1084

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1084

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub238 = sub i64 %55, 1, !dbg !1084
  %and239 = and i64 %sub238, 131072, !dbg !1084
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1084
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1084

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1084

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub243 = sub i64 %56, 1, !dbg !1084
  %and244 = and i64 %sub243, 65536, !dbg !1084
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1084
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1084

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1084

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub248 = sub i64 %57, 1, !dbg !1084
  %and249 = and i64 %sub248, 32768, !dbg !1084
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1084
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1084

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1084

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub253 = sub i64 %58, 1, !dbg !1084
  %and254 = and i64 %sub253, 16384, !dbg !1084
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1084
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1084

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1084

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub258 = sub i64 %59, 1, !dbg !1084
  %and259 = and i64 %sub258, 8192, !dbg !1084
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1084
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1084

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1084

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub263 = sub i64 %60, 1, !dbg !1084
  %and264 = and i64 %sub263, 4096, !dbg !1084
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1084
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1084

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1084

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub268 = sub i64 %61, 1, !dbg !1084
  %and269 = and i64 %sub268, 2048, !dbg !1084
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1084
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1084

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1084

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub273 = sub i64 %62, 1, !dbg !1084
  %and274 = and i64 %sub273, 1024, !dbg !1084
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1084
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1084

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1084

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub278 = sub i64 %63, 1, !dbg !1084
  %and279 = and i64 %sub278, 512, !dbg !1084
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1084
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1084

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1084

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub283 = sub i64 %64, 1, !dbg !1084
  %and284 = and i64 %sub283, 256, !dbg !1084
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1084
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1084

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1084

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub288 = sub i64 %65, 1, !dbg !1084
  %and289 = and i64 %sub288, 128, !dbg !1084
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1084
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1084

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1084

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub293 = sub i64 %66, 1, !dbg !1084
  %and294 = and i64 %sub293, 64, !dbg !1084
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1084
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1084

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1084

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub298 = sub i64 %67, 1, !dbg !1084
  %and299 = and i64 %sub298, 32, !dbg !1084
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1084
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1084

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1084

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub303 = sub i64 %68, 1, !dbg !1084
  %and304 = and i64 %sub303, 16, !dbg !1084
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1084
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1084

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1084

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub308 = sub i64 %69, 1, !dbg !1084
  %and309 = and i64 %sub308, 8, !dbg !1084
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1084
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1084

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1084

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub313 = sub i64 %70, 1, !dbg !1084
  %and314 = and i64 %sub313, 4, !dbg !1084
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1084
  %71 = zext i1 %tobool315 to i64, !dbg !1084
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1084
  br label %cond.end, !dbg !1084

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1084
  br label %cond.end317, !dbg !1084

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1084
  br label %cond.end319, !dbg !1084

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1084
  br label %cond.end321, !dbg !1084

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1084
  br label %cond.end323, !dbg !1084

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1084
  br label %cond.end325, !dbg !1084

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1084
  br label %cond.end327, !dbg !1084

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1084
  br label %cond.end329, !dbg !1084

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1084
  br label %cond.end331, !dbg !1084

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1084
  br label %cond.end333, !dbg !1084

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1084
  br label %cond.end335, !dbg !1084

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1084
  br label %cond.end337, !dbg !1084

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1084
  br label %cond.end339, !dbg !1084

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1084
  br label %cond.end341, !dbg !1084

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1084
  br label %cond.end343, !dbg !1084

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1084
  br label %cond.end345, !dbg !1084

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1084
  br label %cond.end347, !dbg !1084

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1084
  br label %cond.end349, !dbg !1084

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1084
  br label %cond.end351, !dbg !1084

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1084
  br label %cond.end353, !dbg !1084

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1084
  br label %cond.end355, !dbg !1084

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1084
  br label %cond.end357, !dbg !1084

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1084
  br label %cond.end359, !dbg !1084

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1084
  br label %cond.end361, !dbg !1084

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1084
  br label %cond.end363, !dbg !1084

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1084
  br label %cond.end365, !dbg !1084

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1084
  br label %cond.end367, !dbg !1084

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1084
  br label %cond.end369, !dbg !1084

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1084
  br label %cond.end371, !dbg !1084

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1084
  br label %cond.end373, !dbg !1084

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1084
  br label %cond.end375, !dbg !1084

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1084
  br label %cond.end377, !dbg !1084

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1084
  br label %cond.end379, !dbg !1084

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1084
  br label %cond.end381, !dbg !1084

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1084
  br label %cond.end383, !dbg !1084

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1084
  br label %cond.end385, !dbg !1084

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1084
  br label %cond.end387, !dbg !1084

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1084
  br label %cond.end389, !dbg !1084

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1084
  br label %cond.end391, !dbg !1084

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1084
  br label %cond.end393, !dbg !1084

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1084
  br label %cond.end395, !dbg !1084

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1084
  br label %cond.end397, !dbg !1084

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1084
  br label %cond.end399, !dbg !1084

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1084
  br label %cond.end401, !dbg !1084

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1084
  br label %cond.end403, !dbg !1084

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1084
  br label %cond.end405, !dbg !1084

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1084
  br label %cond.end407, !dbg !1084

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1084
  br label %cond.end409, !dbg !1084

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1084
  br label %cond.end411, !dbg !1084

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1084
  br label %cond.end413, !dbg !1084

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1084
  br label %cond.end415, !dbg !1084

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1084
  br label %cond.end417, !dbg !1084

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1084
  br label %cond.end419, !dbg !1084

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1084
  br label %cond.end421, !dbg !1084

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1084
  br label %cond.end423, !dbg !1084

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1084
  br label %cond.end425, !dbg !1084

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1084
  br label %cond.end427, !dbg !1084

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1084
  br label %cond.end429, !dbg !1084

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1084
  br label %cond.end431, !dbg !1084

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1084
  br label %cond.end433, !dbg !1084

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1084
  br label %cond.end435, !dbg !1084

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1084
  br label %cond.end437, !dbg !1084

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1084
  br label %cond.end440, !dbg !1084

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1084

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1084
  br label %cond.end444, !dbg !1084

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1084
  %sub443 = sub i64 %72, 1, !dbg !1084
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !1084
  br label %cond.end444, !dbg !1084

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1084
  %sub446 = sub i32 %cond445, 12, !dbg !1085
  %add = add i32 %sub446, 1, !dbg !1086
  store i32 %add, i32* %retval, align 4, !dbg !1087
  br label %return, !dbg !1087

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1088
  %dec = add i64 %73, -1, !dbg !1088
  store i64 %dec, i64* %size.addr, align 8, !dbg !1088
  %74 = load i64, i64* %size.addr, align 8, !dbg !1089
  %shr = lshr i64 %74, 12, !dbg !1089
  store i64 %shr, i64* %size.addr, align 8, !dbg !1089
  %75 = load i64, i64* %size.addr, align 8, !dbg !1090
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1067
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1091
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1092
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !1091, !srcloc !1093
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1091
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1094
  %add.i = add i32 %79, 1, !dbg !1095
  store i32 %add.i, i32* %retval, align 4, !dbg !1096
  br label %return, !dbg !1096

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1097
  ret i32 %80, !dbg !1097
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1098 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1059, metadata !DIExpression()), !dbg !1102
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1066, metadata !DIExpression()), !dbg !1104
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1105, metadata !DIExpression()), !dbg !1106
  %0 = load i64, i64* %n.addr, align 8, !dbg !1107
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1104
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1108
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1109
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !1108, !srcloc !1093
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1108
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1110
  %add.i = add i32 %4, 1, !dbg !1111
  %sub = sub i32 %add.i, 1, !dbg !1112
  ret i32 %sub, !dbg !1113
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1114 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1120, metadata !DIExpression()), !dbg !1121
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1122, metadata !DIExpression()), !dbg !1123
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1124, metadata !DIExpression()), !dbg !1125
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1126, metadata !DIExpression()), !dbg !1127
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1128
  ret i8* %0, !dbg !1129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hlist_unhashed(%struct.hlist_node* %h) #0 !dbg !1130 {
entry:
  %h.addr = alloca %struct.hlist_node*, align 8
  store %struct.hlist_node* %h, %struct.hlist_node** %h.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %h.addr, metadata !1136, metadata !DIExpression()), !dbg !1137
  %0 = load %struct.hlist_node*, %struct.hlist_node** %h.addr, align 8, !dbg !1138
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i32 0, i32 1, !dbg !1139
  %1 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8, !dbg !1139
  %tobool = icmp ne %struct.hlist_node** %1, null, !dbg !1140
  %lnot = xor i1 %tobool, true, !dbg !1140
  %lnot.ext = zext i1 %lnot to i32, !dbg !1140
  ret i32 %lnot.ext, !dbg !1141
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__hlist_del(%struct.hlist_node* %n) #0 !dbg !1142 {
entry:
  %n.addr = alloca %struct.hlist_node*, align 8
  %next = alloca %struct.hlist_node*, align 8
  %pprev = alloca %struct.hlist_node**, align 8
  store %struct.hlist_node* %n, %struct.hlist_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %n.addr, metadata !1143, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %next, metadata !1145, metadata !DIExpression()), !dbg !1146
  %0 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !1147
  %next1 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i32 0, i32 0, !dbg !1148
  %1 = load %struct.hlist_node*, %struct.hlist_node** %next1, align 8, !dbg !1148
  store %struct.hlist_node* %1, %struct.hlist_node** %next, align 8, !dbg !1146
  call void @llvm.dbg.declare(metadata %struct.hlist_node*** %pprev, metadata !1149, metadata !DIExpression()), !dbg !1150
  %2 = load %struct.hlist_node*, %struct.hlist_node** %n.addr, align 8, !dbg !1151
  %pprev2 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %2, i32 0, i32 1, !dbg !1152
  %3 = load %struct.hlist_node**, %struct.hlist_node*** %pprev2, align 8, !dbg !1152
  store %struct.hlist_node** %3, %struct.hlist_node*** %pprev, align 8, !dbg !1150
  br label %do.body, !dbg !1153

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !1154

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !1156

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !1154

do.body4:                                         ; preds = %do.end
  %4 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8, !dbg !1158
  %5 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8, !dbg !1158
  store volatile %struct.hlist_node* %4, %struct.hlist_node** %5, align 8, !dbg !1158
  br label %do.end5, !dbg !1158

do.end5:                                          ; preds = %do.body4
  br label %do.end6, !dbg !1154

do.end6:                                          ; preds = %do.end5
  %6 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8, !dbg !1160
  %tobool = icmp ne %struct.hlist_node* %6, null, !dbg !1160
  br i1 %tobool, label %if.then, label %if.end, !dbg !1162

if.then:                                          ; preds = %do.end6
  br label %do.body7, !dbg !1163

do.body7:                                         ; preds = %if.then
  br label %do.body8, !dbg !1164

do.body8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !1166

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !1164

do.body10:                                        ; preds = %do.end9
  %7 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8, !dbg !1168
  %8 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8, !dbg !1168
  %pprev11 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %8, i32 0, i32 1, !dbg !1168
  store volatile %struct.hlist_node** %7, %struct.hlist_node*** %pprev11, align 8, !dbg !1168
  br label %do.end12, !dbg !1168

do.end12:                                         ; preds = %do.body10
  br label %do.end13, !dbg !1164

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !1164

if.end:                                           ; preds = %do.end13, %do.end6
  ret void, !dbg !1170
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind readnone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !24, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/drm_hashtab.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !17}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !4, line: 277, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!7 = !DIEnumerator(name: "DRM_UT_CORE", value: 1, isUnsigned: true)
!8 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 2, isUnsigned: true)
!9 = !DIEnumerator(name: "DRM_UT_KMS", value: 4, isUnsigned: true)
!10 = !DIEnumerator(name: "DRM_UT_PRIME", value: 8, isUnsigned: true)
!11 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 16, isUnsigned: true)
!12 = !DIEnumerator(name: "DRM_UT_VBL", value: 32, isUnsigned: true)
!13 = !DIEnumerator(name: "DRM_UT_STATE", value: 64, isUnsigned: true)
!14 = !DIEnumerator(name: "DRM_UT_LEASE", value: 128, isUnsigned: true)
!15 = !DIEnumerator(name: "DRM_UT_DP", value: 256, isUnsigned: true)
!16 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 512, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !18, line: 305, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!24 = !{!25, !27, !28, !41, !45, !47, !36, !48, !38, !50}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !26, line: 148, baseType: !5)
!26 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hash_item", file: !30, line: 42, size: 192, elements: !31)
!30 = !DIFile(filename: "./include/drm/drm_hashtab.h", directory: "/home/lizy2001/genbc/linux")
!31 = !{!32, !39}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !29, file: !30, line: 43, baseType: !33, size: 128)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !26, line: 186, size: 128, elements: !34)
!34 = !{!35, !37}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !33, file: !26, line: 187, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !33, file: !26, line: 187, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !29, file: !30, line: 44, baseType: !40, size: 64, offset: 128)
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 55, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !43, line: 72, baseType: !44)
!43 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !43, line: 16, baseType: !40)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !26, line: 37, baseType: !40)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"Code Model", i32 2}
!56 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!57 = distinct !DISubprogram(name: "drm_ht_create", scope: !1, file: !1, line: 45, type: !58, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !75)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !61, !5}
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_open_hash", file: !30, line: 47, size: 128, elements: !63)
!63 = !{!64, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !62, file: !30, line: 48, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !26, line: 182, size: 64, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !66, file: !26, line: 183, baseType: !36, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !62, file: !30, line: 49, baseType: !70, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !71, line: 17, baseType: !72)
!71 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !73, line: 21, baseType: !74)
!73 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !{}
!76 = !DILocalVariable(name: "ht", arg: 1, scope: !57, file: !1, line: 45, type: !61)
!77 = !DILocation(line: 45, column: 41, scope: !57)
!78 = !DILocalVariable(name: "order", arg: 2, scope: !57, file: !1, line: 45, type: !5)
!79 = !DILocation(line: 45, column: 58, scope: !57)
!80 = !DILocalVariable(name: "size", scope: !57, file: !1, line: 47, type: !5)
!81 = !DILocation(line: 47, column: 15, scope: !57)
!82 = !DILocation(line: 47, column: 27, scope: !57)
!83 = !DILocation(line: 47, column: 24, scope: !57)
!84 = !DILocation(line: 49, column: 14, scope: !57)
!85 = !DILocation(line: 49, column: 2, scope: !57)
!86 = !DILocation(line: 49, column: 6, scope: !57)
!87 = !DILocation(line: 49, column: 12, scope: !57)
!88 = !DILocation(line: 50, column: 2, scope: !57)
!89 = !DILocation(line: 50, column: 6, scope: !57)
!90 = !DILocation(line: 50, column: 12, scope: !57)
!91 = !DILocation(line: 51, column: 6, scope: !92)
!92 = distinct !DILexicalBlock(scope: !57, file: !1, line: 51, column: 6)
!93 = !DILocation(line: 51, column: 11, scope: !92)
!94 = !DILocation(line: 51, column: 6, scope: !57)
!95 = !DILocation(line: 52, column: 23, scope: !92)
!96 = !DILocation(line: 52, column: 15, scope: !92)
!97 = !DILocation(line: 52, column: 3, scope: !92)
!98 = !DILocation(line: 52, column: 7, scope: !92)
!99 = !DILocation(line: 52, column: 13, scope: !92)
!100 = !DILocation(line: 54, column: 34, scope: !92)
!101 = !DILocation(line: 54, column: 23, scope: !92)
!102 = !DILocation(line: 54, column: 15, scope: !92)
!103 = !DILocation(line: 54, column: 3, scope: !92)
!104 = !DILocation(line: 54, column: 7, scope: !92)
!105 = !DILocation(line: 54, column: 13, scope: !92)
!106 = !DILocation(line: 55, column: 7, scope: !107)
!107 = distinct !DILexicalBlock(scope: !57, file: !1, line: 55, column: 6)
!108 = !DILocation(line: 55, column: 11, scope: !107)
!109 = !DILocation(line: 55, column: 6, scope: !57)
!110 = !DILocation(line: 56, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 55, column: 18)
!112 = !DILocation(line: 57, column: 3, scope: !111)
!113 = !DILocation(line: 59, column: 2, scope: !57)
!114 = !DILocation(line: 60, column: 1, scope: !57)
!115 = distinct !DISubprogram(name: "kcalloc", scope: !18, file: !18, line: 601, type: !116, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!116 = !DISubroutineType(types: !117)
!117 = !{!27, !41, !41, !25}
!118 = !DILocalVariable(name: "n", arg: 1, scope: !115, file: !18, line: 601, type: !41)
!119 = !DILocation(line: 601, column: 36, scope: !115)
!120 = !DILocalVariable(name: "size", arg: 2, scope: !115, file: !18, line: 601, type: !41)
!121 = !DILocation(line: 601, column: 46, scope: !115)
!122 = !DILocalVariable(name: "flags", arg: 3, scope: !115, file: !18, line: 601, type: !25)
!123 = !DILocation(line: 601, column: 58, scope: !115)
!124 = !DILocation(line: 603, column: 23, scope: !115)
!125 = !DILocation(line: 603, column: 26, scope: !115)
!126 = !DILocation(line: 603, column: 32, scope: !115)
!127 = !DILocation(line: 603, column: 38, scope: !115)
!128 = !DILocation(line: 603, column: 9, scope: !115)
!129 = !DILocation(line: 603, column: 2, scope: !115)
!130 = distinct !DISubprogram(name: "array_size", scope: !131, file: !131, line: 263, type: !132, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!131 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!132 = !DISubroutineType(types: !133)
!133 = !{!41, !41, !41}
!134 = !DILocalVariable(name: "a", arg: 1, scope: !130, file: !131, line: 263, type: !41)
!135 = !DILocation(line: 263, column: 53, scope: !130)
!136 = !DILocalVariable(name: "b", arg: 2, scope: !130, file: !131, line: 263, type: !41)
!137 = !DILocation(line: 263, column: 63, scope: !130)
!138 = !DILocalVariable(name: "bytes", scope: !130, file: !131, line: 265, type: !41)
!139 = !DILocation(line: 265, column: 9, scope: !130)
!140 = !DILocalVariable(name: "__a", scope: !141, file: !131, line: 267, type: !41)
!141 = distinct !DILexicalBlock(scope: !142, file: !131, line: 267, column: 6)
!142 = distinct !DILexicalBlock(scope: !130, file: !131, line: 267, column: 6)
!143 = !DILocation(line: 267, column: 6, scope: !141)
!144 = !DILocalVariable(name: "__b", scope: !141, file: !131, line: 267, type: !41)
!145 = !DILocalVariable(name: "__d", scope: !141, file: !131, line: 267, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!147 = !DILocation(line: 267, column: 6, scope: !142)
!148 = !DILocation(line: 267, column: 6, scope: !130)
!149 = !DILocation(line: 268, column: 3, scope: !142)
!150 = !DILocation(line: 270, column: 9, scope: !130)
!151 = !DILocation(line: 270, column: 2, scope: !130)
!152 = !DILocation(line: 271, column: 1, scope: !130)
!153 = distinct !DISubprogram(name: "drm_ht_verbose_list", scope: !1, file: !1, line: 63, type: !154, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !75)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !61, !40}
!156 = !DILocalVariable(name: "val", arg: 1, scope: !157, file: !158, line: 77, type: !163)
!157 = distinct !DISubprogram(name: "hash_64_generic", scope: !158, file: !158, line: 77, type: !159, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!158 = !DIFile(filename: "./include/linux/hash.h", directory: "/home/lizy2001/genbc/linux")
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !163, !5}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !71, line: 21, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !73, line: 27, baseType: !5)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !71, line: 23, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !73, line: 31, baseType: !165)
!165 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!166 = !DILocation(line: 77, column: 48, scope: !157, inlinedAt: !167)
!167 = distinct !DILocation(line: 70, column: 15, scope: !153)
!168 = !DILocalVariable(name: "bits", arg: 2, scope: !157, file: !158, line: 77, type: !5)
!169 = !DILocation(line: 77, column: 66, scope: !157, inlinedAt: !167)
!170 = !DILocalVariable(name: "ht", arg: 1, scope: !153, file: !1, line: 63, type: !61)
!171 = !DILocation(line: 63, column: 48, scope: !153)
!172 = !DILocalVariable(name: "key", arg: 2, scope: !153, file: !1, line: 63, type: !40)
!173 = !DILocation(line: 63, column: 66, scope: !153)
!174 = !DILocalVariable(name: "entry", scope: !153, file: !1, line: 65, type: !28)
!175 = !DILocation(line: 65, column: 24, scope: !153)
!176 = !DILocalVariable(name: "h_list", scope: !153, file: !1, line: 66, type: !65)
!177 = !DILocation(line: 66, column: 21, scope: !153)
!178 = !DILocalVariable(name: "hashed_key", scope: !153, file: !1, line: 67, type: !5)
!179 = !DILocation(line: 67, column: 15, scope: !153)
!180 = !DILocalVariable(name: "count", scope: !153, file: !1, line: 68, type: !60)
!181 = !DILocation(line: 68, column: 6, scope: !153)
!182 = !DILocation(line: 70, column: 15, scope: !153)
!183 = !DILocation(line: 81, column: 9, scope: !157, inlinedAt: !167)
!184 = !DILocation(line: 81, column: 13, scope: !157, inlinedAt: !167)
!185 = !DILocation(line: 81, column: 40, scope: !157, inlinedAt: !167)
!186 = !DILocation(line: 81, column: 38, scope: !157, inlinedAt: !167)
!187 = !DILocation(line: 81, column: 31, scope: !157, inlinedAt: !167)
!188 = !DILocation(line: 70, column: 13, scope: !153)
!189 = !DILocation(line: 71, column: 2, scope: !153)
!190 = !DILocation(line: 72, column: 12, scope: !153)
!191 = !DILocation(line: 72, column: 16, scope: !153)
!192 = !DILocation(line: 72, column: 22, scope: !153)
!193 = !DILocation(line: 72, column: 9, scope: !153)
!194 = !DILocalVariable(name: "____ptr", scope: !195, file: !1, line: 73, type: !36)
!195 = distinct !DILexicalBlock(scope: !196, file: !1, line: 73, column: 2)
!196 = distinct !DILexicalBlock(scope: !153, file: !1, line: 73, column: 2)
!197 = !DILocation(line: 73, column: 2, scope: !195)
!198 = !DILocalVariable(name: "__mptr", scope: !199, file: !1, line: 73, type: !27)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 73, column: 2)
!200 = !DILocation(line: 73, column: 2, scope: !199)
!201 = !DILocation(line: 73, column: 2, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 73, column: 2)
!203 = !DILocation(line: 73, column: 2, scope: !196)
!204 = !DILocation(line: 73, column: 2, scope: !205)
!205 = distinct !DILexicalBlock(scope: !196, file: !1, line: 73, column: 2)
!206 = !DILocation(line: 74, column: 3, scope: !205)
!207 = !DILocalVariable(name: "____ptr", scope: !208, file: !1, line: 73, type: !36)
!208 = distinct !DILexicalBlock(scope: !205, file: !1, line: 73, column: 2)
!209 = !DILocation(line: 73, column: 2, scope: !208)
!210 = !DILocalVariable(name: "__mptr", scope: !211, file: !1, line: 73, type: !27)
!211 = distinct !DILexicalBlock(scope: !208, file: !1, line: 73, column: 2)
!212 = !DILocation(line: 73, column: 2, scope: !211)
!213 = !DILocation(line: 73, column: 2, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !1, line: 73, column: 2)
!215 = distinct !{!215, !203, !216}
!216 = !DILocation(line: 74, column: 3, scope: !196)
!217 = !DILocation(line: 75, column: 1, scope: !153)
!218 = distinct !DISubprogram(name: "drm_ht_insert_item", scope: !1, file: !1, line: 113, type: !219, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !75)
!219 = !DISubroutineType(types: !220)
!220 = !{!60, !61, !28}
!221 = !DILocation(line: 77, column: 48, scope: !157, inlinedAt: !222)
!222 = distinct !DILocation(line: 121, column: 15, scope: !218)
!223 = !DILocation(line: 77, column: 66, scope: !157, inlinedAt: !222)
!224 = !DILocalVariable(name: "ht", arg: 1, scope: !218, file: !1, line: 113, type: !61)
!225 = !DILocation(line: 113, column: 46, scope: !218)
!226 = !DILocalVariable(name: "item", arg: 2, scope: !218, file: !1, line: 113, type: !28)
!227 = !DILocation(line: 113, column: 72, scope: !218)
!228 = !DILocalVariable(name: "entry", scope: !218, file: !1, line: 115, type: !28)
!229 = !DILocation(line: 115, column: 24, scope: !218)
!230 = !DILocalVariable(name: "h_list", scope: !218, file: !1, line: 116, type: !65)
!231 = !DILocation(line: 116, column: 21, scope: !218)
!232 = !DILocalVariable(name: "parent", scope: !218, file: !1, line: 117, type: !36)
!233 = !DILocation(line: 117, column: 21, scope: !218)
!234 = !DILocalVariable(name: "hashed_key", scope: !218, file: !1, line: 118, type: !5)
!235 = !DILocation(line: 118, column: 15, scope: !218)
!236 = !DILocalVariable(name: "key", scope: !218, file: !1, line: 119, type: !40)
!237 = !DILocation(line: 119, column: 16, scope: !218)
!238 = !DILocation(line: 119, column: 22, scope: !218)
!239 = !DILocation(line: 119, column: 28, scope: !218)
!240 = !DILocation(line: 121, column: 15, scope: !218)
!241 = !DILocation(line: 81, column: 9, scope: !157, inlinedAt: !222)
!242 = !DILocation(line: 81, column: 13, scope: !157, inlinedAt: !222)
!243 = !DILocation(line: 81, column: 40, scope: !157, inlinedAt: !222)
!244 = !DILocation(line: 81, column: 38, scope: !157, inlinedAt: !222)
!245 = !DILocation(line: 81, column: 31, scope: !157, inlinedAt: !222)
!246 = !DILocation(line: 121, column: 13, scope: !218)
!247 = !DILocation(line: 122, column: 12, scope: !218)
!248 = !DILocation(line: 122, column: 16, scope: !218)
!249 = !DILocation(line: 122, column: 22, scope: !218)
!250 = !DILocation(line: 122, column: 9, scope: !218)
!251 = !DILocation(line: 123, column: 9, scope: !218)
!252 = !DILocalVariable(name: "____ptr", scope: !253, file: !1, line: 124, type: !36)
!253 = distinct !DILexicalBlock(scope: !254, file: !1, line: 124, column: 2)
!254 = distinct !DILexicalBlock(scope: !218, file: !1, line: 124, column: 2)
!255 = !DILocation(line: 124, column: 2, scope: !253)
!256 = !DILocalVariable(name: "__mptr", scope: !257, file: !1, line: 124, type: !27)
!257 = distinct !DILexicalBlock(scope: !253, file: !1, line: 124, column: 2)
!258 = !DILocation(line: 124, column: 2, scope: !257)
!259 = !DILocation(line: 124, column: 2, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !1, line: 124, column: 2)
!261 = !DILocation(line: 124, column: 2, scope: !254)
!262 = !DILocation(line: 124, column: 2, scope: !263)
!263 = distinct !DILexicalBlock(scope: !254, file: !1, line: 124, column: 2)
!264 = !DILocation(line: 125, column: 7, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 125, column: 7)
!266 = distinct !DILexicalBlock(scope: !263, file: !1, line: 124, column: 44)
!267 = !DILocation(line: 125, column: 14, scope: !265)
!268 = !DILocation(line: 125, column: 21, scope: !265)
!269 = !DILocation(line: 125, column: 18, scope: !265)
!270 = !DILocation(line: 125, column: 7, scope: !266)
!271 = !DILocation(line: 126, column: 4, scope: !265)
!272 = !DILocation(line: 127, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !266, file: !1, line: 127, column: 7)
!274 = !DILocation(line: 127, column: 14, scope: !273)
!275 = !DILocation(line: 127, column: 20, scope: !273)
!276 = !DILocation(line: 127, column: 18, scope: !273)
!277 = !DILocation(line: 127, column: 7, scope: !266)
!278 = !DILocation(line: 128, column: 4, scope: !273)
!279 = !DILocation(line: 129, column: 13, scope: !266)
!280 = !DILocation(line: 129, column: 20, scope: !266)
!281 = !DILocation(line: 129, column: 10, scope: !266)
!282 = !DILocation(line: 130, column: 2, scope: !266)
!283 = !DILocalVariable(name: "____ptr", scope: !284, file: !1, line: 124, type: !36)
!284 = distinct !DILexicalBlock(scope: !263, file: !1, line: 124, column: 2)
!285 = !DILocation(line: 124, column: 2, scope: !284)
!286 = !DILocalVariable(name: "__mptr", scope: !287, file: !1, line: 124, type: !27)
!287 = distinct !DILexicalBlock(scope: !284, file: !1, line: 124, column: 2)
!288 = !DILocation(line: 124, column: 2, scope: !287)
!289 = !DILocation(line: 124, column: 2, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !1, line: 124, column: 2)
!291 = distinct !{!291, !261, !292}
!292 = !DILocation(line: 130, column: 2, scope: !254)
!293 = !DILocation(line: 131, column: 6, scope: !294)
!294 = distinct !DILexicalBlock(scope: !218, file: !1, line: 131, column: 6)
!295 = !DILocation(line: 131, column: 6, scope: !218)
!296 = !DILocation(line: 132, column: 25, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !1, line: 131, column: 14)
!298 = !DILocation(line: 132, column: 31, scope: !297)
!299 = !DILocation(line: 132, column: 37, scope: !297)
!300 = !DILocation(line: 132, column: 3, scope: !297)
!301 = !DILocation(line: 133, column: 2, scope: !297)
!302 = !DILocation(line: 134, column: 23, scope: !303)
!303 = distinct !DILexicalBlock(scope: !294, file: !1, line: 133, column: 9)
!304 = !DILocation(line: 134, column: 29, scope: !303)
!305 = !DILocation(line: 134, column: 35, scope: !303)
!306 = !DILocation(line: 134, column: 3, scope: !303)
!307 = !DILocation(line: 136, column: 2, scope: !218)
!308 = !DILocation(line: 137, column: 1, scope: !218)
!309 = distinct !DISubprogram(name: "hlist_add_behind_rcu", scope: !310, file: !310, line: 679, type: !311, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!310 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/lizy2001/genbc/linux")
!311 = !DISubroutineType(types: !312)
!312 = !{null, !36, !36}
!313 = !DILocalVariable(name: "n", arg: 1, scope: !309, file: !310, line: 679, type: !36)
!314 = !DILocation(line: 679, column: 60, scope: !309)
!315 = !DILocalVariable(name: "prev", arg: 2, scope: !309, file: !310, line: 680, type: !36)
!316 = !DILocation(line: 680, column: 25, scope: !309)
!317 = !DILocation(line: 682, column: 12, scope: !309)
!318 = !DILocation(line: 682, column: 18, scope: !309)
!319 = !DILocation(line: 682, column: 2, scope: !309)
!320 = !DILocation(line: 682, column: 5, scope: !309)
!321 = !DILocation(line: 682, column: 10, scope: !309)
!322 = !DILocation(line: 683, column: 2, scope: !309)
!323 = !DILocation(line: 683, column: 2, scope: !324)
!324 = distinct !DILexicalBlock(scope: !309, file: !310, line: 683, column: 2)
!325 = !DILocation(line: 683, column: 2, scope: !326)
!326 = distinct !DILexicalBlock(scope: !324, file: !310, line: 683, column: 2)
!327 = !DILocation(line: 683, column: 2, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !310, line: 683, column: 2)
!329 = !DILocation(line: 684, column: 2, scope: !309)
!330 = !DILocalVariable(name: "_r_a_p__v", scope: !331, file: !310, line: 684, type: !47)
!331 = distinct !DILexicalBlock(scope: !309, file: !310, line: 684, column: 2)
!332 = !DILocation(line: 684, column: 2, scope: !331)
!333 = !DILocation(line: 684, column: 2, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !310, line: 684, column: 2)
!335 = !DILocation(line: 684, column: 2, scope: !336)
!336 = distinct !DILexicalBlock(scope: !334, file: !310, line: 684, column: 2)
!337 = !DILocation(line: 684, column: 2, scope: !338)
!338 = distinct !DILexicalBlock(scope: !336, file: !310, line: 684, column: 2)
!339 = !DILocation(line: 684, column: 2, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !310, line: 684, column: 2)
!341 = !DILocation(line: 684, column: 2, scope: !342)
!342 = distinct !DILexicalBlock(scope: !334, file: !310, line: 684, column: 2)
!343 = !DILocation(line: 684, column: 2, scope: !344)
!344 = distinct !DILexicalBlock(scope: !342, file: !310, line: 684, column: 2)
!345 = !{i32 -2144331884}
!346 = !DILocation(line: 684, column: 2, scope: !347)
!347 = distinct !DILexicalBlock(scope: !342, file: !310, line: 684, column: 2)
!348 = !DILocation(line: 684, column: 2, scope: !349)
!349 = distinct !DILexicalBlock(scope: !347, file: !310, line: 684, column: 2)
!350 = !DILocation(line: 684, column: 2, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !310, line: 684, column: 2)
!352 = !DILocation(line: 685, column: 6, scope: !353)
!353 = distinct !DILexicalBlock(scope: !309, file: !310, line: 685, column: 6)
!354 = !DILocation(line: 685, column: 9, scope: !353)
!355 = !DILocation(line: 685, column: 6, scope: !309)
!356 = !DILocation(line: 686, column: 3, scope: !353)
!357 = !DILocation(line: 686, column: 3, scope: !358)
!358 = distinct !DILexicalBlock(scope: !353, file: !310, line: 686, column: 3)
!359 = !DILocation(line: 686, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !358, file: !310, line: 686, column: 3)
!361 = !DILocation(line: 686, column: 3, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !310, line: 686, column: 3)
!363 = !DILocation(line: 687, column: 1, scope: !309)
!364 = distinct !DISubprogram(name: "hlist_add_head_rcu", scope: !310, file: !310, line: 585, type: !365, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !36, !65}
!367 = !DILocalVariable(name: "n", arg: 1, scope: !364, file: !310, line: 585, type: !36)
!368 = !DILocation(line: 585, column: 58, scope: !364)
!369 = !DILocalVariable(name: "h", arg: 2, scope: !364, file: !310, line: 586, type: !65)
!370 = !DILocation(line: 586, column: 25, scope: !364)
!371 = !DILocalVariable(name: "first", scope: !364, file: !310, line: 588, type: !36)
!372 = !DILocation(line: 588, column: 21, scope: !364)
!373 = !DILocation(line: 588, column: 29, scope: !364)
!374 = !DILocation(line: 588, column: 32, scope: !364)
!375 = !DILocation(line: 590, column: 12, scope: !364)
!376 = !DILocation(line: 590, column: 2, scope: !364)
!377 = !DILocation(line: 590, column: 5, scope: !364)
!378 = !DILocation(line: 590, column: 10, scope: !364)
!379 = !DILocation(line: 591, column: 2, scope: !364)
!380 = !DILocation(line: 591, column: 2, scope: !381)
!381 = distinct !DILexicalBlock(scope: !364, file: !310, line: 591, column: 2)
!382 = !DILocation(line: 591, column: 2, scope: !383)
!383 = distinct !DILexicalBlock(scope: !381, file: !310, line: 591, column: 2)
!384 = !DILocation(line: 591, column: 2, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !310, line: 591, column: 2)
!386 = !DILocation(line: 592, column: 2, scope: !364)
!387 = !DILocalVariable(name: "_r_a_p__v", scope: !388, file: !310, line: 592, type: !47)
!388 = distinct !DILexicalBlock(scope: !364, file: !310, line: 592, column: 2)
!389 = !DILocation(line: 592, column: 2, scope: !388)
!390 = !DILocation(line: 592, column: 2, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !310, line: 592, column: 2)
!392 = !DILocation(line: 592, column: 2, scope: !393)
!393 = distinct !DILexicalBlock(scope: !391, file: !310, line: 592, column: 2)
!394 = !DILocation(line: 592, column: 2, scope: !395)
!395 = distinct !DILexicalBlock(scope: !393, file: !310, line: 592, column: 2)
!396 = !DILocation(line: 592, column: 2, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !310, line: 592, column: 2)
!398 = !DILocation(line: 592, column: 2, scope: !399)
!399 = distinct !DILexicalBlock(scope: !391, file: !310, line: 592, column: 2)
!400 = !DILocation(line: 592, column: 2, scope: !401)
!401 = distinct !DILexicalBlock(scope: !399, file: !310, line: 592, column: 2)
!402 = !{i32 -2144360603}
!403 = !DILocation(line: 592, column: 2, scope: !404)
!404 = distinct !DILexicalBlock(scope: !399, file: !310, line: 592, column: 2)
!405 = !DILocation(line: 592, column: 2, scope: !406)
!406 = distinct !DILexicalBlock(scope: !404, file: !310, line: 592, column: 2)
!407 = !DILocation(line: 592, column: 2, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !310, line: 592, column: 2)
!409 = !DILocation(line: 593, column: 6, scope: !410)
!410 = distinct !DILexicalBlock(scope: !364, file: !310, line: 593, column: 6)
!411 = !DILocation(line: 593, column: 6, scope: !364)
!412 = !DILocation(line: 594, column: 3, scope: !410)
!413 = !DILocation(line: 594, column: 3, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !310, line: 594, column: 3)
!415 = !DILocation(line: 594, column: 3, scope: !416)
!416 = distinct !DILexicalBlock(scope: !414, file: !310, line: 594, column: 3)
!417 = !DILocation(line: 594, column: 3, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !310, line: 594, column: 3)
!419 = !DILocation(line: 595, column: 1, scope: !364)
!420 = distinct !DISubprogram(name: "drm_ht_just_insert_please", scope: !1, file: !1, line: 144, type: !421, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !75)
!421 = !DISubroutineType(types: !422)
!422 = !{!60, !61, !28, !40, !60, !60, !40}
!423 = !DILocation(line: 77, column: 48, scope: !157, inlinedAt: !424)
!424 = distinct !DILocation(line: 152, column: 18, scope: !420)
!425 = !DILocation(line: 77, column: 66, scope: !157, inlinedAt: !424)
!426 = !DILocalVariable(name: "ht", arg: 1, scope: !420, file: !1, line: 144, type: !61)
!427 = !DILocation(line: 144, column: 53, scope: !420)
!428 = !DILocalVariable(name: "item", arg: 2, scope: !420, file: !1, line: 144, type: !28)
!429 = !DILocation(line: 144, column: 79, scope: !420)
!430 = !DILocalVariable(name: "seed", arg: 3, scope: !420, file: !1, line: 145, type: !40)
!431 = !DILocation(line: 145, column: 24, scope: !420)
!432 = !DILocalVariable(name: "bits", arg: 4, scope: !420, file: !1, line: 145, type: !60)
!433 = !DILocation(line: 145, column: 34, scope: !420)
!434 = !DILocalVariable(name: "shift", arg: 5, scope: !420, file: !1, line: 145, type: !60)
!435 = !DILocation(line: 145, column: 44, scope: !420)
!436 = !DILocalVariable(name: "add", arg: 6, scope: !420, file: !1, line: 146, type: !40)
!437 = !DILocation(line: 146, column: 24, scope: !420)
!438 = !DILocalVariable(name: "ret", scope: !420, file: !1, line: 148, type: !60)
!439 = !DILocation(line: 148, column: 6, scope: !420)
!440 = !DILocalVariable(name: "mask", scope: !420, file: !1, line: 149, type: !40)
!441 = !DILocation(line: 149, column: 16, scope: !420)
!442 = !DILocation(line: 149, column: 31, scope: !420)
!443 = !DILocation(line: 149, column: 28, scope: !420)
!444 = !DILocation(line: 149, column: 37, scope: !420)
!445 = !DILocalVariable(name: "first", scope: !420, file: !1, line: 150, type: !40)
!446 = !DILocation(line: 150, column: 16, scope: !420)
!447 = !DILocalVariable(name: "unshifted_key", scope: !420, file: !1, line: 150, type: !40)
!448 = !DILocation(line: 150, column: 23, scope: !420)
!449 = !DILocation(line: 152, column: 18, scope: !420)
!450 = !DILocation(line: 81, column: 9, scope: !157, inlinedAt: !424)
!451 = !DILocation(line: 81, column: 13, scope: !157, inlinedAt: !424)
!452 = !DILocation(line: 81, column: 40, scope: !157, inlinedAt: !424)
!453 = !DILocation(line: 81, column: 38, scope: !157, inlinedAt: !424)
!454 = !DILocation(line: 81, column: 31, scope: !157, inlinedAt: !424)
!455 = !DILocation(line: 152, column: 16, scope: !420)
!456 = !DILocation(line: 153, column: 10, scope: !420)
!457 = !DILocation(line: 153, column: 8, scope: !420)
!458 = !DILocation(line: 154, column: 2, scope: !420)
!459 = !DILocation(line: 155, column: 16, scope: !460)
!460 = distinct !DILexicalBlock(scope: !420, file: !1, line: 154, column: 5)
!461 = !DILocation(line: 155, column: 33, scope: !460)
!462 = !DILocation(line: 155, column: 30, scope: !460)
!463 = !DILocation(line: 155, column: 42, scope: !460)
!464 = !DILocation(line: 155, column: 40, scope: !460)
!465 = !DILocation(line: 155, column: 3, scope: !460)
!466 = !DILocation(line: 155, column: 9, scope: !460)
!467 = !DILocation(line: 155, column: 13, scope: !460)
!468 = !DILocation(line: 156, column: 28, scope: !460)
!469 = !DILocation(line: 156, column: 32, scope: !460)
!470 = !DILocation(line: 156, column: 9, scope: !460)
!471 = !DILocation(line: 156, column: 7, scope: !460)
!472 = !DILocation(line: 157, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !460, file: !1, line: 157, column: 7)
!474 = !DILocation(line: 157, column: 7, scope: !460)
!475 = !DILocation(line: 158, column: 21, scope: !473)
!476 = !DILocation(line: 158, column: 35, scope: !473)
!477 = !DILocation(line: 158, column: 42, scope: !473)
!478 = !DILocation(line: 158, column: 40, scope: !473)
!479 = !DILocation(line: 158, column: 18, scope: !473)
!480 = !DILocation(line: 158, column: 4, scope: !473)
!481 = !DILocation(line: 159, column: 2, scope: !460)
!482 = !DILocation(line: 159, column: 10, scope: !420)
!483 = !DILocation(line: 159, column: 14, scope: !420)
!484 = !DILocation(line: 159, column: 18, scope: !420)
!485 = !DILocation(line: 159, column: 35, scope: !420)
!486 = !DILocation(line: 159, column: 32, scope: !420)
!487 = !DILocation(line: 0, scope: !420)
!488 = distinct !{!488, !458, !489}
!489 = !DILocation(line: 159, column: 41, scope: !420)
!490 = !DILocation(line: 161, column: 6, scope: !491)
!491 = distinct !DILexicalBlock(scope: !420, file: !1, line: 161, column: 6)
!492 = !DILocation(line: 161, column: 6, scope: !420)
!493 = !DILocation(line: 162, column: 3, scope: !494)
!494 = distinct !DILexicalBlock(scope: !491, file: !1, line: 161, column: 11)
!495 = !DILocation(line: 163, column: 3, scope: !494)
!496 = !DILocation(line: 165, column: 2, scope: !420)
!497 = !DILocation(line: 166, column: 1, scope: !420)
!498 = distinct !DISubprogram(name: "drm_ht_find_item", scope: !1, file: !1, line: 169, type: !499, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !75)
!499 = !DISubroutineType(types: !500)
!500 = !{!60, !61, !40, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!502 = !DILocalVariable(name: "ht", arg: 1, scope: !498, file: !1, line: 169, type: !61)
!503 = !DILocation(line: 169, column: 44, scope: !498)
!504 = !DILocalVariable(name: "key", arg: 2, scope: !498, file: !1, line: 169, type: !40)
!505 = !DILocation(line: 169, column: 62, scope: !498)
!506 = !DILocalVariable(name: "item", arg: 3, scope: !498, file: !1, line: 170, type: !501)
!507 = !DILocation(line: 170, column: 31, scope: !498)
!508 = !DILocalVariable(name: "list", scope: !498, file: !1, line: 172, type: !36)
!509 = !DILocation(line: 172, column: 21, scope: !498)
!510 = !DILocation(line: 174, column: 29, scope: !498)
!511 = !DILocation(line: 174, column: 33, scope: !498)
!512 = !DILocation(line: 174, column: 9, scope: !498)
!513 = !DILocation(line: 174, column: 7, scope: !498)
!514 = !DILocation(line: 175, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !498, file: !1, line: 175, column: 6)
!516 = !DILocation(line: 175, column: 6, scope: !498)
!517 = !DILocation(line: 176, column: 3, scope: !515)
!518 = !DILocalVariable(name: "__mptr", scope: !519, file: !1, line: 178, type: !27)
!519 = distinct !DILexicalBlock(scope: !498, file: !1, line: 178, column: 10)
!520 = !DILocation(line: 178, column: 10, scope: !519)
!521 = !DILocation(line: 178, column: 10, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !1, line: 178, column: 10)
!523 = !DILocation(line: 178, column: 3, scope: !498)
!524 = !DILocation(line: 178, column: 8, scope: !498)
!525 = !DILocation(line: 179, column: 2, scope: !498)
!526 = !DILocation(line: 180, column: 1, scope: !498)
!527 = distinct !DISubprogram(name: "drm_ht_find_key_rcu", scope: !1, file: !1, line: 95, type: !528, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!528 = !DISubroutineType(types: !529)
!529 = !{!36, !61, !40}
!530 = !DILocation(line: 77, column: 48, scope: !157, inlinedAt: !531)
!531 = distinct !DILocation(line: 102, column: 15, scope: !527)
!532 = !DILocation(line: 77, column: 66, scope: !157, inlinedAt: !531)
!533 = !DILocalVariable(name: "ht", arg: 1, scope: !527, file: !1, line: 95, type: !61)
!534 = !DILocation(line: 95, column: 69, scope: !527)
!535 = !DILocalVariable(name: "key", arg: 2, scope: !527, file: !1, line: 96, type: !40)
!536 = !DILocation(line: 96, column: 26, scope: !527)
!537 = !DILocalVariable(name: "entry", scope: !527, file: !1, line: 98, type: !28)
!538 = !DILocation(line: 98, column: 24, scope: !527)
!539 = !DILocalVariable(name: "h_list", scope: !527, file: !1, line: 99, type: !65)
!540 = !DILocation(line: 99, column: 21, scope: !527)
!541 = !DILocalVariable(name: "hashed_key", scope: !527, file: !1, line: 100, type: !5)
!542 = !DILocation(line: 100, column: 15, scope: !527)
!543 = !DILocation(line: 102, column: 15, scope: !527)
!544 = !DILocation(line: 81, column: 9, scope: !157, inlinedAt: !531)
!545 = !DILocation(line: 81, column: 13, scope: !157, inlinedAt: !531)
!546 = !DILocation(line: 81, column: 40, scope: !157, inlinedAt: !531)
!547 = !DILocation(line: 81, column: 38, scope: !157, inlinedAt: !531)
!548 = !DILocation(line: 81, column: 31, scope: !157, inlinedAt: !531)
!549 = !DILocation(line: 102, column: 13, scope: !527)
!550 = !DILocation(line: 103, column: 12, scope: !527)
!551 = !DILocation(line: 103, column: 16, scope: !527)
!552 = !DILocation(line: 103, column: 22, scope: !527)
!553 = !DILocation(line: 103, column: 9, scope: !527)
!554 = !DILocalVariable(name: "____ptr", scope: !555, file: !1, line: 104, type: !36)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 104, column: 2)
!556 = distinct !DILexicalBlock(scope: !527, file: !1, line: 104, column: 2)
!557 = !DILocation(line: 104, column: 2, scope: !555)
!558 = !DILocalVariable(name: "________p1", scope: !559, file: !1, line: 104, type: !36)
!559 = distinct !DILexicalBlock(scope: !555, file: !1, line: 104, column: 2)
!560 = !DILocation(line: 104, column: 2, scope: !559)
!561 = !DILocation(line: 104, column: 2, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !1, line: 104, column: 2)
!563 = !DILocation(line: 104, column: 2, scope: !564)
!564 = distinct !DILexicalBlock(scope: !562, file: !1, line: 104, column: 2)
!565 = !DILocalVariable(name: "__mptr", scope: !566, file: !1, line: 104, type: !27)
!566 = distinct !DILexicalBlock(scope: !555, file: !1, line: 104, column: 2)
!567 = !DILocation(line: 104, column: 2, scope: !566)
!568 = !DILocation(line: 104, column: 2, scope: !569)
!569 = distinct !DILexicalBlock(scope: !566, file: !1, line: 104, column: 2)
!570 = !DILocation(line: 104, column: 2, scope: !556)
!571 = !DILocation(line: 104, column: 2, scope: !572)
!572 = distinct !DILexicalBlock(scope: !556, file: !1, line: 104, column: 2)
!573 = !DILocation(line: 105, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !1, line: 105, column: 7)
!575 = distinct !DILexicalBlock(scope: !572, file: !1, line: 104, column: 48)
!576 = !DILocation(line: 105, column: 14, scope: !574)
!577 = !DILocation(line: 105, column: 21, scope: !574)
!578 = !DILocation(line: 105, column: 18, scope: !574)
!579 = !DILocation(line: 105, column: 7, scope: !575)
!580 = !DILocation(line: 106, column: 12, scope: !574)
!581 = !DILocation(line: 106, column: 19, scope: !574)
!582 = !DILocation(line: 106, column: 4, scope: !574)
!583 = !DILocation(line: 107, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !575, file: !1, line: 107, column: 7)
!585 = !DILocation(line: 107, column: 14, scope: !584)
!586 = !DILocation(line: 107, column: 20, scope: !584)
!587 = !DILocation(line: 107, column: 18, scope: !584)
!588 = !DILocation(line: 107, column: 7, scope: !575)
!589 = !DILocation(line: 108, column: 4, scope: !584)
!590 = !DILocation(line: 109, column: 2, scope: !575)
!591 = !DILocalVariable(name: "____ptr", scope: !592, file: !1, line: 104, type: !36)
!592 = distinct !DILexicalBlock(scope: !572, file: !1, line: 104, column: 2)
!593 = !DILocation(line: 104, column: 2, scope: !592)
!594 = !DILocalVariable(name: "________p1", scope: !595, file: !1, line: 104, type: !36)
!595 = distinct !DILexicalBlock(scope: !592, file: !1, line: 104, column: 2)
!596 = !DILocation(line: 104, column: 2, scope: !595)
!597 = !DILocation(line: 104, column: 2, scope: !598)
!598 = distinct !DILexicalBlock(scope: !595, file: !1, line: 104, column: 2)
!599 = !DILocation(line: 104, column: 2, scope: !600)
!600 = distinct !DILexicalBlock(scope: !598, file: !1, line: 104, column: 2)
!601 = !DILocalVariable(name: "__mptr", scope: !602, file: !1, line: 104, type: !27)
!602 = distinct !DILexicalBlock(scope: !592, file: !1, line: 104, column: 2)
!603 = !DILocation(line: 104, column: 2, scope: !602)
!604 = !DILocation(line: 104, column: 2, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !1, line: 104, column: 2)
!606 = distinct !{!606, !570, !607}
!607 = !DILocation(line: 109, column: 2, scope: !556)
!608 = !DILocation(line: 110, column: 2, scope: !527)
!609 = !DILocation(line: 111, column: 1, scope: !527)
!610 = distinct !DISubprogram(name: "drm_ht_remove_key", scope: !1, file: !1, line: 183, type: !611, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !75)
!611 = !DISubroutineType(types: !612)
!612 = !{!60, !61, !40}
!613 = !DILocalVariable(name: "ht", arg: 1, scope: !610, file: !1, line: 183, type: !61)
!614 = !DILocation(line: 183, column: 45, scope: !610)
!615 = !DILocalVariable(name: "key", arg: 2, scope: !610, file: !1, line: 183, type: !40)
!616 = !DILocation(line: 183, column: 63, scope: !610)
!617 = !DILocalVariable(name: "list", scope: !610, file: !1, line: 185, type: !36)
!618 = !DILocation(line: 185, column: 21, scope: !610)
!619 = !DILocation(line: 187, column: 25, scope: !610)
!620 = !DILocation(line: 187, column: 29, scope: !610)
!621 = !DILocation(line: 187, column: 9, scope: !610)
!622 = !DILocation(line: 187, column: 7, scope: !610)
!623 = !DILocation(line: 188, column: 6, scope: !624)
!624 = distinct !DILexicalBlock(scope: !610, file: !1, line: 188, column: 6)
!625 = !DILocation(line: 188, column: 6, scope: !610)
!626 = !DILocation(line: 189, column: 22, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !1, line: 188, column: 12)
!628 = !DILocation(line: 189, column: 3, scope: !627)
!629 = !DILocation(line: 190, column: 3, scope: !627)
!630 = !DILocation(line: 192, column: 2, scope: !610)
!631 = !DILocation(line: 193, column: 1, scope: !610)
!632 = distinct !DISubprogram(name: "drm_ht_find_key", scope: !1, file: !1, line: 77, type: !528, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!633 = !DILocation(line: 77, column: 48, scope: !157, inlinedAt: !634)
!634 = distinct !DILocation(line: 84, column: 15, scope: !632)
!635 = !DILocation(line: 77, column: 66, scope: !157, inlinedAt: !634)
!636 = !DILocalVariable(name: "ht", arg: 1, scope: !632, file: !1, line: 77, type: !61)
!637 = !DILocation(line: 77, column: 65, scope: !632)
!638 = !DILocalVariable(name: "key", arg: 2, scope: !632, file: !1, line: 78, type: !40)
!639 = !DILocation(line: 78, column: 22, scope: !632)
!640 = !DILocalVariable(name: "entry", scope: !632, file: !1, line: 80, type: !28)
!641 = !DILocation(line: 80, column: 24, scope: !632)
!642 = !DILocalVariable(name: "h_list", scope: !632, file: !1, line: 81, type: !65)
!643 = !DILocation(line: 81, column: 21, scope: !632)
!644 = !DILocalVariable(name: "hashed_key", scope: !632, file: !1, line: 82, type: !5)
!645 = !DILocation(line: 82, column: 15, scope: !632)
!646 = !DILocation(line: 84, column: 15, scope: !632)
!647 = !DILocation(line: 81, column: 9, scope: !157, inlinedAt: !634)
!648 = !DILocation(line: 81, column: 13, scope: !157, inlinedAt: !634)
!649 = !DILocation(line: 81, column: 40, scope: !157, inlinedAt: !634)
!650 = !DILocation(line: 81, column: 38, scope: !157, inlinedAt: !634)
!651 = !DILocation(line: 81, column: 31, scope: !157, inlinedAt: !634)
!652 = !DILocation(line: 84, column: 13, scope: !632)
!653 = !DILocation(line: 85, column: 12, scope: !632)
!654 = !DILocation(line: 85, column: 16, scope: !632)
!655 = !DILocation(line: 85, column: 22, scope: !632)
!656 = !DILocation(line: 85, column: 9, scope: !632)
!657 = !DILocalVariable(name: "____ptr", scope: !658, file: !1, line: 86, type: !36)
!658 = distinct !DILexicalBlock(scope: !659, file: !1, line: 86, column: 2)
!659 = distinct !DILexicalBlock(scope: !632, file: !1, line: 86, column: 2)
!660 = !DILocation(line: 86, column: 2, scope: !658)
!661 = !DILocalVariable(name: "__mptr", scope: !662, file: !1, line: 86, type: !27)
!662 = distinct !DILexicalBlock(scope: !658, file: !1, line: 86, column: 2)
!663 = !DILocation(line: 86, column: 2, scope: !662)
!664 = !DILocation(line: 86, column: 2, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !1, line: 86, column: 2)
!666 = !DILocation(line: 86, column: 2, scope: !659)
!667 = !DILocation(line: 86, column: 2, scope: !668)
!668 = distinct !DILexicalBlock(scope: !659, file: !1, line: 86, column: 2)
!669 = !DILocation(line: 87, column: 7, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !1, line: 87, column: 7)
!671 = distinct !DILexicalBlock(scope: !668, file: !1, line: 86, column: 44)
!672 = !DILocation(line: 87, column: 14, scope: !670)
!673 = !DILocation(line: 87, column: 21, scope: !670)
!674 = !DILocation(line: 87, column: 18, scope: !670)
!675 = !DILocation(line: 87, column: 7, scope: !671)
!676 = !DILocation(line: 88, column: 12, scope: !670)
!677 = !DILocation(line: 88, column: 19, scope: !670)
!678 = !DILocation(line: 88, column: 4, scope: !670)
!679 = !DILocation(line: 89, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !671, file: !1, line: 89, column: 7)
!681 = !DILocation(line: 89, column: 14, scope: !680)
!682 = !DILocation(line: 89, column: 20, scope: !680)
!683 = !DILocation(line: 89, column: 18, scope: !680)
!684 = !DILocation(line: 89, column: 7, scope: !671)
!685 = !DILocation(line: 90, column: 4, scope: !680)
!686 = !DILocation(line: 91, column: 2, scope: !671)
!687 = !DILocalVariable(name: "____ptr", scope: !688, file: !1, line: 86, type: !36)
!688 = distinct !DILexicalBlock(scope: !668, file: !1, line: 86, column: 2)
!689 = !DILocation(line: 86, column: 2, scope: !688)
!690 = !DILocalVariable(name: "__mptr", scope: !691, file: !1, line: 86, type: !27)
!691 = distinct !DILexicalBlock(scope: !688, file: !1, line: 86, column: 2)
!692 = !DILocation(line: 86, column: 2, scope: !691)
!693 = !DILocation(line: 86, column: 2, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !1, line: 86, column: 2)
!695 = distinct !{!695, !666, !696}
!696 = !DILocation(line: 91, column: 2, scope: !659)
!697 = !DILocation(line: 92, column: 2, scope: !632)
!698 = !DILocation(line: 93, column: 1, scope: !632)
!699 = distinct !DISubprogram(name: "hlist_del_init_rcu", scope: !310, file: !310, line: 190, type: !700, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !36}
!702 = !DILocalVariable(name: "n", arg: 1, scope: !699, file: !310, line: 190, type: !36)
!703 = !DILocation(line: 190, column: 58, scope: !699)
!704 = !DILocation(line: 192, column: 22, scope: !705)
!705 = distinct !DILexicalBlock(scope: !699, file: !310, line: 192, column: 6)
!706 = !DILocation(line: 192, column: 7, scope: !705)
!707 = !DILocation(line: 192, column: 6, scope: !699)
!708 = !DILocation(line: 193, column: 15, scope: !709)
!709 = distinct !DILexicalBlock(scope: !705, file: !310, line: 192, column: 26)
!710 = !DILocation(line: 193, column: 3, scope: !709)
!711 = !DILocation(line: 194, column: 3, scope: !709)
!712 = !DILocation(line: 194, column: 3, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !310, line: 194, column: 3)
!714 = !DILocation(line: 194, column: 3, scope: !715)
!715 = distinct !DILexicalBlock(scope: !713, file: !310, line: 194, column: 3)
!716 = !DILocation(line: 194, column: 3, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !310, line: 194, column: 3)
!718 = !DILocation(line: 195, column: 2, scope: !709)
!719 = !DILocation(line: 196, column: 1, scope: !699)
!720 = distinct !DISubprogram(name: "drm_ht_remove_item", scope: !1, file: !1, line: 195, type: !219, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !75)
!721 = !DILocalVariable(name: "ht", arg: 1, scope: !720, file: !1, line: 195, type: !61)
!722 = !DILocation(line: 195, column: 46, scope: !720)
!723 = !DILocalVariable(name: "item", arg: 2, scope: !720, file: !1, line: 195, type: !28)
!724 = !DILocation(line: 195, column: 72, scope: !720)
!725 = !DILocation(line: 197, column: 22, scope: !720)
!726 = !DILocation(line: 197, column: 28, scope: !720)
!727 = !DILocation(line: 197, column: 2, scope: !720)
!728 = !DILocation(line: 198, column: 2, scope: !720)
!729 = distinct !DISubprogram(name: "drm_ht_remove", scope: !1, file: !1, line: 202, type: !730, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !75)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !61}
!732 = !DILocalVariable(name: "ht", arg: 1, scope: !729, file: !1, line: 202, type: !61)
!733 = !DILocation(line: 202, column: 42, scope: !729)
!734 = !DILocation(line: 204, column: 6, scope: !735)
!735 = distinct !DILexicalBlock(scope: !729, file: !1, line: 204, column: 6)
!736 = !DILocation(line: 204, column: 10, scope: !735)
!737 = !DILocation(line: 204, column: 6, scope: !729)
!738 = !DILocation(line: 205, column: 10, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !1, line: 204, column: 17)
!740 = !DILocation(line: 205, column: 14, scope: !739)
!741 = !DILocation(line: 205, column: 3, scope: !739)
!742 = !DILocation(line: 206, column: 3, scope: !739)
!743 = !DILocation(line: 206, column: 7, scope: !739)
!744 = !DILocation(line: 206, column: 13, scope: !739)
!745 = !DILocation(line: 207, column: 2, scope: !739)
!746 = !DILocation(line: 208, column: 1, scope: !729)
!747 = distinct !DISubprogram(name: "kmalloc_array", scope: !18, file: !18, line: 584, type: !116, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!748 = !DILocalVariable(name: "s", arg: 1, scope: !749, file: !18, line: 445, type: !752)
!749 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !18, file: !18, line: 445, type: !750, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!750 = !DISubroutineType(types: !751)
!751 = !{!27, !752, !25, !41}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !754, line: 117, flags: DIFlagFwdDecl)
!754 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!755 = !DILocation(line: 445, column: 72, scope: !749, inlinedAt: !756)
!756 = distinct !DILocation(line: 552, column: 10, scope: !757, inlinedAt: !762)
!757 = distinct !DILexicalBlock(scope: !758, file: !18, line: 540, column: 34)
!758 = distinct !DILexicalBlock(scope: !759, file: !18, line: 540, column: 6)
!759 = distinct !DISubprogram(name: "kmalloc", scope: !18, file: !18, line: 538, type: !760, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!760 = !DISubroutineType(types: !761)
!761 = !{!27, !41, !25}
!762 = distinct !DILocation(line: 591, column: 10, scope: !763)
!763 = distinct !DILexicalBlock(scope: !747, file: !18, line: 590, column: 6)
!764 = !DILocalVariable(name: "flags", arg: 2, scope: !749, file: !18, line: 446, type: !25)
!765 = !DILocation(line: 446, column: 9, scope: !749, inlinedAt: !756)
!766 = !DILocalVariable(name: "size", arg: 3, scope: !749, file: !18, line: 446, type: !41)
!767 = !DILocation(line: 446, column: 23, scope: !749, inlinedAt: !756)
!768 = !DILocalVariable(name: "ret", scope: !749, file: !18, line: 448, type: !27)
!769 = !DILocation(line: 448, column: 8, scope: !749, inlinedAt: !756)
!770 = !DILocalVariable(name: "flags", arg: 1, scope: !771, file: !18, line: 318, type: !25)
!771 = distinct !DISubprogram(name: "kmalloc_type", scope: !18, file: !18, line: 318, type: !772, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!772 = !DISubroutineType(types: !773)
!773 = !{!17, !25}
!774 = !DILocation(line: 318, column: 67, scope: !771, inlinedAt: !775)
!775 = distinct !DILocation(line: 553, column: 20, scope: !757, inlinedAt: !762)
!776 = !DILocalVariable(name: "size", arg: 1, scope: !777, file: !18, line: 346, type: !41)
!777 = distinct !DISubprogram(name: "kmalloc_index", scope: !18, file: !18, line: 346, type: !778, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!778 = !DISubroutineType(types: !779)
!779 = !{!5, !41}
!780 = !DILocation(line: 346, column: 58, scope: !777, inlinedAt: !781)
!781 = distinct !DILocation(line: 547, column: 11, scope: !757, inlinedAt: !762)
!782 = !DILocalVariable(name: "size", arg: 1, scope: !783, file: !18, line: 472, type: !41)
!783 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !18, file: !18, line: 472, type: !784, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!784 = !DISubroutineType(types: !785)
!785 = !{!27, !41, !25, !5}
!786 = !DILocation(line: 472, column: 28, scope: !783, inlinedAt: !787)
!787 = distinct !DILocation(line: 481, column: 9, scope: !788, inlinedAt: !789)
!788 = distinct !DISubprogram(name: "kmalloc_large", scope: !18, file: !18, line: 478, type: !760, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!789 = distinct !DILocation(line: 545, column: 11, scope: !790, inlinedAt: !762)
!790 = distinct !DILexicalBlock(scope: !757, file: !18, line: 544, column: 7)
!791 = !DILocalVariable(name: "flags", arg: 2, scope: !783, file: !18, line: 472, type: !25)
!792 = !DILocation(line: 472, column: 40, scope: !783, inlinedAt: !787)
!793 = !DILocalVariable(name: "order", arg: 3, scope: !783, file: !18, line: 472, type: !5)
!794 = !DILocation(line: 472, column: 60, scope: !783, inlinedAt: !787)
!795 = !DILocalVariable(name: "size", arg: 1, scope: !788, file: !18, line: 478, type: !41)
!796 = !DILocation(line: 478, column: 51, scope: !788, inlinedAt: !789)
!797 = !DILocalVariable(name: "flags", arg: 2, scope: !788, file: !18, line: 478, type: !25)
!798 = !DILocation(line: 478, column: 63, scope: !788, inlinedAt: !789)
!799 = !DILocalVariable(name: "order", scope: !788, file: !18, line: 480, type: !5)
!800 = !DILocation(line: 480, column: 15, scope: !788, inlinedAt: !789)
!801 = !DILocalVariable(name: "size", arg: 1, scope: !759, file: !18, line: 538, type: !41)
!802 = !DILocation(line: 538, column: 45, scope: !759, inlinedAt: !762)
!803 = !DILocalVariable(name: "flags", arg: 2, scope: !759, file: !18, line: 538, type: !25)
!804 = !DILocation(line: 538, column: 57, scope: !759, inlinedAt: !762)
!805 = !DILocalVariable(name: "index", scope: !757, file: !18, line: 542, type: !5)
!806 = !DILocation(line: 542, column: 16, scope: !757, inlinedAt: !762)
!807 = !DILocalVariable(name: "n", arg: 1, scope: !747, file: !18, line: 584, type: !41)
!808 = !DILocation(line: 584, column: 42, scope: !747)
!809 = !DILocalVariable(name: "size", arg: 2, scope: !747, file: !18, line: 584, type: !41)
!810 = !DILocation(line: 584, column: 52, scope: !747)
!811 = !DILocalVariable(name: "flags", arg: 3, scope: !747, file: !18, line: 584, type: !25)
!812 = !DILocation(line: 584, column: 64, scope: !747)
!813 = !DILocalVariable(name: "bytes", scope: !747, file: !18, line: 586, type: !41)
!814 = !DILocation(line: 586, column: 9, scope: !747)
!815 = !DILocalVariable(name: "__a", scope: !816, file: !18, line: 588, type: !41)
!816 = distinct !DILexicalBlock(scope: !817, file: !18, line: 588, column: 6)
!817 = distinct !DILexicalBlock(scope: !747, file: !18, line: 588, column: 6)
!818 = !DILocation(line: 588, column: 6, scope: !816)
!819 = !DILocalVariable(name: "__b", scope: !816, file: !18, line: 588, type: !41)
!820 = !DILocalVariable(name: "__d", scope: !816, file: !18, line: 588, type: !146)
!821 = !DILocation(line: 588, column: 6, scope: !817)
!822 = !DILocation(line: 588, column: 6, scope: !747)
!823 = !DILocation(line: 589, column: 3, scope: !817)
!824 = !DILocation(line: 590, column: 27, scope: !763)
!825 = !DILocation(line: 590, column: 6, scope: !763)
!826 = !DILocation(line: 590, column: 30, scope: !763)
!827 = !DILocation(line: 590, column: 54, scope: !763)
!828 = !DILocation(line: 590, column: 33, scope: !763)
!829 = !DILocation(line: 590, column: 6, scope: !747)
!830 = !DILocation(line: 591, column: 18, scope: !763)
!831 = !DILocation(line: 591, column: 25, scope: !763)
!832 = !DILocation(line: 540, column: 27, scope: !758, inlinedAt: !762)
!833 = !DILocation(line: 540, column: 6, scope: !758, inlinedAt: !762)
!834 = !DILocation(line: 540, column: 6, scope: !759, inlinedAt: !762)
!835 = !DILocation(line: 544, column: 7, scope: !790, inlinedAt: !762)
!836 = !DILocation(line: 544, column: 12, scope: !790, inlinedAt: !762)
!837 = !DILocation(line: 544, column: 7, scope: !757, inlinedAt: !762)
!838 = !DILocation(line: 545, column: 25, scope: !790, inlinedAt: !762)
!839 = !DILocation(line: 545, column: 31, scope: !790, inlinedAt: !762)
!840 = !DILocation(line: 480, column: 33, scope: !788, inlinedAt: !789)
!841 = !DILocation(line: 480, column: 23, scope: !788, inlinedAt: !789)
!842 = !DILocation(line: 481, column: 29, scope: !788, inlinedAt: !789)
!843 = !DILocation(line: 481, column: 35, scope: !788, inlinedAt: !789)
!844 = !DILocation(line: 481, column: 42, scope: !788, inlinedAt: !789)
!845 = !DILocation(line: 474, column: 23, scope: !783, inlinedAt: !787)
!846 = !DILocation(line: 474, column: 29, scope: !783, inlinedAt: !787)
!847 = !DILocation(line: 474, column: 36, scope: !783, inlinedAt: !787)
!848 = !DILocation(line: 474, column: 9, scope: !783, inlinedAt: !787)
!849 = !DILocation(line: 545, column: 4, scope: !790, inlinedAt: !762)
!850 = !DILocation(line: 547, column: 25, scope: !757, inlinedAt: !762)
!851 = !DILocation(line: 348, column: 7, scope: !852, inlinedAt: !781)
!852 = distinct !DILexicalBlock(scope: !777, file: !18, line: 348, column: 6)
!853 = !DILocation(line: 348, column: 6, scope: !777, inlinedAt: !781)
!854 = !DILocation(line: 349, column: 3, scope: !852, inlinedAt: !781)
!855 = !DILocation(line: 351, column: 6, scope: !856, inlinedAt: !781)
!856 = distinct !DILexicalBlock(scope: !777, file: !18, line: 351, column: 6)
!857 = !DILocation(line: 351, column: 11, scope: !856, inlinedAt: !781)
!858 = !DILocation(line: 351, column: 6, scope: !777, inlinedAt: !781)
!859 = !DILocation(line: 352, column: 3, scope: !856, inlinedAt: !781)
!860 = !DILocation(line: 354, column: 32, scope: !861, inlinedAt: !781)
!861 = distinct !DILexicalBlock(scope: !777, file: !18, line: 354, column: 6)
!862 = !DILocation(line: 354, column: 37, scope: !861, inlinedAt: !781)
!863 = !DILocation(line: 354, column: 42, scope: !861, inlinedAt: !781)
!864 = !DILocation(line: 354, column: 45, scope: !861, inlinedAt: !781)
!865 = !DILocation(line: 354, column: 50, scope: !861, inlinedAt: !781)
!866 = !DILocation(line: 354, column: 6, scope: !777, inlinedAt: !781)
!867 = !DILocation(line: 355, column: 3, scope: !861, inlinedAt: !781)
!868 = !DILocation(line: 356, column: 32, scope: !869, inlinedAt: !781)
!869 = distinct !DILexicalBlock(scope: !777, file: !18, line: 356, column: 6)
!870 = !DILocation(line: 356, column: 37, scope: !869, inlinedAt: !781)
!871 = !DILocation(line: 356, column: 43, scope: !869, inlinedAt: !781)
!872 = !DILocation(line: 356, column: 46, scope: !869, inlinedAt: !781)
!873 = !DILocation(line: 356, column: 51, scope: !869, inlinedAt: !781)
!874 = !DILocation(line: 356, column: 6, scope: !777, inlinedAt: !781)
!875 = !DILocation(line: 357, column: 3, scope: !869, inlinedAt: !781)
!876 = !DILocation(line: 358, column: 6, scope: !877, inlinedAt: !781)
!877 = distinct !DILexicalBlock(scope: !777, file: !18, line: 358, column: 6)
!878 = !DILocation(line: 358, column: 11, scope: !877, inlinedAt: !781)
!879 = !DILocation(line: 358, column: 6, scope: !777, inlinedAt: !781)
!880 = !DILocation(line: 358, column: 26, scope: !877, inlinedAt: !781)
!881 = !DILocation(line: 359, column: 6, scope: !882, inlinedAt: !781)
!882 = distinct !DILexicalBlock(scope: !777, file: !18, line: 359, column: 6)
!883 = !DILocation(line: 359, column: 11, scope: !882, inlinedAt: !781)
!884 = !DILocation(line: 359, column: 6, scope: !777, inlinedAt: !781)
!885 = !DILocation(line: 359, column: 26, scope: !882, inlinedAt: !781)
!886 = !DILocation(line: 360, column: 6, scope: !887, inlinedAt: !781)
!887 = distinct !DILexicalBlock(scope: !777, file: !18, line: 360, column: 6)
!888 = !DILocation(line: 360, column: 11, scope: !887, inlinedAt: !781)
!889 = !DILocation(line: 360, column: 6, scope: !777, inlinedAt: !781)
!890 = !DILocation(line: 360, column: 26, scope: !887, inlinedAt: !781)
!891 = !DILocation(line: 361, column: 6, scope: !892, inlinedAt: !781)
!892 = distinct !DILexicalBlock(scope: !777, file: !18, line: 361, column: 6)
!893 = !DILocation(line: 361, column: 11, scope: !892, inlinedAt: !781)
!894 = !DILocation(line: 361, column: 6, scope: !777, inlinedAt: !781)
!895 = !DILocation(line: 361, column: 26, scope: !892, inlinedAt: !781)
!896 = !DILocation(line: 362, column: 6, scope: !897, inlinedAt: !781)
!897 = distinct !DILexicalBlock(scope: !777, file: !18, line: 362, column: 6)
!898 = !DILocation(line: 362, column: 11, scope: !897, inlinedAt: !781)
!899 = !DILocation(line: 362, column: 6, scope: !777, inlinedAt: !781)
!900 = !DILocation(line: 362, column: 26, scope: !897, inlinedAt: !781)
!901 = !DILocation(line: 363, column: 6, scope: !902, inlinedAt: !781)
!902 = distinct !DILexicalBlock(scope: !777, file: !18, line: 363, column: 6)
!903 = !DILocation(line: 363, column: 11, scope: !902, inlinedAt: !781)
!904 = !DILocation(line: 363, column: 6, scope: !777, inlinedAt: !781)
!905 = !DILocation(line: 363, column: 26, scope: !902, inlinedAt: !781)
!906 = !DILocation(line: 364, column: 6, scope: !907, inlinedAt: !781)
!907 = distinct !DILexicalBlock(scope: !777, file: !18, line: 364, column: 6)
!908 = !DILocation(line: 364, column: 11, scope: !907, inlinedAt: !781)
!909 = !DILocation(line: 364, column: 6, scope: !777, inlinedAt: !781)
!910 = !DILocation(line: 364, column: 26, scope: !907, inlinedAt: !781)
!911 = !DILocation(line: 365, column: 6, scope: !912, inlinedAt: !781)
!912 = distinct !DILexicalBlock(scope: !777, file: !18, line: 365, column: 6)
!913 = !DILocation(line: 365, column: 11, scope: !912, inlinedAt: !781)
!914 = !DILocation(line: 365, column: 6, scope: !777, inlinedAt: !781)
!915 = !DILocation(line: 365, column: 26, scope: !912, inlinedAt: !781)
!916 = !DILocation(line: 366, column: 6, scope: !917, inlinedAt: !781)
!917 = distinct !DILexicalBlock(scope: !777, file: !18, line: 366, column: 6)
!918 = !DILocation(line: 366, column: 11, scope: !917, inlinedAt: !781)
!919 = !DILocation(line: 366, column: 6, scope: !777, inlinedAt: !781)
!920 = !DILocation(line: 366, column: 26, scope: !917, inlinedAt: !781)
!921 = !DILocation(line: 367, column: 6, scope: !922, inlinedAt: !781)
!922 = distinct !DILexicalBlock(scope: !777, file: !18, line: 367, column: 6)
!923 = !DILocation(line: 367, column: 11, scope: !922, inlinedAt: !781)
!924 = !DILocation(line: 367, column: 6, scope: !777, inlinedAt: !781)
!925 = !DILocation(line: 367, column: 26, scope: !922, inlinedAt: !781)
!926 = !DILocation(line: 368, column: 6, scope: !927, inlinedAt: !781)
!927 = distinct !DILexicalBlock(scope: !777, file: !18, line: 368, column: 6)
!928 = !DILocation(line: 368, column: 11, scope: !927, inlinedAt: !781)
!929 = !DILocation(line: 368, column: 6, scope: !777, inlinedAt: !781)
!930 = !DILocation(line: 368, column: 26, scope: !927, inlinedAt: !781)
!931 = !DILocation(line: 369, column: 6, scope: !932, inlinedAt: !781)
!932 = distinct !DILexicalBlock(scope: !777, file: !18, line: 369, column: 6)
!933 = !DILocation(line: 369, column: 11, scope: !932, inlinedAt: !781)
!934 = !DILocation(line: 369, column: 6, scope: !777, inlinedAt: !781)
!935 = !DILocation(line: 369, column: 26, scope: !932, inlinedAt: !781)
!936 = !DILocation(line: 370, column: 6, scope: !937, inlinedAt: !781)
!937 = distinct !DILexicalBlock(scope: !777, file: !18, line: 370, column: 6)
!938 = !DILocation(line: 370, column: 11, scope: !937, inlinedAt: !781)
!939 = !DILocation(line: 370, column: 6, scope: !777, inlinedAt: !781)
!940 = !DILocation(line: 370, column: 26, scope: !937, inlinedAt: !781)
!941 = !DILocation(line: 371, column: 6, scope: !942, inlinedAt: !781)
!942 = distinct !DILexicalBlock(scope: !777, file: !18, line: 371, column: 6)
!943 = !DILocation(line: 371, column: 11, scope: !942, inlinedAt: !781)
!944 = !DILocation(line: 371, column: 6, scope: !777, inlinedAt: !781)
!945 = !DILocation(line: 371, column: 26, scope: !942, inlinedAt: !781)
!946 = !DILocation(line: 372, column: 6, scope: !947, inlinedAt: !781)
!947 = distinct !DILexicalBlock(scope: !777, file: !18, line: 372, column: 6)
!948 = !DILocation(line: 372, column: 11, scope: !947, inlinedAt: !781)
!949 = !DILocation(line: 372, column: 6, scope: !777, inlinedAt: !781)
!950 = !DILocation(line: 372, column: 26, scope: !947, inlinedAt: !781)
!951 = !DILocation(line: 373, column: 6, scope: !952, inlinedAt: !781)
!952 = distinct !DILexicalBlock(scope: !777, file: !18, line: 373, column: 6)
!953 = !DILocation(line: 373, column: 11, scope: !952, inlinedAt: !781)
!954 = !DILocation(line: 373, column: 6, scope: !777, inlinedAt: !781)
!955 = !DILocation(line: 373, column: 26, scope: !952, inlinedAt: !781)
!956 = !DILocation(line: 374, column: 6, scope: !957, inlinedAt: !781)
!957 = distinct !DILexicalBlock(scope: !777, file: !18, line: 374, column: 6)
!958 = !DILocation(line: 374, column: 11, scope: !957, inlinedAt: !781)
!959 = !DILocation(line: 374, column: 6, scope: !777, inlinedAt: !781)
!960 = !DILocation(line: 374, column: 26, scope: !957, inlinedAt: !781)
!961 = !DILocation(line: 375, column: 6, scope: !962, inlinedAt: !781)
!962 = distinct !DILexicalBlock(scope: !777, file: !18, line: 375, column: 6)
!963 = !DILocation(line: 375, column: 11, scope: !962, inlinedAt: !781)
!964 = !DILocation(line: 375, column: 6, scope: !777, inlinedAt: !781)
!965 = !DILocation(line: 375, column: 27, scope: !962, inlinedAt: !781)
!966 = !DILocation(line: 376, column: 6, scope: !967, inlinedAt: !781)
!967 = distinct !DILexicalBlock(scope: !777, file: !18, line: 376, column: 6)
!968 = !DILocation(line: 376, column: 11, scope: !967, inlinedAt: !781)
!969 = !DILocation(line: 376, column: 6, scope: !777, inlinedAt: !781)
!970 = !DILocation(line: 376, column: 32, scope: !967, inlinedAt: !781)
!971 = !DILocation(line: 377, column: 6, scope: !972, inlinedAt: !781)
!972 = distinct !DILexicalBlock(scope: !777, file: !18, line: 377, column: 6)
!973 = !DILocation(line: 377, column: 11, scope: !972, inlinedAt: !781)
!974 = !DILocation(line: 377, column: 6, scope: !777, inlinedAt: !781)
!975 = !DILocation(line: 377, column: 32, scope: !972, inlinedAt: !781)
!976 = !DILocation(line: 378, column: 6, scope: !977, inlinedAt: !781)
!977 = distinct !DILexicalBlock(scope: !777, file: !18, line: 378, column: 6)
!978 = !DILocation(line: 378, column: 11, scope: !977, inlinedAt: !781)
!979 = !DILocation(line: 378, column: 6, scope: !777, inlinedAt: !781)
!980 = !DILocation(line: 378, column: 32, scope: !977, inlinedAt: !781)
!981 = !DILocation(line: 379, column: 6, scope: !982, inlinedAt: !781)
!982 = distinct !DILexicalBlock(scope: !777, file: !18, line: 379, column: 6)
!983 = !DILocation(line: 379, column: 11, scope: !982, inlinedAt: !781)
!984 = !DILocation(line: 379, column: 6, scope: !777, inlinedAt: !781)
!985 = !DILocation(line: 379, column: 33, scope: !982, inlinedAt: !781)
!986 = !DILocation(line: 380, column: 6, scope: !987, inlinedAt: !781)
!987 = distinct !DILexicalBlock(scope: !777, file: !18, line: 380, column: 6)
!988 = !DILocation(line: 380, column: 11, scope: !987, inlinedAt: !781)
!989 = !DILocation(line: 380, column: 6, scope: !777, inlinedAt: !781)
!990 = !DILocation(line: 380, column: 33, scope: !987, inlinedAt: !781)
!991 = !DILocation(line: 381, column: 6, scope: !992, inlinedAt: !781)
!992 = distinct !DILexicalBlock(scope: !777, file: !18, line: 381, column: 6)
!993 = !DILocation(line: 381, column: 11, scope: !992, inlinedAt: !781)
!994 = !DILocation(line: 381, column: 6, scope: !777, inlinedAt: !781)
!995 = !DILocation(line: 381, column: 33, scope: !992, inlinedAt: !781)
!996 = !DILocation(line: 382, column: 2, scope: !997, inlinedAt: !781)
!997 = distinct !DILexicalBlock(scope: !998, file: !18, line: 382, column: 2)
!998 = distinct !DILexicalBlock(scope: !777, file: !18, line: 382, column: 2)
!999 = !{i32 -2142679815, i32 -2142679786, i32 -2142679740, i32 -2142679682, i32 -2142679628, i32 -2142679574, i32 -2142679519, i32 -2142679488}
!1000 = !DILocation(line: 382, column: 2, scope: !1001, inlinedAt: !781)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !18, line: 382, column: 2)
!1002 = distinct !DILexicalBlock(scope: !998, file: !18, line: 382, column: 2)
!1003 = !{i32 -2142679045, i32 -2142679038, i32 -2142678984, i32 -2142678953, i32 -2142678923}
!1004 = !DILocation(line: 382, column: 2, scope: !1002, inlinedAt: !781)
!1005 = !DILocation(line: 386, column: 1, scope: !777, inlinedAt: !781)
!1006 = !DILocation(line: 547, column: 9, scope: !757, inlinedAt: !762)
!1007 = !DILocation(line: 549, column: 8, scope: !1008, inlinedAt: !762)
!1008 = distinct !DILexicalBlock(scope: !757, file: !18, line: 549, column: 7)
!1009 = !DILocation(line: 549, column: 7, scope: !757, inlinedAt: !762)
!1010 = !DILocation(line: 550, column: 4, scope: !1008, inlinedAt: !762)
!1011 = !DILocation(line: 553, column: 33, scope: !757, inlinedAt: !762)
!1012 = !DILocation(line: 325, column: 6, scope: !1013, inlinedAt: !775)
!1013 = distinct !DILexicalBlock(scope: !771, file: !18, line: 325, column: 6)
!1014 = !DILocation(line: 325, column: 6, scope: !771, inlinedAt: !775)
!1015 = !DILocation(line: 326, column: 3, scope: !1013, inlinedAt: !775)
!1016 = !DILocation(line: 332, column: 9, scope: !771, inlinedAt: !775)
!1017 = !DILocation(line: 332, column: 15, scope: !771, inlinedAt: !775)
!1018 = !DILocation(line: 332, column: 2, scope: !771, inlinedAt: !775)
!1019 = !DILocation(line: 336, column: 1, scope: !771, inlinedAt: !775)
!1020 = !DILocation(line: 553, column: 5, scope: !757, inlinedAt: !762)
!1021 = !DILocation(line: 553, column: 41, scope: !757, inlinedAt: !762)
!1022 = !DILocation(line: 554, column: 5, scope: !757, inlinedAt: !762)
!1023 = !DILocation(line: 554, column: 12, scope: !757, inlinedAt: !762)
!1024 = !DILocation(line: 448, column: 31, scope: !749, inlinedAt: !756)
!1025 = !DILocation(line: 448, column: 34, scope: !749, inlinedAt: !756)
!1026 = !DILocation(line: 448, column: 14, scope: !749, inlinedAt: !756)
!1027 = !DILocation(line: 450, column: 22, scope: !749, inlinedAt: !756)
!1028 = !DILocation(line: 450, column: 25, scope: !749, inlinedAt: !756)
!1029 = !DILocation(line: 450, column: 30, scope: !749, inlinedAt: !756)
!1030 = !DILocation(line: 450, column: 36, scope: !749, inlinedAt: !756)
!1031 = !DILocation(line: 450, column: 8, scope: !749, inlinedAt: !756)
!1032 = !DILocation(line: 450, column: 6, scope: !749, inlinedAt: !756)
!1033 = !DILocation(line: 451, column: 9, scope: !749, inlinedAt: !756)
!1034 = !DILocation(line: 552, column: 3, scope: !757, inlinedAt: !762)
!1035 = !DILocation(line: 557, column: 19, scope: !759, inlinedAt: !762)
!1036 = !DILocation(line: 557, column: 25, scope: !759, inlinedAt: !762)
!1037 = !DILocation(line: 557, column: 9, scope: !759, inlinedAt: !762)
!1038 = !DILocation(line: 557, column: 2, scope: !759, inlinedAt: !762)
!1039 = !DILocation(line: 558, column: 1, scope: !759, inlinedAt: !762)
!1040 = !DILocation(line: 591, column: 3, scope: !763)
!1041 = !DILocation(line: 592, column: 19, scope: !747)
!1042 = !DILocation(line: 592, column: 26, scope: !747)
!1043 = !DILocation(line: 592, column: 9, scope: !747)
!1044 = !DILocation(line: 592, column: 2, scope: !747)
!1045 = !DILocation(line: 593, column: 1, scope: !747)
!1046 = distinct !DISubprogram(name: "__must_check_overflow", scope: !131, file: !131, line: 52, type: !1047, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!1049, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !26, line: 30, baseType: !1050)
!1050 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1051 = !DILocalVariable(name: "overflow", arg: 1, scope: !1046, file: !131, line: 52, type: !1049)
!1052 = !DILocation(line: 52, column: 60, scope: !1046)
!1053 = !DILocation(line: 54, column: 9, scope: !1046)
!1054 = !DILocation(line: 54, column: 2, scope: !1046)
!1055 = distinct !DISubprogram(name: "get_order", scope: !1056, file: !1056, line: 29, type: !1057, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!1056 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!60, !40}
!1059 = !DILocalVariable(name: "x", arg: 1, scope: !1060, file: !1061, line: 366, type: !164)
!1060 = distinct !DISubprogram(name: "fls64", scope: !1061, file: !1061, line: 366, type: !1062, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!1061 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!60, !164}
!1064 = !DILocation(line: 366, column: 40, scope: !1060, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 46, column: 9, scope: !1055)
!1066 = !DILocalVariable(name: "bitpos", scope: !1060, file: !1061, line: 368, type: !60)
!1067 = !DILocation(line: 368, column: 6, scope: !1060, inlinedAt: !1065)
!1068 = !DILocalVariable(name: "size", arg: 1, scope: !1055, file: !1056, line: 29, type: !40)
!1069 = !DILocation(line: 29, column: 63, scope: !1055)
!1070 = !DILocation(line: 31, column: 27, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1055, file: !1056, line: 31, column: 6)
!1072 = !DILocation(line: 31, column: 6, scope: !1071)
!1073 = !DILocation(line: 31, column: 6, scope: !1055)
!1074 = !DILocation(line: 32, column: 8, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !1056, line: 32, column: 7)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !1056, line: 31, column: 34)
!1077 = !DILocation(line: 32, column: 7, scope: !1076)
!1078 = !DILocation(line: 33, column: 4, scope: !1075)
!1079 = !DILocation(line: 35, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1076, file: !1056, line: 35, column: 7)
!1081 = !DILocation(line: 35, column: 12, scope: !1080)
!1082 = !DILocation(line: 35, column: 7, scope: !1076)
!1083 = !DILocation(line: 36, column: 4, scope: !1080)
!1084 = !DILocation(line: 38, column: 10, scope: !1076)
!1085 = !DILocation(line: 38, column: 28, scope: !1076)
!1086 = !DILocation(line: 38, column: 41, scope: !1076)
!1087 = !DILocation(line: 38, column: 3, scope: !1076)
!1088 = !DILocation(line: 41, column: 6, scope: !1055)
!1089 = !DILocation(line: 42, column: 7, scope: !1055)
!1090 = !DILocation(line: 46, column: 15, scope: !1055)
!1091 = !DILocation(line: 374, column: 2, scope: !1060, inlinedAt: !1065)
!1092 = !DILocation(line: 376, column: 14, scope: !1060, inlinedAt: !1065)
!1093 = !{i32 374348}
!1094 = !DILocation(line: 377, column: 9, scope: !1060, inlinedAt: !1065)
!1095 = !DILocation(line: 377, column: 16, scope: !1060, inlinedAt: !1065)
!1096 = !DILocation(line: 46, column: 2, scope: !1055)
!1097 = !DILocation(line: 48, column: 1, scope: !1055)
!1098 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1099, file: !1099, line: 30, type: !1100, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!1099 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!60, !163}
!1102 = !DILocation(line: 366, column: 40, scope: !1060, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 32, column: 9, scope: !1098)
!1104 = !DILocation(line: 368, column: 6, scope: !1060, inlinedAt: !1103)
!1105 = !DILocalVariable(name: "n", arg: 1, scope: !1098, file: !1099, line: 30, type: !163)
!1106 = !DILocation(line: 30, column: 21, scope: !1098)
!1107 = !DILocation(line: 32, column: 15, scope: !1098)
!1108 = !DILocation(line: 374, column: 2, scope: !1060, inlinedAt: !1103)
!1109 = !DILocation(line: 376, column: 14, scope: !1060, inlinedAt: !1103)
!1110 = !DILocation(line: 377, column: 9, scope: !1060, inlinedAt: !1103)
!1111 = !DILocation(line: 377, column: 16, scope: !1060, inlinedAt: !1103)
!1112 = !DILocation(line: 32, column: 18, scope: !1098)
!1113 = !DILocation(line: 32, column: 2, scope: !1098)
!1114 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1115, file: !1115, line: 137, type: !1116, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!1115 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!27, !752, !1118, !41, !25}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1120 = !DILocalVariable(name: "s", arg: 1, scope: !1114, file: !1115, line: 137, type: !752)
!1121 = !DILocation(line: 137, column: 54, scope: !1114)
!1122 = !DILocalVariable(name: "object", arg: 2, scope: !1114, file: !1115, line: 137, type: !1118)
!1123 = !DILocation(line: 137, column: 69, scope: !1114)
!1124 = !DILocalVariable(name: "size", arg: 3, scope: !1114, file: !1115, line: 138, type: !41)
!1125 = !DILocation(line: 138, column: 12, scope: !1114)
!1126 = !DILocalVariable(name: "flags", arg: 4, scope: !1114, file: !1115, line: 138, type: !25)
!1127 = !DILocation(line: 138, column: 24, scope: !1114)
!1128 = !DILocation(line: 140, column: 17, scope: !1114)
!1129 = !DILocation(line: 140, column: 2, scope: !1114)
!1130 = distinct !DISubprogram(name: "hlist_unhashed", scope: !1131, file: !1131, line: 806, type: !1132, scopeLine: 807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!1131 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!60, !1134}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!1136 = !DILocalVariable(name: "h", arg: 1, scope: !1130, file: !1131, line: 806, type: !1134)
!1137 = !DILocation(line: 806, column: 59, scope: !1130)
!1138 = !DILocation(line: 808, column: 10, scope: !1130)
!1139 = !DILocation(line: 808, column: 13, scope: !1130)
!1140 = !DILocation(line: 808, column: 9, scope: !1130)
!1141 = !DILocation(line: 808, column: 2, scope: !1130)
!1142 = distinct !DISubprogram(name: "__hlist_del", scope: !1131, file: !1131, line: 833, type: !700, scopeLine: 834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !75)
!1143 = !DILocalVariable(name: "n", arg: 1, scope: !1142, file: !1131, line: 833, type: !36)
!1144 = !DILocation(line: 833, column: 51, scope: !1142)
!1145 = !DILocalVariable(name: "next", scope: !1142, file: !1131, line: 835, type: !36)
!1146 = !DILocation(line: 835, column: 21, scope: !1142)
!1147 = !DILocation(line: 835, column: 28, scope: !1142)
!1148 = !DILocation(line: 835, column: 31, scope: !1142)
!1149 = !DILocalVariable(name: "pprev", scope: !1142, file: !1131, line: 836, type: !38)
!1150 = !DILocation(line: 836, column: 22, scope: !1142)
!1151 = !DILocation(line: 836, column: 30, scope: !1142)
!1152 = !DILocation(line: 836, column: 33, scope: !1142)
!1153 = !DILocation(line: 838, column: 2, scope: !1142)
!1154 = !DILocation(line: 838, column: 2, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1142, file: !1131, line: 838, column: 2)
!1156 = !DILocation(line: 838, column: 2, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1155, file: !1131, line: 838, column: 2)
!1158 = !DILocation(line: 838, column: 2, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !1131, line: 838, column: 2)
!1160 = !DILocation(line: 839, column: 6, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1142, file: !1131, line: 839, column: 6)
!1162 = !DILocation(line: 839, column: 6, scope: !1142)
!1163 = !DILocation(line: 840, column: 3, scope: !1161)
!1164 = !DILocation(line: 840, column: 3, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !1131, line: 840, column: 3)
!1166 = !DILocation(line: 840, column: 3, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1165, file: !1131, line: 840, column: 3)
!1168 = !DILocation(line: 840, column: 3, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !1131, line: 840, column: 3)
!1170 = !DILocation(line: 841, column: 1, scope: !1142)
