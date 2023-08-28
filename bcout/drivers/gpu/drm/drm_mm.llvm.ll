; ModuleID = '../bcout/drivers/gpu/drm/drm_mm.llvm.bc'
source_filename = "drivers/gpu/drm/drm_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.rb_augment_callbacks = type { void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.drm_mm_node = type { i64, i64, i64, %struct.drm_mm*, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.drm_mm = type { void (%struct.drm_mm_node*, i64, i64*, i64*)*, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i64 }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.drm_mm_scan = type { %struct.drm_mm*, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.drm_printer = type { void (%struct.drm_printer*, %struct.va_format*)*, void (%struct.drm_printer*, i8*)*, i8*, i8* }
%struct.va_format = type { i8*, [1 x %struct.__va_list_tag]* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [43 x i8] c"Memory manager not clean during takedown.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"drivers/gpu/drm/drm_mm.c\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%#018llx-%#018llx: %llu: used\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"total: %llu, used %llu free %llu\0A\00", align 1
@drm_mm_interval_tree_augment = internal constant %struct.rb_augment_callbacks { void (%struct.rb_node*, %struct.rb_node*)* @drm_mm_interval_tree_augment_propagate, void (%struct.rb_node*, %struct.rb_node*)* @drm_mm_interval_tree_augment_copy, void (%struct.rb_node*, %struct.rb_node*)* @drm_mm_interval_tree_augment_rotate }, align 8, !dbg !0
@augment_callbacks = internal constant %struct.rb_augment_callbacks { void (%struct.rb_node*, %struct.rb_node*)* @augment_callbacks_propagate, void (%struct.rb_node*, %struct.rb_node*)* @augment_callbacks_copy, void (%struct.rb_node*, %struct.rb_node*)* @augment_callbacks_rotate }, align 8, !dbg !96
@.str.4 = private unnamed_addr constant [31 x i8] c"%#018llx-%#018llx: %llu: free\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_mm_node* @__drm_mm_interval_first(%struct.drm_mm* %mm, i64 %start, i64 %last) #0 !dbg !113 {
entry:
  %mm.addr = alloca %struct.drm_mm*, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !119, metadata !DIExpression()), !dbg !120
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !121, metadata !DIExpression()), !dbg !122
  store i64 %last, i64* %last.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %last.addr, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !125
  %interval_tree = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %0, i32 0, i32 3, !dbg !126
  %1 = load i64, i64* %start.addr, align 8, !dbg !127
  %2 = load i64, i64* %last.addr, align 8, !dbg !128
  %call = call %struct.drm_mm_node* @drm_mm_interval_tree_iter_first(%struct.rb_root_cached* %interval_tree, i64 %1, i64 %2) #6, !dbg !129
  %tobool = icmp ne %struct.drm_mm_node* %call, null, !dbg !129
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !129

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !129

cond.false:                                       ; preds = %entry
  %3 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !130
  %head_node = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %3, i32 0, i32 2, !dbg !131
  br label %cond.end, !dbg !129

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.drm_mm_node* [ %call, %cond.true ], [ %head_node, %cond.false ], !dbg !129
  ret %struct.drm_mm_node* %cond, !dbg !132
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_mm_node* @drm_mm_interval_tree_iter_first(%struct.rb_root_cached* %root, i64 %start, i64 %last) #0 !dbg !133 {
entry:
  %retval = alloca %struct.drm_mm_node*, align 8
  %root.addr = alloca %struct.rb_root_cached*, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %node = alloca %struct.drm_mm_node*, align 8
  %leftmost = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp8 = alloca %struct.drm_mm_node*, align 8
  store %struct.rb_root_cached* %root, %struct.rb_root_cached** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root_cached** %root.addr, metadata !136, metadata !DIExpression()), !dbg !137
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !138, metadata !DIExpression()), !dbg !137
  store i64 %last, i64* %last.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %last.addr, metadata !139, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node, metadata !140, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %leftmost, metadata !141, metadata !DIExpression()), !dbg !137
  %0 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !142
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %0, i32 0, i32 0, !dbg !142
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %rb_root, i32 0, i32 0, !dbg !142
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8, !dbg !142
  %tobool = icmp ne %struct.rb_node* %1, null, !dbg !142
  br i1 %tobool, label %if.end, label %if.then, !dbg !137

if.then:                                          ; preds = %entry
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %retval, align 8, !dbg !142
  br label %return, !dbg !142

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !144, metadata !DIExpression()), !dbg !146
  %2 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !146
  %rb_root1 = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %2, i32 0, i32 0, !dbg !146
  %rb_node2 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %rb_root1, i32 0, i32 0, !dbg !146
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_node2, align 8, !dbg !146
  %4 = bitcast %struct.rb_node* %3 to i8*, !dbg !146
  store i8* %4, i8** %__mptr, align 8, !dbg !146
  br label %do.body, !dbg !146

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !147

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !146
  %add.ptr = getelementptr i8, i8* %5, i64 -64, !dbg !146
  %6 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !146
  store %struct.drm_mm_node* %6, %struct.drm_mm_node** %tmp, align 8, !dbg !147
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !146
  store %struct.drm_mm_node* %7, %struct.drm_mm_node** %node, align 8, !dbg !137
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !149
  %__subtree_last = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %8, i32 0, i32 9, !dbg !149
  %9 = load i64, i64* %__subtree_last, align 8, !dbg !149
  %10 = load i64, i64* %start.addr, align 8, !dbg !149
  %cmp = icmp ult i64 %9, %10, !dbg !149
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !137

if.then3:                                         ; preds = %do.end
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %retval, align 8, !dbg !149
  br label %return, !dbg !149

if.end4:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !151, metadata !DIExpression()), !dbg !153
  %11 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !153
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %11, i32 0, i32 1, !dbg !153
  %12 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8, !dbg !153
  %13 = bitcast %struct.rb_node* %12 to i8*, !dbg !153
  store i8* %13, i8** %__mptr5, align 8, !dbg !153
  br label %do.body6, !dbg !153

do.body6:                                         ; preds = %if.end4
  br label %do.end7, !dbg !154

do.end7:                                          ; preds = %do.body6
  %14 = load i8*, i8** %__mptr5, align 8, !dbg !153
  %add.ptr9 = getelementptr i8, i8* %14, i64 -64, !dbg !153
  %15 = bitcast i8* %add.ptr9 to %struct.drm_mm_node*, !dbg !153
  store %struct.drm_mm_node* %15, %struct.drm_mm_node** %tmp8, align 8, !dbg !154
  %16 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp8, align 8, !dbg !153
  store %struct.drm_mm_node* %16, %struct.drm_mm_node** %leftmost, align 8, !dbg !137
  %17 = load %struct.drm_mm_node*, %struct.drm_mm_node** %leftmost, align 8, !dbg !156
  %start10 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %17, i32 0, i32 1, !dbg !156
  %18 = load i64, i64* %start10, align 8, !dbg !156
  %19 = load i64, i64* %last.addr, align 8, !dbg !156
  %cmp11 = icmp ugt i64 %18, %19, !dbg !156
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !137

if.then12:                                        ; preds = %do.end7
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %retval, align 8, !dbg !156
  br label %return, !dbg !156

if.end13:                                         ; preds = %do.end7
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !137
  %21 = load i64, i64* %start.addr, align 8, !dbg !137
  %22 = load i64, i64* %last.addr, align 8, !dbg !137
  %call = call %struct.drm_mm_node* @drm_mm_interval_tree_subtree_search(%struct.drm_mm_node* %20, i64 %21, i64 %22) #6, !dbg !137
  store %struct.drm_mm_node* %call, %struct.drm_mm_node** %retval, align 8, !dbg !137
  br label %return, !dbg !137

return:                                           ; preds = %if.end13, %if.then12, %if.then3, %if.then
  %23 = load %struct.drm_mm_node*, %struct.drm_mm_node** %retval, align 8, !dbg !137
  ret %struct.drm_mm_node* %23, !dbg !137
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_mm_reserve_node(%struct.drm_mm* %mm, %struct.drm_mm_node* %node) #0 !dbg !158 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca %struct.drm_mm*, align 8
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %hole = alloca %struct.drm_mm_node*, align 8
  %hole_start = alloca i64, align 8
  %hole_end = alloca i64, align 8
  %adj_start = alloca i64, align 8
  %adj_end = alloca i64, align 8
  %end = alloca i64, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !162, metadata !DIExpression()), !dbg !163
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %hole, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i64* %hole_start, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i64* %hole_end, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i64* %adj_start, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i64* %adj_end, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i64* %end, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !178
  %start = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 1, !dbg !179
  %1 = load i64, i64* %start, align 8, !dbg !179
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !180
  %size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %2, i32 0, i32 2, !dbg !181
  %3 = load i64, i64* %size, align 8, !dbg !181
  %add = add i64 %1, %3, !dbg !182
  store i64 %add, i64* %end, align 8, !dbg !183
  %4 = load i64, i64* %end, align 8, !dbg !184
  %5 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !184
  %start1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %5, i32 0, i32 1, !dbg !184
  %6 = load i64, i64* %start1, align 8, !dbg !184
  %cmp = icmp ule i64 %4, %6, !dbg !184
  %lnot = xor i1 %cmp, true, !dbg !184
  %lnot2 = xor i1 %lnot, true, !dbg !184
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !184
  %conv = sext i32 %lnot.ext to i64, !dbg !184
  %tobool = icmp ne i64 %conv, 0, !dbg !184
  br i1 %tobool, label %if.then, label %if.end, !dbg !186

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval, align 4, !dbg !187
  br label %return, !dbg !187

if.end:                                           ; preds = %entry
  %7 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !188
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !189
  %start3 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %8, i32 0, i32 1, !dbg !190
  %9 = load i64, i64* %start3, align 8, !dbg !190
  %call = call %struct.drm_mm_node* @find_hole_addr(%struct.drm_mm* %7, i64 %9, i64 0) #6, !dbg !191
  store %struct.drm_mm_node* %call, %struct.drm_mm_node** %hole, align 8, !dbg !192
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !193
  %tobool4 = icmp ne %struct.drm_mm_node* %10, null, !dbg !193
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !195

if.then5:                                         ; preds = %if.end
  store i32 -28, i32* %retval, align 4, !dbg !196
  br label %return, !dbg !196

if.end6:                                          ; preds = %if.end
  %11 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !197
  %call7 = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %11) #6, !dbg !198
  store i64 %call7, i64* %hole_start, align 8, !dbg !199
  store i64 %call7, i64* %adj_start, align 8, !dbg !200
  %12 = load i64, i64* %hole_start, align 8, !dbg !201
  %13 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !202
  %hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %13, i32 0, i32 10, !dbg !203
  %14 = load i64, i64* %hole_size, align 8, !dbg !203
  %add8 = add i64 %12, %14, !dbg !204
  store i64 %add8, i64* %hole_end, align 8, !dbg !205
  store i64 %add8, i64* %adj_end, align 8, !dbg !206
  %15 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !207
  %color_adjust = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %15, i32 0, i32 0, !dbg !209
  %16 = load void (%struct.drm_mm_node*, i64, i64*, i64*)*, void (%struct.drm_mm_node*, i64, i64*, i64*)** %color_adjust, align 8, !dbg !209
  %tobool9 = icmp ne void (%struct.drm_mm_node*, i64, i64*, i64*)* %16, null, !dbg !207
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !210

if.then10:                                        ; preds = %if.end6
  %17 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !211
  %color_adjust11 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %17, i32 0, i32 0, !dbg !212
  %18 = load void (%struct.drm_mm_node*, i64, i64*, i64*)*, void (%struct.drm_mm_node*, i64, i64*, i64*)** %color_adjust11, align 8, !dbg !212
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !213
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !214
  %color = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %20, i32 0, i32 0, !dbg !215
  %21 = load i64, i64* %color, align 8, !dbg !215
  call void %18(%struct.drm_mm_node* %19, i64 %21, i64* %adj_start, i64* %adj_end) #6, !dbg !211
  br label %if.end12, !dbg !211

if.end12:                                         ; preds = %if.then10, %if.end6
  %22 = load i64, i64* %adj_start, align 8, !dbg !216
  %23 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !218
  %start13 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %23, i32 0, i32 1, !dbg !219
  %24 = load i64, i64* %start13, align 8, !dbg !219
  %cmp14 = icmp ugt i64 %22, %24, !dbg !220
  br i1 %cmp14, label %if.then18, label %lor.lhs.false, !dbg !221

lor.lhs.false:                                    ; preds = %if.end12
  %25 = load i64, i64* %adj_end, align 8, !dbg !222
  %26 = load i64, i64* %end, align 8, !dbg !223
  %cmp16 = icmp ult i64 %25, %26, !dbg !224
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !225

if.then18:                                        ; preds = %lor.lhs.false, %if.end12
  store i32 -28, i32* %retval, align 4, !dbg !226
  br label %return, !dbg !226

if.end19:                                         ; preds = %lor.lhs.false
  %27 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !227
  %28 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !228
  %mm20 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %28, i32 0, i32 3, !dbg !229
  store %struct.drm_mm* %27, %struct.drm_mm** %mm20, align 8, !dbg !230
  %29 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !231
  %flags = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %29, i32 0, i32 12, !dbg !232
  call void @__set_bit(i64 0, i64* %flags) #6, !dbg !233
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !234
  %node_list = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %30, i32 0, i32 4, !dbg !235
  %31 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !236
  %node_list21 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %31, i32 0, i32 4, !dbg !237
  call void @list_add(%struct.list_head* %node_list, %struct.list_head* %node_list21) #6, !dbg !238
  %32 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !239
  %33 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !240
  call void @drm_mm_interval_tree_add_node(%struct.drm_mm_node* %32, %struct.drm_mm_node* %33) #6, !dbg !241
  %34 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !242
  %hole_size22 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %34, i32 0, i32 10, !dbg !243
  store i64 0, i64* %hole_size22, align 8, !dbg !244
  %35 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !245
  call void @rm_hole(%struct.drm_mm_node* %35) #6, !dbg !246
  %36 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !247
  %start23 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %36, i32 0, i32 1, !dbg !249
  %37 = load i64, i64* %start23, align 8, !dbg !249
  %38 = load i64, i64* %hole_start, align 8, !dbg !250
  %cmp24 = icmp ugt i64 %37, %38, !dbg !251
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !252

if.then26:                                        ; preds = %if.end19
  %39 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !253
  call void @add_hole(%struct.drm_mm_node* %39) #6, !dbg !254
  br label %if.end27, !dbg !254

if.end27:                                         ; preds = %if.then26, %if.end19
  %40 = load i64, i64* %end, align 8, !dbg !255
  %41 = load i64, i64* %hole_end, align 8, !dbg !257
  %cmp28 = icmp ult i64 %40, %41, !dbg !258
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !259

if.then30:                                        ; preds = %if.end27
  %42 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !260
  call void @add_hole(%struct.drm_mm_node* %42) #6, !dbg !261
  br label %if.end31, !dbg !261

if.end31:                                         ; preds = %if.then30, %if.end27
  %43 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !262
  call void @save_stack(%struct.drm_mm_node* %43) #6, !dbg !263
  store i32 0, i32* %retval, align 4, !dbg !264
  br label %return, !dbg !264

return:                                           ; preds = %if.end31, %if.then18, %if.then5, %if.then
  %44 = load i32, i32* %retval, align 4, !dbg !265
  ret i32 %44, !dbg !265
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_mm_node* @find_hole_addr(%struct.drm_mm* %mm, i64 %addr, i64 %size) #0 !dbg !266 {
entry:
  %mm.addr = alloca %struct.drm_mm*, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %rb = alloca %struct.rb_node*, align 8
  %node = alloca %struct.drm_mm_node*, align 8
  %hole_start = alloca i64, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !269, metadata !DIExpression()), !dbg !270
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !271, metadata !DIExpression()), !dbg !272
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !277
  %holes_addr = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %0, i32 0, i32 5, !dbg !278
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %holes_addr, i32 0, i32 0, !dbg !279
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8, !dbg !279
  store %struct.rb_node* %1, %struct.rb_node** %rb, align 8, !dbg !276
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node, metadata !280, metadata !DIExpression()), !dbg !281
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %node, align 8, !dbg !281
  br label %while.cond, !dbg !282

while.cond:                                       ; preds = %if.end9, %entry
  %2 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !283
  %tobool = icmp ne %struct.rb_node* %2, null, !dbg !282
  br i1 %tobool, label %while.body, label %while.end, !dbg !282

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %hole_start, metadata !284, metadata !DIExpression()), !dbg !286
  %3 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !287
  %4 = load i64, i64* %size.addr, align 8, !dbg !289
  %call = call zeroext i1 @usable_hole_addr(%struct.rb_node* %3, i64 %4) #6, !dbg !290
  br i1 %call, label %if.end, label %if.then, !dbg !291

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !292

if.end:                                           ; preds = %while.body
  %5 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !293
  %call1 = call %struct.drm_mm_node* @rb_hole_addr_to_node(%struct.rb_node* %5) #6, !dbg !294
  store %struct.drm_mm_node* %call1, %struct.drm_mm_node** %node, align 8, !dbg !295
  %6 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !296
  %call2 = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %6) #6, !dbg !297
  store i64 %call2, i64* %hole_start, align 8, !dbg !298
  %7 = load i64, i64* %addr.addr, align 8, !dbg !299
  %8 = load i64, i64* %hole_start, align 8, !dbg !301
  %cmp = icmp ult i64 %7, %8, !dbg !302
  br i1 %cmp, label %if.then3, label %if.else, !dbg !303

if.then3:                                         ; preds = %if.end
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !304
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %9, i32 0, i32 8, !dbg !305
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_hole_addr, i32 0, i32 2, !dbg !306
  %10 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8, !dbg !306
  store %struct.rb_node* %10, %struct.rb_node** %rb, align 8, !dbg !307
  br label %if.end9, !dbg !308

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* %addr.addr, align 8, !dbg !309
  %12 = load i64, i64* %hole_start, align 8, !dbg !311
  %13 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !312
  %hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %13, i32 0, i32 10, !dbg !313
  %14 = load i64, i64* %hole_size, align 8, !dbg !313
  %add = add i64 %12, %14, !dbg !314
  %cmp4 = icmp ugt i64 %11, %add, !dbg !315
  br i1 %cmp4, label %if.then5, label %if.else7, !dbg !316

if.then5:                                         ; preds = %if.else
  %15 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !317
  %rb_hole_addr6 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %15, i32 0, i32 8, !dbg !318
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_hole_addr6, i32 0, i32 1, !dbg !319
  %16 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8, !dbg !319
  store %struct.rb_node* %16, %struct.rb_node** %rb, align 8, !dbg !320
  br label %if.end8, !dbg !321

if.else7:                                         ; preds = %if.else
  br label %while.end, !dbg !322

if.end8:                                          ; preds = %if.then5
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then3
  br label %while.cond, !dbg !282, !llvm.loop !323

while.end:                                        ; preds = %if.else7, %if.then, %while.cond
  %17 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !325
  ret %struct.drm_mm_node* %17, !dbg !326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %hole_node) #0 !dbg !327 {
entry:
  %hole_node.addr = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %hole_node, %struct.drm_mm_node** %hole_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %hole_node.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole_node.addr, align 8, !dbg !332
  %start = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 1, !dbg !333
  %1 = load i64, i64* %start, align 8, !dbg !333
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole_node.addr, align 8, !dbg !334
  %size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %2, i32 0, i32 2, !dbg !335
  %3 = load i64, i64* %size, align 8, !dbg !335
  %add = add i64 %1, %3, !dbg !336
  ret i64 %add, !dbg !337
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !338 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !344, metadata !DIExpression()), !dbg !347
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !349, metadata !DIExpression()), !dbg !350
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !351, metadata !DIExpression()), !dbg !363
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !365, metadata !DIExpression()), !dbg !366
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !367, metadata !DIExpression()), !dbg !368
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !371
  %1 = load i64, i64* %nr.addr, align 8, !dbg !372
  %div = sdiv i64 %1, 64, !dbg !372
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !373
  %2 = bitcast i64* %add.ptr to i8*, !dbg !371
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !374
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !375
  %conv.i = trunc i64 %4 to i32, !dbg !375
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #7, !dbg !376
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !377
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !377
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #7, !dbg !377
  %7 = load i64, i64* %nr.addr, align 8, !dbg !378
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !379
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !380
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !381
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #8, !dbg !382, !srcloc !383
  ret void, !dbg !384
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !385 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !389, metadata !DIExpression()), !dbg !390
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !393
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !394
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !395
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !396
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !396
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #6, !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_mm_interval_tree_add_node(%struct.drm_mm_node* %hole_node, %struct.drm_mm_node* %node) #0 !dbg !399 {
entry:
  %hole_node.addr = alloca %struct.drm_mm_node*, align 8
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %mm = alloca %struct.drm_mm*, align 8
  %link = alloca %struct.rb_node**, align 8
  %rb = alloca %struct.rb_node*, align 8
  %parent = alloca %struct.drm_mm_node*, align 8
  %leftmost = alloca i8, align 1
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %__mptr14 = alloca i8*, align 8
  %tmp17 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %hole_node, %struct.drm_mm_node** %hole_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %hole_node.addr, metadata !402, metadata !DIExpression()), !dbg !403
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !404, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole_node.addr, align 8, !dbg !408
  %mm1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 3, !dbg !409
  %1 = load %struct.drm_mm*, %struct.drm_mm** %mm1, align 8, !dbg !409
  store %struct.drm_mm* %1, %struct.drm_mm** %mm, align 8, !dbg !407
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %link, metadata !410, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %parent, metadata !415, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.declare(metadata i8* %leftmost, metadata !417, metadata !DIExpression()), !dbg !420
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !421
  %start = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %2, i32 0, i32 1, !dbg !421
  %3 = load i64, i64* %start, align 8, !dbg !421
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !421
  %size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %4, i32 0, i32 2, !dbg !421
  %5 = load i64, i64* %size, align 8, !dbg !421
  %add = add i64 %3, %5, !dbg !421
  %sub = sub i64 %add, 1, !dbg !421
  %6 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !422
  %__subtree_last = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 9, !dbg !423
  store i64 %sub, i64* %__subtree_last, align 8, !dbg !424
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole_node.addr, align 8, !dbg !425
  %call = call zeroext i1 @drm_mm_node_allocated(%struct.drm_mm_node* %7) #6, !dbg !427
  br i1 %call, label %if.then, label %if.else, !dbg !428

if.then:                                          ; preds = %entry
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole_node.addr, align 8, !dbg !429
  %rb2 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %8, i32 0, i32 6, !dbg !431
  store %struct.rb_node* %rb2, %struct.rb_node** %rb, align 8, !dbg !432
  br label %while.cond, !dbg !433

while.cond:                                       ; preds = %if.end, %if.then
  %9 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !434
  %tobool = icmp ne %struct.rb_node* %9, null, !dbg !433
  br i1 %tobool, label %while.body, label %while.end, !dbg !433

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !435, metadata !DIExpression()), !dbg !438
  %10 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !438
  %11 = bitcast %struct.rb_node* %10 to i8*, !dbg !438
  store i8* %11, i8** %__mptr, align 8, !dbg !438
  br label %do.body, !dbg !438

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !439

do.end:                                           ; preds = %do.body
  %12 = load i8*, i8** %__mptr, align 8, !dbg !438
  %add.ptr = getelementptr i8, i8* %12, i64 -64, !dbg !438
  %13 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !438
  store %struct.drm_mm_node* %13, %struct.drm_mm_node** %tmp, align 8, !dbg !439
  %14 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !438
  store %struct.drm_mm_node* %14, %struct.drm_mm_node** %parent, align 8, !dbg !441
  %15 = load %struct.drm_mm_node*, %struct.drm_mm_node** %parent, align 8, !dbg !442
  %__subtree_last3 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %15, i32 0, i32 9, !dbg !444
  %16 = load i64, i64* %__subtree_last3, align 8, !dbg !444
  %17 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !445
  %__subtree_last4 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %17, i32 0, i32 9, !dbg !446
  %18 = load i64, i64* %__subtree_last4, align 8, !dbg !446
  %cmp = icmp uge i64 %16, %18, !dbg !447
  br i1 %cmp, label %if.then5, label %if.end, !dbg !448

if.then5:                                         ; preds = %do.end
  br label %while.end, !dbg !449

if.end:                                           ; preds = %do.end
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !450
  %__subtree_last6 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %19, i32 0, i32 9, !dbg !451
  %20 = load i64, i64* %__subtree_last6, align 8, !dbg !451
  %21 = load %struct.drm_mm_node*, %struct.drm_mm_node** %parent, align 8, !dbg !452
  %__subtree_last7 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %21, i32 0, i32 9, !dbg !453
  store i64 %20, i64* %__subtree_last7, align 8, !dbg !454
  %22 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !455
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %22, i32 0, i32 0, !dbg !455
  %23 = load i64, i64* %__rb_parent_color, align 8, !dbg !455
  %and = and i64 %23, -4, !dbg !455
  %24 = inttoptr i64 %and to %struct.rb_node*, !dbg !455
  store %struct.rb_node* %24, %struct.rb_node** %rb, align 8, !dbg !456
  br label %while.cond, !dbg !433, !llvm.loop !457

while.end:                                        ; preds = %if.then5, %while.cond
  %25 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole_node.addr, align 8, !dbg !459
  %rb8 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %25, i32 0, i32 6, !dbg !460
  store %struct.rb_node* %rb8, %struct.rb_node** %rb, align 8, !dbg !461
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole_node.addr, align 8, !dbg !462
  %rb9 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %26, i32 0, i32 6, !dbg !463
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb9, i32 0, i32 1, !dbg !464
  store %struct.rb_node** %rb_right, %struct.rb_node*** %link, align 8, !dbg !465
  store i8 0, i8* %leftmost, align 1, !dbg !466
  br label %if.end10, !dbg !467

if.else:                                          ; preds = %entry
  store %struct.rb_node* null, %struct.rb_node** %rb, align 8, !dbg !468
  %27 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !470
  %interval_tree = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %27, i32 0, i32 3, !dbg !471
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %interval_tree, i32 0, i32 0, !dbg !472
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %rb_root, i32 0, i32 0, !dbg !473
  store %struct.rb_node** %rb_node, %struct.rb_node*** %link, align 8, !dbg !474
  store i8 1, i8* %leftmost, align 1, !dbg !475
  br label %if.end10

if.end10:                                         ; preds = %if.else, %while.end
  br label %while.cond11, !dbg !476

while.cond11:                                     ; preds = %if.end34, %if.end10
  %28 = load %struct.rb_node**, %struct.rb_node*** %link, align 8, !dbg !477
  %29 = load %struct.rb_node*, %struct.rb_node** %28, align 8, !dbg !478
  %tobool12 = icmp ne %struct.rb_node* %29, null, !dbg !476
  br i1 %tobool12, label %while.body13, label %while.end35, !dbg !476

while.body13:                                     ; preds = %while.cond11
  %30 = load %struct.rb_node**, %struct.rb_node*** %link, align 8, !dbg !479
  %31 = load %struct.rb_node*, %struct.rb_node** %30, align 8, !dbg !481
  store %struct.rb_node* %31, %struct.rb_node** %rb, align 8, !dbg !482
  call void @llvm.dbg.declare(metadata i8** %__mptr14, metadata !483, metadata !DIExpression()), !dbg !485
  %32 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !485
  %33 = bitcast %struct.rb_node* %32 to i8*, !dbg !485
  store i8* %33, i8** %__mptr14, align 8, !dbg !485
  br label %do.body15, !dbg !485

do.body15:                                        ; preds = %while.body13
  br label %do.end16, !dbg !486

do.end16:                                         ; preds = %do.body15
  %34 = load i8*, i8** %__mptr14, align 8, !dbg !485
  %add.ptr18 = getelementptr i8, i8* %34, i64 -64, !dbg !485
  %35 = bitcast i8* %add.ptr18 to %struct.drm_mm_node*, !dbg !485
  store %struct.drm_mm_node* %35, %struct.drm_mm_node** %tmp17, align 8, !dbg !486
  %36 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp17, align 8, !dbg !485
  store %struct.drm_mm_node* %36, %struct.drm_mm_node** %parent, align 8, !dbg !488
  %37 = load %struct.drm_mm_node*, %struct.drm_mm_node** %parent, align 8, !dbg !489
  %__subtree_last19 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %37, i32 0, i32 9, !dbg !491
  %38 = load i64, i64* %__subtree_last19, align 8, !dbg !491
  %39 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !492
  %__subtree_last20 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %39, i32 0, i32 9, !dbg !493
  %40 = load i64, i64* %__subtree_last20, align 8, !dbg !493
  %cmp21 = icmp ult i64 %38, %40, !dbg !494
  br i1 %cmp21, label %if.then22, label %if.end25, !dbg !495

if.then22:                                        ; preds = %do.end16
  %41 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !496
  %__subtree_last23 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %41, i32 0, i32 9, !dbg !497
  %42 = load i64, i64* %__subtree_last23, align 8, !dbg !497
  %43 = load %struct.drm_mm_node*, %struct.drm_mm_node** %parent, align 8, !dbg !498
  %__subtree_last24 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %43, i32 0, i32 9, !dbg !499
  store i64 %42, i64* %__subtree_last24, align 8, !dbg !500
  br label %if.end25, !dbg !498

if.end25:                                         ; preds = %if.then22, %do.end16
  %44 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !501
  %start26 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %44, i32 0, i32 1, !dbg !503
  %45 = load i64, i64* %start26, align 8, !dbg !503
  %46 = load %struct.drm_mm_node*, %struct.drm_mm_node** %parent, align 8, !dbg !504
  %start27 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %46, i32 0, i32 1, !dbg !505
  %47 = load i64, i64* %start27, align 8, !dbg !505
  %cmp28 = icmp ult i64 %45, %47, !dbg !506
  br i1 %cmp28, label %if.then29, label %if.else31, !dbg !507

if.then29:                                        ; preds = %if.end25
  %48 = load %struct.drm_mm_node*, %struct.drm_mm_node** %parent, align 8, !dbg !508
  %rb30 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %48, i32 0, i32 6, !dbg !510
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb30, i32 0, i32 2, !dbg !511
  store %struct.rb_node** %rb_left, %struct.rb_node*** %link, align 8, !dbg !512
  br label %if.end34, !dbg !513

if.else31:                                        ; preds = %if.end25
  %49 = load %struct.drm_mm_node*, %struct.drm_mm_node** %parent, align 8, !dbg !514
  %rb32 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %49, i32 0, i32 6, !dbg !516
  %rb_right33 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb32, i32 0, i32 1, !dbg !517
  store %struct.rb_node** %rb_right33, %struct.rb_node*** %link, align 8, !dbg !518
  store i8 0, i8* %leftmost, align 1, !dbg !519
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.then29
  br label %while.cond11, !dbg !476, !llvm.loop !520

while.end35:                                      ; preds = %while.cond11
  %50 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !522
  %rb36 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %50, i32 0, i32 6, !dbg !523
  %51 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !524
  %52 = load %struct.rb_node**, %struct.rb_node*** %link, align 8, !dbg !525
  call void @rb_link_node(%struct.rb_node* %rb36, %struct.rb_node* %51, %struct.rb_node** %52) #6, !dbg !526
  %53 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !527
  %rb37 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %53, i32 0, i32 6, !dbg !528
  %54 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !529
  %interval_tree38 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %54, i32 0, i32 3, !dbg !530
  %55 = load i8, i8* %leftmost, align 1, !dbg !531
  %tobool39 = trunc i8 %55 to i1, !dbg !531
  call void @rb_insert_augmented_cached(%struct.rb_node* %rb37, %struct.rb_root_cached* %interval_tree38, i1 zeroext %tobool39, %struct.rb_augment_callbacks* @drm_mm_interval_tree_augment) #6, !dbg !532
  ret void, !dbg !533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rm_hole(%struct.drm_mm_node* %node) #0 !dbg !534 {
entry:
  %node.addr.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node.addr.i.i, metadata !537, metadata !DIExpression()), !dbg !543
  %root.addr.i.i = alloca %struct.rb_root*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %root.addr.i.i, metadata !549, metadata !DIExpression()), !dbg !550
  %augment.addr.i.i = alloca %struct.rb_augment_callbacks*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_augment_callbacks** %augment.addr.i.i, metadata !551, metadata !DIExpression()), !dbg !552
  %child.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %child.i.i, metadata !553, metadata !DIExpression()), !dbg !554
  %tmp.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %tmp.i.i, metadata !555, metadata !DIExpression()), !dbg !556
  %parent.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %parent.i.i, metadata !557, metadata !DIExpression()), !dbg !558
  %rebalance.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rebalance.i.i, metadata !559, metadata !DIExpression()), !dbg !560
  %pc.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pc.i.i, metadata !561, metadata !DIExpression()), !dbg !562
  %successor.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %successor.i.i, metadata !563, metadata !DIExpression()), !dbg !567
  %child2.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %child2.i.i, metadata !568, metadata !DIExpression()), !dbg !569
  %node.addr.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node.addr.i, metadata !570, metadata !DIExpression()), !dbg !571
  %root.addr.i = alloca %struct.rb_root*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %root.addr.i, metadata !572, metadata !DIExpression()), !dbg !573
  %augment.addr.i = alloca %struct.rb_augment_callbacks*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_augment_callbacks** %augment.addr.i, metadata !574, metadata !DIExpression()), !dbg !575
  %rebalance.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rebalance.i, metadata !576, metadata !DIExpression()), !dbg !577
  %node.addr = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !578, metadata !DIExpression()), !dbg !579
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !580
  %hole_stack = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 5, !dbg !581
  call void @list_del(%struct.list_head* %hole_stack) #6, !dbg !582
  %1 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !583
  %rb_hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %1, i32 0, i32 7, !dbg !584
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !585
  %mm = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %2, i32 0, i32 3, !dbg !586
  %3 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !586
  %holes_size = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %3, i32 0, i32 4, !dbg !587
  call void @rb_erase_cached(%struct.rb_node* %rb_hole_size, %struct.rb_root_cached* %holes_size) #6, !dbg !588
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !589
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %4, i32 0, i32 8, !dbg !590
  %5 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !591
  %mm1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %5, i32 0, i32 3, !dbg !592
  %6 = load %struct.drm_mm*, %struct.drm_mm** %mm1, align 8, !dbg !592
  %holes_addr = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %6, i32 0, i32 5, !dbg !593
  store %struct.rb_node* %rb_hole_addr, %struct.rb_node** %node.addr.i, align 8
  store %struct.rb_root* %holes_addr, %struct.rb_root** %root.addr.i, align 8
  store %struct.rb_augment_callbacks* @augment_callbacks, %struct.rb_augment_callbacks** %augment.addr.i, align 8
  %7 = load %struct.rb_node*, %struct.rb_node** %node.addr.i, align 8, !dbg !594
  %8 = load %struct.rb_root*, %struct.rb_root** %root.addr.i, align 8, !dbg !595
  %9 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i, align 8, !dbg !596
  store %struct.rb_node* %7, %struct.rb_node** %node.addr.i.i, align 8
  store %struct.rb_root* %8, %struct.rb_root** %root.addr.i.i, align 8
  store %struct.rb_augment_callbacks* %9, %struct.rb_augment_callbacks** %augment.addr.i.i, align 8
  %10 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i, align 8, !dbg !597
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i32 0, i32 1, !dbg !598
  %11 = load %struct.rb_node*, %struct.rb_node** %rb_right.i.i, align 8, !dbg !598
  store %struct.rb_node* %11, %struct.rb_node** %child.i.i, align 8, !dbg !554
  %12 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i, align 8, !dbg !599
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %12, i32 0, i32 2, !dbg !600
  %13 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i, align 8, !dbg !600
  store %struct.rb_node* %13, %struct.rb_node** %tmp.i.i, align 8, !dbg !556
  %14 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i, align 8, !dbg !601
  %tobool.i.i = icmp ne %struct.rb_node* %14, null, !dbg !601
  br i1 %tobool.i.i, label %if.else6.i.i, label %if.then.i.i, !dbg !602

if.then.i.i:                                      ; preds = %entry
  %15 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i, align 8, !dbg !603
  %__rb_parent_color.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 0, !dbg !605
  %16 = load i64, i64* %__rb_parent_color.i.i, align 8, !dbg !605
  store i64 %16, i64* %pc.i.i, align 8, !dbg !606
  %17 = load i64, i64* %pc.i.i, align 8, !dbg !607
  %and.i.i = and i64 %17, -4, !dbg !607
  %18 = inttoptr i64 %and.i.i to %struct.rb_node*, !dbg !607
  store %struct.rb_node* %18, %struct.rb_node** %parent.i.i, align 8, !dbg !608
  %19 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i, align 8, !dbg !609
  %20 = load %struct.rb_node*, %struct.rb_node** %child.i.i, align 8, !dbg !610
  %21 = load %struct.rb_node*, %struct.rb_node** %parent.i.i, align 8, !dbg !611
  %22 = load %struct.rb_root*, %struct.rb_root** %root.addr.i.i, align 8, !dbg !612
  call void @__rb_change_child(%struct.rb_node* %19, %struct.rb_node* %20, %struct.rb_node* %21, %struct.rb_root* %22) #7, !dbg !613
  %23 = load %struct.rb_node*, %struct.rb_node** %child.i.i, align 8, !dbg !614
  %tobool1.i.i = icmp ne %struct.rb_node* %23, null, !dbg !614
  br i1 %tobool1.i.i, label %if.then2.i.i, label %if.else.i.i, !dbg !616

if.then2.i.i:                                     ; preds = %if.then.i.i
  %24 = load i64, i64* %pc.i.i, align 8, !dbg !617
  %25 = load %struct.rb_node*, %struct.rb_node** %child.i.i, align 8, !dbg !619
  %__rb_parent_color3.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %25, i32 0, i32 0, !dbg !620
  store i64 %24, i64* %__rb_parent_color3.i.i, align 8, !dbg !621
  store %struct.rb_node* null, %struct.rb_node** %rebalance.i.i, align 8, !dbg !622
  br label %if.end.i.i, !dbg !623

if.else.i.i:                                      ; preds = %if.then.i.i
  %26 = load i64, i64* %pc.i.i, align 8, !dbg !624
  %and4.i.i = and i64 %26, 1, !dbg !624
  %tobool5.i.i = icmp ne i64 %and4.i.i, 0, !dbg !624
  br i1 %tobool5.i.i, label %cond.true.i.i, label %cond.false.i.i, !dbg !624

cond.true.i.i:                                    ; preds = %if.else.i.i
  %27 = load %struct.rb_node*, %struct.rb_node** %parent.i.i, align 8, !dbg !625
  br label %cond.end.i.i, !dbg !624

cond.false.i.i:                                   ; preds = %if.else.i.i
  br label %cond.end.i.i, !dbg !624

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi %struct.rb_node* [ %27, %cond.true.i.i ], [ null, %cond.false.i.i ], !dbg !624
  store %struct.rb_node* %cond.i.i, %struct.rb_node** %rebalance.i.i, align 8, !dbg !626
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.end.i.i, %if.then2.i.i
  %28 = load %struct.rb_node*, %struct.rb_node** %parent.i.i, align 8, !dbg !627
  store %struct.rb_node* %28, %struct.rb_node** %tmp.i.i, align 8, !dbg !628
  br label %__rb_erase_augmented.exit.i, !dbg !629

if.else6.i.i:                                     ; preds = %entry
  %29 = load %struct.rb_node*, %struct.rb_node** %child.i.i, align 8, !dbg !630
  %tobool7.i.i = icmp ne %struct.rb_node* %29, null, !dbg !630
  br i1 %tobool7.i.i, label %if.else12.i.i, label %if.then8.i.i, !dbg !631

if.then8.i.i:                                     ; preds = %if.else6.i.i
  %30 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i, align 8, !dbg !632
  %__rb_parent_color9.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %30, i32 0, i32 0, !dbg !634
  %31 = load i64, i64* %__rb_parent_color9.i.i, align 8, !dbg !634
  store i64 %31, i64* %pc.i.i, align 8, !dbg !635
  %32 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i, align 8, !dbg !636
  %__rb_parent_color10.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %32, i32 0, i32 0, !dbg !637
  store i64 %31, i64* %__rb_parent_color10.i.i, align 8, !dbg !638
  %33 = load i64, i64* %pc.i.i, align 8, !dbg !639
  %and11.i.i = and i64 %33, -4, !dbg !639
  %34 = inttoptr i64 %and11.i.i to %struct.rb_node*, !dbg !639
  store %struct.rb_node* %34, %struct.rb_node** %parent.i.i, align 8, !dbg !640
  %35 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i, align 8, !dbg !641
  %36 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i, align 8, !dbg !642
  %37 = load %struct.rb_node*, %struct.rb_node** %parent.i.i, align 8, !dbg !643
  %38 = load %struct.rb_root*, %struct.rb_root** %root.addr.i.i, align 8, !dbg !644
  call void @__rb_change_child(%struct.rb_node* %35, %struct.rb_node* %36, %struct.rb_node* %37, %struct.rb_root* %38) #7, !dbg !645
  store %struct.rb_node* null, %struct.rb_node** %rebalance.i.i, align 8, !dbg !646
  %39 = load %struct.rb_node*, %struct.rb_node** %parent.i.i, align 8, !dbg !647
  store %struct.rb_node* %39, %struct.rb_node** %tmp.i.i, align 8, !dbg !648
  br label %if.end68.i.i, !dbg !649

if.else12.i.i:                                    ; preds = %if.else6.i.i
  %40 = load %struct.rb_node*, %struct.rb_node** %child.i.i, align 8, !dbg !650
  store %struct.rb_node* %40, %struct.rb_node** %successor.i.i, align 8, !dbg !567
  %41 = load %struct.rb_node*, %struct.rb_node** %child.i.i, align 8, !dbg !651
  %rb_left13.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %41, i32 0, i32 2, !dbg !652
  %42 = load %struct.rb_node*, %struct.rb_node** %rb_left13.i.i, align 8, !dbg !652
  store %struct.rb_node* %42, %struct.rb_node** %tmp.i.i, align 8, !dbg !653
  %43 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i, align 8, !dbg !654
  %tobool14.i.i = icmp ne %struct.rb_node* %43, null, !dbg !654
  br i1 %tobool14.i.i, label %if.else17.i.i, label %if.then15.i.i, !dbg !656

if.then15.i.i:                                    ; preds = %if.else12.i.i
  %44 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !657
  store %struct.rb_node* %44, %struct.rb_node** %parent.i.i, align 8, !dbg !659
  %45 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !660
  %rb_right16.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %45, i32 0, i32 1, !dbg !661
  %46 = load %struct.rb_node*, %struct.rb_node** %rb_right16.i.i, align 8, !dbg !661
  store %struct.rb_node* %46, %struct.rb_node** %child2.i.i, align 8, !dbg !662
  %47 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i.i, align 8, !dbg !663
  %copy.i.i = getelementptr inbounds %struct.rb_augment_callbacks, %struct.rb_augment_callbacks* %47, i32 0, i32 1, !dbg !664
  %48 = load void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)** %copy.i.i, align 8, !dbg !664
  %49 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i, align 8, !dbg !665
  %50 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !666
  call void %48(%struct.rb_node* %49, %struct.rb_node* %50) #7, !dbg !663
  br label %if.end42.i.i, !dbg !667

if.else17.i.i:                                    ; preds = %if.else12.i.i
  br label %do.body.i.i, !dbg !668

do.body.i.i:                                      ; preds = %do.body.i.i, %if.else17.i.i
  %51 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !670
  store %struct.rb_node* %51, %struct.rb_node** %parent.i.i, align 8, !dbg !672
  %52 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i, align 8, !dbg !673
  store %struct.rb_node* %52, %struct.rb_node** %successor.i.i, align 8, !dbg !674
  %53 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i, align 8, !dbg !675
  %rb_left18.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %53, i32 0, i32 2, !dbg !676
  %54 = load %struct.rb_node*, %struct.rb_node** %rb_left18.i.i, align 8, !dbg !676
  store %struct.rb_node* %54, %struct.rb_node** %tmp.i.i, align 8, !dbg !677
  %55 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i, align 8, !dbg !678
  %tobool19.i.i = icmp ne %struct.rb_node* %55, null, !dbg !679
  br i1 %tobool19.i.i, label %do.body.i.i, label %do.end.i.i, !dbg !679, !llvm.loop !680

do.end.i.i:                                       ; preds = %do.body.i.i
  %56 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !682
  %rb_right20.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %56, i32 0, i32 1, !dbg !683
  %57 = load %struct.rb_node*, %struct.rb_node** %rb_right20.i.i, align 8, !dbg !683
  store %struct.rb_node* %57, %struct.rb_node** %child2.i.i, align 8, !dbg !684
  %58 = load %struct.rb_node*, %struct.rb_node** %child2.i.i, align 8, !dbg !685
  %59 = load %struct.rb_node*, %struct.rb_node** %parent.i.i, align 8, !dbg !685
  %rb_left26.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %59, i32 0, i32 2, !dbg !685
  store volatile %struct.rb_node* %58, %struct.rb_node** %rb_left26.i.i, align 8, !dbg !685
  %60 = load %struct.rb_node*, %struct.rb_node** %child.i.i, align 8, !dbg !688
  %61 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !688
  %rb_right36.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %61, i32 0, i32 1, !dbg !688
  store volatile %struct.rb_node* %60, %struct.rb_node** %rb_right36.i.i, align 8, !dbg !688
  %62 = load %struct.rb_node*, %struct.rb_node** %child.i.i, align 8, !dbg !691
  %63 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !692
  call void @rb_set_parent(%struct.rb_node* %62, %struct.rb_node* %63) #7, !dbg !693
  %64 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i.i, align 8, !dbg !694
  %copy41.i.i = getelementptr inbounds %struct.rb_augment_callbacks, %struct.rb_augment_callbacks* %64, i32 0, i32 1, !dbg !695
  %65 = load void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)** %copy41.i.i, align 8, !dbg !695
  %66 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i, align 8, !dbg !696
  %67 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !697
  call void %65(%struct.rb_node* %66, %struct.rb_node* %67) #7, !dbg !694
  %68 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i.i, align 8, !dbg !698
  %propagate.i.i = getelementptr inbounds %struct.rb_augment_callbacks, %struct.rb_augment_callbacks* %68, i32 0, i32 0, !dbg !699
  %69 = load void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)** %propagate.i.i, align 8, !dbg !699
  %70 = load %struct.rb_node*, %struct.rb_node** %parent.i.i, align 8, !dbg !700
  %71 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !701
  call void %69(%struct.rb_node* %70, %struct.rb_node* %71) #7, !dbg !698
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %do.end.i.i, %if.then15.i.i
  %72 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i, align 8, !dbg !702
  %rb_left43.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %72, i32 0, i32 2, !dbg !703
  %73 = load %struct.rb_node*, %struct.rb_node** %rb_left43.i.i, align 8, !dbg !703
  store %struct.rb_node* %73, %struct.rb_node** %tmp.i.i, align 8, !dbg !704
  %74 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i, align 8, !dbg !705
  %75 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !705
  %rb_left49.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %75, i32 0, i32 2, !dbg !705
  store volatile %struct.rb_node* %74, %struct.rb_node** %rb_left49.i.i, align 8, !dbg !705
  %76 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i, align 8, !dbg !708
  %77 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !709
  call void @rb_set_parent(%struct.rb_node* %76, %struct.rb_node* %77) #7, !dbg !710
  %78 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i, align 8, !dbg !711
  %__rb_parent_color54.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %78, i32 0, i32 0, !dbg !712
  %79 = load i64, i64* %__rb_parent_color54.i.i, align 8, !dbg !712
  store i64 %79, i64* %pc.i.i, align 8, !dbg !713
  %80 = load i64, i64* %pc.i.i, align 8, !dbg !714
  %and55.i.i = and i64 %80, -4, !dbg !714
  %81 = inttoptr i64 %and55.i.i to %struct.rb_node*, !dbg !714
  store %struct.rb_node* %81, %struct.rb_node** %tmp.i.i, align 8, !dbg !715
  %82 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i, align 8, !dbg !716
  %83 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !717
  %84 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i, align 8, !dbg !718
  %85 = load %struct.rb_root*, %struct.rb_root** %root.addr.i.i, align 8, !dbg !719
  call void @__rb_change_child(%struct.rb_node* %82, %struct.rb_node* %83, %struct.rb_node* %84, %struct.rb_root* %85) #7, !dbg !720
  %86 = load %struct.rb_node*, %struct.rb_node** %child2.i.i, align 8, !dbg !721
  %tobool56.i.i = icmp ne %struct.rb_node* %86, null, !dbg !721
  br i1 %tobool56.i.i, label %if.then57.i.i, label %if.else58.i.i, !dbg !723

if.then57.i.i:                                    ; preds = %if.end42.i.i
  %87 = load %struct.rb_node*, %struct.rb_node** %child2.i.i, align 8, !dbg !724
  %88 = load %struct.rb_node*, %struct.rb_node** %parent.i.i, align 8, !dbg !726
  call void @rb_set_parent_color(%struct.rb_node* %87, %struct.rb_node* %88, i32 1) #7, !dbg !727
  store %struct.rb_node* null, %struct.rb_node** %rebalance.i.i, align 8, !dbg !728
  br label %if.end66.i.i, !dbg !729

if.else58.i.i:                                    ; preds = %if.end42.i.i
  %89 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !730
  %__rb_parent_color59.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %89, i32 0, i32 0, !dbg !730
  %90 = load i64, i64* %__rb_parent_color59.i.i, align 8, !dbg !730
  %and60.i.i = and i64 %90, 1, !dbg !730
  %tobool61.i.i = icmp ne i64 %and60.i.i, 0, !dbg !730
  br i1 %tobool61.i.i, label %cond.true62.i.i, label %cond.false63.i.i, !dbg !730

cond.true62.i.i:                                  ; preds = %if.else58.i.i
  %91 = load %struct.rb_node*, %struct.rb_node** %parent.i.i, align 8, !dbg !732
  br label %cond.end64.i.i, !dbg !730

cond.false63.i.i:                                 ; preds = %if.else58.i.i
  br label %cond.end64.i.i, !dbg !730

cond.end64.i.i:                                   ; preds = %cond.false63.i.i, %cond.true62.i.i
  %cond65.i.i = phi %struct.rb_node* [ %91, %cond.true62.i.i ], [ null, %cond.false63.i.i ], !dbg !730
  store %struct.rb_node* %cond65.i.i, %struct.rb_node** %rebalance.i.i, align 8, !dbg !733
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %cond.end64.i.i, %if.then57.i.i
  %92 = load i64, i64* %pc.i.i, align 8, !dbg !734
  %93 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !735
  %__rb_parent_color67.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %93, i32 0, i32 0, !dbg !736
  store i64 %92, i64* %__rb_parent_color67.i.i, align 8, !dbg !737
  %94 = load %struct.rb_node*, %struct.rb_node** %successor.i.i, align 8, !dbg !738
  store %struct.rb_node* %94, %struct.rb_node** %tmp.i.i, align 8, !dbg !739
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.end66.i.i, %if.then8.i.i
  br label %__rb_erase_augmented.exit.i

__rb_erase_augmented.exit.i:                      ; preds = %if.end68.i.i, %if.end.i.i
  %95 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i.i, align 8, !dbg !740
  %propagate70.i.i = getelementptr inbounds %struct.rb_augment_callbacks, %struct.rb_augment_callbacks* %95, i32 0, i32 0, !dbg !741
  %96 = load void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)** %propagate70.i.i, align 8, !dbg !741
  %97 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i, align 8, !dbg !742
  call void %96(%struct.rb_node* %97, %struct.rb_node* null) #7, !dbg !740
  %98 = load %struct.rb_node*, %struct.rb_node** %rebalance.i.i, align 8, !dbg !743
  store %struct.rb_node* %98, %struct.rb_node** %rebalance.i, align 8, !dbg !577
  %99 = load %struct.rb_node*, %struct.rb_node** %rebalance.i, align 8, !dbg !744
  %tobool.i = icmp ne %struct.rb_node* %99, null, !dbg !744
  br i1 %tobool.i, label %if.then.i, label %rb_erase_augmented.exit, !dbg !746

if.then.i:                                        ; preds = %__rb_erase_augmented.exit.i
  %100 = load %struct.rb_node*, %struct.rb_node** %rebalance.i, align 8, !dbg !747
  %101 = load %struct.rb_root*, %struct.rb_root** %root.addr.i, align 8, !dbg !748
  %102 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i, align 8, !dbg !749
  %rotate.i = getelementptr inbounds %struct.rb_augment_callbacks, %struct.rb_augment_callbacks* %102, i32 0, i32 2, !dbg !750
  %103 = load void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)** %rotate.i, align 8, !dbg !750
  call void @__rb_erase_color(%struct.rb_node* %100, %struct.rb_root* %101, void (%struct.rb_node*, %struct.rb_node*)* %103) #7, !dbg !751
  br label %rb_erase_augmented.exit, !dbg !751

rb_erase_augmented.exit:                          ; preds = %__rb_erase_augmented.exit.i, %if.then.i
  %104 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !752
  %hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %104, i32 0, i32 10, !dbg !753
  store i64 0, i64* %hole_size, align 8, !dbg !754
  %105 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !755
  %subtree_max_hole = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %105, i32 0, i32 11, !dbg !756
  store i64 0, i64* %subtree_max_hole, align 8, !dbg !757
  ret void, !dbg !758
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @add_hole(%struct.drm_mm_node* %node) #0 !dbg !759 {
entry:
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %mm = alloca %struct.drm_mm*, align 8
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !760, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm, metadata !762, metadata !DIExpression()), !dbg !763
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !764
  %mm1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 3, !dbg !765
  %1 = load %struct.drm_mm*, %struct.drm_mm** %mm1, align 8, !dbg !765
  store %struct.drm_mm* %1, %struct.drm_mm** %mm, align 8, !dbg !763
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !766
  %call = call i64 @__drm_mm_hole_node_end(%struct.drm_mm_node* %2) #6, !dbg !767
  %3 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !768
  %call2 = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %3) #6, !dbg !769
  %sub = sub i64 %call, %call2, !dbg !770
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !771
  %hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %4, i32 0, i32 10, !dbg !772
  store i64 %sub, i64* %hole_size, align 8, !dbg !773
  %5 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !774
  %hole_size3 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %5, i32 0, i32 10, !dbg !775
  %6 = load i64, i64* %hole_size3, align 8, !dbg !775
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !776
  %subtree_max_hole = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %7, i32 0, i32 11, !dbg !777
  store i64 %6, i64* %subtree_max_hole, align 8, !dbg !778
  %8 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !779
  %holes_size = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %8, i32 0, i32 4, !dbg !780
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !781
  call void @insert_hole_size(%struct.rb_root_cached* %holes_size, %struct.drm_mm_node* %9) #6, !dbg !782
  %10 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !783
  %holes_addr = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %10, i32 0, i32 5, !dbg !784
  %11 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !785
  call void @insert_hole_addr(%struct.rb_root* %holes_addr, %struct.drm_mm_node* %11) #6, !dbg !786
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !787
  %hole_stack = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 5, !dbg !788
  %13 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !789
  %hole_stack4 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %13, i32 0, i32 1, !dbg !790
  call void @list_add(%struct.list_head* %hole_stack, %struct.list_head* %hole_stack4) #6, !dbg !791
  ret void, !dbg !792
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @save_stack(%struct.drm_mm_node* %node) #0 !dbg !793 {
entry:
  %node.addr = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !794, metadata !DIExpression()), !dbg !795
  ret void, !dbg !796
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_mm_insert_node_in_range(%struct.drm_mm* %mm, %struct.drm_mm_node* %node, i64 %size, i64 %alignment, i64 %color, i64 %range_start, i64 %range_end, i32 %mode) #0 !dbg !797 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca %struct.drm_mm*, align 8
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %size.addr = alloca i64, align 8
  %alignment.addr = alloca i64, align 8
  %color.addr = alloca i64, align 8
  %range_start.addr = alloca i64, align 8
  %range_end.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %hole = alloca %struct.drm_mm_node*, align 8
  %remainder_mask = alloca i64, align 8
  %once = alloca i8, align 1
  %hole_start = alloca i64, align 8
  %hole_end = alloca i64, align 8
  %adj_start = alloca i64, align 8
  %adj_end = alloca i64, align 8
  %col_start = alloca i64, align 8
  %col_end = alloca i64, align 8
  %__UNIQUE_ID___x249 = alloca i64, align 8
  %__UNIQUE_ID___y250 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x251 = alloca i64, align 8
  %__UNIQUE_ID___y252 = alloca i64, align 8
  %tmp42 = alloca i64, align 8
  %rem = alloca i64, align 8
  %__UNIQUE_ID___x253 = alloca i64, align 8
  %__UNIQUE_ID___y254 = alloca i64, align 8
  %tmp82 = alloca i64, align 8
  %__UNIQUE_ID___x255 = alloca i64, align 8
  %__UNIQUE_ID___y256 = alloca i64, align 8
  %tmp92 = alloca i64, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !802, metadata !DIExpression()), !dbg !803
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !804, metadata !DIExpression()), !dbg !805
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !806, metadata !DIExpression()), !dbg !807
  store i64 %alignment, i64* %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %alignment.addr, metadata !808, metadata !DIExpression()), !dbg !809
  store i64 %color, i64* %color.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %color.addr, metadata !810, metadata !DIExpression()), !dbg !811
  store i64 %range_start, i64* %range_start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %range_start.addr, metadata !812, metadata !DIExpression()), !dbg !813
  store i64 %range_end, i64* %range_end.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %range_end.addr, metadata !814, metadata !DIExpression()), !dbg !815
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !816, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %hole, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata i64* %remainder_mask, metadata !820, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.declare(metadata i8* %once, metadata !822, metadata !DIExpression()), !dbg !823
  %0 = load i64, i64* %size.addr, align 8, !dbg !824
  %cmp = icmp eq i64 %0, 0, !dbg !824
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !824

lor.rhs:                                          ; preds = %entry
  %1 = load i64, i64* %range_end.addr, align 8, !dbg !824
  %2 = load i64, i64* %range_start.addr, align 8, !dbg !824
  %sub = sub i64 %1, %2, !dbg !824
  %3 = load i64, i64* %size.addr, align 8, !dbg !824
  %cmp1 = icmp ult i64 %sub, %3, !dbg !824
  br label %lor.end, !dbg !824

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %4, true, !dbg !824
  %lnot2 = xor i1 %lnot, true, !dbg !824
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !824
  %conv = sext i32 %lnot.ext to i64, !dbg !824
  %tobool = icmp ne i64 %conv, 0, !dbg !824
  br i1 %tobool, label %if.then, label %if.end, !dbg !826

if.then:                                          ; preds = %lor.end
  store i32 -28, i32* %retval, align 4, !dbg !827
  br label %return, !dbg !827

if.end:                                           ; preds = %lor.end
  %5 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !828
  %holes_size = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %5, i32 0, i32 4, !dbg !828
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %holes_size, i32 0, i32 1, !dbg !828
  %6 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8, !dbg !828
  %call = call i64 @rb_to_hole_size_or_zero(%struct.rb_node* %6) #6, !dbg !830
  %7 = load i64, i64* %size.addr, align 8, !dbg !831
  %cmp3 = icmp ult i64 %call, %7, !dbg !832
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !833

if.then5:                                         ; preds = %if.end
  store i32 -28, i32* %retval, align 4, !dbg !834
  br label %return, !dbg !834

if.end6:                                          ; preds = %if.end
  %8 = load i64, i64* %alignment.addr, align 8, !dbg !835
  %cmp7 = icmp ule i64 %8, 1, !dbg !837
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !838

if.then9:                                         ; preds = %if.end6
  store i64 0, i64* %alignment.addr, align 8, !dbg !839
  br label %if.end10, !dbg !840

if.end10:                                         ; preds = %if.then9, %if.end6
  %9 = load i32, i32* %mode.addr, align 4, !dbg !841
  %and = and i32 %9, -2147483648, !dbg !842
  %tobool11 = icmp ne i32 %and, 0, !dbg !841
  %frombool = zext i1 %tobool11 to i8, !dbg !843
  store i8 %frombool, i8* %once, align 1, !dbg !843
  %10 = load i32, i32* %mode.addr, align 4, !dbg !844
  %and12 = and i32 %10, 2147483647, !dbg !844
  store i32 %and12, i32* %mode.addr, align 4, !dbg !844
  %11 = load i64, i64* %alignment.addr, align 8, !dbg !845
  %call13 = call zeroext i1 @is_power_of_2(i64 %11) #9, !dbg !846
  br i1 %call13, label %cond.true, label %cond.false, !dbg !846

cond.true:                                        ; preds = %if.end10
  %12 = load i64, i64* %alignment.addr, align 8, !dbg !847
  %sub15 = sub i64 %12, 1, !dbg !848
  br label %cond.end, !dbg !846

cond.false:                                       ; preds = %if.end10
  br label %cond.end, !dbg !846

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub15, %cond.true ], [ 0, %cond.false ], !dbg !846
  store i64 %cond, i64* %remainder_mask, align 8, !dbg !849
  %13 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !850
  %14 = load i64, i64* %range_start.addr, align 8, !dbg !852
  %15 = load i64, i64* %range_end.addr, align 8, !dbg !853
  %16 = load i64, i64* %size.addr, align 8, !dbg !854
  %17 = load i32, i32* %mode.addr, align 4, !dbg !855
  %call16 = call %struct.drm_mm_node* @first_hole(%struct.drm_mm* %13, i64 %14, i64 %15, i64 %16, i32 %17) #6, !dbg !856
  store %struct.drm_mm_node* %call16, %struct.drm_mm_node** %hole, align 8, !dbg !857
  br label %for.cond, !dbg !858

for.cond:                                         ; preds = %cond.end133, %cond.end
  %18 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !859
  %tobool17 = icmp ne %struct.drm_mm_node* %18, null, !dbg !861
  br i1 %tobool17, label %for.body, label %for.end, !dbg !861

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %hole_start, metadata !862, metadata !DIExpression()), !dbg !864
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !865
  %call18 = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %19) #6, !dbg !866
  store i64 %call18, i64* %hole_start, align 8, !dbg !864
  call void @llvm.dbg.declare(metadata i64* %hole_end, metadata !867, metadata !DIExpression()), !dbg !868
  %20 = load i64, i64* %hole_start, align 8, !dbg !869
  %21 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !870
  %hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %21, i32 0, i32 10, !dbg !871
  %22 = load i64, i64* %hole_size, align 8, !dbg !871
  %add = add i64 %20, %22, !dbg !872
  store i64 %add, i64* %hole_end, align 8, !dbg !868
  call void @llvm.dbg.declare(metadata i64* %adj_start, metadata !873, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.declare(metadata i64* %adj_end, metadata !875, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.declare(metadata i64* %col_start, metadata !877, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.declare(metadata i64* %col_end, metadata !879, metadata !DIExpression()), !dbg !880
  %23 = load i32, i32* %mode.addr, align 4, !dbg !881
  %cmp19 = icmp eq i32 %23, 1, !dbg !883
  br i1 %cmp19, label %land.lhs.true, label %if.end24, !dbg !884

land.lhs.true:                                    ; preds = %for.body
  %24 = load i64, i64* %hole_start, align 8, !dbg !885
  %25 = load i64, i64* %range_end.addr, align 8, !dbg !886
  %cmp21 = icmp uge i64 %24, %25, !dbg !887
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !888

if.then23:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !889

if.end24:                                         ; preds = %land.lhs.true, %for.body
  %26 = load i32, i32* %mode.addr, align 4, !dbg !890
  %cmp25 = icmp eq i32 %26, 2, !dbg !892
  br i1 %cmp25, label %land.lhs.true27, label %if.end31, !dbg !893

land.lhs.true27:                                  ; preds = %if.end24
  %27 = load i64, i64* %hole_end, align 8, !dbg !894
  %28 = load i64, i64* %range_start.addr, align 8, !dbg !895
  %cmp28 = icmp ule i64 %27, %28, !dbg !896
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !897

if.then30:                                        ; preds = %land.lhs.true27
  br label %for.end, !dbg !898

if.end31:                                         ; preds = %land.lhs.true27, %if.end24
  %29 = load i64, i64* %hole_start, align 8, !dbg !899
  store i64 %29, i64* %col_start, align 8, !dbg !900
  %30 = load i64, i64* %hole_end, align 8, !dbg !901
  store i64 %30, i64* %col_end, align 8, !dbg !902
  %31 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !903
  %color_adjust = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %31, i32 0, i32 0, !dbg !905
  %32 = load void (%struct.drm_mm_node*, i64, i64*, i64*)*, void (%struct.drm_mm_node*, i64, i64*, i64*)** %color_adjust, align 8, !dbg !905
  %tobool32 = icmp ne void (%struct.drm_mm_node*, i64, i64*, i64*)* %32, null, !dbg !903
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !906

if.then33:                                        ; preds = %if.end31
  %33 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !907
  %color_adjust34 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %33, i32 0, i32 0, !dbg !908
  %34 = load void (%struct.drm_mm_node*, i64, i64*, i64*)*, void (%struct.drm_mm_node*, i64, i64*, i64*)** %color_adjust34, align 8, !dbg !908
  %35 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !909
  %36 = load i64, i64* %color.addr, align 8, !dbg !910
  call void %34(%struct.drm_mm_node* %35, i64 %36, i64* %col_start, i64* %col_end) #6, !dbg !907
  br label %if.end35, !dbg !907

if.end35:                                         ; preds = %if.then33, %if.end31
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x249, metadata !911, metadata !DIExpression()), !dbg !913
  %37 = load i64, i64* %col_start, align 8, !dbg !913
  store i64 %37, i64* %__UNIQUE_ID___x249, align 8, !dbg !913
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y250, metadata !914, metadata !DIExpression()), !dbg !913
  %38 = load i64, i64* %range_start.addr, align 8, !dbg !913
  store i64 %38, i64* %__UNIQUE_ID___y250, align 8, !dbg !913
  %39 = load i64, i64* %__UNIQUE_ID___x249, align 8, !dbg !913
  %40 = load i64, i64* %__UNIQUE_ID___y250, align 8, !dbg !913
  %cmp36 = icmp ugt i64 %39, %40, !dbg !913
  br i1 %cmp36, label %cond.true38, label %cond.false39, !dbg !913

cond.true38:                                      ; preds = %if.end35
  %41 = load i64, i64* %__UNIQUE_ID___x249, align 8, !dbg !913
  br label %cond.end40, !dbg !913

cond.false39:                                     ; preds = %if.end35
  %42 = load i64, i64* %__UNIQUE_ID___y250, align 8, !dbg !913
  br label %cond.end40, !dbg !913

cond.end40:                                       ; preds = %cond.false39, %cond.true38
  %cond41 = phi i64 [ %41, %cond.true38 ], [ %42, %cond.false39 ], !dbg !913
  store i64 %cond41, i64* %tmp, align 8, !dbg !913
  %43 = load i64, i64* %tmp, align 8, !dbg !913
  store i64 %43, i64* %adj_start, align 8, !dbg !915
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x251, metadata !916, metadata !DIExpression()), !dbg !918
  %44 = load i64, i64* %col_end, align 8, !dbg !918
  store i64 %44, i64* %__UNIQUE_ID___x251, align 8, !dbg !918
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y252, metadata !919, metadata !DIExpression()), !dbg !918
  %45 = load i64, i64* %range_end.addr, align 8, !dbg !918
  store i64 %45, i64* %__UNIQUE_ID___y252, align 8, !dbg !918
  %46 = load i64, i64* %__UNIQUE_ID___x251, align 8, !dbg !918
  %47 = load i64, i64* %__UNIQUE_ID___y252, align 8, !dbg !918
  %cmp43 = icmp ult i64 %46, %47, !dbg !918
  br i1 %cmp43, label %cond.true45, label %cond.false46, !dbg !918

cond.true45:                                      ; preds = %cond.end40
  %48 = load i64, i64* %__UNIQUE_ID___x251, align 8, !dbg !918
  br label %cond.end47, !dbg !918

cond.false46:                                     ; preds = %cond.end40
  %49 = load i64, i64* %__UNIQUE_ID___y252, align 8, !dbg !918
  br label %cond.end47, !dbg !918

cond.end47:                                       ; preds = %cond.false46, %cond.true45
  %cond48 = phi i64 [ %48, %cond.true45 ], [ %49, %cond.false46 ], !dbg !918
  store i64 %cond48, i64* %tmp42, align 8, !dbg !918
  %50 = load i64, i64* %tmp42, align 8, !dbg !918
  store i64 %50, i64* %adj_end, align 8, !dbg !920
  %51 = load i64, i64* %adj_end, align 8, !dbg !921
  %52 = load i64, i64* %adj_start, align 8, !dbg !923
  %cmp49 = icmp ule i64 %51, %52, !dbg !924
  br i1 %cmp49, label %if.then54, label %lor.lhs.false, !dbg !925

lor.lhs.false:                                    ; preds = %cond.end47
  %53 = load i64, i64* %adj_end, align 8, !dbg !926
  %54 = load i64, i64* %adj_start, align 8, !dbg !927
  %sub51 = sub i64 %53, %54, !dbg !928
  %55 = load i64, i64* %size.addr, align 8, !dbg !929
  %cmp52 = icmp ult i64 %sub51, %55, !dbg !930
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !931

if.then54:                                        ; preds = %lor.lhs.false, %cond.end47
  br label %for.inc, !dbg !932

if.end55:                                         ; preds = %lor.lhs.false
  %56 = load i32, i32* %mode.addr, align 4, !dbg !933
  %cmp56 = icmp eq i32 %56, 2, !dbg !935
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !936

if.then58:                                        ; preds = %if.end55
  %57 = load i64, i64* %adj_end, align 8, !dbg !937
  %58 = load i64, i64* %size.addr, align 8, !dbg !938
  %sub59 = sub i64 %57, %58, !dbg !939
  store i64 %sub59, i64* %adj_start, align 8, !dbg !940
  br label %if.end60, !dbg !941

if.end60:                                         ; preds = %if.then58, %if.end55
  %59 = load i64, i64* %alignment.addr, align 8, !dbg !942
  %tobool61 = icmp ne i64 %59, 0, !dbg !942
  br i1 %tobool61, label %if.then62, label %if.end113, !dbg !944

if.then62:                                        ; preds = %if.end60
  call void @llvm.dbg.declare(metadata i64* %rem, metadata !945, metadata !DIExpression()), !dbg !947
  %60 = load i64, i64* %remainder_mask, align 8, !dbg !948
  %tobool63 = icmp ne i64 %60, 0, !dbg !948
  %lnot64 = xor i1 %tobool63, true, !dbg !948
  %lnot66 = xor i1 %lnot64, true, !dbg !948
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !948
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !948
  %tobool69 = icmp ne i64 %conv68, 0, !dbg !948
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !950

if.then70:                                        ; preds = %if.then62
  %61 = load i64, i64* %adj_start, align 8, !dbg !951
  %62 = load i64, i64* %remainder_mask, align 8, !dbg !952
  %and71 = and i64 %61, %62, !dbg !953
  store i64 %and71, i64* %rem, align 8, !dbg !954
  br label %if.end73, !dbg !955

if.else:                                          ; preds = %if.then62
  %63 = load i64, i64* %adj_start, align 8, !dbg !956
  %64 = load i64, i64* %alignment.addr, align 8, !dbg !957
  %call72 = call i64 @div64_u64_rem(i64 %63, i64 %64, i64* %rem) #6, !dbg !958
  br label %if.end73

if.end73:                                         ; preds = %if.else, %if.then70
  %65 = load i64, i64* %rem, align 8, !dbg !959
  %tobool74 = icmp ne i64 %65, 0, !dbg !959
  br i1 %tobool74, label %if.then75, label %if.end112, !dbg !961

if.then75:                                        ; preds = %if.end73
  %66 = load i64, i64* %rem, align 8, !dbg !962
  %67 = load i64, i64* %adj_start, align 8, !dbg !964
  %sub76 = sub i64 %67, %66, !dbg !964
  store i64 %sub76, i64* %adj_start, align 8, !dbg !964
  %68 = load i32, i32* %mode.addr, align 4, !dbg !965
  %cmp77 = icmp ne i32 %68, 2, !dbg !967
  br i1 %cmp77, label %if.then79, label %if.end81, !dbg !968

if.then79:                                        ; preds = %if.then75
  %69 = load i64, i64* %alignment.addr, align 8, !dbg !969
  %70 = load i64, i64* %adj_start, align 8, !dbg !970
  %add80 = add i64 %70, %69, !dbg !970
  store i64 %add80, i64* %adj_start, align 8, !dbg !970
  br label %if.end81, !dbg !971

if.end81:                                         ; preds = %if.then79, %if.then75
  %71 = load i64, i64* %adj_start, align 8, !dbg !972
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x253, metadata !974, metadata !DIExpression()), !dbg !976
  %72 = load i64, i64* %col_start, align 8, !dbg !976
  store i64 %72, i64* %__UNIQUE_ID___x253, align 8, !dbg !976
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y254, metadata !977, metadata !DIExpression()), !dbg !976
  %73 = load i64, i64* %range_start.addr, align 8, !dbg !976
  store i64 %73, i64* %__UNIQUE_ID___y254, align 8, !dbg !976
  %74 = load i64, i64* %__UNIQUE_ID___x253, align 8, !dbg !976
  %75 = load i64, i64* %__UNIQUE_ID___y254, align 8, !dbg !976
  %cmp83 = icmp ugt i64 %74, %75, !dbg !976
  br i1 %cmp83, label %cond.true85, label %cond.false86, !dbg !976

cond.true85:                                      ; preds = %if.end81
  %76 = load i64, i64* %__UNIQUE_ID___x253, align 8, !dbg !976
  br label %cond.end87, !dbg !976

cond.false86:                                     ; preds = %if.end81
  %77 = load i64, i64* %__UNIQUE_ID___y254, align 8, !dbg !976
  br label %cond.end87, !dbg !976

cond.end87:                                       ; preds = %cond.false86, %cond.true85
  %cond88 = phi i64 [ %76, %cond.true85 ], [ %77, %cond.false86 ], !dbg !976
  store i64 %cond88, i64* %tmp82, align 8, !dbg !976
  %78 = load i64, i64* %tmp82, align 8, !dbg !976
  %cmp89 = icmp ult i64 %71, %78, !dbg !978
  br i1 %cmp89, label %if.then102, label %lor.lhs.false91, !dbg !979

lor.lhs.false91:                                  ; preds = %cond.end87
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x255, metadata !980, metadata !DIExpression()), !dbg !982
  %79 = load i64, i64* %col_end, align 8, !dbg !982
  store i64 %79, i64* %__UNIQUE_ID___x255, align 8, !dbg !982
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y256, metadata !983, metadata !DIExpression()), !dbg !982
  %80 = load i64, i64* %range_end.addr, align 8, !dbg !982
  store i64 %80, i64* %__UNIQUE_ID___y256, align 8, !dbg !982
  %81 = load i64, i64* %__UNIQUE_ID___x255, align 8, !dbg !982
  %82 = load i64, i64* %__UNIQUE_ID___y256, align 8, !dbg !982
  %cmp93 = icmp ult i64 %81, %82, !dbg !982
  br i1 %cmp93, label %cond.true95, label %cond.false96, !dbg !982

cond.true95:                                      ; preds = %lor.lhs.false91
  %83 = load i64, i64* %__UNIQUE_ID___x255, align 8, !dbg !982
  br label %cond.end97, !dbg !982

cond.false96:                                     ; preds = %lor.lhs.false91
  %84 = load i64, i64* %__UNIQUE_ID___y256, align 8, !dbg !982
  br label %cond.end97, !dbg !982

cond.end97:                                       ; preds = %cond.false96, %cond.true95
  %cond98 = phi i64 [ %83, %cond.true95 ], [ %84, %cond.false96 ], !dbg !982
  store i64 %cond98, i64* %tmp92, align 8, !dbg !982
  %85 = load i64, i64* %tmp92, align 8, !dbg !982
  %86 = load i64, i64* %adj_start, align 8, !dbg !984
  %sub99 = sub i64 %85, %86, !dbg !985
  %87 = load i64, i64* %size.addr, align 8, !dbg !986
  %cmp100 = icmp ult i64 %sub99, %87, !dbg !987
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !988

if.then102:                                       ; preds = %cond.end97, %cond.end87
  br label %for.inc, !dbg !989

if.end103:                                        ; preds = %cond.end97
  %88 = load i64, i64* %adj_end, align 8, !dbg !990
  %89 = load i64, i64* %adj_start, align 8, !dbg !992
  %cmp104 = icmp ule i64 %88, %89, !dbg !993
  br i1 %cmp104, label %if.then110, label %lor.lhs.false106, !dbg !994

lor.lhs.false106:                                 ; preds = %if.end103
  %90 = load i64, i64* %adj_end, align 8, !dbg !995
  %91 = load i64, i64* %adj_start, align 8, !dbg !996
  %sub107 = sub i64 %90, %91, !dbg !997
  %92 = load i64, i64* %size.addr, align 8, !dbg !998
  %cmp108 = icmp ult i64 %sub107, %92, !dbg !999
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !1000

if.then110:                                       ; preds = %lor.lhs.false106, %if.end103
  br label %for.inc, !dbg !1001

if.end111:                                        ; preds = %lor.lhs.false106
  br label %if.end112, !dbg !1002

if.end112:                                        ; preds = %if.end111, %if.end73
  br label %if.end113, !dbg !1003

if.end113:                                        ; preds = %if.end112, %if.end60
  %93 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !1004
  %94 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1005
  %mm114 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %94, i32 0, i32 3, !dbg !1006
  store %struct.drm_mm* %93, %struct.drm_mm** %mm114, align 8, !dbg !1007
  %95 = load i64, i64* %size.addr, align 8, !dbg !1008
  %96 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1009
  %size115 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %96, i32 0, i32 2, !dbg !1010
  store i64 %95, i64* %size115, align 8, !dbg !1011
  %97 = load i64, i64* %adj_start, align 8, !dbg !1012
  %98 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1013
  %start = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %98, i32 0, i32 1, !dbg !1014
  store i64 %97, i64* %start, align 8, !dbg !1015
  %99 = load i64, i64* %color.addr, align 8, !dbg !1016
  %100 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1017
  %color116 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %100, i32 0, i32 0, !dbg !1018
  store i64 %99, i64* %color116, align 8, !dbg !1019
  %101 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1020
  %hole_size117 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %101, i32 0, i32 10, !dbg !1021
  store i64 0, i64* %hole_size117, align 8, !dbg !1022
  %102 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1023
  %flags = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %102, i32 0, i32 12, !dbg !1024
  call void @__set_bit(i64 0, i64* %flags) #6, !dbg !1025
  %103 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1026
  %node_list = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %103, i32 0, i32 4, !dbg !1027
  %104 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !1028
  %node_list118 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %104, i32 0, i32 4, !dbg !1029
  call void @list_add(%struct.list_head* %node_list, %struct.list_head* %node_list118) #6, !dbg !1030
  %105 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !1031
  %106 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1032
  call void @drm_mm_interval_tree_add_node(%struct.drm_mm_node* %105, %struct.drm_mm_node* %106) #6, !dbg !1033
  %107 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !1034
  call void @rm_hole(%struct.drm_mm_node* %107) #6, !dbg !1035
  %108 = load i64, i64* %adj_start, align 8, !dbg !1036
  %109 = load i64, i64* %hole_start, align 8, !dbg !1038
  %cmp119 = icmp ugt i64 %108, %109, !dbg !1039
  br i1 %cmp119, label %if.then121, label %if.end122, !dbg !1040

if.then121:                                       ; preds = %if.end113
  %110 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !1041
  call void @add_hole(%struct.drm_mm_node* %110) #6, !dbg !1042
  br label %if.end122, !dbg !1042

if.end122:                                        ; preds = %if.then121, %if.end113
  %111 = load i64, i64* %adj_start, align 8, !dbg !1043
  %112 = load i64, i64* %size.addr, align 8, !dbg !1045
  %add123 = add i64 %111, %112, !dbg !1046
  %113 = load i64, i64* %hole_end, align 8, !dbg !1047
  %cmp124 = icmp ult i64 %add123, %113, !dbg !1048
  br i1 %cmp124, label %if.then126, label %if.end127, !dbg !1049

if.then126:                                       ; preds = %if.end122
  %114 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1050
  call void @add_hole(%struct.drm_mm_node* %114) #6, !dbg !1051
  br label %if.end127, !dbg !1051

if.end127:                                        ; preds = %if.then126, %if.end122
  %115 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1052
  call void @save_stack(%struct.drm_mm_node* %115) #6, !dbg !1053
  store i32 0, i32* %retval, align 4, !dbg !1054
  br label %return, !dbg !1054

for.inc:                                          ; preds = %if.then110, %if.then102, %if.then54
  %116 = load i8, i8* %once, align 1, !dbg !1055
  %tobool128 = trunc i8 %116 to i1, !dbg !1055
  br i1 %tobool128, label %cond.true130, label %cond.false131, !dbg !1055

cond.true130:                                     ; preds = %for.inc
  br label %cond.end133, !dbg !1055

cond.false131:                                    ; preds = %for.inc
  %117 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !1056
  %118 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !1057
  %119 = load i64, i64* %size.addr, align 8, !dbg !1058
  %120 = load i32, i32* %mode.addr, align 4, !dbg !1059
  %call132 = call %struct.drm_mm_node* @next_hole(%struct.drm_mm* %117, %struct.drm_mm_node* %118, i64 %119, i32 %120) #6, !dbg !1060
  br label %cond.end133, !dbg !1055

cond.end133:                                      ; preds = %cond.false131, %cond.true130
  %cond134 = phi %struct.drm_mm_node* [ null, %cond.true130 ], [ %call132, %cond.false131 ], !dbg !1055
  store %struct.drm_mm_node* %cond134, %struct.drm_mm_node** %hole, align 8, !dbg !1061
  br label %for.cond, !dbg !1062, !llvm.loop !1063

for.end:                                          ; preds = %if.then30, %if.then23, %for.cond
  store i32 -28, i32* %retval, align 4, !dbg !1065
  br label %return, !dbg !1065

return:                                           ; preds = %for.end, %if.end127, %if.then5, %if.then
  %121 = load i32, i32* %retval, align 4, !dbg !1066
  ret i32 %121, !dbg !1066
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @rb_to_hole_size_or_zero(%struct.rb_node* %rb) #0 !dbg !1067 {
entry:
  %rb.addr = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %rb, %struct.rb_node** %rb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb.addr, metadata !1070, metadata !DIExpression()), !dbg !1071
  %0 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !1072
  %tobool = icmp ne %struct.rb_node* %0, null, !dbg !1072
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1072

cond.true:                                        ; preds = %entry
  %1 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !1073
  %call = call i64 @rb_to_hole_size(%struct.rb_node* %1) #6, !dbg !1074
  br label %cond.end, !dbg !1072

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1072

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ], !dbg !1072
  ret i64 %cond, !dbg !1075
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i1 @is_power_of_2(i64 %n) #2 !dbg !1076 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1080, metadata !DIExpression()), !dbg !1081
  %0 = load i64, i64* %n.addr, align 8, !dbg !1082
  %cmp = icmp ne i64 %0, 0, !dbg !1083
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1084

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8, !dbg !1085
  %2 = load i64, i64* %n.addr, align 8, !dbg !1086
  %sub = sub i64 %2, 1, !dbg !1087
  %and = and i64 %1, %sub, !dbg !1088
  %cmp1 = icmp eq i64 %and, 0, !dbg !1089
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1090
  ret i1 %3, !dbg !1091
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_mm_node* @first_hole(%struct.drm_mm* %mm, i64 %start, i64 %end, i64 %size, i32 %mode) #0 !dbg !1092 {
entry:
  %retval = alloca %struct.drm_mm_node*, align 8
  %mm.addr = alloca %struct.drm_mm*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %head__ = alloca %struct.list_head*, align 8
  %pos__ = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  %tmp6 = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp9 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !1095, metadata !DIExpression()), !dbg !1096
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !1097, metadata !DIExpression()), !dbg !1098
  store i64 %end, i64* %end.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %end.addr, metadata !1099, metadata !DIExpression()), !dbg !1100
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1101, metadata !DIExpression()), !dbg !1102
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !1103, metadata !DIExpression()), !dbg !1104
  %0 = load i32, i32* %mode.addr, align 4, !dbg !1105
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ], !dbg !1106

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !1107

sw.bb:                                            ; preds = %entry, %sw.default
  %1 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !1108
  %2 = load i64, i64* %size.addr, align 8, !dbg !1110
  %call = call %struct.drm_mm_node* @best_hole(%struct.drm_mm* %1, i64 %2) #6, !dbg !1111
  store %struct.drm_mm_node* %call, %struct.drm_mm_node** %retval, align 8, !dbg !1112
  br label %return, !dbg !1112

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !1113
  %4 = load i64, i64* %start.addr, align 8, !dbg !1114
  %5 = load i64, i64* %size.addr, align 8, !dbg !1115
  %call2 = call %struct.drm_mm_node* @find_hole_addr(%struct.drm_mm* %3, i64 %4, i64 %5) #6, !dbg !1116
  store %struct.drm_mm_node* %call2, %struct.drm_mm_node** %retval, align 8, !dbg !1117
  br label %return, !dbg !1117

sw.bb3:                                           ; preds = %entry
  %6 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !1118
  %7 = load i64, i64* %end.addr, align 8, !dbg !1119
  %8 = load i64, i64* %size.addr, align 8, !dbg !1120
  %call4 = call %struct.drm_mm_node* @find_hole_addr(%struct.drm_mm* %6, i64 %7, i64 %8) #6, !dbg !1121
  store %struct.drm_mm_node* %call4, %struct.drm_mm_node** %retval, align 8, !dbg !1122
  br label %return, !dbg !1122

sw.bb5:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.list_head** %head__, metadata !1123, metadata !DIExpression()), !dbg !1125
  %9 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !1125
  %hole_stack = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %9, i32 0, i32 1, !dbg !1125
  store %struct.list_head* %hole_stack, %struct.list_head** %head__, align 8, !dbg !1125
  call void @llvm.dbg.declare(metadata %struct.list_head** %pos__, metadata !1126, metadata !DIExpression()), !dbg !1125
  br label %do.body, !dbg !1127

do.body:                                          ; preds = %sw.bb5
  br label %do.end, !dbg !1129

do.end:                                           ; preds = %do.body
  %10 = load %struct.list_head*, %struct.list_head** %head__, align 8, !dbg !1127
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !1127
  %11 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1127
  store %struct.list_head* %11, %struct.list_head** %tmp, align 8, !dbg !1129
  %12 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !1127
  store %struct.list_head* %12, %struct.list_head** %pos__, align 8, !dbg !1125
  %13 = load %struct.list_head*, %struct.list_head** %pos__, align 8, !dbg !1125
  %14 = load %struct.list_head*, %struct.list_head** %head__, align 8, !dbg !1125
  %cmp = icmp ne %struct.list_head* %13, %14, !dbg !1125
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1125

cond.true:                                        ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1131, metadata !DIExpression()), !dbg !1133
  %15 = load %struct.list_head*, %struct.list_head** %pos__, align 8, !dbg !1133
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !1133
  store i8* %16, i8** %__mptr, align 8, !dbg !1133
  br label %do.body7, !dbg !1133

do.body7:                                         ; preds = %cond.true
  br label %do.end8, !dbg !1134

do.end8:                                          ; preds = %do.body7
  %17 = load i8*, i8** %__mptr, align 8, !dbg !1133
  %add.ptr = getelementptr i8, i8* %17, i64 -48, !dbg !1133
  %18 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !1133
  store %struct.drm_mm_node* %18, %struct.drm_mm_node** %tmp9, align 8, !dbg !1134
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp9, align 8, !dbg !1133
  br label %cond.end, !dbg !1125

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !1125

cond.end:                                         ; preds = %cond.false, %do.end8
  %cond = phi %struct.drm_mm_node* [ %19, %do.end8 ], [ null, %cond.false ], !dbg !1125
  store %struct.drm_mm_node* %cond, %struct.drm_mm_node** %tmp6, align 8, !dbg !1125
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp6, align 8, !dbg !1125
  store %struct.drm_mm_node* %20, %struct.drm_mm_node** %retval, align 8, !dbg !1136
  br label %return, !dbg !1136

return:                                           ; preds = %cond.end, %sw.bb3, %sw.bb1, %sw.bb
  %21 = load %struct.drm_mm_node*, %struct.drm_mm_node** %retval, align 8, !dbg !1137
  ret %struct.drm_mm_node* %21, !dbg !1137
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div64_u64_rem(i64 %dividend, i64 %divisor, i64* %remainder) #0 !dbg !1138 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  %remainder.addr = alloca i64*, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !1142, metadata !DIExpression()), !dbg !1143
  store i64 %divisor, i64* %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %divisor.addr, metadata !1144, metadata !DIExpression()), !dbg !1145
  store i64* %remainder, i64** %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %remainder.addr, metadata !1146, metadata !DIExpression()), !dbg !1147
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !1148
  %1 = load i64, i64* %divisor.addr, align 8, !dbg !1149
  %rem = urem i64 %0, %1, !dbg !1150
  %2 = load i64*, i64** %remainder.addr, align 8, !dbg !1151
  store i64 %rem, i64* %2, align 8, !dbg !1152
  %3 = load i64, i64* %dividend.addr, align 8, !dbg !1153
  %4 = load i64, i64* %divisor.addr, align 8, !dbg !1154
  %div = udiv i64 %3, %4, !dbg !1155
  ret i64 %div, !dbg !1156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_mm_node* @next_hole(%struct.drm_mm* %mm, %struct.drm_mm_node* %node, i64 %size, i32 %mode) #0 !dbg !1157 {
entry:
  %retval = alloca %struct.drm_mm_node*, align 8
  %mm.addr = alloca %struct.drm_mm*, align 8
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %size.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !1160, metadata !DIExpression()), !dbg !1161
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !1162, metadata !DIExpression()), !dbg !1163
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1164, metadata !DIExpression()), !dbg !1165
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !1166, metadata !DIExpression()), !dbg !1167
  %0 = load i32, i32* %mode.addr, align 4, !dbg !1168
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
  ], !dbg !1169

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !1170

sw.bb:                                            ; preds = %entry, %sw.default
  %1 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1171
  %rb_hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %1, i32 0, i32 7, !dbg !1173
  %call = call %struct.rb_node* @rb_prev(%struct.rb_node* %rb_hole_size) #6, !dbg !1174
  %call1 = call %struct.drm_mm_node* @rb_hole_size_to_node(%struct.rb_node* %call) #6, !dbg !1175
  store %struct.drm_mm_node* %call1, %struct.drm_mm_node** %retval, align 8, !dbg !1176
  br label %return, !dbg !1176

sw.bb2:                                           ; preds = %entry
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1177
  %3 = load i64, i64* %size.addr, align 8, !dbg !1178
  %call3 = call %struct.drm_mm_node* @next_hole_low_addr(%struct.drm_mm_node* %2, i64 %3) #6, !dbg !1179
  store %struct.drm_mm_node* %call3, %struct.drm_mm_node** %retval, align 8, !dbg !1180
  br label %return, !dbg !1180

sw.bb4:                                           ; preds = %entry
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1181
  %5 = load i64, i64* %size.addr, align 8, !dbg !1182
  %call5 = call %struct.drm_mm_node* @next_hole_high_addr(%struct.drm_mm_node* %4, i64 %5) #6, !dbg !1183
  store %struct.drm_mm_node* %call5, %struct.drm_mm_node** %retval, align 8, !dbg !1184
  br label %return, !dbg !1184

sw.bb6:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1185, metadata !DIExpression()), !dbg !1187
  %6 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1187
  %hole_stack = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 5, !dbg !1187
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %hole_stack, i32 0, i32 0, !dbg !1187
  %7 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1187
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !1187
  store i8* %8, i8** %__mptr, align 8, !dbg !1187
  br label %do.body, !dbg !1187

do.body:                                          ; preds = %sw.bb6
  br label %do.end, !dbg !1188

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !1187
  %add.ptr = getelementptr i8, i8* %9, i64 -48, !dbg !1187
  %10 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !1187
  store %struct.drm_mm_node* %10, %struct.drm_mm_node** %tmp, align 8, !dbg !1188
  %11 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !1187
  store %struct.drm_mm_node* %11, %struct.drm_mm_node** %node.addr, align 8, !dbg !1190
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1191
  %hole_stack7 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 5, !dbg !1192
  %13 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !1193
  %hole_stack8 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %13, i32 0, i32 1, !dbg !1194
  %cmp = icmp eq %struct.list_head* %hole_stack7, %hole_stack8, !dbg !1195
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1196

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !1196

cond.false:                                       ; preds = %do.end
  %14 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1197
  br label %cond.end, !dbg !1196

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.drm_mm_node* [ null, %cond.true ], [ %14, %cond.false ], !dbg !1196
  store %struct.drm_mm_node* %cond, %struct.drm_mm_node** %retval, align 8, !dbg !1198
  br label %return, !dbg !1198

return:                                           ; preds = %cond.end, %sw.bb4, %sw.bb2, %sw.bb
  %15 = load %struct.drm_mm_node*, %struct.drm_mm_node** %retval, align 8, !dbg !1199
  ret %struct.drm_mm_node* %15, !dbg !1199
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_mm_remove_node(%struct.drm_mm_node* %node) #0 !dbg !1200 {
entry:
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %mm = alloca %struct.drm_mm*, align 8
  %prev_node = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !1201, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm, metadata !1203, metadata !DIExpression()), !dbg !1204
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1205
  %mm1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 3, !dbg !1206
  %1 = load %struct.drm_mm*, %struct.drm_mm** %mm1, align 8, !dbg !1206
  store %struct.drm_mm* %1, %struct.drm_mm** %mm, align 8, !dbg !1204
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %prev_node, metadata !1207, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1209, metadata !DIExpression()), !dbg !1211
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1211
  %node_list = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %2, i32 0, i32 4, !dbg !1211
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %node_list, i32 0, i32 1, !dbg !1211
  %3 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !1211
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !1211
  store i8* %4, i8** %__mptr, align 8, !dbg !1211
  br label %do.body, !dbg !1211

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1212

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !1211
  %add.ptr = getelementptr i8, i8* %5, i64 -32, !dbg !1211
  %6 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !1211
  store %struct.drm_mm_node* %6, %struct.drm_mm_node** %tmp, align 8, !dbg !1212
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !1211
  store %struct.drm_mm_node* %7, %struct.drm_mm_node** %prev_node, align 8, !dbg !1214
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1215
  %call = call zeroext i1 @drm_mm_hole_follows(%struct.drm_mm_node* %8) #6, !dbg !1217
  br i1 %call, label %if.then, label %if.end, !dbg !1218

if.then:                                          ; preds = %do.end
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1219
  call void @rm_hole(%struct.drm_mm_node* %9) #6, !dbg !1220
  br label %if.end, !dbg !1220

if.end:                                           ; preds = %if.then, %do.end
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1221
  %11 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !1222
  %interval_tree = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %11, i32 0, i32 3, !dbg !1223
  call void @drm_mm_interval_tree_remove(%struct.drm_mm_node* %10, %struct.rb_root_cached* %interval_tree) #6, !dbg !1224
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1225
  %node_list2 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 4, !dbg !1226
  call void @list_del(%struct.list_head* %node_list2) #6, !dbg !1227
  %13 = load %struct.drm_mm_node*, %struct.drm_mm_node** %prev_node, align 8, !dbg !1228
  %call3 = call zeroext i1 @drm_mm_hole_follows(%struct.drm_mm_node* %13) #6, !dbg !1230
  br i1 %call3, label %if.then4, label %if.end5, !dbg !1231

if.then4:                                         ; preds = %if.end
  %14 = load %struct.drm_mm_node*, %struct.drm_mm_node** %prev_node, align 8, !dbg !1232
  call void @rm_hole(%struct.drm_mm_node* %14) #6, !dbg !1233
  br label %if.end5, !dbg !1233

if.end5:                                          ; preds = %if.then4, %if.end
  %15 = load %struct.drm_mm_node*, %struct.drm_mm_node** %prev_node, align 8, !dbg !1234
  call void @add_hole(%struct.drm_mm_node* %15) #6, !dbg !1235
  %16 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1236
  %flags = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %16, i32 0, i32 12, !dbg !1237
  call void @clear_bit_unlock(i64 0, i64* %flags) #6, !dbg !1238
  ret void, !dbg !1239
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_mm_hole_follows(%struct.drm_mm_node* %node) #0 !dbg !1240 {
entry:
  %node.addr = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !1243, metadata !DIExpression()), !dbg !1244
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1245
  %hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 10, !dbg !1246
  %1 = load i64, i64* %hole_size, align 8, !dbg !1246
  %tobool = icmp ne i64 %1, 0, !dbg !1245
  ret i1 %tobool, !dbg !1247
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_mm_interval_tree_remove(%struct.drm_mm_node* %node, %struct.rb_root_cached* %root) #0 !dbg !1248 {
entry:
  %node.addr.i.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node.addr.i.i.i, metadata !537, metadata !DIExpression()), !dbg !1251
  %root.addr.i.i.i = alloca %struct.rb_root*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %root.addr.i.i.i, metadata !549, metadata !DIExpression()), !dbg !1258
  %augment.addr.i.i.i = alloca %struct.rb_augment_callbacks*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_augment_callbacks** %augment.addr.i.i.i, metadata !551, metadata !DIExpression()), !dbg !1259
  %child.i.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %child.i.i.i, metadata !553, metadata !DIExpression()), !dbg !1260
  %tmp.i.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %tmp.i.i.i, metadata !555, metadata !DIExpression()), !dbg !1261
  %parent.i.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %parent.i.i.i, metadata !557, metadata !DIExpression()), !dbg !1262
  %rebalance.i.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rebalance.i.i.i, metadata !559, metadata !DIExpression()), !dbg !1263
  %pc.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pc.i.i.i, metadata !561, metadata !DIExpression()), !dbg !1264
  %successor.i.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %successor.i.i.i, metadata !563, metadata !DIExpression()), !dbg !1265
  %child2.i.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %child2.i.i.i, metadata !568, metadata !DIExpression()), !dbg !1266
  %node.addr.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node.addr.i.i, metadata !570, metadata !DIExpression()), !dbg !1267
  %root.addr.i.i = alloca %struct.rb_root*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %root.addr.i.i, metadata !572, metadata !DIExpression()), !dbg !1268
  %augment.addr.i.i = alloca %struct.rb_augment_callbacks*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_augment_callbacks** %augment.addr.i.i, metadata !574, metadata !DIExpression()), !dbg !1269
  %rebalance.i.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rebalance.i.i, metadata !576, metadata !DIExpression()), !dbg !1270
  %node.addr.i = alloca %struct.rb_node*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node.addr.i, metadata !1271, metadata !DIExpression()), !dbg !1272
  %root.addr.i = alloca %struct.rb_root_cached*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root_cached** %root.addr.i, metadata !1273, metadata !DIExpression()), !dbg !1274
  %augment.addr.i = alloca %struct.rb_augment_callbacks*, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_augment_callbacks** %augment.addr.i, metadata !1275, metadata !DIExpression()), !dbg !1276
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %root.addr = alloca %struct.rb_root_cached*, align 8
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !1277, metadata !DIExpression()), !dbg !1278
  store %struct.rb_root_cached* %root, %struct.rb_root_cached** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root_cached** %root.addr, metadata !1279, metadata !DIExpression()), !dbg !1278
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1278
  %rb = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 6, !dbg !1278
  %1 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !1278
  store %struct.rb_node* %rb, %struct.rb_node** %node.addr.i, align 8
  store %struct.rb_root_cached* %1, %struct.rb_root_cached** %root.addr.i, align 8
  store %struct.rb_augment_callbacks* @drm_mm_interval_tree_augment, %struct.rb_augment_callbacks** %augment.addr.i, align 8
  %2 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr.i, align 8, !dbg !1280
  %rb_leftmost.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %2, i32 0, i32 1, !dbg !1282
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost.i, align 8, !dbg !1282
  %4 = load %struct.rb_node*, %struct.rb_node** %node.addr.i, align 8, !dbg !1283
  %cmp.i = icmp eq %struct.rb_node* %3, %4, !dbg !1284
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1285

if.then.i:                                        ; preds = %entry
  %5 = load %struct.rb_node*, %struct.rb_node** %node.addr.i, align 8, !dbg !1286
  %call.i = call %struct.rb_node* @rb_next(%struct.rb_node* %5) #7, !dbg !1287
  %6 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr.i, align 8, !dbg !1288
  %rb_leftmost1.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %6, i32 0, i32 1, !dbg !1289
  store %struct.rb_node* %call.i, %struct.rb_node** %rb_leftmost1.i, align 8, !dbg !1290
  br label %if.end.i, !dbg !1288

if.end.i:                                         ; preds = %if.then.i, %entry
  %7 = load %struct.rb_node*, %struct.rb_node** %node.addr.i, align 8, !dbg !1291
  %8 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr.i, align 8, !dbg !1292
  %rb_root.i = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %8, i32 0, i32 0, !dbg !1293
  %9 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i, align 8, !dbg !1294
  store %struct.rb_node* %7, %struct.rb_node** %node.addr.i.i, align 8
  store %struct.rb_root* %rb_root.i, %struct.rb_root** %root.addr.i.i, align 8
  store %struct.rb_augment_callbacks* %9, %struct.rb_augment_callbacks** %augment.addr.i.i, align 8
  %10 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i, align 8, !dbg !1295
  %11 = load %struct.rb_root*, %struct.rb_root** %root.addr.i.i, align 8, !dbg !1296
  %12 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i.i, align 8, !dbg !1297
  store %struct.rb_node* %10, %struct.rb_node** %node.addr.i.i.i, align 8
  store %struct.rb_root* %11, %struct.rb_root** %root.addr.i.i.i, align 8
  store %struct.rb_augment_callbacks* %12, %struct.rb_augment_callbacks** %augment.addr.i.i.i, align 8
  %13 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i.i, align 8, !dbg !1298
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %13, i32 0, i32 1, !dbg !1299
  %14 = load %struct.rb_node*, %struct.rb_node** %rb_right.i.i.i, align 8, !dbg !1299
  store %struct.rb_node* %14, %struct.rb_node** %child.i.i.i, align 8, !dbg !1260
  %15 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i.i, align 8, !dbg !1300
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %15, i32 0, i32 2, !dbg !1301
  %16 = load %struct.rb_node*, %struct.rb_node** %rb_left.i.i.i, align 8, !dbg !1301
  store %struct.rb_node* %16, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1261
  %17 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1302
  %tobool.i.i.i = icmp ne %struct.rb_node* %17, null, !dbg !1302
  br i1 %tobool.i.i.i, label %if.else6.i.i.i, label %if.then.i.i.i, !dbg !1303

if.then.i.i.i:                                    ; preds = %if.end.i
  %18 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i.i, align 8, !dbg !1304
  %__rb_parent_color.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %18, i32 0, i32 0, !dbg !1305
  %19 = load i64, i64* %__rb_parent_color.i.i.i, align 8, !dbg !1305
  store i64 %19, i64* %pc.i.i.i, align 8, !dbg !1306
  %20 = load i64, i64* %pc.i.i.i, align 8, !dbg !1307
  %and.i.i.i = and i64 %20, -4, !dbg !1307
  %21 = inttoptr i64 %and.i.i.i to %struct.rb_node*, !dbg !1307
  store %struct.rb_node* %21, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1308
  %22 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i.i, align 8, !dbg !1309
  %23 = load %struct.rb_node*, %struct.rb_node** %child.i.i.i, align 8, !dbg !1310
  %24 = load %struct.rb_node*, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1311
  %25 = load %struct.rb_root*, %struct.rb_root** %root.addr.i.i.i, align 8, !dbg !1312
  call void @__rb_change_child(%struct.rb_node* %22, %struct.rb_node* %23, %struct.rb_node* %24, %struct.rb_root* %25) #7, !dbg !1313
  %26 = load %struct.rb_node*, %struct.rb_node** %child.i.i.i, align 8, !dbg !1314
  %tobool1.i.i.i = icmp ne %struct.rb_node* %26, null, !dbg !1314
  br i1 %tobool1.i.i.i, label %if.then2.i.i.i, label %if.else.i.i.i, !dbg !1315

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  %27 = load i64, i64* %pc.i.i.i, align 8, !dbg !1316
  %28 = load %struct.rb_node*, %struct.rb_node** %child.i.i.i, align 8, !dbg !1317
  %__rb_parent_color3.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %28, i32 0, i32 0, !dbg !1318
  store i64 %27, i64* %__rb_parent_color3.i.i.i, align 8, !dbg !1319
  store %struct.rb_node* null, %struct.rb_node** %rebalance.i.i.i, align 8, !dbg !1320
  br label %if.end.i.i.i, !dbg !1321

if.else.i.i.i:                                    ; preds = %if.then.i.i.i
  %29 = load i64, i64* %pc.i.i.i, align 8, !dbg !1322
  %and4.i.i.i = and i64 %29, 1, !dbg !1322
  %tobool5.i.i.i = icmp ne i64 %and4.i.i.i, 0, !dbg !1322
  br i1 %tobool5.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !1322

cond.true.i.i.i:                                  ; preds = %if.else.i.i.i
  %30 = load %struct.rb_node*, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1323
  br label %cond.end.i.i.i, !dbg !1322

cond.false.i.i.i:                                 ; preds = %if.else.i.i.i
  br label %cond.end.i.i.i, !dbg !1322

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi %struct.rb_node* [ %30, %cond.true.i.i.i ], [ null, %cond.false.i.i.i ], !dbg !1322
  store %struct.rb_node* %cond.i.i.i, %struct.rb_node** %rebalance.i.i.i, align 8, !dbg !1324
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %cond.end.i.i.i, %if.then2.i.i.i
  %31 = load %struct.rb_node*, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1325
  store %struct.rb_node* %31, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1326
  br label %__rb_erase_augmented.exit.i.i, !dbg !1327

if.else6.i.i.i:                                   ; preds = %if.end.i
  %32 = load %struct.rb_node*, %struct.rb_node** %child.i.i.i, align 8, !dbg !1328
  %tobool7.i.i.i = icmp ne %struct.rb_node* %32, null, !dbg !1328
  br i1 %tobool7.i.i.i, label %if.else12.i.i.i, label %if.then8.i.i.i, !dbg !1329

if.then8.i.i.i:                                   ; preds = %if.else6.i.i.i
  %33 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i.i, align 8, !dbg !1330
  %__rb_parent_color9.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %33, i32 0, i32 0, !dbg !1331
  %34 = load i64, i64* %__rb_parent_color9.i.i.i, align 8, !dbg !1331
  store i64 %34, i64* %pc.i.i.i, align 8, !dbg !1332
  %35 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1333
  %__rb_parent_color10.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i32 0, i32 0, !dbg !1334
  store i64 %34, i64* %__rb_parent_color10.i.i.i, align 8, !dbg !1335
  %36 = load i64, i64* %pc.i.i.i, align 8, !dbg !1336
  %and11.i.i.i = and i64 %36, -4, !dbg !1336
  %37 = inttoptr i64 %and11.i.i.i to %struct.rb_node*, !dbg !1336
  store %struct.rb_node* %37, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1337
  %38 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i.i, align 8, !dbg !1338
  %39 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1339
  %40 = load %struct.rb_node*, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1340
  %41 = load %struct.rb_root*, %struct.rb_root** %root.addr.i.i.i, align 8, !dbg !1341
  call void @__rb_change_child(%struct.rb_node* %38, %struct.rb_node* %39, %struct.rb_node* %40, %struct.rb_root* %41) #7, !dbg !1342
  store %struct.rb_node* null, %struct.rb_node** %rebalance.i.i.i, align 8, !dbg !1343
  %42 = load %struct.rb_node*, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1344
  store %struct.rb_node* %42, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1345
  br label %if.end68.i.i.i, !dbg !1346

if.else12.i.i.i:                                  ; preds = %if.else6.i.i.i
  %43 = load %struct.rb_node*, %struct.rb_node** %child.i.i.i, align 8, !dbg !1347
  store %struct.rb_node* %43, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1265
  %44 = load %struct.rb_node*, %struct.rb_node** %child.i.i.i, align 8, !dbg !1348
  %rb_left13.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %44, i32 0, i32 2, !dbg !1349
  %45 = load %struct.rb_node*, %struct.rb_node** %rb_left13.i.i.i, align 8, !dbg !1349
  store %struct.rb_node* %45, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1350
  %46 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1351
  %tobool14.i.i.i = icmp ne %struct.rb_node* %46, null, !dbg !1351
  br i1 %tobool14.i.i.i, label %if.else17.i.i.i, label %if.then15.i.i.i, !dbg !1352

if.then15.i.i.i:                                  ; preds = %if.else12.i.i.i
  %47 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1353
  store %struct.rb_node* %47, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1354
  %48 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1355
  %rb_right16.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %48, i32 0, i32 1, !dbg !1356
  %49 = load %struct.rb_node*, %struct.rb_node** %rb_right16.i.i.i, align 8, !dbg !1356
  store %struct.rb_node* %49, %struct.rb_node** %child2.i.i.i, align 8, !dbg !1357
  %50 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i.i.i, align 8, !dbg !1358
  %copy.i.i.i = getelementptr inbounds %struct.rb_augment_callbacks, %struct.rb_augment_callbacks* %50, i32 0, i32 1, !dbg !1359
  %51 = load void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)** %copy.i.i.i, align 8, !dbg !1359
  %52 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i.i, align 8, !dbg !1360
  %53 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1361
  call void %51(%struct.rb_node* %52, %struct.rb_node* %53) #7, !dbg !1358
  br label %if.end42.i.i.i, !dbg !1362

if.else17.i.i.i:                                  ; preds = %if.else12.i.i.i
  br label %do.body.i.i.i, !dbg !1363

do.body.i.i.i:                                    ; preds = %do.body.i.i.i, %if.else17.i.i.i
  %54 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1364
  store %struct.rb_node* %54, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1365
  %55 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1366
  store %struct.rb_node* %55, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1367
  %56 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1368
  %rb_left18.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %56, i32 0, i32 2, !dbg !1369
  %57 = load %struct.rb_node*, %struct.rb_node** %rb_left18.i.i.i, align 8, !dbg !1369
  store %struct.rb_node* %57, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1370
  %58 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1371
  %tobool19.i.i.i = icmp ne %struct.rb_node* %58, null, !dbg !1372
  br i1 %tobool19.i.i.i, label %do.body.i.i.i, label %do.end.i.i.i, !dbg !1372, !llvm.loop !1373

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %59 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1375
  %rb_right20.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %59, i32 0, i32 1, !dbg !1376
  %60 = load %struct.rb_node*, %struct.rb_node** %rb_right20.i.i.i, align 8, !dbg !1376
  store %struct.rb_node* %60, %struct.rb_node** %child2.i.i.i, align 8, !dbg !1377
  %61 = load %struct.rb_node*, %struct.rb_node** %child2.i.i.i, align 8, !dbg !1378
  %62 = load %struct.rb_node*, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1378
  %rb_left26.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %62, i32 0, i32 2, !dbg !1378
  store volatile %struct.rb_node* %61, %struct.rb_node** %rb_left26.i.i.i, align 8, !dbg !1378
  %63 = load %struct.rb_node*, %struct.rb_node** %child.i.i.i, align 8, !dbg !1379
  %64 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1379
  %rb_right36.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %64, i32 0, i32 1, !dbg !1379
  store volatile %struct.rb_node* %63, %struct.rb_node** %rb_right36.i.i.i, align 8, !dbg !1379
  %65 = load %struct.rb_node*, %struct.rb_node** %child.i.i.i, align 8, !dbg !1380
  %66 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1381
  call void @rb_set_parent(%struct.rb_node* %65, %struct.rb_node* %66) #7, !dbg !1382
  %67 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i.i.i, align 8, !dbg !1383
  %copy41.i.i.i = getelementptr inbounds %struct.rb_augment_callbacks, %struct.rb_augment_callbacks* %67, i32 0, i32 1, !dbg !1384
  %68 = load void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)** %copy41.i.i.i, align 8, !dbg !1384
  %69 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i.i, align 8, !dbg !1385
  %70 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1386
  call void %68(%struct.rb_node* %69, %struct.rb_node* %70) #7, !dbg !1383
  %71 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i.i.i, align 8, !dbg !1387
  %propagate.i.i.i = getelementptr inbounds %struct.rb_augment_callbacks, %struct.rb_augment_callbacks* %71, i32 0, i32 0, !dbg !1388
  %72 = load void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)** %propagate.i.i.i, align 8, !dbg !1388
  %73 = load %struct.rb_node*, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1389
  %74 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1390
  call void %72(%struct.rb_node* %73, %struct.rb_node* %74) #7, !dbg !1387
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %do.end.i.i.i, %if.then15.i.i.i
  %75 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i.i, align 8, !dbg !1391
  %rb_left43.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %75, i32 0, i32 2, !dbg !1392
  %76 = load %struct.rb_node*, %struct.rb_node** %rb_left43.i.i.i, align 8, !dbg !1392
  store %struct.rb_node* %76, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1393
  %77 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1394
  %78 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1394
  %rb_left49.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %78, i32 0, i32 2, !dbg !1394
  store volatile %struct.rb_node* %77, %struct.rb_node** %rb_left49.i.i.i, align 8, !dbg !1394
  %79 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1395
  %80 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1396
  call void @rb_set_parent(%struct.rb_node* %79, %struct.rb_node* %80) #7, !dbg !1397
  %81 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i.i, align 8, !dbg !1398
  %__rb_parent_color54.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %81, i32 0, i32 0, !dbg !1399
  %82 = load i64, i64* %__rb_parent_color54.i.i.i, align 8, !dbg !1399
  store i64 %82, i64* %pc.i.i.i, align 8, !dbg !1400
  %83 = load i64, i64* %pc.i.i.i, align 8, !dbg !1401
  %and55.i.i.i = and i64 %83, -4, !dbg !1401
  %84 = inttoptr i64 %and55.i.i.i to %struct.rb_node*, !dbg !1401
  store %struct.rb_node* %84, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1402
  %85 = load %struct.rb_node*, %struct.rb_node** %node.addr.i.i.i, align 8, !dbg !1403
  %86 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1404
  %87 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1405
  %88 = load %struct.rb_root*, %struct.rb_root** %root.addr.i.i.i, align 8, !dbg !1406
  call void @__rb_change_child(%struct.rb_node* %85, %struct.rb_node* %86, %struct.rb_node* %87, %struct.rb_root* %88) #7, !dbg !1407
  %89 = load %struct.rb_node*, %struct.rb_node** %child2.i.i.i, align 8, !dbg !1408
  %tobool56.i.i.i = icmp ne %struct.rb_node* %89, null, !dbg !1408
  br i1 %tobool56.i.i.i, label %if.then57.i.i.i, label %if.else58.i.i.i, !dbg !1409

if.then57.i.i.i:                                  ; preds = %if.end42.i.i.i
  %90 = load %struct.rb_node*, %struct.rb_node** %child2.i.i.i, align 8, !dbg !1410
  %91 = load %struct.rb_node*, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1411
  call void @rb_set_parent_color(%struct.rb_node* %90, %struct.rb_node* %91, i32 1) #7, !dbg !1412
  store %struct.rb_node* null, %struct.rb_node** %rebalance.i.i.i, align 8, !dbg !1413
  br label %if.end66.i.i.i, !dbg !1414

if.else58.i.i.i:                                  ; preds = %if.end42.i.i.i
  %92 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1415
  %__rb_parent_color59.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %92, i32 0, i32 0, !dbg !1415
  %93 = load i64, i64* %__rb_parent_color59.i.i.i, align 8, !dbg !1415
  %and60.i.i.i = and i64 %93, 1, !dbg !1415
  %tobool61.i.i.i = icmp ne i64 %and60.i.i.i, 0, !dbg !1415
  br i1 %tobool61.i.i.i, label %cond.true62.i.i.i, label %cond.false63.i.i.i, !dbg !1415

cond.true62.i.i.i:                                ; preds = %if.else58.i.i.i
  %94 = load %struct.rb_node*, %struct.rb_node** %parent.i.i.i, align 8, !dbg !1416
  br label %cond.end64.i.i.i, !dbg !1415

cond.false63.i.i.i:                               ; preds = %if.else58.i.i.i
  br label %cond.end64.i.i.i, !dbg !1415

cond.end64.i.i.i:                                 ; preds = %cond.false63.i.i.i, %cond.true62.i.i.i
  %cond65.i.i.i = phi %struct.rb_node* [ %94, %cond.true62.i.i.i ], [ null, %cond.false63.i.i.i ], !dbg !1415
  store %struct.rb_node* %cond65.i.i.i, %struct.rb_node** %rebalance.i.i.i, align 8, !dbg !1417
  br label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %cond.end64.i.i.i, %if.then57.i.i.i
  %95 = load i64, i64* %pc.i.i.i, align 8, !dbg !1418
  %96 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1419
  %__rb_parent_color67.i.i.i = getelementptr inbounds %struct.rb_node, %struct.rb_node* %96, i32 0, i32 0, !dbg !1420
  store i64 %95, i64* %__rb_parent_color67.i.i.i, align 8, !dbg !1421
  %97 = load %struct.rb_node*, %struct.rb_node** %successor.i.i.i, align 8, !dbg !1422
  store %struct.rb_node* %97, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1423
  br label %if.end68.i.i.i

if.end68.i.i.i:                                   ; preds = %if.end66.i.i.i, %if.then8.i.i.i
  br label %__rb_erase_augmented.exit.i.i

__rb_erase_augmented.exit.i.i:                    ; preds = %if.end68.i.i.i, %if.end.i.i.i
  %98 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i.i.i, align 8, !dbg !1424
  %propagate70.i.i.i = getelementptr inbounds %struct.rb_augment_callbacks, %struct.rb_augment_callbacks* %98, i32 0, i32 0, !dbg !1425
  %99 = load void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)** %propagate70.i.i.i, align 8, !dbg !1425
  %100 = load %struct.rb_node*, %struct.rb_node** %tmp.i.i.i, align 8, !dbg !1426
  call void %99(%struct.rb_node* %100, %struct.rb_node* null) #7, !dbg !1424
  %101 = load %struct.rb_node*, %struct.rb_node** %rebalance.i.i.i, align 8, !dbg !1427
  store %struct.rb_node* %101, %struct.rb_node** %rebalance.i.i, align 8, !dbg !1270
  %102 = load %struct.rb_node*, %struct.rb_node** %rebalance.i.i, align 8, !dbg !1428
  %tobool.i.i = icmp ne %struct.rb_node* %102, null, !dbg !1428
  br i1 %tobool.i.i, label %if.then.i.i, label %rb_erase_augmented_cached.exit, !dbg !1429

if.then.i.i:                                      ; preds = %__rb_erase_augmented.exit.i.i
  %103 = load %struct.rb_node*, %struct.rb_node** %rebalance.i.i, align 8, !dbg !1430
  %104 = load %struct.rb_root*, %struct.rb_root** %root.addr.i.i, align 8, !dbg !1431
  %105 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr.i.i, align 8, !dbg !1432
  %rotate.i.i = getelementptr inbounds %struct.rb_augment_callbacks, %struct.rb_augment_callbacks* %105, i32 0, i32 2, !dbg !1433
  %106 = load void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)** %rotate.i.i, align 8, !dbg !1433
  call void @__rb_erase_color(%struct.rb_node* %103, %struct.rb_root* %104, void (%struct.rb_node*, %struct.rb_node*)* %106) #7, !dbg !1434
  br label %rb_erase_augmented_cached.exit, !dbg !1434

rb_erase_augmented_cached.exit:                   ; preds = %__rb_erase_augmented.exit.i.i, %if.then.i.i
  ret void, !dbg !1278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !1435 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1438, metadata !DIExpression()), !dbg !1439
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1440
  call void @__list_del_entry(%struct.list_head* %0) #6, !dbg !1441
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1442
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !1443
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !1444
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1445
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !1446
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !1447
  ret void, !dbg !1448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit_unlock(i64 %nr, i64* %addr) #0 !dbg !1449 {
entry:
  %nr.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i.i, metadata !1451, metadata !DIExpression()), !dbg !1453
  %addr.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i.i, metadata !1457, metadata !DIExpression()), !dbg !1458
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1459, metadata !DIExpression()), !dbg !1460
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1461, metadata !DIExpression()), !dbg !1462
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !1463, metadata !DIExpression()), !dbg !1465
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1467, metadata !DIExpression()), !dbg !1468
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1469, metadata !DIExpression()), !dbg !1470
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1471, metadata !DIExpression()), !dbg !1472
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1473
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1474
  %div = sdiv i64 %1, 64, !dbg !1474
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1475
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1473
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1476
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1477
  %conv.i = trunc i64 %4 to i32, !dbg !1477
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #7, !dbg !1478
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1479
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1479
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #7, !dbg !1479
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1480
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !1481
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !1482, !srcloc !1483
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !1484
  %10 = load i64*, i64** %addr.addr.i, align 8, !dbg !1485
  store i64 %9, i64* %nr.addr.i.i, align 8
  store i64* %10, i64** %addr.addr.i.i, align 8
  %11 = load i64, i64* %nr.addr.i.i, align 8, !dbg !1486
  %12 = call i1 @llvm.is.constant.i64(i64 %11) #8, !dbg !1488
  br i1 %12, label %if.then.i.i, label %if.else.i.i, !dbg !1489

if.then.i.i:                                      ; preds = %entry
  %13 = load i64*, i64** %addr.addr.i.i, align 8, !dbg !1490
  %14 = bitcast i64* %13 to i8*, !dbg !1490
  %15 = load i64, i64* %nr.addr.i.i, align 8, !dbg !1490
  %shr.i.i = ashr i64 %15, 3, !dbg !1490
  %add.ptr.i.i = getelementptr i8, i8* %14, i64 %shr.i.i, !dbg !1490
  %16 = load i64, i64* %nr.addr.i.i, align 8, !dbg !1492
  %and.i.i = and i64 %16, 7, !dbg !1492
  %sh_prom.i.i = trunc i64 %and.i.i to i32, !dbg !1492
  %shl.i.i = shl i32 1, %sh_prom.i.i, !dbg !1492
  %neg.i.i = xor i32 %shl.i.i, -1, !dbg !1493
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i.i, i32 %neg.i.i, i8* %add.ptr.i.i) #8, !dbg !1494, !srcloc !1495
  br label %arch_clear_bit_unlock.exit, !dbg !1496

if.else.i.i:                                      ; preds = %entry
  %17 = load i64*, i64** %addr.addr.i.i, align 8, !dbg !1497
  %18 = load i64, i64* %nr.addr.i.i, align 8, !dbg !1499
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #8, !dbg !1500, !srcloc !1501
  br label %arch_clear_bit_unlock.exit

arch_clear_bit_unlock.exit:                       ; preds = %if.then.i.i, %if.else.i.i
  ret void, !dbg !1502
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_mm_replace_node(%struct.drm_mm_node* %old, %struct.drm_mm_node* %new) #0 !dbg !1503 {
entry:
  %old.addr = alloca %struct.drm_mm_node*, align 8
  %new.addr = alloca %struct.drm_mm_node*, align 8
  %mm = alloca %struct.drm_mm*, align 8
  store %struct.drm_mm_node* %old, %struct.drm_mm_node** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %old.addr, metadata !1504, metadata !DIExpression()), !dbg !1505
  store %struct.drm_mm_node* %new, %struct.drm_mm_node** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %new.addr, metadata !1506, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm, metadata !1508, metadata !DIExpression()), !dbg !1509
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old.addr, align 8, !dbg !1510
  %mm1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 3, !dbg !1511
  %1 = load %struct.drm_mm*, %struct.drm_mm** %mm1, align 8, !dbg !1511
  store %struct.drm_mm* %1, %struct.drm_mm** %mm, align 8, !dbg !1509
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %new.addr, align 8, !dbg !1512
  %3 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old.addr, align 8, !dbg !1513
  %4 = bitcast %struct.drm_mm_node* %2 to i8*, !dbg !1514
  %5 = bitcast %struct.drm_mm_node* %3 to i8*, !dbg !1514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 168, i1 false), !dbg !1514
  %6 = load %struct.drm_mm_node*, %struct.drm_mm_node** %new.addr, align 8, !dbg !1515
  %flags = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 12, !dbg !1516
  call void @__set_bit(i64 0, i64* %flags) #6, !dbg !1517
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old.addr, align 8, !dbg !1518
  %node_list = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %7, i32 0, i32 4, !dbg !1519
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %new.addr, align 8, !dbg !1520
  %node_list2 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %8, i32 0, i32 4, !dbg !1521
  call void @list_replace(%struct.list_head* %node_list, %struct.list_head* %node_list2) #6, !dbg !1522
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old.addr, align 8, !dbg !1523
  %rb = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %9, i32 0, i32 6, !dbg !1524
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %new.addr, align 8, !dbg !1525
  %rb3 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %10, i32 0, i32 6, !dbg !1526
  %11 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !1527
  %interval_tree = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %11, i32 0, i32 3, !dbg !1528
  call void @rb_replace_node_cached(%struct.rb_node* %rb, %struct.rb_node* %rb3, %struct.rb_root_cached* %interval_tree) #6, !dbg !1529
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old.addr, align 8, !dbg !1530
  %call = call zeroext i1 @drm_mm_hole_follows(%struct.drm_mm_node* %12) #6, !dbg !1532
  br i1 %call, label %if.then, label %if.end, !dbg !1533

if.then:                                          ; preds = %entry
  %13 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old.addr, align 8, !dbg !1534
  %hole_stack = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %13, i32 0, i32 5, !dbg !1536
  %14 = load %struct.drm_mm_node*, %struct.drm_mm_node** %new.addr, align 8, !dbg !1537
  %hole_stack4 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %14, i32 0, i32 5, !dbg !1538
  call void @list_replace(%struct.list_head* %hole_stack, %struct.list_head* %hole_stack4) #6, !dbg !1539
  %15 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old.addr, align 8, !dbg !1540
  %rb_hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %15, i32 0, i32 7, !dbg !1541
  %16 = load %struct.drm_mm_node*, %struct.drm_mm_node** %new.addr, align 8, !dbg !1542
  %rb_hole_size5 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %16, i32 0, i32 7, !dbg !1543
  %17 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !1544
  %holes_size = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %17, i32 0, i32 4, !dbg !1545
  call void @rb_replace_node_cached(%struct.rb_node* %rb_hole_size, %struct.rb_node* %rb_hole_size5, %struct.rb_root_cached* %holes_size) #6, !dbg !1546
  %18 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old.addr, align 8, !dbg !1547
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %18, i32 0, i32 8, !dbg !1548
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %new.addr, align 8, !dbg !1549
  %rb_hole_addr6 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %19, i32 0, i32 8, !dbg !1550
  %20 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !1551
  %holes_addr = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %20, i32 0, i32 5, !dbg !1552
  call void @rb_replace_node(%struct.rb_node* %rb_hole_addr, %struct.rb_node* %rb_hole_addr6, %struct.rb_root* %holes_addr) #6, !dbg !1553
  br label %if.end, !dbg !1554

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old.addr, align 8, !dbg !1555
  %flags7 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %21, i32 0, i32 12, !dbg !1556
  call void @clear_bit_unlock(i64 0, i64* %flags7) #6, !dbg !1557
  ret void, !dbg !1558
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_replace(%struct.list_head* %old, %struct.list_head* %new) #0 !dbg !1559 {
entry:
  %old.addr = alloca %struct.list_head*, align 8
  %new.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %old, %struct.list_head** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %old.addr, metadata !1560, metadata !DIExpression()), !dbg !1561
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1562, metadata !DIExpression()), !dbg !1563
  %0 = load %struct.list_head*, %struct.list_head** %old.addr, align 8, !dbg !1564
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !1565
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1565
  %2 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1566
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !1567
  store %struct.list_head* %1, %struct.list_head** %next1, align 8, !dbg !1568
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1569
  %4 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1570
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 0, !dbg !1571
  %5 = load %struct.list_head*, %struct.list_head** %next2, align 8, !dbg !1571
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 1, !dbg !1572
  store %struct.list_head* %3, %struct.list_head** %prev, align 8, !dbg !1573
  %6 = load %struct.list_head*, %struct.list_head** %old.addr, align 8, !dbg !1574
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 1, !dbg !1575
  %7 = load %struct.list_head*, %struct.list_head** %prev3, align 8, !dbg !1575
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1576
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !1577
  store %struct.list_head* %7, %struct.list_head** %prev4, align 8, !dbg !1578
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1579
  %10 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1580
  %prev5 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 1, !dbg !1581
  %11 = load %struct.list_head*, %struct.list_head** %prev5, align 8, !dbg !1581
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 0, !dbg !1582
  store %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !1583
  ret void, !dbg !1584
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rb_replace_node_cached(%struct.rb_node* %victim, %struct.rb_node* %new, %struct.rb_root_cached* %root) #0 !dbg !1585 {
entry:
  %victim.addr = alloca %struct.rb_node*, align 8
  %new.addr = alloca %struct.rb_node*, align 8
  %root.addr = alloca %struct.rb_root_cached*, align 8
  store %struct.rb_node* %victim, %struct.rb_node** %victim.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %victim.addr, metadata !1588, metadata !DIExpression()), !dbg !1589
  store %struct.rb_node* %new, %struct.rb_node** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %new.addr, metadata !1590, metadata !DIExpression()), !dbg !1591
  store %struct.rb_root_cached* %root, %struct.rb_root_cached** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root_cached** %root.addr, metadata !1592, metadata !DIExpression()), !dbg !1593
  %0 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !1594
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %0, i32 0, i32 1, !dbg !1596
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8, !dbg !1596
  %2 = load %struct.rb_node*, %struct.rb_node** %victim.addr, align 8, !dbg !1597
  %cmp = icmp eq %struct.rb_node* %1, %2, !dbg !1598
  br i1 %cmp, label %if.then, label %if.end, !dbg !1599

if.then:                                          ; preds = %entry
  %3 = load %struct.rb_node*, %struct.rb_node** %new.addr, align 8, !dbg !1600
  %4 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !1601
  %rb_leftmost1 = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %4, i32 0, i32 1, !dbg !1602
  store %struct.rb_node* %3, %struct.rb_node** %rb_leftmost1, align 8, !dbg !1603
  br label %if.end, !dbg !1601

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.rb_node*, %struct.rb_node** %victim.addr, align 8, !dbg !1604
  %6 = load %struct.rb_node*, %struct.rb_node** %new.addr, align 8, !dbg !1605
  %7 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !1606
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %7, i32 0, i32 0, !dbg !1607
  call void @rb_replace_node(%struct.rb_node* %5, %struct.rb_node* %6, %struct.rb_root* %rb_root) #6, !dbg !1608
  ret void, !dbg !1609
}

; Function Attrs: noredzone
declare dso_local void @rb_replace_node(%struct.rb_node*, %struct.rb_node*, %struct.rb_root*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_mm_scan_init_with_range(%struct.drm_mm_scan* %scan, %struct.drm_mm* %mm, i64 %size, i64 %alignment, i64 %color, i64 %start, i64 %end, i32 %mode) #0 !dbg !1610 {
entry:
  %scan.addr = alloca %struct.drm_mm_scan*, align 8
  %mm.addr = alloca %struct.drm_mm*, align 8
  %size.addr = alloca i64, align 8
  %alignment.addr = alloca i64, align 8
  %color.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  store %struct.drm_mm_scan* %scan, %struct.drm_mm_scan** %scan.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_scan** %scan.addr, metadata !1626, metadata !DIExpression()), !dbg !1627
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !1628, metadata !DIExpression()), !dbg !1629
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1630, metadata !DIExpression()), !dbg !1631
  store i64 %alignment, i64* %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %alignment.addr, metadata !1632, metadata !DIExpression()), !dbg !1633
  store i64 %color, i64* %color.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %color.addr, metadata !1634, metadata !DIExpression()), !dbg !1635
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !1636, metadata !DIExpression()), !dbg !1637
  store i64 %end, i64* %end.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %end.addr, metadata !1638, metadata !DIExpression()), !dbg !1639
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !1640, metadata !DIExpression()), !dbg !1641
  %0 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !1642
  %1 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1643
  %mm1 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %1, i32 0, i32 0, !dbg !1644
  store %struct.drm_mm* %0, %struct.drm_mm** %mm1, align 8, !dbg !1645
  %2 = load i64, i64* %alignment.addr, align 8, !dbg !1646
  %cmp = icmp ule i64 %2, 1, !dbg !1648
  br i1 %cmp, label %if.then, label %if.end, !dbg !1649

if.then:                                          ; preds = %entry
  store i64 0, i64* %alignment.addr, align 8, !dbg !1650
  br label %if.end, !dbg !1651

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %color.addr, align 8, !dbg !1652
  %4 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1653
  %color2 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %4, i32 0, i32 8, !dbg !1654
  store i64 %3, i64* %color2, align 8, !dbg !1655
  %5 = load i64, i64* %alignment.addr, align 8, !dbg !1656
  %6 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1657
  %alignment3 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %6, i32 0, i32 2, !dbg !1658
  store i64 %5, i64* %alignment3, align 8, !dbg !1659
  %7 = load i64, i64* %alignment.addr, align 8, !dbg !1660
  %call = call zeroext i1 @is_power_of_2(i64 %7) #9, !dbg !1661
  br i1 %call, label %cond.true, label %cond.false, !dbg !1661

cond.true:                                        ; preds = %if.end
  %8 = load i64, i64* %alignment.addr, align 8, !dbg !1662
  %sub = sub i64 %8, 1, !dbg !1663
  br label %cond.end, !dbg !1661

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1661

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !1661
  %9 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1664
  %remainder_mask = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %9, i32 0, i32 3, !dbg !1665
  store i64 %cond, i64* %remainder_mask, align 8, !dbg !1666
  %10 = load i64, i64* %size.addr, align 8, !dbg !1667
  %11 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1668
  %size4 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %11, i32 0, i32 1, !dbg !1669
  store i64 %10, i64* %size4, align 8, !dbg !1670
  %12 = load i32, i32* %mode.addr, align 4, !dbg !1671
  %13 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1672
  %mode5 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %13, i32 0, i32 9, !dbg !1673
  store i32 %12, i32* %mode5, align 8, !dbg !1674
  %14 = load i64, i64* %start.addr, align 8, !dbg !1675
  %15 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1676
  %range_start = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %15, i32 0, i32 4, !dbg !1677
  store i64 %14, i64* %range_start, align 8, !dbg !1678
  %16 = load i64, i64* %end.addr, align 8, !dbg !1679
  %17 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1680
  %range_end = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %17, i32 0, i32 5, !dbg !1681
  store i64 %16, i64* %range_end, align 8, !dbg !1682
  %18 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1683
  %hit_start = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %18, i32 0, i32 6, !dbg !1684
  store i64 -1, i64* %hit_start, align 8, !dbg !1685
  %19 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1686
  %hit_end = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %19, i32 0, i32 7, !dbg !1687
  store i64 0, i64* %hit_end, align 8, !dbg !1688
  ret void, !dbg !1689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @drm_mm_scan_add_block(%struct.drm_mm_scan* %scan, %struct.drm_mm_node* %node) #0 !dbg !1690 {
entry:
  %retval = alloca i1, align 1
  %scan.addr = alloca %struct.drm_mm_scan*, align 8
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %mm = alloca %struct.drm_mm*, align 8
  %hole = alloca %struct.drm_mm_node*, align 8
  %hole_start = alloca i64, align 8
  %hole_end = alloca i64, align 8
  %col_start = alloca i64, align 8
  %col_end = alloca i64, align 8
  %adj_start = alloca i64, align 8
  %adj_end = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %__UNIQUE_ID___x260 = alloca i64, align 8
  %__UNIQUE_ID___y261 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %__UNIQUE_ID___x262 = alloca i64, align 8
  %__UNIQUE_ID___y263 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %rem = alloca i64, align 8
  %__UNIQUE_ID___x264 = alloca i64, align 8
  %__UNIQUE_ID___y265 = alloca i64, align 8
  %tmp41 = alloca i64, align 8
  %__UNIQUE_ID___x266 = alloca i64, align 8
  %__UNIQUE_ID___y267 = alloca i64, align 8
  %tmp52 = alloca i64, align 8
  store %struct.drm_mm_scan* %scan, %struct.drm_mm_scan** %scan.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_scan** %scan.addr, metadata !1693, metadata !DIExpression()), !dbg !1694
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !1695, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm, metadata !1697, metadata !DIExpression()), !dbg !1698
  %0 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1699
  %mm1 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %0, i32 0, i32 0, !dbg !1700
  %1 = load %struct.drm_mm*, %struct.drm_mm** %mm1, align 8, !dbg !1700
  store %struct.drm_mm* %1, %struct.drm_mm** %mm, align 8, !dbg !1698
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %hole, metadata !1701, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.declare(metadata i64* %hole_start, metadata !1703, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.declare(metadata i64* %hole_end, metadata !1705, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.declare(metadata i64* %col_start, metadata !1707, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.declare(metadata i64* %col_end, metadata !1709, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.declare(metadata i64* %adj_start, metadata !1711, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.declare(metadata i64* %adj_end, metadata !1713, metadata !DIExpression()), !dbg !1714
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1715
  %flags = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %2, i32 0, i32 12, !dbg !1716
  call void @__set_bit(i64 1, i64* %flags) #6, !dbg !1717
  %3 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !1718
  %scan_active = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %3, i32 0, i32 6, !dbg !1719
  %4 = load i64, i64* %scan_active, align 8, !dbg !1720
  %inc = add i64 %4, 1, !dbg !1720
  store i64 %inc, i64* %scan_active, align 8, !dbg !1720
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1721, metadata !DIExpression()), !dbg !1723
  %5 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1723
  %node_list = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %5, i32 0, i32 4, !dbg !1723
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %node_list, i32 0, i32 1, !dbg !1723
  %6 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !1723
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !1723
  store i8* %7, i8** %__mptr, align 8, !dbg !1723
  br label %do.body, !dbg !1723

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1724

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !1723
  %add.ptr = getelementptr i8, i8* %8, i64 -32, !dbg !1723
  %9 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !1723
  store %struct.drm_mm_node* %9, %struct.drm_mm_node** %tmp, align 8, !dbg !1724
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !1723
  store %struct.drm_mm_node* %10, %struct.drm_mm_node** %hole, align 8, !dbg !1726
  %11 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1727
  %node_list2 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %11, i32 0, i32 4, !dbg !1728
  call void @__list_del_entry(%struct.list_head* %node_list2) #6, !dbg !1729
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !1730
  %call = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %12) #6, !dbg !1731
  store i64 %call, i64* %hole_start, align 8, !dbg !1732
  %13 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !1733
  %call3 = call i64 @__drm_mm_hole_node_end(%struct.drm_mm_node* %13) #6, !dbg !1734
  store i64 %call3, i64* %hole_end, align 8, !dbg !1735
  %14 = load i64, i64* %hole_start, align 8, !dbg !1736
  store i64 %14, i64* %col_start, align 8, !dbg !1737
  %15 = load i64, i64* %hole_end, align 8, !dbg !1738
  store i64 %15, i64* %col_end, align 8, !dbg !1739
  %16 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !1740
  %color_adjust = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %16, i32 0, i32 0, !dbg !1742
  %17 = load void (%struct.drm_mm_node*, i64, i64*, i64*)*, void (%struct.drm_mm_node*, i64, i64*, i64*)** %color_adjust, align 8, !dbg !1742
  %tobool = icmp ne void (%struct.drm_mm_node*, i64, i64*, i64*)* %17, null, !dbg !1740
  br i1 %tobool, label %if.then, label %if.end, !dbg !1743

if.then:                                          ; preds = %do.end
  %18 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !1744
  %color_adjust4 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %18, i32 0, i32 0, !dbg !1745
  %19 = load void (%struct.drm_mm_node*, i64, i64*, i64*)*, void (%struct.drm_mm_node*, i64, i64*, i64*)** %color_adjust4, align 8, !dbg !1745
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !1746
  %21 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1747
  %color = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %21, i32 0, i32 8, !dbg !1748
  %22 = load i64, i64* %color, align 8, !dbg !1748
  call void %19(%struct.drm_mm_node* %20, i64 %22, i64* %col_start, i64* %col_end) #6, !dbg !1744
  br label %if.end, !dbg !1744

if.end:                                           ; preds = %if.then, %do.end
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x260, metadata !1749, metadata !DIExpression()), !dbg !1751
  %23 = load i64, i64* %col_start, align 8, !dbg !1751
  store i64 %23, i64* %__UNIQUE_ID___x260, align 8, !dbg !1751
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y261, metadata !1752, metadata !DIExpression()), !dbg !1751
  %24 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1751
  %range_start = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %24, i32 0, i32 4, !dbg !1751
  %25 = load i64, i64* %range_start, align 8, !dbg !1751
  store i64 %25, i64* %__UNIQUE_ID___y261, align 8, !dbg !1751
  %26 = load i64, i64* %__UNIQUE_ID___x260, align 8, !dbg !1751
  %27 = load i64, i64* %__UNIQUE_ID___y261, align 8, !dbg !1751
  %cmp = icmp ugt i64 %26, %27, !dbg !1751
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1751

cond.true:                                        ; preds = %if.end
  %28 = load i64, i64* %__UNIQUE_ID___x260, align 8, !dbg !1751
  br label %cond.end, !dbg !1751

cond.false:                                       ; preds = %if.end
  %29 = load i64, i64* %__UNIQUE_ID___y261, align 8, !dbg !1751
  br label %cond.end, !dbg !1751

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %28, %cond.true ], [ %29, %cond.false ], !dbg !1751
  store i64 %cond, i64* %tmp5, align 8, !dbg !1751
  %30 = load i64, i64* %tmp5, align 8, !dbg !1751
  store i64 %30, i64* %adj_start, align 8, !dbg !1753
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x262, metadata !1754, metadata !DIExpression()), !dbg !1756
  %31 = load i64, i64* %col_end, align 8, !dbg !1756
  store i64 %31, i64* %__UNIQUE_ID___x262, align 8, !dbg !1756
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y263, metadata !1757, metadata !DIExpression()), !dbg !1756
  %32 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1756
  %range_end = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %32, i32 0, i32 5, !dbg !1756
  %33 = load i64, i64* %range_end, align 8, !dbg !1756
  store i64 %33, i64* %__UNIQUE_ID___y263, align 8, !dbg !1756
  %34 = load i64, i64* %__UNIQUE_ID___x262, align 8, !dbg !1756
  %35 = load i64, i64* %__UNIQUE_ID___y263, align 8, !dbg !1756
  %cmp7 = icmp ult i64 %34, %35, !dbg !1756
  br i1 %cmp7, label %cond.true8, label %cond.false9, !dbg !1756

cond.true8:                                       ; preds = %cond.end
  %36 = load i64, i64* %__UNIQUE_ID___x262, align 8, !dbg !1756
  br label %cond.end10, !dbg !1756

cond.false9:                                      ; preds = %cond.end
  %37 = load i64, i64* %__UNIQUE_ID___y263, align 8, !dbg !1756
  br label %cond.end10, !dbg !1756

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi i64 [ %36, %cond.true8 ], [ %37, %cond.false9 ], !dbg !1756
  store i64 %cond11, i64* %tmp6, align 8, !dbg !1756
  %38 = load i64, i64* %tmp6, align 8, !dbg !1756
  store i64 %38, i64* %adj_end, align 8, !dbg !1758
  %39 = load i64, i64* %adj_end, align 8, !dbg !1759
  %40 = load i64, i64* %adj_start, align 8, !dbg !1761
  %cmp12 = icmp ule i64 %39, %40, !dbg !1762
  br i1 %cmp12, label %if.then14, label %lor.lhs.false, !dbg !1763

lor.lhs.false:                                    ; preds = %cond.end10
  %41 = load i64, i64* %adj_end, align 8, !dbg !1764
  %42 = load i64, i64* %adj_start, align 8, !dbg !1765
  %sub = sub i64 %41, %42, !dbg !1766
  %43 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1767
  %size = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %43, i32 0, i32 1, !dbg !1768
  %44 = load i64, i64* %size, align 8, !dbg !1768
  %cmp13 = icmp ult i64 %sub, %44, !dbg !1769
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1770

if.then14:                                        ; preds = %lor.lhs.false, %cond.end10
  store i1 false, i1* %retval, align 1, !dbg !1771
  br label %return, !dbg !1771

if.end15:                                         ; preds = %lor.lhs.false
  %45 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1772
  %mode = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %45, i32 0, i32 9, !dbg !1774
  %46 = load i32, i32* %mode, align 8, !dbg !1774
  %cmp16 = icmp eq i32 %46, 2, !dbg !1775
  br i1 %cmp16, label %if.then17, label %if.end20, !dbg !1776

if.then17:                                        ; preds = %if.end15
  %47 = load i64, i64* %adj_end, align 8, !dbg !1777
  %48 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1778
  %size18 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %48, i32 0, i32 1, !dbg !1779
  %49 = load i64, i64* %size18, align 8, !dbg !1779
  %sub19 = sub i64 %47, %49, !dbg !1780
  store i64 %sub19, i64* %adj_start, align 8, !dbg !1781
  br label %if.end20, !dbg !1782

if.end20:                                         ; preds = %if.then17, %if.end15
  %50 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1783
  %alignment = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %50, i32 0, i32 2, !dbg !1785
  %51 = load i64, i64* %alignment, align 8, !dbg !1785
  %tobool21 = icmp ne i64 %51, 0, !dbg !1783
  br i1 %tobool21, label %if.then22, label %if.end75, !dbg !1786

if.then22:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i64* %rem, metadata !1787, metadata !DIExpression()), !dbg !1789
  %52 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1790
  %remainder_mask = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %52, i32 0, i32 3, !dbg !1790
  %53 = load i64, i64* %remainder_mask, align 8, !dbg !1790
  %tobool23 = icmp ne i64 %53, 0, !dbg !1790
  %lnot = xor i1 %tobool23, true, !dbg !1790
  %lnot24 = xor i1 %lnot, true, !dbg !1790
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !1790
  %conv = sext i32 %lnot.ext to i64, !dbg !1790
  %tobool25 = icmp ne i64 %conv, 0, !dbg !1790
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !1792

if.then26:                                        ; preds = %if.then22
  %54 = load i64, i64* %adj_start, align 8, !dbg !1793
  %55 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1794
  %remainder_mask27 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %55, i32 0, i32 3, !dbg !1795
  %56 = load i64, i64* %remainder_mask27, align 8, !dbg !1795
  %and = and i64 %54, %56, !dbg !1796
  store i64 %and, i64* %rem, align 8, !dbg !1797
  br label %if.end30, !dbg !1798

if.else:                                          ; preds = %if.then22
  %57 = load i64, i64* %adj_start, align 8, !dbg !1799
  %58 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1800
  %alignment28 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %58, i32 0, i32 2, !dbg !1801
  %59 = load i64, i64* %alignment28, align 8, !dbg !1801
  %call29 = call i64 @div64_u64_rem(i64 %57, i64 %59, i64* %rem) #6, !dbg !1802
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then26
  %60 = load i64, i64* %rem, align 8, !dbg !1803
  %tobool31 = icmp ne i64 %60, 0, !dbg !1803
  br i1 %tobool31, label %if.then32, label %if.end74, !dbg !1805

if.then32:                                        ; preds = %if.end30
  %61 = load i64, i64* %rem, align 8, !dbg !1806
  %62 = load i64, i64* %adj_start, align 8, !dbg !1808
  %sub33 = sub i64 %62, %61, !dbg !1808
  store i64 %sub33, i64* %adj_start, align 8, !dbg !1808
  %63 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1809
  %mode34 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %63, i32 0, i32 9, !dbg !1811
  %64 = load i32, i32* %mode34, align 8, !dbg !1811
  %cmp35 = icmp ne i32 %64, 2, !dbg !1812
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !1813

if.then37:                                        ; preds = %if.then32
  %65 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1814
  %alignment38 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %65, i32 0, i32 2, !dbg !1815
  %66 = load i64, i64* %alignment38, align 8, !dbg !1815
  %67 = load i64, i64* %adj_start, align 8, !dbg !1816
  %add = add i64 %67, %66, !dbg !1816
  store i64 %add, i64* %adj_start, align 8, !dbg !1816
  br label %if.end39, !dbg !1817

if.end39:                                         ; preds = %if.then37, %if.then32
  %68 = load i64, i64* %adj_start, align 8, !dbg !1818
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x264, metadata !1820, metadata !DIExpression()), !dbg !1822
  %69 = load i64, i64* %col_start, align 8, !dbg !1822
  store i64 %69, i64* %__UNIQUE_ID___x264, align 8, !dbg !1822
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y265, metadata !1823, metadata !DIExpression()), !dbg !1822
  %70 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1822
  %range_start40 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %70, i32 0, i32 4, !dbg !1822
  %71 = load i64, i64* %range_start40, align 8, !dbg !1822
  store i64 %71, i64* %__UNIQUE_ID___y265, align 8, !dbg !1822
  %72 = load i64, i64* %__UNIQUE_ID___x264, align 8, !dbg !1822
  %73 = load i64, i64* %__UNIQUE_ID___y265, align 8, !dbg !1822
  %cmp42 = icmp ugt i64 %72, %73, !dbg !1822
  br i1 %cmp42, label %cond.true44, label %cond.false45, !dbg !1822

cond.true44:                                      ; preds = %if.end39
  %74 = load i64, i64* %__UNIQUE_ID___x264, align 8, !dbg !1822
  br label %cond.end46, !dbg !1822

cond.false45:                                     ; preds = %if.end39
  %75 = load i64, i64* %__UNIQUE_ID___y265, align 8, !dbg !1822
  br label %cond.end46, !dbg !1822

cond.end46:                                       ; preds = %cond.false45, %cond.true44
  %cond47 = phi i64 [ %74, %cond.true44 ], [ %75, %cond.false45 ], !dbg !1822
  store i64 %cond47, i64* %tmp41, align 8, !dbg !1822
  %76 = load i64, i64* %tmp41, align 8, !dbg !1822
  %cmp48 = icmp ult i64 %68, %76, !dbg !1824
  br i1 %cmp48, label %if.then63, label %lor.lhs.false50, !dbg !1825

lor.lhs.false50:                                  ; preds = %cond.end46
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x266, metadata !1826, metadata !DIExpression()), !dbg !1828
  %77 = load i64, i64* %col_end, align 8, !dbg !1828
  store i64 %77, i64* %__UNIQUE_ID___x266, align 8, !dbg !1828
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y267, metadata !1829, metadata !DIExpression()), !dbg !1828
  %78 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1828
  %range_end51 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %78, i32 0, i32 5, !dbg !1828
  %79 = load i64, i64* %range_end51, align 8, !dbg !1828
  store i64 %79, i64* %__UNIQUE_ID___y267, align 8, !dbg !1828
  %80 = load i64, i64* %__UNIQUE_ID___x266, align 8, !dbg !1828
  %81 = load i64, i64* %__UNIQUE_ID___y267, align 8, !dbg !1828
  %cmp53 = icmp ult i64 %80, %81, !dbg !1828
  br i1 %cmp53, label %cond.true55, label %cond.false56, !dbg !1828

cond.true55:                                      ; preds = %lor.lhs.false50
  %82 = load i64, i64* %__UNIQUE_ID___x266, align 8, !dbg !1828
  br label %cond.end57, !dbg !1828

cond.false56:                                     ; preds = %lor.lhs.false50
  %83 = load i64, i64* %__UNIQUE_ID___y267, align 8, !dbg !1828
  br label %cond.end57, !dbg !1828

cond.end57:                                       ; preds = %cond.false56, %cond.true55
  %cond58 = phi i64 [ %82, %cond.true55 ], [ %83, %cond.false56 ], !dbg !1828
  store i64 %cond58, i64* %tmp52, align 8, !dbg !1828
  %84 = load i64, i64* %tmp52, align 8, !dbg !1828
  %85 = load i64, i64* %adj_start, align 8, !dbg !1830
  %sub59 = sub i64 %84, %85, !dbg !1831
  %86 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1832
  %size60 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %86, i32 0, i32 1, !dbg !1833
  %87 = load i64, i64* %size60, align 8, !dbg !1833
  %cmp61 = icmp ult i64 %sub59, %87, !dbg !1834
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !1835

if.then63:                                        ; preds = %cond.end57, %cond.end46
  store i1 false, i1* %retval, align 1, !dbg !1836
  br label %return, !dbg !1836

if.end64:                                         ; preds = %cond.end57
  %88 = load i64, i64* %adj_end, align 8, !dbg !1837
  %89 = load i64, i64* %adj_start, align 8, !dbg !1839
  %cmp65 = icmp ule i64 %88, %89, !dbg !1840
  br i1 %cmp65, label %if.then72, label %lor.lhs.false67, !dbg !1841

lor.lhs.false67:                                  ; preds = %if.end64
  %90 = load i64, i64* %adj_end, align 8, !dbg !1842
  %91 = load i64, i64* %adj_start, align 8, !dbg !1843
  %sub68 = sub i64 %90, %91, !dbg !1844
  %92 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1845
  %size69 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %92, i32 0, i32 1, !dbg !1846
  %93 = load i64, i64* %size69, align 8, !dbg !1846
  %cmp70 = icmp ult i64 %sub68, %93, !dbg !1847
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !1848

if.then72:                                        ; preds = %lor.lhs.false67, %if.end64
  store i1 false, i1* %retval, align 1, !dbg !1849
  br label %return, !dbg !1849

if.end73:                                         ; preds = %lor.lhs.false67
  br label %if.end74, !dbg !1850

if.end74:                                         ; preds = %if.end73, %if.end30
  br label %if.end75, !dbg !1851

if.end75:                                         ; preds = %if.end74, %if.end20
  %94 = load i64, i64* %adj_start, align 8, !dbg !1852
  %95 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1853
  %hit_start = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %95, i32 0, i32 6, !dbg !1854
  store i64 %94, i64* %hit_start, align 8, !dbg !1855
  %96 = load i64, i64* %adj_start, align 8, !dbg !1856
  %97 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1857
  %size76 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %97, i32 0, i32 1, !dbg !1858
  %98 = load i64, i64* %size76, align 8, !dbg !1858
  %add77 = add i64 %96, %98, !dbg !1859
  %99 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1860
  %hit_end = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %99, i32 0, i32 7, !dbg !1861
  store i64 %add77, i64* %hit_end, align 8, !dbg !1862
  store i1 true, i1* %retval, align 1, !dbg !1863
  br label %return, !dbg !1863

return:                                           ; preds = %if.end75, %if.then72, %if.then63, %if.then14
  %100 = load i1, i1* %retval, align 1, !dbg !1864
  ret i1 %100, !dbg !1864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !1865 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1866, metadata !DIExpression()), !dbg !1867
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1868
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #6, !dbg !1870
  br i1 %call, label %if.end, label %if.then, !dbg !1871

if.then:                                          ; preds = %entry
  br label %return, !dbg !1872

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1873
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !1874
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !1874
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1875
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !1876
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1876
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #6, !dbg !1877
  br label %return, !dbg !1878

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1878
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__drm_mm_hole_node_end(%struct.drm_mm_node* %hole_node) #0 !dbg !1879 {
entry:
  %hole_node.addr = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %hole_node, %struct.drm_mm_node** %hole_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %hole_node.addr, metadata !1880, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1882, metadata !DIExpression()), !dbg !1884
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole_node.addr, align 8, !dbg !1884
  %node_list = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 4, !dbg !1884
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node_list, i32 0, i32 0, !dbg !1884
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1884
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !1884
  store i8* %2, i8** %__mptr, align 8, !dbg !1884
  br label %do.body, !dbg !1884

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1885

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !1884
  %add.ptr = getelementptr i8, i8* %3, i64 -32, !dbg !1884
  %4 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !1884
  store %struct.drm_mm_node* %4, %struct.drm_mm_node** %tmp, align 8, !dbg !1885
  %5 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !1884
  %start = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %5, i32 0, i32 1, !dbg !1887
  %6 = load i64, i64* %start, align 8, !dbg !1887
  ret i64 %6, !dbg !1888
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @drm_mm_scan_remove_block(%struct.drm_mm_scan* %scan, %struct.drm_mm_node* %node) #0 !dbg !1889 {
entry:
  %scan.addr = alloca %struct.drm_mm_scan*, align 8
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %prev_node = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_scan* %scan, %struct.drm_mm_scan** %scan.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_scan** %scan.addr, metadata !1890, metadata !DIExpression()), !dbg !1891
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !1892, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %prev_node, metadata !1894, metadata !DIExpression()), !dbg !1895
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1896
  %flags = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 12, !dbg !1897
  call void @__clear_bit(i64 1, i64* %flags) #6, !dbg !1898
  %1 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1899
  %mm = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %1, i32 0, i32 3, !dbg !1900
  %2 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !1900
  %scan_active = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %2, i32 0, i32 6, !dbg !1901
  %3 = load i64, i64* %scan_active, align 8, !dbg !1902
  %dec = add i64 %3, -1, !dbg !1902
  store i64 %dec, i64* %scan_active, align 8, !dbg !1902
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1903, metadata !DIExpression()), !dbg !1905
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1905
  %node_list = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %4, i32 0, i32 4, !dbg !1905
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %node_list, i32 0, i32 1, !dbg !1905
  %5 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !1905
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !1905
  store i8* %6, i8** %__mptr, align 8, !dbg !1905
  br label %do.body, !dbg !1905

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1906

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !1905
  %add.ptr = getelementptr i8, i8* %7, i64 -32, !dbg !1905
  %8 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !1905
  store %struct.drm_mm_node* %8, %struct.drm_mm_node** %tmp, align 8, !dbg !1906
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !1905
  store %struct.drm_mm_node* %9, %struct.drm_mm_node** %prev_node, align 8, !dbg !1908
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1909
  %node_list1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %10, i32 0, i32 4, !dbg !1910
  %11 = load %struct.drm_mm_node*, %struct.drm_mm_node** %prev_node, align 8, !dbg !1911
  %node_list2 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %11, i32 0, i32 4, !dbg !1912
  call void @list_add(%struct.list_head* %node_list1, %struct.list_head* %node_list2) #6, !dbg !1913
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1914
  %start = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 1, !dbg !1915
  %13 = load i64, i64* %start, align 8, !dbg !1915
  %14 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1916
  %size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %14, i32 0, i32 2, !dbg !1917
  %15 = load i64, i64* %size, align 8, !dbg !1917
  %add = add i64 %13, %15, !dbg !1918
  %16 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1919
  %hit_start = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %16, i32 0, i32 6, !dbg !1920
  %17 = load i64, i64* %hit_start, align 8, !dbg !1920
  %cmp = icmp ugt i64 %add, %17, !dbg !1921
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1922

land.rhs:                                         ; preds = %do.end
  %18 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !1923
  %start3 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %18, i32 0, i32 1, !dbg !1924
  %19 = load i64, i64* %start3, align 8, !dbg !1924
  %20 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1925
  %hit_end = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %20, i32 0, i32 7, !dbg !1926
  %21 = load i64, i64* %hit_end, align 8, !dbg !1926
  %cmp4 = icmp ult i64 %19, %21, !dbg !1927
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %22 = phi i1 [ false, %do.end ], [ %cmp4, %land.rhs ], !dbg !1928
  ret i1 %22, !dbg !1929
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__clear_bit(i64 %nr, i64* %addr) #0 !dbg !1930 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1931, metadata !DIExpression()), !dbg !1933
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1935, metadata !DIExpression()), !dbg !1936
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !351, metadata !DIExpression()), !dbg !1937
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !365, metadata !DIExpression()), !dbg !1939
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1940, metadata !DIExpression()), !dbg !1941
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1942, metadata !DIExpression()), !dbg !1943
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1944
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1945
  %div = sdiv i64 %1, 64, !dbg !1945
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1946
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1944
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1947
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1948
  %conv.i = trunc i64 %4 to i32, !dbg !1948
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #7, !dbg !1949
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1950
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1950
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #7, !dbg !1950
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1951
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !1952
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !1953
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !1954
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #8, !dbg !1955, !srcloc !1956
  ret void, !dbg !1957
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.drm_mm_node* @drm_mm_scan_color_evict(%struct.drm_mm_scan* %scan) #0 !dbg !1958 {
entry:
  %retval = alloca %struct.drm_mm_node*, align 8
  %scan.addr = alloca %struct.drm_mm_scan*, align 8
  %mm = alloca %struct.drm_mm*, align 8
  %hole = alloca %struct.drm_mm_node*, align 8
  %hole_start = alloca i64, align 8
  %hole_end = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp13 = alloca %struct.drm_mm_node*, align 8
  %__mptr33 = alloca i8*, align 8
  %tmp37 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_scan* %scan, %struct.drm_mm_scan** %scan.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_scan** %scan.addr, metadata !1961, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm, metadata !1963, metadata !DIExpression()), !dbg !1964
  %0 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1965
  %mm1 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %0, i32 0, i32 0, !dbg !1966
  %1 = load %struct.drm_mm*, %struct.drm_mm** %mm1, align 8, !dbg !1966
  store %struct.drm_mm* %1, %struct.drm_mm** %mm, align 8, !dbg !1964
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %hole, metadata !1967, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.declare(metadata i64* %hole_start, metadata !1969, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.declare(metadata i64* %hole_end, metadata !1971, metadata !DIExpression()), !dbg !1972
  %2 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !1973
  %color_adjust = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %2, i32 0, i32 0, !dbg !1975
  %3 = load void (%struct.drm_mm_node*, i64, i64*, i64*)*, void (%struct.drm_mm_node*, i64, i64*, i64*)** %color_adjust, align 8, !dbg !1975
  %tobool = icmp ne void (%struct.drm_mm_node*, i64, i64*, i64*)* %3, null, !dbg !1973
  br i1 %tobool, label %if.end, label %if.then, !dbg !1976

if.then:                                          ; preds = %entry
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %retval, align 8, !dbg !1977
  br label %return, !dbg !1977

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1978, metadata !DIExpression()), !dbg !1981
  %4 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !1981
  %hole_stack = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %4, i32 0, i32 1, !dbg !1981
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %hole_stack, i32 0, i32 0, !dbg !1981
  %5 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1981
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !1981
  store i8* %6, i8** %__mptr, align 8, !dbg !1981
  br label %do.body, !dbg !1981

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !1982

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !1981
  %add.ptr = getelementptr i8, i8* %7, i64 -48, !dbg !1981
  %8 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !1981
  store %struct.drm_mm_node* %8, %struct.drm_mm_node** %tmp, align 8, !dbg !1982
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !1981
  store %struct.drm_mm_node* %9, %struct.drm_mm_node** %hole, align 8, !dbg !1984
  br label %for.cond, !dbg !1984

for.cond:                                         ; preds = %do.end12, %do.end
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !1985
  %hole_stack2 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %10, i32 0, i32 5, !dbg !1985
  %11 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !1985
  %hole_stack3 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %11, i32 0, i32 1, !dbg !1985
  %cmp = icmp eq %struct.list_head* %hole_stack2, %hole_stack3, !dbg !1985
  %lnot = xor i1 %cmp, true, !dbg !1985
  br i1 %lnot, label %for.body, label %for.end, !dbg !1984

for.body:                                         ; preds = %for.cond
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !1987
  %call = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %12) #6, !dbg !1989
  store i64 %call, i64* %hole_start, align 8, !dbg !1990
  %13 = load i64, i64* %hole_start, align 8, !dbg !1991
  %14 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !1992
  %hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %14, i32 0, i32 10, !dbg !1993
  %15 = load i64, i64* %hole_size, align 8, !dbg !1993
  %add = add i64 %13, %15, !dbg !1994
  store i64 %add, i64* %hole_end, align 8, !dbg !1995
  %16 = load i64, i64* %hole_start, align 8, !dbg !1996
  %17 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !1998
  %hit_start = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %17, i32 0, i32 6, !dbg !1999
  %18 = load i64, i64* %hit_start, align 8, !dbg !1999
  %cmp4 = icmp ule i64 %16, %18, !dbg !2000
  br i1 %cmp4, label %land.lhs.true, label %if.end7, !dbg !2001

land.lhs.true:                                    ; preds = %for.body
  %19 = load i64, i64* %hole_end, align 8, !dbg !2002
  %20 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !2003
  %hit_end = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %20, i32 0, i32 7, !dbg !2004
  %21 = load i64, i64* %hit_end, align 8, !dbg !2004
  %cmp5 = icmp uge i64 %19, %21, !dbg !2005
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2006

if.then6:                                         ; preds = %land.lhs.true
  br label %for.end, !dbg !2007

if.end7:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !2008

for.inc:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !2009, metadata !DIExpression()), !dbg !2011
  %22 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !2011
  %hole_stack9 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %22, i32 0, i32 5, !dbg !2011
  %next10 = getelementptr inbounds %struct.list_head, %struct.list_head* %hole_stack9, i32 0, i32 0, !dbg !2011
  %23 = load %struct.list_head*, %struct.list_head** %next10, align 8, !dbg !2011
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !2011
  store i8* %24, i8** %__mptr8, align 8, !dbg !2011
  br label %do.body11, !dbg !2011

do.body11:                                        ; preds = %for.inc
  br label %do.end12, !dbg !2012

do.end12:                                         ; preds = %do.body11
  %25 = load i8*, i8** %__mptr8, align 8, !dbg !2011
  %add.ptr14 = getelementptr i8, i8* %25, i64 -48, !dbg !2011
  %26 = bitcast i8* %add.ptr14 to %struct.drm_mm_node*, !dbg !2011
  store %struct.drm_mm_node* %26, %struct.drm_mm_node** %tmp13, align 8, !dbg !2012
  %27 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp13, align 8, !dbg !2011
  store %struct.drm_mm_node* %27, %struct.drm_mm_node** %hole, align 8, !dbg !1985
  br label %for.cond, !dbg !1985, !llvm.loop !2014

for.end:                                          ; preds = %if.then6, %for.cond
  %28 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !2016
  %hole_stack15 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %28, i32 0, i32 5, !dbg !2016
  %29 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !2016
  %hole_stack16 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %29, i32 0, i32 1, !dbg !2016
  %cmp17 = icmp eq %struct.list_head* %hole_stack15, %hole_stack16, !dbg !2016
  %lnot18 = xor i1 %cmp17, true, !dbg !2016
  %lnot19 = xor i1 %lnot18, true, !dbg !2016
  %lnot.ext = zext i1 %lnot19 to i32, !dbg !2016
  %conv = sext i32 %lnot.ext to i64, !dbg !2016
  %tobool20 = icmp ne i64 %conv, 0, !dbg !2016
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !2018

if.then21:                                        ; preds = %for.end
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %retval, align 8, !dbg !2019
  br label %return, !dbg !2019

if.end22:                                         ; preds = %for.end
  %30 = load %struct.drm_mm*, %struct.drm_mm** %mm, align 8, !dbg !2020
  %color_adjust23 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %30, i32 0, i32 0, !dbg !2021
  %31 = load void (%struct.drm_mm_node*, i64, i64*, i64*)*, void (%struct.drm_mm_node*, i64, i64*, i64*)** %color_adjust23, align 8, !dbg !2021
  %32 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !2022
  %33 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !2023
  %color = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %33, i32 0, i32 8, !dbg !2024
  %34 = load i64, i64* %color, align 8, !dbg !2024
  call void %31(%struct.drm_mm_node* %32, i64 %34, i64* %hole_start, i64* %hole_end) #6, !dbg !2020
  %35 = load i64, i64* %hole_start, align 8, !dbg !2025
  %36 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !2027
  %hit_start24 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %36, i32 0, i32 6, !dbg !2028
  %37 = load i64, i64* %hit_start24, align 8, !dbg !2028
  %cmp25 = icmp ugt i64 %35, %37, !dbg !2029
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !2030

if.then27:                                        ; preds = %if.end22
  %38 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !2031
  store %struct.drm_mm_node* %38, %struct.drm_mm_node** %retval, align 8, !dbg !2032
  br label %return, !dbg !2032

if.end28:                                         ; preds = %if.end22
  %39 = load i64, i64* %hole_end, align 8, !dbg !2033
  %40 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %scan.addr, align 8, !dbg !2035
  %hit_end29 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %40, i32 0, i32 7, !dbg !2036
  %41 = load i64, i64* %hit_end29, align 8, !dbg !2036
  %cmp30 = icmp ult i64 %39, %41, !dbg !2037
  br i1 %cmp30, label %if.then32, label %if.end39, !dbg !2038

if.then32:                                        ; preds = %if.end28
  call void @llvm.dbg.declare(metadata i8** %__mptr33, metadata !2039, metadata !DIExpression()), !dbg !2041
  %42 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole, align 8, !dbg !2041
  %node_list = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %42, i32 0, i32 4, !dbg !2041
  %next34 = getelementptr inbounds %struct.list_head, %struct.list_head* %node_list, i32 0, i32 0, !dbg !2041
  %43 = load %struct.list_head*, %struct.list_head** %next34, align 8, !dbg !2041
  %44 = bitcast %struct.list_head* %43 to i8*, !dbg !2041
  store i8* %44, i8** %__mptr33, align 8, !dbg !2041
  br label %do.body35, !dbg !2041

do.body35:                                        ; preds = %if.then32
  br label %do.end36, !dbg !2042

do.end36:                                         ; preds = %do.body35
  %45 = load i8*, i8** %__mptr33, align 8, !dbg !2041
  %add.ptr38 = getelementptr i8, i8* %45, i64 -32, !dbg !2041
  %46 = bitcast i8* %add.ptr38 to %struct.drm_mm_node*, !dbg !2041
  store %struct.drm_mm_node* %46, %struct.drm_mm_node** %tmp37, align 8, !dbg !2042
  %47 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp37, align 8, !dbg !2041
  store %struct.drm_mm_node* %47, %struct.drm_mm_node** %retval, align 8, !dbg !2044
  br label %return, !dbg !2044

if.end39:                                         ; preds = %if.end28
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %retval, align 8, !dbg !2045
  br label %return, !dbg !2045

return:                                           ; preds = %if.end39, %do.end36, %if.then27, %if.then21, %if.then
  %48 = load %struct.drm_mm_node*, %struct.drm_mm_node** %retval, align 8, !dbg !2046
  ret %struct.drm_mm_node* %48, !dbg !2046
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_mm_init(%struct.drm_mm* %mm, i64 %start, i64 %size) #0 !dbg !2047 {
entry:
  %mm.addr = alloca %struct.drm_mm*, align 8
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.rb_root_cached, align 8
  %.compoundliteral1 = alloca %struct.rb_root_cached, align 8
  %.compoundliteral5 = alloca %struct.rb_root, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !2050, metadata !DIExpression()), !dbg !2051
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !2052, metadata !DIExpression()), !dbg !2053
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2054, metadata !DIExpression()), !dbg !2055
  %0 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2056
  %color_adjust = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %0, i32 0, i32 0, !dbg !2057
  store void (%struct.drm_mm_node*, i64, i64*, i64*)* null, void (%struct.drm_mm_node*, i64, i64*, i64*)** %color_adjust, align 8, !dbg !2058
  %1 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2059
  %hole_stack = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %1, i32 0, i32 1, !dbg !2060
  call void @INIT_LIST_HEAD(%struct.list_head* %hole_stack) #6, !dbg !2061
  %2 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2062
  %interval_tree = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %2, i32 0, i32 3, !dbg !2063
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %.compoundliteral, i32 0, i32 0, !dbg !2064
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %rb_root, i32 0, i32 0, !dbg !2064
  store %struct.rb_node* null, %struct.rb_node** %rb_node, align 8, !dbg !2064
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %.compoundliteral, i32 0, i32 1, !dbg !2064
  store %struct.rb_node* null, %struct.rb_node** %rb_leftmost, align 8, !dbg !2064
  %3 = bitcast %struct.rb_root_cached* %interval_tree to i8*, !dbg !2064
  %4 = bitcast %struct.rb_root_cached* %.compoundliteral to i8*, !dbg !2064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 16, i1 false), !dbg !2064
  %5 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2065
  %holes_size = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %5, i32 0, i32 4, !dbg !2066
  %rb_root2 = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %.compoundliteral1, i32 0, i32 0, !dbg !2067
  %rb_node3 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %rb_root2, i32 0, i32 0, !dbg !2067
  store %struct.rb_node* null, %struct.rb_node** %rb_node3, align 8, !dbg !2067
  %rb_leftmost4 = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %.compoundliteral1, i32 0, i32 1, !dbg !2067
  store %struct.rb_node* null, %struct.rb_node** %rb_leftmost4, align 8, !dbg !2067
  %6 = bitcast %struct.rb_root_cached* %holes_size to i8*, !dbg !2067
  %7 = bitcast %struct.rb_root_cached* %.compoundliteral1 to i8*, !dbg !2067
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false), !dbg !2067
  %8 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2068
  %holes_addr = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %8, i32 0, i32 5, !dbg !2069
  %rb_node6 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %.compoundliteral5, i32 0, i32 0, !dbg !2070
  store %struct.rb_node* null, %struct.rb_node** %rb_node6, align 8, !dbg !2070
  %9 = bitcast %struct.rb_root* %holes_addr to i8*, !dbg !2070
  %10 = bitcast %struct.rb_root* %.compoundliteral5 to i8*, !dbg !2070
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false), !dbg !2070
  %11 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2071
  %head_node = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %11, i32 0, i32 2, !dbg !2072
  %node_list = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %head_node, i32 0, i32 4, !dbg !2073
  call void @INIT_LIST_HEAD(%struct.list_head* %node_list) #6, !dbg !2074
  %12 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2075
  %head_node7 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %12, i32 0, i32 2, !dbg !2076
  %flags = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %head_node7, i32 0, i32 12, !dbg !2077
  store i64 0, i64* %flags, align 8, !dbg !2078
  %13 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2079
  %14 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2080
  %head_node8 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %14, i32 0, i32 2, !dbg !2081
  %mm9 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %head_node8, i32 0, i32 3, !dbg !2082
  store %struct.drm_mm* %13, %struct.drm_mm** %mm9, align 8, !dbg !2083
  %15 = load i64, i64* %start.addr, align 8, !dbg !2084
  %16 = load i64, i64* %size.addr, align 8, !dbg !2085
  %add = add i64 %15, %16, !dbg !2086
  %17 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2087
  %head_node10 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %17, i32 0, i32 2, !dbg !2088
  %start11 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %head_node10, i32 0, i32 1, !dbg !2089
  store i64 %add, i64* %start11, align 8, !dbg !2090
  %18 = load i64, i64* %size.addr, align 8, !dbg !2091
  %sub = sub i64 0, %18, !dbg !2092
  %19 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2093
  %head_node12 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %19, i32 0, i32 2, !dbg !2094
  %size13 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %head_node12, i32 0, i32 2, !dbg !2095
  store i64 %sub, i64* %size13, align 8, !dbg !2096
  %20 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2097
  %head_node14 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %20, i32 0, i32 2, !dbg !2098
  call void @add_hole(%struct.drm_mm_node* %head_node14) #6, !dbg !2099
  %21 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2100
  %scan_active = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %21, i32 0, i32 6, !dbg !2101
  store i64 0, i64* %scan_active, align 8, !dbg !2102
  ret void, !dbg !2103
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !2104 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2105, metadata !DIExpression()), !dbg !2106
  br label %do.body, !dbg !2107

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2108

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2110

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2108

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2112
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2112
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2112
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !2112
  br label %do.end3, !dbg !2112

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2108

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2114
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2115
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !2116
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !2117
  ret void, !dbg !2118
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_mm_takedown(%struct.drm_mm* %mm) #0 !dbg !2119 {
entry:
  %mm.addr = alloca %struct.drm_mm*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !2122, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2124, metadata !DIExpression()), !dbg !2127
  %0 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2127
  %call = call zeroext i1 @drm_mm_clean(%struct.drm_mm* %0) #6, !dbg !2127
  %lnot = xor i1 %call, true, !dbg !2127
  %lnot1 = xor i1 %lnot, true, !dbg !2127
  %lnot2 = xor i1 %lnot1, true, !dbg !2127
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2127
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2127
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !2128
  %tobool = icmp ne i32 %1, 0, !dbg !2128
  %lnot3 = xor i1 %tobool, true, !dbg !2128
  %lnot5 = xor i1 %lnot3, true, !dbg !2128
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2128
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2128
  %tobool7 = icmp ne i64 %conv, 0, !dbg !2128
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2127

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2128

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !2130

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !2132

do.end:                                           ; preds = %do.body8
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2130
  br label %do.body9, !dbg !2130

do.body9:                                         ; preds = %do.end
  br label %do.body10, !dbg !2134

do.body10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2136

do.end11:                                         ; preds = %do.body10
  br label %do.body12, !dbg !2134

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 999, i32 2313, i64 12) #8, !dbg !2138, !srcloc !2140
  br label %do.end13, !dbg !2138

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 274) #8, !dbg !2141, !srcloc !2143
  br label %do.body14, !dbg !2134

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2144

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !2134

do.end16:                                         ; preds = %do.end15
  br label %do.body17, !dbg !2130

do.body17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !2146

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !2130

do.end19:                                         ; preds = %do.end18
  br label %if.end, !dbg !2130

if.end:                                           ; preds = %do.end19, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !2127
  %tobool20 = icmp ne i32 %2, 0, !dbg !2127
  %lnot21 = xor i1 %tobool20, true, !dbg !2127
  %lnot23 = xor i1 %lnot21, true, !dbg !2127
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !2127
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !2127
  store i64 %conv25, i64* %tmp, align 8, !dbg !2128
  %3 = load i64, i64* %tmp, align 8, !dbg !2127
  %tobool26 = icmp ne i64 %3, 0, !dbg !2148
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !2149

if.then27:                                        ; preds = %if.end
  %4 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2150
  call void @show_leaks(%struct.drm_mm* %4) #6, !dbg !2151
  br label %if.end28, !dbg !2151

if.end28:                                         ; preds = %if.then27, %if.end
  ret void, !dbg !2152
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_mm_clean(%struct.drm_mm* %mm) #0 !dbg !2153 {
entry:
  %mm.addr = alloca %struct.drm_mm*, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !2156, metadata !DIExpression()), !dbg !2157
  %0 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2158
  %head_node = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %0, i32 0, i32 2, !dbg !2158
  %node_list = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %head_node, i32 0, i32 4, !dbg !2158
  %call = call i32 @list_empty(%struct.list_head* %node_list) #6, !dbg !2159
  %tobool = icmp ne i32 %call, 0, !dbg !2159
  ret i1 %tobool, !dbg !2160
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @show_leaks(%struct.drm_mm* %mm) #0 !dbg !2161 {
entry:
  %mm.addr = alloca %struct.drm_mm*, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !2162, metadata !DIExpression()), !dbg !2163
  ret void, !dbg !2164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_mm_print(%struct.drm_mm* %mm, %struct.drm_printer* %p) #0 !dbg !2165 {
entry:
  %mm.addr = alloca %struct.drm_mm*, align 8
  %p.addr = alloca %struct.drm_printer*, align 8
  %entry1 = alloca %struct.drm_mm_node*, align 8
  %total_used = alloca i64, align 8
  %total_free = alloca i64, align 8
  %total = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %__mptr13 = alloca i8*, align 8
  %tmp18 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !2204, metadata !DIExpression()), !dbg !2205
  store %struct.drm_printer* %p, %struct.drm_printer** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_printer** %p.addr, metadata !2206, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %entry1, metadata !2208, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.declare(metadata i64* %total_used, metadata !2210, metadata !DIExpression()), !dbg !2211
  store i64 0, i64* %total_used, align 8, !dbg !2211
  call void @llvm.dbg.declare(metadata i64* %total_free, metadata !2212, metadata !DIExpression()), !dbg !2213
  store i64 0, i64* %total_free, align 8, !dbg !2213
  call void @llvm.dbg.declare(metadata i64* %total, metadata !2214, metadata !DIExpression()), !dbg !2215
  store i64 0, i64* %total, align 8, !dbg !2215
  %0 = load %struct.drm_printer*, %struct.drm_printer** %p.addr, align 8, !dbg !2216
  %1 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2217
  %head_node = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %1, i32 0, i32 2, !dbg !2218
  %call = call i64 @drm_mm_dump_hole(%struct.drm_printer* %0, %struct.drm_mm_node* %head_node) #6, !dbg !2219
  %2 = load i64, i64* %total_free, align 8, !dbg !2220
  %add = add i64 %2, %call, !dbg !2220
  store i64 %add, i64* %total_free, align 8, !dbg !2220
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2221, metadata !DIExpression()), !dbg !2224
  %3 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2224
  %head_node2 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %3, i32 0, i32 2, !dbg !2224
  %node_list = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %head_node2, i32 0, i32 4, !dbg !2224
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node_list, i32 0, i32 0, !dbg !2224
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2224
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !2224
  store i8* %5, i8** %__mptr, align 8, !dbg !2224
  br label %do.body, !dbg !2224

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2225

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !2224
  %add.ptr = getelementptr i8, i8* %6, i64 -32, !dbg !2224
  %7 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2224
  store %struct.drm_mm_node* %7, %struct.drm_mm_node** %tmp, align 8, !dbg !2225
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2224
  store %struct.drm_mm_node* %8, %struct.drm_mm_node** %entry1, align 8, !dbg !2227
  br label %for.cond, !dbg !2227

for.cond:                                         ; preds = %do.end17, %do.end
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry1, align 8, !dbg !2228
  %node_list3 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %9, i32 0, i32 4, !dbg !2228
  %10 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2228
  %head_node4 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %10, i32 0, i32 2, !dbg !2228
  %node_list5 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %head_node4, i32 0, i32 4, !dbg !2228
  %cmp = icmp eq %struct.list_head* %node_list3, %node_list5, !dbg !2228
  %lnot = xor i1 %cmp, true, !dbg !2228
  br i1 %lnot, label %for.body, label %for.end, !dbg !2227

for.body:                                         ; preds = %for.cond
  %11 = load %struct.drm_printer*, %struct.drm_printer** %p.addr, align 8, !dbg !2230
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry1, align 8, !dbg !2232
  %start = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 1, !dbg !2233
  %13 = load i64, i64* %start, align 8, !dbg !2233
  %14 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry1, align 8, !dbg !2234
  %start6 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %14, i32 0, i32 1, !dbg !2235
  %15 = load i64, i64* %start6, align 8, !dbg !2235
  %16 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry1, align 8, !dbg !2236
  %size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %16, i32 0, i32 2, !dbg !2237
  %17 = load i64, i64* %size, align 8, !dbg !2237
  %add7 = add i64 %15, %17, !dbg !2238
  %18 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry1, align 8, !dbg !2239
  %size8 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %18, i32 0, i32 2, !dbg !2240
  %19 = load i64, i64* %size8, align 8, !dbg !2240
  call void (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %13, i64 %add7, i64 %19) #6, !dbg !2241
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry1, align 8, !dbg !2242
  %size9 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %20, i32 0, i32 2, !dbg !2243
  %21 = load i64, i64* %size9, align 8, !dbg !2243
  %22 = load i64, i64* %total_used, align 8, !dbg !2244
  %add10 = add i64 %22, %21, !dbg !2244
  store i64 %add10, i64* %total_used, align 8, !dbg !2244
  %23 = load %struct.drm_printer*, %struct.drm_printer** %p.addr, align 8, !dbg !2245
  %24 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry1, align 8, !dbg !2246
  %call11 = call i64 @drm_mm_dump_hole(%struct.drm_printer* %23, %struct.drm_mm_node* %24) #6, !dbg !2247
  %25 = load i64, i64* %total_free, align 8, !dbg !2248
  %add12 = add i64 %25, %call11, !dbg !2248
  store i64 %add12, i64* %total_free, align 8, !dbg !2248
  br label %for.inc, !dbg !2249

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr13, metadata !2250, metadata !DIExpression()), !dbg !2252
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry1, align 8, !dbg !2252
  %node_list14 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %26, i32 0, i32 4, !dbg !2252
  %next15 = getelementptr inbounds %struct.list_head, %struct.list_head* %node_list14, i32 0, i32 0, !dbg !2252
  %27 = load %struct.list_head*, %struct.list_head** %next15, align 8, !dbg !2252
  %28 = bitcast %struct.list_head* %27 to i8*, !dbg !2252
  store i8* %28, i8** %__mptr13, align 8, !dbg !2252
  br label %do.body16, !dbg !2252

do.body16:                                        ; preds = %for.inc
  br label %do.end17, !dbg !2253

do.end17:                                         ; preds = %do.body16
  %29 = load i8*, i8** %__mptr13, align 8, !dbg !2252
  %add.ptr19 = getelementptr i8, i8* %29, i64 -32, !dbg !2252
  %30 = bitcast i8* %add.ptr19 to %struct.drm_mm_node*, !dbg !2252
  store %struct.drm_mm_node* %30, %struct.drm_mm_node** %tmp18, align 8, !dbg !2253
  %31 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp18, align 8, !dbg !2252
  store %struct.drm_mm_node* %31, %struct.drm_mm_node** %entry1, align 8, !dbg !2228
  br label %for.cond, !dbg !2228, !llvm.loop !2255

for.end:                                          ; preds = %for.cond
  %32 = load i64, i64* %total_free, align 8, !dbg !2257
  %33 = load i64, i64* %total_used, align 8, !dbg !2258
  %add20 = add i64 %32, %33, !dbg !2259
  store i64 %add20, i64* %total, align 8, !dbg !2260
  %34 = load %struct.drm_printer*, %struct.drm_printer** %p.addr, align 8, !dbg !2261
  %35 = load i64, i64* %total, align 8, !dbg !2262
  %36 = load i64, i64* %total_used, align 8, !dbg !2263
  %37 = load i64, i64* %total_free, align 8, !dbg !2264
  call void (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %35, i64 %36, i64 %37) #6, !dbg !2265
  ret void, !dbg !2266
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @drm_mm_dump_hole(%struct.drm_printer* %p, %struct.drm_mm_node* %entry1) #0 !dbg !2267 {
entry:
  %p.addr = alloca %struct.drm_printer*, align 8
  %entry.addr = alloca %struct.drm_mm_node*, align 8
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  store %struct.drm_printer* %p, %struct.drm_printer** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_printer** %p.addr, metadata !2270, metadata !DIExpression()), !dbg !2271
  store %struct.drm_mm_node* %entry1, %struct.drm_mm_node** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %entry.addr, metadata !2272, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.declare(metadata i64* %start, metadata !2274, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.declare(metadata i64* %size, metadata !2276, metadata !DIExpression()), !dbg !2277
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry.addr, align 8, !dbg !2278
  %hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 10, !dbg !2279
  %1 = load i64, i64* %hole_size, align 8, !dbg !2279
  store i64 %1, i64* %size, align 8, !dbg !2280
  %2 = load i64, i64* %size, align 8, !dbg !2281
  %tobool = icmp ne i64 %2, 0, !dbg !2281
  br i1 %tobool, label %if.then, label %if.end, !dbg !2283

if.then:                                          ; preds = %entry
  %3 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry.addr, align 8, !dbg !2284
  %call = call i64 @drm_mm_hole_node_start(%struct.drm_mm_node* %3) #6, !dbg !2286
  store i64 %call, i64* %start, align 8, !dbg !2287
  %4 = load %struct.drm_printer*, %struct.drm_printer** %p.addr, align 8, !dbg !2288
  %5 = load i64, i64* %start, align 8, !dbg !2289
  %6 = load i64, i64* %start, align 8, !dbg !2290
  %7 = load i64, i64* %size, align 8, !dbg !2291
  %add = add i64 %6, %7, !dbg !2292
  %8 = load i64, i64* %size, align 8, !dbg !2293
  call void (%struct.drm_printer*, i8*, ...) @drm_printf(%struct.drm_printer* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %5, i64 %add, i64 %8) #6, !dbg !2294
  br label %if.end, !dbg !2295

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %size, align 8, !dbg !2296
  ret i64 %9, !dbg !2297
}

; Function Attrs: noredzone
declare dso_local void @drm_printf(%struct.drm_printer*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_mm_node* @drm_mm_interval_tree_subtree_search(%struct.drm_mm_node* %node, i64 %start, i64 %last) #0 !dbg !2298 {
entry:
  %retval = alloca %struct.drm_mm_node*, align 8
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %start.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %left = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %__mptr15 = alloca i8*, align 8
  %tmp20 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !2301, metadata !DIExpression()), !dbg !2302
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !2303, metadata !DIExpression()), !dbg !2302
  store i64 %last, i64* %last.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %last.addr, metadata !2304, metadata !DIExpression()), !dbg !2302
  br label %while.body, !dbg !2302

while.body:                                       ; preds = %entry, %if.then3, %if.then24
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2305
  %rb = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 6, !dbg !2305
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i32 0, i32 2, !dbg !2305
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8, !dbg !2305
  %tobool = icmp ne %struct.rb_node* %1, null, !dbg !2305
  br i1 %tobool, label %if.then, label %if.end4, !dbg !2308

if.then:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %left, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2312, metadata !DIExpression()), !dbg !2314
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2314
  %rb1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %2, i32 0, i32 6, !dbg !2314
  %rb_left2 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb1, i32 0, i32 2, !dbg !2314
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_left2, align 8, !dbg !2314
  %4 = bitcast %struct.rb_node* %3 to i8*, !dbg !2314
  store i8* %4, i8** %__mptr, align 8, !dbg !2314
  br label %do.body, !dbg !2314

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2315

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2314
  %add.ptr = getelementptr i8, i8* %5, i64 -64, !dbg !2314
  %6 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2314
  store %struct.drm_mm_node* %6, %struct.drm_mm_node** %tmp, align 8, !dbg !2315
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2314
  store %struct.drm_mm_node* %7, %struct.drm_mm_node** %left, align 8, !dbg !2311
  %8 = load i64, i64* %start.addr, align 8, !dbg !2317
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %left, align 8, !dbg !2317
  %__subtree_last = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %9, i32 0, i32 9, !dbg !2317
  %10 = load i64, i64* %__subtree_last, align 8, !dbg !2317
  %cmp = icmp ule i64 %8, %10, !dbg !2317
  br i1 %cmp, label %if.then3, label %if.end, !dbg !2311

if.then3:                                         ; preds = %do.end
  %11 = load %struct.drm_mm_node*, %struct.drm_mm_node** %left, align 8, !dbg !2319
  store %struct.drm_mm_node* %11, %struct.drm_mm_node** %node.addr, align 8, !dbg !2319
  br label %while.body, !dbg !2319, !llvm.loop !2321

if.end:                                           ; preds = %do.end
  br label %if.end4, !dbg !2311

if.end4:                                          ; preds = %if.end, %while.body
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2322
  %start5 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 1, !dbg !2322
  %13 = load i64, i64* %start5, align 8, !dbg !2322
  %14 = load i64, i64* %last.addr, align 8, !dbg !2322
  %cmp6 = icmp ule i64 %13, %14, !dbg !2322
  br i1 %cmp6, label %if.then7, label %if.end27, !dbg !2308

if.then7:                                         ; preds = %if.end4
  %15 = load i64, i64* %start.addr, align 8, !dbg !2324
  %16 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2324
  %start8 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %16, i32 0, i32 1, !dbg !2324
  %17 = load i64, i64* %start8, align 8, !dbg !2324
  %18 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2324
  %size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %18, i32 0, i32 2, !dbg !2324
  %19 = load i64, i64* %size, align 8, !dbg !2324
  %add = add i64 %17, %19, !dbg !2324
  %sub = sub i64 %add, 1, !dbg !2324
  %cmp9 = icmp ule i64 %15, %sub, !dbg !2324
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2327

if.then10:                                        ; preds = %if.then7
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2324
  store %struct.drm_mm_node* %20, %struct.drm_mm_node** %retval, align 8, !dbg !2324
  br label %return, !dbg !2324

if.end11:                                         ; preds = %if.then7
  %21 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2328
  %rb12 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %21, i32 0, i32 6, !dbg !2328
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb12, i32 0, i32 1, !dbg !2328
  %22 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8, !dbg !2328
  %tobool13 = icmp ne %struct.rb_node* %22, null, !dbg !2328
  br i1 %tobool13, label %if.then14, label %if.end26, !dbg !2327

if.then14:                                        ; preds = %if.end11
  call void @llvm.dbg.declare(metadata i8** %__mptr15, metadata !2330, metadata !DIExpression()), !dbg !2333
  %23 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2333
  %rb16 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %23, i32 0, i32 6, !dbg !2333
  %rb_right17 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb16, i32 0, i32 1, !dbg !2333
  %24 = load %struct.rb_node*, %struct.rb_node** %rb_right17, align 8, !dbg !2333
  %25 = bitcast %struct.rb_node* %24 to i8*, !dbg !2333
  store i8* %25, i8** %__mptr15, align 8, !dbg !2333
  br label %do.body18, !dbg !2333

do.body18:                                        ; preds = %if.then14
  br label %do.end19, !dbg !2334

do.end19:                                         ; preds = %do.body18
  %26 = load i8*, i8** %__mptr15, align 8, !dbg !2333
  %add.ptr21 = getelementptr i8, i8* %26, i64 -64, !dbg !2333
  %27 = bitcast i8* %add.ptr21 to %struct.drm_mm_node*, !dbg !2333
  store %struct.drm_mm_node* %27, %struct.drm_mm_node** %tmp20, align 8, !dbg !2334
  %28 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp20, align 8, !dbg !2333
  store %struct.drm_mm_node* %28, %struct.drm_mm_node** %node.addr, align 8, !dbg !2336
  %29 = load i64, i64* %start.addr, align 8, !dbg !2337
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2337
  %__subtree_last22 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %30, i32 0, i32 9, !dbg !2337
  %31 = load i64, i64* %__subtree_last22, align 8, !dbg !2337
  %cmp23 = icmp ule i64 %29, %31, !dbg !2337
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !2336

if.then24:                                        ; preds = %do.end19
  br label %while.body, !dbg !2337, !llvm.loop !2321

if.end25:                                         ; preds = %do.end19
  br label %if.end26, !dbg !2336

if.end26:                                         ; preds = %if.end25, %if.end11
  br label %if.end27, !dbg !2327

if.end27:                                         ; preds = %if.end26, %if.end4
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %retval, align 8, !dbg !2308
  br label %return, !dbg !2308

return:                                           ; preds = %if.end27, %if.then10
  %32 = load %struct.drm_mm_node*, %struct.drm_mm_node** %retval, align 8, !dbg !2302
  ret %struct.drm_mm_node* %32, !dbg !2302
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @usable_hole_addr(%struct.rb_node* %rb, i64 %size) #0 !dbg !2339 {
entry:
  %rb.addr = alloca %struct.rb_node*, align 8
  %size.addr = alloca i64, align 8
  store %struct.rb_node* %rb, %struct.rb_node** %rb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb.addr, metadata !2342, metadata !DIExpression()), !dbg !2343
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2344, metadata !DIExpression()), !dbg !2345
  %0 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !2346
  %tobool = icmp ne %struct.rb_node* %0, null, !dbg !2346
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2347

land.rhs:                                         ; preds = %entry
  %1 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !2348
  %call = call %struct.drm_mm_node* @rb_hole_addr_to_node(%struct.rb_node* %1) #6, !dbg !2349
  %subtree_max_hole = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %call, i32 0, i32 11, !dbg !2350
  %2 = load i64, i64* %subtree_max_hole, align 8, !dbg !2350
  %3 = load i64, i64* %size.addr, align 8, !dbg !2351
  %cmp = icmp uge i64 %2, %3, !dbg !2352
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !2353
  ret i1 %4, !dbg !2354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_mm_node* @rb_hole_addr_to_node(%struct.rb_node* %rb) #0 !dbg !2355 {
entry:
  %rb.addr = alloca %struct.rb_node*, align 8
  %____ptr = alloca %struct.rb_node*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.drm_mm_node*, align 8
  store %struct.rb_node* %rb, %struct.rb_node** %rb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb.addr, metadata !2358, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.declare(metadata %struct.rb_node** %____ptr, metadata !2360, metadata !DIExpression()), !dbg !2362
  %0 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !2362
  store %struct.rb_node* %0, %struct.rb_node** %____ptr, align 8, !dbg !2362
  %1 = load %struct.rb_node*, %struct.rb_node** %____ptr, align 8, !dbg !2362
  %tobool = icmp ne %struct.rb_node* %1, null, !dbg !2362
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2362

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2363, metadata !DIExpression()), !dbg !2365
  %2 = load %struct.rb_node*, %struct.rb_node** %____ptr, align 8, !dbg !2365
  %3 = bitcast %struct.rb_node* %2 to i8*, !dbg !2365
  store i8* %3, i8** %__mptr, align 8, !dbg !2365
  br label %do.body, !dbg !2365

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2366

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2365
  %add.ptr = getelementptr i8, i8* %4, i64 -112, !dbg !2365
  %5 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2365
  store %struct.drm_mm_node* %5, %struct.drm_mm_node** %tmp1, align 8, !dbg !2366
  %6 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp1, align 8, !dbg !2365
  br label %cond.end, !dbg !2362

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2362

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.drm_mm_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !2362
  store %struct.drm_mm_node* %cond, %struct.drm_mm_node** %tmp, align 8, !dbg !2362
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2362
  ret %struct.drm_mm_node* %7, !dbg !2368
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !2369 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2373, metadata !DIExpression()), !dbg !2374
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2375, metadata !DIExpression()), !dbg !2376
  ret i1 true, !dbg !2377
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !2378 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2382, metadata !DIExpression()), !dbg !2383
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2384, metadata !DIExpression()), !dbg !2385
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2386, metadata !DIExpression()), !dbg !2387
  ret void, !dbg !2388
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !2389 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2392, metadata !DIExpression()), !dbg !2393
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !2394, metadata !DIExpression()), !dbg !2395
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !2396, metadata !DIExpression()), !dbg !2397
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2398
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2400
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2401
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #6, !dbg !2402
  br i1 %call, label %if.end, label %if.then, !dbg !2403

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2404

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2405
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2406
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !2407
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !2408
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2409
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2410
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !2411
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !2412
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2413
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2414
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !2415
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !2416
  br label %do.body, !dbg !2417

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2418

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2420

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2418

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2422
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2422
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !2422
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !2422
  br label %do.end7, !dbg !2422

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2418

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2424
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !2425 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2428, metadata !DIExpression()), !dbg !2429
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !2430, metadata !DIExpression()), !dbg !2431
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !2432, metadata !DIExpression()), !dbg !2433
  ret i1 true, !dbg !2434
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_mm_node_allocated(%struct.drm_mm_node* %node) #0 !dbg !2435 {
entry:
  %node.addr = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !2436, metadata !DIExpression()), !dbg !2437
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2438
  %flags = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 12, !dbg !2439
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #6, !dbg !2440
  ret i1 %call, !dbg !2441
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rb_link_node(%struct.rb_node* %node, %struct.rb_node* %parent, %struct.rb_node** %rb_link) #0 !dbg !2442 {
entry:
  %node.addr = alloca %struct.rb_node*, align 8
  %parent.addr = alloca %struct.rb_node*, align 8
  %rb_link.addr = alloca %struct.rb_node**, align 8
  store %struct.rb_node* %node, %struct.rb_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node.addr, metadata !2445, metadata !DIExpression()), !dbg !2446
  store %struct.rb_node* %parent, %struct.rb_node** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %parent.addr, metadata !2447, metadata !DIExpression()), !dbg !2448
  store %struct.rb_node** %rb_link, %struct.rb_node*** %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %rb_link.addr, metadata !2449, metadata !DIExpression()), !dbg !2450
  %0 = load %struct.rb_node*, %struct.rb_node** %parent.addr, align 8, !dbg !2451
  %1 = ptrtoint %struct.rb_node* %0 to i64, !dbg !2452
  %2 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !2453
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %2, i32 0, i32 0, !dbg !2454
  store i64 %1, i64* %__rb_parent_color, align 8, !dbg !2455
  %3 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !2456
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i32 0, i32 1, !dbg !2457
  store %struct.rb_node* null, %struct.rb_node** %rb_right, align 8, !dbg !2458
  %4 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !2459
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %4, i32 0, i32 2, !dbg !2460
  store %struct.rb_node* null, %struct.rb_node** %rb_left, align 8, !dbg !2461
  %5 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !2462
  %6 = load %struct.rb_node**, %struct.rb_node*** %rb_link.addr, align 8, !dbg !2463
  store %struct.rb_node* %5, %struct.rb_node** %6, align 8, !dbg !2464
  ret void, !dbg !2465
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rb_insert_augmented_cached(%struct.rb_node* %node, %struct.rb_root_cached* %root, i1 zeroext %newleft, %struct.rb_augment_callbacks* %augment) #0 !dbg !2466 {
entry:
  %node.addr = alloca %struct.rb_node*, align 8
  %root.addr = alloca %struct.rb_root_cached*, align 8
  %newleft.addr = alloca i8, align 1
  %augment.addr = alloca %struct.rb_augment_callbacks*, align 8
  store %struct.rb_node* %node, %struct.rb_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node.addr, metadata !2469, metadata !DIExpression()), !dbg !2470
  store %struct.rb_root_cached* %root, %struct.rb_root_cached** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root_cached** %root.addr, metadata !2471, metadata !DIExpression()), !dbg !2472
  %frombool = zext i1 %newleft to i8
  store i8 %frombool, i8* %newleft.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %newleft.addr, metadata !2473, metadata !DIExpression()), !dbg !2474
  store %struct.rb_augment_callbacks* %augment, %struct.rb_augment_callbacks** %augment.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_augment_callbacks** %augment.addr, metadata !2475, metadata !DIExpression()), !dbg !2476
  %0 = load i8, i8* %newleft.addr, align 1, !dbg !2477
  %tobool = trunc i8 %0 to i1, !dbg !2477
  br i1 %tobool, label %if.then, label %if.end, !dbg !2479

if.then:                                          ; preds = %entry
  %1 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !2480
  %2 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !2481
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %2, i32 0, i32 1, !dbg !2482
  store %struct.rb_node* %1, %struct.rb_node** %rb_leftmost, align 8, !dbg !2483
  br label %if.end, !dbg !2481

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !2484
  %4 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !2485
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %4, i32 0, i32 0, !dbg !2486
  %5 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr, align 8, !dbg !2487
  call void @rb_insert_augmented(%struct.rb_node* %3, %struct.rb_root* %rb_root, %struct.rb_augment_callbacks* %5) #6, !dbg !2488
  ret void, !dbg !2489
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !2490 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !2495, metadata !DIExpression()), !dbg !2497
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !2499, metadata !DIExpression()), !dbg !2500
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !2501, metadata !DIExpression()), !dbg !2502
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2503, metadata !DIExpression()), !dbg !2505
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2507, metadata !DIExpression()), !dbg !2508
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2509, metadata !DIExpression()), !dbg !2511
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2513, metadata !DIExpression()), !dbg !2514
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2515, metadata !DIExpression()), !dbg !2516
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2517, metadata !DIExpression()), !dbg !2518
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2519
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2520
  %div = sdiv i64 %1, 64, !dbg !2520
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2521
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2519
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2522
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2523
  %conv.i = trunc i64 %4 to i32, !dbg !2523
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #7, !dbg !2524
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2525
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2525
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #7, !dbg !2525
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2526
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2526
  br i1 %8, label %cond.true, label %cond.false, !dbg !2526

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !2526
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !2526
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !2527
  %and.i = and i64 %11, 63, !dbg !2528
  %shl.i = shl i64 1, %and.i, !dbg !2529
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !2530
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2531
  %shr.i = ashr i64 %13, 6, !dbg !2532
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !2530
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !2530
  %and1.i = and i64 %shl.i, %14, !dbg !2533
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !2534
  %conv = zext i1 %cmp.i to i32, !dbg !2526
  br label %cond.end, !dbg !2526

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !2526
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !2526
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !2535
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !2536
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #8, !dbg !2537, !srcloc !2538
  store i8 %19, i8* %oldbit.i, align 1, !dbg !2537
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !2539
  %tobool.i = trunc i8 %20 to i1, !dbg !2539
  %conv2 = zext i1 %tobool.i to i32, !dbg !2526
  br label %cond.end, !dbg !2526

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2526
  %tobool = icmp ne i32 %cond, 0, !dbg !2526
  ret i1 %tobool, !dbg !2540
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !2541 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2542, metadata !DIExpression()), !dbg !2543
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2544, metadata !DIExpression()), !dbg !2545
  ret i1 true, !dbg !2546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rb_insert_augmented(%struct.rb_node* %node, %struct.rb_root* %root, %struct.rb_augment_callbacks* %augment) #0 !dbg !2547 {
entry:
  %node.addr = alloca %struct.rb_node*, align 8
  %root.addr = alloca %struct.rb_root*, align 8
  %augment.addr = alloca %struct.rb_augment_callbacks*, align 8
  store %struct.rb_node* %node, %struct.rb_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node.addr, metadata !2548, metadata !DIExpression()), !dbg !2549
  store %struct.rb_root* %root, %struct.rb_root** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %root.addr, metadata !2550, metadata !DIExpression()), !dbg !2551
  store %struct.rb_augment_callbacks* %augment, %struct.rb_augment_callbacks** %augment.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_augment_callbacks** %augment.addr, metadata !2552, metadata !DIExpression()), !dbg !2553
  %0 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !2554
  %1 = load %struct.rb_root*, %struct.rb_root** %root.addr, align 8, !dbg !2555
  %2 = load %struct.rb_augment_callbacks*, %struct.rb_augment_callbacks** %augment.addr, align 8, !dbg !2556
  %rotate = getelementptr inbounds %struct.rb_augment_callbacks, %struct.rb_augment_callbacks* %2, i32 0, i32 2, !dbg !2557
  %3 = load void (%struct.rb_node*, %struct.rb_node*)*, void (%struct.rb_node*, %struct.rb_node*)** %rotate, align 8, !dbg !2557
  call void @__rb_insert_augmented(%struct.rb_node* %0, %struct.rb_root* %1, void (%struct.rb_node*, %struct.rb_node*)* %3) #6, !dbg !2558
  ret void, !dbg !2559
}

; Function Attrs: noredzone
declare dso_local void @__rb_insert_augmented(%struct.rb_node*, %struct.rb_root*, void (%struct.rb_node*, %struct.rb_node*)*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_mm_interval_tree_augment_propagate(%struct.rb_node* %rb, %struct.rb_node* %stop) #0 !dbg !2560 {
entry:
  %rb.addr = alloca %struct.rb_node*, align 8
  %stop.addr = alloca %struct.rb_node*, align 8
  %node = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  store %struct.rb_node* %rb, %struct.rb_node** %rb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb.addr, metadata !2561, metadata !DIExpression()), !dbg !2562
  store %struct.rb_node* %stop, %struct.rb_node** %stop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %stop.addr, metadata !2563, metadata !DIExpression()), !dbg !2562
  br label %while.cond, !dbg !2562

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !2562
  %1 = load %struct.rb_node*, %struct.rb_node** %stop.addr, align 8, !dbg !2562
  %cmp = icmp ne %struct.rb_node* %0, %1, !dbg !2562
  br i1 %cmp, label %while.body, label %while.end, !dbg !2562

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node, metadata !2564, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2567, metadata !DIExpression()), !dbg !2569
  %2 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !2569
  %3 = bitcast %struct.rb_node* %2 to i8*, !dbg !2569
  store i8* %3, i8** %__mptr, align 8, !dbg !2569
  br label %do.body, !dbg !2569

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !2570

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2569
  %add.ptr = getelementptr i8, i8* %4, i64 -64, !dbg !2569
  %5 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2569
  store %struct.drm_mm_node* %5, %struct.drm_mm_node** %tmp, align 8, !dbg !2570
  %6 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2569
  store %struct.drm_mm_node* %6, %struct.drm_mm_node** %node, align 8, !dbg !2566
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !2572
  %call = call zeroext i1 @drm_mm_interval_tree_augment_compute_max(%struct.drm_mm_node* %7, i1 zeroext true) #6, !dbg !2572
  br i1 %call, label %if.then, label %if.end, !dbg !2566

if.then:                                          ; preds = %do.end
  br label %while.end, !dbg !2572

if.end:                                           ; preds = %do.end
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !2566
  %rb1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %8, i32 0, i32 6, !dbg !2566
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb1, i32 0, i32 0, !dbg !2566
  %9 = load i64, i64* %__rb_parent_color, align 8, !dbg !2566
  %and = and i64 %9, -4, !dbg !2566
  %10 = inttoptr i64 %and to %struct.rb_node*, !dbg !2566
  store %struct.rb_node* %10, %struct.rb_node** %rb.addr, align 8, !dbg !2566
  br label %while.cond, !dbg !2562, !llvm.loop !2574

while.end:                                        ; preds = %if.then, %while.cond
  ret void, !dbg !2562
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_mm_interval_tree_augment_copy(%struct.rb_node* %rb_old, %struct.rb_node* %rb_new) #0 !dbg !2575 {
entry:
  %rb_old.addr = alloca %struct.rb_node*, align 8
  %rb_new.addr = alloca %struct.rb_node*, align 8
  %old = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %new = alloca %struct.drm_mm_node*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.drm_mm_node*, align 8
  store %struct.rb_node* %rb_old, %struct.rb_node** %rb_old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb_old.addr, metadata !2576, metadata !DIExpression()), !dbg !2577
  store %struct.rb_node* %rb_new, %struct.rb_node** %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb_new.addr, metadata !2578, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %old, metadata !2579, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2580, metadata !DIExpression()), !dbg !2582
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_old.addr, align 8, !dbg !2582
  %1 = bitcast %struct.rb_node* %0 to i8*, !dbg !2582
  store i8* %1, i8** %__mptr, align 8, !dbg !2582
  br label %do.body, !dbg !2582

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2583

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2582
  %add.ptr = getelementptr i8, i8* %2, i64 -64, !dbg !2582
  %3 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2582
  store %struct.drm_mm_node* %3, %struct.drm_mm_node** %tmp, align 8, !dbg !2583
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2582
  store %struct.drm_mm_node* %4, %struct.drm_mm_node** %old, align 8, !dbg !2577
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %new, metadata !2585, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2586, metadata !DIExpression()), !dbg !2588
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_new.addr, align 8, !dbg !2588
  %6 = bitcast %struct.rb_node* %5 to i8*, !dbg !2588
  store i8* %6, i8** %__mptr1, align 8, !dbg !2588
  br label %do.body2, !dbg !2588

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2589

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !2588
  %add.ptr5 = getelementptr i8, i8* %7, i64 -64, !dbg !2588
  %8 = bitcast i8* %add.ptr5 to %struct.drm_mm_node*, !dbg !2588
  store %struct.drm_mm_node* %8, %struct.drm_mm_node** %tmp4, align 8, !dbg !2589
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp4, align 8, !dbg !2588
  store %struct.drm_mm_node* %9, %struct.drm_mm_node** %new, align 8, !dbg !2577
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old, align 8, !dbg !2577
  %__subtree_last = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %10, i32 0, i32 9, !dbg !2577
  %11 = load i64, i64* %__subtree_last, align 8, !dbg !2577
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %new, align 8, !dbg !2577
  %__subtree_last6 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 9, !dbg !2577
  store i64 %11, i64* %__subtree_last6, align 8, !dbg !2577
  ret void, !dbg !2577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drm_mm_interval_tree_augment_rotate(%struct.rb_node* %rb_old, %struct.rb_node* %rb_new) #0 !dbg !2591 {
entry:
  %rb_old.addr = alloca %struct.rb_node*, align 8
  %rb_new.addr = alloca %struct.rb_node*, align 8
  %old = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %new = alloca %struct.drm_mm_node*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.drm_mm_node*, align 8
  store %struct.rb_node* %rb_old, %struct.rb_node** %rb_old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb_old.addr, metadata !2592, metadata !DIExpression()), !dbg !2593
  store %struct.rb_node* %rb_new, %struct.rb_node** %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb_new.addr, metadata !2594, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %old, metadata !2595, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2596, metadata !DIExpression()), !dbg !2598
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_old.addr, align 8, !dbg !2598
  %1 = bitcast %struct.rb_node* %0 to i8*, !dbg !2598
  store i8* %1, i8** %__mptr, align 8, !dbg !2598
  br label %do.body, !dbg !2598

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2599

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2598
  %add.ptr = getelementptr i8, i8* %2, i64 -64, !dbg !2598
  %3 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2598
  store %struct.drm_mm_node* %3, %struct.drm_mm_node** %tmp, align 8, !dbg !2599
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2598
  store %struct.drm_mm_node* %4, %struct.drm_mm_node** %old, align 8, !dbg !2593
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %new, metadata !2601, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2602, metadata !DIExpression()), !dbg !2604
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_new.addr, align 8, !dbg !2604
  %6 = bitcast %struct.rb_node* %5 to i8*, !dbg !2604
  store i8* %6, i8** %__mptr1, align 8, !dbg !2604
  br label %do.body2, !dbg !2604

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2605

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !2604
  %add.ptr5 = getelementptr i8, i8* %7, i64 -64, !dbg !2604
  %8 = bitcast i8* %add.ptr5 to %struct.drm_mm_node*, !dbg !2604
  store %struct.drm_mm_node* %8, %struct.drm_mm_node** %tmp4, align 8, !dbg !2605
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp4, align 8, !dbg !2604
  store %struct.drm_mm_node* %9, %struct.drm_mm_node** %new, align 8, !dbg !2593
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old, align 8, !dbg !2593
  %__subtree_last = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %10, i32 0, i32 9, !dbg !2593
  %11 = load i64, i64* %__subtree_last, align 8, !dbg !2593
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %new, align 8, !dbg !2593
  %__subtree_last6 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 9, !dbg !2593
  store i64 %11, i64* %__subtree_last6, align 8, !dbg !2593
  %13 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old, align 8, !dbg !2593
  %call = call zeroext i1 @drm_mm_interval_tree_augment_compute_max(%struct.drm_mm_node* %13, i1 zeroext false) #6, !dbg !2593
  ret void, !dbg !2593
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_mm_interval_tree_augment_compute_max(%struct.drm_mm_node* %node, i1 zeroext %exit) #0 !dbg !2607 {
entry:
  %retval = alloca i1, align 1
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %exit.addr = alloca i8, align 1
  %child = alloca %struct.drm_mm_node*, align 8
  %max = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp14 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !2610, metadata !DIExpression()), !dbg !2611
  %frombool = zext i1 %exit to i8
  store i8 %frombool, i8* %exit.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %exit.addr, metadata !2612, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %child, metadata !2613, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.declare(metadata i64* %max, metadata !2614, metadata !DIExpression()), !dbg !2611
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2611
  %start = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 1, !dbg !2611
  %1 = load i64, i64* %start, align 8, !dbg !2611
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2611
  %size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %2, i32 0, i32 2, !dbg !2611
  %3 = load i64, i64* %size, align 8, !dbg !2611
  %add = add i64 %1, %3, !dbg !2611
  %sub = sub i64 %add, 1, !dbg !2611
  store i64 %sub, i64* %max, align 8, !dbg !2611
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2615
  %rb = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %4, i32 0, i32 6, !dbg !2615
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb, i32 0, i32 2, !dbg !2615
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8, !dbg !2615
  %tobool = icmp ne %struct.rb_node* %5, null, !dbg !2615
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2611

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2617, metadata !DIExpression()), !dbg !2620
  %6 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2620
  %rb1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 6, !dbg !2620
  %rb_left2 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb1, i32 0, i32 2, !dbg !2620
  %7 = load %struct.rb_node*, %struct.rb_node** %rb_left2, align 8, !dbg !2620
  %8 = bitcast %struct.rb_node* %7 to i8*, !dbg !2620
  store i8* %8, i8** %__mptr, align 8, !dbg !2620
  br label %do.body, !dbg !2620

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2621

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !2620
  %add.ptr = getelementptr i8, i8* %9, i64 -64, !dbg !2620
  %10 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2620
  store %struct.drm_mm_node* %10, %struct.drm_mm_node** %tmp, align 8, !dbg !2621
  %11 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2620
  store %struct.drm_mm_node* %11, %struct.drm_mm_node** %child, align 8, !dbg !2623
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %child, align 8, !dbg !2624
  %__subtree_last = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 9, !dbg !2624
  %13 = load i64, i64* %__subtree_last, align 8, !dbg !2624
  %14 = load i64, i64* %max, align 8, !dbg !2624
  %cmp = icmp ugt i64 %13, %14, !dbg !2624
  br i1 %cmp, label %if.then3, label %if.end, !dbg !2623

if.then3:                                         ; preds = %do.end
  %15 = load %struct.drm_mm_node*, %struct.drm_mm_node** %child, align 8, !dbg !2624
  %__subtree_last4 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %15, i32 0, i32 9, !dbg !2624
  %16 = load i64, i64* %__subtree_last4, align 8, !dbg !2624
  store i64 %16, i64* %max, align 8, !dbg !2624
  br label %if.end, !dbg !2624

if.end:                                           ; preds = %if.then3, %do.end
  br label %if.end5, !dbg !2623

if.end5:                                          ; preds = %if.end, %entry
  %17 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2626
  %rb6 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %17, i32 0, i32 6, !dbg !2626
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb6, i32 0, i32 1, !dbg !2626
  %18 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8, !dbg !2626
  %tobool7 = icmp ne %struct.rb_node* %18, null, !dbg !2626
  br i1 %tobool7, label %if.then8, label %if.end21, !dbg !2611

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !2628, metadata !DIExpression()), !dbg !2631
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2631
  %rb10 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %19, i32 0, i32 6, !dbg !2631
  %rb_right11 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb10, i32 0, i32 1, !dbg !2631
  %20 = load %struct.rb_node*, %struct.rb_node** %rb_right11, align 8, !dbg !2631
  %21 = bitcast %struct.rb_node* %20 to i8*, !dbg !2631
  store i8* %21, i8** %__mptr9, align 8, !dbg !2631
  br label %do.body12, !dbg !2631

do.body12:                                        ; preds = %if.then8
  br label %do.end13, !dbg !2632

do.end13:                                         ; preds = %do.body12
  %22 = load i8*, i8** %__mptr9, align 8, !dbg !2631
  %add.ptr15 = getelementptr i8, i8* %22, i64 -64, !dbg !2631
  %23 = bitcast i8* %add.ptr15 to %struct.drm_mm_node*, !dbg !2631
  store %struct.drm_mm_node* %23, %struct.drm_mm_node** %tmp14, align 8, !dbg !2632
  %24 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp14, align 8, !dbg !2631
  store %struct.drm_mm_node* %24, %struct.drm_mm_node** %child, align 8, !dbg !2634
  %25 = load %struct.drm_mm_node*, %struct.drm_mm_node** %child, align 8, !dbg !2635
  %__subtree_last16 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %25, i32 0, i32 9, !dbg !2635
  %26 = load i64, i64* %__subtree_last16, align 8, !dbg !2635
  %27 = load i64, i64* %max, align 8, !dbg !2635
  %cmp17 = icmp ugt i64 %26, %27, !dbg !2635
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !2634

if.then18:                                        ; preds = %do.end13
  %28 = load %struct.drm_mm_node*, %struct.drm_mm_node** %child, align 8, !dbg !2635
  %__subtree_last19 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %28, i32 0, i32 9, !dbg !2635
  %29 = load i64, i64* %__subtree_last19, align 8, !dbg !2635
  store i64 %29, i64* %max, align 8, !dbg !2635
  br label %if.end20, !dbg !2635

if.end20:                                         ; preds = %if.then18, %do.end13
  br label %if.end21, !dbg !2634

if.end21:                                         ; preds = %if.end20, %if.end5
  %30 = load i8, i8* %exit.addr, align 1, !dbg !2637
  %tobool22 = trunc i8 %30 to i1, !dbg !2637
  br i1 %tobool22, label %land.lhs.true, label %if.end26, !dbg !2637

land.lhs.true:                                    ; preds = %if.end21
  %31 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2637
  %__subtree_last23 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %31, i32 0, i32 9, !dbg !2637
  %32 = load i64, i64* %__subtree_last23, align 8, !dbg !2637
  %33 = load i64, i64* %max, align 8, !dbg !2637
  %cmp24 = icmp eq i64 %32, %33, !dbg !2637
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2611

if.then25:                                        ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1, !dbg !2637
  br label %return, !dbg !2637

if.end26:                                         ; preds = %land.lhs.true, %if.end21
  %34 = load i64, i64* %max, align 8, !dbg !2611
  %35 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2611
  %__subtree_last27 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %35, i32 0, i32 9, !dbg !2611
  store i64 %34, i64* %__subtree_last27, align 8, !dbg !2611
  store i1 false, i1* %retval, align 1, !dbg !2611
  br label %return, !dbg !2611

return:                                           ; preds = %if.end26, %if.then25
  %36 = load i1, i1* %retval, align 1, !dbg !2611
  ret i1 %36, !dbg !2611
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rb_erase_cached(%struct.rb_node* %node, %struct.rb_root_cached* %root) #0 !dbg !2639 {
entry:
  %node.addr = alloca %struct.rb_node*, align 8
  %root.addr = alloca %struct.rb_root_cached*, align 8
  store %struct.rb_node* %node, %struct.rb_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node.addr, metadata !2642, metadata !DIExpression()), !dbg !2643
  store %struct.rb_root_cached* %root, %struct.rb_root_cached** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root_cached** %root.addr, metadata !2644, metadata !DIExpression()), !dbg !2645
  %0 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !2646
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %0, i32 0, i32 1, !dbg !2648
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8, !dbg !2648
  %2 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !2649
  %cmp = icmp eq %struct.rb_node* %1, %2, !dbg !2650
  br i1 %cmp, label %if.then, label %if.end, !dbg !2651

if.then:                                          ; preds = %entry
  %3 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !2652
  %call = call %struct.rb_node* @rb_next(%struct.rb_node* %3) #6, !dbg !2653
  %4 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !2654
  %rb_leftmost1 = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %4, i32 0, i32 1, !dbg !2655
  store %struct.rb_node* %call, %struct.rb_node** %rb_leftmost1, align 8, !dbg !2656
  br label %if.end, !dbg !2654

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !2657
  %6 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !2658
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %6, i32 0, i32 0, !dbg !2659
  call void @rb_erase(%struct.rb_node* %5, %struct.rb_root* %rb_root) #6, !dbg !2660
  ret void, !dbg !2661
}

; Function Attrs: noredzone
declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #4

; Function Attrs: noredzone
declare dso_local void @rb_erase(%struct.rb_node*, %struct.rb_root*) #4

; Function Attrs: noredzone
declare dso_local void @__rb_erase_color(%struct.rb_node*, %struct.rb_root*, void (%struct.rb_node*, %struct.rb_node*)*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__rb_change_child(%struct.rb_node* %old, %struct.rb_node* %new, %struct.rb_node* %parent, %struct.rb_root* %root) #0 !dbg !2662 {
entry:
  %old.addr = alloca %struct.rb_node*, align 8
  %new.addr = alloca %struct.rb_node*, align 8
  %parent.addr = alloca %struct.rb_node*, align 8
  %root.addr = alloca %struct.rb_root*, align 8
  store %struct.rb_node* %old, %struct.rb_node** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %old.addr, metadata !2665, metadata !DIExpression()), !dbg !2666
  store %struct.rb_node* %new, %struct.rb_node** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %new.addr, metadata !2667, metadata !DIExpression()), !dbg !2668
  store %struct.rb_node* %parent, %struct.rb_node** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %parent.addr, metadata !2669, metadata !DIExpression()), !dbg !2670
  store %struct.rb_root* %root, %struct.rb_root** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %root.addr, metadata !2671, metadata !DIExpression()), !dbg !2672
  %0 = load %struct.rb_node*, %struct.rb_node** %parent.addr, align 8, !dbg !2673
  %tobool = icmp ne %struct.rb_node* %0, null, !dbg !2673
  br i1 %tobool, label %if.then, label %if.else13, !dbg !2675

if.then:                                          ; preds = %entry
  %1 = load %struct.rb_node*, %struct.rb_node** %parent.addr, align 8, !dbg !2676
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i32 0, i32 2, !dbg !2679
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8, !dbg !2679
  %3 = load %struct.rb_node*, %struct.rb_node** %old.addr, align 8, !dbg !2680
  %cmp = icmp eq %struct.rb_node* %2, %3, !dbg !2681
  br i1 %cmp, label %if.then1, label %if.else, !dbg !2682

if.then1:                                         ; preds = %if.then
  br label %do.body, !dbg !2683

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !2684

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2686

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2684

do.body3:                                         ; preds = %do.end
  %4 = load %struct.rb_node*, %struct.rb_node** %new.addr, align 8, !dbg !2688
  %5 = load %struct.rb_node*, %struct.rb_node** %parent.addr, align 8, !dbg !2688
  %rb_left4 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %5, i32 0, i32 2, !dbg !2688
  store volatile %struct.rb_node* %4, %struct.rb_node** %rb_left4, align 8, !dbg !2688
  br label %do.end5, !dbg !2688

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2684

do.end6:                                          ; preds = %do.end5
  br label %if.end, !dbg !2684

if.else:                                          ; preds = %if.then
  br label %do.body7, !dbg !2690

do.body7:                                         ; preds = %if.else
  br label %do.body8, !dbg !2691

do.body8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2693

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !2691

do.body10:                                        ; preds = %do.end9
  %6 = load %struct.rb_node*, %struct.rb_node** %new.addr, align 8, !dbg !2695
  %7 = load %struct.rb_node*, %struct.rb_node** %parent.addr, align 8, !dbg !2695
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %7, i32 0, i32 1, !dbg !2695
  store volatile %struct.rb_node* %6, %struct.rb_node** %rb_right, align 8, !dbg !2695
  br label %do.end11, !dbg !2695

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !2691

do.end12:                                         ; preds = %do.end11
  br label %if.end

if.end:                                           ; preds = %do.end12, %do.end6
  br label %if.end20, !dbg !2697

if.else13:                                        ; preds = %entry
  br label %do.body14, !dbg !2698

do.body14:                                        ; preds = %if.else13
  br label %do.body15, !dbg !2699

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2701

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !2699

do.body17:                                        ; preds = %do.end16
  %8 = load %struct.rb_node*, %struct.rb_node** %new.addr, align 8, !dbg !2703
  %9 = load %struct.rb_root*, %struct.rb_root** %root.addr, align 8, !dbg !2703
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %9, i32 0, i32 0, !dbg !2703
  store volatile %struct.rb_node* %8, %struct.rb_node** %rb_node, align 8, !dbg !2703
  br label %do.end18, !dbg !2703

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !2699

do.end19:                                         ; preds = %do.end18
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end
  ret void, !dbg !2705
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rb_set_parent(%struct.rb_node* %rb, %struct.rb_node* %p) #0 !dbg !2706 {
entry:
  %rb.addr = alloca %struct.rb_node*, align 8
  %p.addr = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %rb, %struct.rb_node** %rb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb.addr, metadata !2707, metadata !DIExpression()), !dbg !2708
  store %struct.rb_node* %p, %struct.rb_node** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %p.addr, metadata !2709, metadata !DIExpression()), !dbg !2710
  %0 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !2711
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %0, i32 0, i32 0, !dbg !2711
  %1 = load i64, i64* %__rb_parent_color, align 8, !dbg !2711
  %and = and i64 %1, 1, !dbg !2711
  %2 = load %struct.rb_node*, %struct.rb_node** %p.addr, align 8, !dbg !2712
  %3 = ptrtoint %struct.rb_node* %2 to i64, !dbg !2713
  %or = or i64 %and, %3, !dbg !2714
  %4 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !2715
  %__rb_parent_color1 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %4, i32 0, i32 0, !dbg !2716
  store i64 %or, i64* %__rb_parent_color1, align 8, !dbg !2717
  ret void, !dbg !2718
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rb_set_parent_color(%struct.rb_node* %rb, %struct.rb_node* %p, i32 %color) #0 !dbg !2719 {
entry:
  %rb.addr = alloca %struct.rb_node*, align 8
  %p.addr = alloca %struct.rb_node*, align 8
  %color.addr = alloca i32, align 4
  store %struct.rb_node* %rb, %struct.rb_node** %rb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb.addr, metadata !2722, metadata !DIExpression()), !dbg !2723
  store %struct.rb_node* %p, %struct.rb_node** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %p.addr, metadata !2724, metadata !DIExpression()), !dbg !2725
  store i32 %color, i32* %color.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %color.addr, metadata !2726, metadata !DIExpression()), !dbg !2727
  %0 = load %struct.rb_node*, %struct.rb_node** %p.addr, align 8, !dbg !2728
  %1 = ptrtoint %struct.rb_node* %0 to i64, !dbg !2729
  %2 = load i32, i32* %color.addr, align 4, !dbg !2730
  %conv = sext i32 %2 to i64, !dbg !2730
  %or = or i64 %1, %conv, !dbg !2731
  %3 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !2732
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %3, i32 0, i32 0, !dbg !2733
  store i64 %or, i64* %__rb_parent_color, align 8, !dbg !2734
  ret void, !dbg !2735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @augment_callbacks_propagate(%struct.rb_node* %rb, %struct.rb_node* %stop) #0 !dbg !2736 {
entry:
  %rb.addr = alloca %struct.rb_node*, align 8
  %stop.addr = alloca %struct.rb_node*, align 8
  %node = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  store %struct.rb_node* %rb, %struct.rb_node** %rb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb.addr, metadata !2737, metadata !DIExpression()), !dbg !2738
  store %struct.rb_node* %stop, %struct.rb_node** %stop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %stop.addr, metadata !2739, metadata !DIExpression()), !dbg !2738
  br label %while.cond, !dbg !2738

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !2738
  %1 = load %struct.rb_node*, %struct.rb_node** %stop.addr, align 8, !dbg !2738
  %cmp = icmp ne %struct.rb_node* %0, %1, !dbg !2738
  br i1 %cmp, label %while.body, label %while.end, !dbg !2738

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node, metadata !2740, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2743, metadata !DIExpression()), !dbg !2745
  %2 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !2745
  %3 = bitcast %struct.rb_node* %2 to i8*, !dbg !2745
  store i8* %3, i8** %__mptr, align 8, !dbg !2745
  br label %do.body, !dbg !2745

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !2746

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2745
  %add.ptr = getelementptr i8, i8* %4, i64 -112, !dbg !2745
  %5 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2745
  store %struct.drm_mm_node* %5, %struct.drm_mm_node** %tmp, align 8, !dbg !2746
  %6 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2745
  store %struct.drm_mm_node* %6, %struct.drm_mm_node** %node, align 8, !dbg !2742
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !2748
  %call = call zeroext i1 @augment_callbacks_compute_max(%struct.drm_mm_node* %7, i1 zeroext true) #6, !dbg !2748
  br i1 %call, label %if.then, label %if.end, !dbg !2742

if.then:                                          ; preds = %do.end
  br label %while.end, !dbg !2748

if.end:                                           ; preds = %do.end
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !2742
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %8, i32 0, i32 8, !dbg !2742
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_hole_addr, i32 0, i32 0, !dbg !2742
  %9 = load i64, i64* %__rb_parent_color, align 8, !dbg !2742
  %and = and i64 %9, -4, !dbg !2742
  %10 = inttoptr i64 %and to %struct.rb_node*, !dbg !2742
  store %struct.rb_node* %10, %struct.rb_node** %rb.addr, align 8, !dbg !2742
  br label %while.cond, !dbg !2738, !llvm.loop !2750

while.end:                                        ; preds = %if.then, %while.cond
  ret void, !dbg !2738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @augment_callbacks_copy(%struct.rb_node* %rb_old, %struct.rb_node* %rb_new) #0 !dbg !2751 {
entry:
  %rb_old.addr = alloca %struct.rb_node*, align 8
  %rb_new.addr = alloca %struct.rb_node*, align 8
  %old = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %new = alloca %struct.drm_mm_node*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.drm_mm_node*, align 8
  store %struct.rb_node* %rb_old, %struct.rb_node** %rb_old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb_old.addr, metadata !2752, metadata !DIExpression()), !dbg !2753
  store %struct.rb_node* %rb_new, %struct.rb_node** %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb_new.addr, metadata !2754, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %old, metadata !2755, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2756, metadata !DIExpression()), !dbg !2758
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_old.addr, align 8, !dbg !2758
  %1 = bitcast %struct.rb_node* %0 to i8*, !dbg !2758
  store i8* %1, i8** %__mptr, align 8, !dbg !2758
  br label %do.body, !dbg !2758

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2759

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2758
  %add.ptr = getelementptr i8, i8* %2, i64 -112, !dbg !2758
  %3 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2758
  store %struct.drm_mm_node* %3, %struct.drm_mm_node** %tmp, align 8, !dbg !2759
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2758
  store %struct.drm_mm_node* %4, %struct.drm_mm_node** %old, align 8, !dbg !2753
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %new, metadata !2761, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2762, metadata !DIExpression()), !dbg !2764
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_new.addr, align 8, !dbg !2764
  %6 = bitcast %struct.rb_node* %5 to i8*, !dbg !2764
  store i8* %6, i8** %__mptr1, align 8, !dbg !2764
  br label %do.body2, !dbg !2764

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2765

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !2764
  %add.ptr5 = getelementptr i8, i8* %7, i64 -112, !dbg !2764
  %8 = bitcast i8* %add.ptr5 to %struct.drm_mm_node*, !dbg !2764
  store %struct.drm_mm_node* %8, %struct.drm_mm_node** %tmp4, align 8, !dbg !2765
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp4, align 8, !dbg !2764
  store %struct.drm_mm_node* %9, %struct.drm_mm_node** %new, align 8, !dbg !2753
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old, align 8, !dbg !2753
  %subtree_max_hole = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %10, i32 0, i32 11, !dbg !2753
  %11 = load i64, i64* %subtree_max_hole, align 8, !dbg !2753
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %new, align 8, !dbg !2753
  %subtree_max_hole6 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 11, !dbg !2753
  store i64 %11, i64* %subtree_max_hole6, align 8, !dbg !2753
  ret void, !dbg !2753
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @augment_callbacks_rotate(%struct.rb_node* %rb_old, %struct.rb_node* %rb_new) #0 !dbg !2767 {
entry:
  %rb_old.addr = alloca %struct.rb_node*, align 8
  %rb_new.addr = alloca %struct.rb_node*, align 8
  %old = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %new = alloca %struct.drm_mm_node*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.drm_mm_node*, align 8
  store %struct.rb_node* %rb_old, %struct.rb_node** %rb_old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb_old.addr, metadata !2768, metadata !DIExpression()), !dbg !2769
  store %struct.rb_node* %rb_new, %struct.rb_node** %rb_new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb_new.addr, metadata !2770, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %old, metadata !2771, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2772, metadata !DIExpression()), !dbg !2774
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_old.addr, align 8, !dbg !2774
  %1 = bitcast %struct.rb_node* %0 to i8*, !dbg !2774
  store i8* %1, i8** %__mptr, align 8, !dbg !2774
  br label %do.body, !dbg !2774

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2775

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2774
  %add.ptr = getelementptr i8, i8* %2, i64 -112, !dbg !2774
  %3 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2774
  store %struct.drm_mm_node* %3, %struct.drm_mm_node** %tmp, align 8, !dbg !2775
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2774
  store %struct.drm_mm_node* %4, %struct.drm_mm_node** %old, align 8, !dbg !2769
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %new, metadata !2777, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2778, metadata !DIExpression()), !dbg !2780
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_new.addr, align 8, !dbg !2780
  %6 = bitcast %struct.rb_node* %5 to i8*, !dbg !2780
  store i8* %6, i8** %__mptr1, align 8, !dbg !2780
  br label %do.body2, !dbg !2780

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2781

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !2780
  %add.ptr5 = getelementptr i8, i8* %7, i64 -112, !dbg !2780
  %8 = bitcast i8* %add.ptr5 to %struct.drm_mm_node*, !dbg !2780
  store %struct.drm_mm_node* %8, %struct.drm_mm_node** %tmp4, align 8, !dbg !2781
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp4, align 8, !dbg !2780
  store %struct.drm_mm_node* %9, %struct.drm_mm_node** %new, align 8, !dbg !2769
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old, align 8, !dbg !2769
  %subtree_max_hole = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %10, i32 0, i32 11, !dbg !2769
  %11 = load i64, i64* %subtree_max_hole, align 8, !dbg !2769
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %new, align 8, !dbg !2769
  %subtree_max_hole6 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 11, !dbg !2769
  store i64 %11, i64* %subtree_max_hole6, align 8, !dbg !2769
  %13 = load %struct.drm_mm_node*, %struct.drm_mm_node** %old, align 8, !dbg !2769
  %call = call zeroext i1 @augment_callbacks_compute_max(%struct.drm_mm_node* %13, i1 zeroext false) #6, !dbg !2769
  ret void, !dbg !2769
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @augment_callbacks_compute_max(%struct.drm_mm_node* %node, i1 zeroext %exit) #0 !dbg !2783 {
entry:
  %retval = alloca i1, align 1
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %exit.addr = alloca i8, align 1
  %child = alloca %struct.drm_mm_node*, align 8
  %max = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp14 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !2784, metadata !DIExpression()), !dbg !2785
  %frombool = zext i1 %exit to i8
  store i8 %frombool, i8* %exit.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %exit.addr, metadata !2786, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %child, metadata !2787, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.declare(metadata i64* %max, metadata !2788, metadata !DIExpression()), !dbg !2785
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2785
  %hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 10, !dbg !2785
  %1 = load i64, i64* %hole_size, align 8, !dbg !2785
  store i64 %1, i64* %max, align 8, !dbg !2785
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2789
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %2, i32 0, i32 8, !dbg !2789
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_hole_addr, i32 0, i32 2, !dbg !2789
  %3 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8, !dbg !2789
  %tobool = icmp ne %struct.rb_node* %3, null, !dbg !2789
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2785

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2791, metadata !DIExpression()), !dbg !2794
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2794
  %rb_hole_addr1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %4, i32 0, i32 8, !dbg !2794
  %rb_left2 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_hole_addr1, i32 0, i32 2, !dbg !2794
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_left2, align 8, !dbg !2794
  %6 = bitcast %struct.rb_node* %5 to i8*, !dbg !2794
  store i8* %6, i8** %__mptr, align 8, !dbg !2794
  br label %do.body, !dbg !2794

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2795

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !2794
  %add.ptr = getelementptr i8, i8* %7, i64 -112, !dbg !2794
  %8 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2794
  store %struct.drm_mm_node* %8, %struct.drm_mm_node** %tmp, align 8, !dbg !2795
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2794
  store %struct.drm_mm_node* %9, %struct.drm_mm_node** %child, align 8, !dbg !2797
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %child, align 8, !dbg !2798
  %subtree_max_hole = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %10, i32 0, i32 11, !dbg !2798
  %11 = load i64, i64* %subtree_max_hole, align 8, !dbg !2798
  %12 = load i64, i64* %max, align 8, !dbg !2798
  %cmp = icmp ugt i64 %11, %12, !dbg !2798
  br i1 %cmp, label %if.then3, label %if.end, !dbg !2797

if.then3:                                         ; preds = %do.end
  %13 = load %struct.drm_mm_node*, %struct.drm_mm_node** %child, align 8, !dbg !2798
  %subtree_max_hole4 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %13, i32 0, i32 11, !dbg !2798
  %14 = load i64, i64* %subtree_max_hole4, align 8, !dbg !2798
  store i64 %14, i64* %max, align 8, !dbg !2798
  br label %if.end, !dbg !2798

if.end:                                           ; preds = %if.then3, %do.end
  br label %if.end5, !dbg !2797

if.end5:                                          ; preds = %if.end, %entry
  %15 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2800
  %rb_hole_addr6 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %15, i32 0, i32 8, !dbg !2800
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_hole_addr6, i32 0, i32 1, !dbg !2800
  %16 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8, !dbg !2800
  %tobool7 = icmp ne %struct.rb_node* %16, null, !dbg !2800
  br i1 %tobool7, label %if.then8, label %if.end21, !dbg !2785

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !2802, metadata !DIExpression()), !dbg !2805
  %17 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2805
  %rb_hole_addr10 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %17, i32 0, i32 8, !dbg !2805
  %rb_right11 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_hole_addr10, i32 0, i32 1, !dbg !2805
  %18 = load %struct.rb_node*, %struct.rb_node** %rb_right11, align 8, !dbg !2805
  %19 = bitcast %struct.rb_node* %18 to i8*, !dbg !2805
  store i8* %19, i8** %__mptr9, align 8, !dbg !2805
  br label %do.body12, !dbg !2805

do.body12:                                        ; preds = %if.then8
  br label %do.end13, !dbg !2806

do.end13:                                         ; preds = %do.body12
  %20 = load i8*, i8** %__mptr9, align 8, !dbg !2805
  %add.ptr15 = getelementptr i8, i8* %20, i64 -112, !dbg !2805
  %21 = bitcast i8* %add.ptr15 to %struct.drm_mm_node*, !dbg !2805
  store %struct.drm_mm_node* %21, %struct.drm_mm_node** %tmp14, align 8, !dbg !2806
  %22 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp14, align 8, !dbg !2805
  store %struct.drm_mm_node* %22, %struct.drm_mm_node** %child, align 8, !dbg !2808
  %23 = load %struct.drm_mm_node*, %struct.drm_mm_node** %child, align 8, !dbg !2809
  %subtree_max_hole16 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %23, i32 0, i32 11, !dbg !2809
  %24 = load i64, i64* %subtree_max_hole16, align 8, !dbg !2809
  %25 = load i64, i64* %max, align 8, !dbg !2809
  %cmp17 = icmp ugt i64 %24, %25, !dbg !2809
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !2808

if.then18:                                        ; preds = %do.end13
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %child, align 8, !dbg !2809
  %subtree_max_hole19 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %26, i32 0, i32 11, !dbg !2809
  %27 = load i64, i64* %subtree_max_hole19, align 8, !dbg !2809
  store i64 %27, i64* %max, align 8, !dbg !2809
  br label %if.end20, !dbg !2809

if.end20:                                         ; preds = %if.then18, %do.end13
  br label %if.end21, !dbg !2808

if.end21:                                         ; preds = %if.end20, %if.end5
  %28 = load i8, i8* %exit.addr, align 1, !dbg !2811
  %tobool22 = trunc i8 %28 to i1, !dbg !2811
  br i1 %tobool22, label %land.lhs.true, label %if.end26, !dbg !2811

land.lhs.true:                                    ; preds = %if.end21
  %29 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2811
  %subtree_max_hole23 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %29, i32 0, i32 11, !dbg !2811
  %30 = load i64, i64* %subtree_max_hole23, align 8, !dbg !2811
  %31 = load i64, i64* %max, align 8, !dbg !2811
  %cmp24 = icmp eq i64 %30, %31, !dbg !2811
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2785

if.then25:                                        ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1, !dbg !2811
  br label %return, !dbg !2811

if.end26:                                         ; preds = %land.lhs.true, %if.end21
  %32 = load i64, i64* %max, align 8, !dbg !2785
  %33 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2785
  %subtree_max_hole27 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %33, i32 0, i32 11, !dbg !2785
  store i64 %32, i64* %subtree_max_hole27, align 8, !dbg !2785
  store i1 false, i1* %retval, align 1, !dbg !2785
  br label %return, !dbg !2785

return:                                           ; preds = %if.end26, %if.then25
  %34 = load i1, i1* %retval, align 1, !dbg !2785
  ret i1 %34, !dbg !2785
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @insert_hole_size(%struct.rb_root_cached* %root, %struct.drm_mm_node* %node) #0 !dbg !2813 {
entry:
  %root.addr = alloca %struct.rb_root_cached*, align 8
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %link = alloca %struct.rb_node**, align 8
  %rb = alloca %struct.rb_node*, align 8
  %x = alloca i64, align 8
  %first = alloca i8, align 1
  store %struct.rb_root_cached* %root, %struct.rb_root_cached** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root_cached** %root.addr, metadata !2816, metadata !DIExpression()), !dbg !2817
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !2818, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %link, metadata !2820, metadata !DIExpression()), !dbg !2821
  %0 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !2822
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %0, i32 0, i32 0, !dbg !2823
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %rb_root, i32 0, i32 0, !dbg !2824
  store %struct.rb_node** %rb_node, %struct.rb_node*** %link, align 8, !dbg !2821
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb, metadata !2825, metadata !DIExpression()), !dbg !2826
  store %struct.rb_node* null, %struct.rb_node** %rb, align 8, !dbg !2826
  call void @llvm.dbg.declare(metadata i64* %x, metadata !2827, metadata !DIExpression()), !dbg !2828
  %1 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2829
  %hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %1, i32 0, i32 10, !dbg !2830
  %2 = load i64, i64* %hole_size, align 8, !dbg !2830
  store i64 %2, i64* %x, align 8, !dbg !2828
  call void @llvm.dbg.declare(metadata i8* %first, metadata !2831, metadata !DIExpression()), !dbg !2832
  store i8 1, i8* %first, align 1, !dbg !2832
  br label %while.cond, !dbg !2833

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.rb_node**, %struct.rb_node*** %link, align 8, !dbg !2834
  %4 = load %struct.rb_node*, %struct.rb_node** %3, align 8, !dbg !2835
  %tobool = icmp ne %struct.rb_node* %4, null, !dbg !2833
  br i1 %tobool, label %while.body, label %while.end, !dbg !2833

while.body:                                       ; preds = %while.cond
  %5 = load %struct.rb_node**, %struct.rb_node*** %link, align 8, !dbg !2836
  %6 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !2838
  store %struct.rb_node* %6, %struct.rb_node** %rb, align 8, !dbg !2839
  %7 = load i64, i64* %x, align 8, !dbg !2840
  %8 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !2842
  %call = call i64 @rb_to_hole_size(%struct.rb_node* %8) #6, !dbg !2843
  %cmp = icmp ugt i64 %7, %call, !dbg !2844
  br i1 %cmp, label %if.then, label %if.else, !dbg !2845

if.then:                                          ; preds = %while.body
  %9 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !2846
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %9, i32 0, i32 2, !dbg !2848
  store %struct.rb_node** %rb_left, %struct.rb_node*** %link, align 8, !dbg !2849
  br label %if.end, !dbg !2850

if.else:                                          ; preds = %while.body
  %10 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !2851
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %10, i32 0, i32 1, !dbg !2853
  store %struct.rb_node** %rb_right, %struct.rb_node*** %link, align 8, !dbg !2854
  store i8 0, i8* %first, align 1, !dbg !2855
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !2833, !llvm.loop !2856

while.end:                                        ; preds = %while.cond
  %11 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2858
  %rb_hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %11, i32 0, i32 7, !dbg !2859
  %12 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !2860
  %13 = load %struct.rb_node**, %struct.rb_node*** %link, align 8, !dbg !2861
  call void @rb_link_node(%struct.rb_node* %rb_hole_size, %struct.rb_node* %12, %struct.rb_node** %13) #6, !dbg !2862
  %14 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2863
  %rb_hole_size1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %14, i32 0, i32 7, !dbg !2864
  %15 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !2865
  %16 = load i8, i8* %first, align 1, !dbg !2866
  %tobool2 = trunc i8 %16 to i1, !dbg !2866
  call void @rb_insert_color_cached(%struct.rb_node* %rb_hole_size1, %struct.rb_root_cached* %15, i1 zeroext %tobool2) #6, !dbg !2867
  ret void, !dbg !2868
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @insert_hole_addr(%struct.rb_root* %root, %struct.drm_mm_node* %node) #0 !dbg !2869 {
entry:
  %root.addr = alloca %struct.rb_root*, align 8
  %node.addr = alloca %struct.drm_mm_node*, align 8
  %link = alloca %struct.rb_node**, align 8
  %rb_parent = alloca %struct.rb_node*, align 8
  %start = alloca i64, align 8
  %subtree_max_hole = alloca i64, align 8
  %parent = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  store %struct.rb_root* %root, %struct.rb_root** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %root.addr, metadata !2872, metadata !DIExpression()), !dbg !2873
  store %struct.drm_mm_node* %node, %struct.drm_mm_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node.addr, metadata !2874, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %link, metadata !2876, metadata !DIExpression()), !dbg !2877
  %0 = load %struct.rb_root*, %struct.rb_root** %root.addr, align 8, !dbg !2878
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %0, i32 0, i32 0, !dbg !2879
  store %struct.rb_node** %rb_node, %struct.rb_node*** %link, align 8, !dbg !2877
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb_parent, metadata !2880, metadata !DIExpression()), !dbg !2881
  store %struct.rb_node* null, %struct.rb_node** %rb_parent, align 8, !dbg !2881
  call void @llvm.dbg.declare(metadata i64* %start, metadata !2882, metadata !DIExpression()), !dbg !2883
  %1 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2884
  %call = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %1) #6, !dbg !2884
  store i64 %call, i64* %start, align 8, !dbg !2883
  call void @llvm.dbg.declare(metadata i64* %subtree_max_hole, metadata !2885, metadata !DIExpression()), !dbg !2886
  %2 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2887
  %subtree_max_hole1 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %2, i32 0, i32 11, !dbg !2888
  %3 = load i64, i64* %subtree_max_hole1, align 8, !dbg !2888
  store i64 %3, i64* %subtree_max_hole, align 8, !dbg !2886
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %parent, metadata !2889, metadata !DIExpression()), !dbg !2890
  br label %while.cond, !dbg !2891

while.cond:                                       ; preds = %if.end8, %entry
  %4 = load %struct.rb_node**, %struct.rb_node*** %link, align 8, !dbg !2892
  %5 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !2893
  %tobool = icmp ne %struct.rb_node* %5, null, !dbg !2891
  br i1 %tobool, label %while.body, label %while.end, !dbg !2891

while.body:                                       ; preds = %while.cond
  %6 = load %struct.rb_node**, %struct.rb_node*** %link, align 8, !dbg !2894
  %7 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !2896
  store %struct.rb_node* %7, %struct.rb_node** %rb_parent, align 8, !dbg !2897
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2898, metadata !DIExpression()), !dbg !2900
  %8 = load %struct.rb_node*, %struct.rb_node** %rb_parent, align 8, !dbg !2900
  %9 = bitcast %struct.rb_node* %8 to i8*, !dbg !2900
  store i8* %9, i8** %__mptr, align 8, !dbg !2900
  br label %do.body, !dbg !2900

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !2901

do.end:                                           ; preds = %do.body
  %10 = load i8*, i8** %__mptr, align 8, !dbg !2900
  %add.ptr = getelementptr i8, i8* %10, i64 -112, !dbg !2900
  %11 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2900
  store %struct.drm_mm_node* %11, %struct.drm_mm_node** %tmp, align 8, !dbg !2901
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2900
  store %struct.drm_mm_node* %12, %struct.drm_mm_node** %parent, align 8, !dbg !2903
  %13 = load %struct.drm_mm_node*, %struct.drm_mm_node** %parent, align 8, !dbg !2904
  %subtree_max_hole2 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %13, i32 0, i32 11, !dbg !2906
  %14 = load i64, i64* %subtree_max_hole2, align 8, !dbg !2906
  %15 = load i64, i64* %subtree_max_hole, align 8, !dbg !2907
  %cmp = icmp ult i64 %14, %15, !dbg !2908
  br i1 %cmp, label %if.then, label %if.end, !dbg !2909

if.then:                                          ; preds = %do.end
  %16 = load i64, i64* %subtree_max_hole, align 8, !dbg !2910
  %17 = load %struct.drm_mm_node*, %struct.drm_mm_node** %parent, align 8, !dbg !2911
  %subtree_max_hole3 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %17, i32 0, i32 11, !dbg !2912
  store i64 %16, i64* %subtree_max_hole3, align 8, !dbg !2913
  br label %if.end, !dbg !2911

if.end:                                           ; preds = %if.then, %do.end
  %18 = load i64, i64* %start, align 8, !dbg !2914
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %parent, align 8, !dbg !2916
  %call4 = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %19) #6, !dbg !2916
  %cmp5 = icmp ult i64 %18, %call4, !dbg !2917
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !2918

if.then6:                                         ; preds = %if.end
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %parent, align 8, !dbg !2919
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %20, i32 0, i32 8, !dbg !2920
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_hole_addr, i32 0, i32 2, !dbg !2921
  store %struct.rb_node** %rb_left, %struct.rb_node*** %link, align 8, !dbg !2922
  br label %if.end8, !dbg !2923

if.else:                                          ; preds = %if.end
  %21 = load %struct.drm_mm_node*, %struct.drm_mm_node** %parent, align 8, !dbg !2924
  %rb_hole_addr7 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %21, i32 0, i32 8, !dbg !2925
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rb_hole_addr7, i32 0, i32 1, !dbg !2926
  store %struct.rb_node** %rb_right, %struct.rb_node*** %link, align 8, !dbg !2927
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  br label %while.cond, !dbg !2891, !llvm.loop !2928

while.end:                                        ; preds = %while.cond
  %22 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2930
  %rb_hole_addr9 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %22, i32 0, i32 8, !dbg !2931
  %23 = load %struct.rb_node*, %struct.rb_node** %rb_parent, align 8, !dbg !2932
  %24 = load %struct.rb_node**, %struct.rb_node*** %link, align 8, !dbg !2933
  call void @rb_link_node(%struct.rb_node* %rb_hole_addr9, %struct.rb_node* %23, %struct.rb_node** %24) #6, !dbg !2934
  %25 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node.addr, align 8, !dbg !2935
  %rb_hole_addr10 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %25, i32 0, i32 8, !dbg !2936
  %26 = load %struct.rb_root*, %struct.rb_root** %root.addr, align 8, !dbg !2937
  call void @rb_insert_augmented(%struct.rb_node* %rb_hole_addr10, %struct.rb_root* %26, %struct.rb_augment_callbacks* @augment_callbacks) #6, !dbg !2938
  ret void, !dbg !2939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @rb_to_hole_size(%struct.rb_node* %rb) #0 !dbg !2940 {
entry:
  %rb.addr = alloca %struct.rb_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  store %struct.rb_node* %rb, %struct.rb_node** %rb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb.addr, metadata !2941, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2943, metadata !DIExpression()), !dbg !2945
  %0 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !2945
  %1 = bitcast %struct.rb_node* %0 to i8*, !dbg !2945
  store i8* %1, i8** %__mptr, align 8, !dbg !2945
  br label %do.body, !dbg !2945

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2946

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2945
  %add.ptr = getelementptr i8, i8* %2, i64 -88, !dbg !2945
  %3 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2945
  store %struct.drm_mm_node* %3, %struct.drm_mm_node** %tmp, align 8, !dbg !2946
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2945
  %hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %4, i32 0, i32 10, !dbg !2948
  %5 = load i64, i64* %hole_size, align 8, !dbg !2948
  ret i64 %5, !dbg !2949
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @rb_insert_color_cached(%struct.rb_node* %node, %struct.rb_root_cached* %root, i1 zeroext %leftmost) #0 !dbg !2950 {
entry:
  %node.addr = alloca %struct.rb_node*, align 8
  %root.addr = alloca %struct.rb_root_cached*, align 8
  %leftmost.addr = alloca i8, align 1
  store %struct.rb_node* %node, %struct.rb_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node.addr, metadata !2953, metadata !DIExpression()), !dbg !2954
  store %struct.rb_root_cached* %root, %struct.rb_root_cached** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root_cached** %root.addr, metadata !2955, metadata !DIExpression()), !dbg !2956
  %frombool = zext i1 %leftmost to i8
  store i8 %frombool, i8* %leftmost.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %leftmost.addr, metadata !2957, metadata !DIExpression()), !dbg !2958
  %0 = load i8, i8* %leftmost.addr, align 1, !dbg !2959
  %tobool = trunc i8 %0 to i1, !dbg !2959
  br i1 %tobool, label %if.then, label %if.end, !dbg !2961

if.then:                                          ; preds = %entry
  %1 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !2962
  %2 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !2963
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %2, i32 0, i32 1, !dbg !2964
  store %struct.rb_node* %1, %struct.rb_node** %rb_leftmost, align 8, !dbg !2965
  br label %if.end, !dbg !2963

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.rb_node*, %struct.rb_node** %node.addr, align 8, !dbg !2966
  %4 = load %struct.rb_root_cached*, %struct.rb_root_cached** %root.addr, align 8, !dbg !2967
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %4, i32 0, i32 0, !dbg !2968
  call void @rb_insert_color(%struct.rb_node* %3, %struct.rb_root* %rb_root) #6, !dbg !2969
  ret void, !dbg !2970
}

; Function Attrs: noredzone
declare dso_local void @rb_insert_color(%struct.rb_node*, %struct.rb_root*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_mm_node* @best_hole(%struct.drm_mm* %mm, i64 %size) #0 !dbg !2971 {
entry:
  %mm.addr = alloca %struct.drm_mm*, align 8
  %size.addr = alloca i64, align 8
  %rb = alloca %struct.rb_node*, align 8
  %best = alloca %struct.drm_mm_node*, align 8
  %node = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm* %mm, %struct.drm_mm** %mm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm** %mm.addr, metadata !2974, metadata !DIExpression()), !dbg !2975
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2976, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb, metadata !2978, metadata !DIExpression()), !dbg !2979
  %0 = load %struct.drm_mm*, %struct.drm_mm** %mm.addr, align 8, !dbg !2980
  %holes_size = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %0, i32 0, i32 4, !dbg !2981
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %holes_size, i32 0, i32 0, !dbg !2982
  %rb_node = getelementptr inbounds %struct.rb_root, %struct.rb_root* %rb_root, i32 0, i32 0, !dbg !2983
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8, !dbg !2983
  store %struct.rb_node* %1, %struct.rb_node** %rb, align 8, !dbg !2979
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %best, metadata !2984, metadata !DIExpression()), !dbg !2985
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %best, align 8, !dbg !2985
  br label %do.body, !dbg !2986

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %node, metadata !2987, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2990, metadata !DIExpression()), !dbg !2992
  %2 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !2992
  %3 = bitcast %struct.rb_node* %2 to i8*, !dbg !2992
  store i8* %3, i8** %__mptr, align 8, !dbg !2992
  br label %do.body1, !dbg !2992

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2993

do.end:                                           ; preds = %do.body1
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2992
  %add.ptr = getelementptr i8, i8* %4, i64 -88, !dbg !2992
  %5 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !2992
  store %struct.drm_mm_node* %5, %struct.drm_mm_node** %tmp, align 8, !dbg !2993
  %6 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !2992
  store %struct.drm_mm_node* %6, %struct.drm_mm_node** %node, align 8, !dbg !2989
  %7 = load i64, i64* %size.addr, align 8, !dbg !2995
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !2997
  %hole_size = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %8, i32 0, i32 10, !dbg !2998
  %9 = load i64, i64* %hole_size, align 8, !dbg !2998
  %cmp = icmp ule i64 %7, %9, !dbg !2999
  br i1 %cmp, label %if.then, label %if.else, !dbg !3000

if.then:                                          ; preds = %do.end
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %node, align 8, !dbg !3001
  store %struct.drm_mm_node* %10, %struct.drm_mm_node** %best, align 8, !dbg !3003
  %11 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !3004
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %11, i32 0, i32 1, !dbg !3005
  %12 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8, !dbg !3005
  store %struct.rb_node* %12, %struct.rb_node** %rb, align 8, !dbg !3006
  br label %if.end, !dbg !3007

if.else:                                          ; preds = %do.end
  %13 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !3008
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %13, i32 0, i32 2, !dbg !3010
  %14 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8, !dbg !3010
  store %struct.rb_node* %14, %struct.rb_node** %rb, align 8, !dbg !3011
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond, !dbg !3012

do.cond:                                          ; preds = %if.end
  %15 = load %struct.rb_node*, %struct.rb_node** %rb, align 8, !dbg !3013
  %tobool = icmp ne %struct.rb_node* %15, null, !dbg !3012
  br i1 %tobool, label %do.body, label %do.end2, !dbg !3012, !llvm.loop !3014

do.end2:                                          ; preds = %do.cond
  %16 = load %struct.drm_mm_node*, %struct.drm_mm_node** %best, align 8, !dbg !3016
  ret %struct.drm_mm_node* %16, !dbg !3017
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_mm_node* @rb_hole_size_to_node(%struct.rb_node* %rb) #0 !dbg !3018 {
entry:
  %rb.addr = alloca %struct.rb_node*, align 8
  %____ptr = alloca %struct.rb_node*, align 8
  %tmp = alloca %struct.drm_mm_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.drm_mm_node*, align 8
  store %struct.rb_node* %rb, %struct.rb_node** %rb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %rb.addr, metadata !3019, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.declare(metadata %struct.rb_node** %____ptr, metadata !3021, metadata !DIExpression()), !dbg !3023
  %0 = load %struct.rb_node*, %struct.rb_node** %rb.addr, align 8, !dbg !3023
  store %struct.rb_node* %0, %struct.rb_node** %____ptr, align 8, !dbg !3023
  %1 = load %struct.rb_node*, %struct.rb_node** %____ptr, align 8, !dbg !3023
  %tobool = icmp ne %struct.rb_node* %1, null, !dbg !3023
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3023

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3024, metadata !DIExpression()), !dbg !3026
  %2 = load %struct.rb_node*, %struct.rb_node** %____ptr, align 8, !dbg !3026
  %3 = bitcast %struct.rb_node* %2 to i8*, !dbg !3026
  store i8* %3, i8** %__mptr, align 8, !dbg !3026
  br label %do.body, !dbg !3026

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3027

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3026
  %add.ptr = getelementptr i8, i8* %4, i64 -88, !dbg !3026
  %5 = bitcast i8* %add.ptr to %struct.drm_mm_node*, !dbg !3026
  store %struct.drm_mm_node* %5, %struct.drm_mm_node** %tmp1, align 8, !dbg !3027
  %6 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp1, align 8, !dbg !3026
  br label %cond.end, !dbg !3023

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3023

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.drm_mm_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3023
  store %struct.drm_mm_node* %cond, %struct.drm_mm_node** %tmp, align 8, !dbg !3023
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %tmp, align 8, !dbg !3023
  ret %struct.drm_mm_node* %7, !dbg !3029
}

; Function Attrs: noredzone
declare dso_local %struct.rb_node* @rb_prev(%struct.rb_node*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_mm_node* @next_hole_low_addr(%struct.drm_mm_node* %entry1, i64 %size) #0 !dbg !3030 {
entry:
  %retval = alloca %struct.drm_mm_node*, align 8
  %entry.addr = alloca %struct.drm_mm_node*, align 8
  %size.addr = alloca i64, align 8
  %parent = alloca %struct.rb_node*, align 8
  %node = alloca %struct.rb_node*, align 8
  store %struct.drm_mm_node* %entry1, %struct.drm_mm_node** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %entry.addr, metadata !3033, metadata !DIExpression()), !dbg !3034
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3035, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.declare(metadata %struct.rb_node** %parent, metadata !3036, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node, metadata !3037, metadata !DIExpression()), !dbg !3034
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry.addr, align 8, !dbg !3034
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 8, !dbg !3034
  store %struct.rb_node* %rb_hole_addr, %struct.rb_node** %node, align 8, !dbg !3034
  %1 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry.addr, align 8, !dbg !3038
  %tobool = icmp ne %struct.drm_mm_node* %1, null, !dbg !3038
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3038

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3038
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %2, i32 0, i32 0, !dbg !3038
  %3 = load i64, i64* %__rb_parent_color, align 8, !dbg !3038
  %4 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3038
  %5 = ptrtoint %struct.rb_node* %4 to i64, !dbg !3038
  %cmp = icmp eq i64 %3, %5, !dbg !3038
  br i1 %cmp, label %if.then, label %if.end, !dbg !3034

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %retval, align 8, !dbg !3038
  br label %return, !dbg !3038

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3040
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %6, i32 0, i32 1, !dbg !3040
  %7 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8, !dbg !3040
  %8 = load i64, i64* %size.addr, align 8, !dbg !3040
  %call = call zeroext i1 @usable_hole_addr(%struct.rb_node* %7, i64 %8) #6, !dbg !3040
  br i1 %call, label %if.then2, label %if.end7, !dbg !3034

if.then2:                                         ; preds = %if.end
  %9 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3042
  %rb_right3 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %9, i32 0, i32 1, !dbg !3042
  %10 = load %struct.rb_node*, %struct.rb_node** %rb_right3, align 8, !dbg !3042
  store %struct.rb_node* %10, %struct.rb_node** %node, align 8, !dbg !3042
  br label %while.cond, !dbg !3042

while.cond:                                       ; preds = %while.body, %if.then2
  %11 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3042
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %11, i32 0, i32 2, !dbg !3042
  %12 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8, !dbg !3042
  %13 = load i64, i64* %size.addr, align 8, !dbg !3042
  %call4 = call zeroext i1 @usable_hole_addr(%struct.rb_node* %12, i64 %13) #6, !dbg !3042
  br i1 %call4, label %while.body, label %while.end, !dbg !3042

while.body:                                       ; preds = %while.cond
  %14 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3042
  %rb_left5 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %14, i32 0, i32 2, !dbg !3042
  %15 = load %struct.rb_node*, %struct.rb_node** %rb_left5, align 8, !dbg !3042
  store %struct.rb_node* %15, %struct.rb_node** %node, align 8, !dbg !3042
  br label %while.cond, !dbg !3042, !llvm.loop !3044

while.end:                                        ; preds = %while.cond
  %16 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3042
  %call6 = call %struct.drm_mm_node* @rb_hole_addr_to_node(%struct.rb_node* %16) #6, !dbg !3042
  store %struct.drm_mm_node* %call6, %struct.drm_mm_node** %retval, align 8, !dbg !3042
  br label %return, !dbg !3042

if.end7:                                          ; preds = %if.end
  br label %while.cond8, !dbg !3034

while.cond8:                                      ; preds = %while.body13, %if.end7
  %17 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3034
  %__rb_parent_color9 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %17, i32 0, i32 0, !dbg !3034
  %18 = load i64, i64* %__rb_parent_color9, align 8, !dbg !3034
  %and = and i64 %18, -4, !dbg !3034
  %19 = inttoptr i64 %and to %struct.rb_node*, !dbg !3034
  store %struct.rb_node* %19, %struct.rb_node** %parent, align 8, !dbg !3034
  %tobool10 = icmp ne %struct.rb_node* %19, null, !dbg !3034
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !3034

land.rhs:                                         ; preds = %while.cond8
  %20 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3034
  %21 = load %struct.rb_node*, %struct.rb_node** %parent, align 8, !dbg !3034
  %rb_right11 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %21, i32 0, i32 1, !dbg !3034
  %22 = load %struct.rb_node*, %struct.rb_node** %rb_right11, align 8, !dbg !3034
  %cmp12 = icmp eq %struct.rb_node* %20, %22, !dbg !3034
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond8
  %23 = phi i1 [ false, %while.cond8 ], [ %cmp12, %land.rhs ], !dbg !3045
  br i1 %23, label %while.body13, label %while.end14, !dbg !3034

while.body13:                                     ; preds = %land.end
  %24 = load %struct.rb_node*, %struct.rb_node** %parent, align 8, !dbg !3034
  store %struct.rb_node* %24, %struct.rb_node** %node, align 8, !dbg !3034
  br label %while.cond8, !dbg !3034, !llvm.loop !3046

while.end14:                                      ; preds = %land.end
  %25 = load %struct.rb_node*, %struct.rb_node** %parent, align 8, !dbg !3034
  %call15 = call %struct.drm_mm_node* @rb_hole_addr_to_node(%struct.rb_node* %25) #6, !dbg !3034
  store %struct.drm_mm_node* %call15, %struct.drm_mm_node** %retval, align 8, !dbg !3034
  br label %return, !dbg !3034

return:                                           ; preds = %while.end14, %while.end, %if.then
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %retval, align 8, !dbg !3034
  ret %struct.drm_mm_node* %26, !dbg !3034
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.drm_mm_node* @next_hole_high_addr(%struct.drm_mm_node* %entry1, i64 %size) #0 !dbg !3047 {
entry:
  %retval = alloca %struct.drm_mm_node*, align 8
  %entry.addr = alloca %struct.drm_mm_node*, align 8
  %size.addr = alloca i64, align 8
  %parent = alloca %struct.rb_node*, align 8
  %node = alloca %struct.rb_node*, align 8
  store %struct.drm_mm_node* %entry1, %struct.drm_mm_node** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %entry.addr, metadata !3048, metadata !DIExpression()), !dbg !3049
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3050, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.declare(metadata %struct.rb_node** %parent, metadata !3051, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.declare(metadata %struct.rb_node** %node, metadata !3052, metadata !DIExpression()), !dbg !3049
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry.addr, align 8, !dbg !3049
  %rb_hole_addr = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %0, i32 0, i32 8, !dbg !3049
  store %struct.rb_node* %rb_hole_addr, %struct.rb_node** %node, align 8, !dbg !3049
  %1 = load %struct.drm_mm_node*, %struct.drm_mm_node** %entry.addr, align 8, !dbg !3053
  %tobool = icmp ne %struct.drm_mm_node* %1, null, !dbg !3053
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3053

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3053
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %2, i32 0, i32 0, !dbg !3053
  %3 = load i64, i64* %__rb_parent_color, align 8, !dbg !3053
  %4 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3053
  %5 = ptrtoint %struct.rb_node* %4 to i64, !dbg !3053
  %cmp = icmp eq i64 %3, %5, !dbg !3053
  br i1 %cmp, label %if.then, label %if.end, !dbg !3049

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %retval, align 8, !dbg !3053
  br label %return, !dbg !3053

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3055
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %6, i32 0, i32 2, !dbg !3055
  %7 = load %struct.rb_node*, %struct.rb_node** %rb_left, align 8, !dbg !3055
  %8 = load i64, i64* %size.addr, align 8, !dbg !3055
  %call = call zeroext i1 @usable_hole_addr(%struct.rb_node* %7, i64 %8) #6, !dbg !3055
  br i1 %call, label %if.then2, label %if.end7, !dbg !3049

if.then2:                                         ; preds = %if.end
  %9 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3057
  %rb_left3 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %9, i32 0, i32 2, !dbg !3057
  %10 = load %struct.rb_node*, %struct.rb_node** %rb_left3, align 8, !dbg !3057
  store %struct.rb_node* %10, %struct.rb_node** %node, align 8, !dbg !3057
  br label %while.cond, !dbg !3057

while.cond:                                       ; preds = %while.body, %if.then2
  %11 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3057
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %11, i32 0, i32 1, !dbg !3057
  %12 = load %struct.rb_node*, %struct.rb_node** %rb_right, align 8, !dbg !3057
  %13 = load i64, i64* %size.addr, align 8, !dbg !3057
  %call4 = call zeroext i1 @usable_hole_addr(%struct.rb_node* %12, i64 %13) #6, !dbg !3057
  br i1 %call4, label %while.body, label %while.end, !dbg !3057

while.body:                                       ; preds = %while.cond
  %14 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3057
  %rb_right5 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %14, i32 0, i32 1, !dbg !3057
  %15 = load %struct.rb_node*, %struct.rb_node** %rb_right5, align 8, !dbg !3057
  store %struct.rb_node* %15, %struct.rb_node** %node, align 8, !dbg !3057
  br label %while.cond, !dbg !3057, !llvm.loop !3059

while.end:                                        ; preds = %while.cond
  %16 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3057
  %call6 = call %struct.drm_mm_node* @rb_hole_addr_to_node(%struct.rb_node* %16) #6, !dbg !3057
  store %struct.drm_mm_node* %call6, %struct.drm_mm_node** %retval, align 8, !dbg !3057
  br label %return, !dbg !3057

if.end7:                                          ; preds = %if.end
  br label %while.cond8, !dbg !3049

while.cond8:                                      ; preds = %while.body13, %if.end7
  %17 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3049
  %__rb_parent_color9 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %17, i32 0, i32 0, !dbg !3049
  %18 = load i64, i64* %__rb_parent_color9, align 8, !dbg !3049
  %and = and i64 %18, -4, !dbg !3049
  %19 = inttoptr i64 %and to %struct.rb_node*, !dbg !3049
  store %struct.rb_node* %19, %struct.rb_node** %parent, align 8, !dbg !3049
  %tobool10 = icmp ne %struct.rb_node* %19, null, !dbg !3049
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !3049

land.rhs:                                         ; preds = %while.cond8
  %20 = load %struct.rb_node*, %struct.rb_node** %node, align 8, !dbg !3049
  %21 = load %struct.rb_node*, %struct.rb_node** %parent, align 8, !dbg !3049
  %rb_left11 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %21, i32 0, i32 2, !dbg !3049
  %22 = load %struct.rb_node*, %struct.rb_node** %rb_left11, align 8, !dbg !3049
  %cmp12 = icmp eq %struct.rb_node* %20, %22, !dbg !3049
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond8
  %23 = phi i1 [ false, %while.cond8 ], [ %cmp12, %land.rhs ], !dbg !3060
  br i1 %23, label %while.body13, label %while.end14, !dbg !3049

while.body13:                                     ; preds = %land.end
  %24 = load %struct.rb_node*, %struct.rb_node** %parent, align 8, !dbg !3049
  store %struct.rb_node* %24, %struct.rb_node** %node, align 8, !dbg !3049
  br label %while.cond8, !dbg !3049, !llvm.loop !3061

while.end14:                                      ; preds = %land.end
  %25 = load %struct.rb_node*, %struct.rb_node** %parent, align 8, !dbg !3049
  %call15 = call %struct.drm_mm_node* @rb_hole_addr_to_node(%struct.rb_node* %25) #6, !dbg !3049
  store %struct.drm_mm_node* %call15, %struct.drm_mm_node** %retval, align 8, !dbg !3049
  br label %return, !dbg !3049

return:                                           ; preds = %while.end14, %while.end, %if.then
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %retval, align 8, !dbg !3049
  ret %struct.drm_mm_node* %26, !dbg !3049
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !3062 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3065, metadata !DIExpression()), !dbg !3066
  ret i1 true, !dbg !3067
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3068 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3069, metadata !DIExpression()), !dbg !3070
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3071, metadata !DIExpression()), !dbg !3072
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3073
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3074
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3075
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3076
  br label %do.body, !dbg !3077

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3078

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3080

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3078

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3082
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3082
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3082
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3082
  br label %do.end5, !dbg !3082

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3078

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3084
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !3085 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3090, metadata !DIExpression()), !dbg !3091
  br label %do.body, !dbg !3092

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3094

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3092
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !3092
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3092
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !3094
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !3092
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3096
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !3097
  %conv = zext i1 %cmp to i32, !dbg !3097
  ret i32 %conv, !dbg !3098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @drm_mm_hole_node_start(%struct.drm_mm_node* %hole_node) #0 !dbg !3099 {
entry:
  %hole_node.addr = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %hole_node, %struct.drm_mm_node** %hole_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_mm_node** %hole_node.addr, metadata !3100, metadata !DIExpression()), !dbg !3101
  %0 = load %struct.drm_mm_node*, %struct.drm_mm_node** %hole_node.addr, align 8, !dbg !3102
  %call = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %0) #6, !dbg !3103
  ret i64 %call, !dbg !3104
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noredzone }
attributes #7 = { noredzone nounwind }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "drm_mm_interval_tree_augment", scope: !2, file: !3, line: 155, type: !98, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !95, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_mm.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !16}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mm_insert_mode", file: !6, line: 68, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "DRM_MM_INSERT_BEST", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "DRM_MM_INSERT_LOW", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "DRM_MM_INSERT_HIGH", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "DRM_MM_INSERT_EVICT", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "DRM_MM_INSERT_ONCE", value: 2147483648, isUnsigned: true)
!14 = !DIEnumerator(name: "DRM_MM_INSERT_HIGHEST", value: 2147483650, isUnsigned: true)
!15 = !DIEnumerator(name: "DRM_MM_INSERT_LOWEST", value: 2147483649, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 10, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!21 = !{!22, !38, !81, !43, !57, !82, !85, !30, !87, !34, !88, !90, !92}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !24, line: 125, size: 128, elements: !25)
!24 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !37}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !23, file: !24, line: 126, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !24, line: 31, size: 64, elements: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !27, file: !24, line: 32, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !24, line: 24, size: 192, align: 64, elements: !32)
!32 = !{!33, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !31, file: !24, line: 25, baseType: !34, size: 64)
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !31, file: !24, line: 26, baseType: !30, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !31, file: !24, line: 27, baseType: !30, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !23, file: !24, line: 127, baseType: !30, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !6, line: 155, size: 1344, elements: !40)
!40 = !{!41, !42, !48, !49, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !39, file: !6, line: 157, baseType: !34, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !39, file: !6, line: 159, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !44, line: 23, baseType: !45)
!44 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !46, line: 31, baseType: !47)
!46 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!47 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !39, file: !6, line: 161, baseType: !43, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !39, file: !6, line: 163, baseType: !50, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !6, line: 188, size: 1920, elements: !52)
!52 = !{!53, !60, !67, !68, !69, !70, !71}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !51, file: !6, line: 198, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57, !34, !59, !59}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !51, file: !6, line: 204, baseType: !61, size: 128, offset: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !62, line: 178, size: 128, elements: !63)
!62 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !61, file: !62, line: 179, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !61, file: !62, line: 179, baseType: !65, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !51, file: !6, line: 207, baseType: !39, size: 1344, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !51, file: !6, line: 209, baseType: !23, size: 128, offset: 1536)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !51, file: !6, line: 210, baseType: !23, size: 128, offset: 1664)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !51, file: !6, line: 211, baseType: !27, size: 64, offset: 1792)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !51, file: !6, line: 213, baseType: !34, size: 64, offset: 1856)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !39, file: !6, line: 164, baseType: !61, size: 128, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !39, file: !6, line: 165, baseType: !61, size: 128, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !39, file: !6, line: 166, baseType: !31, size: 192, align: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !39, file: !6, line: 167, baseType: !31, size: 192, align: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !39, file: !6, line: 168, baseType: !31, size: 192, align: 64, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !39, file: !6, line: 169, baseType: !43, size: 64, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !39, file: !6, line: 170, baseType: !43, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !39, file: !6, line: 171, baseType: !43, size: 64, offset: 1216)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !6, line: 172, baseType: !34, size: 64, offset: 1280)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!84 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !65)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!94 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!95 = !{!0, !96}
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "augment_callbacks", scope: !2, file: !3, line: 244, type: !98, isLocal: true, isDefinition: true)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_augment_callbacks", file: !100, line: 27, size: 192, elements: !101)
!100 = !DIFile(filename: "./include/linux/rbtree_augmented.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !106, !107}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "propagate", scope: !99, file: !100, line: 28, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !30, !30}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !99, file: !100, line: 29, baseType: !103, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !99, file: !100, line: 30, baseType: !103, size: 64, offset: 128)
!108 = !{i32 7, !"Dwarf Version", i32 4}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"Code Model", i32 2}
!112 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!113 = distinct !DISubprogram(name: "__drm_mm_interval_first", scope: !3, file: !3, line: 160, type: !114, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!114 = !DISubroutineType(types: !115)
!115 = !{!38, !116, !43, !43}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!118 = !{}
!119 = !DILocalVariable(name: "mm", arg: 1, scope: !113, file: !3, line: 160, type: !116)
!120 = !DILocation(line: 160, column: 46, scope: !113)
!121 = !DILocalVariable(name: "start", arg: 2, scope: !113, file: !3, line: 160, type: !43)
!122 = !DILocation(line: 160, column: 54, scope: !113)
!123 = !DILocalVariable(name: "last", arg: 3, scope: !113, file: !3, line: 160, type: !43)
!124 = !DILocation(line: 160, column: 65, scope: !113)
!125 = !DILocation(line: 162, column: 67, scope: !113)
!126 = !DILocation(line: 162, column: 71, scope: !113)
!127 = !DILocation(line: 163, column: 13, scope: !113)
!128 = !DILocation(line: 163, column: 20, scope: !113)
!129 = !DILocation(line: 162, column: 9, scope: !113)
!130 = !DILocation(line: 163, column: 52, scope: !113)
!131 = !DILocation(line: 163, column: 56, scope: !113)
!132 = !DILocation(line: 162, column: 2, scope: !113)
!133 = distinct !DISubprogram(name: "drm_mm_interval_tree_iter_first", scope: !3, file: !3, line: 155, type: !134, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!134 = !DISubroutineType(types: !135)
!135 = !{!38, !22, !43, !43}
!136 = !DILocalVariable(name: "root", arg: 1, scope: !133, file: !3, line: 155, type: !22)
!137 = !DILocation(line: 155, column: 1, scope: !133)
!138 = !DILocalVariable(name: "start", arg: 2, scope: !133, file: !3, line: 155, type: !43)
!139 = !DILocalVariable(name: "last", arg: 3, scope: !133, file: !3, line: 155, type: !43)
!140 = !DILocalVariable(name: "node", scope: !133, file: !3, line: 155, type: !38)
!141 = !DILocalVariable(name: "leftmost", scope: !133, file: !3, line: 155, type: !38)
!142 = !DILocation(line: 155, column: 1, scope: !143)
!143 = distinct !DILexicalBlock(scope: !133, file: !3, line: 155, column: 1)
!144 = !DILocalVariable(name: "__mptr", scope: !145, file: !3, line: 155, type: !81)
!145 = distinct !DILexicalBlock(scope: !133, file: !3, line: 155, column: 1)
!146 = !DILocation(line: 155, column: 1, scope: !145)
!147 = !DILocation(line: 155, column: 1, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !3, line: 155, column: 1)
!149 = !DILocation(line: 155, column: 1, scope: !150)
!150 = distinct !DILexicalBlock(scope: !133, file: !3, line: 155, column: 1)
!151 = !DILocalVariable(name: "__mptr", scope: !152, file: !3, line: 155, type: !81)
!152 = distinct !DILexicalBlock(scope: !133, file: !3, line: 155, column: 1)
!153 = !DILocation(line: 155, column: 1, scope: !152)
!154 = !DILocation(line: 155, column: 1, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !3, line: 155, column: 1)
!156 = !DILocation(line: 155, column: 1, scope: !157)
!157 = distinct !DILexicalBlock(scope: !133, file: !3, line: 155, column: 1)
!158 = distinct !DISubprogram(name: "drm_mm_reserve_node", scope: !3, file: !3, line: 453, type: !159, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !50, !38}
!161 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!162 = !DILocalVariable(name: "mm", arg: 1, scope: !158, file: !3, line: 453, type: !50)
!163 = !DILocation(line: 453, column: 40, scope: !158)
!164 = !DILocalVariable(name: "node", arg: 2, scope: !158, file: !3, line: 453, type: !38)
!165 = !DILocation(line: 453, column: 64, scope: !158)
!166 = !DILocalVariable(name: "hole", scope: !158, file: !3, line: 455, type: !38)
!167 = !DILocation(line: 455, column: 22, scope: !158)
!168 = !DILocalVariable(name: "hole_start", scope: !158, file: !3, line: 456, type: !43)
!169 = !DILocation(line: 456, column: 6, scope: !158)
!170 = !DILocalVariable(name: "hole_end", scope: !158, file: !3, line: 456, type: !43)
!171 = !DILocation(line: 456, column: 18, scope: !158)
!172 = !DILocalVariable(name: "adj_start", scope: !158, file: !3, line: 457, type: !43)
!173 = !DILocation(line: 457, column: 6, scope: !158)
!174 = !DILocalVariable(name: "adj_end", scope: !158, file: !3, line: 457, type: !43)
!175 = !DILocation(line: 457, column: 17, scope: !158)
!176 = !DILocalVariable(name: "end", scope: !158, file: !3, line: 458, type: !43)
!177 = !DILocation(line: 458, column: 6, scope: !158)
!178 = !DILocation(line: 460, column: 8, scope: !158)
!179 = !DILocation(line: 460, column: 14, scope: !158)
!180 = !DILocation(line: 460, column: 22, scope: !158)
!181 = !DILocation(line: 460, column: 28, scope: !158)
!182 = !DILocation(line: 460, column: 20, scope: !158)
!183 = !DILocation(line: 460, column: 6, scope: !158)
!184 = !DILocation(line: 461, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !158, file: !3, line: 461, column: 6)
!186 = !DILocation(line: 461, column: 6, scope: !158)
!187 = !DILocation(line: 462, column: 3, scope: !185)
!188 = !DILocation(line: 465, column: 24, scope: !158)
!189 = !DILocation(line: 465, column: 28, scope: !158)
!190 = !DILocation(line: 465, column: 34, scope: !158)
!191 = !DILocation(line: 465, column: 9, scope: !158)
!192 = !DILocation(line: 465, column: 7, scope: !158)
!193 = !DILocation(line: 466, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !158, file: !3, line: 466, column: 6)
!195 = !DILocation(line: 466, column: 6, scope: !158)
!196 = !DILocation(line: 467, column: 3, scope: !194)
!197 = !DILocation(line: 469, column: 52, scope: !158)
!198 = !DILocation(line: 469, column: 27, scope: !158)
!199 = !DILocation(line: 469, column: 25, scope: !158)
!200 = !DILocation(line: 469, column: 12, scope: !158)
!201 = !DILocation(line: 470, column: 23, scope: !158)
!202 = !DILocation(line: 470, column: 36, scope: !158)
!203 = !DILocation(line: 470, column: 42, scope: !158)
!204 = !DILocation(line: 470, column: 34, scope: !158)
!205 = !DILocation(line: 470, column: 21, scope: !158)
!206 = !DILocation(line: 470, column: 10, scope: !158)
!207 = !DILocation(line: 472, column: 6, scope: !208)
!208 = distinct !DILexicalBlock(scope: !158, file: !3, line: 472, column: 6)
!209 = !DILocation(line: 472, column: 10, scope: !208)
!210 = !DILocation(line: 472, column: 6, scope: !158)
!211 = !DILocation(line: 473, column: 3, scope: !208)
!212 = !DILocation(line: 473, column: 7, scope: !208)
!213 = !DILocation(line: 473, column: 20, scope: !208)
!214 = !DILocation(line: 473, column: 26, scope: !208)
!215 = !DILocation(line: 473, column: 32, scope: !208)
!216 = !DILocation(line: 475, column: 6, scope: !217)
!217 = distinct !DILexicalBlock(scope: !158, file: !3, line: 475, column: 6)
!218 = !DILocation(line: 475, column: 18, scope: !217)
!219 = !DILocation(line: 475, column: 24, scope: !217)
!220 = !DILocation(line: 475, column: 16, scope: !217)
!221 = !DILocation(line: 475, column: 30, scope: !217)
!222 = !DILocation(line: 475, column: 33, scope: !217)
!223 = !DILocation(line: 475, column: 43, scope: !217)
!224 = !DILocation(line: 475, column: 41, scope: !217)
!225 = !DILocation(line: 475, column: 6, scope: !158)
!226 = !DILocation(line: 476, column: 3, scope: !217)
!227 = !DILocation(line: 478, column: 13, scope: !158)
!228 = !DILocation(line: 478, column: 2, scope: !158)
!229 = !DILocation(line: 478, column: 8, scope: !158)
!230 = !DILocation(line: 478, column: 11, scope: !158)
!231 = !DILocation(line: 480, column: 40, scope: !158)
!232 = !DILocation(line: 480, column: 46, scope: !158)
!233 = !DILocation(line: 480, column: 2, scope: !158)
!234 = !DILocation(line: 481, column: 12, scope: !158)
!235 = !DILocation(line: 481, column: 18, scope: !158)
!236 = !DILocation(line: 481, column: 30, scope: !158)
!237 = !DILocation(line: 481, column: 36, scope: !158)
!238 = !DILocation(line: 481, column: 2, scope: !158)
!239 = !DILocation(line: 482, column: 32, scope: !158)
!240 = !DILocation(line: 482, column: 38, scope: !158)
!241 = !DILocation(line: 482, column: 2, scope: !158)
!242 = !DILocation(line: 483, column: 2, scope: !158)
!243 = !DILocation(line: 483, column: 8, scope: !158)
!244 = !DILocation(line: 483, column: 18, scope: !158)
!245 = !DILocation(line: 485, column: 10, scope: !158)
!246 = !DILocation(line: 485, column: 2, scope: !158)
!247 = !DILocation(line: 486, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !158, file: !3, line: 486, column: 6)
!249 = !DILocation(line: 486, column: 12, scope: !248)
!250 = !DILocation(line: 486, column: 20, scope: !248)
!251 = !DILocation(line: 486, column: 18, scope: !248)
!252 = !DILocation(line: 486, column: 6, scope: !158)
!253 = !DILocation(line: 487, column: 12, scope: !248)
!254 = !DILocation(line: 487, column: 3, scope: !248)
!255 = !DILocation(line: 488, column: 6, scope: !256)
!256 = distinct !DILexicalBlock(scope: !158, file: !3, line: 488, column: 6)
!257 = !DILocation(line: 488, column: 12, scope: !256)
!258 = !DILocation(line: 488, column: 10, scope: !256)
!259 = !DILocation(line: 488, column: 6, scope: !158)
!260 = !DILocation(line: 489, column: 12, scope: !256)
!261 = !DILocation(line: 489, column: 3, scope: !256)
!262 = !DILocation(line: 491, column: 13, scope: !158)
!263 = !DILocation(line: 491, column: 2, scope: !158)
!264 = !DILocation(line: 492, column: 2, scope: !158)
!265 = !DILocation(line: 493, column: 1, scope: !158)
!266 = distinct !DISubprogram(name: "find_hole_addr", scope: !3, file: !3, line: 333, type: !267, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!267 = !DISubroutineType(types: !268)
!268 = !{!38, !50, !43, !43}
!269 = !DILocalVariable(name: "mm", arg: 1, scope: !266, file: !3, line: 333, type: !50)
!270 = !DILocation(line: 333, column: 58, scope: !266)
!271 = !DILocalVariable(name: "addr", arg: 2, scope: !266, file: !3, line: 333, type: !43)
!272 = !DILocation(line: 333, column: 66, scope: !266)
!273 = !DILocalVariable(name: "size", arg: 3, scope: !266, file: !3, line: 333, type: !43)
!274 = !DILocation(line: 333, column: 76, scope: !266)
!275 = !DILocalVariable(name: "rb", scope: !266, file: !3, line: 335, type: !30)
!276 = !DILocation(line: 335, column: 18, scope: !266)
!277 = !DILocation(line: 335, column: 23, scope: !266)
!278 = !DILocation(line: 335, column: 27, scope: !266)
!279 = !DILocation(line: 335, column: 38, scope: !266)
!280 = !DILocalVariable(name: "node", scope: !266, file: !3, line: 336, type: !38)
!281 = !DILocation(line: 336, column: 22, scope: !266)
!282 = !DILocation(line: 338, column: 2, scope: !266)
!283 = !DILocation(line: 338, column: 9, scope: !266)
!284 = !DILocalVariable(name: "hole_start", scope: !285, file: !3, line: 339, type: !43)
!285 = distinct !DILexicalBlock(scope: !266, file: !3, line: 338, column: 13)
!286 = !DILocation(line: 339, column: 7, scope: !285)
!287 = !DILocation(line: 341, column: 25, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !3, line: 341, column: 7)
!289 = !DILocation(line: 341, column: 29, scope: !288)
!290 = !DILocation(line: 341, column: 8, scope: !288)
!291 = !DILocation(line: 341, column: 7, scope: !285)
!292 = !DILocation(line: 342, column: 4, scope: !288)
!293 = !DILocation(line: 344, column: 31, scope: !285)
!294 = !DILocation(line: 344, column: 10, scope: !285)
!295 = !DILocation(line: 344, column: 8, scope: !285)
!296 = !DILocation(line: 345, column: 41, scope: !285)
!297 = !DILocation(line: 345, column: 16, scope: !285)
!298 = !DILocation(line: 345, column: 14, scope: !285)
!299 = !DILocation(line: 347, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !285, file: !3, line: 347, column: 7)
!301 = !DILocation(line: 347, column: 14, scope: !300)
!302 = !DILocation(line: 347, column: 12, scope: !300)
!303 = !DILocation(line: 347, column: 7, scope: !285)
!304 = !DILocation(line: 348, column: 9, scope: !300)
!305 = !DILocation(line: 348, column: 15, scope: !300)
!306 = !DILocation(line: 348, column: 28, scope: !300)
!307 = !DILocation(line: 348, column: 7, scope: !300)
!308 = !DILocation(line: 348, column: 4, scope: !300)
!309 = !DILocation(line: 349, column: 12, scope: !310)
!310 = distinct !DILexicalBlock(scope: !300, file: !3, line: 349, column: 12)
!311 = !DILocation(line: 349, column: 19, scope: !310)
!312 = !DILocation(line: 349, column: 32, scope: !310)
!313 = !DILocation(line: 349, column: 38, scope: !310)
!314 = !DILocation(line: 349, column: 30, scope: !310)
!315 = !DILocation(line: 349, column: 17, scope: !310)
!316 = !DILocation(line: 349, column: 12, scope: !300)
!317 = !DILocation(line: 350, column: 9, scope: !310)
!318 = !DILocation(line: 350, column: 15, scope: !310)
!319 = !DILocation(line: 350, column: 28, scope: !310)
!320 = !DILocation(line: 350, column: 7, scope: !310)
!321 = !DILocation(line: 350, column: 4, scope: !310)
!322 = !DILocation(line: 352, column: 4, scope: !310)
!323 = distinct !{!323, !282, !324}
!324 = !DILocation(line: 353, column: 2, scope: !266)
!325 = !DILocation(line: 355, column: 9, scope: !266)
!326 = !DILocation(line: 355, column: 2, scope: !266)
!327 = distinct !DISubprogram(name: "__drm_mm_hole_node_start", scope: !6, file: !6, line: 296, type: !328, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!328 = !DISubroutineType(types: !329)
!329 = !{!43, !57}
!330 = !DILocalVariable(name: "hole_node", arg: 1, scope: !327, file: !6, line: 296, type: !57)
!331 = !DILocation(line: 296, column: 70, scope: !327)
!332 = !DILocation(line: 298, column: 9, scope: !327)
!333 = !DILocation(line: 298, column: 20, scope: !327)
!334 = !DILocation(line: 298, column: 28, scope: !327)
!335 = !DILocation(line: 298, column: 39, scope: !327)
!336 = !DILocation(line: 298, column: 26, scope: !327)
!337 = !DILocation(line: 298, column: 2, scope: !327)
!338 = distinct !DISubprogram(name: "__set_bit", scope: !339, file: !339, line: 25, type: !340, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!339 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!340 = !DISubroutineType(types: !341)
!341 = !{null, !84, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!344 = !DILocalVariable(name: "nr", arg: 1, scope: !345, file: !346, line: 66, type: !84)
!345 = distinct !DISubprogram(name: "arch___set_bit", scope: !346, file: !346, line: 66, type: !340, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!346 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!347 = !DILocation(line: 66, column: 21, scope: !345, inlinedAt: !348)
!348 = distinct !DILocation(line: 28, column: 2, scope: !338)
!349 = !DILocalVariable(name: "addr", arg: 2, scope: !345, file: !346, line: 66, type: !342)
!350 = !DILocation(line: 66, column: 49, scope: !345, inlinedAt: !348)
!351 = !DILocalVariable(name: "v", arg: 1, scope: !352, file: !353, line: 39, type: !356)
!352 = distinct !DISubprogram(name: "instrument_write", scope: !353, file: !353, line: 39, type: !354, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!353 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356, !359}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 55, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !361, line: 72, baseType: !362)
!361 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !361, line: 16, baseType: !34)
!363 = !DILocation(line: 39, column: 67, scope: !352, inlinedAt: !364)
!364 = distinct !DILocation(line: 27, column: 2, scope: !338)
!365 = !DILocalVariable(name: "size", arg: 2, scope: !352, file: !353, line: 39, type: !359)
!366 = !DILocation(line: 39, column: 77, scope: !352, inlinedAt: !364)
!367 = !DILocalVariable(name: "nr", arg: 1, scope: !338, file: !339, line: 25, type: !84)
!368 = !DILocation(line: 25, column: 35, scope: !338)
!369 = !DILocalVariable(name: "addr", arg: 2, scope: !338, file: !339, line: 25, type: !342)
!370 = !DILocation(line: 25, column: 63, scope: !338)
!371 = !DILocation(line: 27, column: 19, scope: !338)
!372 = !DILocation(line: 27, column: 26, scope: !338)
!373 = !DILocation(line: 27, column: 24, scope: !338)
!374 = !DILocation(line: 41, column: 20, scope: !352, inlinedAt: !364)
!375 = !DILocation(line: 41, column: 23, scope: !352, inlinedAt: !364)
!376 = !DILocation(line: 41, column: 2, scope: !352, inlinedAt: !364)
!377 = !DILocation(line: 42, column: 2, scope: !352, inlinedAt: !364)
!378 = !DILocation(line: 28, column: 17, scope: !338)
!379 = !DILocation(line: 28, column: 21, scope: !338)
!380 = !DILocation(line: 68, column: 44, scope: !345, inlinedAt: !348)
!381 = !DILocation(line: 68, column: 56, scope: !345, inlinedAt: !348)
!382 = !DILocation(line: 68, column: 2, scope: !345, inlinedAt: !348)
!383 = !{i32 -2147159503}
!384 = !DILocation(line: 29, column: 1, scope: !338)
!385 = distinct !DISubprogram(name: "list_add", scope: !386, file: !386, line: 84, type: !387, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!386 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!387 = !DISubroutineType(types: !388)
!388 = !{null, !65, !65}
!389 = !DILocalVariable(name: "new", arg: 1, scope: !385, file: !386, line: 84, type: !65)
!390 = !DILocation(line: 84, column: 47, scope: !385)
!391 = !DILocalVariable(name: "head", arg: 2, scope: !385, file: !386, line: 84, type: !65)
!392 = !DILocation(line: 84, column: 70, scope: !385)
!393 = !DILocation(line: 86, column: 13, scope: !385)
!394 = !DILocation(line: 86, column: 18, scope: !385)
!395 = !DILocation(line: 86, column: 24, scope: !385)
!396 = !DILocation(line: 86, column: 30, scope: !385)
!397 = !DILocation(line: 86, column: 2, scope: !385)
!398 = !DILocation(line: 87, column: 1, scope: !385)
!399 = distinct !DISubprogram(name: "drm_mm_interval_tree_add_node", scope: !3, file: !3, line: 167, type: !400, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !38, !38}
!402 = !DILocalVariable(name: "hole_node", arg: 1, scope: !399, file: !3, line: 167, type: !38)
!403 = !DILocation(line: 167, column: 63, scope: !399)
!404 = !DILocalVariable(name: "node", arg: 2, scope: !399, file: !3, line: 168, type: !38)
!405 = !DILocation(line: 168, column: 28, scope: !399)
!406 = !DILocalVariable(name: "mm", scope: !399, file: !3, line: 170, type: !50)
!407 = !DILocation(line: 170, column: 17, scope: !399)
!408 = !DILocation(line: 170, column: 22, scope: !399)
!409 = !DILocation(line: 170, column: 33, scope: !399)
!410 = !DILocalVariable(name: "link", scope: !399, file: !3, line: 171, type: !411)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!412 = !DILocation(line: 171, column: 19, scope: !399)
!413 = !DILocalVariable(name: "rb", scope: !399, file: !3, line: 171, type: !30)
!414 = !DILocation(line: 171, column: 26, scope: !399)
!415 = !DILocalVariable(name: "parent", scope: !399, file: !3, line: 172, type: !38)
!416 = !DILocation(line: 172, column: 22, scope: !399)
!417 = !DILocalVariable(name: "leftmost", scope: !399, file: !3, line: 173, type: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !62, line: 30, baseType: !419)
!419 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!420 = !DILocation(line: 173, column: 7, scope: !399)
!421 = !DILocation(line: 175, column: 25, scope: !399)
!422 = !DILocation(line: 175, column: 2, scope: !399)
!423 = !DILocation(line: 175, column: 8, scope: !399)
!424 = !DILocation(line: 175, column: 23, scope: !399)
!425 = !DILocation(line: 177, column: 28, scope: !426)
!426 = distinct !DILexicalBlock(scope: !399, file: !3, line: 177, column: 6)
!427 = !DILocation(line: 177, column: 6, scope: !426)
!428 = !DILocation(line: 177, column: 6, scope: !399)
!429 = !DILocation(line: 178, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !3, line: 177, column: 40)
!431 = !DILocation(line: 178, column: 20, scope: !430)
!432 = !DILocation(line: 178, column: 6, scope: !430)
!433 = !DILocation(line: 179, column: 3, scope: !430)
!434 = !DILocation(line: 179, column: 10, scope: !430)
!435 = !DILocalVariable(name: "__mptr", scope: !436, file: !3, line: 180, type: !81)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 180, column: 13)
!437 = distinct !DILexicalBlock(scope: !430, file: !3, line: 179, column: 14)
!438 = !DILocation(line: 180, column: 13, scope: !436)
!439 = !DILocation(line: 180, column: 13, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !3, line: 180, column: 13)
!441 = !DILocation(line: 180, column: 11, scope: !437)
!442 = !DILocation(line: 181, column: 8, scope: !443)
!443 = distinct !DILexicalBlock(scope: !437, file: !3, line: 181, column: 8)
!444 = !DILocation(line: 181, column: 16, scope: !443)
!445 = !DILocation(line: 181, column: 34, scope: !443)
!446 = !DILocation(line: 181, column: 40, scope: !443)
!447 = !DILocation(line: 181, column: 31, scope: !443)
!448 = !DILocation(line: 181, column: 8, scope: !437)
!449 = !DILocation(line: 182, column: 5, scope: !443)
!450 = !DILocation(line: 184, column: 29, scope: !437)
!451 = !DILocation(line: 184, column: 35, scope: !437)
!452 = !DILocation(line: 184, column: 4, scope: !437)
!453 = !DILocation(line: 184, column: 12, scope: !437)
!454 = !DILocation(line: 184, column: 27, scope: !437)
!455 = !DILocation(line: 185, column: 9, scope: !437)
!456 = !DILocation(line: 185, column: 7, scope: !437)
!457 = distinct !{!457, !433, !458}
!458 = !DILocation(line: 186, column: 3, scope: !430)
!459 = !DILocation(line: 188, column: 9, scope: !430)
!460 = !DILocation(line: 188, column: 20, scope: !430)
!461 = !DILocation(line: 188, column: 6, scope: !430)
!462 = !DILocation(line: 189, column: 11, scope: !430)
!463 = !DILocation(line: 189, column: 22, scope: !430)
!464 = !DILocation(line: 189, column: 25, scope: !430)
!465 = !DILocation(line: 189, column: 8, scope: !430)
!466 = !DILocation(line: 190, column: 12, scope: !430)
!467 = !DILocation(line: 191, column: 2, scope: !430)
!468 = !DILocation(line: 192, column: 6, scope: !469)
!469 = distinct !DILexicalBlock(scope: !426, file: !3, line: 191, column: 9)
!470 = !DILocation(line: 193, column: 11, scope: !469)
!471 = !DILocation(line: 193, column: 15, scope: !469)
!472 = !DILocation(line: 193, column: 29, scope: !469)
!473 = !DILocation(line: 193, column: 37, scope: !469)
!474 = !DILocation(line: 193, column: 8, scope: !469)
!475 = !DILocation(line: 194, column: 12, scope: !469)
!476 = !DILocation(line: 197, column: 2, scope: !399)
!477 = !DILocation(line: 197, column: 10, scope: !399)
!478 = !DILocation(line: 197, column: 9, scope: !399)
!479 = !DILocation(line: 198, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !399, file: !3, line: 197, column: 16)
!481 = !DILocation(line: 198, column: 8, scope: !480)
!482 = !DILocation(line: 198, column: 6, scope: !480)
!483 = !DILocalVariable(name: "__mptr", scope: !484, file: !3, line: 199, type: !81)
!484 = distinct !DILexicalBlock(scope: !480, file: !3, line: 199, column: 12)
!485 = !DILocation(line: 199, column: 12, scope: !484)
!486 = !DILocation(line: 199, column: 12, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 199, column: 12)
!488 = !DILocation(line: 199, column: 10, scope: !480)
!489 = !DILocation(line: 200, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !480, file: !3, line: 200, column: 7)
!491 = !DILocation(line: 200, column: 15, scope: !490)
!492 = !DILocation(line: 200, column: 32, scope: !490)
!493 = !DILocation(line: 200, column: 38, scope: !490)
!494 = !DILocation(line: 200, column: 30, scope: !490)
!495 = !DILocation(line: 200, column: 7, scope: !480)
!496 = !DILocation(line: 201, column: 29, scope: !490)
!497 = !DILocation(line: 201, column: 35, scope: !490)
!498 = !DILocation(line: 201, column: 4, scope: !490)
!499 = !DILocation(line: 201, column: 12, scope: !490)
!500 = !DILocation(line: 201, column: 27, scope: !490)
!501 = !DILocation(line: 202, column: 7, scope: !502)
!502 = distinct !DILexicalBlock(scope: !480, file: !3, line: 202, column: 7)
!503 = !DILocation(line: 202, column: 13, scope: !502)
!504 = !DILocation(line: 202, column: 21, scope: !502)
!505 = !DILocation(line: 202, column: 29, scope: !502)
!506 = !DILocation(line: 202, column: 19, scope: !502)
!507 = !DILocation(line: 202, column: 7, scope: !480)
!508 = !DILocation(line: 203, column: 12, scope: !509)
!509 = distinct !DILexicalBlock(scope: !502, file: !3, line: 202, column: 36)
!510 = !DILocation(line: 203, column: 20, scope: !509)
!511 = !DILocation(line: 203, column: 23, scope: !509)
!512 = !DILocation(line: 203, column: 9, scope: !509)
!513 = !DILocation(line: 204, column: 3, scope: !509)
!514 = !DILocation(line: 205, column: 12, scope: !515)
!515 = distinct !DILexicalBlock(scope: !502, file: !3, line: 204, column: 10)
!516 = !DILocation(line: 205, column: 20, scope: !515)
!517 = !DILocation(line: 205, column: 23, scope: !515)
!518 = !DILocation(line: 205, column: 9, scope: !515)
!519 = !DILocation(line: 206, column: 13, scope: !515)
!520 = distinct !{!520, !476, !521}
!521 = !DILocation(line: 208, column: 2, scope: !399)
!522 = !DILocation(line: 210, column: 16, scope: !399)
!523 = !DILocation(line: 210, column: 22, scope: !399)
!524 = !DILocation(line: 210, column: 26, scope: !399)
!525 = !DILocation(line: 210, column: 30, scope: !399)
!526 = !DILocation(line: 210, column: 2, scope: !399)
!527 = !DILocation(line: 211, column: 30, scope: !399)
!528 = !DILocation(line: 211, column: 36, scope: !399)
!529 = !DILocation(line: 211, column: 41, scope: !399)
!530 = !DILocation(line: 211, column: 45, scope: !399)
!531 = !DILocation(line: 211, column: 60, scope: !399)
!532 = !DILocation(line: 211, column: 2, scope: !399)
!533 = !DILocation(line: 213, column: 1, scope: !399)
!534 = distinct !DISubprogram(name: "rm_hole", scope: !3, file: !3, line: 284, type: !535, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !38}
!537 = !DILocalVariable(name: "node", arg: 1, scope: !538, file: !100, line: 198, type: !30)
!538 = distinct !DISubprogram(name: "__rb_erase_augmented", scope: !100, file: !100, line: 198, type: !539, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!539 = !DISubroutineType(types: !540)
!540 = !{!30, !30, !541, !542}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!543 = !DILocation(line: 198, column: 38, scope: !538, inlinedAt: !544)
!544 = distinct !DILocation(line: 303, column: 30, scope: !545, inlinedAt: !548)
!545 = distinct !DISubprogram(name: "rb_erase_augmented", scope: !100, file: !100, line: 300, type: !546, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !30, !541, !542}
!548 = distinct !DILocation(line: 290, column: 2, scope: !534)
!549 = !DILocalVariable(name: "root", arg: 2, scope: !538, file: !100, line: 198, type: !541)
!550 = !DILocation(line: 198, column: 60, scope: !538, inlinedAt: !544)
!551 = !DILocalVariable(name: "augment", arg: 3, scope: !538, file: !100, line: 199, type: !542)
!552 = !DILocation(line: 199, column: 43, scope: !538, inlinedAt: !544)
!553 = !DILocalVariable(name: "child", scope: !538, file: !100, line: 201, type: !30)
!554 = !DILocation(line: 201, column: 18, scope: !538, inlinedAt: !544)
!555 = !DILocalVariable(name: "tmp", scope: !538, file: !100, line: 202, type: !30)
!556 = !DILocation(line: 202, column: 18, scope: !538, inlinedAt: !544)
!557 = !DILocalVariable(name: "parent", scope: !538, file: !100, line: 203, type: !30)
!558 = !DILocation(line: 203, column: 18, scope: !538, inlinedAt: !544)
!559 = !DILocalVariable(name: "rebalance", scope: !538, file: !100, line: 203, type: !30)
!560 = !DILocation(line: 203, column: 27, scope: !538, inlinedAt: !544)
!561 = !DILocalVariable(name: "pc", scope: !538, file: !100, line: 204, type: !34)
!562 = !DILocation(line: 204, column: 16, scope: !538, inlinedAt: !544)
!563 = !DILocalVariable(name: "successor", scope: !564, file: !100, line: 231, type: !30)
!564 = distinct !DILexicalBlock(scope: !565, file: !100, line: 230, column: 9)
!565 = distinct !DILexicalBlock(scope: !566, file: !100, line: 223, column: 13)
!566 = distinct !DILexicalBlock(scope: !538, file: !100, line: 206, column: 6)
!567 = !DILocation(line: 231, column: 19, scope: !564, inlinedAt: !544)
!568 = !DILocalVariable(name: "child2", scope: !564, file: !100, line: 231, type: !30)
!569 = !DILocation(line: 231, column: 39, scope: !564, inlinedAt: !544)
!570 = !DILocalVariable(name: "node", arg: 1, scope: !545, file: !100, line: 300, type: !30)
!571 = !DILocation(line: 300, column: 36, scope: !545, inlinedAt: !548)
!572 = !DILocalVariable(name: "root", arg: 2, scope: !545, file: !100, line: 300, type: !541)
!573 = !DILocation(line: 300, column: 58, scope: !545, inlinedAt: !548)
!574 = !DILocalVariable(name: "augment", arg: 3, scope: !545, file: !100, line: 301, type: !542)
!575 = !DILocation(line: 301, column: 41, scope: !545, inlinedAt: !548)
!576 = !DILocalVariable(name: "rebalance", scope: !545, file: !100, line: 303, type: !30)
!577 = !DILocation(line: 303, column: 18, scope: !545, inlinedAt: !548)
!578 = !DILocalVariable(name: "node", arg: 1, scope: !534, file: !3, line: 284, type: !38)
!579 = !DILocation(line: 284, column: 41, scope: !534)
!580 = !DILocation(line: 288, column: 12, scope: !534)
!581 = !DILocation(line: 288, column: 18, scope: !534)
!582 = !DILocation(line: 288, column: 2, scope: !534)
!583 = !DILocation(line: 289, column: 19, scope: !534)
!584 = !DILocation(line: 289, column: 25, scope: !534)
!585 = !DILocation(line: 289, column: 40, scope: !534)
!586 = !DILocation(line: 289, column: 46, scope: !534)
!587 = !DILocation(line: 289, column: 50, scope: !534)
!588 = !DILocation(line: 289, column: 2, scope: !534)
!589 = !DILocation(line: 290, column: 22, scope: !534)
!590 = !DILocation(line: 290, column: 28, scope: !534)
!591 = !DILocation(line: 290, column: 43, scope: !534)
!592 = !DILocation(line: 290, column: 49, scope: !534)
!593 = !DILocation(line: 290, column: 53, scope: !534)
!594 = !DILocation(line: 303, column: 51, scope: !545, inlinedAt: !548)
!595 = !DILocation(line: 303, column: 57, scope: !545, inlinedAt: !548)
!596 = !DILocation(line: 303, column: 63, scope: !545, inlinedAt: !548)
!597 = !DILocation(line: 201, column: 26, scope: !538, inlinedAt: !544)
!598 = !DILocation(line: 201, column: 32, scope: !538, inlinedAt: !544)
!599 = !DILocation(line: 202, column: 24, scope: !538, inlinedAt: !544)
!600 = !DILocation(line: 202, column: 30, scope: !538, inlinedAt: !544)
!601 = !DILocation(line: 206, column: 7, scope: !566, inlinedAt: !544)
!602 = !DILocation(line: 206, column: 6, scope: !538, inlinedAt: !544)
!603 = !DILocation(line: 214, column: 8, scope: !604, inlinedAt: !544)
!604 = distinct !DILexicalBlock(scope: !566, file: !100, line: 206, column: 12)
!605 = !DILocation(line: 214, column: 14, scope: !604, inlinedAt: !544)
!606 = !DILocation(line: 214, column: 6, scope: !604, inlinedAt: !544)
!607 = !DILocation(line: 215, column: 12, scope: !604, inlinedAt: !544)
!608 = !DILocation(line: 215, column: 10, scope: !604, inlinedAt: !544)
!609 = !DILocation(line: 216, column: 21, scope: !604, inlinedAt: !544)
!610 = !DILocation(line: 216, column: 27, scope: !604, inlinedAt: !544)
!611 = !DILocation(line: 216, column: 34, scope: !604, inlinedAt: !544)
!612 = !DILocation(line: 216, column: 42, scope: !604, inlinedAt: !544)
!613 = !DILocation(line: 216, column: 3, scope: !604, inlinedAt: !544)
!614 = !DILocation(line: 217, column: 7, scope: !615, inlinedAt: !544)
!615 = distinct !DILexicalBlock(scope: !604, file: !100, line: 217, column: 7)
!616 = !DILocation(line: 217, column: 7, scope: !604, inlinedAt: !544)
!617 = !DILocation(line: 218, column: 31, scope: !618, inlinedAt: !544)
!618 = distinct !DILexicalBlock(scope: !615, file: !100, line: 217, column: 14)
!619 = !DILocation(line: 218, column: 4, scope: !618, inlinedAt: !544)
!620 = !DILocation(line: 218, column: 11, scope: !618, inlinedAt: !544)
!621 = !DILocation(line: 218, column: 29, scope: !618, inlinedAt: !544)
!622 = !DILocation(line: 219, column: 14, scope: !618, inlinedAt: !544)
!623 = !DILocation(line: 220, column: 3, scope: !618, inlinedAt: !544)
!624 = !DILocation(line: 221, column: 16, scope: !615, inlinedAt: !544)
!625 = !DILocation(line: 221, column: 36, scope: !615, inlinedAt: !544)
!626 = !DILocation(line: 221, column: 14, scope: !615, inlinedAt: !544)
!627 = !DILocation(line: 222, column: 9, scope: !604, inlinedAt: !544)
!628 = !DILocation(line: 222, column: 7, scope: !604, inlinedAt: !544)
!629 = !DILocation(line: 223, column: 2, scope: !604, inlinedAt: !544)
!630 = !DILocation(line: 223, column: 14, scope: !565, inlinedAt: !544)
!631 = !DILocation(line: 223, column: 13, scope: !566, inlinedAt: !544)
!632 = !DILocation(line: 225, column: 33, scope: !633, inlinedAt: !544)
!633 = distinct !DILexicalBlock(scope: !565, file: !100, line: 223, column: 21)
!634 = !DILocation(line: 225, column: 39, scope: !633, inlinedAt: !544)
!635 = !DILocation(line: 225, column: 31, scope: !633, inlinedAt: !544)
!636 = !DILocation(line: 225, column: 3, scope: !633, inlinedAt: !544)
!637 = !DILocation(line: 225, column: 8, scope: !633, inlinedAt: !544)
!638 = !DILocation(line: 225, column: 26, scope: !633, inlinedAt: !544)
!639 = !DILocation(line: 226, column: 12, scope: !633, inlinedAt: !544)
!640 = !DILocation(line: 226, column: 10, scope: !633, inlinedAt: !544)
!641 = !DILocation(line: 227, column: 21, scope: !633, inlinedAt: !544)
!642 = !DILocation(line: 227, column: 27, scope: !633, inlinedAt: !544)
!643 = !DILocation(line: 227, column: 32, scope: !633, inlinedAt: !544)
!644 = !DILocation(line: 227, column: 40, scope: !633, inlinedAt: !544)
!645 = !DILocation(line: 227, column: 3, scope: !633, inlinedAt: !544)
!646 = !DILocation(line: 228, column: 13, scope: !633, inlinedAt: !544)
!647 = !DILocation(line: 229, column: 9, scope: !633, inlinedAt: !544)
!648 = !DILocation(line: 229, column: 7, scope: !633, inlinedAt: !544)
!649 = !DILocation(line: 230, column: 2, scope: !633, inlinedAt: !544)
!650 = !DILocation(line: 231, column: 31, scope: !564, inlinedAt: !544)
!651 = !DILocation(line: 233, column: 9, scope: !564, inlinedAt: !544)
!652 = !DILocation(line: 233, column: 16, scope: !564, inlinedAt: !544)
!653 = !DILocation(line: 233, column: 7, scope: !564, inlinedAt: !544)
!654 = !DILocation(line: 234, column: 8, scope: !655, inlinedAt: !544)
!655 = distinct !DILexicalBlock(scope: !564, file: !100, line: 234, column: 7)
!656 = !DILocation(line: 234, column: 7, scope: !564, inlinedAt: !544)
!657 = !DILocation(line: 244, column: 13, scope: !658, inlinedAt: !544)
!658 = distinct !DILexicalBlock(scope: !655, file: !100, line: 234, column: 13)
!659 = !DILocation(line: 244, column: 11, scope: !658, inlinedAt: !544)
!660 = !DILocation(line: 245, column: 13, scope: !658, inlinedAt: !544)
!661 = !DILocation(line: 245, column: 24, scope: !658, inlinedAt: !544)
!662 = !DILocation(line: 245, column: 11, scope: !658, inlinedAt: !544)
!663 = !DILocation(line: 247, column: 4, scope: !658, inlinedAt: !544)
!664 = !DILocation(line: 247, column: 13, scope: !658, inlinedAt: !544)
!665 = !DILocation(line: 247, column: 18, scope: !658, inlinedAt: !544)
!666 = !DILocation(line: 247, column: 24, scope: !658, inlinedAt: !544)
!667 = !DILocation(line: 248, column: 3, scope: !658, inlinedAt: !544)
!668 = !DILocation(line: 263, column: 4, scope: !669, inlinedAt: !544)
!669 = distinct !DILexicalBlock(scope: !655, file: !100, line: 248, column: 10)
!670 = !DILocation(line: 264, column: 14, scope: !671, inlinedAt: !544)
!671 = distinct !DILexicalBlock(scope: !669, file: !100, line: 263, column: 7)
!672 = !DILocation(line: 264, column: 12, scope: !671, inlinedAt: !544)
!673 = !DILocation(line: 265, column: 17, scope: !671, inlinedAt: !544)
!674 = !DILocation(line: 265, column: 15, scope: !671, inlinedAt: !544)
!675 = !DILocation(line: 266, column: 11, scope: !671, inlinedAt: !544)
!676 = !DILocation(line: 266, column: 16, scope: !671, inlinedAt: !544)
!677 = !DILocation(line: 266, column: 9, scope: !671, inlinedAt: !544)
!678 = !DILocation(line: 267, column: 13, scope: !669, inlinedAt: !544)
!679 = !DILocation(line: 267, column: 4, scope: !671, inlinedAt: !544)
!680 = distinct !{!680, !668, !681}
!681 = !DILocation(line: 267, column: 16, scope: !669, inlinedAt: !544)
!682 = !DILocation(line: 268, column: 13, scope: !669, inlinedAt: !544)
!683 = !DILocation(line: 268, column: 24, scope: !669, inlinedAt: !544)
!684 = !DILocation(line: 268, column: 11, scope: !669, inlinedAt: !544)
!685 = !DILocation(line: 269, column: 4, scope: !686, inlinedAt: !544)
!686 = distinct !DILexicalBlock(scope: !687, file: !100, line: 269, column: 4)
!687 = distinct !DILexicalBlock(scope: !669, file: !100, line: 269, column: 4)
!688 = !DILocation(line: 270, column: 4, scope: !689, inlinedAt: !544)
!689 = distinct !DILexicalBlock(scope: !690, file: !100, line: 270, column: 4)
!690 = distinct !DILexicalBlock(scope: !669, file: !100, line: 270, column: 4)
!691 = !DILocation(line: 271, column: 18, scope: !669, inlinedAt: !544)
!692 = !DILocation(line: 271, column: 25, scope: !669, inlinedAt: !544)
!693 = !DILocation(line: 271, column: 4, scope: !669, inlinedAt: !544)
!694 = !DILocation(line: 273, column: 4, scope: !669, inlinedAt: !544)
!695 = !DILocation(line: 273, column: 13, scope: !669, inlinedAt: !544)
!696 = !DILocation(line: 273, column: 18, scope: !669, inlinedAt: !544)
!697 = !DILocation(line: 273, column: 24, scope: !669, inlinedAt: !544)
!698 = !DILocation(line: 274, column: 4, scope: !669, inlinedAt: !544)
!699 = !DILocation(line: 274, column: 13, scope: !669, inlinedAt: !544)
!700 = !DILocation(line: 274, column: 23, scope: !669, inlinedAt: !544)
!701 = !DILocation(line: 274, column: 31, scope: !669, inlinedAt: !544)
!702 = !DILocation(line: 277, column: 9, scope: !564, inlinedAt: !544)
!703 = !DILocation(line: 277, column: 15, scope: !564, inlinedAt: !544)
!704 = !DILocation(line: 277, column: 7, scope: !564, inlinedAt: !544)
!705 = !DILocation(line: 278, column: 3, scope: !706, inlinedAt: !544)
!706 = distinct !DILexicalBlock(scope: !707, file: !100, line: 278, column: 3)
!707 = distinct !DILexicalBlock(scope: !564, file: !100, line: 278, column: 3)
!708 = !DILocation(line: 279, column: 17, scope: !564, inlinedAt: !544)
!709 = !DILocation(line: 279, column: 22, scope: !564, inlinedAt: !544)
!710 = !DILocation(line: 279, column: 3, scope: !564, inlinedAt: !544)
!711 = !DILocation(line: 281, column: 8, scope: !564, inlinedAt: !544)
!712 = !DILocation(line: 281, column: 14, scope: !564, inlinedAt: !544)
!713 = !DILocation(line: 281, column: 6, scope: !564, inlinedAt: !544)
!714 = !DILocation(line: 282, column: 9, scope: !564, inlinedAt: !544)
!715 = !DILocation(line: 282, column: 7, scope: !564, inlinedAt: !544)
!716 = !DILocation(line: 283, column: 21, scope: !564, inlinedAt: !544)
!717 = !DILocation(line: 283, column: 27, scope: !564, inlinedAt: !544)
!718 = !DILocation(line: 283, column: 38, scope: !564, inlinedAt: !544)
!719 = !DILocation(line: 283, column: 43, scope: !564, inlinedAt: !544)
!720 = !DILocation(line: 283, column: 3, scope: !564, inlinedAt: !544)
!721 = !DILocation(line: 285, column: 7, scope: !722, inlinedAt: !544)
!722 = distinct !DILexicalBlock(scope: !564, file: !100, line: 285, column: 7)
!723 = !DILocation(line: 285, column: 7, scope: !564, inlinedAt: !544)
!724 = !DILocation(line: 286, column: 24, scope: !725, inlinedAt: !544)
!725 = distinct !DILexicalBlock(scope: !722, file: !100, line: 285, column: 15)
!726 = !DILocation(line: 286, column: 32, scope: !725, inlinedAt: !544)
!727 = !DILocation(line: 286, column: 4, scope: !725, inlinedAt: !544)
!728 = !DILocation(line: 287, column: 14, scope: !725, inlinedAt: !544)
!729 = !DILocation(line: 288, column: 3, scope: !725, inlinedAt: !544)
!730 = !DILocation(line: 289, column: 16, scope: !731, inlinedAt: !544)
!731 = distinct !DILexicalBlock(scope: !722, file: !100, line: 288, column: 10)
!732 = !DILocation(line: 289, column: 41, scope: !731, inlinedAt: !544)
!733 = !DILocation(line: 289, column: 14, scope: !731, inlinedAt: !544)
!734 = !DILocation(line: 291, column: 34, scope: !564, inlinedAt: !544)
!735 = !DILocation(line: 291, column: 3, scope: !564, inlinedAt: !544)
!736 = !DILocation(line: 291, column: 14, scope: !564, inlinedAt: !544)
!737 = !DILocation(line: 291, column: 32, scope: !564, inlinedAt: !544)
!738 = !DILocation(line: 292, column: 9, scope: !564, inlinedAt: !544)
!739 = !DILocation(line: 292, column: 7, scope: !564, inlinedAt: !544)
!740 = !DILocation(line: 295, column: 2, scope: !538, inlinedAt: !544)
!741 = !DILocation(line: 295, column: 11, scope: !538, inlinedAt: !544)
!742 = !DILocation(line: 295, column: 21, scope: !538, inlinedAt: !544)
!743 = !DILocation(line: 296, column: 9, scope: !538, inlinedAt: !544)
!744 = !DILocation(line: 304, column: 6, scope: !745, inlinedAt: !548)
!745 = distinct !DILexicalBlock(scope: !545, file: !100, line: 304, column: 6)
!746 = !DILocation(line: 304, column: 6, scope: !545, inlinedAt: !548)
!747 = !DILocation(line: 305, column: 20, scope: !745, inlinedAt: !548)
!748 = !DILocation(line: 305, column: 31, scope: !745, inlinedAt: !548)
!749 = !DILocation(line: 305, column: 37, scope: !745, inlinedAt: !548)
!750 = !DILocation(line: 305, column: 46, scope: !745, inlinedAt: !548)
!751 = !DILocation(line: 305, column: 3, scope: !745, inlinedAt: !548)
!752 = !DILocation(line: 292, column: 2, scope: !534)
!753 = !DILocation(line: 292, column: 8, scope: !534)
!754 = !DILocation(line: 292, column: 18, scope: !534)
!755 = !DILocation(line: 293, column: 2, scope: !534)
!756 = !DILocation(line: 293, column: 8, scope: !534)
!757 = !DILocation(line: 293, column: 25, scope: !534)
!758 = !DILocation(line: 296, column: 1, scope: !534)
!759 = distinct !DISubprogram(name: "add_hole", scope: !3, file: !3, line: 269, type: !535, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!760 = !DILocalVariable(name: "node", arg: 1, scope: !759, file: !3, line: 269, type: !38)
!761 = !DILocation(line: 269, column: 42, scope: !759)
!762 = !DILocalVariable(name: "mm", scope: !759, file: !3, line: 271, type: !50)
!763 = !DILocation(line: 271, column: 17, scope: !759)
!764 = !DILocation(line: 271, column: 22, scope: !759)
!765 = !DILocation(line: 271, column: 28, scope: !759)
!766 = !DILocation(line: 274, column: 26, scope: !759)
!767 = !DILocation(line: 274, column: 3, scope: !759)
!768 = !DILocation(line: 274, column: 59, scope: !759)
!769 = !DILocation(line: 274, column: 34, scope: !759)
!770 = !DILocation(line: 274, column: 32, scope: !759)
!771 = !DILocation(line: 273, column: 2, scope: !759)
!772 = !DILocation(line: 273, column: 8, scope: !759)
!773 = !DILocation(line: 273, column: 18, scope: !759)
!774 = !DILocation(line: 275, column: 27, scope: !759)
!775 = !DILocation(line: 275, column: 33, scope: !759)
!776 = !DILocation(line: 275, column: 2, scope: !759)
!777 = !DILocation(line: 275, column: 8, scope: !759)
!778 = !DILocation(line: 275, column: 25, scope: !759)
!779 = !DILocation(line: 278, column: 20, scope: !759)
!780 = !DILocation(line: 278, column: 24, scope: !759)
!781 = !DILocation(line: 278, column: 36, scope: !759)
!782 = !DILocation(line: 278, column: 2, scope: !759)
!783 = !DILocation(line: 279, column: 20, scope: !759)
!784 = !DILocation(line: 279, column: 24, scope: !759)
!785 = !DILocation(line: 279, column: 36, scope: !759)
!786 = !DILocation(line: 279, column: 2, scope: !759)
!787 = !DILocation(line: 281, column: 12, scope: !759)
!788 = !DILocation(line: 281, column: 18, scope: !759)
!789 = !DILocation(line: 281, column: 31, scope: !759)
!790 = !DILocation(line: 281, column: 35, scope: !759)
!791 = !DILocation(line: 281, column: 2, scope: !759)
!792 = !DILocation(line: 282, column: 1, scope: !759)
!793 = distinct !DISubprogram(name: "save_stack", scope: !3, file: !3, line: 148, type: !535, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!794 = !DILocalVariable(name: "node", arg: 1, scope: !793, file: !3, line: 148, type: !38)
!795 = !DILocation(line: 148, column: 44, scope: !793)
!796 = !DILocation(line: 148, column: 52, scope: !793)
!797 = distinct !DISubprogram(name: "drm_mm_insert_node_in_range", scope: !3, file: !3, line: 517, type: !798, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!798 = !DISubroutineType(types: !799)
!799 = !{!161, !800, !801, !43, !43, !34, !43, !43, !5}
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!802 = !DILocalVariable(name: "mm", arg: 1, scope: !797, file: !3, line: 517, type: !800)
!803 = !DILocation(line: 517, column: 55, scope: !797)
!804 = !DILocalVariable(name: "node", arg: 2, scope: !797, file: !3, line: 518, type: !801)
!805 = !DILocation(line: 518, column: 32, scope: !797)
!806 = !DILocalVariable(name: "size", arg: 3, scope: !797, file: !3, line: 519, type: !43)
!807 = !DILocation(line: 519, column: 9, scope: !797)
!808 = !DILocalVariable(name: "alignment", arg: 4, scope: !797, file: !3, line: 519, type: !43)
!809 = !DILocation(line: 519, column: 19, scope: !797)
!810 = !DILocalVariable(name: "color", arg: 5, scope: !797, file: !3, line: 520, type: !34)
!811 = !DILocation(line: 520, column: 19, scope: !797)
!812 = !DILocalVariable(name: "range_start", arg: 6, scope: !797, file: !3, line: 521, type: !43)
!813 = !DILocation(line: 521, column: 9, scope: !797)
!814 = !DILocalVariable(name: "range_end", arg: 7, scope: !797, file: !3, line: 521, type: !43)
!815 = !DILocation(line: 521, column: 26, scope: !797)
!816 = !DILocalVariable(name: "mode", arg: 8, scope: !797, file: !3, line: 522, type: !5)
!817 = !DILocation(line: 522, column: 29, scope: !797)
!818 = !DILocalVariable(name: "hole", scope: !797, file: !3, line: 524, type: !38)
!819 = !DILocation(line: 524, column: 22, scope: !797)
!820 = !DILocalVariable(name: "remainder_mask", scope: !797, file: !3, line: 525, type: !43)
!821 = !DILocation(line: 525, column: 6, scope: !797)
!822 = !DILocalVariable(name: "once", scope: !797, file: !3, line: 526, type: !418)
!823 = !DILocation(line: 526, column: 7, scope: !797)
!824 = !DILocation(line: 530, column: 6, scope: !825)
!825 = distinct !DILexicalBlock(scope: !797, file: !3, line: 530, column: 6)
!826 = !DILocation(line: 530, column: 6, scope: !797)
!827 = !DILocation(line: 531, column: 3, scope: !825)
!828 = !DILocation(line: 533, column: 30, scope: !829)
!829 = distinct !DILexicalBlock(scope: !797, file: !3, line: 533, column: 6)
!830 = !DILocation(line: 533, column: 6, scope: !829)
!831 = !DILocation(line: 533, column: 66, scope: !829)
!832 = !DILocation(line: 533, column: 64, scope: !829)
!833 = !DILocation(line: 533, column: 6, scope: !797)
!834 = !DILocation(line: 534, column: 3, scope: !829)
!835 = !DILocation(line: 536, column: 6, scope: !836)
!836 = distinct !DILexicalBlock(scope: !797, file: !3, line: 536, column: 6)
!837 = !DILocation(line: 536, column: 16, scope: !836)
!838 = !DILocation(line: 536, column: 6, scope: !797)
!839 = !DILocation(line: 537, column: 13, scope: !836)
!840 = !DILocation(line: 537, column: 3, scope: !836)
!841 = !DILocation(line: 539, column: 9, scope: !797)
!842 = !DILocation(line: 539, column: 14, scope: !797)
!843 = !DILocation(line: 539, column: 7, scope: !797)
!844 = !DILocation(line: 540, column: 7, scope: !797)
!845 = !DILocation(line: 542, column: 33, scope: !797)
!846 = !DILocation(line: 542, column: 19, scope: !797)
!847 = !DILocation(line: 542, column: 46, scope: !797)
!848 = !DILocation(line: 542, column: 56, scope: !797)
!849 = !DILocation(line: 542, column: 17, scope: !797)
!850 = !DILocation(line: 543, column: 25, scope: !851)
!851 = distinct !DILexicalBlock(scope: !797, file: !3, line: 543, column: 2)
!852 = !DILocation(line: 543, column: 29, scope: !851)
!853 = !DILocation(line: 543, column: 42, scope: !851)
!854 = !DILocation(line: 543, column: 53, scope: !851)
!855 = !DILocation(line: 543, column: 59, scope: !851)
!856 = !DILocation(line: 543, column: 14, scope: !851)
!857 = !DILocation(line: 543, column: 12, scope: !851)
!858 = !DILocation(line: 543, column: 7, scope: !851)
!859 = !DILocation(line: 544, column: 7, scope: !860)
!860 = distinct !DILexicalBlock(scope: !851, file: !3, line: 543, column: 2)
!861 = !DILocation(line: 543, column: 2, scope: !851)
!862 = !DILocalVariable(name: "hole_start", scope: !863, file: !3, line: 546, type: !43)
!863 = distinct !DILexicalBlock(scope: !860, file: !3, line: 545, column: 61)
!864 = !DILocation(line: 546, column: 7, scope: !863)
!865 = !DILocation(line: 546, column: 45, scope: !863)
!866 = !DILocation(line: 546, column: 20, scope: !863)
!867 = !DILocalVariable(name: "hole_end", scope: !863, file: !3, line: 547, type: !43)
!868 = !DILocation(line: 547, column: 7, scope: !863)
!869 = !DILocation(line: 547, column: 18, scope: !863)
!870 = !DILocation(line: 547, column: 31, scope: !863)
!871 = !DILocation(line: 547, column: 37, scope: !863)
!872 = !DILocation(line: 547, column: 29, scope: !863)
!873 = !DILocalVariable(name: "adj_start", scope: !863, file: !3, line: 548, type: !43)
!874 = !DILocation(line: 548, column: 7, scope: !863)
!875 = !DILocalVariable(name: "adj_end", scope: !863, file: !3, line: 548, type: !43)
!876 = !DILocation(line: 548, column: 18, scope: !863)
!877 = !DILocalVariable(name: "col_start", scope: !863, file: !3, line: 549, type: !43)
!878 = !DILocation(line: 549, column: 7, scope: !863)
!879 = !DILocalVariable(name: "col_end", scope: !863, file: !3, line: 549, type: !43)
!880 = !DILocation(line: 549, column: 18, scope: !863)
!881 = !DILocation(line: 551, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !863, file: !3, line: 551, column: 7)
!883 = !DILocation(line: 551, column: 12, scope: !882)
!884 = !DILocation(line: 551, column: 33, scope: !882)
!885 = !DILocation(line: 551, column: 36, scope: !882)
!886 = !DILocation(line: 551, column: 50, scope: !882)
!887 = !DILocation(line: 551, column: 47, scope: !882)
!888 = !DILocation(line: 551, column: 7, scope: !863)
!889 = !DILocation(line: 552, column: 4, scope: !882)
!890 = !DILocation(line: 554, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !863, file: !3, line: 554, column: 7)
!892 = !DILocation(line: 554, column: 12, scope: !891)
!893 = !DILocation(line: 554, column: 34, scope: !891)
!894 = !DILocation(line: 554, column: 37, scope: !891)
!895 = !DILocation(line: 554, column: 49, scope: !891)
!896 = !DILocation(line: 554, column: 46, scope: !891)
!897 = !DILocation(line: 554, column: 7, scope: !863)
!898 = !DILocation(line: 555, column: 4, scope: !891)
!899 = !DILocation(line: 557, column: 15, scope: !863)
!900 = !DILocation(line: 557, column: 13, scope: !863)
!901 = !DILocation(line: 558, column: 13, scope: !863)
!902 = !DILocation(line: 558, column: 11, scope: !863)
!903 = !DILocation(line: 559, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !863, file: !3, line: 559, column: 7)
!905 = !DILocation(line: 559, column: 11, scope: !904)
!906 = !DILocation(line: 559, column: 7, scope: !863)
!907 = !DILocation(line: 560, column: 4, scope: !904)
!908 = !DILocation(line: 560, column: 8, scope: !904)
!909 = !DILocation(line: 560, column: 21, scope: !904)
!910 = !DILocation(line: 560, column: 27, scope: !904)
!911 = !DILocalVariable(name: "__UNIQUE_ID___x249", scope: !912, file: !3, line: 562, type: !43)
!912 = distinct !DILexicalBlock(scope: !863, file: !3, line: 562, column: 15)
!913 = !DILocation(line: 562, column: 15, scope: !912)
!914 = !DILocalVariable(name: "__UNIQUE_ID___y250", scope: !912, file: !3, line: 562, type: !43)
!915 = !DILocation(line: 562, column: 13, scope: !863)
!916 = !DILocalVariable(name: "__UNIQUE_ID___x251", scope: !917, file: !3, line: 563, type: !43)
!917 = distinct !DILexicalBlock(scope: !863, file: !3, line: 563, column: 13)
!918 = !DILocation(line: 563, column: 13, scope: !917)
!919 = !DILocalVariable(name: "__UNIQUE_ID___y252", scope: !917, file: !3, line: 563, type: !43)
!920 = !DILocation(line: 563, column: 11, scope: !863)
!921 = !DILocation(line: 565, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !863, file: !3, line: 565, column: 7)
!923 = !DILocation(line: 565, column: 18, scope: !922)
!924 = !DILocation(line: 565, column: 15, scope: !922)
!925 = !DILocation(line: 565, column: 28, scope: !922)
!926 = !DILocation(line: 565, column: 31, scope: !922)
!927 = !DILocation(line: 565, column: 41, scope: !922)
!928 = !DILocation(line: 565, column: 39, scope: !922)
!929 = !DILocation(line: 565, column: 53, scope: !922)
!930 = !DILocation(line: 565, column: 51, scope: !922)
!931 = !DILocation(line: 565, column: 7, scope: !863)
!932 = !DILocation(line: 566, column: 4, scope: !922)
!933 = !DILocation(line: 568, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !863, file: !3, line: 568, column: 7)
!935 = !DILocation(line: 568, column: 12, scope: !934)
!936 = !DILocation(line: 568, column: 7, scope: !863)
!937 = !DILocation(line: 569, column: 16, scope: !934)
!938 = !DILocation(line: 569, column: 26, scope: !934)
!939 = !DILocation(line: 569, column: 24, scope: !934)
!940 = !DILocation(line: 569, column: 14, scope: !934)
!941 = !DILocation(line: 569, column: 4, scope: !934)
!942 = !DILocation(line: 571, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !863, file: !3, line: 571, column: 7)
!944 = !DILocation(line: 571, column: 7, scope: !863)
!945 = !DILocalVariable(name: "rem", scope: !946, file: !3, line: 572, type: !43)
!946 = distinct !DILexicalBlock(scope: !943, file: !3, line: 571, column: 18)
!947 = !DILocation(line: 572, column: 8, scope: !946)
!948 = !DILocation(line: 574, column: 8, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !3, line: 574, column: 8)
!950 = !DILocation(line: 574, column: 8, scope: !946)
!951 = !DILocation(line: 575, column: 11, scope: !949)
!952 = !DILocation(line: 575, column: 23, scope: !949)
!953 = !DILocation(line: 575, column: 21, scope: !949)
!954 = !DILocation(line: 575, column: 9, scope: !949)
!955 = !DILocation(line: 575, column: 5, scope: !949)
!956 = !DILocation(line: 577, column: 19, scope: !949)
!957 = !DILocation(line: 577, column: 30, scope: !949)
!958 = !DILocation(line: 577, column: 5, scope: !949)
!959 = !DILocation(line: 578, column: 8, scope: !960)
!960 = distinct !DILexicalBlock(scope: !946, file: !3, line: 578, column: 8)
!961 = !DILocation(line: 578, column: 8, scope: !946)
!962 = !DILocation(line: 579, column: 18, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !3, line: 578, column: 13)
!964 = !DILocation(line: 579, column: 15, scope: !963)
!965 = !DILocation(line: 580, column: 9, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !3, line: 580, column: 9)
!967 = !DILocation(line: 580, column: 14, scope: !966)
!968 = !DILocation(line: 580, column: 9, scope: !963)
!969 = !DILocation(line: 581, column: 19, scope: !966)
!970 = !DILocation(line: 581, column: 16, scope: !966)
!971 = !DILocation(line: 581, column: 6, scope: !966)
!972 = !DILocation(line: 583, column: 9, scope: !973)
!973 = distinct !DILexicalBlock(scope: !963, file: !3, line: 583, column: 9)
!974 = !DILocalVariable(name: "__UNIQUE_ID___x253", scope: !975, file: !3, line: 583, type: !43)
!975 = distinct !DILexicalBlock(scope: !973, file: !3, line: 583, column: 21)
!976 = !DILocation(line: 583, column: 21, scope: !975)
!977 = !DILocalVariable(name: "__UNIQUE_ID___y254", scope: !975, file: !3, line: 583, type: !43)
!978 = !DILocation(line: 583, column: 19, scope: !973)
!979 = !DILocation(line: 583, column: 49, scope: !973)
!980 = !DILocalVariable(name: "__UNIQUE_ID___x255", scope: !981, file: !3, line: 584, type: !43)
!981 = distinct !DILexicalBlock(scope: !973, file: !3, line: 584, column: 9)
!982 = !DILocation(line: 584, column: 9, scope: !981)
!983 = !DILocalVariable(name: "__UNIQUE_ID___y256", scope: !981, file: !3, line: 584, type: !43)
!984 = !DILocation(line: 584, column: 35, scope: !973)
!985 = !DILocation(line: 584, column: 33, scope: !973)
!986 = !DILocation(line: 584, column: 47, scope: !973)
!987 = !DILocation(line: 584, column: 45, scope: !973)
!988 = !DILocation(line: 583, column: 9, scope: !963)
!989 = !DILocation(line: 585, column: 6, scope: !973)
!990 = !DILocation(line: 587, column: 9, scope: !991)
!991 = distinct !DILexicalBlock(scope: !963, file: !3, line: 587, column: 9)
!992 = !DILocation(line: 587, column: 20, scope: !991)
!993 = !DILocation(line: 587, column: 17, scope: !991)
!994 = !DILocation(line: 587, column: 30, scope: !991)
!995 = !DILocation(line: 588, column: 9, scope: !991)
!996 = !DILocation(line: 588, column: 19, scope: !991)
!997 = !DILocation(line: 588, column: 17, scope: !991)
!998 = !DILocation(line: 588, column: 31, scope: !991)
!999 = !DILocation(line: 588, column: 29, scope: !991)
!1000 = !DILocation(line: 587, column: 9, scope: !963)
!1001 = !DILocation(line: 589, column: 6, scope: !991)
!1002 = !DILocation(line: 590, column: 4, scope: !963)
!1003 = !DILocation(line: 591, column: 3, scope: !946)
!1004 = !DILocation(line: 593, column: 14, scope: !863)
!1005 = !DILocation(line: 593, column: 3, scope: !863)
!1006 = !DILocation(line: 593, column: 9, scope: !863)
!1007 = !DILocation(line: 593, column: 12, scope: !863)
!1008 = !DILocation(line: 594, column: 16, scope: !863)
!1009 = !DILocation(line: 594, column: 3, scope: !863)
!1010 = !DILocation(line: 594, column: 9, scope: !863)
!1011 = !DILocation(line: 594, column: 14, scope: !863)
!1012 = !DILocation(line: 595, column: 17, scope: !863)
!1013 = !DILocation(line: 595, column: 3, scope: !863)
!1014 = !DILocation(line: 595, column: 9, scope: !863)
!1015 = !DILocation(line: 595, column: 15, scope: !863)
!1016 = !DILocation(line: 596, column: 17, scope: !863)
!1017 = !DILocation(line: 596, column: 3, scope: !863)
!1018 = !DILocation(line: 596, column: 9, scope: !863)
!1019 = !DILocation(line: 596, column: 15, scope: !863)
!1020 = !DILocation(line: 597, column: 3, scope: !863)
!1021 = !DILocation(line: 597, column: 9, scope: !863)
!1022 = !DILocation(line: 597, column: 19, scope: !863)
!1023 = !DILocation(line: 599, column: 41, scope: !863)
!1024 = !DILocation(line: 599, column: 47, scope: !863)
!1025 = !DILocation(line: 599, column: 3, scope: !863)
!1026 = !DILocation(line: 600, column: 13, scope: !863)
!1027 = !DILocation(line: 600, column: 19, scope: !863)
!1028 = !DILocation(line: 600, column: 31, scope: !863)
!1029 = !DILocation(line: 600, column: 37, scope: !863)
!1030 = !DILocation(line: 600, column: 3, scope: !863)
!1031 = !DILocation(line: 601, column: 33, scope: !863)
!1032 = !DILocation(line: 601, column: 39, scope: !863)
!1033 = !DILocation(line: 601, column: 3, scope: !863)
!1034 = !DILocation(line: 603, column: 11, scope: !863)
!1035 = !DILocation(line: 603, column: 3, scope: !863)
!1036 = !DILocation(line: 604, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !863, file: !3, line: 604, column: 7)
!1038 = !DILocation(line: 604, column: 19, scope: !1037)
!1039 = !DILocation(line: 604, column: 17, scope: !1037)
!1040 = !DILocation(line: 604, column: 7, scope: !863)
!1041 = !DILocation(line: 605, column: 13, scope: !1037)
!1042 = !DILocation(line: 605, column: 4, scope: !1037)
!1043 = !DILocation(line: 606, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !863, file: !3, line: 606, column: 7)
!1045 = !DILocation(line: 606, column: 19, scope: !1044)
!1046 = !DILocation(line: 606, column: 17, scope: !1044)
!1047 = !DILocation(line: 606, column: 26, scope: !1044)
!1048 = !DILocation(line: 606, column: 24, scope: !1044)
!1049 = !DILocation(line: 606, column: 7, scope: !863)
!1050 = !DILocation(line: 607, column: 13, scope: !1044)
!1051 = !DILocation(line: 607, column: 4, scope: !1044)
!1052 = !DILocation(line: 609, column: 14, scope: !863)
!1053 = !DILocation(line: 609, column: 3, scope: !863)
!1054 = !DILocation(line: 610, column: 3, scope: !863)
!1055 = !DILocation(line: 545, column: 14, scope: !860)
!1056 = !DILocation(line: 545, column: 38, scope: !860)
!1057 = !DILocation(line: 545, column: 42, scope: !860)
!1058 = !DILocation(line: 545, column: 48, scope: !860)
!1059 = !DILocation(line: 545, column: 54, scope: !860)
!1060 = !DILocation(line: 545, column: 28, scope: !860)
!1061 = !DILocation(line: 545, column: 12, scope: !860)
!1062 = !DILocation(line: 543, column: 2, scope: !860)
!1063 = distinct !{!1063, !861, !1064}
!1064 = !DILocation(line: 611, column: 2, scope: !851)
!1065 = !DILocation(line: 613, column: 2, scope: !797)
!1066 = !DILocation(line: 614, column: 1, scope: !797)
!1067 = distinct !DISubprogram(name: "rb_to_hole_size_or_zero", scope: !3, file: !3, line: 496, type: !1068, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!43, !30}
!1070 = !DILocalVariable(name: "rb", arg: 1, scope: !1067, file: !3, line: 496, type: !30)
!1071 = !DILocation(line: 496, column: 52, scope: !1067)
!1072 = !DILocation(line: 498, column: 9, scope: !1067)
!1073 = !DILocation(line: 498, column: 30, scope: !1067)
!1074 = !DILocation(line: 498, column: 14, scope: !1067)
!1075 = !DILocation(line: 498, column: 2, scope: !1067)
!1076 = distinct !DISubprogram(name: "is_power_of_2", scope: !1077, file: !1077, line: 45, type: !1078, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1077 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!418, !34}
!1080 = !DILocalVariable(name: "n", arg: 1, scope: !1076, file: !1077, line: 45, type: !34)
!1081 = !DILocation(line: 45, column: 34, scope: !1076)
!1082 = !DILocation(line: 47, column: 10, scope: !1076)
!1083 = !DILocation(line: 47, column: 12, scope: !1076)
!1084 = !DILocation(line: 47, column: 17, scope: !1076)
!1085 = !DILocation(line: 47, column: 22, scope: !1076)
!1086 = !DILocation(line: 47, column: 27, scope: !1076)
!1087 = !DILocation(line: 47, column: 29, scope: !1076)
!1088 = !DILocation(line: 47, column: 24, scope: !1076)
!1089 = !DILocation(line: 47, column: 35, scope: !1076)
!1090 = !DILocation(line: 0, scope: !1076)
!1091 = !DILocation(line: 47, column: 2, scope: !1076)
!1092 = distinct !DISubprogram(name: "first_hole", scope: !3, file: !3, line: 359, type: !1093, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!38, !50, !43, !43, !43, !5}
!1095 = !DILocalVariable(name: "mm", arg: 1, scope: !1092, file: !3, line: 359, type: !50)
!1096 = !DILocation(line: 359, column: 27, scope: !1092)
!1097 = !DILocalVariable(name: "start", arg: 2, scope: !1092, file: !3, line: 360, type: !43)
!1098 = !DILocation(line: 360, column: 9, scope: !1092)
!1099 = !DILocalVariable(name: "end", arg: 3, scope: !1092, file: !3, line: 360, type: !43)
!1100 = !DILocation(line: 360, column: 20, scope: !1092)
!1101 = !DILocalVariable(name: "size", arg: 4, scope: !1092, file: !3, line: 360, type: !43)
!1102 = !DILocation(line: 360, column: 29, scope: !1092)
!1103 = !DILocalVariable(name: "mode", arg: 5, scope: !1092, file: !3, line: 361, type: !5)
!1104 = !DILocation(line: 361, column: 29, scope: !1092)
!1105 = !DILocation(line: 363, column: 10, scope: !1092)
!1106 = !DILocation(line: 363, column: 2, scope: !1092)
!1107 = !DILocation(line: 363, column: 16, scope: !1092)
!1108 = !DILocation(line: 366, column: 20, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 363, column: 16)
!1110 = !DILocation(line: 366, column: 24, scope: !1109)
!1111 = !DILocation(line: 366, column: 10, scope: !1109)
!1112 = !DILocation(line: 366, column: 3, scope: !1109)
!1113 = !DILocation(line: 369, column: 25, scope: !1109)
!1114 = !DILocation(line: 369, column: 29, scope: !1109)
!1115 = !DILocation(line: 369, column: 36, scope: !1109)
!1116 = !DILocation(line: 369, column: 10, scope: !1109)
!1117 = !DILocation(line: 369, column: 3, scope: !1109)
!1118 = !DILocation(line: 372, column: 25, scope: !1109)
!1119 = !DILocation(line: 372, column: 29, scope: !1109)
!1120 = !DILocation(line: 372, column: 34, scope: !1109)
!1121 = !DILocation(line: 372, column: 10, scope: !1109)
!1122 = !DILocation(line: 372, column: 3, scope: !1109)
!1123 = !DILocalVariable(name: "head__", scope: !1124, file: !3, line: 375, type: !65)
!1124 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 375, column: 10)
!1125 = !DILocation(line: 375, column: 10, scope: !1124)
!1126 = !DILocalVariable(name: "pos__", scope: !1124, file: !3, line: 375, type: !65)
!1127 = !DILocation(line: 375, column: 10, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 375, column: 10)
!1129 = !DILocation(line: 375, column: 10, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 375, column: 10)
!1131 = !DILocalVariable(name: "__mptr", scope: !1132, file: !3, line: 375, type: !81)
!1132 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 375, column: 10)
!1133 = !DILocation(line: 375, column: 10, scope: !1132)
!1134 = !DILocation(line: 375, column: 10, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 375, column: 10)
!1136 = !DILocation(line: 375, column: 3, scope: !1109)
!1137 = !DILocation(line: 379, column: 1, scope: !1092)
!1138 = distinct !DISubprogram(name: "div64_u64_rem", scope: !1139, file: !1139, line: 53, type: !1140, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1139 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!43, !43, !43, !59}
!1142 = !DILocalVariable(name: "dividend", arg: 1, scope: !1138, file: !1139, line: 53, type: !43)
!1143 = !DILocation(line: 53, column: 37, scope: !1138)
!1144 = !DILocalVariable(name: "divisor", arg: 2, scope: !1138, file: !1139, line: 53, type: !43)
!1145 = !DILocation(line: 53, column: 51, scope: !1138)
!1146 = !DILocalVariable(name: "remainder", arg: 3, scope: !1138, file: !1139, line: 53, type: !59)
!1147 = !DILocation(line: 53, column: 65, scope: !1138)
!1148 = !DILocation(line: 55, column: 15, scope: !1138)
!1149 = !DILocation(line: 55, column: 26, scope: !1138)
!1150 = !DILocation(line: 55, column: 24, scope: !1138)
!1151 = !DILocation(line: 55, column: 3, scope: !1138)
!1152 = !DILocation(line: 55, column: 13, scope: !1138)
!1153 = !DILocation(line: 56, column: 9, scope: !1138)
!1154 = !DILocation(line: 56, column: 20, scope: !1138)
!1155 = !DILocation(line: 56, column: 18, scope: !1138)
!1156 = !DILocation(line: 56, column: 2, scope: !1138)
!1157 = distinct !DISubprogram(name: "next_hole", scope: !3, file: !3, line: 417, type: !1158, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!38, !50, !38, !43, !5}
!1160 = !DILocalVariable(name: "mm", arg: 1, scope: !1157, file: !3, line: 417, type: !50)
!1161 = !DILocation(line: 417, column: 26, scope: !1157)
!1162 = !DILocalVariable(name: "node", arg: 2, scope: !1157, file: !3, line: 418, type: !38)
!1163 = !DILocation(line: 418, column: 24, scope: !1157)
!1164 = !DILocalVariable(name: "size", arg: 3, scope: !1157, file: !3, line: 419, type: !43)
!1165 = !DILocation(line: 419, column: 8, scope: !1157)
!1166 = !DILocalVariable(name: "mode", arg: 4, scope: !1157, file: !3, line: 420, type: !5)
!1167 = !DILocation(line: 420, column: 28, scope: !1157)
!1168 = !DILocation(line: 422, column: 10, scope: !1157)
!1169 = !DILocation(line: 422, column: 2, scope: !1157)
!1170 = !DILocation(line: 422, column: 16, scope: !1157)
!1171 = !DILocation(line: 425, column: 40, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 422, column: 16)
!1173 = !DILocation(line: 425, column: 46, scope: !1172)
!1174 = !DILocation(line: 425, column: 31, scope: !1172)
!1175 = !DILocation(line: 425, column: 10, scope: !1172)
!1176 = !DILocation(line: 425, column: 3, scope: !1172)
!1177 = !DILocation(line: 428, column: 29, scope: !1172)
!1178 = !DILocation(line: 428, column: 35, scope: !1172)
!1179 = !DILocation(line: 428, column: 10, scope: !1172)
!1180 = !DILocation(line: 428, column: 3, scope: !1172)
!1181 = !DILocation(line: 431, column: 30, scope: !1172)
!1182 = !DILocation(line: 431, column: 36, scope: !1172)
!1183 = !DILocation(line: 431, column: 10, scope: !1172)
!1184 = !DILocation(line: 431, column: 3, scope: !1172)
!1185 = !DILocalVariable(name: "__mptr", scope: !1186, file: !3, line: 434, type: !81)
!1186 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 434, column: 10)
!1187 = !DILocation(line: 434, column: 10, scope: !1186)
!1188 = !DILocation(line: 434, column: 10, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 434, column: 10)
!1190 = !DILocation(line: 434, column: 8, scope: !1172)
!1191 = !DILocation(line: 435, column: 11, scope: !1172)
!1192 = !DILocation(line: 435, column: 17, scope: !1172)
!1193 = !DILocation(line: 435, column: 32, scope: !1172)
!1194 = !DILocation(line: 435, column: 36, scope: !1172)
!1195 = !DILocation(line: 435, column: 28, scope: !1172)
!1196 = !DILocation(line: 435, column: 10, scope: !1172)
!1197 = !DILocation(line: 435, column: 56, scope: !1172)
!1198 = !DILocation(line: 435, column: 3, scope: !1172)
!1199 = !DILocation(line: 437, column: 1, scope: !1157)
!1200 = distinct !DISubprogram(name: "drm_mm_remove_node", scope: !3, file: !3, line: 630, type: !535, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1201 = !DILocalVariable(name: "node", arg: 1, scope: !1200, file: !3, line: 630, type: !38)
!1202 = !DILocation(line: 630, column: 45, scope: !1200)
!1203 = !DILocalVariable(name: "mm", scope: !1200, file: !3, line: 632, type: !50)
!1204 = !DILocation(line: 632, column: 17, scope: !1200)
!1205 = !DILocation(line: 632, column: 22, scope: !1200)
!1206 = !DILocation(line: 632, column: 28, scope: !1200)
!1207 = !DILocalVariable(name: "prev_node", scope: !1200, file: !3, line: 633, type: !38)
!1208 = !DILocation(line: 633, column: 22, scope: !1200)
!1209 = !DILocalVariable(name: "__mptr", scope: !1210, file: !3, line: 638, type: !81)
!1210 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 638, column: 14)
!1211 = !DILocation(line: 638, column: 14, scope: !1210)
!1212 = !DILocation(line: 638, column: 14, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 638, column: 14)
!1214 = !DILocation(line: 638, column: 12, scope: !1200)
!1215 = !DILocation(line: 640, column: 26, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 640, column: 6)
!1217 = !DILocation(line: 640, column: 6, scope: !1216)
!1218 = !DILocation(line: 640, column: 6, scope: !1200)
!1219 = !DILocation(line: 641, column: 11, scope: !1216)
!1220 = !DILocation(line: 641, column: 3, scope: !1216)
!1221 = !DILocation(line: 643, column: 30, scope: !1200)
!1222 = !DILocation(line: 643, column: 37, scope: !1200)
!1223 = !DILocation(line: 643, column: 41, scope: !1200)
!1224 = !DILocation(line: 643, column: 2, scope: !1200)
!1225 = !DILocation(line: 644, column: 12, scope: !1200)
!1226 = !DILocation(line: 644, column: 18, scope: !1200)
!1227 = !DILocation(line: 644, column: 2, scope: !1200)
!1228 = !DILocation(line: 646, column: 26, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 646, column: 6)
!1230 = !DILocation(line: 646, column: 6, scope: !1229)
!1231 = !DILocation(line: 646, column: 6, scope: !1200)
!1232 = !DILocation(line: 647, column: 11, scope: !1229)
!1233 = !DILocation(line: 647, column: 3, scope: !1229)
!1234 = !DILocation(line: 648, column: 11, scope: !1200)
!1235 = !DILocation(line: 648, column: 2, scope: !1200)
!1236 = !DILocation(line: 650, column: 47, scope: !1200)
!1237 = !DILocation(line: 650, column: 53, scope: !1200)
!1238 = !DILocation(line: 650, column: 2, scope: !1200)
!1239 = !DILocation(line: 651, column: 1, scope: !1200)
!1240 = distinct !DISubprogram(name: "drm_mm_hole_follows", scope: !6, file: !6, line: 291, type: !1241, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!418, !57}
!1243 = !DILocalVariable(name: "node", arg: 1, scope: !1240, file: !6, line: 291, type: !57)
!1244 = !DILocation(line: 291, column: 66, scope: !1240)
!1245 = !DILocation(line: 293, column: 9, scope: !1240)
!1246 = !DILocation(line: 293, column: 15, scope: !1240)
!1247 = !DILocation(line: 293, column: 2, scope: !1240)
!1248 = distinct !DISubprogram(name: "drm_mm_interval_tree_remove", scope: !3, file: !3, line: 155, type: !1249, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !38, !22}
!1251 = !DILocation(line: 198, column: 38, scope: !538, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 303, column: 30, scope: !545, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 314, column: 2, scope: !1254, inlinedAt: !1257)
!1254 = distinct !DISubprogram(name: "rb_erase_augmented_cached", scope: !100, file: !100, line: 309, type: !1255, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !30, !22, !542}
!1257 = distinct !DILocation(line: 155, column: 1, scope: !1248)
!1258 = !DILocation(line: 198, column: 60, scope: !538, inlinedAt: !1252)
!1259 = !DILocation(line: 199, column: 43, scope: !538, inlinedAt: !1252)
!1260 = !DILocation(line: 201, column: 18, scope: !538, inlinedAt: !1252)
!1261 = !DILocation(line: 202, column: 18, scope: !538, inlinedAt: !1252)
!1262 = !DILocation(line: 203, column: 18, scope: !538, inlinedAt: !1252)
!1263 = !DILocation(line: 203, column: 27, scope: !538, inlinedAt: !1252)
!1264 = !DILocation(line: 204, column: 16, scope: !538, inlinedAt: !1252)
!1265 = !DILocation(line: 231, column: 19, scope: !564, inlinedAt: !1252)
!1266 = !DILocation(line: 231, column: 39, scope: !564, inlinedAt: !1252)
!1267 = !DILocation(line: 300, column: 36, scope: !545, inlinedAt: !1253)
!1268 = !DILocation(line: 300, column: 58, scope: !545, inlinedAt: !1253)
!1269 = !DILocation(line: 301, column: 41, scope: !545, inlinedAt: !1253)
!1270 = !DILocation(line: 303, column: 18, scope: !545, inlinedAt: !1253)
!1271 = !DILocalVariable(name: "node", arg: 1, scope: !1254, file: !100, line: 309, type: !30)
!1272 = !DILocation(line: 309, column: 43, scope: !1254, inlinedAt: !1257)
!1273 = !DILocalVariable(name: "root", arg: 2, scope: !1254, file: !100, line: 309, type: !22)
!1274 = !DILocation(line: 309, column: 72, scope: !1254, inlinedAt: !1257)
!1275 = !DILocalVariable(name: "augment", arg: 3, scope: !1254, file: !100, line: 310, type: !542)
!1276 = !DILocation(line: 310, column: 41, scope: !1254, inlinedAt: !1257)
!1277 = !DILocalVariable(name: "node", arg: 1, scope: !1248, file: !3, line: 155, type: !38)
!1278 = !DILocation(line: 155, column: 1, scope: !1248)
!1279 = !DILocalVariable(name: "root", arg: 2, scope: !1248, file: !3, line: 155, type: !22)
!1280 = !DILocation(line: 312, column: 6, scope: !1281, inlinedAt: !1257)
!1281 = distinct !DILexicalBlock(scope: !1254, file: !100, line: 312, column: 6)
!1282 = !DILocation(line: 312, column: 12, scope: !1281, inlinedAt: !1257)
!1283 = !DILocation(line: 312, column: 27, scope: !1281, inlinedAt: !1257)
!1284 = !DILocation(line: 312, column: 24, scope: !1281, inlinedAt: !1257)
!1285 = !DILocation(line: 312, column: 6, scope: !1254, inlinedAt: !1257)
!1286 = !DILocation(line: 313, column: 31, scope: !1281, inlinedAt: !1257)
!1287 = !DILocation(line: 313, column: 23, scope: !1281, inlinedAt: !1257)
!1288 = !DILocation(line: 313, column: 3, scope: !1281, inlinedAt: !1257)
!1289 = !DILocation(line: 313, column: 9, scope: !1281, inlinedAt: !1257)
!1290 = !DILocation(line: 313, column: 21, scope: !1281, inlinedAt: !1257)
!1291 = !DILocation(line: 314, column: 21, scope: !1254, inlinedAt: !1257)
!1292 = !DILocation(line: 314, column: 28, scope: !1254, inlinedAt: !1257)
!1293 = !DILocation(line: 314, column: 34, scope: !1254, inlinedAt: !1257)
!1294 = !DILocation(line: 314, column: 43, scope: !1254, inlinedAt: !1257)
!1295 = !DILocation(line: 303, column: 51, scope: !545, inlinedAt: !1253)
!1296 = !DILocation(line: 303, column: 57, scope: !545, inlinedAt: !1253)
!1297 = !DILocation(line: 303, column: 63, scope: !545, inlinedAt: !1253)
!1298 = !DILocation(line: 201, column: 26, scope: !538, inlinedAt: !1252)
!1299 = !DILocation(line: 201, column: 32, scope: !538, inlinedAt: !1252)
!1300 = !DILocation(line: 202, column: 24, scope: !538, inlinedAt: !1252)
!1301 = !DILocation(line: 202, column: 30, scope: !538, inlinedAt: !1252)
!1302 = !DILocation(line: 206, column: 7, scope: !566, inlinedAt: !1252)
!1303 = !DILocation(line: 206, column: 6, scope: !538, inlinedAt: !1252)
!1304 = !DILocation(line: 214, column: 8, scope: !604, inlinedAt: !1252)
!1305 = !DILocation(line: 214, column: 14, scope: !604, inlinedAt: !1252)
!1306 = !DILocation(line: 214, column: 6, scope: !604, inlinedAt: !1252)
!1307 = !DILocation(line: 215, column: 12, scope: !604, inlinedAt: !1252)
!1308 = !DILocation(line: 215, column: 10, scope: !604, inlinedAt: !1252)
!1309 = !DILocation(line: 216, column: 21, scope: !604, inlinedAt: !1252)
!1310 = !DILocation(line: 216, column: 27, scope: !604, inlinedAt: !1252)
!1311 = !DILocation(line: 216, column: 34, scope: !604, inlinedAt: !1252)
!1312 = !DILocation(line: 216, column: 42, scope: !604, inlinedAt: !1252)
!1313 = !DILocation(line: 216, column: 3, scope: !604, inlinedAt: !1252)
!1314 = !DILocation(line: 217, column: 7, scope: !615, inlinedAt: !1252)
!1315 = !DILocation(line: 217, column: 7, scope: !604, inlinedAt: !1252)
!1316 = !DILocation(line: 218, column: 31, scope: !618, inlinedAt: !1252)
!1317 = !DILocation(line: 218, column: 4, scope: !618, inlinedAt: !1252)
!1318 = !DILocation(line: 218, column: 11, scope: !618, inlinedAt: !1252)
!1319 = !DILocation(line: 218, column: 29, scope: !618, inlinedAt: !1252)
!1320 = !DILocation(line: 219, column: 14, scope: !618, inlinedAt: !1252)
!1321 = !DILocation(line: 220, column: 3, scope: !618, inlinedAt: !1252)
!1322 = !DILocation(line: 221, column: 16, scope: !615, inlinedAt: !1252)
!1323 = !DILocation(line: 221, column: 36, scope: !615, inlinedAt: !1252)
!1324 = !DILocation(line: 221, column: 14, scope: !615, inlinedAt: !1252)
!1325 = !DILocation(line: 222, column: 9, scope: !604, inlinedAt: !1252)
!1326 = !DILocation(line: 222, column: 7, scope: !604, inlinedAt: !1252)
!1327 = !DILocation(line: 223, column: 2, scope: !604, inlinedAt: !1252)
!1328 = !DILocation(line: 223, column: 14, scope: !565, inlinedAt: !1252)
!1329 = !DILocation(line: 223, column: 13, scope: !566, inlinedAt: !1252)
!1330 = !DILocation(line: 225, column: 33, scope: !633, inlinedAt: !1252)
!1331 = !DILocation(line: 225, column: 39, scope: !633, inlinedAt: !1252)
!1332 = !DILocation(line: 225, column: 31, scope: !633, inlinedAt: !1252)
!1333 = !DILocation(line: 225, column: 3, scope: !633, inlinedAt: !1252)
!1334 = !DILocation(line: 225, column: 8, scope: !633, inlinedAt: !1252)
!1335 = !DILocation(line: 225, column: 26, scope: !633, inlinedAt: !1252)
!1336 = !DILocation(line: 226, column: 12, scope: !633, inlinedAt: !1252)
!1337 = !DILocation(line: 226, column: 10, scope: !633, inlinedAt: !1252)
!1338 = !DILocation(line: 227, column: 21, scope: !633, inlinedAt: !1252)
!1339 = !DILocation(line: 227, column: 27, scope: !633, inlinedAt: !1252)
!1340 = !DILocation(line: 227, column: 32, scope: !633, inlinedAt: !1252)
!1341 = !DILocation(line: 227, column: 40, scope: !633, inlinedAt: !1252)
!1342 = !DILocation(line: 227, column: 3, scope: !633, inlinedAt: !1252)
!1343 = !DILocation(line: 228, column: 13, scope: !633, inlinedAt: !1252)
!1344 = !DILocation(line: 229, column: 9, scope: !633, inlinedAt: !1252)
!1345 = !DILocation(line: 229, column: 7, scope: !633, inlinedAt: !1252)
!1346 = !DILocation(line: 230, column: 2, scope: !633, inlinedAt: !1252)
!1347 = !DILocation(line: 231, column: 31, scope: !564, inlinedAt: !1252)
!1348 = !DILocation(line: 233, column: 9, scope: !564, inlinedAt: !1252)
!1349 = !DILocation(line: 233, column: 16, scope: !564, inlinedAt: !1252)
!1350 = !DILocation(line: 233, column: 7, scope: !564, inlinedAt: !1252)
!1351 = !DILocation(line: 234, column: 8, scope: !655, inlinedAt: !1252)
!1352 = !DILocation(line: 234, column: 7, scope: !564, inlinedAt: !1252)
!1353 = !DILocation(line: 244, column: 13, scope: !658, inlinedAt: !1252)
!1354 = !DILocation(line: 244, column: 11, scope: !658, inlinedAt: !1252)
!1355 = !DILocation(line: 245, column: 13, scope: !658, inlinedAt: !1252)
!1356 = !DILocation(line: 245, column: 24, scope: !658, inlinedAt: !1252)
!1357 = !DILocation(line: 245, column: 11, scope: !658, inlinedAt: !1252)
!1358 = !DILocation(line: 247, column: 4, scope: !658, inlinedAt: !1252)
!1359 = !DILocation(line: 247, column: 13, scope: !658, inlinedAt: !1252)
!1360 = !DILocation(line: 247, column: 18, scope: !658, inlinedAt: !1252)
!1361 = !DILocation(line: 247, column: 24, scope: !658, inlinedAt: !1252)
!1362 = !DILocation(line: 248, column: 3, scope: !658, inlinedAt: !1252)
!1363 = !DILocation(line: 263, column: 4, scope: !669, inlinedAt: !1252)
!1364 = !DILocation(line: 264, column: 14, scope: !671, inlinedAt: !1252)
!1365 = !DILocation(line: 264, column: 12, scope: !671, inlinedAt: !1252)
!1366 = !DILocation(line: 265, column: 17, scope: !671, inlinedAt: !1252)
!1367 = !DILocation(line: 265, column: 15, scope: !671, inlinedAt: !1252)
!1368 = !DILocation(line: 266, column: 11, scope: !671, inlinedAt: !1252)
!1369 = !DILocation(line: 266, column: 16, scope: !671, inlinedAt: !1252)
!1370 = !DILocation(line: 266, column: 9, scope: !671, inlinedAt: !1252)
!1371 = !DILocation(line: 267, column: 13, scope: !669, inlinedAt: !1252)
!1372 = !DILocation(line: 267, column: 4, scope: !671, inlinedAt: !1252)
!1373 = distinct !{!1373, !1363, !1374}
!1374 = !DILocation(line: 267, column: 16, scope: !669, inlinedAt: !1252)
!1375 = !DILocation(line: 268, column: 13, scope: !669, inlinedAt: !1252)
!1376 = !DILocation(line: 268, column: 24, scope: !669, inlinedAt: !1252)
!1377 = !DILocation(line: 268, column: 11, scope: !669, inlinedAt: !1252)
!1378 = !DILocation(line: 269, column: 4, scope: !686, inlinedAt: !1252)
!1379 = !DILocation(line: 270, column: 4, scope: !689, inlinedAt: !1252)
!1380 = !DILocation(line: 271, column: 18, scope: !669, inlinedAt: !1252)
!1381 = !DILocation(line: 271, column: 25, scope: !669, inlinedAt: !1252)
!1382 = !DILocation(line: 271, column: 4, scope: !669, inlinedAt: !1252)
!1383 = !DILocation(line: 273, column: 4, scope: !669, inlinedAt: !1252)
!1384 = !DILocation(line: 273, column: 13, scope: !669, inlinedAt: !1252)
!1385 = !DILocation(line: 273, column: 18, scope: !669, inlinedAt: !1252)
!1386 = !DILocation(line: 273, column: 24, scope: !669, inlinedAt: !1252)
!1387 = !DILocation(line: 274, column: 4, scope: !669, inlinedAt: !1252)
!1388 = !DILocation(line: 274, column: 13, scope: !669, inlinedAt: !1252)
!1389 = !DILocation(line: 274, column: 23, scope: !669, inlinedAt: !1252)
!1390 = !DILocation(line: 274, column: 31, scope: !669, inlinedAt: !1252)
!1391 = !DILocation(line: 277, column: 9, scope: !564, inlinedAt: !1252)
!1392 = !DILocation(line: 277, column: 15, scope: !564, inlinedAt: !1252)
!1393 = !DILocation(line: 277, column: 7, scope: !564, inlinedAt: !1252)
!1394 = !DILocation(line: 278, column: 3, scope: !706, inlinedAt: !1252)
!1395 = !DILocation(line: 279, column: 17, scope: !564, inlinedAt: !1252)
!1396 = !DILocation(line: 279, column: 22, scope: !564, inlinedAt: !1252)
!1397 = !DILocation(line: 279, column: 3, scope: !564, inlinedAt: !1252)
!1398 = !DILocation(line: 281, column: 8, scope: !564, inlinedAt: !1252)
!1399 = !DILocation(line: 281, column: 14, scope: !564, inlinedAt: !1252)
!1400 = !DILocation(line: 281, column: 6, scope: !564, inlinedAt: !1252)
!1401 = !DILocation(line: 282, column: 9, scope: !564, inlinedAt: !1252)
!1402 = !DILocation(line: 282, column: 7, scope: !564, inlinedAt: !1252)
!1403 = !DILocation(line: 283, column: 21, scope: !564, inlinedAt: !1252)
!1404 = !DILocation(line: 283, column: 27, scope: !564, inlinedAt: !1252)
!1405 = !DILocation(line: 283, column: 38, scope: !564, inlinedAt: !1252)
!1406 = !DILocation(line: 283, column: 43, scope: !564, inlinedAt: !1252)
!1407 = !DILocation(line: 283, column: 3, scope: !564, inlinedAt: !1252)
!1408 = !DILocation(line: 285, column: 7, scope: !722, inlinedAt: !1252)
!1409 = !DILocation(line: 285, column: 7, scope: !564, inlinedAt: !1252)
!1410 = !DILocation(line: 286, column: 24, scope: !725, inlinedAt: !1252)
!1411 = !DILocation(line: 286, column: 32, scope: !725, inlinedAt: !1252)
!1412 = !DILocation(line: 286, column: 4, scope: !725, inlinedAt: !1252)
!1413 = !DILocation(line: 287, column: 14, scope: !725, inlinedAt: !1252)
!1414 = !DILocation(line: 288, column: 3, scope: !725, inlinedAt: !1252)
!1415 = !DILocation(line: 289, column: 16, scope: !731, inlinedAt: !1252)
!1416 = !DILocation(line: 289, column: 41, scope: !731, inlinedAt: !1252)
!1417 = !DILocation(line: 289, column: 14, scope: !731, inlinedAt: !1252)
!1418 = !DILocation(line: 291, column: 34, scope: !564, inlinedAt: !1252)
!1419 = !DILocation(line: 291, column: 3, scope: !564, inlinedAt: !1252)
!1420 = !DILocation(line: 291, column: 14, scope: !564, inlinedAt: !1252)
!1421 = !DILocation(line: 291, column: 32, scope: !564, inlinedAt: !1252)
!1422 = !DILocation(line: 292, column: 9, scope: !564, inlinedAt: !1252)
!1423 = !DILocation(line: 292, column: 7, scope: !564, inlinedAt: !1252)
!1424 = !DILocation(line: 295, column: 2, scope: !538, inlinedAt: !1252)
!1425 = !DILocation(line: 295, column: 11, scope: !538, inlinedAt: !1252)
!1426 = !DILocation(line: 295, column: 21, scope: !538, inlinedAt: !1252)
!1427 = !DILocation(line: 296, column: 9, scope: !538, inlinedAt: !1252)
!1428 = !DILocation(line: 304, column: 6, scope: !745, inlinedAt: !1253)
!1429 = !DILocation(line: 304, column: 6, scope: !545, inlinedAt: !1253)
!1430 = !DILocation(line: 305, column: 20, scope: !745, inlinedAt: !1253)
!1431 = !DILocation(line: 305, column: 31, scope: !745, inlinedAt: !1253)
!1432 = !DILocation(line: 305, column: 37, scope: !745, inlinedAt: !1253)
!1433 = !DILocation(line: 305, column: 46, scope: !745, inlinedAt: !1253)
!1434 = !DILocation(line: 305, column: 3, scope: !745, inlinedAt: !1253)
!1435 = distinct !DISubprogram(name: "list_del", scope: !386, file: !386, line: 144, type: !1436, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !65}
!1438 = !DILocalVariable(name: "entry", arg: 1, scope: !1435, file: !386, line: 144, type: !65)
!1439 = !DILocation(line: 144, column: 47, scope: !1435)
!1440 = !DILocation(line: 146, column: 19, scope: !1435)
!1441 = !DILocation(line: 146, column: 2, scope: !1435)
!1442 = !DILocation(line: 147, column: 2, scope: !1435)
!1443 = !DILocation(line: 147, column: 9, scope: !1435)
!1444 = !DILocation(line: 147, column: 14, scope: !1435)
!1445 = !DILocation(line: 148, column: 2, scope: !1435)
!1446 = !DILocation(line: 148, column: 9, scope: !1435)
!1447 = !DILocation(line: 148, column: 14, scope: !1435)
!1448 = !DILocation(line: 149, column: 1, scope: !1435)
!1449 = distinct !DISubprogram(name: "clear_bit_unlock", scope: !1450, file: !1450, line: 23, type: !340, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1450 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-lock.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !DILocalVariable(name: "nr", arg: 1, scope: !1452, file: !346, line: 72, type: !84)
!1452 = distinct !DISubprogram(name: "arch_clear_bit", scope: !346, file: !346, line: 72, type: !340, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1453 = !DILocation(line: 72, column: 21, scope: !1452, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 88, column: 2, scope: !1455, inlinedAt: !1456)
!1455 = distinct !DISubprogram(name: "arch_clear_bit_unlock", scope: !346, file: !346, line: 85, type: !340, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1456 = distinct !DILocation(line: 26, column: 2, scope: !1449)
!1457 = !DILocalVariable(name: "addr", arg: 2, scope: !1452, file: !346, line: 72, type: !342)
!1458 = !DILocation(line: 72, column: 49, scope: !1452, inlinedAt: !1454)
!1459 = !DILocalVariable(name: "nr", arg: 1, scope: !1455, file: !346, line: 85, type: !84)
!1460 = !DILocation(line: 85, column: 28, scope: !1455, inlinedAt: !1456)
!1461 = !DILocalVariable(name: "addr", arg: 2, scope: !1455, file: !346, line: 85, type: !342)
!1462 = !DILocation(line: 85, column: 56, scope: !1455, inlinedAt: !1456)
!1463 = !DILocalVariable(name: "v", arg: 1, scope: !1464, file: !353, line: 84, type: !356)
!1464 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !353, file: !353, line: 84, type: !354, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1465 = !DILocation(line: 84, column: 74, scope: !1464, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 25, column: 2, scope: !1449)
!1467 = !DILocalVariable(name: "size", arg: 2, scope: !1464, file: !353, line: 84, type: !359)
!1468 = !DILocation(line: 84, column: 84, scope: !1464, inlinedAt: !1466)
!1469 = !DILocalVariable(name: "nr", arg: 1, scope: !1449, file: !1450, line: 23, type: !84)
!1470 = !DILocation(line: 23, column: 42, scope: !1449)
!1471 = !DILocalVariable(name: "addr", arg: 2, scope: !1449, file: !1450, line: 23, type: !342)
!1472 = !DILocation(line: 23, column: 70, scope: !1449)
!1473 = !DILocation(line: 25, column: 26, scope: !1449)
!1474 = !DILocation(line: 25, column: 33, scope: !1449)
!1475 = !DILocation(line: 25, column: 31, scope: !1449)
!1476 = !DILocation(line: 86, column: 20, scope: !1464, inlinedAt: !1466)
!1477 = !DILocation(line: 86, column: 23, scope: !1464, inlinedAt: !1466)
!1478 = !DILocation(line: 86, column: 2, scope: !1464, inlinedAt: !1466)
!1479 = !DILocation(line: 87, column: 2, scope: !1464, inlinedAt: !1466)
!1480 = !DILocation(line: 26, column: 24, scope: !1449)
!1481 = !DILocation(line: 26, column: 28, scope: !1449)
!1482 = !DILocation(line: 87, column: 2, scope: !1455, inlinedAt: !1456)
!1483 = !{i32 -2147158628}
!1484 = !DILocation(line: 88, column: 17, scope: !1455, inlinedAt: !1456)
!1485 = !DILocation(line: 88, column: 21, scope: !1455, inlinedAt: !1456)
!1486 = !DILocation(line: 74, column: 27, scope: !1487, inlinedAt: !1454)
!1487 = distinct !DILexicalBlock(scope: !1452, file: !346, line: 74, column: 6)
!1488 = !DILocation(line: 74, column: 6, scope: !1487, inlinedAt: !1454)
!1489 = !DILocation(line: 74, column: 6, scope: !1452, inlinedAt: !1454)
!1490 = !DILocation(line: 76, column: 6, scope: !1491, inlinedAt: !1454)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !346, line: 74, column: 32)
!1492 = !DILocation(line: 77, column: 13, scope: !1491, inlinedAt: !1454)
!1493 = !DILocation(line: 77, column: 12, scope: !1491, inlinedAt: !1454)
!1494 = !DILocation(line: 75, column: 3, scope: !1491, inlinedAt: !1454)
!1495 = !{i32 -2147159185}
!1496 = !DILocation(line: 78, column: 2, scope: !1491, inlinedAt: !1454)
!1497 = !DILocation(line: 80, column: 8, scope: !1498, inlinedAt: !1454)
!1498 = distinct !DILexicalBlock(scope: !1487, file: !346, line: 78, column: 9)
!1499 = !DILocation(line: 80, column: 32, scope: !1498, inlinedAt: !1454)
!1500 = !DILocation(line: 79, column: 3, scope: !1498, inlinedAt: !1454)
!1501 = !{i32 -2147159053}
!1502 = !DILocation(line: 27, column: 1, scope: !1449)
!1503 = distinct !DISubprogram(name: "drm_mm_replace_node", scope: !3, file: !3, line: 663, type: !400, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1504 = !DILocalVariable(name: "old", arg: 1, scope: !1503, file: !3, line: 663, type: !38)
!1505 = !DILocation(line: 663, column: 46, scope: !1503)
!1506 = !DILocalVariable(name: "new", arg: 2, scope: !1503, file: !3, line: 663, type: !38)
!1507 = !DILocation(line: 663, column: 71, scope: !1503)
!1508 = !DILocalVariable(name: "mm", scope: !1503, file: !3, line: 665, type: !50)
!1509 = !DILocation(line: 665, column: 17, scope: !1503)
!1510 = !DILocation(line: 665, column: 22, scope: !1503)
!1511 = !DILocation(line: 665, column: 27, scope: !1503)
!1512 = !DILocation(line: 669, column: 3, scope: !1503)
!1513 = !DILocation(line: 669, column: 10, scope: !1503)
!1514 = !DILocation(line: 669, column: 9, scope: !1503)
!1515 = !DILocation(line: 671, column: 40, scope: !1503)
!1516 = !DILocation(line: 671, column: 45, scope: !1503)
!1517 = !DILocation(line: 671, column: 2, scope: !1503)
!1518 = !DILocation(line: 672, column: 16, scope: !1503)
!1519 = !DILocation(line: 672, column: 21, scope: !1503)
!1520 = !DILocation(line: 672, column: 33, scope: !1503)
!1521 = !DILocation(line: 672, column: 38, scope: !1503)
!1522 = !DILocation(line: 672, column: 2, scope: !1503)
!1523 = !DILocation(line: 673, column: 26, scope: !1503)
!1524 = !DILocation(line: 673, column: 31, scope: !1503)
!1525 = !DILocation(line: 673, column: 36, scope: !1503)
!1526 = !DILocation(line: 673, column: 41, scope: !1503)
!1527 = !DILocation(line: 673, column: 46, scope: !1503)
!1528 = !DILocation(line: 673, column: 50, scope: !1503)
!1529 = !DILocation(line: 673, column: 2, scope: !1503)
!1530 = !DILocation(line: 675, column: 26, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 675, column: 6)
!1532 = !DILocation(line: 675, column: 6, scope: !1531)
!1533 = !DILocation(line: 675, column: 6, scope: !1503)
!1534 = !DILocation(line: 676, column: 17, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 675, column: 32)
!1536 = !DILocation(line: 676, column: 22, scope: !1535)
!1537 = !DILocation(line: 676, column: 35, scope: !1535)
!1538 = !DILocation(line: 676, column: 40, scope: !1535)
!1539 = !DILocation(line: 676, column: 3, scope: !1535)
!1540 = !DILocation(line: 677, column: 27, scope: !1535)
!1541 = !DILocation(line: 677, column: 32, scope: !1535)
!1542 = !DILocation(line: 678, column: 13, scope: !1535)
!1543 = !DILocation(line: 678, column: 18, scope: !1535)
!1544 = !DILocation(line: 679, column: 13, scope: !1535)
!1545 = !DILocation(line: 679, column: 17, scope: !1535)
!1546 = !DILocation(line: 677, column: 3, scope: !1535)
!1547 = !DILocation(line: 680, column: 20, scope: !1535)
!1548 = !DILocation(line: 680, column: 25, scope: !1535)
!1549 = !DILocation(line: 681, column: 6, scope: !1535)
!1550 = !DILocation(line: 681, column: 11, scope: !1535)
!1551 = !DILocation(line: 682, column: 6, scope: !1535)
!1552 = !DILocation(line: 682, column: 10, scope: !1535)
!1553 = !DILocation(line: 680, column: 3, scope: !1535)
!1554 = !DILocation(line: 683, column: 2, scope: !1535)
!1555 = !DILocation(line: 685, column: 47, scope: !1503)
!1556 = !DILocation(line: 685, column: 52, scope: !1503)
!1557 = !DILocation(line: 685, column: 2, scope: !1503)
!1558 = !DILocation(line: 686, column: 1, scope: !1503)
!1559 = distinct !DISubprogram(name: "list_replace", scope: !386, file: !386, line: 158, type: !387, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1560 = !DILocalVariable(name: "old", arg: 1, scope: !1559, file: !386, line: 158, type: !65)
!1561 = !DILocation(line: 158, column: 51, scope: !1559)
!1562 = !DILocalVariable(name: "new", arg: 2, scope: !1559, file: !386, line: 159, type: !65)
!1563 = !DILocation(line: 159, column: 23, scope: !1559)
!1564 = !DILocation(line: 161, column: 14, scope: !1559)
!1565 = !DILocation(line: 161, column: 19, scope: !1559)
!1566 = !DILocation(line: 161, column: 2, scope: !1559)
!1567 = !DILocation(line: 161, column: 7, scope: !1559)
!1568 = !DILocation(line: 161, column: 12, scope: !1559)
!1569 = !DILocation(line: 162, column: 20, scope: !1559)
!1570 = !DILocation(line: 162, column: 2, scope: !1559)
!1571 = !DILocation(line: 162, column: 7, scope: !1559)
!1572 = !DILocation(line: 162, column: 13, scope: !1559)
!1573 = !DILocation(line: 162, column: 18, scope: !1559)
!1574 = !DILocation(line: 163, column: 14, scope: !1559)
!1575 = !DILocation(line: 163, column: 19, scope: !1559)
!1576 = !DILocation(line: 163, column: 2, scope: !1559)
!1577 = !DILocation(line: 163, column: 7, scope: !1559)
!1578 = !DILocation(line: 163, column: 12, scope: !1559)
!1579 = !DILocation(line: 164, column: 20, scope: !1559)
!1580 = !DILocation(line: 164, column: 2, scope: !1559)
!1581 = !DILocation(line: 164, column: 7, scope: !1559)
!1582 = !DILocation(line: 164, column: 13, scope: !1559)
!1583 = !DILocation(line: 164, column: 18, scope: !1559)
!1584 = !DILocation(line: 165, column: 1, scope: !1559)
!1585 = distinct !DISubprogram(name: "rb_replace_node_cached", scope: !24, file: !24, line: 152, type: !1586, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !30, !30, !22}
!1588 = !DILocalVariable(name: "victim", arg: 1, scope: !1585, file: !24, line: 152, type: !30)
!1589 = !DILocation(line: 152, column: 59, scope: !1585)
!1590 = !DILocalVariable(name: "new", arg: 2, scope: !1585, file: !24, line: 153, type: !30)
!1591 = !DILocation(line: 153, column: 24, scope: !1585)
!1592 = !DILocalVariable(name: "root", arg: 3, scope: !1585, file: !24, line: 154, type: !22)
!1593 = !DILocation(line: 154, column: 31, scope: !1585)
!1594 = !DILocation(line: 156, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1585, file: !24, line: 156, column: 6)
!1596 = !DILocation(line: 156, column: 12, scope: !1595)
!1597 = !DILocation(line: 156, column: 27, scope: !1595)
!1598 = !DILocation(line: 156, column: 24, scope: !1595)
!1599 = !DILocation(line: 156, column: 6, scope: !1585)
!1600 = !DILocation(line: 157, column: 23, scope: !1595)
!1601 = !DILocation(line: 157, column: 3, scope: !1595)
!1602 = !DILocation(line: 157, column: 9, scope: !1595)
!1603 = !DILocation(line: 157, column: 21, scope: !1595)
!1604 = !DILocation(line: 158, column: 18, scope: !1585)
!1605 = !DILocation(line: 158, column: 26, scope: !1585)
!1606 = !DILocation(line: 158, column: 32, scope: !1585)
!1607 = !DILocation(line: 158, column: 38, scope: !1585)
!1608 = !DILocation(line: 158, column: 2, scope: !1585)
!1609 = !DILocation(line: 159, column: 1, scope: !1585)
!1610 = distinct !DISubprogram(name: "drm_mm_scan_init_with_range", scope: !3, file: !3, line: 739, type: !1611, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !1613, !50, !43, !43, !34, !43, !43, !5}
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_scan", file: !6, line: 225, size: 640, elements: !1615)
!1615 = !{!1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1614, file: !6, line: 227, baseType: !50, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1614, file: !6, line: 229, baseType: !43, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1614, file: !6, line: 230, baseType: !43, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "remainder_mask", scope: !1614, file: !6, line: 231, baseType: !43, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1614, file: !6, line: 233, baseType: !43, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1614, file: !6, line: 234, baseType: !43, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "hit_start", scope: !1614, file: !6, line: 236, baseType: !43, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "hit_end", scope: !1614, file: !6, line: 237, baseType: !43, size: 64, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !1614, file: !6, line: 239, baseType: !34, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1614, file: !6, line: 240, baseType: !5, size: 32, offset: 576)
!1626 = !DILocalVariable(name: "scan", arg: 1, scope: !1610, file: !3, line: 739, type: !1613)
!1627 = !DILocation(line: 739, column: 54, scope: !1610)
!1628 = !DILocalVariable(name: "mm", arg: 2, scope: !1610, file: !3, line: 740, type: !50)
!1629 = !DILocation(line: 740, column: 21, scope: !1610)
!1630 = !DILocalVariable(name: "size", arg: 3, scope: !1610, file: !3, line: 741, type: !43)
!1631 = !DILocation(line: 741, column: 10, scope: !1610)
!1632 = !DILocalVariable(name: "alignment", arg: 4, scope: !1610, file: !3, line: 742, type: !43)
!1633 = !DILocation(line: 742, column: 10, scope: !1610)
!1634 = !DILocalVariable(name: "color", arg: 5, scope: !1610, file: !3, line: 743, type: !34)
!1635 = !DILocation(line: 743, column: 20, scope: !1610)
!1636 = !DILocalVariable(name: "start", arg: 6, scope: !1610, file: !3, line: 744, type: !43)
!1637 = !DILocation(line: 744, column: 10, scope: !1610)
!1638 = !DILocalVariable(name: "end", arg: 7, scope: !1610, file: !3, line: 745, type: !43)
!1639 = !DILocation(line: 745, column: 10, scope: !1610)
!1640 = !DILocalVariable(name: "mode", arg: 8, scope: !1610, file: !3, line: 746, type: !5)
!1641 = !DILocation(line: 746, column: 30, scope: !1610)
!1642 = !DILocation(line: 752, column: 13, scope: !1610)
!1643 = !DILocation(line: 752, column: 2, scope: !1610)
!1644 = !DILocation(line: 752, column: 8, scope: !1610)
!1645 = !DILocation(line: 752, column: 11, scope: !1610)
!1646 = !DILocation(line: 754, column: 6, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 754, column: 6)
!1648 = !DILocation(line: 754, column: 16, scope: !1647)
!1649 = !DILocation(line: 754, column: 6, scope: !1610)
!1650 = !DILocation(line: 755, column: 13, scope: !1647)
!1651 = !DILocation(line: 755, column: 3, scope: !1647)
!1652 = !DILocation(line: 757, column: 16, scope: !1610)
!1653 = !DILocation(line: 757, column: 2, scope: !1610)
!1654 = !DILocation(line: 757, column: 8, scope: !1610)
!1655 = !DILocation(line: 757, column: 14, scope: !1610)
!1656 = !DILocation(line: 758, column: 20, scope: !1610)
!1657 = !DILocation(line: 758, column: 2, scope: !1610)
!1658 = !DILocation(line: 758, column: 8, scope: !1610)
!1659 = !DILocation(line: 758, column: 18, scope: !1610)
!1660 = !DILocation(line: 759, column: 39, scope: !1610)
!1661 = !DILocation(line: 759, column: 25, scope: !1610)
!1662 = !DILocation(line: 759, column: 52, scope: !1610)
!1663 = !DILocation(line: 759, column: 62, scope: !1610)
!1664 = !DILocation(line: 759, column: 2, scope: !1610)
!1665 = !DILocation(line: 759, column: 8, scope: !1610)
!1666 = !DILocation(line: 759, column: 23, scope: !1610)
!1667 = !DILocation(line: 760, column: 15, scope: !1610)
!1668 = !DILocation(line: 760, column: 2, scope: !1610)
!1669 = !DILocation(line: 760, column: 8, scope: !1610)
!1670 = !DILocation(line: 760, column: 13, scope: !1610)
!1671 = !DILocation(line: 761, column: 15, scope: !1610)
!1672 = !DILocation(line: 761, column: 2, scope: !1610)
!1673 = !DILocation(line: 761, column: 8, scope: !1610)
!1674 = !DILocation(line: 761, column: 13, scope: !1610)
!1675 = !DILocation(line: 764, column: 22, scope: !1610)
!1676 = !DILocation(line: 764, column: 2, scope: !1610)
!1677 = !DILocation(line: 764, column: 8, scope: !1610)
!1678 = !DILocation(line: 764, column: 20, scope: !1610)
!1679 = !DILocation(line: 765, column: 20, scope: !1610)
!1680 = !DILocation(line: 765, column: 2, scope: !1610)
!1681 = !DILocation(line: 765, column: 8, scope: !1610)
!1682 = !DILocation(line: 765, column: 18, scope: !1610)
!1683 = !DILocation(line: 767, column: 2, scope: !1610)
!1684 = !DILocation(line: 767, column: 8, scope: !1610)
!1685 = !DILocation(line: 767, column: 18, scope: !1610)
!1686 = !DILocation(line: 768, column: 2, scope: !1610)
!1687 = !DILocation(line: 768, column: 8, scope: !1610)
!1688 = !DILocation(line: 768, column: 16, scope: !1610)
!1689 = !DILocation(line: 769, column: 1, scope: !1610)
!1690 = distinct !DISubprogram(name: "drm_mm_scan_add_block", scope: !3, file: !3, line: 783, type: !1691, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!418, !1613, !38}
!1693 = !DILocalVariable(name: "scan", arg: 1, scope: !1690, file: !3, line: 783, type: !1613)
!1694 = !DILocation(line: 783, column: 48, scope: !1690)
!1695 = !DILocalVariable(name: "node", arg: 2, scope: !1690, file: !3, line: 784, type: !38)
!1696 = !DILocation(line: 784, column: 27, scope: !1690)
!1697 = !DILocalVariable(name: "mm", scope: !1690, file: !3, line: 786, type: !50)
!1698 = !DILocation(line: 786, column: 17, scope: !1690)
!1699 = !DILocation(line: 786, column: 22, scope: !1690)
!1700 = !DILocation(line: 786, column: 28, scope: !1690)
!1701 = !DILocalVariable(name: "hole", scope: !1690, file: !3, line: 787, type: !38)
!1702 = !DILocation(line: 787, column: 22, scope: !1690)
!1703 = !DILocalVariable(name: "hole_start", scope: !1690, file: !3, line: 788, type: !43)
!1704 = !DILocation(line: 788, column: 6, scope: !1690)
!1705 = !DILocalVariable(name: "hole_end", scope: !1690, file: !3, line: 788, type: !43)
!1706 = !DILocation(line: 788, column: 18, scope: !1690)
!1707 = !DILocalVariable(name: "col_start", scope: !1690, file: !3, line: 789, type: !43)
!1708 = !DILocation(line: 789, column: 6, scope: !1690)
!1709 = !DILocalVariable(name: "col_end", scope: !1690, file: !3, line: 789, type: !43)
!1710 = !DILocation(line: 789, column: 17, scope: !1690)
!1711 = !DILocalVariable(name: "adj_start", scope: !1690, file: !3, line: 790, type: !43)
!1712 = !DILocation(line: 790, column: 6, scope: !1690)
!1713 = !DILocalVariable(name: "adj_end", scope: !1690, file: !3, line: 790, type: !43)
!1714 = !DILocation(line: 790, column: 17, scope: !1690)
!1715 = !DILocation(line: 795, column: 38, scope: !1690)
!1716 = !DILocation(line: 795, column: 44, scope: !1690)
!1717 = !DILocation(line: 795, column: 2, scope: !1690)
!1718 = !DILocation(line: 796, column: 2, scope: !1690)
!1719 = !DILocation(line: 796, column: 6, scope: !1690)
!1720 = !DILocation(line: 796, column: 17, scope: !1690)
!1721 = !DILocalVariable(name: "__mptr", scope: !1722, file: !3, line: 803, type: !81)
!1722 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 803, column: 9)
!1723 = !DILocation(line: 803, column: 9, scope: !1722)
!1724 = !DILocation(line: 803, column: 9, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 803, column: 9)
!1726 = !DILocation(line: 803, column: 7, scope: !1690)
!1727 = !DILocation(line: 805, column: 20, scope: !1690)
!1728 = !DILocation(line: 805, column: 26, scope: !1690)
!1729 = !DILocation(line: 805, column: 2, scope: !1690)
!1730 = !DILocation(line: 807, column: 40, scope: !1690)
!1731 = !DILocation(line: 807, column: 15, scope: !1690)
!1732 = !DILocation(line: 807, column: 13, scope: !1690)
!1733 = !DILocation(line: 808, column: 36, scope: !1690)
!1734 = !DILocation(line: 808, column: 13, scope: !1690)
!1735 = !DILocation(line: 808, column: 11, scope: !1690)
!1736 = !DILocation(line: 810, column: 14, scope: !1690)
!1737 = !DILocation(line: 810, column: 12, scope: !1690)
!1738 = !DILocation(line: 811, column: 12, scope: !1690)
!1739 = !DILocation(line: 811, column: 10, scope: !1690)
!1740 = !DILocation(line: 812, column: 6, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 812, column: 6)
!1742 = !DILocation(line: 812, column: 10, scope: !1741)
!1743 = !DILocation(line: 812, column: 6, scope: !1690)
!1744 = !DILocation(line: 813, column: 3, scope: !1741)
!1745 = !DILocation(line: 813, column: 7, scope: !1741)
!1746 = !DILocation(line: 813, column: 20, scope: !1741)
!1747 = !DILocation(line: 813, column: 26, scope: !1741)
!1748 = !DILocation(line: 813, column: 32, scope: !1741)
!1749 = !DILocalVariable(name: "__UNIQUE_ID___x260", scope: !1750, file: !3, line: 815, type: !43)
!1750 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 815, column: 14)
!1751 = !DILocation(line: 815, column: 14, scope: !1750)
!1752 = !DILocalVariable(name: "__UNIQUE_ID___y261", scope: !1750, file: !3, line: 815, type: !43)
!1753 = !DILocation(line: 815, column: 12, scope: !1690)
!1754 = !DILocalVariable(name: "__UNIQUE_ID___x262", scope: !1755, file: !3, line: 816, type: !43)
!1755 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 816, column: 12)
!1756 = !DILocation(line: 816, column: 12, scope: !1755)
!1757 = !DILocalVariable(name: "__UNIQUE_ID___y263", scope: !1755, file: !3, line: 816, type: !43)
!1758 = !DILocation(line: 816, column: 10, scope: !1690)
!1759 = !DILocation(line: 817, column: 6, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 817, column: 6)
!1761 = !DILocation(line: 817, column: 17, scope: !1760)
!1762 = !DILocation(line: 817, column: 14, scope: !1760)
!1763 = !DILocation(line: 817, column: 27, scope: !1760)
!1764 = !DILocation(line: 817, column: 30, scope: !1760)
!1765 = !DILocation(line: 817, column: 40, scope: !1760)
!1766 = !DILocation(line: 817, column: 38, scope: !1760)
!1767 = !DILocation(line: 817, column: 52, scope: !1760)
!1768 = !DILocation(line: 817, column: 58, scope: !1760)
!1769 = !DILocation(line: 817, column: 50, scope: !1760)
!1770 = !DILocation(line: 817, column: 6, scope: !1690)
!1771 = !DILocation(line: 818, column: 3, scope: !1760)
!1772 = !DILocation(line: 820, column: 6, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 820, column: 6)
!1774 = !DILocation(line: 820, column: 12, scope: !1773)
!1775 = !DILocation(line: 820, column: 17, scope: !1773)
!1776 = !DILocation(line: 820, column: 6, scope: !1690)
!1777 = !DILocation(line: 821, column: 15, scope: !1773)
!1778 = !DILocation(line: 821, column: 25, scope: !1773)
!1779 = !DILocation(line: 821, column: 31, scope: !1773)
!1780 = !DILocation(line: 821, column: 23, scope: !1773)
!1781 = !DILocation(line: 821, column: 13, scope: !1773)
!1782 = !DILocation(line: 821, column: 3, scope: !1773)
!1783 = !DILocation(line: 823, column: 6, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 823, column: 6)
!1785 = !DILocation(line: 823, column: 12, scope: !1784)
!1786 = !DILocation(line: 823, column: 6, scope: !1690)
!1787 = !DILocalVariable(name: "rem", scope: !1788, file: !3, line: 824, type: !43)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 823, column: 23)
!1789 = !DILocation(line: 824, column: 7, scope: !1788)
!1790 = !DILocation(line: 826, column: 7, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 826, column: 7)
!1792 = !DILocation(line: 826, column: 7, scope: !1788)
!1793 = !DILocation(line: 827, column: 10, scope: !1791)
!1794 = !DILocation(line: 827, column: 22, scope: !1791)
!1795 = !DILocation(line: 827, column: 28, scope: !1791)
!1796 = !DILocation(line: 827, column: 20, scope: !1791)
!1797 = !DILocation(line: 827, column: 8, scope: !1791)
!1798 = !DILocation(line: 827, column: 4, scope: !1791)
!1799 = !DILocation(line: 829, column: 18, scope: !1791)
!1800 = !DILocation(line: 829, column: 29, scope: !1791)
!1801 = !DILocation(line: 829, column: 35, scope: !1791)
!1802 = !DILocation(line: 829, column: 4, scope: !1791)
!1803 = !DILocation(line: 830, column: 7, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 830, column: 7)
!1805 = !DILocation(line: 830, column: 7, scope: !1788)
!1806 = !DILocation(line: 831, column: 17, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 830, column: 12)
!1808 = !DILocation(line: 831, column: 14, scope: !1807)
!1809 = !DILocation(line: 832, column: 8, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 832, column: 8)
!1811 = !DILocation(line: 832, column: 14, scope: !1810)
!1812 = !DILocation(line: 832, column: 19, scope: !1810)
!1813 = !DILocation(line: 832, column: 8, scope: !1807)
!1814 = !DILocation(line: 833, column: 18, scope: !1810)
!1815 = !DILocation(line: 833, column: 24, scope: !1810)
!1816 = !DILocation(line: 833, column: 15, scope: !1810)
!1817 = !DILocation(line: 833, column: 5, scope: !1810)
!1818 = !DILocation(line: 834, column: 8, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 834, column: 8)
!1820 = !DILocalVariable(name: "__UNIQUE_ID___x264", scope: !1821, file: !3, line: 834, type: !43)
!1821 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 834, column: 20)
!1822 = !DILocation(line: 834, column: 20, scope: !1821)
!1823 = !DILocalVariable(name: "__UNIQUE_ID___y265", scope: !1821, file: !3, line: 834, type: !43)
!1824 = !DILocation(line: 834, column: 18, scope: !1819)
!1825 = !DILocation(line: 834, column: 54, scope: !1819)
!1826 = !DILocalVariable(name: "__UNIQUE_ID___x266", scope: !1827, file: !3, line: 835, type: !43)
!1827 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 835, column: 8)
!1828 = !DILocation(line: 835, column: 8, scope: !1827)
!1829 = !DILocalVariable(name: "__UNIQUE_ID___y267", scope: !1827, file: !3, line: 835, type: !43)
!1830 = !DILocation(line: 835, column: 40, scope: !1819)
!1831 = !DILocation(line: 835, column: 38, scope: !1819)
!1832 = !DILocation(line: 835, column: 52, scope: !1819)
!1833 = !DILocation(line: 835, column: 58, scope: !1819)
!1834 = !DILocation(line: 835, column: 50, scope: !1819)
!1835 = !DILocation(line: 834, column: 8, scope: !1807)
!1836 = !DILocation(line: 836, column: 5, scope: !1819)
!1837 = !DILocation(line: 838, column: 8, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 838, column: 8)
!1839 = !DILocation(line: 838, column: 19, scope: !1838)
!1840 = !DILocation(line: 838, column: 16, scope: !1838)
!1841 = !DILocation(line: 838, column: 29, scope: !1838)
!1842 = !DILocation(line: 839, column: 8, scope: !1838)
!1843 = !DILocation(line: 839, column: 18, scope: !1838)
!1844 = !DILocation(line: 839, column: 16, scope: !1838)
!1845 = !DILocation(line: 839, column: 30, scope: !1838)
!1846 = !DILocation(line: 839, column: 36, scope: !1838)
!1847 = !DILocation(line: 839, column: 28, scope: !1838)
!1848 = !DILocation(line: 838, column: 8, scope: !1807)
!1849 = !DILocation(line: 840, column: 5, scope: !1838)
!1850 = !DILocation(line: 841, column: 3, scope: !1807)
!1851 = !DILocation(line: 842, column: 2, scope: !1788)
!1852 = !DILocation(line: 844, column: 20, scope: !1690)
!1853 = !DILocation(line: 844, column: 2, scope: !1690)
!1854 = !DILocation(line: 844, column: 8, scope: !1690)
!1855 = !DILocation(line: 844, column: 18, scope: !1690)
!1856 = !DILocation(line: 845, column: 18, scope: !1690)
!1857 = !DILocation(line: 845, column: 30, scope: !1690)
!1858 = !DILocation(line: 845, column: 36, scope: !1690)
!1859 = !DILocation(line: 845, column: 28, scope: !1690)
!1860 = !DILocation(line: 845, column: 2, scope: !1690)
!1861 = !DILocation(line: 845, column: 8, scope: !1690)
!1862 = !DILocation(line: 845, column: 16, scope: !1690)
!1863 = !DILocation(line: 851, column: 2, scope: !1690)
!1864 = !DILocation(line: 852, column: 1, scope: !1690)
!1865 = distinct !DISubprogram(name: "__list_del_entry", scope: !386, file: !386, line: 130, type: !1436, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1866 = !DILocalVariable(name: "entry", arg: 1, scope: !1865, file: !386, line: 130, type: !65)
!1867 = !DILocation(line: 130, column: 55, scope: !1865)
!1868 = !DILocation(line: 132, column: 30, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !386, line: 132, column: 6)
!1870 = !DILocation(line: 132, column: 7, scope: !1869)
!1871 = !DILocation(line: 132, column: 6, scope: !1865)
!1872 = !DILocation(line: 133, column: 3, scope: !1869)
!1873 = !DILocation(line: 135, column: 13, scope: !1865)
!1874 = !DILocation(line: 135, column: 20, scope: !1865)
!1875 = !DILocation(line: 135, column: 26, scope: !1865)
!1876 = !DILocation(line: 135, column: 33, scope: !1865)
!1877 = !DILocation(line: 135, column: 2, scope: !1865)
!1878 = !DILocation(line: 136, column: 1, scope: !1865)
!1879 = distinct !DISubprogram(name: "__drm_mm_hole_node_end", scope: !6, file: !6, line: 318, type: !328, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1880 = !DILocalVariable(name: "hole_node", arg: 1, scope: !1879, file: !6, line: 318, type: !57)
!1881 = !DILocation(line: 318, column: 68, scope: !1879)
!1882 = !DILocalVariable(name: "__mptr", scope: !1883, file: !6, line: 320, type: !81)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !6, line: 320, column: 9)
!1884 = !DILocation(line: 320, column: 9, scope: !1883)
!1885 = !DILocation(line: 320, column: 9, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !6, line: 320, column: 9)
!1887 = !DILocation(line: 320, column: 48, scope: !1879)
!1888 = !DILocation(line: 320, column: 2, scope: !1879)
!1889 = distinct !DISubprogram(name: "drm_mm_scan_remove_block", scope: !3, file: !3, line: 874, type: !1691, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1890 = !DILocalVariable(name: "scan", arg: 1, scope: !1889, file: !3, line: 874, type: !1613)
!1891 = !DILocation(line: 874, column: 51, scope: !1889)
!1892 = !DILocalVariable(name: "node", arg: 2, scope: !1889, file: !3, line: 875, type: !38)
!1893 = !DILocation(line: 875, column: 30, scope: !1889)
!1894 = !DILocalVariable(name: "prev_node", scope: !1889, file: !3, line: 877, type: !38)
!1895 = !DILocation(line: 877, column: 22, scope: !1889)
!1896 = !DILocation(line: 881, column: 40, scope: !1889)
!1897 = !DILocation(line: 881, column: 46, scope: !1889)
!1898 = !DILocation(line: 881, column: 2, scope: !1889)
!1899 = !DILocation(line: 884, column: 2, scope: !1889)
!1900 = !DILocation(line: 884, column: 8, scope: !1889)
!1901 = !DILocation(line: 884, column: 12, scope: !1889)
!1902 = !DILocation(line: 884, column: 23, scope: !1889)
!1903 = !DILocalVariable(name: "__mptr", scope: !1904, file: !3, line: 894, type: !81)
!1904 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 894, column: 14)
!1905 = !DILocation(line: 894, column: 14, scope: !1904)
!1906 = !DILocation(line: 894, column: 14, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 894, column: 14)
!1908 = !DILocation(line: 894, column: 12, scope: !1889)
!1909 = !DILocation(line: 897, column: 12, scope: !1889)
!1910 = !DILocation(line: 897, column: 18, scope: !1889)
!1911 = !DILocation(line: 897, column: 30, scope: !1889)
!1912 = !DILocation(line: 897, column: 41, scope: !1889)
!1913 = !DILocation(line: 897, column: 2, scope: !1889)
!1914 = !DILocation(line: 899, column: 10, scope: !1889)
!1915 = !DILocation(line: 899, column: 16, scope: !1889)
!1916 = !DILocation(line: 899, column: 24, scope: !1889)
!1917 = !DILocation(line: 899, column: 30, scope: !1889)
!1918 = !DILocation(line: 899, column: 22, scope: !1889)
!1919 = !DILocation(line: 899, column: 37, scope: !1889)
!1920 = !DILocation(line: 899, column: 43, scope: !1889)
!1921 = !DILocation(line: 899, column: 35, scope: !1889)
!1922 = !DILocation(line: 899, column: 53, scope: !1889)
!1923 = !DILocation(line: 900, column: 3, scope: !1889)
!1924 = !DILocation(line: 900, column: 9, scope: !1889)
!1925 = !DILocation(line: 900, column: 17, scope: !1889)
!1926 = !DILocation(line: 900, column: 23, scope: !1889)
!1927 = !DILocation(line: 900, column: 15, scope: !1889)
!1928 = !DILocation(line: 0, scope: !1889)
!1929 = !DILocation(line: 899, column: 2, scope: !1889)
!1930 = distinct !DISubprogram(name: "__clear_bit", scope: !339, file: !339, line: 40, type: !340, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1931 = !DILocalVariable(name: "nr", arg: 1, scope: !1932, file: !346, line: 92, type: !84)
!1932 = distinct !DISubprogram(name: "arch___clear_bit", scope: !346, file: !346, line: 92, type: !340, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1933 = !DILocation(line: 92, column: 23, scope: !1932, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 43, column: 2, scope: !1930)
!1935 = !DILocalVariable(name: "addr", arg: 2, scope: !1932, file: !346, line: 92, type: !342)
!1936 = !DILocation(line: 92, column: 51, scope: !1932, inlinedAt: !1934)
!1937 = !DILocation(line: 39, column: 67, scope: !352, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 42, column: 2, scope: !1930)
!1939 = !DILocation(line: 39, column: 77, scope: !352, inlinedAt: !1938)
!1940 = !DILocalVariable(name: "nr", arg: 1, scope: !1930, file: !339, line: 40, type: !84)
!1941 = !DILocation(line: 40, column: 37, scope: !1930)
!1942 = !DILocalVariable(name: "addr", arg: 2, scope: !1930, file: !339, line: 40, type: !342)
!1943 = !DILocation(line: 40, column: 65, scope: !1930)
!1944 = !DILocation(line: 42, column: 19, scope: !1930)
!1945 = !DILocation(line: 42, column: 26, scope: !1930)
!1946 = !DILocation(line: 42, column: 24, scope: !1930)
!1947 = !DILocation(line: 41, column: 20, scope: !352, inlinedAt: !1938)
!1948 = !DILocation(line: 41, column: 23, scope: !352, inlinedAt: !1938)
!1949 = !DILocation(line: 41, column: 2, scope: !352, inlinedAt: !1938)
!1950 = !DILocation(line: 42, column: 2, scope: !352, inlinedAt: !1938)
!1951 = !DILocation(line: 43, column: 19, scope: !1930)
!1952 = !DILocation(line: 43, column: 23, scope: !1930)
!1953 = !DILocation(line: 94, column: 44, scope: !1932, inlinedAt: !1934)
!1954 = !DILocation(line: 94, column: 56, scope: !1932, inlinedAt: !1934)
!1955 = !DILocation(line: 94, column: 2, scope: !1932, inlinedAt: !1934)
!1956 = !{i32 -2147158304}
!1957 = !DILocation(line: 44, column: 1, scope: !1930)
!1958 = distinct !DISubprogram(name: "drm_mm_scan_color_evict", scope: !3, file: !3, line: 915, type: !1959, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!38, !1613}
!1961 = !DILocalVariable(name: "scan", arg: 1, scope: !1958, file: !3, line: 915, type: !1613)
!1962 = !DILocation(line: 915, column: 65, scope: !1958)
!1963 = !DILocalVariable(name: "mm", scope: !1958, file: !3, line: 917, type: !50)
!1964 = !DILocation(line: 917, column: 17, scope: !1958)
!1965 = !DILocation(line: 917, column: 22, scope: !1958)
!1966 = !DILocation(line: 917, column: 28, scope: !1958)
!1967 = !DILocalVariable(name: "hole", scope: !1958, file: !3, line: 918, type: !38)
!1968 = !DILocation(line: 918, column: 22, scope: !1958)
!1969 = !DILocalVariable(name: "hole_start", scope: !1958, file: !3, line: 919, type: !43)
!1970 = !DILocation(line: 919, column: 6, scope: !1958)
!1971 = !DILocalVariable(name: "hole_end", scope: !1958, file: !3, line: 919, type: !43)
!1972 = !DILocation(line: 919, column: 18, scope: !1958)
!1973 = !DILocation(line: 923, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 923, column: 6)
!1975 = !DILocation(line: 923, column: 11, scope: !1974)
!1976 = !DILocation(line: 923, column: 6, scope: !1958)
!1977 = !DILocation(line: 924, column: 3, scope: !1974)
!1978 = !DILocalVariable(name: "__mptr", scope: !1979, file: !3, line: 931, type: !81)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 931, column: 2)
!1980 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 931, column: 2)
!1981 = !DILocation(line: 931, column: 2, scope: !1979)
!1982 = !DILocation(line: 931, column: 2, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 931, column: 2)
!1984 = !DILocation(line: 931, column: 2, scope: !1980)
!1985 = !DILocation(line: 931, column: 2, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 931, column: 2)
!1987 = !DILocation(line: 932, column: 41, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 931, column: 57)
!1989 = !DILocation(line: 932, column: 16, scope: !1988)
!1990 = !DILocation(line: 932, column: 14, scope: !1988)
!1991 = !DILocation(line: 933, column: 14, scope: !1988)
!1992 = !DILocation(line: 933, column: 27, scope: !1988)
!1993 = !DILocation(line: 933, column: 33, scope: !1988)
!1994 = !DILocation(line: 933, column: 25, scope: !1988)
!1995 = !DILocation(line: 933, column: 12, scope: !1988)
!1996 = !DILocation(line: 935, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 935, column: 7)
!1998 = !DILocation(line: 935, column: 21, scope: !1997)
!1999 = !DILocation(line: 935, column: 27, scope: !1997)
!2000 = !DILocation(line: 935, column: 18, scope: !1997)
!2001 = !DILocation(line: 935, column: 37, scope: !1997)
!2002 = !DILocation(line: 936, column: 7, scope: !1997)
!2003 = !DILocation(line: 936, column: 19, scope: !1997)
!2004 = !DILocation(line: 936, column: 25, scope: !1997)
!2005 = !DILocation(line: 936, column: 16, scope: !1997)
!2006 = !DILocation(line: 935, column: 7, scope: !1988)
!2007 = !DILocation(line: 937, column: 4, scope: !1997)
!2008 = !DILocation(line: 938, column: 2, scope: !1988)
!2009 = !DILocalVariable(name: "__mptr", scope: !2010, file: !3, line: 931, type: !81)
!2010 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 931, column: 2)
!2011 = !DILocation(line: 931, column: 2, scope: !2010)
!2012 = !DILocation(line: 931, column: 2, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 931, column: 2)
!2014 = distinct !{!2014, !1984, !2015}
!2015 = !DILocation(line: 938, column: 2, scope: !1980)
!2016 = !DILocation(line: 942, column: 6, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 942, column: 6)
!2018 = !DILocation(line: 942, column: 6, scope: !1958)
!2019 = !DILocation(line: 943, column: 3, scope: !2017)
!2020 = !DILocation(line: 948, column: 2, scope: !1958)
!2021 = !DILocation(line: 948, column: 6, scope: !1958)
!2022 = !DILocation(line: 948, column: 19, scope: !1958)
!2023 = !DILocation(line: 948, column: 25, scope: !1958)
!2024 = !DILocation(line: 948, column: 31, scope: !1958)
!2025 = !DILocation(line: 949, column: 6, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 949, column: 6)
!2027 = !DILocation(line: 949, column: 19, scope: !2026)
!2028 = !DILocation(line: 949, column: 25, scope: !2026)
!2029 = !DILocation(line: 949, column: 17, scope: !2026)
!2030 = !DILocation(line: 949, column: 6, scope: !1958)
!2031 = !DILocation(line: 950, column: 10, scope: !2026)
!2032 = !DILocation(line: 950, column: 3, scope: !2026)
!2033 = !DILocation(line: 951, column: 6, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 951, column: 6)
!2035 = !DILocation(line: 951, column: 17, scope: !2034)
!2036 = !DILocation(line: 951, column: 23, scope: !2034)
!2037 = !DILocation(line: 951, column: 15, scope: !2034)
!2038 = !DILocation(line: 951, column: 6, scope: !1958)
!2039 = !DILocalVariable(name: "__mptr", scope: !2040, file: !3, line: 952, type: !81)
!2040 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 952, column: 10)
!2041 = !DILocation(line: 952, column: 10, scope: !2040)
!2042 = !DILocation(line: 952, column: 10, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 952, column: 10)
!2044 = !DILocation(line: 952, column: 3, scope: !2034)
!2045 = !DILocation(line: 954, column: 2, scope: !1958)
!2046 = !DILocation(line: 955, column: 1, scope: !1958)
!2047 = distinct !DISubprogram(name: "drm_mm_init", scope: !3, file: !3, line: 966, type: !2048, scopeLine: 967, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !50, !43, !43}
!2050 = !DILocalVariable(name: "mm", arg: 1, scope: !2047, file: !3, line: 966, type: !50)
!2051 = !DILocation(line: 966, column: 33, scope: !2047)
!2052 = !DILocalVariable(name: "start", arg: 2, scope: !2047, file: !3, line: 966, type: !43)
!2053 = !DILocation(line: 966, column: 41, scope: !2047)
!2054 = !DILocalVariable(name: "size", arg: 3, scope: !2047, file: !3, line: 966, type: !43)
!2055 = !DILocation(line: 966, column: 52, scope: !2047)
!2056 = !DILocation(line: 970, column: 2, scope: !2047)
!2057 = !DILocation(line: 970, column: 6, scope: !2047)
!2058 = !DILocation(line: 970, column: 19, scope: !2047)
!2059 = !DILocation(line: 972, column: 18, scope: !2047)
!2060 = !DILocation(line: 972, column: 22, scope: !2047)
!2061 = !DILocation(line: 972, column: 2, scope: !2047)
!2062 = !DILocation(line: 973, column: 2, scope: !2047)
!2063 = !DILocation(line: 973, column: 6, scope: !2047)
!2064 = !DILocation(line: 973, column: 22, scope: !2047)
!2065 = !DILocation(line: 974, column: 2, scope: !2047)
!2066 = !DILocation(line: 974, column: 6, scope: !2047)
!2067 = !DILocation(line: 974, column: 19, scope: !2047)
!2068 = !DILocation(line: 975, column: 2, scope: !2047)
!2069 = !DILocation(line: 975, column: 6, scope: !2047)
!2070 = !DILocation(line: 975, column: 19, scope: !2047)
!2071 = !DILocation(line: 978, column: 18, scope: !2047)
!2072 = !DILocation(line: 978, column: 22, scope: !2047)
!2073 = !DILocation(line: 978, column: 32, scope: !2047)
!2074 = !DILocation(line: 978, column: 2, scope: !2047)
!2075 = !DILocation(line: 979, column: 2, scope: !2047)
!2076 = !DILocation(line: 979, column: 6, scope: !2047)
!2077 = !DILocation(line: 979, column: 16, scope: !2047)
!2078 = !DILocation(line: 979, column: 22, scope: !2047)
!2079 = !DILocation(line: 980, column: 21, scope: !2047)
!2080 = !DILocation(line: 980, column: 2, scope: !2047)
!2081 = !DILocation(line: 980, column: 6, scope: !2047)
!2082 = !DILocation(line: 980, column: 16, scope: !2047)
!2083 = !DILocation(line: 980, column: 19, scope: !2047)
!2084 = !DILocation(line: 981, column: 24, scope: !2047)
!2085 = !DILocation(line: 981, column: 32, scope: !2047)
!2086 = !DILocation(line: 981, column: 30, scope: !2047)
!2087 = !DILocation(line: 981, column: 2, scope: !2047)
!2088 = !DILocation(line: 981, column: 6, scope: !2047)
!2089 = !DILocation(line: 981, column: 16, scope: !2047)
!2090 = !DILocation(line: 981, column: 22, scope: !2047)
!2091 = !DILocation(line: 982, column: 24, scope: !2047)
!2092 = !DILocation(line: 982, column: 23, scope: !2047)
!2093 = !DILocation(line: 982, column: 2, scope: !2047)
!2094 = !DILocation(line: 982, column: 6, scope: !2047)
!2095 = !DILocation(line: 982, column: 16, scope: !2047)
!2096 = !DILocation(line: 982, column: 21, scope: !2047)
!2097 = !DILocation(line: 983, column: 12, scope: !2047)
!2098 = !DILocation(line: 983, column: 16, scope: !2047)
!2099 = !DILocation(line: 983, column: 2, scope: !2047)
!2100 = !DILocation(line: 985, column: 2, scope: !2047)
!2101 = !DILocation(line: 985, column: 6, scope: !2047)
!2102 = !DILocation(line: 985, column: 18, scope: !2047)
!2103 = !DILocation(line: 986, column: 1, scope: !2047)
!2104 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !386, file: !386, line: 33, type: !1436, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2105 = !DILocalVariable(name: "list", arg: 1, scope: !2104, file: !386, line: 33, type: !65)
!2106 = !DILocation(line: 33, column: 53, scope: !2104)
!2107 = !DILocation(line: 35, column: 2, scope: !2104)
!2108 = !DILocation(line: 35, column: 2, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2104, file: !386, line: 35, column: 2)
!2110 = !DILocation(line: 35, column: 2, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2109, file: !386, line: 35, column: 2)
!2112 = !DILocation(line: 35, column: 2, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !386, line: 35, column: 2)
!2114 = !DILocation(line: 36, column: 15, scope: !2104)
!2115 = !DILocation(line: 36, column: 2, scope: !2104)
!2116 = !DILocation(line: 36, column: 8, scope: !2104)
!2117 = !DILocation(line: 36, column: 13, scope: !2104)
!2118 = !DILocation(line: 37, column: 1, scope: !2104)
!2119 = distinct !DISubprogram(name: "drm_mm_takedown", scope: !3, file: !3, line: 996, type: !2120, scopeLine: 997, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !50}
!2122 = !DILocalVariable(name: "mm", arg: 1, scope: !2119, file: !3, line: 996, type: !50)
!2123 = !DILocation(line: 996, column: 37, scope: !2119)
!2124 = !DILocalVariable(name: "__ret_warn_on", scope: !2125, file: !3, line: 998, type: !161)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 998, column: 6)
!2126 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 998, column: 6)
!2127 = !DILocation(line: 998, column: 6, scope: !2125)
!2128 = !DILocation(line: 998, column: 6, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 998, column: 6)
!2130 = !DILocation(line: 998, column: 6, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 998, column: 6)
!2132 = !DILocation(line: 998, column: 6, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 998, column: 6)
!2134 = !DILocation(line: 998, column: 6, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 998, column: 6)
!2136 = !DILocation(line: 998, column: 6, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 998, column: 6)
!2138 = !DILocation(line: 998, column: 6, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 998, column: 6)
!2140 = !{i32 -2142699543, i32 -2142699514, i32 -2142699468, i32 -2142699410, i32 -2142699356, i32 -2142699302, i32 -2142699247, i32 -2142699216}
!2141 = !DILocation(line: 998, column: 6, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 998, column: 6)
!2143 = !{i32 -2142698799, i32 -2142698792, i32 -2142698740, i32 -2142698709, i32 -2142698679}
!2144 = !DILocation(line: 998, column: 6, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 998, column: 6)
!2146 = !DILocation(line: 998, column: 6, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 998, column: 6)
!2148 = !DILocation(line: 998, column: 6, scope: !2126)
!2149 = !DILocation(line: 998, column: 6, scope: !2119)
!2150 = !DILocation(line: 1000, column: 14, scope: !2126)
!2151 = !DILocation(line: 1000, column: 3, scope: !2126)
!2152 = !DILocation(line: 1001, column: 1, scope: !2119)
!2153 = distinct !DISubprogram(name: "drm_mm_clean", scope: !6, file: !6, line: 476, type: !2154, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!418, !116}
!2156 = !DILocalVariable(name: "mm", arg: 1, scope: !2153, file: !6, line: 476, type: !116)
!2157 = !DILocation(line: 476, column: 54, scope: !2153)
!2158 = !DILocation(line: 478, column: 20, scope: !2153)
!2159 = !DILocation(line: 478, column: 9, scope: !2153)
!2160 = !DILocation(line: 478, column: 2, scope: !2153)
!2161 = distinct !DISubprogram(name: "show_leaks", scope: !3, file: !3, line: 149, type: !2120, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2162 = !DILocalVariable(name: "mm", arg: 1, scope: !2161, file: !3, line: 149, type: !50)
!2163 = !DILocation(line: 149, column: 39, scope: !2161)
!2164 = !DILocation(line: 149, column: 45, scope: !2161)
!2165 = distinct !DISubprogram(name: "drm_mm_print", scope: !3, file: !3, line: 1022, type: !2166, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !116, !2168}
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !2170, line: 75, size: 256, elements: !2171)
!2170 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/lizy2001/genbc/linux")
!2171 = !{!2172, !2198, !2202, !2203}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !2169, file: !2170, line: 77, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null, !2168, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !2178, line: 90, size: 128, elements: !2179)
!2178 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !{!2180, !2183}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !2177, file: !2178, line: 91, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !2177, file: !2178, line: 92, baseType: !2184, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2186, line: 99, baseType: !2187)
!2186 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2186, line: 40, baseType: !2188)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 1001, baseType: !2189)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2190, size: 192, elements: !2196)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 1001, size: 192, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2190, file: !3, line: 1001, baseType: !7, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2190, file: !3, line: 1001, baseType: !7, size: 32, offset: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2190, file: !3, line: 1001, baseType: !81, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2190, file: !3, line: 1001, baseType: !81, size: 64, offset: 128)
!2196 = !{!2197}
!2197 = !DISubrange(count: 1)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !2169, file: !2170, line: 78, baseType: !2199, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !2168, !2181}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2169, file: !2170, line: 79, baseType: !81, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !2169, file: !2170, line: 80, baseType: !2181, size: 64, offset: 192)
!2204 = !DILocalVariable(name: "mm", arg: 1, scope: !2165, file: !3, line: 1022, type: !116)
!2205 = !DILocation(line: 1022, column: 40, scope: !2165)
!2206 = !DILocalVariable(name: "p", arg: 2, scope: !2165, file: !3, line: 1022, type: !2168)
!2207 = !DILocation(line: 1022, column: 64, scope: !2165)
!2208 = !DILocalVariable(name: "entry", scope: !2165, file: !3, line: 1024, type: !57)
!2209 = !DILocation(line: 1024, column: 28, scope: !2165)
!2210 = !DILocalVariable(name: "total_used", scope: !2165, file: !3, line: 1025, type: !43)
!2211 = !DILocation(line: 1025, column: 6, scope: !2165)
!2212 = !DILocalVariable(name: "total_free", scope: !2165, file: !3, line: 1025, type: !43)
!2213 = !DILocation(line: 1025, column: 22, scope: !2165)
!2214 = !DILocalVariable(name: "total", scope: !2165, file: !3, line: 1025, type: !43)
!2215 = !DILocation(line: 1025, column: 38, scope: !2165)
!2216 = !DILocation(line: 1027, column: 33, scope: !2165)
!2217 = !DILocation(line: 1027, column: 37, scope: !2165)
!2218 = !DILocation(line: 1027, column: 41, scope: !2165)
!2219 = !DILocation(line: 1027, column: 16, scope: !2165)
!2220 = !DILocation(line: 1027, column: 13, scope: !2165)
!2221 = !DILocalVariable(name: "__mptr", scope: !2222, file: !3, line: 1029, type: !81)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 1029, column: 2)
!2223 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 1029, column: 2)
!2224 = !DILocation(line: 1029, column: 2, scope: !2222)
!2225 = !DILocation(line: 1029, column: 2, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 1029, column: 2)
!2227 = !DILocation(line: 1029, column: 2, scope: !2223)
!2228 = !DILocation(line: 1029, column: 2, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 1029, column: 2)
!2230 = !DILocation(line: 1030, column: 14, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 1029, column: 34)
!2232 = !DILocation(line: 1030, column: 52, scope: !2231)
!2233 = !DILocation(line: 1030, column: 59, scope: !2231)
!2234 = !DILocation(line: 1031, column: 7, scope: !2231)
!2235 = !DILocation(line: 1031, column: 14, scope: !2231)
!2236 = !DILocation(line: 1031, column: 22, scope: !2231)
!2237 = !DILocation(line: 1031, column: 29, scope: !2231)
!2238 = !DILocation(line: 1031, column: 20, scope: !2231)
!2239 = !DILocation(line: 1031, column: 35, scope: !2231)
!2240 = !DILocation(line: 1031, column: 42, scope: !2231)
!2241 = !DILocation(line: 1030, column: 3, scope: !2231)
!2242 = !DILocation(line: 1032, column: 17, scope: !2231)
!2243 = !DILocation(line: 1032, column: 24, scope: !2231)
!2244 = !DILocation(line: 1032, column: 14, scope: !2231)
!2245 = !DILocation(line: 1033, column: 34, scope: !2231)
!2246 = !DILocation(line: 1033, column: 37, scope: !2231)
!2247 = !DILocation(line: 1033, column: 17, scope: !2231)
!2248 = !DILocation(line: 1033, column: 14, scope: !2231)
!2249 = !DILocation(line: 1034, column: 2, scope: !2231)
!2250 = !DILocalVariable(name: "__mptr", scope: !2251, file: !3, line: 1029, type: !81)
!2251 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 1029, column: 2)
!2252 = !DILocation(line: 1029, column: 2, scope: !2251)
!2253 = !DILocation(line: 1029, column: 2, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1029, column: 2)
!2255 = distinct !{!2255, !2227, !2256}
!2256 = !DILocation(line: 1034, column: 2, scope: !2223)
!2257 = !DILocation(line: 1035, column: 10, scope: !2165)
!2258 = !DILocation(line: 1035, column: 23, scope: !2165)
!2259 = !DILocation(line: 1035, column: 21, scope: !2165)
!2260 = !DILocation(line: 1035, column: 8, scope: !2165)
!2261 = !DILocation(line: 1037, column: 13, scope: !2165)
!2262 = !DILocation(line: 1037, column: 54, scope: !2165)
!2263 = !DILocation(line: 1038, column: 6, scope: !2165)
!2264 = !DILocation(line: 1038, column: 18, scope: !2165)
!2265 = !DILocation(line: 1037, column: 2, scope: !2165)
!2266 = !DILocation(line: 1039, column: 1, scope: !2165)
!2267 = distinct !DISubprogram(name: "drm_mm_dump_hole", scope: !3, file: !3, line: 1004, type: !2268, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!43, !2168, !57}
!2270 = !DILocalVariable(name: "p", arg: 1, scope: !2267, file: !3, line: 1004, type: !2168)
!2271 = !DILocation(line: 1004, column: 49, scope: !2267)
!2272 = !DILocalVariable(name: "entry", arg: 2, scope: !2267, file: !3, line: 1004, type: !57)
!2273 = !DILocation(line: 1004, column: 78, scope: !2267)
!2274 = !DILocalVariable(name: "start", scope: !2267, file: !3, line: 1006, type: !43)
!2275 = !DILocation(line: 1006, column: 6, scope: !2267)
!2276 = !DILocalVariable(name: "size", scope: !2267, file: !3, line: 1006, type: !43)
!2277 = !DILocation(line: 1006, column: 13, scope: !2267)
!2278 = !DILocation(line: 1008, column: 9, scope: !2267)
!2279 = !DILocation(line: 1008, column: 16, scope: !2267)
!2280 = !DILocation(line: 1008, column: 7, scope: !2267)
!2281 = !DILocation(line: 1009, column: 6, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 1009, column: 6)
!2283 = !DILocation(line: 1009, column: 6, scope: !2267)
!2284 = !DILocation(line: 1010, column: 34, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1009, column: 12)
!2286 = !DILocation(line: 1010, column: 11, scope: !2285)
!2287 = !DILocation(line: 1010, column: 9, scope: !2285)
!2288 = !DILocation(line: 1011, column: 14, scope: !2285)
!2289 = !DILocation(line: 1012, column: 7, scope: !2285)
!2290 = !DILocation(line: 1012, column: 14, scope: !2285)
!2291 = !DILocation(line: 1012, column: 22, scope: !2285)
!2292 = !DILocation(line: 1012, column: 20, scope: !2285)
!2293 = !DILocation(line: 1012, column: 28, scope: !2285)
!2294 = !DILocation(line: 1011, column: 3, scope: !2285)
!2295 = !DILocation(line: 1013, column: 2, scope: !2285)
!2296 = !DILocation(line: 1015, column: 9, scope: !2267)
!2297 = !DILocation(line: 1015, column: 2, scope: !2267)
!2298 = distinct !DISubprogram(name: "drm_mm_interval_tree_subtree_search", scope: !3, file: !3, line: 155, type: !2299, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!38, !38, !43, !43}
!2301 = !DILocalVariable(name: "node", arg: 1, scope: !2298, file: !3, line: 155, type: !38)
!2302 = !DILocation(line: 155, column: 1, scope: !2298)
!2303 = !DILocalVariable(name: "start", arg: 2, scope: !2298, file: !3, line: 155, type: !43)
!2304 = !DILocalVariable(name: "last", arg: 3, scope: !2298, file: !3, line: 155, type: !43)
!2305 = !DILocation(line: 155, column: 1, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 155, column: 1)
!2307 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 155, column: 1)
!2308 = !DILocation(line: 155, column: 1, scope: !2307)
!2309 = !DILocalVariable(name: "left", scope: !2310, file: !3, line: 155, type: !38)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 155, column: 1)
!2311 = !DILocation(line: 155, column: 1, scope: !2310)
!2312 = !DILocalVariable(name: "__mptr", scope: !2313, file: !3, line: 155, type: !81)
!2313 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 155, column: 1)
!2314 = !DILocation(line: 155, column: 1, scope: !2313)
!2315 = !DILocation(line: 155, column: 1, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 155, column: 1)
!2317 = !DILocation(line: 155, column: 1, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 155, column: 1)
!2319 = !DILocation(line: 155, column: 1, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 155, column: 1)
!2321 = distinct !{!2321, !2302, !2302}
!2322 = !DILocation(line: 155, column: 1, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 155, column: 1)
!2324 = !DILocation(line: 155, column: 1, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 155, column: 1)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 155, column: 1)
!2327 = !DILocation(line: 155, column: 1, scope: !2326)
!2328 = !DILocation(line: 155, column: 1, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 155, column: 1)
!2330 = !DILocalVariable(name: "__mptr", scope: !2331, file: !3, line: 155, type: !81)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 155, column: 1)
!2332 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 155, column: 1)
!2333 = !DILocation(line: 155, column: 1, scope: !2331)
!2334 = !DILocation(line: 155, column: 1, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 155, column: 1)
!2336 = !DILocation(line: 155, column: 1, scope: !2332)
!2337 = !DILocation(line: 155, column: 1, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 155, column: 1)
!2339 = distinct !DISubprogram(name: "usable_hole_addr", scope: !3, file: !3, line: 328, type: !2340, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!418, !30, !43}
!2342 = !DILocalVariable(name: "rb", arg: 1, scope: !2339, file: !3, line: 328, type: !30)
!2343 = !DILocation(line: 328, column: 46, scope: !2339)
!2344 = !DILocalVariable(name: "size", arg: 2, scope: !2339, file: !3, line: 328, type: !43)
!2345 = !DILocation(line: 328, column: 54, scope: !2339)
!2346 = !DILocation(line: 330, column: 9, scope: !2339)
!2347 = !DILocation(line: 330, column: 12, scope: !2339)
!2348 = !DILocation(line: 330, column: 36, scope: !2339)
!2349 = !DILocation(line: 330, column: 15, scope: !2339)
!2350 = !DILocation(line: 330, column: 41, scope: !2339)
!2351 = !DILocation(line: 330, column: 61, scope: !2339)
!2352 = !DILocation(line: 330, column: 58, scope: !2339)
!2353 = !DILocation(line: 0, scope: !2339)
!2354 = !DILocation(line: 330, column: 2, scope: !2339)
!2355 = distinct !DISubprogram(name: "rb_hole_addr_to_node", scope: !3, file: !3, line: 303, type: !2356, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!38, !30}
!2358 = !DILocalVariable(name: "rb", arg: 1, scope: !2355, file: !3, line: 303, type: !30)
!2359 = !DILocation(line: 303, column: 72, scope: !2355)
!2360 = !DILocalVariable(name: "____ptr", scope: !2361, file: !3, line: 305, type: !30)
!2361 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 305, column: 9)
!2362 = !DILocation(line: 305, column: 9, scope: !2361)
!2363 = !DILocalVariable(name: "__mptr", scope: !2364, file: !3, line: 305, type: !81)
!2364 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 305, column: 9)
!2365 = !DILocation(line: 305, column: 9, scope: !2364)
!2366 = !DILocation(line: 305, column: 9, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 305, column: 9)
!2368 = !DILocation(line: 305, column: 2, scope: !2355)
!2369 = distinct !DISubprogram(name: "kasan_check_write", scope: !2370, file: !2370, line: 38, type: !2371, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2370 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!418, !356, !7}
!2373 = !DILocalVariable(name: "p", arg: 1, scope: !2369, file: !2370, line: 38, type: !356)
!2374 = !DILocation(line: 38, column: 59, scope: !2369)
!2375 = !DILocalVariable(name: "size", arg: 2, scope: !2369, file: !2370, line: 38, type: !7)
!2376 = !DILocation(line: 38, column: 75, scope: !2369)
!2377 = !DILocation(line: 40, column: 2, scope: !2369)
!2378 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2379, file: !2379, line: 178, type: !2380, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2379 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !356, !359, !161}
!2382 = !DILocalVariable(name: "ptr", arg: 1, scope: !2378, file: !2379, line: 178, type: !356)
!2383 = !DILocation(line: 178, column: 60, scope: !2378)
!2384 = !DILocalVariable(name: "size", arg: 2, scope: !2378, file: !2379, line: 178, type: !359)
!2385 = !DILocation(line: 178, column: 72, scope: !2378)
!2386 = !DILocalVariable(name: "type", arg: 3, scope: !2378, file: !2379, line: 179, type: !161)
!2387 = !DILocation(line: 179, column: 15, scope: !2378)
!2388 = !DILocation(line: 179, column: 23, scope: !2378)
!2389 = distinct !DISubprogram(name: "__list_add", scope: !386, file: !386, line: 63, type: !2390, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !65, !65, !65}
!2392 = !DILocalVariable(name: "new", arg: 1, scope: !2389, file: !386, line: 63, type: !65)
!2393 = !DILocation(line: 63, column: 49, scope: !2389)
!2394 = !DILocalVariable(name: "prev", arg: 2, scope: !2389, file: !386, line: 64, type: !65)
!2395 = !DILocation(line: 64, column: 28, scope: !2389)
!2396 = !DILocalVariable(name: "next", arg: 3, scope: !2389, file: !386, line: 65, type: !65)
!2397 = !DILocation(line: 65, column: 28, scope: !2389)
!2398 = !DILocation(line: 67, column: 24, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2389, file: !386, line: 67, column: 6)
!2400 = !DILocation(line: 67, column: 29, scope: !2399)
!2401 = !DILocation(line: 67, column: 35, scope: !2399)
!2402 = !DILocation(line: 67, column: 7, scope: !2399)
!2403 = !DILocation(line: 67, column: 6, scope: !2389)
!2404 = !DILocation(line: 68, column: 3, scope: !2399)
!2405 = !DILocation(line: 70, column: 15, scope: !2389)
!2406 = !DILocation(line: 70, column: 2, scope: !2389)
!2407 = !DILocation(line: 70, column: 8, scope: !2389)
!2408 = !DILocation(line: 70, column: 13, scope: !2389)
!2409 = !DILocation(line: 71, column: 14, scope: !2389)
!2410 = !DILocation(line: 71, column: 2, scope: !2389)
!2411 = !DILocation(line: 71, column: 7, scope: !2389)
!2412 = !DILocation(line: 71, column: 12, scope: !2389)
!2413 = !DILocation(line: 72, column: 14, scope: !2389)
!2414 = !DILocation(line: 72, column: 2, scope: !2389)
!2415 = !DILocation(line: 72, column: 7, scope: !2389)
!2416 = !DILocation(line: 72, column: 12, scope: !2389)
!2417 = !DILocation(line: 73, column: 2, scope: !2389)
!2418 = !DILocation(line: 73, column: 2, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2389, file: !386, line: 73, column: 2)
!2420 = !DILocation(line: 73, column: 2, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2419, file: !386, line: 73, column: 2)
!2422 = !DILocation(line: 73, column: 2, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !386, line: 73, column: 2)
!2424 = !DILocation(line: 74, column: 1, scope: !2389)
!2425 = distinct !DISubprogram(name: "__list_add_valid", scope: !386, file: !386, line: 45, type: !2426, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!418, !65, !65, !65}
!2428 = !DILocalVariable(name: "new", arg: 1, scope: !2425, file: !386, line: 45, type: !65)
!2429 = !DILocation(line: 45, column: 55, scope: !2425)
!2430 = !DILocalVariable(name: "prev", arg: 2, scope: !2425, file: !386, line: 46, type: !65)
!2431 = !DILocation(line: 46, column: 23, scope: !2425)
!2432 = !DILocalVariable(name: "next", arg: 3, scope: !2425, file: !386, line: 47, type: !65)
!2433 = !DILocation(line: 47, column: 23, scope: !2425)
!2434 = !DILocation(line: 49, column: 2, scope: !2425)
!2435 = distinct !DISubprogram(name: "drm_mm_node_allocated", scope: !6, file: !6, line: 256, type: !1241, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2436 = !DILocalVariable(name: "node", arg: 1, scope: !2435, file: !6, line: 256, type: !57)
!2437 = !DILocation(line: 256, column: 68, scope: !2435)
!2438 = !DILocation(line: 258, column: 46, scope: !2435)
!2439 = !DILocation(line: 258, column: 52, scope: !2435)
!2440 = !DILocation(line: 258, column: 9, scope: !2435)
!2441 = !DILocation(line: 258, column: 2, scope: !2435)
!2442 = distinct !DISubprogram(name: "rb_link_node", scope: !24, file: !24, line: 69, type: !2443, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{null, !30, !30, !411}
!2445 = !DILocalVariable(name: "node", arg: 1, scope: !2442, file: !24, line: 69, type: !30)
!2446 = !DILocation(line: 69, column: 49, scope: !2442)
!2447 = !DILocalVariable(name: "parent", arg: 2, scope: !2442, file: !24, line: 69, type: !30)
!2448 = !DILocation(line: 69, column: 71, scope: !2442)
!2449 = !DILocalVariable(name: "rb_link", arg: 3, scope: !2442, file: !24, line: 70, type: !411)
!2450 = !DILocation(line: 70, column: 22, scope: !2442)
!2451 = !DILocation(line: 72, column: 43, scope: !2442)
!2452 = !DILocation(line: 72, column: 28, scope: !2442)
!2453 = !DILocation(line: 72, column: 2, scope: !2442)
!2454 = !DILocation(line: 72, column: 8, scope: !2442)
!2455 = !DILocation(line: 72, column: 26, scope: !2442)
!2456 = !DILocation(line: 73, column: 18, scope: !2442)
!2457 = !DILocation(line: 73, column: 24, scope: !2442)
!2458 = !DILocation(line: 73, column: 33, scope: !2442)
!2459 = !DILocation(line: 73, column: 2, scope: !2442)
!2460 = !DILocation(line: 73, column: 8, scope: !2442)
!2461 = !DILocation(line: 73, column: 16, scope: !2442)
!2462 = !DILocation(line: 75, column: 13, scope: !2442)
!2463 = !DILocation(line: 75, column: 3, scope: !2442)
!2464 = !DILocation(line: 75, column: 11, scope: !2442)
!2465 = !DILocation(line: 76, column: 1, scope: !2442)
!2466 = distinct !DISubprogram(name: "rb_insert_augmented_cached", scope: !100, file: !100, line: 54, type: !2467, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null, !30, !22, !418, !542}
!2469 = !DILocalVariable(name: "node", arg: 1, scope: !2466, file: !100, line: 54, type: !30)
!2470 = !DILocation(line: 54, column: 44, scope: !2466)
!2471 = !DILocalVariable(name: "root", arg: 2, scope: !2466, file: !100, line: 55, type: !22)
!2472 = !DILocation(line: 55, column: 30, scope: !2466)
!2473 = !DILocalVariable(name: "newleft", arg: 3, scope: !2466, file: !100, line: 55, type: !418)
!2474 = !DILocation(line: 55, column: 41, scope: !2466)
!2475 = !DILocalVariable(name: "augment", arg: 4, scope: !2466, file: !100, line: 56, type: !542)
!2476 = !DILocation(line: 56, column: 42, scope: !2466)
!2477 = !DILocation(line: 58, column: 6, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2466, file: !100, line: 58, column: 6)
!2479 = !DILocation(line: 58, column: 6, scope: !2466)
!2480 = !DILocation(line: 59, column: 23, scope: !2478)
!2481 = !DILocation(line: 59, column: 3, scope: !2478)
!2482 = !DILocation(line: 59, column: 9, scope: !2478)
!2483 = !DILocation(line: 59, column: 21, scope: !2478)
!2484 = !DILocation(line: 60, column: 22, scope: !2466)
!2485 = !DILocation(line: 60, column: 29, scope: !2466)
!2486 = !DILocation(line: 60, column: 35, scope: !2466)
!2487 = !DILocation(line: 60, column: 44, scope: !2466)
!2488 = !DILocation(line: 60, column: 2, scope: !2466)
!2489 = !DILocation(line: 61, column: 1, scope: !2466)
!2490 = distinct !DISubprogram(name: "test_bit", scope: !339, file: !339, line: 132, type: !2491, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!418, !84, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!2495 = !DILocalVariable(name: "nr", arg: 1, scope: !2496, file: !346, line: 210, type: !84)
!2496 = distinct !DISubprogram(name: "variable_test_bit", scope: !346, file: !346, line: 210, type: !2491, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2497 = !DILocation(line: 210, column: 52, scope: !2496, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 135, column: 9, scope: !2490)
!2499 = !DILocalVariable(name: "addr", arg: 2, scope: !2496, file: !346, line: 210, type: !2493)
!2500 = !DILocation(line: 210, column: 86, scope: !2496, inlinedAt: !2498)
!2501 = !DILocalVariable(name: "oldbit", scope: !2496, file: !346, line: 212, type: !418)
!2502 = !DILocation(line: 212, column: 7, scope: !2496, inlinedAt: !2498)
!2503 = !DILocalVariable(name: "nr", arg: 1, scope: !2504, file: !346, line: 204, type: !84)
!2504 = distinct !DISubprogram(name: "constant_test_bit", scope: !346, file: !346, line: 204, type: !2491, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2505 = !DILocation(line: 204, column: 52, scope: !2504, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 135, column: 9, scope: !2490)
!2507 = !DILocalVariable(name: "addr", arg: 2, scope: !2504, file: !346, line: 204, type: !2493)
!2508 = !DILocation(line: 204, column: 86, scope: !2504, inlinedAt: !2506)
!2509 = !DILocalVariable(name: "v", arg: 1, scope: !2510, file: !353, line: 69, type: !356)
!2510 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !353, file: !353, line: 69, type: !354, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2511 = !DILocation(line: 69, column: 73, scope: !2510, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 134, column: 2, scope: !2490)
!2513 = !DILocalVariable(name: "size", arg: 2, scope: !2510, file: !353, line: 69, type: !359)
!2514 = !DILocation(line: 69, column: 83, scope: !2510, inlinedAt: !2512)
!2515 = !DILocalVariable(name: "nr", arg: 1, scope: !2490, file: !339, line: 132, type: !84)
!2516 = !DILocation(line: 132, column: 34, scope: !2490)
!2517 = !DILocalVariable(name: "addr", arg: 2, scope: !2490, file: !339, line: 132, type: !2493)
!2518 = !DILocation(line: 132, column: 68, scope: !2490)
!2519 = !DILocation(line: 134, column: 25, scope: !2490)
!2520 = !DILocation(line: 134, column: 32, scope: !2490)
!2521 = !DILocation(line: 134, column: 30, scope: !2490)
!2522 = !DILocation(line: 71, column: 19, scope: !2510, inlinedAt: !2512)
!2523 = !DILocation(line: 71, column: 22, scope: !2510, inlinedAt: !2512)
!2524 = !DILocation(line: 71, column: 2, scope: !2510, inlinedAt: !2512)
!2525 = !DILocation(line: 72, column: 2, scope: !2510, inlinedAt: !2512)
!2526 = !DILocation(line: 135, column: 9, scope: !2490)
!2527 = !DILocation(line: 206, column: 19, scope: !2504, inlinedAt: !2506)
!2528 = !DILocation(line: 206, column: 22, scope: !2504, inlinedAt: !2506)
!2529 = !DILocation(line: 206, column: 15, scope: !2504, inlinedAt: !2506)
!2530 = !DILocation(line: 207, column: 4, scope: !2504, inlinedAt: !2506)
!2531 = !DILocation(line: 207, column: 9, scope: !2504, inlinedAt: !2506)
!2532 = !DILocation(line: 207, column: 12, scope: !2504, inlinedAt: !2506)
!2533 = !DILocation(line: 206, column: 44, scope: !2504, inlinedAt: !2506)
!2534 = !DILocation(line: 207, column: 37, scope: !2504, inlinedAt: !2506)
!2535 = !DILocation(line: 217, column: 33, scope: !2496, inlinedAt: !2498)
!2536 = !DILocation(line: 217, column: 46, scope: !2496, inlinedAt: !2498)
!2537 = !DILocation(line: 214, column: 2, scope: !2496, inlinedAt: !2498)
!2538 = !{i32 -2147150891, i32 -2147150831}
!2539 = !DILocation(line: 219, column: 9, scope: !2496, inlinedAt: !2498)
!2540 = !DILocation(line: 135, column: 2, scope: !2490)
!2541 = distinct !DISubprogram(name: "kasan_check_read", scope: !2370, file: !2370, line: 34, type: !2371, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2542 = !DILocalVariable(name: "p", arg: 1, scope: !2541, file: !2370, line: 34, type: !356)
!2543 = !DILocation(line: 34, column: 58, scope: !2541)
!2544 = !DILocalVariable(name: "size", arg: 2, scope: !2541, file: !2370, line: 34, type: !7)
!2545 = !DILocation(line: 34, column: 74, scope: !2541)
!2546 = !DILocation(line: 36, column: 2, scope: !2541)
!2547 = distinct !DISubprogram(name: "rb_insert_augmented", scope: !100, file: !100, line: 47, type: !546, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2548 = !DILocalVariable(name: "node", arg: 1, scope: !2547, file: !100, line: 47, type: !30)
!2549 = !DILocation(line: 47, column: 37, scope: !2547)
!2550 = !DILocalVariable(name: "root", arg: 2, scope: !2547, file: !100, line: 47, type: !541)
!2551 = !DILocation(line: 47, column: 59, scope: !2547)
!2552 = !DILocalVariable(name: "augment", arg: 3, scope: !2547, file: !100, line: 48, type: !542)
!2553 = !DILocation(line: 48, column: 42, scope: !2547)
!2554 = !DILocation(line: 50, column: 24, scope: !2547)
!2555 = !DILocation(line: 50, column: 30, scope: !2547)
!2556 = !DILocation(line: 50, column: 36, scope: !2547)
!2557 = !DILocation(line: 50, column: 45, scope: !2547)
!2558 = !DILocation(line: 50, column: 2, scope: !2547)
!2559 = !DILocation(line: 51, column: 1, scope: !2547)
!2560 = distinct !DISubprogram(name: "drm_mm_interval_tree_augment_propagate", scope: !3, file: !3, line: 155, type: !104, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2561 = !DILocalVariable(name: "rb", arg: 1, scope: !2560, file: !3, line: 155, type: !30)
!2562 = !DILocation(line: 155, column: 1, scope: !2560)
!2563 = !DILocalVariable(name: "stop", arg: 2, scope: !2560, file: !3, line: 155, type: !30)
!2564 = !DILocalVariable(name: "node", scope: !2565, file: !3, line: 155, type: !38)
!2565 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 155, column: 1)
!2566 = !DILocation(line: 155, column: 1, scope: !2565)
!2567 = !DILocalVariable(name: "__mptr", scope: !2568, file: !3, line: 155, type: !81)
!2568 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 155, column: 1)
!2569 = !DILocation(line: 155, column: 1, scope: !2568)
!2570 = !DILocation(line: 155, column: 1, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 155, column: 1)
!2572 = !DILocation(line: 155, column: 1, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 155, column: 1)
!2574 = distinct !{!2574, !2562, !2562}
!2575 = distinct !DISubprogram(name: "drm_mm_interval_tree_augment_copy", scope: !3, file: !3, line: 155, type: !104, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2576 = !DILocalVariable(name: "rb_old", arg: 1, scope: !2575, file: !3, line: 155, type: !30)
!2577 = !DILocation(line: 155, column: 1, scope: !2575)
!2578 = !DILocalVariable(name: "rb_new", arg: 2, scope: !2575, file: !3, line: 155, type: !30)
!2579 = !DILocalVariable(name: "old", scope: !2575, file: !3, line: 155, type: !38)
!2580 = !DILocalVariable(name: "__mptr", scope: !2581, file: !3, line: 155, type: !81)
!2581 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 155, column: 1)
!2582 = !DILocation(line: 155, column: 1, scope: !2581)
!2583 = !DILocation(line: 155, column: 1, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 155, column: 1)
!2585 = !DILocalVariable(name: "new", scope: !2575, file: !3, line: 155, type: !38)
!2586 = !DILocalVariable(name: "__mptr", scope: !2587, file: !3, line: 155, type: !81)
!2587 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 155, column: 1)
!2588 = !DILocation(line: 155, column: 1, scope: !2587)
!2589 = !DILocation(line: 155, column: 1, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 155, column: 1)
!2591 = distinct !DISubprogram(name: "drm_mm_interval_tree_augment_rotate", scope: !3, file: !3, line: 155, type: !104, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2592 = !DILocalVariable(name: "rb_old", arg: 1, scope: !2591, file: !3, line: 155, type: !30)
!2593 = !DILocation(line: 155, column: 1, scope: !2591)
!2594 = !DILocalVariable(name: "rb_new", arg: 2, scope: !2591, file: !3, line: 155, type: !30)
!2595 = !DILocalVariable(name: "old", scope: !2591, file: !3, line: 155, type: !38)
!2596 = !DILocalVariable(name: "__mptr", scope: !2597, file: !3, line: 155, type: !81)
!2597 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 155, column: 1)
!2598 = !DILocation(line: 155, column: 1, scope: !2597)
!2599 = !DILocation(line: 155, column: 1, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 155, column: 1)
!2601 = !DILocalVariable(name: "new", scope: !2591, file: !3, line: 155, type: !38)
!2602 = !DILocalVariable(name: "__mptr", scope: !2603, file: !3, line: 155, type: !81)
!2603 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 155, column: 1)
!2604 = !DILocation(line: 155, column: 1, scope: !2603)
!2605 = !DILocation(line: 155, column: 1, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 155, column: 1)
!2607 = distinct !DISubprogram(name: "drm_mm_interval_tree_augment_compute_max", scope: !3, file: !3, line: 155, type: !2608, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!418, !38, !418}
!2610 = !DILocalVariable(name: "node", arg: 1, scope: !2607, file: !3, line: 155, type: !38)
!2611 = !DILocation(line: 155, column: 1, scope: !2607)
!2612 = !DILocalVariable(name: "exit", arg: 2, scope: !2607, file: !3, line: 155, type: !418)
!2613 = !DILocalVariable(name: "child", scope: !2607, file: !3, line: 155, type: !38)
!2614 = !DILocalVariable(name: "max", scope: !2607, file: !3, line: 155, type: !43)
!2615 = !DILocation(line: 155, column: 1, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 155, column: 1)
!2617 = !DILocalVariable(name: "__mptr", scope: !2618, file: !3, line: 155, type: !81)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 155, column: 1)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 155, column: 1)
!2620 = !DILocation(line: 155, column: 1, scope: !2618)
!2621 = !DILocation(line: 155, column: 1, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 155, column: 1)
!2623 = !DILocation(line: 155, column: 1, scope: !2619)
!2624 = !DILocation(line: 155, column: 1, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 155, column: 1)
!2626 = !DILocation(line: 155, column: 1, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 155, column: 1)
!2628 = !DILocalVariable(name: "__mptr", scope: !2629, file: !3, line: 155, type: !81)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 155, column: 1)
!2630 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 155, column: 1)
!2631 = !DILocation(line: 155, column: 1, scope: !2629)
!2632 = !DILocation(line: 155, column: 1, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 155, column: 1)
!2634 = !DILocation(line: 155, column: 1, scope: !2630)
!2635 = !DILocation(line: 155, column: 1, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 155, column: 1)
!2637 = !DILocation(line: 155, column: 1, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 155, column: 1)
!2639 = distinct !DISubprogram(name: "rb_erase_cached", scope: !24, file: !24, line: 144, type: !2640, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null, !30, !22}
!2642 = !DILocalVariable(name: "node", arg: 1, scope: !2639, file: !24, line: 144, type: !30)
!2643 = !DILocation(line: 144, column: 52, scope: !2639)
!2644 = !DILocalVariable(name: "root", arg: 2, scope: !2639, file: !24, line: 145, type: !22)
!2645 = !DILocation(line: 145, column: 31, scope: !2639)
!2646 = !DILocation(line: 147, column: 6, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2639, file: !24, line: 147, column: 6)
!2648 = !DILocation(line: 147, column: 12, scope: !2647)
!2649 = !DILocation(line: 147, column: 27, scope: !2647)
!2650 = !DILocation(line: 147, column: 24, scope: !2647)
!2651 = !DILocation(line: 147, column: 6, scope: !2639)
!2652 = !DILocation(line: 148, column: 31, scope: !2647)
!2653 = !DILocation(line: 148, column: 23, scope: !2647)
!2654 = !DILocation(line: 148, column: 3, scope: !2647)
!2655 = !DILocation(line: 148, column: 9, scope: !2647)
!2656 = !DILocation(line: 148, column: 21, scope: !2647)
!2657 = !DILocation(line: 149, column: 11, scope: !2639)
!2658 = !DILocation(line: 149, column: 18, scope: !2639)
!2659 = !DILocation(line: 149, column: 24, scope: !2639)
!2660 = !DILocation(line: 149, column: 2, scope: !2639)
!2661 = !DILocation(line: 150, column: 1, scope: !2639)
!2662 = distinct !DISubprogram(name: "__rb_change_child", scope: !100, file: !100, line: 169, type: !2663, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{null, !30, !30, !30, !541}
!2665 = !DILocalVariable(name: "old", arg: 1, scope: !2662, file: !100, line: 169, type: !30)
!2666 = !DILocation(line: 169, column: 35, scope: !2662)
!2667 = !DILocalVariable(name: "new", arg: 2, scope: !2662, file: !100, line: 169, type: !30)
!2668 = !DILocation(line: 169, column: 56, scope: !2662)
!2669 = !DILocalVariable(name: "parent", arg: 3, scope: !2662, file: !100, line: 170, type: !30)
!2670 = !DILocation(line: 170, column: 21, scope: !2662)
!2671 = !DILocalVariable(name: "root", arg: 4, scope: !2662, file: !100, line: 170, type: !541)
!2672 = !DILocation(line: 170, column: 45, scope: !2662)
!2673 = !DILocation(line: 172, column: 6, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2662, file: !100, line: 172, column: 6)
!2675 = !DILocation(line: 172, column: 6, scope: !2662)
!2676 = !DILocation(line: 173, column: 7, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !100, line: 173, column: 7)
!2678 = distinct !DILexicalBlock(scope: !2674, file: !100, line: 172, column: 14)
!2679 = !DILocation(line: 173, column: 15, scope: !2677)
!2680 = !DILocation(line: 173, column: 26, scope: !2677)
!2681 = !DILocation(line: 173, column: 23, scope: !2677)
!2682 = !DILocation(line: 173, column: 7, scope: !2678)
!2683 = !DILocation(line: 174, column: 4, scope: !2677)
!2684 = !DILocation(line: 174, column: 4, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2677, file: !100, line: 174, column: 4)
!2686 = !DILocation(line: 174, column: 4, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2685, file: !100, line: 174, column: 4)
!2688 = !DILocation(line: 174, column: 4, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2685, file: !100, line: 174, column: 4)
!2690 = !DILocation(line: 176, column: 4, scope: !2677)
!2691 = !DILocation(line: 176, column: 4, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2677, file: !100, line: 176, column: 4)
!2693 = !DILocation(line: 176, column: 4, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2692, file: !100, line: 176, column: 4)
!2695 = !DILocation(line: 176, column: 4, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2692, file: !100, line: 176, column: 4)
!2697 = !DILocation(line: 177, column: 2, scope: !2678)
!2698 = !DILocation(line: 178, column: 3, scope: !2674)
!2699 = !DILocation(line: 178, column: 3, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2674, file: !100, line: 178, column: 3)
!2701 = !DILocation(line: 178, column: 3, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2700, file: !100, line: 178, column: 3)
!2703 = !DILocation(line: 178, column: 3, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2700, file: !100, line: 178, column: 3)
!2705 = !DILocation(line: 179, column: 1, scope: !2662)
!2706 = distinct !DISubprogram(name: "rb_set_parent", scope: !100, file: !100, line: 157, type: !104, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2707 = !DILocalVariable(name: "rb", arg: 1, scope: !2706, file: !100, line: 157, type: !30)
!2708 = !DILocation(line: 157, column: 50, scope: !2706)
!2709 = !DILocalVariable(name: "p", arg: 2, scope: !2706, file: !100, line: 157, type: !30)
!2710 = !DILocation(line: 157, column: 70, scope: !2706)
!2711 = !DILocation(line: 159, column: 26, scope: !2706)
!2712 = !DILocation(line: 159, column: 56, scope: !2706)
!2713 = !DILocation(line: 159, column: 41, scope: !2706)
!2714 = !DILocation(line: 159, column: 39, scope: !2706)
!2715 = !DILocation(line: 159, column: 2, scope: !2706)
!2716 = !DILocation(line: 159, column: 6, scope: !2706)
!2717 = !DILocation(line: 159, column: 24, scope: !2706)
!2718 = !DILocation(line: 160, column: 1, scope: !2706)
!2719 = distinct !DISubprogram(name: "rb_set_parent_color", scope: !100, file: !100, line: 162, type: !2720, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{null, !30, !30, !161}
!2722 = !DILocalVariable(name: "rb", arg: 1, scope: !2719, file: !100, line: 162, type: !30)
!2723 = !DILocation(line: 162, column: 56, scope: !2719)
!2724 = !DILocalVariable(name: "p", arg: 2, scope: !2719, file: !100, line: 163, type: !30)
!2725 = !DILocation(line: 163, column: 28, scope: !2719)
!2726 = !DILocalVariable(name: "color", arg: 3, scope: !2719, file: !100, line: 163, type: !161)
!2727 = !DILocation(line: 163, column: 35, scope: !2719)
!2728 = !DILocation(line: 165, column: 41, scope: !2719)
!2729 = !DILocation(line: 165, column: 26, scope: !2719)
!2730 = !DILocation(line: 165, column: 45, scope: !2719)
!2731 = !DILocation(line: 165, column: 43, scope: !2719)
!2732 = !DILocation(line: 165, column: 2, scope: !2719)
!2733 = !DILocation(line: 165, column: 6, scope: !2719)
!2734 = !DILocation(line: 165, column: 24, scope: !2719)
!2735 = !DILocation(line: 166, column: 1, scope: !2719)
!2736 = distinct !DISubprogram(name: "augment_callbacks_propagate", scope: !3, file: !3, line: 244, type: !104, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2737 = !DILocalVariable(name: "rb", arg: 1, scope: !2736, file: !3, line: 244, type: !30)
!2738 = !DILocation(line: 244, column: 1, scope: !2736)
!2739 = !DILocalVariable(name: "stop", arg: 2, scope: !2736, file: !3, line: 244, type: !30)
!2740 = !DILocalVariable(name: "node", scope: !2741, file: !3, line: 244, type: !38)
!2741 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 244, column: 1)
!2742 = !DILocation(line: 244, column: 1, scope: !2741)
!2743 = !DILocalVariable(name: "__mptr", scope: !2744, file: !3, line: 244, type: !81)
!2744 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 244, column: 1)
!2745 = !DILocation(line: 244, column: 1, scope: !2744)
!2746 = !DILocation(line: 244, column: 1, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 244, column: 1)
!2748 = !DILocation(line: 244, column: 1, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 244, column: 1)
!2750 = distinct !{!2750, !2738, !2738}
!2751 = distinct !DISubprogram(name: "augment_callbacks_copy", scope: !3, file: !3, line: 244, type: !104, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2752 = !DILocalVariable(name: "rb_old", arg: 1, scope: !2751, file: !3, line: 244, type: !30)
!2753 = !DILocation(line: 244, column: 1, scope: !2751)
!2754 = !DILocalVariable(name: "rb_new", arg: 2, scope: !2751, file: !3, line: 244, type: !30)
!2755 = !DILocalVariable(name: "old", scope: !2751, file: !3, line: 244, type: !38)
!2756 = !DILocalVariable(name: "__mptr", scope: !2757, file: !3, line: 244, type: !81)
!2757 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 244, column: 1)
!2758 = !DILocation(line: 244, column: 1, scope: !2757)
!2759 = !DILocation(line: 244, column: 1, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 244, column: 1)
!2761 = !DILocalVariable(name: "new", scope: !2751, file: !3, line: 244, type: !38)
!2762 = !DILocalVariable(name: "__mptr", scope: !2763, file: !3, line: 244, type: !81)
!2763 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 244, column: 1)
!2764 = !DILocation(line: 244, column: 1, scope: !2763)
!2765 = !DILocation(line: 244, column: 1, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 244, column: 1)
!2767 = distinct !DISubprogram(name: "augment_callbacks_rotate", scope: !3, file: !3, line: 244, type: !104, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2768 = !DILocalVariable(name: "rb_old", arg: 1, scope: !2767, file: !3, line: 244, type: !30)
!2769 = !DILocation(line: 244, column: 1, scope: !2767)
!2770 = !DILocalVariable(name: "rb_new", arg: 2, scope: !2767, file: !3, line: 244, type: !30)
!2771 = !DILocalVariable(name: "old", scope: !2767, file: !3, line: 244, type: !38)
!2772 = !DILocalVariable(name: "__mptr", scope: !2773, file: !3, line: 244, type: !81)
!2773 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 244, column: 1)
!2774 = !DILocation(line: 244, column: 1, scope: !2773)
!2775 = !DILocation(line: 244, column: 1, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 244, column: 1)
!2777 = !DILocalVariable(name: "new", scope: !2767, file: !3, line: 244, type: !38)
!2778 = !DILocalVariable(name: "__mptr", scope: !2779, file: !3, line: 244, type: !81)
!2779 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 244, column: 1)
!2780 = !DILocation(line: 244, column: 1, scope: !2779)
!2781 = !DILocation(line: 244, column: 1, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 244, column: 1)
!2783 = distinct !DISubprogram(name: "augment_callbacks_compute_max", scope: !3, file: !3, line: 244, type: !2608, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2784 = !DILocalVariable(name: "node", arg: 1, scope: !2783, file: !3, line: 244, type: !38)
!2785 = !DILocation(line: 244, column: 1, scope: !2783)
!2786 = !DILocalVariable(name: "exit", arg: 2, scope: !2783, file: !3, line: 244, type: !418)
!2787 = !DILocalVariable(name: "child", scope: !2783, file: !3, line: 244, type: !38)
!2788 = !DILocalVariable(name: "max", scope: !2783, file: !3, line: 244, type: !43)
!2789 = !DILocation(line: 244, column: 1, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 244, column: 1)
!2791 = !DILocalVariable(name: "__mptr", scope: !2792, file: !3, line: 244, type: !81)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 244, column: 1)
!2793 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 244, column: 1)
!2794 = !DILocation(line: 244, column: 1, scope: !2792)
!2795 = !DILocation(line: 244, column: 1, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 244, column: 1)
!2797 = !DILocation(line: 244, column: 1, scope: !2793)
!2798 = !DILocation(line: 244, column: 1, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 244, column: 1)
!2800 = !DILocation(line: 244, column: 1, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 244, column: 1)
!2802 = !DILocalVariable(name: "__mptr", scope: !2803, file: !3, line: 244, type: !81)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 244, column: 1)
!2804 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 244, column: 1)
!2805 = !DILocation(line: 244, column: 1, scope: !2803)
!2806 = !DILocation(line: 244, column: 1, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 244, column: 1)
!2808 = !DILocation(line: 244, column: 1, scope: !2804)
!2809 = !DILocation(line: 244, column: 1, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 244, column: 1)
!2811 = !DILocation(line: 244, column: 1, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 244, column: 1)
!2813 = distinct !DISubprogram(name: "insert_hole_size", scope: !3, file: !3, line: 223, type: !2814, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !22, !38}
!2816 = !DILocalVariable(name: "root", arg: 1, scope: !2813, file: !3, line: 223, type: !22)
!2817 = !DILocation(line: 223, column: 53, scope: !2813)
!2818 = !DILocalVariable(name: "node", arg: 2, scope: !2813, file: !3, line: 224, type: !38)
!2819 = !DILocation(line: 224, column: 29, scope: !2813)
!2820 = !DILocalVariable(name: "link", scope: !2813, file: !3, line: 226, type: !411)
!2821 = !DILocation(line: 226, column: 19, scope: !2813)
!2822 = !DILocation(line: 226, column: 27, scope: !2813)
!2823 = !DILocation(line: 226, column: 33, scope: !2813)
!2824 = !DILocation(line: 226, column: 41, scope: !2813)
!2825 = !DILocalVariable(name: "rb", scope: !2813, file: !3, line: 226, type: !30)
!2826 = !DILocation(line: 226, column: 51, scope: !2813)
!2827 = !DILocalVariable(name: "x", scope: !2813, file: !3, line: 227, type: !43)
!2828 = !DILocation(line: 227, column: 6, scope: !2813)
!2829 = !DILocation(line: 227, column: 10, scope: !2813)
!2830 = !DILocation(line: 227, column: 16, scope: !2813)
!2831 = !DILocalVariable(name: "first", scope: !2813, file: !3, line: 228, type: !418)
!2832 = !DILocation(line: 228, column: 7, scope: !2813)
!2833 = !DILocation(line: 230, column: 2, scope: !2813)
!2834 = !DILocation(line: 230, column: 10, scope: !2813)
!2835 = !DILocation(line: 230, column: 9, scope: !2813)
!2836 = !DILocation(line: 231, column: 9, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 230, column: 16)
!2838 = !DILocation(line: 231, column: 8, scope: !2837)
!2839 = !DILocation(line: 231, column: 6, scope: !2837)
!2840 = !DILocation(line: 232, column: 7, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 232, column: 7)
!2842 = !DILocation(line: 232, column: 27, scope: !2841)
!2843 = !DILocation(line: 232, column: 11, scope: !2841)
!2844 = !DILocation(line: 232, column: 9, scope: !2841)
!2845 = !DILocation(line: 232, column: 7, scope: !2837)
!2846 = !DILocation(line: 233, column: 12, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 232, column: 32)
!2848 = !DILocation(line: 233, column: 16, scope: !2847)
!2849 = !DILocation(line: 233, column: 9, scope: !2847)
!2850 = !DILocation(line: 234, column: 3, scope: !2847)
!2851 = !DILocation(line: 235, column: 12, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 234, column: 10)
!2853 = !DILocation(line: 235, column: 16, scope: !2852)
!2854 = !DILocation(line: 235, column: 9, scope: !2852)
!2855 = !DILocation(line: 236, column: 10, scope: !2852)
!2856 = distinct !{!2856, !2833, !2857}
!2857 = !DILocation(line: 238, column: 2, scope: !2813)
!2858 = !DILocation(line: 240, column: 16, scope: !2813)
!2859 = !DILocation(line: 240, column: 22, scope: !2813)
!2860 = !DILocation(line: 240, column: 36, scope: !2813)
!2861 = !DILocation(line: 240, column: 40, scope: !2813)
!2862 = !DILocation(line: 240, column: 2, scope: !2813)
!2863 = !DILocation(line: 241, column: 26, scope: !2813)
!2864 = !DILocation(line: 241, column: 32, scope: !2813)
!2865 = !DILocation(line: 241, column: 46, scope: !2813)
!2866 = !DILocation(line: 241, column: 52, scope: !2813)
!2867 = !DILocation(line: 241, column: 2, scope: !2813)
!2868 = !DILocation(line: 242, column: 1, scope: !2813)
!2869 = distinct !DISubprogram(name: "insert_hole_addr", scope: !3, file: !3, line: 248, type: !2870, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{null, !541, !38}
!2872 = !DILocalVariable(name: "root", arg: 1, scope: !2869, file: !3, line: 248, type: !541)
!2873 = !DILocation(line: 248, column: 46, scope: !2869)
!2874 = !DILocalVariable(name: "node", arg: 2, scope: !2869, file: !3, line: 248, type: !38)
!2875 = !DILocation(line: 248, column: 72, scope: !2869)
!2876 = !DILocalVariable(name: "link", scope: !2869, file: !3, line: 250, type: !411)
!2877 = !DILocation(line: 250, column: 19, scope: !2869)
!2878 = !DILocation(line: 250, column: 27, scope: !2869)
!2879 = !DILocation(line: 250, column: 33, scope: !2869)
!2880 = !DILocalVariable(name: "rb_parent", scope: !2869, file: !3, line: 250, type: !30)
!2881 = !DILocation(line: 250, column: 43, scope: !2869)
!2882 = !DILocalVariable(name: "start", scope: !2869, file: !3, line: 251, type: !43)
!2883 = !DILocation(line: 251, column: 6, scope: !2869)
!2884 = !DILocation(line: 251, column: 14, scope: !2869)
!2885 = !DILocalVariable(name: "subtree_max_hole", scope: !2869, file: !3, line: 251, type: !43)
!2886 = !DILocation(line: 251, column: 31, scope: !2869)
!2887 = !DILocation(line: 251, column: 50, scope: !2869)
!2888 = !DILocation(line: 251, column: 56, scope: !2869)
!2889 = !DILocalVariable(name: "parent", scope: !2869, file: !3, line: 252, type: !38)
!2890 = !DILocation(line: 252, column: 22, scope: !2869)
!2891 = !DILocation(line: 254, column: 2, scope: !2869)
!2892 = !DILocation(line: 254, column: 10, scope: !2869)
!2893 = !DILocation(line: 254, column: 9, scope: !2869)
!2894 = !DILocation(line: 255, column: 16, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 254, column: 16)
!2896 = !DILocation(line: 255, column: 15, scope: !2895)
!2897 = !DILocation(line: 255, column: 13, scope: !2895)
!2898 = !DILocalVariable(name: "__mptr", scope: !2899, file: !3, line: 256, type: !81)
!2899 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 256, column: 12)
!2900 = !DILocation(line: 256, column: 12, scope: !2899)
!2901 = !DILocation(line: 256, column: 12, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 256, column: 12)
!2903 = !DILocation(line: 256, column: 10, scope: !2895)
!2904 = !DILocation(line: 257, column: 7, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 257, column: 7)
!2906 = !DILocation(line: 257, column: 15, scope: !2905)
!2907 = !DILocation(line: 257, column: 34, scope: !2905)
!2908 = !DILocation(line: 257, column: 32, scope: !2905)
!2909 = !DILocation(line: 257, column: 7, scope: !2895)
!2910 = !DILocation(line: 258, column: 31, scope: !2905)
!2911 = !DILocation(line: 258, column: 4, scope: !2905)
!2912 = !DILocation(line: 258, column: 12, scope: !2905)
!2913 = !DILocation(line: 258, column: 29, scope: !2905)
!2914 = !DILocation(line: 259, column: 7, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 259, column: 7)
!2916 = !DILocation(line: 259, column: 15, scope: !2915)
!2917 = !DILocation(line: 259, column: 13, scope: !2915)
!2918 = !DILocation(line: 259, column: 7, scope: !2895)
!2919 = !DILocation(line: 260, column: 12, scope: !2915)
!2920 = !DILocation(line: 260, column: 20, scope: !2915)
!2921 = !DILocation(line: 260, column: 33, scope: !2915)
!2922 = !DILocation(line: 260, column: 9, scope: !2915)
!2923 = !DILocation(line: 260, column: 4, scope: !2915)
!2924 = !DILocation(line: 262, column: 12, scope: !2915)
!2925 = !DILocation(line: 262, column: 20, scope: !2915)
!2926 = !DILocation(line: 262, column: 33, scope: !2915)
!2927 = !DILocation(line: 262, column: 9, scope: !2915)
!2928 = distinct !{!2928, !2891, !2929}
!2929 = !DILocation(line: 263, column: 2, scope: !2869)
!2930 = !DILocation(line: 265, column: 16, scope: !2869)
!2931 = !DILocation(line: 265, column: 22, scope: !2869)
!2932 = !DILocation(line: 265, column: 36, scope: !2869)
!2933 = !DILocation(line: 265, column: 47, scope: !2869)
!2934 = !DILocation(line: 265, column: 2, scope: !2869)
!2935 = !DILocation(line: 266, column: 23, scope: !2869)
!2936 = !DILocation(line: 266, column: 29, scope: !2869)
!2937 = !DILocation(line: 266, column: 43, scope: !2869)
!2938 = !DILocation(line: 266, column: 2, scope: !2869)
!2939 = !DILocation(line: 267, column: 1, scope: !2869)
!2940 = distinct !DISubprogram(name: "rb_to_hole_size", scope: !3, file: !3, line: 218, type: !1068, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2941 = !DILocalVariable(name: "rb", arg: 1, scope: !2940, file: !3, line: 218, type: !30)
!2942 = !DILocation(line: 218, column: 44, scope: !2940)
!2943 = !DILocalVariable(name: "__mptr", scope: !2944, file: !3, line: 220, type: !81)
!2944 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 220, column: 9)
!2945 = !DILocation(line: 220, column: 9, scope: !2944)
!2946 = !DILocation(line: 220, column: 9, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 220, column: 9)
!2948 = !DILocation(line: 220, column: 57, scope: !2940)
!2949 = !DILocation(line: 220, column: 2, scope: !2940)
!2950 = distinct !DISubprogram(name: "rb_insert_color_cached", scope: !24, file: !24, line: 135, type: !2951, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{null, !30, !22, !418}
!2953 = !DILocalVariable(name: "node", arg: 1, scope: !2950, file: !24, line: 135, type: !30)
!2954 = !DILocation(line: 135, column: 59, scope: !2950)
!2955 = !DILocalVariable(name: "root", arg: 2, scope: !2950, file: !24, line: 136, type: !22)
!2956 = !DILocation(line: 136, column: 31, scope: !2950)
!2957 = !DILocalVariable(name: "leftmost", arg: 3, scope: !2950, file: !24, line: 137, type: !418)
!2958 = !DILocation(line: 137, column: 13, scope: !2950)
!2959 = !DILocation(line: 139, column: 6, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2950, file: !24, line: 139, column: 6)
!2961 = !DILocation(line: 139, column: 6, scope: !2950)
!2962 = !DILocation(line: 140, column: 23, scope: !2960)
!2963 = !DILocation(line: 140, column: 3, scope: !2960)
!2964 = !DILocation(line: 140, column: 9, scope: !2960)
!2965 = !DILocation(line: 140, column: 21, scope: !2960)
!2966 = !DILocation(line: 141, column: 18, scope: !2950)
!2967 = !DILocation(line: 141, column: 25, scope: !2950)
!2968 = !DILocation(line: 141, column: 31, scope: !2950)
!2969 = !DILocation(line: 141, column: 2, scope: !2950)
!2970 = !DILocation(line: 142, column: 1, scope: !2950)
!2971 = distinct !DISubprogram(name: "best_hole", scope: !3, file: !3, line: 308, type: !2972, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!38, !50, !43}
!2974 = !DILocalVariable(name: "mm", arg: 1, scope: !2971, file: !3, line: 308, type: !50)
!2975 = !DILocation(line: 308, column: 53, scope: !2971)
!2976 = !DILocalVariable(name: "size", arg: 2, scope: !2971, file: !3, line: 308, type: !43)
!2977 = !DILocation(line: 308, column: 61, scope: !2971)
!2978 = !DILocalVariable(name: "rb", scope: !2971, file: !3, line: 310, type: !30)
!2979 = !DILocation(line: 310, column: 18, scope: !2971)
!2980 = !DILocation(line: 310, column: 23, scope: !2971)
!2981 = !DILocation(line: 310, column: 27, scope: !2971)
!2982 = !DILocation(line: 310, column: 38, scope: !2971)
!2983 = !DILocation(line: 310, column: 46, scope: !2971)
!2984 = !DILocalVariable(name: "best", scope: !2971, file: !3, line: 311, type: !38)
!2985 = !DILocation(line: 311, column: 22, scope: !2971)
!2986 = !DILocation(line: 313, column: 2, scope: !2971)
!2987 = !DILocalVariable(name: "node", scope: !2988, file: !3, line: 314, type: !38)
!2988 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 313, column: 5)
!2989 = !DILocation(line: 314, column: 23, scope: !2988)
!2990 = !DILocalVariable(name: "__mptr", scope: !2991, file: !3, line: 315, type: !81)
!2991 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 315, column: 4)
!2992 = !DILocation(line: 315, column: 4, scope: !2991)
!2993 = !DILocation(line: 315, column: 4, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 315, column: 4)
!2995 = !DILocation(line: 317, column: 7, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 317, column: 7)
!2997 = !DILocation(line: 317, column: 15, scope: !2996)
!2998 = !DILocation(line: 317, column: 21, scope: !2996)
!2999 = !DILocation(line: 317, column: 12, scope: !2996)
!3000 = !DILocation(line: 317, column: 7, scope: !2988)
!3001 = !DILocation(line: 318, column: 11, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 317, column: 32)
!3003 = !DILocation(line: 318, column: 9, scope: !3002)
!3004 = !DILocation(line: 319, column: 9, scope: !3002)
!3005 = !DILocation(line: 319, column: 13, scope: !3002)
!3006 = !DILocation(line: 319, column: 7, scope: !3002)
!3007 = !DILocation(line: 320, column: 3, scope: !3002)
!3008 = !DILocation(line: 321, column: 9, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 320, column: 10)
!3010 = !DILocation(line: 321, column: 13, scope: !3009)
!3011 = !DILocation(line: 321, column: 7, scope: !3009)
!3012 = !DILocation(line: 323, column: 2, scope: !2988)
!3013 = !DILocation(line: 323, column: 11, scope: !2971)
!3014 = distinct !{!3014, !2986, !3015}
!3015 = !DILocation(line: 323, column: 13, scope: !2971)
!3016 = !DILocation(line: 325, column: 9, scope: !2971)
!3017 = !DILocation(line: 325, column: 2, scope: !2971)
!3018 = distinct !DISubprogram(name: "rb_hole_size_to_node", scope: !3, file: !3, line: 298, type: !2356, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3019 = !DILocalVariable(name: "rb", arg: 1, scope: !3018, file: !3, line: 298, type: !30)
!3020 = !DILocation(line: 298, column: 72, scope: !3018)
!3021 = !DILocalVariable(name: "____ptr", scope: !3022, file: !3, line: 300, type: !30)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 300, column: 9)
!3023 = !DILocation(line: 300, column: 9, scope: !3022)
!3024 = !DILocalVariable(name: "__mptr", scope: !3025, file: !3, line: 300, type: !81)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 300, column: 9)
!3026 = !DILocation(line: 300, column: 9, scope: !3025)
!3027 = !DILocation(line: 300, column: 9, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 300, column: 9)
!3029 = !DILocation(line: 300, column: 2, scope: !3018)
!3030 = distinct !DISubprogram(name: "next_hole_low_addr", scope: !3, file: !3, line: 414, type: !3031, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!38, !38, !43}
!3033 = !DILocalVariable(name: "entry", arg: 1, scope: !3030, file: !3, line: 414, type: !38)
!3034 = !DILocation(line: 414, column: 1, scope: !3030)
!3035 = !DILocalVariable(name: "size", arg: 2, scope: !3030, file: !3, line: 414, type: !43)
!3036 = !DILocalVariable(name: "parent", scope: !3030, file: !3, line: 414, type: !30)
!3037 = !DILocalVariable(name: "node", scope: !3030, file: !3, line: 414, type: !30)
!3038 = !DILocation(line: 414, column: 1, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 414, column: 1)
!3040 = !DILocation(line: 414, column: 1, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 414, column: 1)
!3042 = !DILocation(line: 414, column: 1, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 414, column: 1)
!3044 = distinct !{!3044, !3042, !3042}
!3045 = !DILocation(line: 0, scope: !3030)
!3046 = distinct !{!3046, !3034, !3034}
!3047 = distinct !DISubprogram(name: "next_hole_high_addr", scope: !3, file: !3, line: 413, type: !3031, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3048 = !DILocalVariable(name: "entry", arg: 1, scope: !3047, file: !3, line: 413, type: !38)
!3049 = !DILocation(line: 413, column: 1, scope: !3047)
!3050 = !DILocalVariable(name: "size", arg: 2, scope: !3047, file: !3, line: 413, type: !43)
!3051 = !DILocalVariable(name: "parent", scope: !3047, file: !3, line: 413, type: !30)
!3052 = !DILocalVariable(name: "node", scope: !3047, file: !3, line: 413, type: !30)
!3053 = !DILocation(line: 413, column: 1, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 413, column: 1)
!3055 = !DILocation(line: 413, column: 1, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 413, column: 1)
!3057 = !DILocation(line: 413, column: 1, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 413, column: 1)
!3059 = distinct !{!3059, !3057, !3057}
!3060 = !DILocation(line: 0, scope: !3047)
!3061 = distinct !{!3061, !3049, !3049}
!3062 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !386, file: !386, line: 51, type: !3063, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!418, !65}
!3065 = !DILocalVariable(name: "entry", arg: 1, scope: !3062, file: !386, line: 51, type: !65)
!3066 = !DILocation(line: 51, column: 61, scope: !3062)
!3067 = !DILocation(line: 53, column: 2, scope: !3062)
!3068 = distinct !DISubprogram(name: "__list_del", scope: !386, file: !386, line: 110, type: !387, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3069 = !DILocalVariable(name: "prev", arg: 1, scope: !3068, file: !386, line: 110, type: !65)
!3070 = !DILocation(line: 110, column: 50, scope: !3068)
!3071 = !DILocalVariable(name: "next", arg: 2, scope: !3068, file: !386, line: 110, type: !65)
!3072 = !DILocation(line: 110, column: 75, scope: !3068)
!3073 = !DILocation(line: 112, column: 15, scope: !3068)
!3074 = !DILocation(line: 112, column: 2, scope: !3068)
!3075 = !DILocation(line: 112, column: 8, scope: !3068)
!3076 = !DILocation(line: 112, column: 13, scope: !3068)
!3077 = !DILocation(line: 113, column: 2, scope: !3068)
!3078 = !DILocation(line: 113, column: 2, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3068, file: !386, line: 113, column: 2)
!3080 = !DILocation(line: 113, column: 2, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3079, file: !386, line: 113, column: 2)
!3082 = !DILocation(line: 113, column: 2, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !386, line: 113, column: 2)
!3084 = !DILocation(line: 114, column: 1, scope: !3068)
!3085 = distinct !DISubprogram(name: "list_empty", scope: !386, file: !386, line: 280, type: !3086, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!161, !3088}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!3090 = !DILocalVariable(name: "head", arg: 1, scope: !3085, file: !386, line: 280, type: !3088)
!3091 = !DILocation(line: 280, column: 54, scope: !3085)
!3092 = !DILocation(line: 282, column: 9, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3085, file: !386, line: 282, column: 9)
!3094 = !DILocation(line: 282, column: 9, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3093, file: !386, line: 282, column: 9)
!3096 = !DILocation(line: 282, column: 34, scope: !3085)
!3097 = !DILocation(line: 282, column: 31, scope: !3085)
!3098 = !DILocation(line: 282, column: 2, scope: !3085)
!3099 = distinct !DISubprogram(name: "drm_mm_hole_node_start", scope: !6, file: !6, line: 312, type: !328, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !118)
!3100 = !DILocalVariable(name: "hole_node", arg: 1, scope: !3099, file: !6, line: 312, type: !57)
!3101 = !DILocation(line: 312, column: 68, scope: !3099)
!3102 = !DILocation(line: 315, column: 34, scope: !3099)
!3103 = !DILocation(line: 315, column: 9, scope: !3099)
!3104 = !DILocation(line: 315, column: 2, scope: !3099)
