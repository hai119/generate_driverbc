; ModuleID = '../bcout/drivers/gpu/drm/drm_rect.llvm.bc'
source_filename = "drivers/gpu/drm/drm_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.drm_rect = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"%s%d.%06ux%d.%06u%+d.%06u%+d.%06u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s%dx%d%+d%+d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"drivers/gpu/drm/drm_rect.c\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @drm_rect_intersect(%struct.drm_rect* %r1, %struct.drm_rect* %r2) #0 !dbg !30 {
entry:
  %r1.addr = alloca %struct.drm_rect*, align 8
  %r2.addr = alloca %struct.drm_rect*, align 8
  %__UNIQUE_ID___x199 = alloca i32, align 4
  %__UNIQUE_ID___y200 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x201 = alloca i32, align 4
  %__UNIQUE_ID___y202 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %__UNIQUE_ID___x203 = alloca i32, align 4
  %__UNIQUE_ID___y204 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %__UNIQUE_ID___x205 = alloca i32, align 4
  %__UNIQUE_ID___y206 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  store %struct.drm_rect* %r1, %struct.drm_rect** %r1.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %r1.addr, metadata !47, metadata !DIExpression()), !dbg !48
  store %struct.drm_rect* %r2, %struct.drm_rect** %r2.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %r2.addr, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x199, metadata !51, metadata !DIExpression()), !dbg !53
  %0 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !53
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %0, i32 0, i32 0, !dbg !53
  %1 = load i32, i32* %x1, align 4, !dbg !53
  store i32 %1, i32* %__UNIQUE_ID___x199, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y200, metadata !54, metadata !DIExpression()), !dbg !53
  %2 = load %struct.drm_rect*, %struct.drm_rect** %r2.addr, align 8, !dbg !53
  %x11 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %2, i32 0, i32 0, !dbg !53
  %3 = load i32, i32* %x11, align 4, !dbg !53
  store i32 %3, i32* %__UNIQUE_ID___y200, align 4, !dbg !53
  %4 = load i32, i32* %__UNIQUE_ID___x199, align 4, !dbg !53
  %5 = load i32, i32* %__UNIQUE_ID___y200, align 4, !dbg !53
  %cmp = icmp sgt i32 %4, %5, !dbg !53
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !53

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %__UNIQUE_ID___x199, align 4, !dbg !53
  br label %cond.end, !dbg !53

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %__UNIQUE_ID___y200, align 4, !dbg !53
  br label %cond.end, !dbg !53

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !53
  store i32 %cond, i32* %tmp, align 4, !dbg !53
  %8 = load i32, i32* %tmp, align 4, !dbg !53
  %9 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !56
  %x12 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 0, !dbg !57
  store i32 %8, i32* %x12, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x201, metadata !59, metadata !DIExpression()), !dbg !61
  %10 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !61
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %10, i32 0, i32 1, !dbg !61
  %11 = load i32, i32* %y1, align 4, !dbg !61
  store i32 %11, i32* %__UNIQUE_ID___x201, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y202, metadata !62, metadata !DIExpression()), !dbg !61
  %12 = load %struct.drm_rect*, %struct.drm_rect** %r2.addr, align 8, !dbg !61
  %y13 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %12, i32 0, i32 1, !dbg !61
  %13 = load i32, i32* %y13, align 4, !dbg !61
  store i32 %13, i32* %__UNIQUE_ID___y202, align 4, !dbg !61
  %14 = load i32, i32* %__UNIQUE_ID___x201, align 4, !dbg !61
  %15 = load i32, i32* %__UNIQUE_ID___y202, align 4, !dbg !61
  %cmp5 = icmp sgt i32 %14, %15, !dbg !61
  br i1 %cmp5, label %cond.true6, label %cond.false7, !dbg !61

cond.true6:                                       ; preds = %cond.end
  %16 = load i32, i32* %__UNIQUE_ID___x201, align 4, !dbg !61
  br label %cond.end8, !dbg !61

cond.false7:                                      ; preds = %cond.end
  %17 = load i32, i32* %__UNIQUE_ID___y202, align 4, !dbg !61
  br label %cond.end8, !dbg !61

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %16, %cond.true6 ], [ %17, %cond.false7 ], !dbg !61
  store i32 %cond9, i32* %tmp4, align 4, !dbg !61
  %18 = load i32, i32* %tmp4, align 4, !dbg !61
  %19 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !63
  %y110 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %19, i32 0, i32 1, !dbg !64
  store i32 %18, i32* %y110, align 4, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x203, metadata !66, metadata !DIExpression()), !dbg !68
  %20 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !68
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %20, i32 0, i32 2, !dbg !68
  %21 = load i32, i32* %x2, align 4, !dbg !68
  store i32 %21, i32* %__UNIQUE_ID___x203, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y204, metadata !69, metadata !DIExpression()), !dbg !68
  %22 = load %struct.drm_rect*, %struct.drm_rect** %r2.addr, align 8, !dbg !68
  %x211 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %22, i32 0, i32 2, !dbg !68
  %23 = load i32, i32* %x211, align 4, !dbg !68
  store i32 %23, i32* %__UNIQUE_ID___y204, align 4, !dbg !68
  %24 = load i32, i32* %__UNIQUE_ID___x203, align 4, !dbg !68
  %25 = load i32, i32* %__UNIQUE_ID___y204, align 4, !dbg !68
  %cmp13 = icmp slt i32 %24, %25, !dbg !68
  br i1 %cmp13, label %cond.true14, label %cond.false15, !dbg !68

cond.true14:                                      ; preds = %cond.end8
  %26 = load i32, i32* %__UNIQUE_ID___x203, align 4, !dbg !68
  br label %cond.end16, !dbg !68

cond.false15:                                     ; preds = %cond.end8
  %27 = load i32, i32* %__UNIQUE_ID___y204, align 4, !dbg !68
  br label %cond.end16, !dbg !68

cond.end16:                                       ; preds = %cond.false15, %cond.true14
  %cond17 = phi i32 [ %26, %cond.true14 ], [ %27, %cond.false15 ], !dbg !68
  store i32 %cond17, i32* %tmp12, align 4, !dbg !68
  %28 = load i32, i32* %tmp12, align 4, !dbg !68
  %29 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !70
  %x218 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %29, i32 0, i32 2, !dbg !71
  store i32 %28, i32* %x218, align 4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !73, metadata !DIExpression()), !dbg !75
  %30 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !75
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %30, i32 0, i32 3, !dbg !75
  %31 = load i32, i32* %y2, align 4, !dbg !75
  store i32 %31, i32* %__UNIQUE_ID___x205, align 4, !dbg !75
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !76, metadata !DIExpression()), !dbg !75
  %32 = load %struct.drm_rect*, %struct.drm_rect** %r2.addr, align 8, !dbg !75
  %y219 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %32, i32 0, i32 3, !dbg !75
  %33 = load i32, i32* %y219, align 4, !dbg !75
  store i32 %33, i32* %__UNIQUE_ID___y206, align 4, !dbg !75
  %34 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !75
  %35 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !75
  %cmp21 = icmp slt i32 %34, %35, !dbg !75
  br i1 %cmp21, label %cond.true22, label %cond.false23, !dbg !75

cond.true22:                                      ; preds = %cond.end16
  %36 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !75
  br label %cond.end24, !dbg !75

cond.false23:                                     ; preds = %cond.end16
  %37 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !75
  br label %cond.end24, !dbg !75

cond.end24:                                       ; preds = %cond.false23, %cond.true22
  %cond25 = phi i32 [ %36, %cond.true22 ], [ %37, %cond.false23 ], !dbg !75
  store i32 %cond25, i32* %tmp20, align 4, !dbg !75
  %38 = load i32, i32* %tmp20, align 4, !dbg !75
  %39 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !77
  %y226 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %39, i32 0, i32 3, !dbg !78
  store i32 %38, i32* %y226, align 4, !dbg !79
  %40 = load %struct.drm_rect*, %struct.drm_rect** %r1.addr, align 8, !dbg !80
  %call = call zeroext i1 @drm_rect_visible(%struct.drm_rect* %40) #4, !dbg !81
  ret i1 %call, !dbg !82
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @drm_rect_visible(%struct.drm_rect* %r) #0 !dbg !83 {
entry:
  %r.addr = alloca %struct.drm_rect*, align 8
  store %struct.drm_rect* %r, %struct.drm_rect** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %r.addr, metadata !86, metadata !DIExpression()), !dbg !87
  %0 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !88
  %call = call i32 @drm_rect_width(%struct.drm_rect* %0) #4, !dbg !89
  %cmp = icmp sgt i32 %call, 0, !dbg !90
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !91

land.rhs:                                         ; preds = %entry
  %1 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !92
  %call1 = call i32 @drm_rect_height(%struct.drm_rect* %1) #4, !dbg !93
  %cmp2 = icmp sgt i32 %call1, 0, !dbg !94
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !95
  ret i1 %2, !dbg !96
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @drm_rect_clip_scaled(%struct.drm_rect* %src, %struct.drm_rect* %dst, %struct.drm_rect* %clip) #0 !dbg !97 {
entry:
  %src.addr = alloca %struct.drm_rect*, align 8
  %dst.addr = alloca %struct.drm_rect*, align 8
  %clip.addr = alloca %struct.drm_rect*, align 8
  %diff = alloca i32, align 4
  %new_src_w = alloca i32, align 4
  %new_src_h = alloca i32, align 4
  %new_src_w24 = alloca i32, align 4
  %new_src_h39 = alloca i32, align 4
  store %struct.drm_rect* %src, %struct.drm_rect** %src.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %src.addr, metadata !100, metadata !DIExpression()), !dbg !101
  store %struct.drm_rect* %dst, %struct.drm_rect** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %dst.addr, metadata !102, metadata !DIExpression()), !dbg !103
  store %struct.drm_rect* %clip, %struct.drm_rect** %clip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %clip.addr, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %diff, metadata !106, metadata !DIExpression()), !dbg !107
  %0 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !108
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %0, i32 0, i32 0, !dbg !109
  %1 = load i32, i32* %x1, align 4, !dbg !109
  %2 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !110
  %x11 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %2, i32 0, i32 0, !dbg !111
  %3 = load i32, i32* %x11, align 4, !dbg !111
  %sub = sub i32 %1, %3, !dbg !112
  store i32 %sub, i32* %diff, align 4, !dbg !113
  %4 = load i32, i32* %diff, align 4, !dbg !114
  %cmp = icmp sgt i32 %4, 0, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %new_src_w, metadata !118, metadata !DIExpression()), !dbg !122
  %5 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !123
  %call = call i32 @drm_rect_width(%struct.drm_rect* %5) #4, !dbg !124
  %6 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !125
  %call2 = call i32 @drm_rect_width(%struct.drm_rect* %6) #4, !dbg !126
  %call3 = call i32 @clip_scaled(i32 %call, i32 %call2, i32* %diff) #4, !dbg !127
  store i32 %call3, i32* %new_src_w, align 4, !dbg !122
  %7 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !128
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %7, i32 0, i32 2, !dbg !129
  %8 = load i32, i32* %x2, align 4, !dbg !129
  %9 = load i32, i32* %new_src_w, align 4, !dbg !130
  %sub4 = sub i32 %8, %9, !dbg !131
  %10 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !132
  %x15 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %10, i32 0, i32 0, !dbg !133
  store i32 %sub4, i32* %x15, align 4, !dbg !134
  %11 = load i32, i32* %diff, align 4, !dbg !135
  %12 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !136
  %x16 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %12, i32 0, i32 0, !dbg !137
  %13 = load i32, i32* %x16, align 4, !dbg !138
  %add = add i32 %13, %11, !dbg !138
  store i32 %add, i32* %x16, align 4, !dbg !138
  br label %if.end, !dbg !139

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !140
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %14, i32 0, i32 1, !dbg !141
  %15 = load i32, i32* %y1, align 4, !dbg !141
  %16 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !142
  %y17 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %16, i32 0, i32 1, !dbg !143
  %17 = load i32, i32* %y17, align 4, !dbg !143
  %sub8 = sub i32 %15, %17, !dbg !144
  store i32 %sub8, i32* %diff, align 4, !dbg !145
  %18 = load i32, i32* %diff, align 4, !dbg !146
  %cmp9 = icmp sgt i32 %18, 0, !dbg !148
  br i1 %cmp9, label %if.then10, label %if.end18, !dbg !149

if.then10:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %new_src_h, metadata !150, metadata !DIExpression()), !dbg !152
  %19 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !153
  %call11 = call i32 @drm_rect_height(%struct.drm_rect* %19) #4, !dbg !154
  %20 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !155
  %call12 = call i32 @drm_rect_height(%struct.drm_rect* %20) #4, !dbg !156
  %call13 = call i32 @clip_scaled(i32 %call11, i32 %call12, i32* %diff) #4, !dbg !157
  store i32 %call13, i32* %new_src_h, align 4, !dbg !152
  %21 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !158
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %21, i32 0, i32 3, !dbg !159
  %22 = load i32, i32* %y2, align 4, !dbg !159
  %23 = load i32, i32* %new_src_h, align 4, !dbg !160
  %sub14 = sub i32 %22, %23, !dbg !161
  %24 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !162
  %y115 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %24, i32 0, i32 1, !dbg !163
  store i32 %sub14, i32* %y115, align 4, !dbg !164
  %25 = load i32, i32* %diff, align 4, !dbg !165
  %26 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !166
  %y116 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %26, i32 0, i32 1, !dbg !167
  %27 = load i32, i32* %y116, align 4, !dbg !168
  %add17 = add i32 %27, %25, !dbg !168
  store i32 %add17, i32* %y116, align 4, !dbg !168
  br label %if.end18, !dbg !169

if.end18:                                         ; preds = %if.then10, %if.end
  %28 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !170
  %x219 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %28, i32 0, i32 2, !dbg !171
  %29 = load i32, i32* %x219, align 4, !dbg !171
  %30 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !172
  %x220 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %30, i32 0, i32 2, !dbg !173
  %31 = load i32, i32* %x220, align 4, !dbg !173
  %sub21 = sub i32 %29, %31, !dbg !174
  store i32 %sub21, i32* %diff, align 4, !dbg !175
  %32 = load i32, i32* %diff, align 4, !dbg !176
  %cmp22 = icmp sgt i32 %32, 0, !dbg !178
  br i1 %cmp22, label %if.then23, label %if.end33, !dbg !179

if.then23:                                        ; preds = %if.end18
  call void @llvm.dbg.declare(metadata i32* %new_src_w24, metadata !180, metadata !DIExpression()), !dbg !182
  %33 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !183
  %call25 = call i32 @drm_rect_width(%struct.drm_rect* %33) #4, !dbg !184
  %34 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !185
  %call26 = call i32 @drm_rect_width(%struct.drm_rect* %34) #4, !dbg !186
  %call27 = call i32 @clip_scaled(i32 %call25, i32 %call26, i32* %diff) #4, !dbg !187
  store i32 %call27, i32* %new_src_w24, align 4, !dbg !182
  %35 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !188
  %x128 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %35, i32 0, i32 0, !dbg !189
  %36 = load i32, i32* %x128, align 4, !dbg !189
  %37 = load i32, i32* %new_src_w24, align 4, !dbg !190
  %add29 = add i32 %36, %37, !dbg !191
  %38 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !192
  %x230 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %38, i32 0, i32 2, !dbg !193
  store i32 %add29, i32* %x230, align 4, !dbg !194
  %39 = load i32, i32* %diff, align 4, !dbg !195
  %40 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !196
  %x231 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %40, i32 0, i32 2, !dbg !197
  %41 = load i32, i32* %x231, align 4, !dbg !198
  %sub32 = sub i32 %41, %39, !dbg !198
  store i32 %sub32, i32* %x231, align 4, !dbg !198
  br label %if.end33, !dbg !199

if.end33:                                         ; preds = %if.then23, %if.end18
  %42 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !200
  %y234 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %42, i32 0, i32 3, !dbg !201
  %43 = load i32, i32* %y234, align 4, !dbg !201
  %44 = load %struct.drm_rect*, %struct.drm_rect** %clip.addr, align 8, !dbg !202
  %y235 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %44, i32 0, i32 3, !dbg !203
  %45 = load i32, i32* %y235, align 4, !dbg !203
  %sub36 = sub i32 %43, %45, !dbg !204
  store i32 %sub36, i32* %diff, align 4, !dbg !205
  %46 = load i32, i32* %diff, align 4, !dbg !206
  %cmp37 = icmp sgt i32 %46, 0, !dbg !208
  br i1 %cmp37, label %if.then38, label %if.end48, !dbg !209

if.then38:                                        ; preds = %if.end33
  call void @llvm.dbg.declare(metadata i32* %new_src_h39, metadata !210, metadata !DIExpression()), !dbg !212
  %47 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !213
  %call40 = call i32 @drm_rect_height(%struct.drm_rect* %47) #4, !dbg !214
  %48 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !215
  %call41 = call i32 @drm_rect_height(%struct.drm_rect* %48) #4, !dbg !216
  %call42 = call i32 @clip_scaled(i32 %call40, i32 %call41, i32* %diff) #4, !dbg !217
  store i32 %call42, i32* %new_src_h39, align 4, !dbg !212
  %49 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !218
  %y143 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %49, i32 0, i32 1, !dbg !219
  %50 = load i32, i32* %y143, align 4, !dbg !219
  %51 = load i32, i32* %new_src_h39, align 4, !dbg !220
  %add44 = add i32 %50, %51, !dbg !221
  %52 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !222
  %y245 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %52, i32 0, i32 3, !dbg !223
  store i32 %add44, i32* %y245, align 4, !dbg !224
  %53 = load i32, i32* %diff, align 4, !dbg !225
  %54 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !226
  %y246 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %54, i32 0, i32 3, !dbg !227
  %55 = load i32, i32* %y246, align 4, !dbg !228
  %sub47 = sub i32 %55, %53, !dbg !228
  store i32 %sub47, i32* %y246, align 4, !dbg !228
  br label %if.end48, !dbg !229

if.end48:                                         ; preds = %if.then38, %if.end33
  %56 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !230
  %call49 = call zeroext i1 @drm_rect_visible(%struct.drm_rect* %56) #4, !dbg !231
  ret i1 %call49, !dbg !232
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clip_scaled(i32 %src, i32 %dst, i32* %clip) #0 !dbg !233 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  %dst.addr = alloca i32, align 4
  %clip.addr = alloca i32*, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x207 = alloca i32, align 4
  %__UNIQUE_ID___y208 = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp10 = alloca i64, align 8
  %_tmp12 = alloca i64, align 8
  %__base13 = alloca i32, align 4
  %__rem14 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp21 = alloca i64, align 8
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !237, metadata !DIExpression()), !dbg !238
  store i32 %dst, i32* %dst.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dst.addr, metadata !239, metadata !DIExpression()), !dbg !240
  store i32* %clip, i32** %clip.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %clip.addr, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !243, metadata !DIExpression()), !dbg !244
  %0 = load i32, i32* %dst.addr, align 4, !dbg !245
  %cmp = icmp eq i32 %0, 0, !dbg !247
  br i1 %cmp, label %if.then, label %if.end, !dbg !248

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !249
  br label %return, !dbg !249

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x207, metadata !250, metadata !DIExpression()), !dbg !252
  %1 = load i32*, i32** %clip.addr, align 8, !dbg !252
  %2 = load i32, i32* %1, align 4, !dbg !252
  store i32 %2, i32* %__UNIQUE_ID___x207, align 4, !dbg !252
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y208, metadata !253, metadata !DIExpression()), !dbg !252
  %3 = load i32, i32* %dst.addr, align 4, !dbg !252
  store i32 %3, i32* %__UNIQUE_ID___y208, align 4, !dbg !252
  %4 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !252
  %5 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !252
  %cmp2 = icmp slt i32 %4, %5, !dbg !252
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !252

cond.true:                                        ; preds = %if.end
  %6 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !252
  br label %cond.end, !dbg !252

cond.false:                                       ; preds = %if.end
  %7 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !252
  br label %cond.end, !dbg !252

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !252
  store i32 %cond, i32* %tmp1, align 4, !dbg !252
  %8 = load i32, i32* %tmp1, align 4, !dbg !252
  %9 = load i32*, i32** %clip.addr, align 8, !dbg !254
  store i32 %8, i32* %9, align 4, !dbg !255
  %10 = load i32, i32* %src.addr, align 4, !dbg !256
  %11 = load i32, i32* %dst.addr, align 4, !dbg !257
  %12 = load i32*, i32** %clip.addr, align 8, !dbg !258
  %13 = load i32, i32* %12, align 4, !dbg !259
  %sub = sub i32 %11, %13, !dbg !260
  %call = call i64 @mul_u32_u32(i32 %10, i32 %sub) #4, !dbg !261
  store i64 %call, i64* %tmp, align 8, !dbg !262
  %14 = load i32, i32* %src.addr, align 4, !dbg !263
  %15 = load i32, i32* %dst.addr, align 4, !dbg !265
  %shl = shl i32 %15, 16, !dbg !266
  %cmp3 = icmp slt i32 %14, %shl, !dbg !267
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !268

if.then4:                                         ; preds = %cond.end
  call void @llvm.dbg.declare(metadata i64* %_tmp, metadata !269, metadata !DIExpression()), !dbg !271
  %16 = load i64, i64* %tmp, align 8, !dbg !271
  %17 = load i32, i32* %dst.addr, align 4, !dbg !271
  %conv = sext i32 %17 to i64, !dbg !271
  %add = add i64 %16, %conv, !dbg !271
  %sub5 = sub i64 %add, 1, !dbg !271
  store i64 %sub5, i64* %_tmp, align 8, !dbg !271
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !272, metadata !DIExpression()), !dbg !275
  %18 = load i32, i32* %dst.addr, align 4, !dbg !275
  store i32 %18, i32* %__base, align 4, !dbg !275
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !276, metadata !DIExpression()), !dbg !275
  %19 = load i64, i64* %_tmp, align 8, !dbg !275
  %20 = load i32, i32* %__base, align 4, !dbg !275
  %conv6 = zext i32 %20 to i64, !dbg !275
  %rem = urem i64 %19, %conv6, !dbg !275
  %conv7 = trunc i64 %rem to i32, !dbg !275
  store i32 %conv7, i32* %__rem, align 4, !dbg !275
  %21 = load i64, i64* %_tmp, align 8, !dbg !275
  %22 = load i32, i32* %__base, align 4, !dbg !275
  %conv8 = zext i32 %22 to i64, !dbg !275
  %div = udiv i64 %21, %conv8, !dbg !275
  store i64 %div, i64* %_tmp, align 8, !dbg !275
  %23 = load i32, i32* %__rem, align 4, !dbg !275
  store i32 %23, i32* %tmp9, align 4, !dbg !275
  %24 = load i32, i32* %tmp9, align 4, !dbg !275
  %25 = load i64, i64* %_tmp, align 8, !dbg !271
  store i64 %25, i64* %tmp10, align 8, !dbg !271
  %26 = load i64, i64* %tmp10, align 8, !dbg !271
  %conv11 = trunc i64 %26 to i32, !dbg !277
  store i32 %conv11, i32* %retval, align 4, !dbg !278
  br label %return, !dbg !278

if.else:                                          ; preds = %cond.end
  call void @llvm.dbg.declare(metadata i64* %_tmp12, metadata !279, metadata !DIExpression()), !dbg !281
  %27 = load i64, i64* %tmp, align 8, !dbg !281
  store i64 %27, i64* %_tmp12, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata i32* %__base13, metadata !282, metadata !DIExpression()), !dbg !284
  %28 = load i32, i32* %dst.addr, align 4, !dbg !284
  store i32 %28, i32* %__base13, align 4, !dbg !284
  call void @llvm.dbg.declare(metadata i32* %__rem14, metadata !285, metadata !DIExpression()), !dbg !284
  %29 = load i64, i64* %_tmp12, align 8, !dbg !284
  %30 = load i32, i32* %__base13, align 4, !dbg !284
  %conv15 = zext i32 %30 to i64, !dbg !284
  %rem16 = urem i64 %29, %conv15, !dbg !284
  %conv17 = trunc i64 %rem16 to i32, !dbg !284
  store i32 %conv17, i32* %__rem14, align 4, !dbg !284
  %31 = load i64, i64* %_tmp12, align 8, !dbg !284
  %32 = load i32, i32* %__base13, align 4, !dbg !284
  %conv18 = zext i32 %32 to i64, !dbg !284
  %div19 = udiv i64 %31, %conv18, !dbg !284
  store i64 %div19, i64* %_tmp12, align 8, !dbg !284
  %33 = load i32, i32* %__rem14, align 4, !dbg !284
  store i32 %33, i32* %tmp20, align 4, !dbg !284
  %34 = load i32, i32* %tmp20, align 4, !dbg !284
  %35 = load i64, i64* %_tmp12, align 8, !dbg !281
  store i64 %35, i64* %tmp21, align 8, !dbg !281
  %36 = load i64, i64* %tmp21, align 8, !dbg !281
  %conv22 = trunc i64 %36 to i32, !dbg !286
  store i32 %conv22, i32* %retval, align 4, !dbg !287
  br label %return, !dbg !287

return:                                           ; preds = %if.else, %if.then4, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !288
  ret i32 %37, !dbg !288
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_rect_width(%struct.drm_rect* %r) #0 !dbg !289 {
entry:
  %r.addr = alloca %struct.drm_rect*, align 8
  store %struct.drm_rect* %r, %struct.drm_rect** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %r.addr, metadata !292, metadata !DIExpression()), !dbg !293
  %0 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !294
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %0, i32 0, i32 2, !dbg !295
  %1 = load i32, i32* %x2, align 4, !dbg !295
  %2 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !296
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %2, i32 0, i32 0, !dbg !297
  %3 = load i32, i32* %x1, align 4, !dbg !297
  %sub = sub i32 %1, %3, !dbg !298
  ret i32 %sub, !dbg !299
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_rect_height(%struct.drm_rect* %r) #0 !dbg !300 {
entry:
  %r.addr = alloca %struct.drm_rect*, align 8
  store %struct.drm_rect* %r, %struct.drm_rect** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %r.addr, metadata !301, metadata !DIExpression()), !dbg !302
  %0 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !303
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %0, i32 0, i32 3, !dbg !304
  %1 = load i32, i32* %y2, align 4, !dbg !304
  %2 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !305
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %2, i32 0, i32 1, !dbg !306
  %3 = load i32, i32* %y1, align 4, !dbg !306
  %sub = sub i32 %1, %3, !dbg !307
  ret i32 %sub, !dbg !308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_rect_calc_hscale(%struct.drm_rect* %src, %struct.drm_rect* %dst, i32 %min_hscale, i32 %max_hscale) #0 !dbg !309 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca %struct.drm_rect*, align 8
  %dst.addr = alloca %struct.drm_rect*, align 8
  %min_hscale.addr = alloca i32, align 4
  %max_hscale.addr = alloca i32, align 4
  %src_w = alloca i32, align 4
  %dst_w = alloca i32, align 4
  %hscale = alloca i32, align 4
  store %struct.drm_rect* %src, %struct.drm_rect** %src.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %src.addr, metadata !312, metadata !DIExpression()), !dbg !313
  store %struct.drm_rect* %dst, %struct.drm_rect** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %dst.addr, metadata !314, metadata !DIExpression()), !dbg !315
  store i32 %min_hscale, i32* %min_hscale.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %min_hscale.addr, metadata !316, metadata !DIExpression()), !dbg !317
  store i32 %max_hscale, i32* %max_hscale.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_hscale.addr, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata i32* %src_w, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !322
  %call = call i32 @drm_rect_width(%struct.drm_rect* %0) #4, !dbg !323
  store i32 %call, i32* %src_w, align 4, !dbg !321
  call void @llvm.dbg.declare(metadata i32* %dst_w, metadata !324, metadata !DIExpression()), !dbg !325
  %1 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !326
  %call1 = call i32 @drm_rect_width(%struct.drm_rect* %1) #4, !dbg !327
  store i32 %call1, i32* %dst_w, align 4, !dbg !325
  call void @llvm.dbg.declare(metadata i32* %hscale, metadata !328, metadata !DIExpression()), !dbg !329
  %2 = load i32, i32* %src_w, align 4, !dbg !330
  %3 = load i32, i32* %dst_w, align 4, !dbg !331
  %call2 = call i32 @drm_calc_scale(i32 %2, i32 %3) #4, !dbg !332
  store i32 %call2, i32* %hscale, align 4, !dbg !329
  %4 = load i32, i32* %hscale, align 4, !dbg !333
  %cmp = icmp slt i32 %4, 0, !dbg !335
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !336

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %dst_w, align 4, !dbg !337
  %cmp3 = icmp eq i32 %5, 0, !dbg !338
  br i1 %cmp3, label %if.then, label %if.end, !dbg !339

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* %hscale, align 4, !dbg !340
  store i32 %6, i32* %retval, align 4, !dbg !341
  br label %return, !dbg !341

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %hscale, align 4, !dbg !342
  %8 = load i32, i32* %min_hscale.addr, align 4, !dbg !344
  %cmp4 = icmp slt i32 %7, %8, !dbg !345
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !346

lor.lhs.false5:                                   ; preds = %if.end
  %9 = load i32, i32* %hscale, align 4, !dbg !347
  %10 = load i32, i32* %max_hscale.addr, align 4, !dbg !348
  %cmp6 = icmp sgt i32 %9, %10, !dbg !349
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !350

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 -34, i32* %retval, align 4, !dbg !351
  br label %return, !dbg !351

if.end8:                                          ; preds = %lor.lhs.false5
  %11 = load i32, i32* %hscale, align 4, !dbg !352
  store i32 %11, i32* %retval, align 4, !dbg !353
  br label %return, !dbg !353

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !354
  ret i32 %12, !dbg !354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @drm_calc_scale(i32 %src, i32 %dst) #0 !dbg !355 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i32, align 4
  %dst.addr = alloca i32, align 4
  %scale = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !358, metadata !DIExpression()), !dbg !359
  store i32 %dst, i32* %dst.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dst.addr, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata i32* %scale, metadata !362, metadata !DIExpression()), !dbg !363
  store i32 0, i32* %scale, align 4, !dbg !363
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !364, metadata !DIExpression()), !dbg !367
  %0 = load i32, i32* %src.addr, align 4, !dbg !367
  %cmp = icmp slt i32 %0, 0, !dbg !367
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !367

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %dst.addr, align 4, !dbg !367
  %cmp1 = icmp slt i32 %1, 0, !dbg !367
  br label %lor.end, !dbg !367

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %2, true, !dbg !367
  %lnot2 = xor i1 %lnot, true, !dbg !367
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !367
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !367
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !368
  %tobool = icmp ne i32 %3, 0, !dbg !368
  %lnot3 = xor i1 %tobool, true, !dbg !368
  %lnot5 = xor i1 %lnot3, true, !dbg !368
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !368
  %conv = sext i32 %lnot.ext6 to i64, !dbg !368
  %tobool7 = icmp ne i64 %conv, 0, !dbg !368
  br i1 %tobool7, label %if.then, label %if.end, !dbg !367

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !368

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !370

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !372

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !370

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 138, i32 2305, i64 12) #5, !dbg !374, !srcloc !376
  br label %do.end10, !dbg !374

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 209) #5, !dbg !377, !srcloc !379
  br label %do.body11, !dbg !370

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !380

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !370

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !370

if.end:                                           ; preds = %do.end13, %lor.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !367
  %tobool14 = icmp ne i32 %4, 0, !dbg !367
  %lnot15 = xor i1 %tobool14, true, !dbg !367
  %lnot17 = xor i1 %lnot15, true, !dbg !367
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !367
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !367
  store i64 %conv19, i64* %tmp, align 8, !dbg !368
  %5 = load i64, i64* %tmp, align 8, !dbg !367
  %tobool20 = icmp ne i64 %5, 0, !dbg !382
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !383

if.then21:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !384
  br label %return, !dbg !384

if.end22:                                         ; preds = %if.end
  %6 = load i32, i32* %dst.addr, align 4, !dbg !385
  %cmp23 = icmp eq i32 %6, 0, !dbg !387
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !388

if.then25:                                        ; preds = %if.end22
  store i32 0, i32* %retval, align 4, !dbg !389
  br label %return, !dbg !389

if.end26:                                         ; preds = %if.end22
  %7 = load i32, i32* %src.addr, align 4, !dbg !390
  %8 = load i32, i32* %dst.addr, align 4, !dbg !392
  %shl = shl i32 %8, 16, !dbg !393
  %cmp27 = icmp sgt i32 %7, %shl, !dbg !394
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !395

if.then29:                                        ; preds = %if.end26
  %9 = load i32, i32* %src.addr, align 4, !dbg !396
  %10 = load i32, i32* %dst.addr, align 4, !dbg !396
  %add = add i32 %9, %10, !dbg !396
  %sub = sub i32 %add, 1, !dbg !396
  %11 = load i32, i32* %dst.addr, align 4, !dbg !396
  %div = sdiv i32 %sub, %11, !dbg !396
  store i32 %div, i32* %retval, align 4, !dbg !397
  br label %return, !dbg !397

if.else:                                          ; preds = %if.end26
  %12 = load i32, i32* %src.addr, align 4, !dbg !398
  %13 = load i32, i32* %dst.addr, align 4, !dbg !399
  %div30 = sdiv i32 %12, %13, !dbg !400
  store i32 %div30, i32* %scale, align 4, !dbg !401
  br label %if.end31

if.end31:                                         ; preds = %if.else
  %14 = load i32, i32* %scale, align 4, !dbg !402
  store i32 %14, i32* %retval, align 4, !dbg !403
  br label %return, !dbg !403

return:                                           ; preds = %if.end31, %if.then29, %if.then25, %if.then21
  %15 = load i32, i32* %retval, align 4, !dbg !404
  ret i32 %15, !dbg !404
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_rect_calc_vscale(%struct.drm_rect* %src, %struct.drm_rect* %dst, i32 %min_vscale, i32 %max_vscale) #0 !dbg !405 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca %struct.drm_rect*, align 8
  %dst.addr = alloca %struct.drm_rect*, align 8
  %min_vscale.addr = alloca i32, align 4
  %max_vscale.addr = alloca i32, align 4
  %src_h = alloca i32, align 4
  %dst_h = alloca i32, align 4
  %vscale = alloca i32, align 4
  store %struct.drm_rect* %src, %struct.drm_rect** %src.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %src.addr, metadata !406, metadata !DIExpression()), !dbg !407
  store %struct.drm_rect* %dst, %struct.drm_rect** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %dst.addr, metadata !408, metadata !DIExpression()), !dbg !409
  store i32 %min_vscale, i32* %min_vscale.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %min_vscale.addr, metadata !410, metadata !DIExpression()), !dbg !411
  store i32 %max_vscale, i32* %max_vscale.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_vscale.addr, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata i32* %src_h, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load %struct.drm_rect*, %struct.drm_rect** %src.addr, align 8, !dbg !416
  %call = call i32 @drm_rect_height(%struct.drm_rect* %0) #4, !dbg !417
  store i32 %call, i32* %src_h, align 4, !dbg !415
  call void @llvm.dbg.declare(metadata i32* %dst_h, metadata !418, metadata !DIExpression()), !dbg !419
  %1 = load %struct.drm_rect*, %struct.drm_rect** %dst.addr, align 8, !dbg !420
  %call1 = call i32 @drm_rect_height(%struct.drm_rect* %1) #4, !dbg !421
  store i32 %call1, i32* %dst_h, align 4, !dbg !419
  call void @llvm.dbg.declare(metadata i32* %vscale, metadata !422, metadata !DIExpression()), !dbg !423
  %2 = load i32, i32* %src_h, align 4, !dbg !424
  %3 = load i32, i32* %dst_h, align 4, !dbg !425
  %call2 = call i32 @drm_calc_scale(i32 %2, i32 %3) #4, !dbg !426
  store i32 %call2, i32* %vscale, align 4, !dbg !423
  %4 = load i32, i32* %vscale, align 4, !dbg !427
  %cmp = icmp slt i32 %4, 0, !dbg !429
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !430

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %dst_h, align 4, !dbg !431
  %cmp3 = icmp eq i32 %5, 0, !dbg !432
  br i1 %cmp3, label %if.then, label %if.end, !dbg !433

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* %vscale, align 4, !dbg !434
  store i32 %6, i32* %retval, align 4, !dbg !435
  br label %return, !dbg !435

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32, i32* %vscale, align 4, !dbg !436
  %8 = load i32, i32* %min_vscale.addr, align 4, !dbg !438
  %cmp4 = icmp slt i32 %7, %8, !dbg !439
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !440

lor.lhs.false5:                                   ; preds = %if.end
  %9 = load i32, i32* %vscale, align 4, !dbg !441
  %10 = load i32, i32* %max_vscale.addr, align 4, !dbg !442
  %cmp6 = icmp sgt i32 %9, %10, !dbg !443
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !444

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 -34, i32* %retval, align 4, !dbg !445
  br label %return, !dbg !445

if.end8:                                          ; preds = %lor.lhs.false5
  %11 = load i32, i32* %vscale, align 4, !dbg !446
  store i32 %11, i32* %retval, align 4, !dbg !447
  br label %return, !dbg !447

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !448
  ret i32 %12, !dbg !448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_rect_debug_print(i8* %prefix, %struct.drm_rect* %r, i1 zeroext %fixed_point) #0 !dbg !449 {
entry:
  %prefix.addr = alloca i8*, align 8
  %r.addr = alloca %struct.drm_rect*, align 8
  %fixed_point.addr = alloca i8, align 1
  store i8* %prefix, i8** %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prefix.addr, metadata !455, metadata !DIExpression()), !dbg !456
  store %struct.drm_rect* %r, %struct.drm_rect** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %r.addr, metadata !457, metadata !DIExpression()), !dbg !458
  %frombool = zext i1 %fixed_point to i8
  store i8 %frombool, i8* %fixed_point.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %fixed_point.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load i8, i8* %fixed_point.addr, align 1, !dbg !461
  %tobool = trunc i8 %0 to i1, !dbg !461
  br i1 %tobool, label %if.then, label %if.else, !dbg !463

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %prefix.addr, align 8, !dbg !464
  %2 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !464
  %call = call i32 @drm_rect_width(%struct.drm_rect* %2) #4, !dbg !464
  %shr = ashr i32 %call, 16, !dbg !464
  %3 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !464
  %call1 = call i32 @drm_rect_width(%struct.drm_rect* %3) #4, !dbg !464
  %and = and i32 %call1, 65535, !dbg !464
  %mul = mul i32 %and, 15625, !dbg !464
  %shr2 = ashr i32 %mul, 10, !dbg !464
  %4 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !464
  %call3 = call i32 @drm_rect_height(%struct.drm_rect* %4) #4, !dbg !464
  %shr4 = ashr i32 %call3, 16, !dbg !464
  %5 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !464
  %call5 = call i32 @drm_rect_height(%struct.drm_rect* %5) #4, !dbg !464
  %and6 = and i32 %call5, 65535, !dbg !464
  %mul7 = mul i32 %and6, 15625, !dbg !464
  %shr8 = ashr i32 %mul7, 10, !dbg !464
  %6 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !464
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %6, i32 0, i32 0, !dbg !464
  %7 = load i32, i32* %x1, align 4, !dbg !464
  %shr9 = ashr i32 %7, 16, !dbg !464
  %8 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !464
  %x110 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 0, !dbg !464
  %9 = load i32, i32* %x110, align 4, !dbg !464
  %and11 = and i32 %9, 65535, !dbg !464
  %mul12 = mul i32 %and11, 15625, !dbg !464
  %shr13 = ashr i32 %mul12, 10, !dbg !464
  %10 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !464
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %10, i32 0, i32 1, !dbg !464
  %11 = load i32, i32* %y1, align 4, !dbg !464
  %shr14 = ashr i32 %11, 16, !dbg !464
  %12 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !464
  %y115 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %12, i32 0, i32 1, !dbg !464
  %13 = load i32, i32* %y115, align 4, !dbg !464
  %and16 = and i32 %13, 65535, !dbg !464
  %mul17 = mul i32 %and16, 15625, !dbg !464
  %shr18 = ashr i32 %mul17, 10, !dbg !464
  call void (i32, i8*, ...) @__drm_dbg(i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %1, i32 %shr, i32 %shr2, i32 %shr4, i32 %shr8, i32 %shr9, i32 %shr13, i32 %shr14, i32 %shr18) #4, !dbg !464
  br label %if.end, !dbg !464

if.else:                                          ; preds = %entry
  %14 = load i8*, i8** %prefix.addr, align 8, !dbg !465
  %15 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !465
  %call19 = call i32 @drm_rect_width(%struct.drm_rect* %15) #4, !dbg !465
  %16 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !465
  %call20 = call i32 @drm_rect_height(%struct.drm_rect* %16) #4, !dbg !465
  %17 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !465
  %x121 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %17, i32 0, i32 0, !dbg !465
  %18 = load i32, i32* %x121, align 4, !dbg !465
  %19 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !465
  %y122 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %19, i32 0, i32 1, !dbg !465
  %20 = load i32, i32* %y122, align 4, !dbg !465
  call void (i32, i8*, ...) @__drm_dbg(i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 %call19, i32 %call20, i32 %18, i32 %20) #4, !dbg !465
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !466
}

; Function Attrs: noredzone
declare dso_local void @__drm_dbg(i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_rect_rotate(%struct.drm_rect* %r, i32 %width, i32 %height, i32 %rotation) #0 !dbg !467 {
entry:
  %r.addr = alloca %struct.drm_rect*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %rotation.addr = alloca i32, align 4
  %tmp = alloca %struct.drm_rect, align 4
  store %struct.drm_rect* %r, %struct.drm_rect** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %r.addr, metadata !470, metadata !DIExpression()), !dbg !471
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !472, metadata !DIExpression()), !dbg !473
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !474, metadata !DIExpression()), !dbg !475
  store i32 %rotation, i32* %rotation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rotation.addr, metadata !476, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.declare(metadata %struct.drm_rect* %tmp, metadata !478, metadata !DIExpression()), !dbg !479
  %0 = load i32, i32* %rotation.addr, align 4, !dbg !480
  %and = and i32 %0, 48, !dbg !482
  %tobool = icmp ne i32 %and, 0, !dbg !482
  br i1 %tobool, label %if.then, label %if.end15, !dbg !483

if.then:                                          ; preds = %entry
  %1 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !484
  %2 = bitcast %struct.drm_rect* %tmp to i8*, !dbg !486
  %3 = bitcast %struct.drm_rect* %1 to i8*, !dbg !486
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 16, i1 false), !dbg !486
  %4 = load i32, i32* %rotation.addr, align 4, !dbg !487
  %and1 = and i32 %4, 16, !dbg !489
  %tobool2 = icmp ne i32 %and1, 0, !dbg !489
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !490

if.then3:                                         ; preds = %if.then
  %5 = load i32, i32* %width.addr, align 4, !dbg !491
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 2, !dbg !493
  %6 = load i32, i32* %x2, align 4, !dbg !493
  %sub = sub i32 %5, %6, !dbg !494
  %7 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !495
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %7, i32 0, i32 0, !dbg !496
  store i32 %sub, i32* %x1, align 4, !dbg !497
  %8 = load i32, i32* %width.addr, align 4, !dbg !498
  %x14 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 0, !dbg !499
  %9 = load i32, i32* %x14, align 4, !dbg !499
  %sub5 = sub i32 %8, %9, !dbg !500
  %10 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !501
  %x26 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %10, i32 0, i32 2, !dbg !502
  store i32 %sub5, i32* %x26, align 4, !dbg !503
  br label %if.end, !dbg !504

if.end:                                           ; preds = %if.then3, %if.then
  %11 = load i32, i32* %rotation.addr, align 4, !dbg !505
  %and7 = and i32 %11, 32, !dbg !507
  %tobool8 = icmp ne i32 %and7, 0, !dbg !507
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !508

if.then9:                                         ; preds = %if.end
  %12 = load i32, i32* %height.addr, align 4, !dbg !509
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 3, !dbg !511
  %13 = load i32, i32* %y2, align 4, !dbg !511
  %sub10 = sub i32 %12, %13, !dbg !512
  %14 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !513
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %14, i32 0, i32 1, !dbg !514
  store i32 %sub10, i32* %y1, align 4, !dbg !515
  %15 = load i32, i32* %height.addr, align 4, !dbg !516
  %y111 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 1, !dbg !517
  %16 = load i32, i32* %y111, align 4, !dbg !517
  %sub12 = sub i32 %15, %16, !dbg !518
  %17 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !519
  %y213 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %17, i32 0, i32 3, !dbg !520
  store i32 %sub12, i32* %y213, align 4, !dbg !521
  br label %if.end14, !dbg !522

if.end14:                                         ; preds = %if.then9, %if.end
  br label %if.end15, !dbg !523

if.end15:                                         ; preds = %if.end14, %entry
  %18 = load i32, i32* %rotation.addr, align 4, !dbg !524
  %and16 = and i32 %18, 15, !dbg !525
  switch i32 %and16, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
    i32 4, label %sw.bb28
    i32 8, label %sw.bb41
  ], !dbg !526

sw.bb:                                            ; preds = %if.end15
  br label %sw.epilog, !dbg !527

sw.bb17:                                          ; preds = %if.end15
  %19 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !529
  %20 = bitcast %struct.drm_rect* %tmp to i8*, !dbg !530
  %21 = bitcast %struct.drm_rect* %19 to i8*, !dbg !530
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 16, i1 false), !dbg !530
  %y118 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 1, !dbg !531
  %22 = load i32, i32* %y118, align 4, !dbg !531
  %23 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !532
  %x119 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %23, i32 0, i32 0, !dbg !533
  store i32 %22, i32* %x119, align 4, !dbg !534
  %y220 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 3, !dbg !535
  %24 = load i32, i32* %y220, align 4, !dbg !535
  %25 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !536
  %x221 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %25, i32 0, i32 2, !dbg !537
  store i32 %24, i32* %x221, align 4, !dbg !538
  %26 = load i32, i32* %width.addr, align 4, !dbg !539
  %x222 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 2, !dbg !540
  %27 = load i32, i32* %x222, align 4, !dbg !540
  %sub23 = sub i32 %26, %27, !dbg !541
  %28 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !542
  %y124 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %28, i32 0, i32 1, !dbg !543
  store i32 %sub23, i32* %y124, align 4, !dbg !544
  %29 = load i32, i32* %width.addr, align 4, !dbg !545
  %x125 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 0, !dbg !546
  %30 = load i32, i32* %x125, align 4, !dbg !546
  %sub26 = sub i32 %29, %30, !dbg !547
  %31 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !548
  %y227 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %31, i32 0, i32 3, !dbg !549
  store i32 %sub26, i32* %y227, align 4, !dbg !550
  br label %sw.epilog, !dbg !551

sw.bb28:                                          ; preds = %if.end15
  %32 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !552
  %33 = bitcast %struct.drm_rect* %tmp to i8*, !dbg !553
  %34 = bitcast %struct.drm_rect* %32 to i8*, !dbg !553
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 16, i1 false), !dbg !553
  %35 = load i32, i32* %width.addr, align 4, !dbg !554
  %x229 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 2, !dbg !555
  %36 = load i32, i32* %x229, align 4, !dbg !555
  %sub30 = sub i32 %35, %36, !dbg !556
  %37 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !557
  %x131 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %37, i32 0, i32 0, !dbg !558
  store i32 %sub30, i32* %x131, align 4, !dbg !559
  %38 = load i32, i32* %width.addr, align 4, !dbg !560
  %x132 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 0, !dbg !561
  %39 = load i32, i32* %x132, align 4, !dbg !561
  %sub33 = sub i32 %38, %39, !dbg !562
  %40 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !563
  %x234 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %40, i32 0, i32 2, !dbg !564
  store i32 %sub33, i32* %x234, align 4, !dbg !565
  %41 = load i32, i32* %height.addr, align 4, !dbg !566
  %y235 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 3, !dbg !567
  %42 = load i32, i32* %y235, align 4, !dbg !567
  %sub36 = sub i32 %41, %42, !dbg !568
  %43 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !569
  %y137 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %43, i32 0, i32 1, !dbg !570
  store i32 %sub36, i32* %y137, align 4, !dbg !571
  %44 = load i32, i32* %height.addr, align 4, !dbg !572
  %y138 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 1, !dbg !573
  %45 = load i32, i32* %y138, align 4, !dbg !573
  %sub39 = sub i32 %44, %45, !dbg !574
  %46 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !575
  %y240 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %46, i32 0, i32 3, !dbg !576
  store i32 %sub39, i32* %y240, align 4, !dbg !577
  br label %sw.epilog, !dbg !578

sw.bb41:                                          ; preds = %if.end15
  %47 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !579
  %48 = bitcast %struct.drm_rect* %tmp to i8*, !dbg !580
  %49 = bitcast %struct.drm_rect* %47 to i8*, !dbg !580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 16, i1 false), !dbg !580
  %50 = load i32, i32* %height.addr, align 4, !dbg !581
  %y242 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 3, !dbg !582
  %51 = load i32, i32* %y242, align 4, !dbg !582
  %sub43 = sub i32 %50, %51, !dbg !583
  %52 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !584
  %x144 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %52, i32 0, i32 0, !dbg !585
  store i32 %sub43, i32* %x144, align 4, !dbg !586
  %53 = load i32, i32* %height.addr, align 4, !dbg !587
  %y145 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 1, !dbg !588
  %54 = load i32, i32* %y145, align 4, !dbg !588
  %sub46 = sub i32 %53, %54, !dbg !589
  %55 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !590
  %x247 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %55, i32 0, i32 2, !dbg !591
  store i32 %sub46, i32* %x247, align 4, !dbg !592
  %x148 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 0, !dbg !593
  %56 = load i32, i32* %x148, align 4, !dbg !593
  %57 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !594
  %y149 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %57, i32 0, i32 1, !dbg !595
  store i32 %56, i32* %y149, align 4, !dbg !596
  %x250 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 2, !dbg !597
  %58 = load i32, i32* %x250, align 4, !dbg !597
  %59 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !598
  %y251 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %59, i32 0, i32 3, !dbg !599
  store i32 %58, i32* %y251, align 4, !dbg !600
  br label %sw.epilog, !dbg !601

sw.default:                                       ; preds = %if.end15
  br label %sw.epilog, !dbg !602

sw.epilog:                                        ; preds = %sw.default, %sw.bb41, %sw.bb28, %sw.bb17, %sw.bb
  ret void, !dbg !603
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_rect_rotate_inv(%struct.drm_rect* %r, i32 %width, i32 %height, i32 %rotation) #0 !dbg !604 {
entry:
  %r.addr = alloca %struct.drm_rect*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %rotation.addr = alloca i32, align 4
  %tmp = alloca %struct.drm_rect, align 4
  store %struct.drm_rect* %r, %struct.drm_rect** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_rect** %r.addr, metadata !605, metadata !DIExpression()), !dbg !606
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !607, metadata !DIExpression()), !dbg !608
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !609, metadata !DIExpression()), !dbg !610
  store i32 %rotation, i32* %rotation.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rotation.addr, metadata !611, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.declare(metadata %struct.drm_rect* %tmp, metadata !613, metadata !DIExpression()), !dbg !614
  %0 = load i32, i32* %rotation.addr, align 4, !dbg !615
  %and = and i32 %0, 15, !dbg !616
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb7
    i32 8, label %sw.bb20
  ], !dbg !617

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !618

sw.bb1:                                           ; preds = %entry
  %1 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !620
  %2 = bitcast %struct.drm_rect* %tmp to i8*, !dbg !621
  %3 = bitcast %struct.drm_rect* %1 to i8*, !dbg !621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 16, i1 false), !dbg !621
  %4 = load i32, i32* %width.addr, align 4, !dbg !622
  %y2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 3, !dbg !623
  %5 = load i32, i32* %y2, align 4, !dbg !623
  %sub = sub i32 %4, %5, !dbg !624
  %6 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !625
  %x1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %6, i32 0, i32 0, !dbg !626
  store i32 %sub, i32* %x1, align 4, !dbg !627
  %7 = load i32, i32* %width.addr, align 4, !dbg !628
  %y1 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 1, !dbg !629
  %8 = load i32, i32* %y1, align 4, !dbg !629
  %sub2 = sub i32 %7, %8, !dbg !630
  %9 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !631
  %x2 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 2, !dbg !632
  store i32 %sub2, i32* %x2, align 4, !dbg !633
  %x13 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 0, !dbg !634
  %10 = load i32, i32* %x13, align 4, !dbg !634
  %11 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !635
  %y14 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %11, i32 0, i32 1, !dbg !636
  store i32 %10, i32* %y14, align 4, !dbg !637
  %x25 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 2, !dbg !638
  %12 = load i32, i32* %x25, align 4, !dbg !638
  %13 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !639
  %y26 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %13, i32 0, i32 3, !dbg !640
  store i32 %12, i32* %y26, align 4, !dbg !641
  br label %sw.epilog, !dbg !642

sw.bb7:                                           ; preds = %entry
  %14 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !643
  %15 = bitcast %struct.drm_rect* %tmp to i8*, !dbg !644
  %16 = bitcast %struct.drm_rect* %14 to i8*, !dbg !644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 16, i1 false), !dbg !644
  %17 = load i32, i32* %width.addr, align 4, !dbg !645
  %x28 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 2, !dbg !646
  %18 = load i32, i32* %x28, align 4, !dbg !646
  %sub9 = sub i32 %17, %18, !dbg !647
  %19 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !648
  %x110 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %19, i32 0, i32 0, !dbg !649
  store i32 %sub9, i32* %x110, align 4, !dbg !650
  %20 = load i32, i32* %width.addr, align 4, !dbg !651
  %x111 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 0, !dbg !652
  %21 = load i32, i32* %x111, align 4, !dbg !652
  %sub12 = sub i32 %20, %21, !dbg !653
  %22 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !654
  %x213 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %22, i32 0, i32 2, !dbg !655
  store i32 %sub12, i32* %x213, align 4, !dbg !656
  %23 = load i32, i32* %height.addr, align 4, !dbg !657
  %y214 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 3, !dbg !658
  %24 = load i32, i32* %y214, align 4, !dbg !658
  %sub15 = sub i32 %23, %24, !dbg !659
  %25 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !660
  %y116 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %25, i32 0, i32 1, !dbg !661
  store i32 %sub15, i32* %y116, align 4, !dbg !662
  %26 = load i32, i32* %height.addr, align 4, !dbg !663
  %y117 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 1, !dbg !664
  %27 = load i32, i32* %y117, align 4, !dbg !664
  %sub18 = sub i32 %26, %27, !dbg !665
  %28 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !666
  %y219 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %28, i32 0, i32 3, !dbg !667
  store i32 %sub18, i32* %y219, align 4, !dbg !668
  br label %sw.epilog, !dbg !669

sw.bb20:                                          ; preds = %entry
  %29 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !670
  %30 = bitcast %struct.drm_rect* %tmp to i8*, !dbg !671
  %31 = bitcast %struct.drm_rect* %29 to i8*, !dbg !671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 16, i1 false), !dbg !671
  %y121 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 1, !dbg !672
  %32 = load i32, i32* %y121, align 4, !dbg !672
  %33 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !673
  %x122 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %33, i32 0, i32 0, !dbg !674
  store i32 %32, i32* %x122, align 4, !dbg !675
  %y223 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 3, !dbg !676
  %34 = load i32, i32* %y223, align 4, !dbg !676
  %35 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !677
  %x224 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %35, i32 0, i32 2, !dbg !678
  store i32 %34, i32* %x224, align 4, !dbg !679
  %36 = load i32, i32* %height.addr, align 4, !dbg !680
  %x225 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 2, !dbg !681
  %37 = load i32, i32* %x225, align 4, !dbg !681
  %sub26 = sub i32 %36, %37, !dbg !682
  %38 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !683
  %y127 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %38, i32 0, i32 1, !dbg !684
  store i32 %sub26, i32* %y127, align 4, !dbg !685
  %39 = load i32, i32* %height.addr, align 4, !dbg !686
  %x128 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 0, !dbg !687
  %40 = load i32, i32* %x128, align 4, !dbg !687
  %sub29 = sub i32 %39, %40, !dbg !688
  %41 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !689
  %y230 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %41, i32 0, i32 3, !dbg !690
  store i32 %sub29, i32* %y230, align 4, !dbg !691
  br label %sw.epilog, !dbg !692

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !693

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb7, %sw.bb1, %sw.bb
  %42 = load i32, i32* %rotation.addr, align 4, !dbg !694
  %and31 = and i32 %42, 48, !dbg !696
  %tobool = icmp ne i32 %and31, 0, !dbg !696
  br i1 %tobool, label %if.then, label %if.end51, !dbg !697

if.then:                                          ; preds = %sw.epilog
  %43 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !698
  %44 = bitcast %struct.drm_rect* %tmp to i8*, !dbg !700
  %45 = bitcast %struct.drm_rect* %43 to i8*, !dbg !700
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 16, i1 false), !dbg !700
  %46 = load i32, i32* %rotation.addr, align 4, !dbg !701
  %and32 = and i32 %46, 16, !dbg !703
  %tobool33 = icmp ne i32 %and32, 0, !dbg !703
  br i1 %tobool33, label %if.then34, label %if.end, !dbg !704

if.then34:                                        ; preds = %if.then
  %47 = load i32, i32* %width.addr, align 4, !dbg !705
  %x235 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 2, !dbg !707
  %48 = load i32, i32* %x235, align 4, !dbg !707
  %sub36 = sub i32 %47, %48, !dbg !708
  %49 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !709
  %x137 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %49, i32 0, i32 0, !dbg !710
  store i32 %sub36, i32* %x137, align 4, !dbg !711
  %50 = load i32, i32* %width.addr, align 4, !dbg !712
  %x138 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 0, !dbg !713
  %51 = load i32, i32* %x138, align 4, !dbg !713
  %sub39 = sub i32 %50, %51, !dbg !714
  %52 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !715
  %x240 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %52, i32 0, i32 2, !dbg !716
  store i32 %sub39, i32* %x240, align 4, !dbg !717
  br label %if.end, !dbg !718

if.end:                                           ; preds = %if.then34, %if.then
  %53 = load i32, i32* %rotation.addr, align 4, !dbg !719
  %and41 = and i32 %53, 32, !dbg !721
  %tobool42 = icmp ne i32 %and41, 0, !dbg !721
  br i1 %tobool42, label %if.then43, label %if.end50, !dbg !722

if.then43:                                        ; preds = %if.end
  %54 = load i32, i32* %height.addr, align 4, !dbg !723
  %y244 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 3, !dbg !725
  %55 = load i32, i32* %y244, align 4, !dbg !725
  %sub45 = sub i32 %54, %55, !dbg !726
  %56 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !727
  %y146 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %56, i32 0, i32 1, !dbg !728
  store i32 %sub45, i32* %y146, align 4, !dbg !729
  %57 = load i32, i32* %height.addr, align 4, !dbg !730
  %y147 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %tmp, i32 0, i32 1, !dbg !731
  %58 = load i32, i32* %y147, align 4, !dbg !731
  %sub48 = sub i32 %57, %58, !dbg !732
  %59 = load %struct.drm_rect*, %struct.drm_rect** %r.addr, align 8, !dbg !733
  %y249 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %59, i32 0, i32 3, !dbg !734
  store i32 %sub48, i32* %y249, align 4, !dbg !735
  br label %if.end50, !dbg !736

if.end50:                                         ; preds = %if.then43, %if.end
  br label %if.end51, !dbg !737

if.end51:                                         ; preds = %if.end50, %sw.epilog
  ret void, !dbg !738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mul_u32_u32(i32 %a, i32 %b) #0 !dbg !739 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !743, metadata !DIExpression()), !dbg !744
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !745, metadata !DIExpression()), !dbg !746
  %0 = load i32, i32* %a.addr, align 4, !dbg !747
  %conv = zext i32 %0 to i64, !dbg !748
  %1 = load i32, i32* %b.addr, align 4, !dbg !749
  %conv1 = zext i32 %1 to i64, !dbg !749
  %mul = mul i64 %conv, %conv1, !dbg !750
  ret i64 %mul, !dbg !751
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !17, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/drm_rect.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
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
!17 = !{!18, !19, !21}
!18 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !20, line: 107, baseType: !21)
!20 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !22, line: 23, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !24, line: 31, baseType: !18)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"Code Model", i32 2}
!29 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!30 = distinct !DISubprogram(name: "drm_rect_intersect", scope: !1, file: !1, line: 44, type: !31, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !35, !44}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !20, line: 30, baseType: !34)
!34 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !37, line: 43, size: 128, elements: !38)
!37 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !41, !42, !43}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !36, file: !37, line: 44, baseType: !40, size: 32)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !36, file: !37, line: 44, baseType: !40, size: 32, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !36, file: !37, line: 44, baseType: !40, size: 32, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !36, file: !37, line: 44, baseType: !40, size: 32, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!46 = !{}
!47 = !DILocalVariable(name: "r1", arg: 1, scope: !30, file: !1, line: 44, type: !35)
!48 = !DILocation(line: 44, column: 42, scope: !30)
!49 = !DILocalVariable(name: "r2", arg: 2, scope: !30, file: !1, line: 44, type: !44)
!50 = !DILocation(line: 44, column: 69, scope: !30)
!51 = !DILocalVariable(name: "__UNIQUE_ID___x199", scope: !52, file: !1, line: 46, type: !40)
!52 = distinct !DILexicalBlock(scope: !30, file: !1, line: 46, column: 11)
!53 = !DILocation(line: 46, column: 11, scope: !52)
!54 = !DILocalVariable(name: "__UNIQUE_ID___y200", scope: !52, file: !1, line: 46, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!56 = !DILocation(line: 46, column: 2, scope: !30)
!57 = !DILocation(line: 46, column: 6, scope: !30)
!58 = !DILocation(line: 46, column: 9, scope: !30)
!59 = !DILocalVariable(name: "__UNIQUE_ID___x201", scope: !60, file: !1, line: 47, type: !40)
!60 = distinct !DILexicalBlock(scope: !30, file: !1, line: 47, column: 11)
!61 = !DILocation(line: 47, column: 11, scope: !60)
!62 = !DILocalVariable(name: "__UNIQUE_ID___y202", scope: !60, file: !1, line: 47, type: !55)
!63 = !DILocation(line: 47, column: 2, scope: !30)
!64 = !DILocation(line: 47, column: 6, scope: !30)
!65 = !DILocation(line: 47, column: 9, scope: !30)
!66 = !DILocalVariable(name: "__UNIQUE_ID___x203", scope: !67, file: !1, line: 48, type: !40)
!67 = distinct !DILexicalBlock(scope: !30, file: !1, line: 48, column: 11)
!68 = !DILocation(line: 48, column: 11, scope: !67)
!69 = !DILocalVariable(name: "__UNIQUE_ID___y204", scope: !67, file: !1, line: 48, type: !55)
!70 = !DILocation(line: 48, column: 2, scope: !30)
!71 = !DILocation(line: 48, column: 6, scope: !30)
!72 = !DILocation(line: 48, column: 9, scope: !30)
!73 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !74, file: !1, line: 49, type: !40)
!74 = distinct !DILexicalBlock(scope: !30, file: !1, line: 49, column: 11)
!75 = !DILocation(line: 49, column: 11, scope: !74)
!76 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !74, file: !1, line: 49, type: !55)
!77 = !DILocation(line: 49, column: 2, scope: !30)
!78 = !DILocation(line: 49, column: 6, scope: !30)
!79 = !DILocation(line: 49, column: 9, scope: !30)
!80 = !DILocation(line: 51, column: 26, scope: !30)
!81 = !DILocation(line: 51, column: 9, scope: !30)
!82 = !DILocation(line: 51, column: 2, scope: !30)
!83 = distinct !DISubprogram(name: "drm_rect_visible", scope: !37, file: !37, line: 189, type: !84, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!84 = !DISubroutineType(types: !85)
!85 = !{!33, !44}
!86 = !DILocalVariable(name: "r", arg: 1, scope: !83, file: !37, line: 189, type: !44)
!87 = !DILocation(line: 189, column: 60, scope: !83)
!88 = !DILocation(line: 191, column: 24, scope: !83)
!89 = !DILocation(line: 191, column: 9, scope: !83)
!90 = !DILocation(line: 191, column: 27, scope: !83)
!91 = !DILocation(line: 191, column: 31, scope: !83)
!92 = !DILocation(line: 191, column: 50, scope: !83)
!93 = !DILocation(line: 191, column: 34, scope: !83)
!94 = !DILocation(line: 191, column: 53, scope: !83)
!95 = !DILocation(line: 0, scope: !83)
!96 = !DILocation(line: 191, column: 2, scope: !83)
!97 = distinct !DISubprogram(name: "drm_rect_clip_scaled", scope: !1, file: !1, line: 92, type: !98, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!98 = !DISubroutineType(types: !99)
!99 = !{!33, !35, !35, !44}
!100 = !DILocalVariable(name: "src", arg: 1, scope: !97, file: !1, line: 92, type: !35)
!101 = !DILocation(line: 92, column: 44, scope: !97)
!102 = !DILocalVariable(name: "dst", arg: 2, scope: !97, file: !1, line: 92, type: !35)
!103 = !DILocation(line: 92, column: 66, scope: !97)
!104 = !DILocalVariable(name: "clip", arg: 3, scope: !97, file: !1, line: 93, type: !44)
!105 = !DILocation(line: 93, column: 29, scope: !97)
!106 = !DILocalVariable(name: "diff", scope: !97, file: !1, line: 95, type: !40)
!107 = !DILocation(line: 95, column: 6, scope: !97)
!108 = !DILocation(line: 97, column: 9, scope: !97)
!109 = !DILocation(line: 97, column: 15, scope: !97)
!110 = !DILocation(line: 97, column: 20, scope: !97)
!111 = !DILocation(line: 97, column: 25, scope: !97)
!112 = !DILocation(line: 97, column: 18, scope: !97)
!113 = !DILocation(line: 97, column: 7, scope: !97)
!114 = !DILocation(line: 98, column: 6, scope: !115)
!115 = distinct !DILexicalBlock(scope: !97, file: !1, line: 98, column: 6)
!116 = !DILocation(line: 98, column: 11, scope: !115)
!117 = !DILocation(line: 98, column: 6, scope: !97)
!118 = !DILocalVariable(name: "new_src_w", scope: !119, file: !1, line: 99, type: !120)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 98, column: 16)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !22, line: 21, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !24, line: 27, baseType: !5)
!122 = !DILocation(line: 99, column: 7, scope: !119)
!123 = !DILocation(line: 99, column: 46, scope: !119)
!124 = !DILocation(line: 99, column: 31, scope: !119)
!125 = !DILocation(line: 100, column: 25, scope: !119)
!126 = !DILocation(line: 100, column: 10, scope: !119)
!127 = !DILocation(line: 99, column: 19, scope: !119)
!128 = !DILocation(line: 102, column: 13, scope: !119)
!129 = !DILocation(line: 102, column: 18, scope: !119)
!130 = !DILocation(line: 102, column: 23, scope: !119)
!131 = !DILocation(line: 102, column: 21, scope: !119)
!132 = !DILocation(line: 102, column: 3, scope: !119)
!133 = !DILocation(line: 102, column: 8, scope: !119)
!134 = !DILocation(line: 102, column: 11, scope: !119)
!135 = !DILocation(line: 103, column: 14, scope: !119)
!136 = !DILocation(line: 103, column: 3, scope: !119)
!137 = !DILocation(line: 103, column: 8, scope: !119)
!138 = !DILocation(line: 103, column: 11, scope: !119)
!139 = !DILocation(line: 104, column: 2, scope: !119)
!140 = !DILocation(line: 105, column: 9, scope: !97)
!141 = !DILocation(line: 105, column: 15, scope: !97)
!142 = !DILocation(line: 105, column: 20, scope: !97)
!143 = !DILocation(line: 105, column: 25, scope: !97)
!144 = !DILocation(line: 105, column: 18, scope: !97)
!145 = !DILocation(line: 105, column: 7, scope: !97)
!146 = !DILocation(line: 106, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !97, file: !1, line: 106, column: 6)
!148 = !DILocation(line: 106, column: 11, scope: !147)
!149 = !DILocation(line: 106, column: 6, scope: !97)
!150 = !DILocalVariable(name: "new_src_h", scope: !151, file: !1, line: 107, type: !120)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 106, column: 16)
!152 = !DILocation(line: 107, column: 7, scope: !151)
!153 = !DILocation(line: 107, column: 47, scope: !151)
!154 = !DILocation(line: 107, column: 31, scope: !151)
!155 = !DILocation(line: 108, column: 26, scope: !151)
!156 = !DILocation(line: 108, column: 10, scope: !151)
!157 = !DILocation(line: 107, column: 19, scope: !151)
!158 = !DILocation(line: 110, column: 13, scope: !151)
!159 = !DILocation(line: 110, column: 18, scope: !151)
!160 = !DILocation(line: 110, column: 23, scope: !151)
!161 = !DILocation(line: 110, column: 21, scope: !151)
!162 = !DILocation(line: 110, column: 3, scope: !151)
!163 = !DILocation(line: 110, column: 8, scope: !151)
!164 = !DILocation(line: 110, column: 11, scope: !151)
!165 = !DILocation(line: 111, column: 14, scope: !151)
!166 = !DILocation(line: 111, column: 3, scope: !151)
!167 = !DILocation(line: 111, column: 8, scope: !151)
!168 = !DILocation(line: 111, column: 11, scope: !151)
!169 = !DILocation(line: 112, column: 2, scope: !151)
!170 = !DILocation(line: 113, column: 9, scope: !97)
!171 = !DILocation(line: 113, column: 14, scope: !97)
!172 = !DILocation(line: 113, column: 19, scope: !97)
!173 = !DILocation(line: 113, column: 25, scope: !97)
!174 = !DILocation(line: 113, column: 17, scope: !97)
!175 = !DILocation(line: 113, column: 7, scope: !97)
!176 = !DILocation(line: 114, column: 6, scope: !177)
!177 = distinct !DILexicalBlock(scope: !97, file: !1, line: 114, column: 6)
!178 = !DILocation(line: 114, column: 11, scope: !177)
!179 = !DILocation(line: 114, column: 6, scope: !97)
!180 = !DILocalVariable(name: "new_src_w", scope: !181, file: !1, line: 115, type: !120)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 114, column: 16)
!182 = !DILocation(line: 115, column: 7, scope: !181)
!183 = !DILocation(line: 115, column: 46, scope: !181)
!184 = !DILocation(line: 115, column: 31, scope: !181)
!185 = !DILocation(line: 116, column: 25, scope: !181)
!186 = !DILocation(line: 116, column: 10, scope: !181)
!187 = !DILocation(line: 115, column: 19, scope: !181)
!188 = !DILocation(line: 118, column: 13, scope: !181)
!189 = !DILocation(line: 118, column: 18, scope: !181)
!190 = !DILocation(line: 118, column: 23, scope: !181)
!191 = !DILocation(line: 118, column: 21, scope: !181)
!192 = !DILocation(line: 118, column: 3, scope: !181)
!193 = !DILocation(line: 118, column: 8, scope: !181)
!194 = !DILocation(line: 118, column: 11, scope: !181)
!195 = !DILocation(line: 119, column: 14, scope: !181)
!196 = !DILocation(line: 119, column: 3, scope: !181)
!197 = !DILocation(line: 119, column: 8, scope: !181)
!198 = !DILocation(line: 119, column: 11, scope: !181)
!199 = !DILocation(line: 120, column: 2, scope: !181)
!200 = !DILocation(line: 121, column: 9, scope: !97)
!201 = !DILocation(line: 121, column: 14, scope: !97)
!202 = !DILocation(line: 121, column: 19, scope: !97)
!203 = !DILocation(line: 121, column: 25, scope: !97)
!204 = !DILocation(line: 121, column: 17, scope: !97)
!205 = !DILocation(line: 121, column: 7, scope: !97)
!206 = !DILocation(line: 122, column: 6, scope: !207)
!207 = distinct !DILexicalBlock(scope: !97, file: !1, line: 122, column: 6)
!208 = !DILocation(line: 122, column: 11, scope: !207)
!209 = !DILocation(line: 122, column: 6, scope: !97)
!210 = !DILocalVariable(name: "new_src_h", scope: !211, file: !1, line: 123, type: !120)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 122, column: 16)
!212 = !DILocation(line: 123, column: 7, scope: !211)
!213 = !DILocation(line: 123, column: 47, scope: !211)
!214 = !DILocation(line: 123, column: 31, scope: !211)
!215 = !DILocation(line: 124, column: 26, scope: !211)
!216 = !DILocation(line: 124, column: 10, scope: !211)
!217 = !DILocation(line: 123, column: 19, scope: !211)
!218 = !DILocation(line: 126, column: 13, scope: !211)
!219 = !DILocation(line: 126, column: 18, scope: !211)
!220 = !DILocation(line: 126, column: 23, scope: !211)
!221 = !DILocation(line: 126, column: 21, scope: !211)
!222 = !DILocation(line: 126, column: 3, scope: !211)
!223 = !DILocation(line: 126, column: 8, scope: !211)
!224 = !DILocation(line: 126, column: 11, scope: !211)
!225 = !DILocation(line: 127, column: 14, scope: !211)
!226 = !DILocation(line: 127, column: 3, scope: !211)
!227 = !DILocation(line: 127, column: 8, scope: !211)
!228 = !DILocation(line: 127, column: 11, scope: !211)
!229 = !DILocation(line: 128, column: 2, scope: !211)
!230 = !DILocation(line: 130, column: 26, scope: !97)
!231 = !DILocation(line: 130, column: 9, scope: !97)
!232 = !DILocation(line: 130, column: 2, scope: !97)
!233 = distinct !DISubprogram(name: "clip_scaled", scope: !1, file: !1, line: 55, type: !234, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!234 = !DISubroutineType(types: !235)
!235 = !{!120, !40, !40, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!237 = !DILocalVariable(name: "src", arg: 1, scope: !233, file: !1, line: 55, type: !40)
!238 = !DILocation(line: 55, column: 28, scope: !233)
!239 = !DILocalVariable(name: "dst", arg: 2, scope: !233, file: !1, line: 55, type: !40)
!240 = !DILocation(line: 55, column: 37, scope: !233)
!241 = !DILocalVariable(name: "clip", arg: 3, scope: !233, file: !1, line: 55, type: !236)
!242 = !DILocation(line: 55, column: 47, scope: !233)
!243 = !DILocalVariable(name: "tmp", scope: !233, file: !1, line: 57, type: !21)
!244 = !DILocation(line: 57, column: 6, scope: !233)
!245 = !DILocation(line: 59, column: 6, scope: !246)
!246 = distinct !DILexicalBlock(scope: !233, file: !1, line: 59, column: 6)
!247 = !DILocation(line: 59, column: 10, scope: !246)
!248 = !DILocation(line: 59, column: 6, scope: !233)
!249 = !DILocation(line: 60, column: 3, scope: !246)
!250 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !251, file: !1, line: 63, type: !40)
!251 = distinct !DILexicalBlock(scope: !233, file: !1, line: 63, column: 10)
!252 = !DILocation(line: 63, column: 10, scope: !251)
!253 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !251, file: !1, line: 63, type: !40)
!254 = !DILocation(line: 63, column: 3, scope: !233)
!255 = !DILocation(line: 63, column: 8, scope: !233)
!256 = !DILocation(line: 65, column: 20, scope: !233)
!257 = !DILocation(line: 65, column: 25, scope: !233)
!258 = !DILocation(line: 65, column: 32, scope: !233)
!259 = !DILocation(line: 65, column: 31, scope: !233)
!260 = !DILocation(line: 65, column: 29, scope: !233)
!261 = !DILocation(line: 65, column: 8, scope: !233)
!262 = !DILocation(line: 65, column: 6, scope: !233)
!263 = !DILocation(line: 71, column: 6, scope: !264)
!264 = distinct !DILexicalBlock(scope: !233, file: !1, line: 71, column: 6)
!265 = !DILocation(line: 71, column: 13, scope: !264)
!266 = !DILocation(line: 71, column: 17, scope: !264)
!267 = !DILocation(line: 71, column: 10, scope: !264)
!268 = !DILocation(line: 71, column: 6, scope: !233)
!269 = !DILocalVariable(name: "_tmp", scope: !270, file: !1, line: 72, type: !18)
!270 = distinct !DILexicalBlock(scope: !264, file: !1, line: 72, column: 10)
!271 = !DILocation(line: 72, column: 10, scope: !270)
!272 = !DILocalVariable(name: "__base", scope: !273, file: !1, line: 72, type: !274)
!273 = distinct !DILexicalBlock(scope: !270, file: !1, line: 72, column: 10)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !20, line: 104, baseType: !120)
!275 = !DILocation(line: 72, column: 10, scope: !273)
!276 = !DILocalVariable(name: "__rem", scope: !273, file: !1, line: 72, type: !274)
!277 = !DILocation(line: 72, column: 10, scope: !264)
!278 = !DILocation(line: 72, column: 3, scope: !264)
!279 = !DILocalVariable(name: "_tmp", scope: !280, file: !1, line: 74, type: !18)
!280 = distinct !DILexicalBlock(scope: !264, file: !1, line: 74, column: 10)
!281 = !DILocation(line: 74, column: 10, scope: !280)
!282 = !DILocalVariable(name: "__base", scope: !283, file: !1, line: 74, type: !274)
!283 = distinct !DILexicalBlock(scope: !280, file: !1, line: 74, column: 10)
!284 = !DILocation(line: 74, column: 10, scope: !283)
!285 = !DILocalVariable(name: "__rem", scope: !283, file: !1, line: 74, type: !274)
!286 = !DILocation(line: 74, column: 10, scope: !264)
!287 = !DILocation(line: 74, column: 3, scope: !264)
!288 = !DILocation(line: 75, column: 1, scope: !233)
!289 = distinct !DISubprogram(name: "drm_rect_width", scope: !37, file: !37, line: 165, type: !290, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!290 = !DISubroutineType(types: !291)
!291 = !{!40, !44}
!292 = !DILocalVariable(name: "r", arg: 1, scope: !289, file: !37, line: 165, type: !44)
!293 = !DILocation(line: 165, column: 57, scope: !289)
!294 = !DILocation(line: 167, column: 9, scope: !289)
!295 = !DILocation(line: 167, column: 12, scope: !289)
!296 = !DILocation(line: 167, column: 17, scope: !289)
!297 = !DILocation(line: 167, column: 20, scope: !289)
!298 = !DILocation(line: 167, column: 15, scope: !289)
!299 = !DILocation(line: 167, column: 2, scope: !289)
!300 = distinct !DISubprogram(name: "drm_rect_height", scope: !37, file: !37, line: 177, type: !290, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!301 = !DILocalVariable(name: "r", arg: 1, scope: !300, file: !37, line: 177, type: !44)
!302 = !DILocation(line: 177, column: 58, scope: !300)
!303 = !DILocation(line: 179, column: 9, scope: !300)
!304 = !DILocation(line: 179, column: 12, scope: !300)
!305 = !DILocation(line: 179, column: 17, scope: !300)
!306 = !DILocation(line: 179, column: 20, scope: !300)
!307 = !DILocation(line: 179, column: 15, scope: !300)
!308 = !DILocation(line: 179, column: 2, scope: !300)
!309 = distinct !DISubprogram(name: "drm_rect_calc_hscale", scope: !1, file: !1, line: 169, type: !310, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!310 = !DISubroutineType(types: !311)
!311 = !{!40, !44, !44, !40, !40}
!312 = !DILocalVariable(name: "src", arg: 1, scope: !309, file: !1, line: 169, type: !44)
!313 = !DILocation(line: 169, column: 49, scope: !309)
!314 = !DILocalVariable(name: "dst", arg: 2, scope: !309, file: !1, line: 170, type: !44)
!315 = !DILocation(line: 170, column: 28, scope: !309)
!316 = !DILocalVariable(name: "min_hscale", arg: 3, scope: !309, file: !1, line: 171, type: !40)
!317 = !DILocation(line: 171, column: 9, scope: !309)
!318 = !DILocalVariable(name: "max_hscale", arg: 4, scope: !309, file: !1, line: 171, type: !40)
!319 = !DILocation(line: 171, column: 25, scope: !309)
!320 = !DILocalVariable(name: "src_w", scope: !309, file: !1, line: 173, type: !40)
!321 = !DILocation(line: 173, column: 6, scope: !309)
!322 = !DILocation(line: 173, column: 29, scope: !309)
!323 = !DILocation(line: 173, column: 14, scope: !309)
!324 = !DILocalVariable(name: "dst_w", scope: !309, file: !1, line: 174, type: !40)
!325 = !DILocation(line: 174, column: 6, scope: !309)
!326 = !DILocation(line: 174, column: 29, scope: !309)
!327 = !DILocation(line: 174, column: 14, scope: !309)
!328 = !DILocalVariable(name: "hscale", scope: !309, file: !1, line: 175, type: !40)
!329 = !DILocation(line: 175, column: 6, scope: !309)
!330 = !DILocation(line: 175, column: 30, scope: !309)
!331 = !DILocation(line: 175, column: 37, scope: !309)
!332 = !DILocation(line: 175, column: 15, scope: !309)
!333 = !DILocation(line: 177, column: 6, scope: !334)
!334 = distinct !DILexicalBlock(scope: !309, file: !1, line: 177, column: 6)
!335 = !DILocation(line: 177, column: 13, scope: !334)
!336 = !DILocation(line: 177, column: 17, scope: !334)
!337 = !DILocation(line: 177, column: 20, scope: !334)
!338 = !DILocation(line: 177, column: 26, scope: !334)
!339 = !DILocation(line: 177, column: 6, scope: !309)
!340 = !DILocation(line: 178, column: 10, scope: !334)
!341 = !DILocation(line: 178, column: 3, scope: !334)
!342 = !DILocation(line: 180, column: 6, scope: !343)
!343 = distinct !DILexicalBlock(scope: !309, file: !1, line: 180, column: 6)
!344 = !DILocation(line: 180, column: 15, scope: !343)
!345 = !DILocation(line: 180, column: 13, scope: !343)
!346 = !DILocation(line: 180, column: 26, scope: !343)
!347 = !DILocation(line: 180, column: 29, scope: !343)
!348 = !DILocation(line: 180, column: 38, scope: !343)
!349 = !DILocation(line: 180, column: 36, scope: !343)
!350 = !DILocation(line: 180, column: 6, scope: !309)
!351 = !DILocation(line: 181, column: 3, scope: !343)
!352 = !DILocation(line: 183, column: 9, scope: !309)
!353 = !DILocation(line: 183, column: 2, scope: !309)
!354 = !DILocation(line: 184, column: 1, scope: !309)
!355 = distinct !DISubprogram(name: "drm_calc_scale", scope: !1, file: !1, line: 134, type: !356, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!356 = !DISubroutineType(types: !357)
!357 = !{!40, !40, !40}
!358 = !DILocalVariable(name: "src", arg: 1, scope: !355, file: !1, line: 134, type: !40)
!359 = !DILocation(line: 134, column: 31, scope: !355)
!360 = !DILocalVariable(name: "dst", arg: 2, scope: !355, file: !1, line: 134, type: !40)
!361 = !DILocation(line: 134, column: 40, scope: !355)
!362 = !DILocalVariable(name: "scale", scope: !355, file: !1, line: 136, type: !40)
!363 = !DILocation(line: 136, column: 6, scope: !355)
!364 = !DILocalVariable(name: "__ret_warn_on", scope: !365, file: !1, line: 138, type: !40)
!365 = distinct !DILexicalBlock(scope: !366, file: !1, line: 138, column: 6)
!366 = distinct !DILexicalBlock(scope: !355, file: !1, line: 138, column: 6)
!367 = !DILocation(line: 138, column: 6, scope: !365)
!368 = !DILocation(line: 138, column: 6, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !1, line: 138, column: 6)
!370 = !DILocation(line: 138, column: 6, scope: !371)
!371 = distinct !DILexicalBlock(scope: !369, file: !1, line: 138, column: 6)
!372 = !DILocation(line: 138, column: 6, scope: !373)
!373 = distinct !DILexicalBlock(scope: !371, file: !1, line: 138, column: 6)
!374 = !DILocation(line: 138, column: 6, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !1, line: 138, column: 6)
!376 = !{i32 -2142975143, i32 -2142975114, i32 -2142975068, i32 -2142975010, i32 -2142974956, i32 -2142974902, i32 -2142974847, i32 -2142974816}
!377 = !DILocation(line: 138, column: 6, scope: !378)
!378 = distinct !DILexicalBlock(scope: !371, file: !1, line: 138, column: 6)
!379 = !{i32 -2142974408, i32 -2142974401, i32 -2142974349, i32 -2142974318, i32 -2142974288}
!380 = !DILocation(line: 138, column: 6, scope: !381)
!381 = distinct !DILexicalBlock(scope: !371, file: !1, line: 138, column: 6)
!382 = !DILocation(line: 138, column: 6, scope: !366)
!383 = !DILocation(line: 138, column: 6, scope: !355)
!384 = !DILocation(line: 139, column: 3, scope: !366)
!385 = !DILocation(line: 141, column: 6, scope: !386)
!386 = distinct !DILexicalBlock(scope: !355, file: !1, line: 141, column: 6)
!387 = !DILocation(line: 141, column: 10, scope: !386)
!388 = !DILocation(line: 141, column: 6, scope: !355)
!389 = !DILocation(line: 142, column: 3, scope: !386)
!390 = !DILocation(line: 144, column: 6, scope: !391)
!391 = distinct !DILexicalBlock(scope: !355, file: !1, line: 144, column: 6)
!392 = !DILocation(line: 144, column: 13, scope: !391)
!393 = !DILocation(line: 144, column: 17, scope: !391)
!394 = !DILocation(line: 144, column: 10, scope: !391)
!395 = !DILocation(line: 144, column: 6, scope: !355)
!396 = !DILocation(line: 145, column: 10, scope: !391)
!397 = !DILocation(line: 145, column: 3, scope: !391)
!398 = !DILocation(line: 147, column: 11, scope: !391)
!399 = !DILocation(line: 147, column: 17, scope: !391)
!400 = !DILocation(line: 147, column: 15, scope: !391)
!401 = !DILocation(line: 147, column: 9, scope: !391)
!402 = !DILocation(line: 149, column: 9, scope: !355)
!403 = !DILocation(line: 149, column: 2, scope: !355)
!404 = !DILocation(line: 150, column: 1, scope: !355)
!405 = distinct !DISubprogram(name: "drm_rect_calc_vscale", scope: !1, file: !1, line: 204, type: !310, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!406 = !DILocalVariable(name: "src", arg: 1, scope: !405, file: !1, line: 204, type: !44)
!407 = !DILocation(line: 204, column: 49, scope: !405)
!408 = !DILocalVariable(name: "dst", arg: 2, scope: !405, file: !1, line: 205, type: !44)
!409 = !DILocation(line: 205, column: 28, scope: !405)
!410 = !DILocalVariable(name: "min_vscale", arg: 3, scope: !405, file: !1, line: 206, type: !40)
!411 = !DILocation(line: 206, column: 9, scope: !405)
!412 = !DILocalVariable(name: "max_vscale", arg: 4, scope: !405, file: !1, line: 206, type: !40)
!413 = !DILocation(line: 206, column: 25, scope: !405)
!414 = !DILocalVariable(name: "src_h", scope: !405, file: !1, line: 208, type: !40)
!415 = !DILocation(line: 208, column: 6, scope: !405)
!416 = !DILocation(line: 208, column: 30, scope: !405)
!417 = !DILocation(line: 208, column: 14, scope: !405)
!418 = !DILocalVariable(name: "dst_h", scope: !405, file: !1, line: 209, type: !40)
!419 = !DILocation(line: 209, column: 6, scope: !405)
!420 = !DILocation(line: 209, column: 30, scope: !405)
!421 = !DILocation(line: 209, column: 14, scope: !405)
!422 = !DILocalVariable(name: "vscale", scope: !405, file: !1, line: 210, type: !40)
!423 = !DILocation(line: 210, column: 6, scope: !405)
!424 = !DILocation(line: 210, column: 30, scope: !405)
!425 = !DILocation(line: 210, column: 37, scope: !405)
!426 = !DILocation(line: 210, column: 15, scope: !405)
!427 = !DILocation(line: 212, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !405, file: !1, line: 212, column: 6)
!429 = !DILocation(line: 212, column: 13, scope: !428)
!430 = !DILocation(line: 212, column: 17, scope: !428)
!431 = !DILocation(line: 212, column: 20, scope: !428)
!432 = !DILocation(line: 212, column: 26, scope: !428)
!433 = !DILocation(line: 212, column: 6, scope: !405)
!434 = !DILocation(line: 213, column: 10, scope: !428)
!435 = !DILocation(line: 213, column: 3, scope: !428)
!436 = !DILocation(line: 215, column: 6, scope: !437)
!437 = distinct !DILexicalBlock(scope: !405, file: !1, line: 215, column: 6)
!438 = !DILocation(line: 215, column: 15, scope: !437)
!439 = !DILocation(line: 215, column: 13, scope: !437)
!440 = !DILocation(line: 215, column: 26, scope: !437)
!441 = !DILocation(line: 215, column: 29, scope: !437)
!442 = !DILocation(line: 215, column: 38, scope: !437)
!443 = !DILocation(line: 215, column: 36, scope: !437)
!444 = !DILocation(line: 215, column: 6, scope: !405)
!445 = !DILocation(line: 216, column: 3, scope: !437)
!446 = !DILocation(line: 218, column: 9, scope: !405)
!447 = !DILocation(line: 218, column: 2, scope: !405)
!448 = !DILocation(line: 219, column: 1, scope: !405)
!449 = distinct !DISubprogram(name: "drm_rect_debug_print", scope: !1, file: !1, line: 228, type: !450, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !452, !44, !33}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!455 = !DILocalVariable(name: "prefix", arg: 1, scope: !449, file: !1, line: 228, type: !452)
!456 = !DILocation(line: 228, column: 39, scope: !449)
!457 = !DILocalVariable(name: "r", arg: 2, scope: !449, file: !1, line: 228, type: !44)
!458 = !DILocation(line: 228, column: 70, scope: !449)
!459 = !DILocalVariable(name: "fixed_point", arg: 3, scope: !449, file: !1, line: 228, type: !33)
!460 = !DILocation(line: 228, column: 78, scope: !449)
!461 = !DILocation(line: 230, column: 6, scope: !462)
!462 = distinct !DILexicalBlock(scope: !449, file: !1, line: 230, column: 6)
!463 = !DILocation(line: 230, column: 6, scope: !449)
!464 = !DILocation(line: 231, column: 3, scope: !462)
!465 = !DILocation(line: 233, column: 3, scope: !462)
!466 = !DILocation(line: 234, column: 1, scope: !449)
!467 = distinct !DISubprogram(name: "drm_rect_rotate", scope: !1, file: !1, line: 253, type: !468, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !35, !40, !40, !5}
!470 = !DILocalVariable(name: "r", arg: 1, scope: !467, file: !1, line: 253, type: !35)
!471 = !DILocation(line: 253, column: 39, scope: !467)
!472 = !DILocalVariable(name: "width", arg: 2, scope: !467, file: !1, line: 254, type: !40)
!473 = !DILocation(line: 254, column: 12, scope: !467)
!474 = !DILocalVariable(name: "height", arg: 3, scope: !467, file: !1, line: 254, type: !40)
!475 = !DILocation(line: 254, column: 23, scope: !467)
!476 = !DILocalVariable(name: "rotation", arg: 4, scope: !467, file: !1, line: 255, type: !5)
!477 = !DILocation(line: 255, column: 21, scope: !467)
!478 = !DILocalVariable(name: "tmp", scope: !467, file: !1, line: 257, type: !36)
!479 = !DILocation(line: 257, column: 18, scope: !467)
!480 = !DILocation(line: 259, column: 6, scope: !481)
!481 = distinct !DILexicalBlock(scope: !467, file: !1, line: 259, column: 6)
!482 = !DILocation(line: 259, column: 15, scope: !481)
!483 = !DILocation(line: 259, column: 6, scope: !467)
!484 = !DILocation(line: 260, column: 10, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !1, line: 259, column: 60)
!486 = !DILocation(line: 260, column: 9, scope: !485)
!487 = !DILocation(line: 262, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !1, line: 262, column: 7)
!489 = !DILocation(line: 262, column: 16, scope: !488)
!490 = !DILocation(line: 262, column: 7, scope: !485)
!491 = !DILocation(line: 263, column: 12, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !1, line: 262, column: 38)
!493 = !DILocation(line: 263, column: 24, scope: !492)
!494 = !DILocation(line: 263, column: 18, scope: !492)
!495 = !DILocation(line: 263, column: 4, scope: !492)
!496 = !DILocation(line: 263, column: 7, scope: !492)
!497 = !DILocation(line: 263, column: 10, scope: !492)
!498 = !DILocation(line: 264, column: 12, scope: !492)
!499 = !DILocation(line: 264, column: 24, scope: !492)
!500 = !DILocation(line: 264, column: 18, scope: !492)
!501 = !DILocation(line: 264, column: 4, scope: !492)
!502 = !DILocation(line: 264, column: 7, scope: !492)
!503 = !DILocation(line: 264, column: 10, scope: !492)
!504 = !DILocation(line: 265, column: 3, scope: !492)
!505 = !DILocation(line: 267, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !485, file: !1, line: 267, column: 7)
!507 = !DILocation(line: 267, column: 16, scope: !506)
!508 = !DILocation(line: 267, column: 7, scope: !485)
!509 = !DILocation(line: 268, column: 12, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !1, line: 267, column: 38)
!511 = !DILocation(line: 268, column: 25, scope: !510)
!512 = !DILocation(line: 268, column: 19, scope: !510)
!513 = !DILocation(line: 268, column: 4, scope: !510)
!514 = !DILocation(line: 268, column: 7, scope: !510)
!515 = !DILocation(line: 268, column: 10, scope: !510)
!516 = !DILocation(line: 269, column: 12, scope: !510)
!517 = !DILocation(line: 269, column: 25, scope: !510)
!518 = !DILocation(line: 269, column: 19, scope: !510)
!519 = !DILocation(line: 269, column: 4, scope: !510)
!520 = !DILocation(line: 269, column: 7, scope: !510)
!521 = !DILocation(line: 269, column: 10, scope: !510)
!522 = !DILocation(line: 270, column: 3, scope: !510)
!523 = !DILocation(line: 271, column: 2, scope: !485)
!524 = !DILocation(line: 273, column: 10, scope: !467)
!525 = !DILocation(line: 273, column: 19, scope: !467)
!526 = !DILocation(line: 273, column: 2, scope: !467)
!527 = !DILocation(line: 275, column: 3, scope: !528)
!528 = distinct !DILexicalBlock(scope: !467, file: !1, line: 273, column: 43)
!529 = !DILocation(line: 277, column: 10, scope: !528)
!530 = !DILocation(line: 277, column: 9, scope: !528)
!531 = !DILocation(line: 278, column: 15, scope: !528)
!532 = !DILocation(line: 278, column: 3, scope: !528)
!533 = !DILocation(line: 278, column: 6, scope: !528)
!534 = !DILocation(line: 278, column: 9, scope: !528)
!535 = !DILocation(line: 279, column: 15, scope: !528)
!536 = !DILocation(line: 279, column: 3, scope: !528)
!537 = !DILocation(line: 279, column: 6, scope: !528)
!538 = !DILocation(line: 279, column: 9, scope: !528)
!539 = !DILocation(line: 280, column: 11, scope: !528)
!540 = !DILocation(line: 280, column: 23, scope: !528)
!541 = !DILocation(line: 280, column: 17, scope: !528)
!542 = !DILocation(line: 280, column: 3, scope: !528)
!543 = !DILocation(line: 280, column: 6, scope: !528)
!544 = !DILocation(line: 280, column: 9, scope: !528)
!545 = !DILocation(line: 281, column: 11, scope: !528)
!546 = !DILocation(line: 281, column: 23, scope: !528)
!547 = !DILocation(line: 281, column: 17, scope: !528)
!548 = !DILocation(line: 281, column: 3, scope: !528)
!549 = !DILocation(line: 281, column: 6, scope: !528)
!550 = !DILocation(line: 281, column: 9, scope: !528)
!551 = !DILocation(line: 282, column: 3, scope: !528)
!552 = !DILocation(line: 284, column: 10, scope: !528)
!553 = !DILocation(line: 284, column: 9, scope: !528)
!554 = !DILocation(line: 285, column: 11, scope: !528)
!555 = !DILocation(line: 285, column: 23, scope: !528)
!556 = !DILocation(line: 285, column: 17, scope: !528)
!557 = !DILocation(line: 285, column: 3, scope: !528)
!558 = !DILocation(line: 285, column: 6, scope: !528)
!559 = !DILocation(line: 285, column: 9, scope: !528)
!560 = !DILocation(line: 286, column: 11, scope: !528)
!561 = !DILocation(line: 286, column: 23, scope: !528)
!562 = !DILocation(line: 286, column: 17, scope: !528)
!563 = !DILocation(line: 286, column: 3, scope: !528)
!564 = !DILocation(line: 286, column: 6, scope: !528)
!565 = !DILocation(line: 286, column: 9, scope: !528)
!566 = !DILocation(line: 287, column: 11, scope: !528)
!567 = !DILocation(line: 287, column: 24, scope: !528)
!568 = !DILocation(line: 287, column: 18, scope: !528)
!569 = !DILocation(line: 287, column: 3, scope: !528)
!570 = !DILocation(line: 287, column: 6, scope: !528)
!571 = !DILocation(line: 287, column: 9, scope: !528)
!572 = !DILocation(line: 288, column: 11, scope: !528)
!573 = !DILocation(line: 288, column: 24, scope: !528)
!574 = !DILocation(line: 288, column: 18, scope: !528)
!575 = !DILocation(line: 288, column: 3, scope: !528)
!576 = !DILocation(line: 288, column: 6, scope: !528)
!577 = !DILocation(line: 288, column: 9, scope: !528)
!578 = !DILocation(line: 289, column: 3, scope: !528)
!579 = !DILocation(line: 291, column: 10, scope: !528)
!580 = !DILocation(line: 291, column: 9, scope: !528)
!581 = !DILocation(line: 292, column: 11, scope: !528)
!582 = !DILocation(line: 292, column: 24, scope: !528)
!583 = !DILocation(line: 292, column: 18, scope: !528)
!584 = !DILocation(line: 292, column: 3, scope: !528)
!585 = !DILocation(line: 292, column: 6, scope: !528)
!586 = !DILocation(line: 292, column: 9, scope: !528)
!587 = !DILocation(line: 293, column: 11, scope: !528)
!588 = !DILocation(line: 293, column: 24, scope: !528)
!589 = !DILocation(line: 293, column: 18, scope: !528)
!590 = !DILocation(line: 293, column: 3, scope: !528)
!591 = !DILocation(line: 293, column: 6, scope: !528)
!592 = !DILocation(line: 293, column: 9, scope: !528)
!593 = !DILocation(line: 294, column: 15, scope: !528)
!594 = !DILocation(line: 294, column: 3, scope: !528)
!595 = !DILocation(line: 294, column: 6, scope: !528)
!596 = !DILocation(line: 294, column: 9, scope: !528)
!597 = !DILocation(line: 295, column: 15, scope: !528)
!598 = !DILocation(line: 295, column: 3, scope: !528)
!599 = !DILocation(line: 295, column: 6, scope: !528)
!600 = !DILocation(line: 295, column: 9, scope: !528)
!601 = !DILocation(line: 296, column: 3, scope: !528)
!602 = !DILocation(line: 298, column: 3, scope: !528)
!603 = !DILocation(line: 300, column: 1, scope: !467)
!604 = distinct !DISubprogram(name: "drm_rect_rotate_inv", scope: !1, file: !1, line: 327, type: !468, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!605 = !DILocalVariable(name: "r", arg: 1, scope: !604, file: !1, line: 327, type: !35)
!606 = !DILocation(line: 327, column: 43, scope: !604)
!607 = !DILocalVariable(name: "width", arg: 2, scope: !604, file: !1, line: 328, type: !40)
!608 = !DILocation(line: 328, column: 9, scope: !604)
!609 = !DILocalVariable(name: "height", arg: 3, scope: !604, file: !1, line: 328, type: !40)
!610 = !DILocation(line: 328, column: 20, scope: !604)
!611 = !DILocalVariable(name: "rotation", arg: 4, scope: !604, file: !1, line: 329, type: !5)
!612 = !DILocation(line: 329, column: 18, scope: !604)
!613 = !DILocalVariable(name: "tmp", scope: !604, file: !1, line: 331, type: !36)
!614 = !DILocation(line: 331, column: 18, scope: !604)
!615 = !DILocation(line: 333, column: 10, scope: !604)
!616 = !DILocation(line: 333, column: 19, scope: !604)
!617 = !DILocation(line: 333, column: 2, scope: !604)
!618 = !DILocation(line: 335, column: 3, scope: !619)
!619 = distinct !DILexicalBlock(scope: !604, file: !1, line: 333, column: 43)
!620 = !DILocation(line: 337, column: 10, scope: !619)
!621 = !DILocation(line: 337, column: 9, scope: !619)
!622 = !DILocation(line: 338, column: 11, scope: !619)
!623 = !DILocation(line: 338, column: 23, scope: !619)
!624 = !DILocation(line: 338, column: 17, scope: !619)
!625 = !DILocation(line: 338, column: 3, scope: !619)
!626 = !DILocation(line: 338, column: 6, scope: !619)
!627 = !DILocation(line: 338, column: 9, scope: !619)
!628 = !DILocation(line: 339, column: 11, scope: !619)
!629 = !DILocation(line: 339, column: 23, scope: !619)
!630 = !DILocation(line: 339, column: 17, scope: !619)
!631 = !DILocation(line: 339, column: 3, scope: !619)
!632 = !DILocation(line: 339, column: 6, scope: !619)
!633 = !DILocation(line: 339, column: 9, scope: !619)
!634 = !DILocation(line: 340, column: 15, scope: !619)
!635 = !DILocation(line: 340, column: 3, scope: !619)
!636 = !DILocation(line: 340, column: 6, scope: !619)
!637 = !DILocation(line: 340, column: 9, scope: !619)
!638 = !DILocation(line: 341, column: 15, scope: !619)
!639 = !DILocation(line: 341, column: 3, scope: !619)
!640 = !DILocation(line: 341, column: 6, scope: !619)
!641 = !DILocation(line: 341, column: 9, scope: !619)
!642 = !DILocation(line: 342, column: 3, scope: !619)
!643 = !DILocation(line: 344, column: 10, scope: !619)
!644 = !DILocation(line: 344, column: 9, scope: !619)
!645 = !DILocation(line: 345, column: 11, scope: !619)
!646 = !DILocation(line: 345, column: 23, scope: !619)
!647 = !DILocation(line: 345, column: 17, scope: !619)
!648 = !DILocation(line: 345, column: 3, scope: !619)
!649 = !DILocation(line: 345, column: 6, scope: !619)
!650 = !DILocation(line: 345, column: 9, scope: !619)
!651 = !DILocation(line: 346, column: 11, scope: !619)
!652 = !DILocation(line: 346, column: 23, scope: !619)
!653 = !DILocation(line: 346, column: 17, scope: !619)
!654 = !DILocation(line: 346, column: 3, scope: !619)
!655 = !DILocation(line: 346, column: 6, scope: !619)
!656 = !DILocation(line: 346, column: 9, scope: !619)
!657 = !DILocation(line: 347, column: 11, scope: !619)
!658 = !DILocation(line: 347, column: 24, scope: !619)
!659 = !DILocation(line: 347, column: 18, scope: !619)
!660 = !DILocation(line: 347, column: 3, scope: !619)
!661 = !DILocation(line: 347, column: 6, scope: !619)
!662 = !DILocation(line: 347, column: 9, scope: !619)
!663 = !DILocation(line: 348, column: 11, scope: !619)
!664 = !DILocation(line: 348, column: 24, scope: !619)
!665 = !DILocation(line: 348, column: 18, scope: !619)
!666 = !DILocation(line: 348, column: 3, scope: !619)
!667 = !DILocation(line: 348, column: 6, scope: !619)
!668 = !DILocation(line: 348, column: 9, scope: !619)
!669 = !DILocation(line: 349, column: 3, scope: !619)
!670 = !DILocation(line: 351, column: 10, scope: !619)
!671 = !DILocation(line: 351, column: 9, scope: !619)
!672 = !DILocation(line: 352, column: 15, scope: !619)
!673 = !DILocation(line: 352, column: 3, scope: !619)
!674 = !DILocation(line: 352, column: 6, scope: !619)
!675 = !DILocation(line: 352, column: 9, scope: !619)
!676 = !DILocation(line: 353, column: 15, scope: !619)
!677 = !DILocation(line: 353, column: 3, scope: !619)
!678 = !DILocation(line: 353, column: 6, scope: !619)
!679 = !DILocation(line: 353, column: 9, scope: !619)
!680 = !DILocation(line: 354, column: 11, scope: !619)
!681 = !DILocation(line: 354, column: 24, scope: !619)
!682 = !DILocation(line: 354, column: 18, scope: !619)
!683 = !DILocation(line: 354, column: 3, scope: !619)
!684 = !DILocation(line: 354, column: 6, scope: !619)
!685 = !DILocation(line: 354, column: 9, scope: !619)
!686 = !DILocation(line: 355, column: 11, scope: !619)
!687 = !DILocation(line: 355, column: 24, scope: !619)
!688 = !DILocation(line: 355, column: 18, scope: !619)
!689 = !DILocation(line: 355, column: 3, scope: !619)
!690 = !DILocation(line: 355, column: 6, scope: !619)
!691 = !DILocation(line: 355, column: 9, scope: !619)
!692 = !DILocation(line: 356, column: 3, scope: !619)
!693 = !DILocation(line: 358, column: 3, scope: !619)
!694 = !DILocation(line: 361, column: 6, scope: !695)
!695 = distinct !DILexicalBlock(scope: !604, file: !1, line: 361, column: 6)
!696 = !DILocation(line: 361, column: 15, scope: !695)
!697 = !DILocation(line: 361, column: 6, scope: !604)
!698 = !DILocation(line: 362, column: 10, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !1, line: 361, column: 60)
!700 = !DILocation(line: 362, column: 9, scope: !699)
!701 = !DILocation(line: 364, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !1, line: 364, column: 7)
!703 = !DILocation(line: 364, column: 16, scope: !702)
!704 = !DILocation(line: 364, column: 7, scope: !699)
!705 = !DILocation(line: 365, column: 12, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !1, line: 364, column: 38)
!707 = !DILocation(line: 365, column: 24, scope: !706)
!708 = !DILocation(line: 365, column: 18, scope: !706)
!709 = !DILocation(line: 365, column: 4, scope: !706)
!710 = !DILocation(line: 365, column: 7, scope: !706)
!711 = !DILocation(line: 365, column: 10, scope: !706)
!712 = !DILocation(line: 366, column: 12, scope: !706)
!713 = !DILocation(line: 366, column: 24, scope: !706)
!714 = !DILocation(line: 366, column: 18, scope: !706)
!715 = !DILocation(line: 366, column: 4, scope: !706)
!716 = !DILocation(line: 366, column: 7, scope: !706)
!717 = !DILocation(line: 366, column: 10, scope: !706)
!718 = !DILocation(line: 367, column: 3, scope: !706)
!719 = !DILocation(line: 369, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !699, file: !1, line: 369, column: 7)
!721 = !DILocation(line: 369, column: 16, scope: !720)
!722 = !DILocation(line: 369, column: 7, scope: !699)
!723 = !DILocation(line: 370, column: 12, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !1, line: 369, column: 38)
!725 = !DILocation(line: 370, column: 25, scope: !724)
!726 = !DILocation(line: 370, column: 19, scope: !724)
!727 = !DILocation(line: 370, column: 4, scope: !724)
!728 = !DILocation(line: 370, column: 7, scope: !724)
!729 = !DILocation(line: 370, column: 10, scope: !724)
!730 = !DILocation(line: 371, column: 12, scope: !724)
!731 = !DILocation(line: 371, column: 25, scope: !724)
!732 = !DILocation(line: 371, column: 19, scope: !724)
!733 = !DILocation(line: 371, column: 4, scope: !724)
!734 = !DILocation(line: 371, column: 7, scope: !724)
!735 = !DILocation(line: 371, column: 10, scope: !724)
!736 = !DILocation(line: 372, column: 3, scope: !724)
!737 = !DILocation(line: 373, column: 2, scope: !699)
!738 = !DILocation(line: 374, column: 1, scope: !604)
!739 = distinct !DISubprogram(name: "mul_u32_u32", scope: !740, file: !740, line: 150, type: !741, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!740 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!741 = !DISubroutineType(types: !742)
!742 = !{!21, !120, !120}
!743 = !DILocalVariable(name: "a", arg: 1, scope: !739, file: !740, line: 150, type: !120)
!744 = !DILocation(line: 150, column: 35, scope: !739)
!745 = !DILocalVariable(name: "b", arg: 2, scope: !739, file: !740, line: 150, type: !120)
!746 = !DILocation(line: 150, column: 42, scope: !739)
!747 = !DILocation(line: 152, column: 14, scope: !739)
!748 = !DILocation(line: 152, column: 9, scope: !739)
!749 = !DILocation(line: 152, column: 18, scope: !739)
!750 = !DILocation(line: 152, column: 16, scope: !739)
!751 = !DILocation(line: 152, column: 2, scope: !739)
