; ModuleID = '../bcout/drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_tlv_multi.llvm.bc'
source_filename = "drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_tlv_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mlxfw_mfa2_tlv = type { i8, i8, i16, [0 x i8] }
%struct.mlxfw_mfa2_file = type { %struct.firmware*, %struct.mlxfw_mfa2_tlv*, i16, %struct.mlxfw_mfa2_tlv*, i16, i8*, i32 }
%struct.firmware = type { i64, i8*, i8* }
%struct.mlxfw_mfa2_tlv_multi = type { i16, i16 }

@.str = private unnamed_addr constant [27 x i8] c"\013MFA2: TLV parsing error\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv_multi* %multi) #0 !dbg !29 {
entry:
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %multi.addr = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %multi_len = alloca i64, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !88, metadata !DIExpression()), !dbg !89
  store %struct.mlxfw_mfa2_tlv_multi* %multi, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_multi** %multi.addr, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i64* %multi_len, metadata !92, metadata !DIExpression()), !dbg !93
  store i64 4, i64* %multi_len, align 8, !dbg !94
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !95
  %1 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !96
  %2 = bitcast %struct.mlxfw_mfa2_tlv_multi* %1 to i8*, !dbg !97
  %3 = load i64, i64* %multi_len, align 8, !dbg !98
  %add.ptr = getelementptr i8, i8* %2, i64 %3, !dbg !99
  %call = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_get(%struct.mlxfw_mfa2_file* %0, i8* %add.ptr) #5, !dbg !100
  ret %struct.mlxfw_mfa2_tlv* %call, !dbg !101
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_get(%struct.mlxfw_mfa2_file* %mfa2_file, i8* %ptr) #0 !dbg !102 {
entry:
  %retval = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !105, metadata !DIExpression()), !dbg !106
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !107, metadata !DIExpression()), !dbg !108
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !109
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !111
  %call = call zeroext i1 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %0, i8* %1) #5, !dbg !112
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !113

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !114
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !115
  %add.ptr = getelementptr i8, i8* %3, i64 4, !dbg !116
  %call1 = call zeroext i1 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %2, i8* %add.ptr) #5, !dbg !117
  br i1 %call1, label %if.end, label %if.then, !dbg !118

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.mlxfw_mfa2_tlv* null, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !119
  br label %return, !dbg !119

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !120
  %5 = bitcast i8* %4 to %struct.mlxfw_mfa2_tlv*, !dbg !120
  store %struct.mlxfw_mfa2_tlv* %5, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !121
  br label %return, !dbg !121

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !122
  ret %struct.mlxfw_mfa2_tlv* %6, !dbg !122
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv* %tlv) #0 !dbg !123 {
entry:
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %tlv.addr = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %multi = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %tlv_len = alloca i16, align 2
  %next = alloca i8*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !126, metadata !DIExpression()), !dbg !127
  store %struct.mlxfw_mfa2_tlv* %tlv, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv.addr, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_multi** %multi, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i16* %tlv_len, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i8** %next, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !136
  %len = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %0, i32 0, i32 2, !dbg !136
  %1 = load i16, i16* %len, align 1, !dbg !136
  %2 = call i1 @llvm.is.constant.i16(i16 %1), !dbg !136
  br i1 %2, label %cond.true, label %cond.false, !dbg !136

cond.true:                                        ; preds = %entry
  %3 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !136
  %len1 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %3, i32 0, i32 2, !dbg !136
  %4 = load i16, i16* %len1, align 1, !dbg !136
  %conv = zext i16 %4 to i32, !dbg !136
  %and = and i32 %conv, 255, !dbg !136
  %shl = shl i32 %and, 8, !dbg !136
  %5 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !136
  %len2 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %5, i32 0, i32 2, !dbg !136
  %6 = load i16, i16* %len2, align 1, !dbg !136
  %conv3 = zext i16 %6 to i32, !dbg !136
  %and4 = and i32 %conv3, 65280, !dbg !136
  %shr = ashr i32 %and4, 8, !dbg !136
  %or = or i32 %shl, %shr, !dbg !136
  %conv5 = trunc i32 %or to i16, !dbg !136
  %conv6 = zext i16 %conv5 to i32, !dbg !136
  br label %cond.end, !dbg !136

cond.false:                                       ; preds = %entry
  %7 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !136
  %len7 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %7, i32 0, i32 2, !dbg !136
  %8 = load i16, i16* %len7, align 1, !dbg !136
  %call = call zeroext i16 @__fswab16(i16 zeroext %8) #6, !dbg !136
  %conv8 = zext i16 %call to i32, !dbg !136
  br label %cond.end, !dbg !136

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv6, %cond.true ], [ %conv8, %cond.false ], !dbg !136
  %conv9 = sext i32 %cond to i64, !dbg !136
  %add = add i64 4, %conv9, !dbg !136
  %add10 = add i64 %add, 4, !dbg !136
  %sub = sub i64 %add10, 1, !dbg !136
  %and11 = and i64 %sub, -4, !dbg !136
  %conv12 = trunc i64 %and11 to i16, !dbg !136
  store i16 %conv12, i16* %tlv_len, align 2, !dbg !137
  %9 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !138
  %type = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %9, i32 0, i32 1, !dbg !140
  %10 = load i8, i8* %type, align 1, !dbg !140
  %conv13 = zext i8 %10 to i32, !dbg !138
  %cmp = icmp eq i32 %conv13, 1, !dbg !141
  br i1 %cmp, label %if.then, label %if.end, !dbg !142

if.then:                                          ; preds = %cond.end
  %11 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !143
  %12 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !145
  %call15 = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %11, %struct.mlxfw_mfa2_tlv* %12) #5, !dbg !146
  store %struct.mlxfw_mfa2_tlv_multi* %call15, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !147
  %13 = load i16, i16* %tlv_len, align 2, !dbg !148
  %conv16 = zext i16 %13 to i32, !dbg !148
  %14 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !148
  %total_len = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %14, i32 0, i32 1, !dbg !148
  %15 = load i16, i16* %total_len, align 1, !dbg !148
  %16 = call i1 @llvm.is.constant.i16(i16 %15), !dbg !148
  br i1 %16, label %cond.true17, label %cond.false29, !dbg !148

cond.true17:                                      ; preds = %if.then
  %17 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !148
  %total_len18 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %17, i32 0, i32 1, !dbg !148
  %18 = load i16, i16* %total_len18, align 1, !dbg !148
  %conv19 = zext i16 %18 to i32, !dbg !148
  %and20 = and i32 %conv19, 255, !dbg !148
  %shl21 = shl i32 %and20, 8, !dbg !148
  %19 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !148
  %total_len22 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %19, i32 0, i32 1, !dbg !148
  %20 = load i16, i16* %total_len22, align 1, !dbg !148
  %conv23 = zext i16 %20 to i32, !dbg !148
  %and24 = and i32 %conv23, 65280, !dbg !148
  %shr25 = ashr i32 %and24, 8, !dbg !148
  %or26 = or i32 %shl21, %shr25, !dbg !148
  %conv27 = trunc i32 %or26 to i16, !dbg !148
  %conv28 = zext i16 %conv27 to i32, !dbg !148
  br label %cond.end33, !dbg !148

cond.false29:                                     ; preds = %if.then
  %21 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi, align 8, !dbg !148
  %total_len30 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %21, i32 0, i32 1, !dbg !148
  %22 = load i16, i16* %total_len30, align 1, !dbg !148
  %call31 = call zeroext i16 @__fswab16(i16 zeroext %22) #6, !dbg !148
  %conv32 = zext i16 %call31 to i32, !dbg !148
  br label %cond.end33, !dbg !148

cond.end33:                                       ; preds = %cond.false29, %cond.true17
  %cond34 = phi i32 [ %conv28, %cond.true17 ], [ %conv32, %cond.false29 ], !dbg !148
  %add35 = add i32 %conv16, %cond34, !dbg !148
  %add36 = add i32 %add35, 4, !dbg !148
  %sub37 = sub i32 %add36, 1, !dbg !148
  %and38 = and i32 %sub37, -4, !dbg !148
  %conv39 = trunc i32 %and38 to i16, !dbg !148
  store i16 %conv39, i16* %tlv_len, align 2, !dbg !149
  br label %if.end, !dbg !150

if.end:                                           ; preds = %cond.end33, %cond.end
  %23 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !151
  %24 = bitcast %struct.mlxfw_mfa2_tlv* %23 to i8*, !dbg !152
  %25 = load i16, i16* %tlv_len, align 2, !dbg !153
  %conv40 = zext i16 %25 to i32, !dbg !153
  %idx.ext = sext i32 %conv40 to i64, !dbg !154
  %add.ptr = getelementptr i8, i8* %24, i64 %idx.ext, !dbg !154
  store i8* %add.ptr, i8** %next, align 8, !dbg !155
  %26 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !156
  %27 = load i8*, i8** %next, align 8, !dbg !157
  %call41 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_get(%struct.mlxfw_mfa2_file* %26, i8* %27) #5, !dbg !158
  ret %struct.mlxfw_mfa2_tlv* %call41, !dbg !159
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #2

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #3 !dbg !160 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = load i16, i16* %val.addr, align 2, !dbg !166
  %conv = zext i16 %0 to i32, !dbg !166
  %and = and i32 %conv, 255, !dbg !166
  %shl = shl i32 %and, 8, !dbg !166
  %1 = load i16, i16* %val.addr, align 2, !dbg !166
  %conv1 = zext i16 %1 to i32, !dbg !166
  %and2 = and i32 %conv1, 65280, !dbg !166
  %shr = ashr i32 %and2, 8, !dbg !166
  %or = or i32 %shl, %shr, !dbg !166
  %conv3 = trunc i32 %or to i16, !dbg !166
  ret i16 %conv3, !dbg !167
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv* %tlv) #0 !dbg !168 {
entry:
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %tlv.addr = alloca %struct.mlxfw_mfa2_tlv*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !171, metadata !DIExpression()), !dbg !172
  store %struct.mlxfw_mfa2_tlv* %tlv, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv.addr, metadata !173, metadata !DIExpression()), !dbg !172
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !172
  %1 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !172
  %call = call i8* @mlxfw_mfa2_tlv_payload_get(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv* %1, i8 zeroext 1, i64 4, i1 zeroext false) #5, !dbg !172
  %2 = bitcast i8* %call to %struct.mlxfw_mfa2_tlv_multi*, !dbg !172
  ret %struct.mlxfw_mfa2_tlv_multi* %2, !dbg !172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_advance(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv* %from_tlv, i16 zeroext %count) #0 !dbg !174 {
entry:
  %retval = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %from_tlv.addr = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %count.addr = alloca i16, align 2
  %tlv = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %idx = alloca i16, align 2
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !177, metadata !DIExpression()), !dbg !178
  store %struct.mlxfw_mfa2_tlv* %from_tlv, %struct.mlxfw_mfa2_tlv** %from_tlv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %from_tlv.addr, metadata !179, metadata !DIExpression()), !dbg !180
  store i16 %count, i16* %count.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %count.addr, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i16* %idx, metadata !185, metadata !DIExpression()), !dbg !186
  store i16 0, i16* %idx, align 2, !dbg !187
  %0 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %from_tlv.addr, align 8, !dbg !187
  store %struct.mlxfw_mfa2_tlv* %0, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !187
  br label %for.cond, !dbg !187

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i16, i16* %idx, align 2, !dbg !189
  %conv = zext i16 %1 to i32, !dbg !189
  %2 = load i16, i16* %count.addr, align 2, !dbg !189
  %conv1 = zext i16 %2 to i32, !dbg !189
  %cmp = icmp slt i32 %conv, %conv1, !dbg !189
  br i1 %cmp, label %for.body, label %for.end, !dbg !187

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !191
  %tobool = icmp ne %struct.mlxfw_mfa2_tlv* %3, null, !dbg !191
  br i1 %tobool, label %if.end, label %if.then, !dbg !193

if.then:                                          ; preds = %for.body
  store %struct.mlxfw_mfa2_tlv* null, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !194
  br label %return, !dbg !194

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !191

for.inc:                                          ; preds = %if.end
  %4 = load i16, i16* %idx, align 2, !dbg !189
  %inc = add i16 %4, 1, !dbg !189
  store i16 %inc, i16* %idx, align 2, !dbg !189
  %5 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !189
  %6 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !189
  %call = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file* %5, %struct.mlxfw_mfa2_tlv* %6) #5, !dbg !189
  store %struct.mlxfw_mfa2_tlv* %call, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !189
  br label %for.cond, !dbg !189, !llvm.loop !195

for.end:                                          ; preds = %for.cond
  %7 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !197
  store %struct.mlxfw_mfa2_tlv* %7, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !198
  br label %return, !dbg !198

return:                                           ; preds = %for.end, %if.then
  %8 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !199
  ret %struct.mlxfw_mfa2_tlv* %8, !dbg !199
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child_find(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv_multi* %multi, i32 %type, i16 zeroext %index) #0 !dbg !200 {
entry:
  %retval = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %multi.addr = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %type.addr = alloca i32, align 4
  %index.addr = alloca i16, align 2
  %tlv = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %skip = alloca i16, align 2
  %idx = alloca i16, align 2
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !203, metadata !DIExpression()), !dbg !204
  store %struct.mlxfw_mfa2_tlv_multi* %multi, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_multi** %multi.addr, metadata !205, metadata !DIExpression()), !dbg !206
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !207, metadata !DIExpression()), !dbg !208
  store i16 %index, i16* %index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %index.addr, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i16* %skip, metadata !213, metadata !DIExpression()), !dbg !214
  store i16 0, i16* %skip, align 2, !dbg !214
  call void @llvm.dbg.declare(metadata i16* %idx, metadata !215, metadata !DIExpression()), !dbg !216
  store i16 0, i16* %idx, align 2, !dbg !217
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !217
  %1 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !217
  %call = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv_multi* %1) #5, !dbg !217
  store %struct.mlxfw_mfa2_tlv* %call, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !217
  br label %for.cond, !dbg !217

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i16, i16* %idx, align 2, !dbg !219
  %conv = zext i16 %2 to i32, !dbg !219
  %3 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !219
  %num_extensions = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %3, i32 0, i32 0, !dbg !219
  %4 = load i16, i16* %num_extensions, align 1, !dbg !219
  %5 = call i1 @llvm.is.constant.i16(i16 %4), !dbg !219
  br i1 %5, label %cond.true, label %cond.false, !dbg !219

cond.true:                                        ; preds = %for.cond
  %6 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !219
  %num_extensions1 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %6, i32 0, i32 0, !dbg !219
  %7 = load i16, i16* %num_extensions1, align 1, !dbg !219
  %conv2 = zext i16 %7 to i32, !dbg !219
  %and = and i32 %conv2, 255, !dbg !219
  %shl = shl i32 %and, 8, !dbg !219
  %8 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !219
  %num_extensions3 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %8, i32 0, i32 0, !dbg !219
  %9 = load i16, i16* %num_extensions3, align 1, !dbg !219
  %conv4 = zext i16 %9 to i32, !dbg !219
  %and5 = and i32 %conv4, 65280, !dbg !219
  %shr = ashr i32 %and5, 8, !dbg !219
  %or = or i32 %shl, %shr, !dbg !219
  %conv6 = trunc i32 %or to i16, !dbg !219
  %conv7 = zext i16 %conv6 to i32, !dbg !219
  br label %cond.end, !dbg !219

cond.false:                                       ; preds = %for.cond
  %10 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !219
  %num_extensions8 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %10, i32 0, i32 0, !dbg !219
  %11 = load i16, i16* %num_extensions8, align 1, !dbg !219
  %call9 = call zeroext i16 @__fswab16(i16 zeroext %11) #6, !dbg !219
  %conv10 = zext i16 %call9 to i32, !dbg !219
  br label %cond.end, !dbg !219

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !219
  %add = add i32 %cond, 1, !dbg !219
  %cmp = icmp slt i32 %conv, %add, !dbg !219
  br i1 %cmp, label %for.body, label %for.end, !dbg !217

for.body:                                         ; preds = %cond.end
  %12 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !221
  %tobool = icmp ne %struct.mlxfw_mfa2_tlv* %12, null, !dbg !221
  br i1 %tobool, label %if.end, label %if.then, !dbg !224

if.then:                                          ; preds = %for.body
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #7, !dbg !225
  store %struct.mlxfw_mfa2_tlv* null, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !227
  br label %return, !dbg !227

if.end:                                           ; preds = %for.body
  %13 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !228
  %type13 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %13, i32 0, i32 1, !dbg !230
  %14 = load i8, i8* %type13, align 1, !dbg !230
  %conv14 = zext i8 %14 to i32, !dbg !228
  %15 = load i32, i32* %type.addr, align 4, !dbg !231
  %cmp15 = icmp eq i32 %conv14, %15, !dbg !232
  br i1 %cmp15, label %if.then17, label %if.end24, !dbg !233

if.then17:                                        ; preds = %if.end
  %16 = load i16, i16* %skip, align 2, !dbg !234
  %inc = add i16 %16, 1, !dbg !234
  store i16 %inc, i16* %skip, align 2, !dbg !234
  %conv18 = zext i16 %16 to i32, !dbg !236
  %17 = load i16, i16* %index.addr, align 2, !dbg !237
  %conv19 = zext i16 %17 to i32, !dbg !237
  %cmp20 = icmp eq i32 %conv18, %conv19, !dbg !238
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !239

if.then22:                                        ; preds = %if.then17
  %18 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !240
  store %struct.mlxfw_mfa2_tlv* %18, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !241
  br label %return, !dbg !241

if.end23:                                         ; preds = %if.then17
  br label %if.end24, !dbg !237

if.end24:                                         ; preds = %if.end23, %if.end
  br label %for.inc, !dbg !242

for.inc:                                          ; preds = %if.end24
  %19 = load i16, i16* %idx, align 2, !dbg !219
  %inc25 = add i16 %19, 1, !dbg !219
  store i16 %inc25, i16* %idx, align 2, !dbg !219
  %20 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !219
  %21 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !219
  %call26 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file* %20, %struct.mlxfw_mfa2_tlv* %21) #5, !dbg !219
  store %struct.mlxfw_mfa2_tlv* %call26, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !219
  br label %for.cond, !dbg !219, !llvm.loop !243

for.end:                                          ; preds = %cond.end
  store %struct.mlxfw_mfa2_tlv* null, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !245
  br label %return, !dbg !245

return:                                           ; preds = %for.end, %if.then22, %if.then
  %22 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %retval, align 8, !dbg !246
  ret %struct.mlxfw_mfa2_tlv* %22, !dbg !246
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mlxfw_mfa2_tlv_multi_child_count(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv_multi* %multi, i32 %type, i16* %p_count) #0 !dbg !247 {
entry:
  %retval = alloca i32, align 4
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %multi.addr = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %type.addr = alloca i32, align 4
  %p_count.addr = alloca i16*, align 8
  %tlv = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %count = alloca i16, align 2
  %idx = alloca i16, align 2
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !252, metadata !DIExpression()), !dbg !253
  store %struct.mlxfw_mfa2_tlv_multi* %multi, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv_multi** %multi.addr, metadata !254, metadata !DIExpression()), !dbg !255
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !256, metadata !DIExpression()), !dbg !257
  store i16* %p_count, i16** %p_count.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %p_count.addr, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i16* %count, metadata !262, metadata !DIExpression()), !dbg !263
  store i16 0, i16* %count, align 2, !dbg !263
  call void @llvm.dbg.declare(metadata i16* %idx, metadata !264, metadata !DIExpression()), !dbg !265
  store i16 0, i16* %idx, align 2, !dbg !266
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !266
  %1 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !266
  %call = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv_multi* %1) #5, !dbg !266
  store %struct.mlxfw_mfa2_tlv* %call, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !266
  br label %for.cond, !dbg !266

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i16, i16* %idx, align 2, !dbg !268
  %conv = zext i16 %2 to i32, !dbg !268
  %3 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !268
  %num_extensions = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %3, i32 0, i32 0, !dbg !268
  %4 = load i16, i16* %num_extensions, align 1, !dbg !268
  %5 = call i1 @llvm.is.constant.i16(i16 %4), !dbg !268
  br i1 %5, label %cond.true, label %cond.false, !dbg !268

cond.true:                                        ; preds = %for.cond
  %6 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !268
  %num_extensions1 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %6, i32 0, i32 0, !dbg !268
  %7 = load i16, i16* %num_extensions1, align 1, !dbg !268
  %conv2 = zext i16 %7 to i32, !dbg !268
  %and = and i32 %conv2, 255, !dbg !268
  %shl = shl i32 %and, 8, !dbg !268
  %8 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !268
  %num_extensions3 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %8, i32 0, i32 0, !dbg !268
  %9 = load i16, i16* %num_extensions3, align 1, !dbg !268
  %conv4 = zext i16 %9 to i32, !dbg !268
  %and5 = and i32 %conv4, 65280, !dbg !268
  %shr = ashr i32 %and5, 8, !dbg !268
  %or = or i32 %shl, %shr, !dbg !268
  %conv6 = trunc i32 %or to i16, !dbg !268
  %conv7 = zext i16 %conv6 to i32, !dbg !268
  br label %cond.end, !dbg !268

cond.false:                                       ; preds = %for.cond
  %10 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %multi.addr, align 8, !dbg !268
  %num_extensions8 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %10, i32 0, i32 0, !dbg !268
  %11 = load i16, i16* %num_extensions8, align 1, !dbg !268
  %call9 = call zeroext i16 @__fswab16(i16 zeroext %11) #6, !dbg !268
  %conv10 = zext i16 %call9 to i32, !dbg !268
  br label %cond.end, !dbg !268

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !268
  %add = add i32 %cond, 1, !dbg !268
  %cmp = icmp slt i32 %conv, %add, !dbg !268
  br i1 %cmp, label %for.body, label %for.end, !dbg !266

for.body:                                         ; preds = %cond.end
  %12 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !270
  %tobool = icmp ne %struct.mlxfw_mfa2_tlv* %12, null, !dbg !270
  br i1 %tobool, label %if.end, label %if.then, !dbg !273

if.then:                                          ; preds = %for.body
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #7, !dbg !274
  store i32 -22, i32* %retval, align 4, !dbg !276
  br label %return, !dbg !276

if.end:                                           ; preds = %for.body
  %13 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !277
  %type13 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %13, i32 0, i32 1, !dbg !279
  %14 = load i8, i8* %type13, align 1, !dbg !279
  %conv14 = zext i8 %14 to i32, !dbg !277
  %15 = load i32, i32* %type.addr, align 4, !dbg !280
  %cmp15 = icmp eq i32 %conv14, %15, !dbg !281
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !282

if.then17:                                        ; preds = %if.end
  %16 = load i16, i16* %count, align 2, !dbg !283
  %inc = add i16 %16, 1, !dbg !283
  store i16 %inc, i16* %count, align 2, !dbg !283
  br label %if.end18, !dbg !284

if.end18:                                         ; preds = %if.then17, %if.end
  br label %for.inc, !dbg !285

for.inc:                                          ; preds = %if.end18
  %17 = load i16, i16* %idx, align 2, !dbg !268
  %inc19 = add i16 %17, 1, !dbg !268
  store i16 %inc19, i16* %idx, align 2, !dbg !268
  %18 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !268
  %19 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !268
  %call20 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file* %18, %struct.mlxfw_mfa2_tlv* %19) #5, !dbg !268
  store %struct.mlxfw_mfa2_tlv* %call20, %struct.mlxfw_mfa2_tlv** %tlv, align 8, !dbg !268
  br label %for.cond, !dbg !268, !llvm.loop !286

for.end:                                          ; preds = %cond.end
  %20 = load i16, i16* %count, align 2, !dbg !288
  %21 = load i16*, i16** %p_count.addr, align 8, !dbg !289
  store i16 %20, i16* %21, align 2, !dbg !290
  store i32 0, i32* %retval, align 4, !dbg !291
  br label %return, !dbg !291

return:                                           ; preds = %for.end, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !292
  ret i32 %22, !dbg !292
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %mfa2_file, i8* %ptr) #0 !dbg !293 {
entry:
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %ptr.addr = alloca i8*, align 8
  %valid_to = alloca i8*, align 8
  %valid_from = alloca i8*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !298, metadata !DIExpression()), !dbg !299
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata i8** %valid_to, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !304
  %fw = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %0, i32 0, i32 0, !dbg !305
  %1 = load %struct.firmware*, %struct.firmware** %fw, align 8, !dbg !305
  %data = getelementptr inbounds %struct.firmware, %struct.firmware* %1, i32 0, i32 1, !dbg !306
  %2 = load i8*, i8** %data, align 8, !dbg !306
  %3 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !307
  %fw1 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %3, i32 0, i32 0, !dbg !308
  %4 = load %struct.firmware*, %struct.firmware** %fw1, align 8, !dbg !308
  %size = getelementptr inbounds %struct.firmware, %struct.firmware* %4, i32 0, i32 0, !dbg !309
  %5 = load i64, i64* %size, align 8, !dbg !309
  %add.ptr = getelementptr i8, i8* %2, i64 %5, !dbg !310
  store i8* %add.ptr, i8** %valid_to, align 8, !dbg !303
  call void @llvm.dbg.declare(metadata i8** %valid_from, metadata !311, metadata !DIExpression()), !dbg !312
  %6 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !313
  %fw2 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %6, i32 0, i32 0, !dbg !314
  %7 = load %struct.firmware*, %struct.firmware** %fw2, align 8, !dbg !314
  %data3 = getelementptr inbounds %struct.firmware, %struct.firmware* %7, i32 0, i32 1, !dbg !315
  %8 = load i8*, i8** %data3, align 8, !dbg !315
  store i8* %8, i8** %valid_from, align 8, !dbg !312
  %9 = load i8*, i8** %ptr.addr, align 8, !dbg !316
  %10 = load i8*, i8** %valid_from, align 8, !dbg !317
  %cmp = icmp ugt i8* %9, %10, !dbg !318
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !319

land.rhs:                                         ; preds = %entry
  %11 = load i8*, i8** %ptr.addr, align 8, !dbg !320
  %12 = load i8*, i8** %valid_to, align 8, !dbg !321
  %cmp4 = icmp ult i8* %11, %12, !dbg !322
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %13 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ], !dbg !323
  ret i1 %13, !dbg !324
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @mlxfw_mfa2_tlv_payload_get(%struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_tlv* %tlv, i8 zeroext %payload_type, i64 %payload_size, i1 zeroext %varsize) #0 !dbg !325 {
entry:
  %retval = alloca i8*, align 8
  %mfa2_file.addr = alloca %struct.mlxfw_mfa2_file*, align 8
  %tlv.addr = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %payload_type.addr = alloca i8, align 1
  %payload_size.addr = alloca i64, align 8
  %varsize.addr = alloca i8, align 1
  %tlv_top = alloca i8*, align 8
  store %struct.mlxfw_mfa2_file* %mfa2_file, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_file** %mfa2_file.addr, metadata !328, metadata !DIExpression()), !dbg !329
  store %struct.mlxfw_mfa2_tlv* %tlv, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxfw_mfa2_tlv** %tlv.addr, metadata !330, metadata !DIExpression()), !dbg !331
  store i8 %payload_type, i8* %payload_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %payload_type.addr, metadata !332, metadata !DIExpression()), !dbg !333
  store i64 %payload_size, i64* %payload_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %payload_size.addr, metadata !334, metadata !DIExpression()), !dbg !335
  %frombool = zext i1 %varsize to i8
  store i8 %frombool, i8* %varsize.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %varsize.addr, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i8** %tlv_top, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !340
  %1 = bitcast %struct.mlxfw_mfa2_tlv* %0 to i8*, !dbg !341
  %2 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !342
  %len = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %2, i32 0, i32 2, !dbg !342
  %3 = load i16, i16* %len, align 1, !dbg !342
  %4 = call i1 @llvm.is.constant.i16(i16 %3), !dbg !342
  br i1 %4, label %cond.true, label %cond.false, !dbg !342

cond.true:                                        ; preds = %entry
  %5 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !342
  %len1 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %5, i32 0, i32 2, !dbg !342
  %6 = load i16, i16* %len1, align 1, !dbg !342
  %conv = zext i16 %6 to i32, !dbg !342
  %and = and i32 %conv, 255, !dbg !342
  %shl = shl i32 %and, 8, !dbg !342
  %7 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !342
  %len2 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %7, i32 0, i32 2, !dbg !342
  %8 = load i16, i16* %len2, align 1, !dbg !342
  %conv3 = zext i16 %8 to i32, !dbg !342
  %and4 = and i32 %conv3, 65280, !dbg !342
  %shr = ashr i32 %and4, 8, !dbg !342
  %or = or i32 %shl, %shr, !dbg !342
  %conv5 = trunc i32 %or to i16, !dbg !342
  %conv6 = zext i16 %conv5 to i32, !dbg !342
  br label %cond.end, !dbg !342

cond.false:                                       ; preds = %entry
  %9 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !342
  %len7 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %9, i32 0, i32 2, !dbg !342
  %10 = load i16, i16* %len7, align 1, !dbg !342
  %call = call zeroext i16 @__fswab16(i16 zeroext %10) #6, !dbg !342
  %conv8 = zext i16 %call to i32, !dbg !342
  br label %cond.end, !dbg !342

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv6, %cond.true ], [ %conv8, %cond.false ], !dbg !342
  %idx.ext = sext i32 %cond to i64, !dbg !343
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !343
  %add.ptr9 = getelementptr i8, i8* %add.ptr, i64 -1, !dbg !344
  store i8* %add.ptr9, i8** %tlv_top, align 8, !dbg !345
  %11 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !346
  %12 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !348
  %13 = bitcast %struct.mlxfw_mfa2_tlv* %12 to i8*, !dbg !348
  %call10 = call zeroext i1 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %11, i8* %13) #5, !dbg !349
  br i1 %call10, label %lor.lhs.false, label %if.then, !dbg !350

lor.lhs.false:                                    ; preds = %cond.end
  %14 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %mfa2_file.addr, align 8, !dbg !351
  %15 = load i8*, i8** %tlv_top, align 8, !dbg !352
  %call11 = call zeroext i1 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %14, i8* %15) #5, !dbg !353
  br i1 %call11, label %if.end, label %if.then, !dbg !354

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i8* null, i8** %retval, align 8, !dbg !355
  br label %return, !dbg !355

if.end:                                           ; preds = %lor.lhs.false
  %16 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !356
  %type = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %16, i32 0, i32 1, !dbg !358
  %17 = load i8, i8* %type, align 1, !dbg !358
  %conv12 = zext i8 %17 to i32, !dbg !356
  %18 = load i8, i8* %payload_type.addr, align 1, !dbg !359
  %conv13 = zext i8 %18 to i32, !dbg !359
  %cmp = icmp ne i32 %conv12, %conv13, !dbg !360
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !361

if.then15:                                        ; preds = %if.end
  store i8* null, i8** %retval, align 8, !dbg !362
  br label %return, !dbg !362

if.end16:                                         ; preds = %if.end
  %19 = load i8, i8* %varsize.addr, align 1, !dbg !363
  %tobool = trunc i8 %19 to i1, !dbg !363
  br i1 %tobool, label %land.lhs.true, label %if.end41, !dbg !365

land.lhs.true:                                    ; preds = %if.end16
  %20 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !366
  %len18 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %20, i32 0, i32 2, !dbg !366
  %21 = load i16, i16* %len18, align 1, !dbg !366
  %22 = call i1 @llvm.is.constant.i16(i16 %21), !dbg !366
  br i1 %22, label %cond.true19, label %cond.false31, !dbg !366

cond.true19:                                      ; preds = %land.lhs.true
  %23 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !366
  %len20 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %23, i32 0, i32 2, !dbg !366
  %24 = load i16, i16* %len20, align 1, !dbg !366
  %conv21 = zext i16 %24 to i32, !dbg !366
  %and22 = and i32 %conv21, 255, !dbg !366
  %shl23 = shl i32 %and22, 8, !dbg !366
  %25 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !366
  %len24 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %25, i32 0, i32 2, !dbg !366
  %26 = load i16, i16* %len24, align 1, !dbg !366
  %conv25 = zext i16 %26 to i32, !dbg !366
  %and26 = and i32 %conv25, 65280, !dbg !366
  %shr27 = ashr i32 %and26, 8, !dbg !366
  %or28 = or i32 %shl23, %shr27, !dbg !366
  %conv29 = trunc i32 %or28 to i16, !dbg !366
  %conv30 = zext i16 %conv29 to i32, !dbg !366
  br label %cond.end35, !dbg !366

cond.false31:                                     ; preds = %land.lhs.true
  %27 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !366
  %len32 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %27, i32 0, i32 2, !dbg !366
  %28 = load i16, i16* %len32, align 1, !dbg !366
  %call33 = call zeroext i16 @__fswab16(i16 zeroext %28) #6, !dbg !366
  %conv34 = zext i16 %call33 to i32, !dbg !366
  br label %cond.end35, !dbg !366

cond.end35:                                       ; preds = %cond.false31, %cond.true19
  %cond36 = phi i32 [ %conv30, %cond.true19 ], [ %conv34, %cond.false31 ], !dbg !366
  %conv37 = sext i32 %cond36 to i64, !dbg !366
  %29 = load i64, i64* %payload_size.addr, align 8, !dbg !367
  %cmp38 = icmp ult i64 %conv37, %29, !dbg !368
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !369

if.then40:                                        ; preds = %cond.end35
  store i8* null, i8** %retval, align 8, !dbg !370
  br label %return, !dbg !370

if.end41:                                         ; preds = %cond.end35, %if.end16
  %30 = load i8, i8* %varsize.addr, align 1, !dbg !371
  %tobool42 = trunc i8 %30 to i1, !dbg !371
  br i1 %tobool42, label %if.end67, label %land.lhs.true43, !dbg !373

land.lhs.true43:                                  ; preds = %if.end41
  %31 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !374
  %len44 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %31, i32 0, i32 2, !dbg !374
  %32 = load i16, i16* %len44, align 1, !dbg !374
  %33 = call i1 @llvm.is.constant.i16(i16 %32), !dbg !374
  br i1 %33, label %cond.true45, label %cond.false57, !dbg !374

cond.true45:                                      ; preds = %land.lhs.true43
  %34 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !374
  %len46 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %34, i32 0, i32 2, !dbg !374
  %35 = load i16, i16* %len46, align 1, !dbg !374
  %conv47 = zext i16 %35 to i32, !dbg !374
  %and48 = and i32 %conv47, 255, !dbg !374
  %shl49 = shl i32 %and48, 8, !dbg !374
  %36 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !374
  %len50 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %36, i32 0, i32 2, !dbg !374
  %37 = load i16, i16* %len50, align 1, !dbg !374
  %conv51 = zext i16 %37 to i32, !dbg !374
  %and52 = and i32 %conv51, 65280, !dbg !374
  %shr53 = ashr i32 %and52, 8, !dbg !374
  %or54 = or i32 %shl49, %shr53, !dbg !374
  %conv55 = trunc i32 %or54 to i16, !dbg !374
  %conv56 = zext i16 %conv55 to i32, !dbg !374
  br label %cond.end61, !dbg !374

cond.false57:                                     ; preds = %land.lhs.true43
  %38 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !374
  %len58 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %38, i32 0, i32 2, !dbg !374
  %39 = load i16, i16* %len58, align 1, !dbg !374
  %call59 = call zeroext i16 @__fswab16(i16 zeroext %39) #6, !dbg !374
  %conv60 = zext i16 %call59 to i32, !dbg !374
  br label %cond.end61, !dbg !374

cond.end61:                                       ; preds = %cond.false57, %cond.true45
  %cond62 = phi i32 [ %conv56, %cond.true45 ], [ %conv60, %cond.false57 ], !dbg !374
  %conv63 = sext i32 %cond62 to i64, !dbg !374
  %40 = load i64, i64* %payload_size.addr, align 8, !dbg !375
  %cmp64 = icmp ne i64 %conv63, %40, !dbg !376
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !377

if.then66:                                        ; preds = %cond.end61
  store i8* null, i8** %retval, align 8, !dbg !378
  br label %return, !dbg !378

if.end67:                                         ; preds = %cond.end61, %if.end41
  %41 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %tlv.addr, align 8, !dbg !379
  %data = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %41, i32 0, i32 3, !dbg !380
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !379
  store i8* %arraydecay, i8** %retval, align 8, !dbg !381
  br label %return, !dbg !381

return:                                           ; preds = %if.end67, %if.then66, %if.then40, %if.then15, %if.then
  %42 = load i8*, i8** %retval, align 8, !dbg !382
  ret i8* %42, !dbg !382
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }
attributes #3 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { noredzone nounwind readnone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !17, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_tlv_multi.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !12}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mlxfw_mfa2_tlv_type", file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_format.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "MLXFW_MFA2_TLV_MULTI_PART", value: 1, isUnsigned: true)
!8 = !DIEnumerator(name: "MLXFW_MFA2_TLV_PACKAGE_DESCRIPTOR", value: 2, isUnsigned: true)
!9 = !DIEnumerator(name: "MLXFW_MFA2_TLV_COMPONENT_DESCRIPTOR", value: 4, isUnsigned: true)
!10 = !DIEnumerator(name: "MLXFW_MFA2_TLV_COMPONENT_PTR", value: 34, isUnsigned: true)
!11 = !DIEnumerator(name: "MLXFW_MFA2_TLV_PSID", value: 42, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 10, baseType: !5, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!17 = !{!18, !19, !22}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !20, line: 24, baseType: !21)
!20 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !23, line: 30, baseType: !19)
!23 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{i32 7, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"Code Model", i32 2}
!28 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!29 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_multi_child", scope: !1, file: !1, line: 13, type: !30, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !87)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !48, !81}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxfw_mfa2_tlv", file: !35, line: 10, size: 32, elements: !36)
!35 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_tlv.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !42, !43, !44}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !34, file: !35, line: 11, baseType: !38, size: 8)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !39, line: 17, baseType: !40)
!39 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !20, line: 21, baseType: !41)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !35, line: 12, baseType: !38, size: 8, offset: 8)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !34, file: !35, line: 13, baseType: !22, size: 16, offset: 16)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !34, file: !35, line: 14, baseType: !45, offset: 32)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: -1)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxfw_mfa2_file", file: !51, line: 10, size: 448, elements: !52)
!51 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxfw/mlxfw_mfa2_file.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !70, !71, !73, !74, !75, !78}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "fw", scope: !50, file: !51, line: 11, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !57, line: 12, size: 192, elements: !58)
!57 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/lizy2001/genbc/linux")
!58 = !{!59, !66, !69}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !56, file: !57, line: 13, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 55, baseType: !62)
!61 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !63, line: 72, baseType: !64)
!63 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !63, line: 16, baseType: !65)
!65 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !56, file: !57, line: 14, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !56, file: !57, line: 17, baseType: !18, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "first_dev", scope: !50, file: !51, line: 12, baseType: !32, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "dev_count", scope: !50, file: !51, line: 13, baseType: !72, size: 16, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !39, line: 19, baseType: !19)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "first_component", scope: !50, file: !51, line: 14, baseType: !32, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "component_count", scope: !50, file: !51, line: 15, baseType: !72, size: 16, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !50, file: !51, line: 16, baseType: !76, size: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "cb_archive_size", scope: !50, file: !51, line: 17, baseType: !79, size: 32, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !39, line: 21, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !20, line: 27, baseType: !5)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxfw_mfa2_tlv_multi", file: !4, line: 38, size: 32, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "num_extensions", scope: !83, file: !4, line: 39, baseType: !22, size: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "total_len", scope: !83, file: !4, line: 40, baseType: !22, size: 16, offset: 16)
!87 = !{}
!88 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !29, file: !1, line: 13, type: !48)
!89 = !DILocation(line: 13, column: 58, scope: !29)
!90 = !DILocalVariable(name: "multi", arg: 2, scope: !29, file: !1, line: 14, type: !81)
!91 = !DILocation(line: 14, column: 42, scope: !29)
!92 = !DILocalVariable(name: "multi_len", scope: !29, file: !1, line: 16, type: !60)
!93 = !DILocation(line: 16, column: 9, scope: !29)
!94 = !DILocation(line: 18, column: 12, scope: !29)
!95 = !DILocation(line: 19, column: 28, scope: !29)
!96 = !DILocation(line: 19, column: 48, scope: !29)
!97 = !DILocation(line: 19, column: 39, scope: !29)
!98 = !DILocation(line: 19, column: 56, scope: !29)
!99 = !DILocation(line: 19, column: 54, scope: !29)
!100 = !DILocation(line: 19, column: 9, scope: !29)
!101 = !DILocation(line: 19, column: 2, scope: !29)
!102 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_get", scope: !35, file: !35, line: 18, type: !103, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !87)
!103 = !DISubroutineType(types: !104)
!104 = !{!32, !48, !76}
!105 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !102, file: !35, line: 18, type: !48)
!106 = !DILocation(line: 18, column: 50, scope: !102)
!107 = !DILocalVariable(name: "ptr", arg: 2, scope: !102, file: !35, line: 18, type: !76)
!108 = !DILocation(line: 18, column: 73, scope: !102)
!109 = !DILocation(line: 20, column: 28, scope: !110)
!110 = distinct !DILexicalBlock(scope: !102, file: !35, line: 20, column: 6)
!111 = !DILocation(line: 20, column: 39, scope: !110)
!112 = !DILocation(line: 20, column: 7, scope: !110)
!113 = !DILocation(line: 20, column: 44, scope: !110)
!114 = !DILocation(line: 21, column: 28, scope: !110)
!115 = !DILocation(line: 21, column: 39, scope: !110)
!116 = !DILocation(line: 21, column: 43, scope: !110)
!117 = !DILocation(line: 21, column: 7, scope: !110)
!118 = !DILocation(line: 20, column: 6, scope: !102)
!119 = !DILocation(line: 22, column: 3, scope: !110)
!120 = !DILocation(line: 23, column: 9, scope: !102)
!121 = !DILocation(line: 23, column: 2, scope: !102)
!122 = !DILocation(line: 24, column: 1, scope: !102)
!123 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_next", scope: !1, file: !1, line: 23, type: !124, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !87)
!124 = !DISubroutineType(types: !125)
!125 = !{!32, !48, !32}
!126 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !123, file: !1, line: 23, type: !48)
!127 = !DILocation(line: 23, column: 51, scope: !123)
!128 = !DILocalVariable(name: "tlv", arg: 2, scope: !123, file: !1, line: 24, type: !32)
!129 = !DILocation(line: 24, column: 36, scope: !123)
!130 = !DILocalVariable(name: "multi", scope: !123, file: !1, line: 26, type: !81)
!131 = !DILocation(line: 26, column: 37, scope: !123)
!132 = !DILocalVariable(name: "tlv_len", scope: !123, file: !1, line: 27, type: !72)
!133 = !DILocation(line: 27, column: 6, scope: !123)
!134 = !DILocalVariable(name: "next", scope: !123, file: !1, line: 28, type: !18)
!135 = !DILocation(line: 28, column: 8, scope: !123)
!136 = !DILocation(line: 30, column: 12, scope: !123)
!137 = !DILocation(line: 30, column: 10, scope: !123)
!138 = !DILocation(line: 32, column: 6, scope: !139)
!139 = distinct !DILexicalBlock(scope: !123, file: !1, line: 32, column: 6)
!140 = !DILocation(line: 32, column: 11, scope: !139)
!141 = !DILocation(line: 32, column: 16, scope: !139)
!142 = !DILocation(line: 32, column: 6, scope: !123)
!143 = !DILocation(line: 33, column: 36, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !1, line: 32, column: 46)
!145 = !DILocation(line: 33, column: 47, scope: !144)
!146 = !DILocation(line: 33, column: 11, scope: !144)
!147 = !DILocation(line: 33, column: 9, scope: !144)
!148 = !DILocation(line: 34, column: 13, scope: !144)
!149 = !DILocation(line: 34, column: 11, scope: !144)
!150 = !DILocation(line: 35, column: 2, scope: !144)
!151 = !DILocation(line: 37, column: 18, scope: !123)
!152 = !DILocation(line: 37, column: 9, scope: !123)
!153 = !DILocation(line: 37, column: 24, scope: !123)
!154 = !DILocation(line: 37, column: 22, scope: !123)
!155 = !DILocation(line: 37, column: 7, scope: !123)
!156 = !DILocation(line: 38, column: 28, scope: !123)
!157 = !DILocation(line: 38, column: 39, scope: !123)
!158 = !DILocation(line: 38, column: 9, scope: !123)
!159 = !DILocation(line: 38, column: 2, scope: !123)
!160 = distinct !DISubprogram(name: "__fswab16", scope: !161, file: !161, line: 48, type: !162, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !87)
!161 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!162 = !DISubroutineType(types: !163)
!163 = !{!19, !19}
!164 = !DILocalVariable(name: "val", arg: 1, scope: !160, file: !161, line: 48, type: !19)
!165 = !DILocation(line: 48, column: 57, scope: !160)
!166 = !DILocation(line: 53, column: 9, scope: !160)
!167 = !DILocation(line: 53, column: 2, scope: !160)
!168 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_multi_get", scope: !4, file: !4, line: 43, type: !169, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !87)
!169 = !DISubroutineType(types: !170)
!170 = !{!81, !48, !32}
!171 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !168, file: !4, line: 43, type: !48)
!172 = !DILocation(line: 43, column: 1, scope: !168)
!173 = !DILocalVariable(name: "tlv", arg: 2, scope: !168, file: !4, line: 43, type: !32)
!174 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_advance", scope: !1, file: !1, line: 42, type: !175, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !87)
!175 = !DISubroutineType(types: !176)
!176 = !{!32, !48, !32, !72}
!177 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !174, file: !1, line: 42, type: !48)
!178 = !DILocation(line: 42, column: 54, scope: !174)
!179 = !DILocalVariable(name: "from_tlv", arg: 2, scope: !174, file: !1, line: 43, type: !32)
!180 = !DILocation(line: 43, column: 39, scope: !174)
!181 = !DILocalVariable(name: "count", arg: 3, scope: !174, file: !1, line: 43, type: !72)
!182 = !DILocation(line: 43, column: 53, scope: !174)
!183 = !DILocalVariable(name: "tlv", scope: !174, file: !1, line: 45, type: !32)
!184 = !DILocation(line: 45, column: 31, scope: !174)
!185 = !DILocalVariable(name: "idx", scope: !174, file: !1, line: 46, type: !72)
!186 = !DILocation(line: 46, column: 6, scope: !174)
!187 = !DILocation(line: 48, column: 2, scope: !188)
!188 = distinct !DILexicalBlock(scope: !174, file: !1, line: 48, column: 2)
!189 = !DILocation(line: 48, column: 2, scope: !190)
!190 = distinct !DILexicalBlock(scope: !188, file: !1, line: 48, column: 2)
!191 = !DILocation(line: 49, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !190, file: !1, line: 49, column: 7)
!193 = !DILocation(line: 49, column: 7, scope: !190)
!194 = !DILocation(line: 50, column: 4, scope: !192)
!195 = distinct !{!195, !187, !196}
!196 = !DILocation(line: 50, column: 11, scope: !188)
!197 = !DILocation(line: 51, column: 9, scope: !174)
!198 = !DILocation(line: 51, column: 2, scope: !174)
!199 = !DILocation(line: 52, column: 1, scope: !174)
!200 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_multi_child_find", scope: !1, file: !1, line: 55, type: !201, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !87)
!201 = !DISubroutineType(types: !202)
!202 = !{!32, !48, !81, !3, !72}
!203 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !200, file: !1, line: 55, type: !48)
!204 = !DILocation(line: 55, column: 63, scope: !200)
!205 = !DILocalVariable(name: "multi", arg: 2, scope: !200, file: !1, line: 56, type: !81)
!206 = !DILocation(line: 56, column: 40, scope: !200)
!207 = !DILocalVariable(name: "type", arg: 3, scope: !200, file: !1, line: 57, type: !3)
!208 = !DILocation(line: 57, column: 30, scope: !200)
!209 = !DILocalVariable(name: "index", arg: 4, scope: !200, file: !1, line: 57, type: !72)
!210 = !DILocation(line: 57, column: 40, scope: !200)
!211 = !DILocalVariable(name: "tlv", scope: !200, file: !1, line: 59, type: !32)
!212 = !DILocation(line: 59, column: 31, scope: !200)
!213 = !DILocalVariable(name: "skip", scope: !200, file: !1, line: 60, type: !72)
!214 = !DILocation(line: 60, column: 6, scope: !200)
!215 = !DILocalVariable(name: "idx", scope: !200, file: !1, line: 61, type: !72)
!216 = !DILocation(line: 61, column: 6, scope: !200)
!217 = !DILocation(line: 63, column: 2, scope: !218)
!218 = distinct !DILexicalBlock(scope: !200, file: !1, line: 63, column: 2)
!219 = !DILocation(line: 63, column: 2, scope: !220)
!220 = distinct !DILexicalBlock(scope: !218, file: !1, line: 63, column: 2)
!221 = !DILocation(line: 64, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 64, column: 7)
!223 = distinct !DILexicalBlock(scope: !220, file: !1, line: 63, column: 59)
!224 = !DILocation(line: 64, column: 7, scope: !223)
!225 = !DILocation(line: 65, column: 4, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 64, column: 13)
!227 = !DILocation(line: 66, column: 4, scope: !226)
!228 = !DILocation(line: 68, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !223, file: !1, line: 68, column: 7)
!230 = !DILocation(line: 68, column: 12, scope: !229)
!231 = !DILocation(line: 68, column: 20, scope: !229)
!232 = !DILocation(line: 68, column: 17, scope: !229)
!233 = !DILocation(line: 68, column: 7, scope: !223)
!234 = !DILocation(line: 69, column: 12, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !1, line: 69, column: 8)
!236 = !DILocation(line: 69, column: 8, scope: !235)
!237 = !DILocation(line: 69, column: 18, scope: !235)
!238 = !DILocation(line: 69, column: 15, scope: !235)
!239 = !DILocation(line: 69, column: 8, scope: !229)
!240 = !DILocation(line: 70, column: 12, scope: !235)
!241 = !DILocation(line: 70, column: 5, scope: !235)
!242 = !DILocation(line: 71, column: 2, scope: !223)
!243 = distinct !{!243, !217, !244}
!244 = !DILocation(line: 71, column: 2, scope: !218)
!245 = !DILocation(line: 72, column: 2, scope: !200)
!246 = !DILocation(line: 73, column: 1, scope: !200)
!247 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_multi_child_count", scope: !1, file: !1, line: 75, type: !248, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !87)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !48, !81, !3, !251}
!250 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!252 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !247, file: !1, line: 75, type: !48)
!253 = !DILocation(line: 75, column: 68, scope: !247)
!254 = !DILocalVariable(name: "multi", arg: 2, scope: !247, file: !1, line: 76, type: !81)
!255 = !DILocation(line: 76, column: 45, scope: !247)
!256 = !DILocalVariable(name: "type", arg: 3, scope: !247, file: !1, line: 77, type: !3)
!257 = !DILocation(line: 77, column: 35, scope: !247)
!258 = !DILocalVariable(name: "p_count", arg: 4, scope: !247, file: !1, line: 78, type: !251)
!259 = !DILocation(line: 78, column: 15, scope: !247)
!260 = !DILocalVariable(name: "tlv", scope: !247, file: !1, line: 80, type: !32)
!261 = !DILocation(line: 80, column: 31, scope: !247)
!262 = !DILocalVariable(name: "count", scope: !247, file: !1, line: 81, type: !72)
!263 = !DILocation(line: 81, column: 6, scope: !247)
!264 = !DILocalVariable(name: "idx", scope: !247, file: !1, line: 82, type: !72)
!265 = !DILocation(line: 82, column: 6, scope: !247)
!266 = !DILocation(line: 84, column: 2, scope: !267)
!267 = distinct !DILexicalBlock(scope: !247, file: !1, line: 84, column: 2)
!268 = !DILocation(line: 84, column: 2, scope: !269)
!269 = distinct !DILexicalBlock(scope: !267, file: !1, line: 84, column: 2)
!270 = !DILocation(line: 85, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 85, column: 7)
!272 = distinct !DILexicalBlock(scope: !269, file: !1, line: 84, column: 59)
!273 = !DILocation(line: 85, column: 7, scope: !272)
!274 = !DILocation(line: 86, column: 4, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !1, line: 85, column: 13)
!276 = !DILocation(line: 87, column: 4, scope: !275)
!277 = !DILocation(line: 90, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !272, file: !1, line: 90, column: 7)
!279 = !DILocation(line: 90, column: 12, scope: !278)
!280 = !DILocation(line: 90, column: 20, scope: !278)
!281 = !DILocation(line: 90, column: 17, scope: !278)
!282 = !DILocation(line: 90, column: 7, scope: !272)
!283 = !DILocation(line: 91, column: 9, scope: !278)
!284 = !DILocation(line: 91, column: 4, scope: !278)
!285 = !DILocation(line: 92, column: 2, scope: !272)
!286 = distinct !{!286, !266, !287}
!287 = !DILocation(line: 92, column: 2, scope: !267)
!288 = !DILocation(line: 93, column: 13, scope: !247)
!289 = !DILocation(line: 93, column: 3, scope: !247)
!290 = !DILocation(line: 93, column: 11, scope: !247)
!291 = !DILocation(line: 94, column: 2, scope: !247)
!292 = !DILocation(line: 95, column: 1, scope: !247)
!293 = distinct !DISubprogram(name: "mlxfw_mfa2_valid_ptr", scope: !51, file: !51, line: 20, type: !294, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !87)
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !48, !76}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !61, line: 30, baseType: !297)
!297 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!298 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !293, file: !51, line: 20, type: !48)
!299 = !DILocation(line: 20, column: 71, scope: !293)
!300 = !DILocalVariable(name: "ptr", arg: 2, scope: !293, file: !51, line: 21, type: !76)
!301 = !DILocation(line: 21, column: 18, scope: !293)
!302 = !DILocalVariable(name: "valid_to", scope: !293, file: !51, line: 23, type: !76)
!303 = !DILocation(line: 23, column: 14, scope: !293)
!304 = !DILocation(line: 23, column: 25, scope: !293)
!305 = !DILocation(line: 23, column: 36, scope: !293)
!306 = !DILocation(line: 23, column: 40, scope: !293)
!307 = !DILocation(line: 23, column: 47, scope: !293)
!308 = !DILocation(line: 23, column: 58, scope: !293)
!309 = !DILocation(line: 23, column: 62, scope: !293)
!310 = !DILocation(line: 23, column: 45, scope: !293)
!311 = !DILocalVariable(name: "valid_from", scope: !293, file: !51, line: 24, type: !76)
!312 = !DILocation(line: 24, column: 14, scope: !293)
!313 = !DILocation(line: 24, column: 27, scope: !293)
!314 = !DILocation(line: 24, column: 38, scope: !293)
!315 = !DILocation(line: 24, column: 42, scope: !293)
!316 = !DILocation(line: 26, column: 9, scope: !293)
!317 = !DILocation(line: 26, column: 15, scope: !293)
!318 = !DILocation(line: 26, column: 13, scope: !293)
!319 = !DILocation(line: 26, column: 26, scope: !293)
!320 = !DILocation(line: 26, column: 29, scope: !293)
!321 = !DILocation(line: 26, column: 35, scope: !293)
!322 = !DILocation(line: 26, column: 33, scope: !293)
!323 = !DILocation(line: 0, scope: !293)
!324 = !DILocation(line: 26, column: 2, scope: !293)
!325 = distinct !DISubprogram(name: "mlxfw_mfa2_tlv_payload_get", scope: !35, file: !35, line: 27, type: !326, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !87)
!326 = !DISubroutineType(types: !327)
!327 = !{!76, !48, !32, !38, !60, !296}
!328 = !DILocalVariable(name: "mfa2_file", arg: 1, scope: !325, file: !35, line: 27, type: !48)
!329 = !DILocation(line: 27, column: 58, scope: !325)
!330 = !DILocalVariable(name: "tlv", arg: 2, scope: !325, file: !35, line: 28, type: !32)
!331 = !DILocation(line: 28, column: 36, scope: !325)
!332 = !DILocalVariable(name: "payload_type", arg: 3, scope: !325, file: !35, line: 28, type: !38)
!333 = !DILocation(line: 28, column: 44, scope: !325)
!334 = !DILocalVariable(name: "payload_size", arg: 4, scope: !325, file: !35, line: 29, type: !60)
!335 = !DILocation(line: 29, column: 14, scope: !325)
!336 = !DILocalVariable(name: "varsize", arg: 5, scope: !325, file: !35, line: 29, type: !296)
!337 = !DILocation(line: 29, column: 33, scope: !325)
!338 = !DILocalVariable(name: "tlv_top", scope: !325, file: !35, line: 31, type: !18)
!339 = !DILocation(line: 31, column: 8, scope: !325)
!340 = !DILocation(line: 33, column: 21, scope: !325)
!341 = !DILocation(line: 33, column: 12, scope: !325)
!342 = !DILocation(line: 33, column: 27, scope: !325)
!343 = !DILocation(line: 33, column: 25, scope: !325)
!344 = !DILocation(line: 33, column: 49, scope: !325)
!345 = !DILocation(line: 33, column: 10, scope: !325)
!346 = !DILocation(line: 34, column: 28, scope: !347)
!347 = distinct !DILexicalBlock(scope: !325, file: !35, line: 34, column: 6)
!348 = !DILocation(line: 34, column: 39, scope: !347)
!349 = !DILocation(line: 34, column: 7, scope: !347)
!350 = !DILocation(line: 34, column: 44, scope: !347)
!351 = !DILocation(line: 35, column: 28, scope: !347)
!352 = !DILocation(line: 35, column: 39, scope: !347)
!353 = !DILocation(line: 35, column: 7, scope: !347)
!354 = !DILocation(line: 34, column: 6, scope: !325)
!355 = !DILocation(line: 36, column: 3, scope: !347)
!356 = !DILocation(line: 37, column: 6, scope: !357)
!357 = distinct !DILexicalBlock(scope: !325, file: !35, line: 37, column: 6)
!358 = !DILocation(line: 37, column: 11, scope: !357)
!359 = !DILocation(line: 37, column: 19, scope: !357)
!360 = !DILocation(line: 37, column: 16, scope: !357)
!361 = !DILocation(line: 37, column: 6, scope: !325)
!362 = !DILocation(line: 38, column: 3, scope: !357)
!363 = !DILocation(line: 39, column: 6, scope: !364)
!364 = distinct !DILexicalBlock(scope: !325, file: !35, line: 39, column: 6)
!365 = !DILocation(line: 39, column: 14, scope: !364)
!366 = !DILocation(line: 39, column: 18, scope: !364)
!367 = !DILocation(line: 39, column: 42, scope: !364)
!368 = !DILocation(line: 39, column: 40, scope: !364)
!369 = !DILocation(line: 39, column: 6, scope: !325)
!370 = !DILocation(line: 40, column: 3, scope: !364)
!371 = !DILocation(line: 41, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !325, file: !35, line: 41, column: 6)
!373 = !DILocation(line: 41, column: 15, scope: !372)
!374 = !DILocation(line: 41, column: 19, scope: !372)
!375 = !DILocation(line: 41, column: 44, scope: !372)
!376 = !DILocation(line: 41, column: 41, scope: !372)
!377 = !DILocation(line: 41, column: 6, scope: !325)
!378 = !DILocation(line: 42, column: 3, scope: !372)
!379 = !DILocation(line: 44, column: 9, scope: !325)
!380 = !DILocation(line: 44, column: 14, scope: !325)
!381 = !DILocation(line: 44, column: 2, scope: !325)
!382 = !DILocation(line: 45, column: 1, scope: !325)
