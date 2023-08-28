; ModuleID = '../bcout/drivers/isdn/hardware/mISDN/isdnhdlc.llvm.bc'
source_filename = "drivers/isdn/hardware/mISDN/isdnhdlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.isdnhdlc_vars = type { i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8 }

@__UNIQUE_ID_author104 = internal constant [138 x i8] c"isdnhdlc.author=Wolfgang M\C3\BCes <wolfgang@iksw-muees.de>, Frode Isaksen <fisaksen@bewan.com>, Kai Germaschewski <kai.germaschewski@gmx.de>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description105 = internal constant [55 x i8] c"isdnhdlc.description=General purpose ISDN HDLC decoder\00", section ".modinfo", align 1, !dbg !36
@__UNIQUE_ID_file106 = internal constant [51 x i8] c"isdnhdlc.file=drivers/isdn/hardware/mISDN/isdnhdlc\00", section ".modinfo", align 1, !dbg !43
@__UNIQUE_ID_license107 = internal constant [21 x i8] c"isdnhdlc.license=GPL\00", section ".modinfo", align 1, !dbg !48
@isdnhdlc_decode.fast_flag = internal constant [9 x i8] c"\00\00\00 08<>?", align 1, !dbg !53
@isdnhdlc_decode.fast_flag_value = internal constant [9 x i8] c"\00~\FC\F9\F3\E7\CF\9F?", align 1, !dbg !92
@isdnhdlc_decode.fast_abort = internal constant [10 x i8] c"\00\00\80\C0\E0\F0\F8\FC\FE\FF", align 1, !dbg !94
@isdnhdlc_encode.xfast_flag_value = internal constant [9 x i8] c"~?\9F\CF\E7\F3\F9\FC~", align 1, !dbg !99
@byte_rev_table = external dso_local constant [256 x i8], align 16
@crc_ccitt_table = external dso_local constant [256 x i16], align 16
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([138 x i8], [138 x i8]* @__UNIQUE_ID_author104, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__UNIQUE_ID_description105, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_file106, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license107, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @isdnhdlc_rcv_init(%struct.isdnhdlc_vars* %hdlc, i32 %features) #0 !dbg !112 {
entry:
  %hdlc.addr = alloca %struct.isdnhdlc_vars*, align 8
  %features.addr = alloca i32, align 4
  store %struct.isdnhdlc_vars* %hdlc, %struct.isdnhdlc_vars** %hdlc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.isdnhdlc_vars** %hdlc.addr, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 %features, i32* %features.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %features.addr, metadata !117, metadata !DIExpression()), !dbg !118
  %0 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !119
  %1 = bitcast %struct.isdnhdlc_vars* %0 to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 32, i1 false), !dbg !120
  %2 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !121
  %state = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %2, i32 0, i32 4, !dbg !122
  store i32 4, i32* %state, align 4, !dbg !123
  %3 = load i32, i32* %features.addr, align 4, !dbg !124
  %and = and i32 %3, 1, !dbg !126
  %tobool = icmp ne i32 %and, 0, !dbg !126
  br i1 %tobool, label %if.then, label %if.end, !dbg !127

if.then:                                          ; preds = %entry
  %4 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !128
  %do_adapt56 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %4, i32 0, i32 10, !dbg !129
  %bf.load = load i8, i8* %do_adapt56, align 1, !dbg !130
  %bf.clear = and i8 %bf.load, -5, !dbg !130
  %bf.set = or i8 %bf.clear, 4, !dbg !130
  store i8 %bf.set, i8* %do_adapt56, align 1, !dbg !130
  br label %if.end, !dbg !128

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %features.addr, align 4, !dbg !131
  %and1 = and i32 %5, 4, !dbg !133
  %tobool2 = icmp ne i32 %and1, 0, !dbg !133
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !134

if.then3:                                         ; preds = %if.end
  %6 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !135
  %do_bitreverse = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %6, i32 0, i32 10, !dbg !136
  %bf.load4 = load i8, i8* %do_bitreverse, align 1, !dbg !137
  %bf.clear5 = and i8 %bf.load4, -17, !dbg !137
  %bf.set6 = or i8 %bf.clear5, 16, !dbg !137
  store i8 %bf.set6, i8* %do_bitreverse, align 1, !dbg !137
  br label %if.end7, !dbg !135

if.end7:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !138
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @isdnhdlc_out_init(%struct.isdnhdlc_vars* %hdlc, i32 %features) #0 !dbg !139 {
entry:
  %hdlc.addr = alloca %struct.isdnhdlc_vars*, align 8
  %features.addr = alloca i32, align 4
  store %struct.isdnhdlc_vars* %hdlc, %struct.isdnhdlc_vars** %hdlc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.isdnhdlc_vars** %hdlc.addr, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 %features, i32* %features.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %features.addr, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !144
  %1 = bitcast %struct.isdnhdlc_vars* %0 to i8*, !dbg !145
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 32, i1 false), !dbg !145
  %2 = load i32, i32* %features.addr, align 4, !dbg !146
  %and = and i32 %2, 2, !dbg !148
  %tobool = icmp ne i32 %and, 0, !dbg !148
  br i1 %tobool, label %if.then, label %if.else, !dbg !149

if.then:                                          ; preds = %entry
  %3 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !150
  %dchannel = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %3, i32 0, i32 10, !dbg !152
  %bf.load = load i8, i8* %dchannel, align 1, !dbg !153
  %bf.clear = and i8 %bf.load, -3, !dbg !153
  %bf.set = or i8 %bf.clear, 2, !dbg !153
  store i8 %bf.set, i8* %dchannel, align 1, !dbg !153
  %4 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !154
  %state = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %4, i32 0, i32 4, !dbg !155
  store i32 3, i32* %state, align 4, !dbg !156
  br label %if.end, !dbg !157

if.else:                                          ; preds = %entry
  %5 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !158
  %dchannel1 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %5, i32 0, i32 10, !dbg !160
  %bf.load2 = load i8, i8* %dchannel1, align 1, !dbg !161
  %bf.clear3 = and i8 %bf.load2, -3, !dbg !161
  store i8 %bf.clear3, i8* %dchannel1, align 1, !dbg !161
  %6 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !162
  %state4 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %6, i32 0, i32 4, !dbg !163
  store i32 2, i32* %state4, align 4, !dbg !164
  %7 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !165
  %ffvalue = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %7, i32 0, i32 9, !dbg !166
  store i8 126, i8* %ffvalue, align 4, !dbg !167
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !168
  %cbin = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %8, i32 0, i32 7, !dbg !169
  store i8 126, i8* %cbin, align 2, !dbg !170
  %9 = load i32, i32* %features.addr, align 4, !dbg !171
  %and5 = and i32 %9, 1, !dbg !173
  %tobool6 = icmp ne i32 %and5, 0, !dbg !173
  br i1 %tobool6, label %if.then7, label %if.else12, !dbg !174

if.then7:                                         ; preds = %if.end
  %10 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !175
  %do_adapt56 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %10, i32 0, i32 10, !dbg !177
  %bf.load8 = load i8, i8* %do_adapt56, align 1, !dbg !178
  %bf.clear9 = and i8 %bf.load8, -5, !dbg !178
  %bf.set10 = or i8 %bf.clear9, 4, !dbg !178
  store i8 %bf.set10, i8* %do_adapt56, align 1, !dbg !178
  %11 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !179
  %state11 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %11, i32 0, i32 4, !dbg !180
  store i32 8, i32* %state11, align 4, !dbg !181
  br label %if.end13, !dbg !182

if.else12:                                        ; preds = %if.end
  %12 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !183
  %data_bits = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %12, i32 0, i32 2, !dbg !184
  store i32 8, i32* %data_bits, align 4, !dbg !185
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then7
  %13 = load i32, i32* %features.addr, align 4, !dbg !186
  %and14 = and i32 %13, 4, !dbg !188
  %tobool15 = icmp ne i32 %and14, 0, !dbg !188
  br i1 %tobool15, label %if.then16, label %if.end20, !dbg !189

if.then16:                                        ; preds = %if.end13
  %14 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !190
  %do_bitreverse = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %14, i32 0, i32 10, !dbg !191
  %bf.load17 = load i8, i8* %do_bitreverse, align 1, !dbg !192
  %bf.clear18 = and i8 %bf.load17, -17, !dbg !192
  %bf.set19 = or i8 %bf.clear18, 16, !dbg !192
  store i8 %bf.set19, i8* %do_bitreverse, align 1, !dbg !192
  br label %if.end20, !dbg !190

if.end20:                                         ; preds = %if.then16, %if.end13
  ret void, !dbg !193
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @isdnhdlc_decode(%struct.isdnhdlc_vars* %hdlc, i8* %src, i32 %slen, i32* %count, i8* %dst, i32 %dsize) #0 !dbg !55 {
entry:
  %retval = alloca i32, align 4
  %hdlc.addr = alloca %struct.isdnhdlc_vars*, align 8
  %src.addr = alloca i8*, align 8
  %slen.addr = alloca i32, align 4
  %count.addr = alloca i32*, align 8
  %dst.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %__x = alloca i8, align 1
  %tmp = alloca i32, align 4
  %___x = alloca i8, align 1
  %tmp21 = alloca i8, align 1
  store %struct.isdnhdlc_vars* %hdlc, %struct.isdnhdlc_vars** %hdlc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.isdnhdlc_vars** %hdlc.addr, metadata !194, metadata !DIExpression()), !dbg !195
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !196, metadata !DIExpression()), !dbg !197
  store i32 %slen, i32* %slen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slen.addr, metadata !198, metadata !DIExpression()), !dbg !199
  store i32* %count, i32** %count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %count.addr, metadata !200, metadata !DIExpression()), !dbg !201
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !202, metadata !DIExpression()), !dbg !203
  store i32 %dsize, i32* %dsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dsize.addr, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata i32* %status, metadata !206, metadata !DIExpression()), !dbg !207
  store i32 0, i32* %status, align 4, !dbg !207
  %0 = load i32, i32* %slen.addr, align 4, !dbg !208
  %1 = load i32*, i32** %count.addr, align 8, !dbg !209
  store i32 %0, i32* %1, align 4, !dbg !210
  br label %while.cond, !dbg !211

while.cond:                                       ; preds = %sw.epilog319, %entry
  %2 = load i32, i32* %slen.addr, align 4, !dbg !212
  %cmp = icmp sgt i32 %2, 0, !dbg !213
  br i1 %cmp, label %while.body, label %while.end, !dbg !211

while.body:                                       ; preds = %while.cond
  %3 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !214
  %bit_shift = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %3, i32 0, i32 0, !dbg !217
  %4 = load i32, i32* %bit_shift, align 4, !dbg !217
  %cmp1 = icmp eq i32 %4, 0, !dbg !218
  br i1 %cmp1, label %if.then, label %if.end36, !dbg !219

if.then:                                          ; preds = %while.body
  %5 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !220
  %do_bitreverse = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %5, i32 0, i32 10, !dbg !223
  %bf.load = load i8, i8* %do_bitreverse, align 1, !dbg !223
  %bf.lshr = lshr i8 %bf.load, 4, !dbg !223
  %bf.clear = and i8 %bf.lshr, 1, !dbg !223
  %bf.cast = zext i8 %bf.clear to i32, !dbg !223
  %cmp2 = icmp eq i32 %bf.cast, 0, !dbg !224
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !225

if.then3:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8* %__x, metadata !226, metadata !DIExpression()), !dbg !228
  %6 = load i8*, i8** %src.addr, align 8, !dbg !228
  %incdec.ptr = getelementptr i8, i8* %6, i32 1, !dbg !228
  store i8* %incdec.ptr, i8** %src.addr, align 8, !dbg !228
  %7 = load i8, i8* %6, align 1, !dbg !228
  store i8 %7, i8* %__x, align 1, !dbg !228
  %8 = load i8, i8* %__x, align 1, !dbg !228
  %9 = call i1 @llvm.is.constant.i8(i8 %8), !dbg !228
  br i1 %9, label %cond.true, label %cond.false, !dbg !228

cond.true:                                        ; preds = %if.then3
  call void @llvm.dbg.declare(metadata i8* %___x, metadata !229, metadata !DIExpression()), !dbg !231
  %10 = load i8, i8* %__x, align 1, !dbg !231
  store i8 %10, i8* %___x, align 1, !dbg !231
  %11 = load i8, i8* %___x, align 1, !dbg !231
  %conv = zext i8 %11 to i32, !dbg !231
  %shr = ashr i32 %conv, 4, !dbg !231
  %12 = load i8, i8* %___x, align 1, !dbg !231
  %conv4 = zext i8 %12 to i32, !dbg !231
  %shl = shl i32 %conv4, 4, !dbg !231
  %or = or i32 %shr, %shl, !dbg !231
  %conv5 = trunc i32 %or to i8, !dbg !231
  store i8 %conv5, i8* %___x, align 1, !dbg !231
  %13 = load i8, i8* %___x, align 1, !dbg !231
  %conv6 = zext i8 %13 to i32, !dbg !231
  %and = and i32 %conv6, 204, !dbg !231
  %shr7 = ashr i32 %and, 2, !dbg !231
  %14 = load i8, i8* %___x, align 1, !dbg !231
  %conv8 = zext i8 %14 to i32, !dbg !231
  %and9 = and i32 %conv8, 51, !dbg !231
  %shl10 = shl i32 %and9, 2, !dbg !231
  %or11 = or i32 %shr7, %shl10, !dbg !231
  %conv12 = trunc i32 %or11 to i8, !dbg !231
  store i8 %conv12, i8* %___x, align 1, !dbg !231
  %15 = load i8, i8* %___x, align 1, !dbg !231
  %conv13 = zext i8 %15 to i32, !dbg !231
  %and14 = and i32 %conv13, 170, !dbg !231
  %shr15 = ashr i32 %and14, 1, !dbg !231
  %16 = load i8, i8* %___x, align 1, !dbg !231
  %conv16 = zext i8 %16 to i32, !dbg !231
  %and17 = and i32 %conv16, 85, !dbg !231
  %shl18 = shl i32 %and17, 1, !dbg !231
  %or19 = or i32 %shr15, %shl18, !dbg !231
  %conv20 = trunc i32 %or19 to i8, !dbg !231
  store i8 %conv20, i8* %___x, align 1, !dbg !231
  %17 = load i8, i8* %___x, align 1, !dbg !231
  store i8 %17, i8* %tmp21, align 1, !dbg !231
  %18 = load i8, i8* %tmp21, align 1, !dbg !231
  %conv22 = zext i8 %18 to i32, !dbg !228
  br label %cond.end, !dbg !228

cond.false:                                       ; preds = %if.then3
  %19 = load i8, i8* %__x, align 1, !dbg !228
  %call = call zeroext i8 @__bitrev8(i8 zeroext %19) #4, !dbg !228
  %conv23 = zext i8 %call to i32, !dbg !228
  br label %cond.end, !dbg !228

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv22, %cond.true ], [ %conv23, %cond.false ], !dbg !228
  store i32 %cond, i32* %tmp, align 4, !dbg !228
  %20 = load i32, i32* %tmp, align 4, !dbg !228
  %conv24 = trunc i32 %20 to i8, !dbg !232
  %21 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !233
  %cbin = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %21, i32 0, i32 7, !dbg !234
  store i8 %conv24, i8* %cbin, align 2, !dbg !235
  br label %if.end, !dbg !233

if.else:                                          ; preds = %if.then
  %22 = load i8*, i8** %src.addr, align 8, !dbg !236
  %incdec.ptr25 = getelementptr i8, i8* %22, i32 1, !dbg !236
  store i8* %incdec.ptr25, i8** %src.addr, align 8, !dbg !236
  %23 = load i8, i8* %22, align 1, !dbg !237
  %24 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !238
  %cbin26 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %24, i32 0, i32 7, !dbg !239
  store i8 %23, i8* %cbin26, align 2, !dbg !240
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %25 = load i32, i32* %slen.addr, align 4, !dbg !241
  %dec = add i32 %25, -1, !dbg !241
  store i32 %dec, i32* %slen.addr, align 4, !dbg !241
  %26 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !242
  %bit_shift27 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %26, i32 0, i32 0, !dbg !243
  store i32 8, i32* %bit_shift27, align 4, !dbg !244
  %27 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !245
  %do_adapt56 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %27, i32 0, i32 10, !dbg !247
  %bf.load28 = load i8, i8* %do_adapt56, align 1, !dbg !247
  %bf.lshr29 = lshr i8 %bf.load28, 2, !dbg !247
  %bf.clear30 = and i8 %bf.lshr29, 1, !dbg !247
  %bf.cast31 = zext i8 %bf.clear30 to i32, !dbg !247
  %tobool = icmp ne i32 %bf.cast31, 0, !dbg !245
  br i1 %tobool, label %if.then32, label %if.end35, !dbg !248

if.then32:                                        ; preds = %if.end
  %28 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !249
  %bit_shift33 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %28, i32 0, i32 0, !dbg !250
  %29 = load i32, i32* %bit_shift33, align 4, !dbg !251
  %dec34 = add i32 %29, -1, !dbg !251
  store i32 %dec34, i32* %bit_shift33, align 4, !dbg !251
  br label %if.end35, !dbg !249

if.end35:                                         ; preds = %if.then32, %if.end
  br label %if.end36, !dbg !252

if.end36:                                         ; preds = %if.end35, %while.body
  %30 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !253
  %state = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %30, i32 0, i32 4, !dbg !254
  %31 = load i32, i32* %state, align 4, !dbg !254
  switch i32 %31, label %sw.default318 [
    i32 11, label %sw.bb
    i32 0, label %sw.bb37
    i32 1, label %sw.bb47
    i32 2, label %sw.bb79
    i32 3, label %sw.bb102
    i32 4, label %sw.bb121
    i32 5, label %sw.bb268
  ], !dbg !255

sw.bb:                                            ; preds = %if.end36
  store i32 0, i32* %retval, align 4, !dbg !256
  br label %return, !dbg !256

sw.bb37:                                          ; preds = %if.end36
  %32 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !258
  %cbin38 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %32, i32 0, i32 7, !dbg !260
  %33 = load i8, i8* %cbin38, align 2, !dbg !260
  %conv39 = zext i8 %33 to i32, !dbg !258
  %cmp40 = icmp eq i32 %conv39, 255, !dbg !261
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !262

if.then42:                                        ; preds = %sw.bb37
  %34 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !263
  %bit_shift43 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %34, i32 0, i32 0, !dbg !265
  store i32 0, i32* %bit_shift43, align 4, !dbg !266
  br label %sw.epilog319, !dbg !267

if.end44:                                         ; preds = %sw.bb37
  %35 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !268
  %state45 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %35, i32 0, i32 4, !dbg !269
  store i32 1, i32* %state45, align 4, !dbg !270
  %36 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !271
  %hdlc_bits1 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %36, i32 0, i32 1, !dbg !272
  store i32 0, i32* %hdlc_bits1, align 4, !dbg !273
  %37 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !274
  %bit_shift46 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %37, i32 0, i32 0, !dbg !275
  store i32 8, i32* %bit_shift46, align 4, !dbg !276
  br label %sw.epilog319, !dbg !277

sw.bb47:                                          ; preds = %if.end36
  %38 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !278
  %cbin48 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %38, i32 0, i32 7, !dbg !280
  %39 = load i8, i8* %cbin48, align 2, !dbg !280
  %conv49 = zext i8 %39 to i32, !dbg !278
  %and50 = and i32 %conv49, 128, !dbg !281
  %tobool51 = icmp ne i32 %and50, 0, !dbg !281
  br i1 %tobool51, label %if.else55, label %if.then52, !dbg !282

if.then52:                                        ; preds = %sw.bb47
  %40 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !283
  %state53 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %40, i32 0, i32 4, !dbg !285
  store i32 2, i32* %state53, align 4, !dbg !286
  %41 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !287
  %hdlc_bits154 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %41, i32 0, i32 1, !dbg !288
  store i32 0, i32* %hdlc_bits154, align 4, !dbg !289
  br label %if.end72, !dbg !290

if.else55:                                        ; preds = %sw.bb47
  %42 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !291
  %do_adapt5656 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %42, i32 0, i32 10, !dbg !294
  %bf.load57 = load i8, i8* %do_adapt5656, align 1, !dbg !294
  %bf.lshr58 = lshr i8 %bf.load57, 2, !dbg !294
  %bf.clear59 = and i8 %bf.lshr58, 1, !dbg !294
  %bf.cast60 = zext i8 %bf.clear59 to i32, !dbg !294
  %tobool61 = icmp ne i32 %bf.cast60, 0, !dbg !291
  br i1 %tobool61, label %if.end71, label %land.lhs.true, !dbg !295

land.lhs.true:                                    ; preds = %if.else55
  %43 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !296
  %hdlc_bits162 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %43, i32 0, i32 1, !dbg !297
  %44 = load i32, i32* %hdlc_bits162, align 4, !dbg !298
  %inc = add i32 %44, 1, !dbg !298
  store i32 %inc, i32* %hdlc_bits162, align 4, !dbg !298
  %cmp63 = icmp sge i32 %inc, 8, !dbg !299
  br i1 %cmp63, label %land.lhs.true65, label %if.end71, !dbg !300

land.lhs.true65:                                  ; preds = %land.lhs.true
  %45 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !301
  %bit_shift66 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %45, i32 0, i32 0, !dbg !302
  %46 = load i32, i32* %bit_shift66, align 4, !dbg !302
  %cmp67 = icmp eq i32 %46, 1, !dbg !303
  br i1 %cmp67, label %if.then69, label %if.end71, !dbg !304

if.then69:                                        ; preds = %land.lhs.true65
  %47 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !305
  %state70 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %47, i32 0, i32 4, !dbg !306
  store i32 0, i32* %state70, align 4, !dbg !307
  br label %if.end71, !dbg !305

if.end71:                                         ; preds = %if.then69, %land.lhs.true65, %land.lhs.true, %if.else55
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then52
  %48 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !308
  %cbin73 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %48, i32 0, i32 7, !dbg !309
  %49 = load i8, i8* %cbin73, align 2, !dbg !310
  %conv74 = zext i8 %49 to i32, !dbg !310
  %shl75 = shl i32 %conv74, 1, !dbg !310
  %conv76 = trunc i32 %shl75 to i8, !dbg !310
  store i8 %conv76, i8* %cbin73, align 2, !dbg !310
  %50 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !311
  %bit_shift77 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %50, i32 0, i32 0, !dbg !312
  %51 = load i32, i32* %bit_shift77, align 4, !dbg !313
  %dec78 = add i32 %51, -1, !dbg !313
  store i32 %dec78, i32* %bit_shift77, align 4, !dbg !313
  br label %sw.epilog319, !dbg !314

sw.bb79:                                          ; preds = %if.end36
  %52 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !315
  %cbin80 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %52, i32 0, i32 7, !dbg !317
  %53 = load i8, i8* %cbin80, align 2, !dbg !317
  %conv81 = zext i8 %53 to i32, !dbg !315
  %and82 = and i32 %conv81, 128, !dbg !318
  %tobool83 = icmp ne i32 %and82, 0, !dbg !318
  br i1 %tobool83, label %if.then84, label %if.else93, !dbg !319

if.then84:                                        ; preds = %sw.bb79
  %54 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !320
  %hdlc_bits185 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %54, i32 0, i32 1, !dbg !322
  %55 = load i32, i32* %hdlc_bits185, align 4, !dbg !323
  %inc86 = add i32 %55, 1, !dbg !323
  store i32 %inc86, i32* %hdlc_bits185, align 4, !dbg !323
  %56 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !324
  %hdlc_bits187 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %56, i32 0, i32 1, !dbg !326
  %57 = load i32, i32* %hdlc_bits187, align 4, !dbg !326
  %cmp88 = icmp eq i32 %57, 6, !dbg !327
  br i1 %cmp88, label %if.then90, label %if.end92, !dbg !328

if.then90:                                        ; preds = %if.then84
  %58 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !329
  %state91 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %58, i32 0, i32 4, !dbg !330
  store i32 3, i32* %state91, align 4, !dbg !331
  br label %if.end92, !dbg !329

if.end92:                                         ; preds = %if.then90, %if.then84
  br label %if.end95, !dbg !332

if.else93:                                        ; preds = %sw.bb79
  %59 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !333
  %hdlc_bits194 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %59, i32 0, i32 1, !dbg !334
  store i32 0, i32* %hdlc_bits194, align 4, !dbg !335
  br label %if.end95

if.end95:                                         ; preds = %if.else93, %if.end92
  %60 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !336
  %cbin96 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %60, i32 0, i32 7, !dbg !337
  %61 = load i8, i8* %cbin96, align 2, !dbg !338
  %conv97 = zext i8 %61 to i32, !dbg !338
  %shl98 = shl i32 %conv97, 1, !dbg !338
  %conv99 = trunc i32 %shl98 to i8, !dbg !338
  store i8 %conv99, i8* %cbin96, align 2, !dbg !338
  %62 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !339
  %bit_shift100 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %62, i32 0, i32 0, !dbg !340
  %63 = load i32, i32* %bit_shift100, align 4, !dbg !341
  %dec101 = add i32 %63, -1, !dbg !341
  store i32 %dec101, i32* %bit_shift100, align 4, !dbg !341
  br label %sw.epilog319, !dbg !342

sw.bb102:                                         ; preds = %if.end36
  %64 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !343
  %cbin103 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %64, i32 0, i32 7, !dbg !345
  %65 = load i8, i8* %cbin103, align 2, !dbg !345
  %conv104 = zext i8 %65 to i32, !dbg !343
  %and105 = and i32 %conv104, 128, !dbg !346
  %tobool106 = icmp ne i32 %and105, 0, !dbg !346
  br i1 %tobool106, label %if.then107, label %if.else109, !dbg !347

if.then107:                                       ; preds = %sw.bb102
  %66 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !348
  %state108 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %66, i32 0, i32 4, !dbg !350
  store i32 1, i32* %state108, align 4, !dbg !351
  br label %if.end114, !dbg !352

if.else109:                                       ; preds = %sw.bb102
  %67 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !353
  %state110 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %67, i32 0, i32 4, !dbg !355
  store i32 4, i32* %state110, align 4, !dbg !356
  %68 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !357
  %crc = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %68, i32 0, i32 6, !dbg !358
  store i16 -1, i16* %crc, align 4, !dbg !359
  %69 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !360
  %shift_reg = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %69, i32 0, i32 8, !dbg !361
  store i8 0, i8* %shift_reg, align 1, !dbg !362
  %70 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !363
  %hdlc_bits1111 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %70, i32 0, i32 1, !dbg !364
  store i32 0, i32* %hdlc_bits1111, align 4, !dbg !365
  %71 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !366
  %data_bits = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %71, i32 0, i32 2, !dbg !367
  store i32 0, i32* %data_bits, align 4, !dbg !368
  %72 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !369
  %data_received = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %72, i32 0, i32 10, !dbg !370
  %bf.load112 = load i8, i8* %data_received, align 1, !dbg !371
  %bf.clear113 = and i8 %bf.load112, -2, !dbg !371
  store i8 %bf.clear113, i8* %data_received, align 1, !dbg !371
  br label %if.end114

if.end114:                                        ; preds = %if.else109, %if.then107
  %73 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !372
  %cbin115 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %73, i32 0, i32 7, !dbg !373
  %74 = load i8, i8* %cbin115, align 2, !dbg !374
  %conv116 = zext i8 %74 to i32, !dbg !374
  %shl117 = shl i32 %conv116, 1, !dbg !374
  %conv118 = trunc i32 %shl117 to i8, !dbg !374
  store i8 %conv118, i8* %cbin115, align 2, !dbg !374
  %75 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !375
  %bit_shift119 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %75, i32 0, i32 0, !dbg !376
  %76 = load i32, i32* %bit_shift119, align 4, !dbg !377
  %dec120 = add i32 %76, -1, !dbg !377
  store i32 %dec120, i32* %bit_shift119, align 4, !dbg !377
  br label %sw.epilog319, !dbg !378

sw.bb121:                                         ; preds = %if.end36
  %77 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !379
  %cbin122 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %77, i32 0, i32 7, !dbg !381
  %78 = load i8, i8* %cbin122, align 2, !dbg !381
  %conv123 = zext i8 %78 to i32, !dbg !379
  %and124 = and i32 %conv123, 128, !dbg !382
  %tobool125 = icmp ne i32 %and124, 0, !dbg !382
  br i1 %tobool125, label %if.then126, label %if.else169, !dbg !383

if.then126:                                       ; preds = %sw.bb121
  %79 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !384
  %hdlc_bits1127 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %79, i32 0, i32 1, !dbg !386
  %80 = load i32, i32* %hdlc_bits1127, align 4, !dbg !387
  %inc128 = add i32 %80, 1, !dbg !387
  store i32 %inc128, i32* %hdlc_bits1127, align 4, !dbg !387
  %81 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !388
  %hdlc_bits1129 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %81, i32 0, i32 1, !dbg !389
  %82 = load i32, i32* %hdlc_bits1129, align 4, !dbg !389
  switch i32 %82, label %sw.default [
    i32 6, label %sw.bb130
    i32 7, label %sw.bb131
  ], !dbg !390

sw.bb130:                                         ; preds = %if.then126
  br label %sw.epilog, !dbg !391

sw.bb131:                                         ; preds = %if.then126
  %83 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !393
  %data_received132 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %83, i32 0, i32 10, !dbg !395
  %bf.load133 = load i8, i8* %data_received132, align 1, !dbg !395
  %bf.clear134 = and i8 %bf.load133, 1, !dbg !395
  %bf.cast135 = zext i8 %bf.clear134 to i32, !dbg !395
  %tobool136 = icmp ne i32 %bf.cast135, 0, !dbg !393
  br i1 %tobool136, label %if.then137, label %if.end138, !dbg !396

if.then137:                                       ; preds = %sw.bb131
  store i32 -1, i32* %status, align 4, !dbg !397
  br label %if.end138, !dbg !398

if.end138:                                        ; preds = %if.then137, %sw.bb131
  %84 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !399
  %do_adapt56139 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %84, i32 0, i32 10, !dbg !401
  %bf.load140 = load i8, i8* %do_adapt56139, align 1, !dbg !401
  %bf.lshr141 = lshr i8 %bf.load140, 2, !dbg !401
  %bf.clear142 = and i8 %bf.lshr141, 1, !dbg !401
  %bf.cast143 = zext i8 %bf.clear142 to i32, !dbg !401
  %tobool144 = icmp ne i32 %bf.cast143, 0, !dbg !399
  br i1 %tobool144, label %if.else156, label %if.then145, !dbg !402

if.then145:                                       ; preds = %if.end138
  %85 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !403
  %cbin146 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %85, i32 0, i32 7, !dbg !406
  %86 = load i8, i8* %cbin146, align 2, !dbg !406
  %conv147 = zext i8 %86 to i32, !dbg !403
  %87 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !407
  %bit_shift148 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %87, i32 0, i32 0, !dbg !408
  %88 = load i32, i32* %bit_shift148, align 4, !dbg !408
  %add = add i32 %88, 1, !dbg !409
  %idxprom = sext i32 %add to i64, !dbg !410
  %arrayidx = getelementptr [10 x i8], [10 x i8]* @isdnhdlc_decode.fast_abort, i64 0, i64 %idxprom, !dbg !410
  %89 = load i8, i8* %arrayidx, align 1, !dbg !410
  %conv149 = zext i8 %89 to i32, !dbg !410
  %cmp150 = icmp eq i32 %conv147, %conv149, !dbg !411
  br i1 %cmp150, label %if.then152, label %if.end155, !dbg !412

if.then152:                                       ; preds = %if.then145
  %90 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !413
  %state153 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %90, i32 0, i32 4, !dbg !415
  store i32 0, i32* %state153, align 4, !dbg !416
  %91 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !417
  %bit_shift154 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %91, i32 0, i32 0, !dbg !418
  store i32 1, i32* %bit_shift154, align 4, !dbg !419
  br label %sw.epilog, !dbg !420

if.end155:                                        ; preds = %if.then145
  br label %if.end158, !dbg !421

if.else156:                                       ; preds = %if.end138
  %92 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !422
  %state157 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %92, i32 0, i32 4, !dbg !423
  store i32 1, i32* %state157, align 4, !dbg !424
  br label %if.end158

if.end158:                                        ; preds = %if.else156, %if.end155
  br label %sw.epilog, !dbg !425

sw.default:                                       ; preds = %if.then126
  %93 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !426
  %shift_reg159 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %93, i32 0, i32 8, !dbg !427
  %94 = load i8, i8* %shift_reg159, align 1, !dbg !428
  %conv160 = zext i8 %94 to i32, !dbg !428
  %shr161 = ashr i32 %conv160, 1, !dbg !428
  %conv162 = trunc i32 %shr161 to i8, !dbg !428
  store i8 %conv162, i8* %shift_reg159, align 1, !dbg !428
  %95 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !429
  %shift_reg163 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %95, i32 0, i32 8, !dbg !430
  %96 = load i8, i8* %shift_reg163, align 1, !dbg !431
  %conv164 = zext i8 %96 to i32, !dbg !431
  %or165 = or i32 %conv164, 128, !dbg !431
  %conv166 = trunc i32 %or165 to i8, !dbg !431
  store i8 %conv166, i8* %shift_reg163, align 1, !dbg !431
  %97 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !432
  %data_bits167 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %97, i32 0, i32 2, !dbg !433
  %98 = load i32, i32* %data_bits167, align 4, !dbg !434
  %inc168 = add i32 %98, 1, !dbg !434
  store i32 %inc168, i32* %data_bits167, align 4, !dbg !434
  br label %sw.epilog, !dbg !435

sw.epilog:                                        ; preds = %sw.default, %if.end158, %if.then152, %sw.bb130
  br label %if.end227, !dbg !436

if.else169:                                       ; preds = %sw.bb121
  %99 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !437
  %hdlc_bits1170 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %99, i32 0, i32 1, !dbg !439
  %100 = load i32, i32* %hdlc_bits1170, align 4, !dbg !439
  switch i32 %100, label %sw.default218 [
    i32 5, label %sw.bb171
    i32 6, label %sw.bb172
  ], !dbg !440

sw.bb171:                                         ; preds = %if.else169
  br label %sw.epilog225, !dbg !441

sw.bb172:                                         ; preds = %if.else169
  %101 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !443
  %data_received173 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %101, i32 0, i32 10, !dbg !445
  %bf.load174 = load i8, i8* %data_received173, align 1, !dbg !445
  %bf.clear175 = and i8 %bf.load174, 1, !dbg !445
  %bf.cast176 = zext i8 %bf.clear175 to i32, !dbg !445
  %tobool177 = icmp ne i32 %bf.cast176, 0, !dbg !443
  br i1 %tobool177, label %if.then178, label %if.end180, !dbg !446

if.then178:                                       ; preds = %sw.bb172
  %102 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !447
  %call179 = call i32 @check_frame(%struct.isdnhdlc_vars* %102) #4, !dbg !448
  store i32 %call179, i32* %status, align 4, !dbg !449
  br label %if.end180, !dbg !450

if.end180:                                        ; preds = %if.then178, %sw.bb172
  %103 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !451
  %crc181 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %103, i32 0, i32 6, !dbg !452
  store i16 -1, i16* %crc181, align 4, !dbg !453
  %104 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !454
  %shift_reg182 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %104, i32 0, i32 8, !dbg !455
  store i8 0, i8* %shift_reg182, align 1, !dbg !456
  %105 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !457
  %data_bits183 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %105, i32 0, i32 2, !dbg !458
  store i32 0, i32* %data_bits183, align 4, !dbg !459
  %106 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !460
  %do_adapt56184 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %106, i32 0, i32 10, !dbg !462
  %bf.load185 = load i8, i8* %do_adapt56184, align 1, !dbg !462
  %bf.lshr186 = lshr i8 %bf.load185, 2, !dbg !462
  %bf.clear187 = and i8 %bf.lshr186, 1, !dbg !462
  %bf.cast188 = zext i8 %bf.clear187 to i32, !dbg !462
  %tobool189 = icmp ne i32 %bf.cast188, 0, !dbg !460
  br i1 %tobool189, label %if.else212, label %if.then190, !dbg !463

if.then190:                                       ; preds = %if.end180
  br label %do.body, !dbg !464

do.body:                                          ; preds = %if.then190
  %107 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !465
  %cbin191 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %107, i32 0, i32 7, !dbg !465
  %108 = load i8, i8* %cbin191, align 2, !dbg !465
  %conv192 = zext i8 %108 to i32, !dbg !465
  %109 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !465
  %bit_shift193 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %109, i32 0, i32 0, !dbg !465
  %110 = load i32, i32* %bit_shift193, align 4, !dbg !465
  %idxprom194 = sext i32 %110 to i64, !dbg !465
  %arrayidx195 = getelementptr [9 x i8], [9 x i8]* @isdnhdlc_decode.fast_flag, i64 0, i64 %idxprom194, !dbg !465
  %111 = load i8, i8* %arrayidx195, align 1, !dbg !465
  %conv196 = zext i8 %111 to i32, !dbg !465
  %cmp197 = icmp eq i32 %conv192, %conv196, !dbg !465
  br i1 %cmp197, label %if.then199, label %if.else206, !dbg !468

if.then199:                                       ; preds = %do.body
  %112 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !469
  %bit_shift200 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %112, i32 0, i32 0, !dbg !469
  %113 = load i32, i32* %bit_shift200, align 4, !dbg !469
  %idxprom201 = sext i32 %113 to i64, !dbg !469
  %arrayidx202 = getelementptr [9 x i8], [9 x i8]* @isdnhdlc_decode.fast_flag_value, i64 0, i64 %idxprom201, !dbg !469
  %114 = load i8, i8* %arrayidx202, align 1, !dbg !469
  %115 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !469
  %ffvalue = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %115, i32 0, i32 9, !dbg !469
  store i8 %114, i8* %ffvalue, align 4, !dbg !469
  %116 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !469
  %state203 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %116, i32 0, i32 4, !dbg !469
  store i32 5, i32* %state203, align 4, !dbg !469
  %117 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !469
  %bit_shift204 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %117, i32 0, i32 0, !dbg !469
  %118 = load i32, i32* %bit_shift204, align 4, !dbg !469
  %119 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !469
  %ffbit_shift = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %119, i32 0, i32 3, !dbg !469
  store i32 %118, i32* %ffbit_shift, align 4, !dbg !469
  %120 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !469
  %bit_shift205 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %120, i32 0, i32 0, !dbg !469
  store i32 1, i32* %bit_shift205, align 4, !dbg !469
  br label %if.end211, !dbg !469

if.else206:                                       ; preds = %do.body
  %121 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !471
  %state207 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %121, i32 0, i32 4, !dbg !471
  store i32 4, i32* %state207, align 4, !dbg !471
  %122 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !471
  %data_received208 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %122, i32 0, i32 10, !dbg !471
  %bf.load209 = load i8, i8* %data_received208, align 1, !dbg !471
  %bf.clear210 = and i8 %bf.load209, -2, !dbg !471
  store i8 %bf.clear210, i8* %data_received208, align 1, !dbg !471
  br label %if.end211

if.end211:                                        ; preds = %if.else206, %if.then199
  br label %do.end, !dbg !468

do.end:                                           ; preds = %if.end211
  br label %if.end217, !dbg !468

if.else212:                                       ; preds = %if.end180
  %123 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !473
  %state213 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %123, i32 0, i32 4, !dbg !475
  store i32 4, i32* %state213, align 4, !dbg !476
  %124 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !477
  %data_received214 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %124, i32 0, i32 10, !dbg !478
  %bf.load215 = load i8, i8* %data_received214, align 1, !dbg !479
  %bf.clear216 = and i8 %bf.load215, -2, !dbg !479
  store i8 %bf.clear216, i8* %data_received214, align 1, !dbg !479
  br label %if.end217

if.end217:                                        ; preds = %if.else212, %do.end
  br label %sw.epilog225, !dbg !480

sw.default218:                                    ; preds = %if.else169
  %125 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !481
  %shift_reg219 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %125, i32 0, i32 8, !dbg !482
  %126 = load i8, i8* %shift_reg219, align 1, !dbg !483
  %conv220 = zext i8 %126 to i32, !dbg !483
  %shr221 = ashr i32 %conv220, 1, !dbg !483
  %conv222 = trunc i32 %shr221 to i8, !dbg !483
  store i8 %conv222, i8* %shift_reg219, align 1, !dbg !483
  %127 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !484
  %data_bits223 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %127, i32 0, i32 2, !dbg !485
  %128 = load i32, i32* %data_bits223, align 4, !dbg !486
  %inc224 = add i32 %128, 1, !dbg !486
  store i32 %inc224, i32* %data_bits223, align 4, !dbg !486
  br label %sw.epilog225, !dbg !487

sw.epilog225:                                     ; preds = %sw.default218, %if.end217, %sw.bb171
  %129 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !488
  %hdlc_bits1226 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %129, i32 0, i32 1, !dbg !489
  store i32 0, i32* %hdlc_bits1226, align 4, !dbg !490
  br label %if.end227

if.end227:                                        ; preds = %sw.epilog225, %sw.epilog
  %130 = load i32, i32* %status, align 4, !dbg !491
  %tobool228 = icmp ne i32 %130, 0, !dbg !491
  br i1 %tobool228, label %if.then229, label %if.end236, !dbg !493

if.then229:                                       ; preds = %if.end227
  %131 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !494
  %dstpos = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %131, i32 0, i32 5, !dbg !496
  store i32 0, i32* %dstpos, align 4, !dbg !497
  %132 = load i32, i32* %slen.addr, align 4, !dbg !498
  %133 = load i32*, i32** %count.addr, align 8, !dbg !499
  %134 = load i32, i32* %133, align 4, !dbg !500
  %sub = sub i32 %134, %132, !dbg !500
  store i32 %sub, i32* %133, align 4, !dbg !500
  %135 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !501
  %cbin230 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %135, i32 0, i32 7, !dbg !502
  %136 = load i8, i8* %cbin230, align 2, !dbg !503
  %conv231 = zext i8 %136 to i32, !dbg !503
  %shl232 = shl i32 %conv231, 1, !dbg !503
  %conv233 = trunc i32 %shl232 to i8, !dbg !503
  store i8 %conv233, i8* %cbin230, align 2, !dbg !503
  %137 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !504
  %bit_shift234 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %137, i32 0, i32 0, !dbg !505
  %138 = load i32, i32* %bit_shift234, align 4, !dbg !506
  %dec235 = add i32 %138, -1, !dbg !506
  store i32 %dec235, i32* %bit_shift234, align 4, !dbg !506
  %139 = load i32, i32* %status, align 4, !dbg !507
  store i32 %139, i32* %retval, align 4, !dbg !508
  br label %return, !dbg !508

if.end236:                                        ; preds = %if.end227
  %140 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !509
  %data_bits237 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %140, i32 0, i32 2, !dbg !511
  %141 = load i32, i32* %data_bits237, align 4, !dbg !511
  %cmp238 = icmp eq i32 %141, 8, !dbg !512
  br i1 %cmp238, label %if.then240, label %if.end261, !dbg !513

if.then240:                                       ; preds = %if.end236
  %142 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !514
  %data_bits241 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %142, i32 0, i32 2, !dbg !516
  store i32 0, i32* %data_bits241, align 4, !dbg !517
  %143 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !518
  %data_received242 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %143, i32 0, i32 10, !dbg !519
  %bf.load243 = load i8, i8* %data_received242, align 1, !dbg !520
  %bf.clear244 = and i8 %bf.load243, -2, !dbg !520
  %bf.set = or i8 %bf.clear244, 1, !dbg !520
  store i8 %bf.set, i8* %data_received242, align 1, !dbg !520
  %144 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !521
  %crc245 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %144, i32 0, i32 6, !dbg !522
  %145 = load i16, i16* %crc245, align 4, !dbg !522
  %146 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !523
  %shift_reg246 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %146, i32 0, i32 8, !dbg !524
  %147 = load i8, i8* %shift_reg246, align 1, !dbg !524
  %call247 = call zeroext i16 @crc_ccitt_byte(i16 zeroext %145, i8 zeroext %147) #4, !dbg !525
  %148 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !526
  %crc248 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %148, i32 0, i32 6, !dbg !527
  store i16 %call247, i16* %crc248, align 4, !dbg !528
  %149 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !529
  %dstpos249 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %149, i32 0, i32 5, !dbg !531
  %150 = load i32, i32* %dstpos249, align 4, !dbg !531
  %151 = load i32, i32* %dsize.addr, align 4, !dbg !532
  %cmp250 = icmp slt i32 %150, %151, !dbg !533
  br i1 %cmp250, label %if.then252, label %if.else258, !dbg !534

if.then252:                                       ; preds = %if.then240
  %152 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !535
  %shift_reg253 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %152, i32 0, i32 8, !dbg !536
  %153 = load i8, i8* %shift_reg253, align 1, !dbg !536
  %154 = load i8*, i8** %dst.addr, align 8, !dbg !537
  %155 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !538
  %dstpos254 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %155, i32 0, i32 5, !dbg !539
  %156 = load i32, i32* %dstpos254, align 4, !dbg !540
  %inc255 = add i32 %156, 1, !dbg !540
  store i32 %inc255, i32* %dstpos254, align 4, !dbg !540
  %idxprom256 = sext i32 %156 to i64, !dbg !537
  %arrayidx257 = getelementptr i8, i8* %154, i64 %idxprom256, !dbg !537
  store i8 %153, i8* %arrayidx257, align 1, !dbg !541
  br label %if.end260, !dbg !537

if.else258:                                       ; preds = %if.then240
  store i32 -3, i32* %status, align 4, !dbg !542
  %157 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !544
  %dstpos259 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %157, i32 0, i32 5, !dbg !545
  store i32 0, i32* %dstpos259, align 4, !dbg !546
  br label %if.end260

if.end260:                                        ; preds = %if.else258, %if.then252
  br label %if.end261, !dbg !547

if.end261:                                        ; preds = %if.end260, %if.end236
  %158 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !548
  %cbin262 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %158, i32 0, i32 7, !dbg !549
  %159 = load i8, i8* %cbin262, align 2, !dbg !550
  %conv263 = zext i8 %159 to i32, !dbg !550
  %shl264 = shl i32 %conv263, 1, !dbg !550
  %conv265 = trunc i32 %shl264 to i8, !dbg !550
  store i8 %conv265, i8* %cbin262, align 2, !dbg !550
  %160 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !551
  %bit_shift266 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %160, i32 0, i32 0, !dbg !552
  %161 = load i32, i32* %bit_shift266, align 4, !dbg !553
  %dec267 = add i32 %161, -1, !dbg !553
  store i32 %dec267, i32* %bit_shift266, align 4, !dbg !553
  br label %sw.epilog319, !dbg !554

sw.bb268:                                         ; preds = %if.end36
  %162 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !555
  %cbin269 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %162, i32 0, i32 7, !dbg !557
  %163 = load i8, i8* %cbin269, align 2, !dbg !557
  %conv270 = zext i8 %163 to i32, !dbg !555
  %164 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !558
  %ffvalue271 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %164, i32 0, i32 9, !dbg !559
  %165 = load i8, i8* %ffvalue271, align 4, !dbg !559
  %conv272 = zext i8 %165 to i32, !dbg !558
  %cmp273 = icmp eq i32 %conv270, %conv272, !dbg !560
  br i1 %cmp273, label %if.then275, label %if.else277, !dbg !561

if.then275:                                       ; preds = %sw.bb268
  %166 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !562
  %bit_shift276 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %166, i32 0, i32 0, !dbg !564
  store i32 0, i32* %bit_shift276, align 4, !dbg !565
  br label %sw.epilog319, !dbg !566

if.else277:                                       ; preds = %sw.bb268
  %167 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !567
  %cbin278 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %167, i32 0, i32 7, !dbg !570
  %168 = load i8, i8* %cbin278, align 2, !dbg !570
  %conv279 = zext i8 %168 to i32, !dbg !567
  %cmp280 = icmp eq i32 %conv279, 255, !dbg !571
  br i1 %cmp280, label %if.then282, label %if.else285, !dbg !572

if.then282:                                       ; preds = %if.else277
  %169 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !573
  %state283 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %169, i32 0, i32 4, !dbg !575
  store i32 0, i32* %state283, align 4, !dbg !576
  %170 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !577
  %bit_shift284 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %170, i32 0, i32 0, !dbg !578
  store i32 0, i32* %bit_shift284, align 4, !dbg !579
  br label %if.end316, !dbg !580

if.else285:                                       ; preds = %if.else277
  %171 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !581
  %ffbit_shift286 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %171, i32 0, i32 3, !dbg !583
  %172 = load i32, i32* %ffbit_shift286, align 4, !dbg !583
  %cmp287 = icmp eq i32 %172, 8, !dbg !584
  br i1 %cmp287, label %if.then289, label %if.else291, !dbg !585

if.then289:                                       ; preds = %if.else285
  %173 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !586
  %state290 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %173, i32 0, i32 4, !dbg !588
  store i32 3, i32* %state290, align 4, !dbg !589
  br label %sw.epilog319, !dbg !590

if.else291:                                       ; preds = %if.else285
  br label %do.body292, !dbg !591

do.body292:                                       ; preds = %if.else291
  %174 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !592
  %ffbit_shift293 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %174, i32 0, i32 3, !dbg !592
  %175 = load i32, i32* %ffbit_shift293, align 4, !dbg !592
  %sub294 = sub i32 %175, 1, !dbg !592
  %idxprom295 = sext i32 %sub294 to i64, !dbg !592
  %arrayidx296 = getelementptr [10 x i8], [10 x i8]* @isdnhdlc_decode.fast_abort, i64 0, i64 %idxprom295, !dbg !592
  %176 = load i8, i8* %arrayidx296, align 1, !dbg !592
  %177 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !592
  %shift_reg297 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %177, i32 0, i32 8, !dbg !592
  store i8 %176, i8* %shift_reg297, align 1, !dbg !592
  %178 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !592
  %ffbit_shift298 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %178, i32 0, i32 3, !dbg !592
  %179 = load i32, i32* %ffbit_shift298, align 4, !dbg !592
  %sub299 = sub i32 %179, 2, !dbg !592
  %180 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !592
  %hdlc_bits1300 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %180, i32 0, i32 1, !dbg !592
  store i32 %sub299, i32* %hdlc_bits1300, align 4, !dbg !592
  %181 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !594
  %hdlc_bits1301 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %181, i32 0, i32 1, !dbg !594
  %182 = load i32, i32* %hdlc_bits1301, align 4, !dbg !594
  %cmp302 = icmp slt i32 %182, 0, !dbg !594
  br i1 %cmp302, label %if.then304, label %if.end306, !dbg !592

if.then304:                                       ; preds = %do.body292
  %183 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !594
  %hdlc_bits1305 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %183, i32 0, i32 1, !dbg !594
  store i32 0, i32* %hdlc_bits1305, align 4, !dbg !594
  br label %if.end306, !dbg !594

if.end306:                                        ; preds = %if.then304, %do.body292
  %184 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !592
  %ffbit_shift307 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %184, i32 0, i32 3, !dbg !592
  %185 = load i32, i32* %ffbit_shift307, align 4, !dbg !592
  %sub308 = sub i32 %185, 1, !dbg !592
  %186 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !592
  %data_bits309 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %186, i32 0, i32 2, !dbg !592
  store i32 %sub308, i32* %data_bits309, align 4, !dbg !592
  %187 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !592
  %state310 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %187, i32 0, i32 4, !dbg !592
  store i32 4, i32* %state310, align 4, !dbg !592
  %188 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !592
  %data_received311 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %188, i32 0, i32 10, !dbg !592
  %bf.load312 = load i8, i8* %data_received311, align 1, !dbg !592
  %bf.clear313 = and i8 %bf.load312, -2, !dbg !592
  store i8 %bf.clear313, i8* %data_received311, align 1, !dbg !592
  br label %do.end314, !dbg !592

do.end314:                                        ; preds = %if.end306
  br label %if.end315

if.end315:                                        ; preds = %do.end314
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.then282
  br label %if.end317

if.end317:                                        ; preds = %if.end316
  br label %sw.epilog319, !dbg !596

sw.default318:                                    ; preds = %if.end36
  br label %sw.epilog319, !dbg !597

sw.epilog319:                                     ; preds = %sw.default318, %if.end317, %if.then289, %if.then275, %if.end261, %if.end114, %if.end95, %if.end72, %if.end44, %if.then42
  br label %while.cond, !dbg !211, !llvm.loop !598

while.end:                                        ; preds = %while.cond
  %189 = load i32, i32* %slen.addr, align 4, !dbg !600
  %190 = load i32*, i32** %count.addr, align 8, !dbg !601
  %191 = load i32, i32* %190, align 4, !dbg !602
  %sub320 = sub i32 %191, %189, !dbg !602
  store i32 %sub320, i32* %190, align 4, !dbg !602
  store i32 0, i32* %retval, align 4, !dbg !603
  br label %return, !dbg !603

return:                                           ; preds = %while.end, %if.then229, %sw.bb
  %192 = load i32, i32* %retval, align 4, !dbg !604
  ret i32 %192, !dbg !604
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i8(i8) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @__bitrev8(i8 zeroext %byte) #0 !dbg !605 {
entry:
  %byte.addr = alloca i8, align 1
  store i8 %byte, i8* %byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte.addr, metadata !609, metadata !DIExpression()), !dbg !610
  %0 = load i8, i8* %byte.addr, align 1, !dbg !611
  %idxprom = zext i8 %0 to i64, !dbg !612
  %arrayidx = getelementptr [256 x i8], [256 x i8]* @byte_rev_table, i64 0, i64 %idxprom, !dbg !612
  %1 = load i8, i8* %arrayidx, align 1, !dbg !612
  ret i8 %1, !dbg !613
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @check_frame(%struct.isdnhdlc_vars* %hdlc) #0 !dbg !614 {
entry:
  %hdlc.addr = alloca %struct.isdnhdlc_vars*, align 8
  %status = alloca i32, align 4
  store %struct.isdnhdlc_vars* %hdlc, %struct.isdnhdlc_vars** %hdlc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.isdnhdlc_vars** %hdlc.addr, metadata !617, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.declare(metadata i32* %status, metadata !619, metadata !DIExpression()), !dbg !620
  %0 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !621
  %dstpos = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %0, i32 0, i32 5, !dbg !623
  %1 = load i32, i32* %dstpos, align 4, !dbg !623
  %cmp = icmp slt i32 %1, 2, !dbg !624
  br i1 %cmp, label %if.then, label %if.else, !dbg !625

if.then:                                          ; preds = %entry
  store i32 -1, i32* %status, align 4, !dbg !626
  br label %if.end7, !dbg !627

if.else:                                          ; preds = %entry
  %2 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !628
  %crc = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %2, i32 0, i32 6, !dbg !630
  %3 = load i16, i16* %crc, align 4, !dbg !630
  %conv = zext i16 %3 to i32, !dbg !628
  %cmp1 = icmp ne i32 %conv, 61624, !dbg !631
  br i1 %cmp1, label %if.then3, label %if.else4, !dbg !632

if.then3:                                         ; preds = %if.else
  store i32 -2, i32* %status, align 4, !dbg !633
  br label %if.end, !dbg !634

if.else4:                                         ; preds = %if.else
  %4 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !635
  %dstpos5 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %4, i32 0, i32 5, !dbg !637
  %5 = load i32, i32* %dstpos5, align 4, !dbg !638
  %sub = sub i32 %5, 2, !dbg !638
  store i32 %sub, i32* %dstpos5, align 4, !dbg !638
  %6 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !639
  %dstpos6 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %6, i32 0, i32 5, !dbg !640
  %7 = load i32, i32* %dstpos6, align 4, !dbg !640
  store i32 %7, i32* %status, align 4, !dbg !641
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %8 = load i32, i32* %status, align 4, !dbg !642
  ret i32 %8, !dbg !643
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @crc_ccitt_byte(i16 zeroext %crc, i8 zeroext %c) #0 !dbg !644 {
entry:
  %crc.addr = alloca i16, align 2
  %c.addr = alloca i8, align 1
  store i16 %crc, i16* %crc.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %crc.addr, metadata !648, metadata !DIExpression()), !dbg !649
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !650, metadata !DIExpression()), !dbg !651
  %0 = load i16, i16* %crc.addr, align 2, !dbg !652
  %conv = zext i16 %0 to i32, !dbg !652
  %shr = ashr i32 %conv, 8, !dbg !653
  %1 = load i16, i16* %crc.addr, align 2, !dbg !654
  %conv1 = zext i16 %1 to i32, !dbg !654
  %2 = load i8, i8* %c.addr, align 1, !dbg !655
  %conv2 = zext i8 %2 to i32, !dbg !655
  %xor = xor i32 %conv1, %conv2, !dbg !656
  %and = and i32 %xor, 255, !dbg !657
  %idxprom = sext i32 %and to i64, !dbg !658
  %arrayidx = getelementptr [256 x i16], [256 x i16]* @crc_ccitt_table, i64 0, i64 %idxprom, !dbg !658
  %3 = load i16, i16* %arrayidx, align 2, !dbg !658
  %conv3 = zext i16 %3 to i32, !dbg !658
  %xor4 = xor i32 %shr, %conv3, !dbg !659
  %conv5 = trunc i32 %xor4 to i16, !dbg !660
  ret i16 %conv5, !dbg !661
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @isdnhdlc_encode(%struct.isdnhdlc_vars* %hdlc, i8* %src, i16 zeroext %slen, i32* %count, i8* %dst, i32 %dsize) #0 !dbg !101 {
entry:
  %retval = alloca i32, align 4
  %hdlc.addr = alloca %struct.isdnhdlc_vars*, align 8
  %src.addr = alloca i8*, align 8
  %slen.addr = alloca i16, align 2
  %count.addr = alloca i32*, align 8
  %dst.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %__x = alloca i8, align 1
  %tmp = alloca i32, align 4
  %___x = alloca i8, align 1
  %tmp96 = alloca i8, align 1
  %__x473 = alloca i8, align 1
  %tmp475 = alloca i32, align 4
  %___x477 = alloca i8, align 1
  %tmp500 = alloca i8, align 1
  %__x550 = alloca i8, align 1
  %tmp552 = alloca i32, align 4
  %___x554 = alloca i8, align 1
  %tmp577 = alloca i8, align 1
  store %struct.isdnhdlc_vars* %hdlc, %struct.isdnhdlc_vars** %hdlc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.isdnhdlc_vars** %hdlc.addr, metadata !662, metadata !DIExpression()), !dbg !663
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !664, metadata !DIExpression()), !dbg !665
  store i16 %slen, i16* %slen.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %slen.addr, metadata !666, metadata !DIExpression()), !dbg !667
  store i32* %count, i32** %count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %count.addr, metadata !668, metadata !DIExpression()), !dbg !669
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !670, metadata !DIExpression()), !dbg !671
  store i32 %dsize, i32* %dsize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dsize.addr, metadata !672, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.declare(metadata i32* %len, metadata !674, metadata !DIExpression()), !dbg !675
  store i32 0, i32* %len, align 4, !dbg !675
  %0 = load i16, i16* %slen.addr, align 2, !dbg !676
  %conv = zext i16 %0 to i32, !dbg !676
  %1 = load i32*, i32** %count.addr, align 8, !dbg !677
  store i32 %conv, i32* %1, align 4, !dbg !678
  %2 = load i16, i16* %slen.addr, align 2, !dbg !679
  %conv1 = zext i16 %2 to i32, !dbg !679
  %cmp = icmp eq i32 %conv1, 1, !dbg !681
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !682

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !683
  %state = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %3, i32 0, i32 4, !dbg !684
  %4 = load i32, i32* %state, align 4, !dbg !684
  %cmp3 = icmp eq i32 %4, 2, !dbg !685
  br i1 %cmp3, label %if.then, label %if.end, !dbg !686

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !687
  %state5 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %5, i32 0, i32 4, !dbg !688
  store i32 12, i32* %state5, align 4, !dbg !689
  br label %if.end, !dbg !687

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond, !dbg !690

while.cond:                                       ; preds = %if.end593, %if.end
  %6 = load i32, i32* %dsize.addr, align 4, !dbg !691
  %cmp6 = icmp sgt i32 %6, 0, !dbg !692
  br i1 %cmp6, label %while.body, label %while.end594, !dbg !690

while.body:                                       ; preds = %while.cond
  %7 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !693
  %bit_shift = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %7, i32 0, i32 0, !dbg !696
  %8 = load i32, i32* %bit_shift, align 4, !dbg !696
  %cmp8 = icmp eq i32 %8, 0, !dbg !697
  br i1 %cmp8, label %if.then10, label %if.end55, !dbg !698

if.then10:                                        ; preds = %while.body
  %9 = load i16, i16* %slen.addr, align 2, !dbg !699
  %conv11 = zext i16 %9 to i32, !dbg !699
  %tobool = icmp ne i32 %conv11, 0, !dbg !699
  br i1 %tobool, label %land.lhs.true12, label %if.else, !dbg !702

land.lhs.true12:                                  ; preds = %if.then10
  %10 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !703
  %do_closing = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %10, i32 0, i32 10, !dbg !704
  %bf.load = load i8, i8* %do_closing, align 1, !dbg !704
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !704
  %bf.clear = and i8 %bf.lshr, 1, !dbg !704
  %bf.cast = zext i8 %bf.clear to i32, !dbg !704
  %tobool13 = icmp ne i32 %bf.cast, 0, !dbg !703
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !705

if.then14:                                        ; preds = %land.lhs.true12
  %11 = load i8*, i8** %src.addr, align 8, !dbg !706
  %incdec.ptr = getelementptr i8, i8* %11, i32 1, !dbg !706
  store i8* %incdec.ptr, i8** %src.addr, align 8, !dbg !706
  %12 = load i8, i8* %11, align 1, !dbg !708
  %13 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !709
  %shift_reg = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %13, i32 0, i32 8, !dbg !710
  store i8 %12, i8* %shift_reg, align 1, !dbg !711
  %14 = load i16, i16* %slen.addr, align 2, !dbg !712
  %dec = add i16 %14, -1, !dbg !712
  store i16 %dec, i16* %slen.addr, align 2, !dbg !712
  %15 = load i16, i16* %slen.addr, align 2, !dbg !713
  %conv15 = zext i16 %15 to i32, !dbg !713
  %cmp16 = icmp eq i32 %conv15, 0, !dbg !715
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !716

if.then18:                                        ; preds = %if.then14
  %16 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !717
  %do_closing19 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %16, i32 0, i32 10, !dbg !718
  %bf.load20 = load i8, i8* %do_closing19, align 1, !dbg !719
  %bf.clear21 = and i8 %bf.load20, -9, !dbg !719
  %bf.set = or i8 %bf.clear21, 8, !dbg !719
  store i8 %bf.set, i8* %do_closing19, align 1, !dbg !719
  br label %if.end22, !dbg !717

if.end22:                                         ; preds = %if.then18, %if.then14
  %17 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !720
  %bit_shift23 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %17, i32 0, i32 0, !dbg !721
  store i32 8, i32* %bit_shift23, align 4, !dbg !722
  br label %if.end54, !dbg !723

if.else:                                          ; preds = %land.lhs.true12, %if.then10
  %18 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !724
  %state24 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %18, i32 0, i32 4, !dbg !727
  %19 = load i32, i32* %state24, align 4, !dbg !727
  %cmp25 = icmp eq i32 %19, 0, !dbg !728
  br i1 %cmp25, label %if.then27, label %if.end53, !dbg !729

if.then27:                                        ; preds = %if.else
  %20 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !730
  %data_received = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %20, i32 0, i32 10, !dbg !733
  %bf.load28 = load i8, i8* %data_received, align 1, !dbg !733
  %bf.clear29 = and i8 %bf.load28, 1, !dbg !733
  %bf.cast30 = zext i8 %bf.clear29 to i32, !dbg !733
  %tobool31 = icmp ne i32 %bf.cast30, 0, !dbg !730
  br i1 %tobool31, label %if.then32, label %if.else41, !dbg !734

if.then32:                                        ; preds = %if.then27
  %21 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !735
  %state33 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %21, i32 0, i32 4, !dbg !737
  store i32 1, i32* %state33, align 4, !dbg !738
  %22 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !739
  %crc = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %22, i32 0, i32 6, !dbg !740
  %23 = load i16, i16* %crc, align 4, !dbg !741
  %conv34 = zext i16 %23 to i32, !dbg !741
  %xor = xor i32 %conv34, 65535, !dbg !741
  %conv35 = trunc i32 %xor to i16, !dbg !741
  store i16 %conv35, i16* %crc, align 4, !dbg !741
  %24 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !742
  %bit_shift36 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %24, i32 0, i32 0, !dbg !743
  store i32 8, i32* %bit_shift36, align 4, !dbg !744
  %25 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !745
  %crc37 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %25, i32 0, i32 6, !dbg !746
  %26 = load i16, i16* %crc37, align 4, !dbg !746
  %conv38 = zext i16 %26 to i32, !dbg !745
  %and = and i32 %conv38, 255, !dbg !747
  %conv39 = trunc i32 %and to i8, !dbg !745
  %27 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !748
  %shift_reg40 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %27, i32 0, i32 8, !dbg !749
  store i8 %conv39, i8* %shift_reg40, align 1, !dbg !750
  br label %if.end52, !dbg !751

if.else41:                                        ; preds = %if.then27
  %28 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !752
  %do_adapt56 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %28, i32 0, i32 10, !dbg !754
  %bf.load42 = load i8, i8* %do_adapt56, align 1, !dbg !754
  %bf.lshr43 = lshr i8 %bf.load42, 2, !dbg !754
  %bf.clear44 = and i8 %bf.lshr43, 1, !dbg !754
  %bf.cast45 = zext i8 %bf.clear44 to i32, !dbg !754
  %tobool46 = icmp ne i32 %bf.cast45, 0, !dbg !752
  br i1 %tobool46, label %if.else49, label %if.then47, !dbg !755

if.then47:                                        ; preds = %if.else41
  %29 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !756
  %state48 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %29, i32 0, i32 4, !dbg !757
  store i32 2, i32* %state48, align 4, !dbg !758
  br label %if.end51, !dbg !756

if.else49:                                        ; preds = %if.else41
  %30 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !759
  %state50 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %30, i32 0, i32 4, !dbg !760
  store i32 8, i32* %state50, align 4, !dbg !761
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then47
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then32
  br label %if.end53, !dbg !762

if.end53:                                         ; preds = %if.end52, %if.else
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end22
  br label %if.end55, !dbg !763

if.end55:                                         ; preds = %if.end54, %while.body
  %31 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !764
  %state56 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %31, i32 0, i32 4, !dbg !765
  %32 = load i32, i32* %state56, align 4, !dbg !765
  switch i32 %32, label %sw.default [
    i32 11, label %sw.bb
    i32 2, label %sw.bb62
    i32 12, label %sw.bb107
    i32 8, label %sw.bb123
    i32 9, label %sw.bb135
    i32 10, label %sw.bb151
    i32 3, label %sw.bb176
    i32 0, label %sw.bb217
    i32 1, label %sw.bb263
    i32 4, label %sw.bb312
    i32 5, label %sw.bb357
    i32 6, label %sw.bb431
    i32 7, label %sw.bb452
  ], !dbg !766

sw.bb:                                            ; preds = %if.end55
  br label %while.cond57, !dbg !767

while.cond57:                                     ; preds = %while.body60, %sw.bb
  %33 = load i32, i32* %dsize.addr, align 4, !dbg !769
  %dec58 = add i32 %33, -1, !dbg !769
  store i32 %dec58, i32* %dsize.addr, align 4, !dbg !769
  %tobool59 = icmp ne i32 %33, 0, !dbg !767
  br i1 %tobool59, label %while.body60, label %while.end, !dbg !767

while.body60:                                     ; preds = %while.cond57
  %34 = load i8*, i8** %dst.addr, align 8, !dbg !770
  %incdec.ptr61 = getelementptr i8, i8* %34, i32 1, !dbg !770
  store i8* %incdec.ptr61, i8** %dst.addr, align 8, !dbg !770
  store i8 -1, i8* %34, align 1, !dbg !771
  br label %while.cond57, !dbg !767, !llvm.loop !772

while.end:                                        ; preds = %while.cond57
  %35 = load i32, i32* %dsize.addr, align 4, !dbg !774
  store i32 %35, i32* %retval, align 4, !dbg !775
  br label %return, !dbg !775

sw.bb62:                                          ; preds = %if.end55
  %36 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !776
  %do_closing63 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %36, i32 0, i32 10, !dbg !777
  %bf.load64 = load i8, i8* %do_closing63, align 1, !dbg !778
  %bf.clear65 = and i8 %bf.load64, -9, !dbg !778
  store i8 %bf.clear65, i8* %do_closing63, align 1, !dbg !778
  %37 = load i16, i16* %slen.addr, align 2, !dbg !779
  %conv66 = zext i16 %37 to i32, !dbg !779
  %cmp67 = icmp eq i32 %conv66, 0, !dbg !781
  br i1 %cmp67, label %if.then69, label %if.end106, !dbg !782

if.then69:                                        ; preds = %sw.bb62
  %38 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !783
  %do_bitreverse = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %38, i32 0, i32 10, !dbg !786
  %bf.load70 = load i8, i8* %do_bitreverse, align 1, !dbg !786
  %bf.lshr71 = lshr i8 %bf.load70, 4, !dbg !786
  %bf.clear72 = and i8 %bf.lshr71, 1, !dbg !786
  %bf.cast73 = zext i8 %bf.clear72 to i32, !dbg !786
  %cmp74 = icmp eq i32 %bf.cast73, 0, !dbg !787
  br i1 %cmp74, label %if.then76, label %if.else101, !dbg !788

if.then76:                                        ; preds = %if.then69
  call void @llvm.dbg.declare(metadata i8* %__x, metadata !789, metadata !DIExpression()), !dbg !791
  %39 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !791
  %ffvalue = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %39, i32 0, i32 9, !dbg !791
  %40 = load i8, i8* %ffvalue, align 4, !dbg !791
  store i8 %40, i8* %__x, align 1, !dbg !791
  %41 = load i8, i8* %__x, align 1, !dbg !791
  %42 = call i1 @llvm.is.constant.i8(i8 %41), !dbg !791
  br i1 %42, label %cond.true, label %cond.false, !dbg !791

cond.true:                                        ; preds = %if.then76
  call void @llvm.dbg.declare(metadata i8* %___x, metadata !792, metadata !DIExpression()), !dbg !794
  %43 = load i8, i8* %__x, align 1, !dbg !794
  store i8 %43, i8* %___x, align 1, !dbg !794
  %44 = load i8, i8* %___x, align 1, !dbg !794
  %conv77 = zext i8 %44 to i32, !dbg !794
  %shr = ashr i32 %conv77, 4, !dbg !794
  %45 = load i8, i8* %___x, align 1, !dbg !794
  %conv78 = zext i8 %45 to i32, !dbg !794
  %shl = shl i32 %conv78, 4, !dbg !794
  %or = or i32 %shr, %shl, !dbg !794
  %conv79 = trunc i32 %or to i8, !dbg !794
  store i8 %conv79, i8* %___x, align 1, !dbg !794
  %46 = load i8, i8* %___x, align 1, !dbg !794
  %conv80 = zext i8 %46 to i32, !dbg !794
  %and81 = and i32 %conv80, 204, !dbg !794
  %shr82 = ashr i32 %and81, 2, !dbg !794
  %47 = load i8, i8* %___x, align 1, !dbg !794
  %conv83 = zext i8 %47 to i32, !dbg !794
  %and84 = and i32 %conv83, 51, !dbg !794
  %shl85 = shl i32 %and84, 2, !dbg !794
  %or86 = or i32 %shr82, %shl85, !dbg !794
  %conv87 = trunc i32 %or86 to i8, !dbg !794
  store i8 %conv87, i8* %___x, align 1, !dbg !794
  %48 = load i8, i8* %___x, align 1, !dbg !794
  %conv88 = zext i8 %48 to i32, !dbg !794
  %and89 = and i32 %conv88, 170, !dbg !794
  %shr90 = ashr i32 %and89, 1, !dbg !794
  %49 = load i8, i8* %___x, align 1, !dbg !794
  %conv91 = zext i8 %49 to i32, !dbg !794
  %and92 = and i32 %conv91, 85, !dbg !794
  %shl93 = shl i32 %and92, 1, !dbg !794
  %or94 = or i32 %shr90, %shl93, !dbg !794
  %conv95 = trunc i32 %or94 to i8, !dbg !794
  store i8 %conv95, i8* %___x, align 1, !dbg !794
  %50 = load i8, i8* %___x, align 1, !dbg !794
  store i8 %50, i8* %tmp96, align 1, !dbg !794
  %51 = load i8, i8* %tmp96, align 1, !dbg !794
  %conv97 = zext i8 %51 to i32, !dbg !791
  br label %cond.end, !dbg !791

cond.false:                                       ; preds = %if.then76
  %52 = load i8, i8* %__x, align 1, !dbg !791
  %call = call zeroext i8 @__bitrev8(i8 zeroext %52) #4, !dbg !791
  %conv98 = zext i8 %call to i32, !dbg !791
  br label %cond.end, !dbg !791

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv97, %cond.true ], [ %conv98, %cond.false ], !dbg !791
  store i32 %cond, i32* %tmp, align 4, !dbg !791
  %53 = load i32, i32* %tmp, align 4, !dbg !791
  %conv99 = trunc i32 %53 to i8, !dbg !795
  %54 = load i8*, i8** %dst.addr, align 8, !dbg !796
  %incdec.ptr100 = getelementptr i8, i8* %54, i32 1, !dbg !796
  store i8* %incdec.ptr100, i8** %dst.addr, align 8, !dbg !796
  store i8 %conv99, i8* %54, align 1, !dbg !797
  br label %if.end104, !dbg !798

if.else101:                                       ; preds = %if.then69
  %55 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !799
  %ffvalue102 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %55, i32 0, i32 9, !dbg !800
  %56 = load i8, i8* %ffvalue102, align 4, !dbg !800
  %57 = load i8*, i8** %dst.addr, align 8, !dbg !801
  %incdec.ptr103 = getelementptr i8, i8* %57, i32 1, !dbg !801
  store i8* %incdec.ptr103, i8** %dst.addr, align 8, !dbg !801
  store i8 %56, i8* %57, align 1, !dbg !802
  br label %if.end104

if.end104:                                        ; preds = %if.else101, %cond.end
  %58 = load i32, i32* %len, align 4, !dbg !803
  %inc = add i32 %58, 1, !dbg !803
  store i32 %inc, i32* %len, align 4, !dbg !803
  %59 = load i32, i32* %dsize.addr, align 4, !dbg !804
  %dec105 = add i32 %59, -1, !dbg !804
  store i32 %dec105, i32* %dsize.addr, align 4, !dbg !804
  br label %sw.epilog, !dbg !805

if.end106:                                        ; preds = %sw.bb62
  br label %sw.bb107, !dbg !806

sw.bb107:                                         ; preds = %if.end55, %if.end106
  %60 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !807
  %bit_shift108 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %60, i32 0, i32 0, !dbg !809
  %61 = load i32, i32* %bit_shift108, align 4, !dbg !809
  %cmp109 = icmp eq i32 %61, 8, !dbg !810
  br i1 %cmp109, label %if.then111, label %if.end122, !dbg !811

if.then111:                                       ; preds = %sw.bb107
  %62 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !812
  %ffvalue112 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %62, i32 0, i32 9, !dbg !814
  %63 = load i8, i8* %ffvalue112, align 4, !dbg !814
  %conv113 = zext i8 %63 to i32, !dbg !812
  %64 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !815
  %data_bits = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %64, i32 0, i32 2, !dbg !816
  %65 = load i32, i32* %data_bits, align 4, !dbg !816
  %sub = sub i32 8, %65, !dbg !817
  %shr114 = ashr i32 %conv113, %sub, !dbg !818
  %conv115 = trunc i32 %shr114 to i8, !dbg !812
  %66 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !819
  %cbin = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %66, i32 0, i32 7, !dbg !820
  store i8 %conv115, i8* %cbin, align 2, !dbg !821
  %67 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !822
  %state116 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %67, i32 0, i32 4, !dbg !823
  store i32 0, i32* %state116, align 4, !dbg !824
  %68 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !825
  %crc117 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %68, i32 0, i32 6, !dbg !826
  store i16 -1, i16* %crc117, align 4, !dbg !827
  %69 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !828
  %hdlc_bits1 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %69, i32 0, i32 1, !dbg !829
  store i32 0, i32* %hdlc_bits1, align 4, !dbg !830
  %70 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !831
  %data_received118 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %70, i32 0, i32 10, !dbg !832
  %bf.load119 = load i8, i8* %data_received118, align 1, !dbg !833
  %bf.clear120 = and i8 %bf.load119, -2, !dbg !833
  %bf.set121 = or i8 %bf.clear120, 1, !dbg !833
  store i8 %bf.set121, i8* %data_received118, align 1, !dbg !833
  br label %if.end122, !dbg !834

if.end122:                                        ; preds = %if.then111, %sw.bb107
  br label %sw.epilog, !dbg !835

sw.bb123:                                         ; preds = %if.end55
  %71 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !836
  %do_closing124 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %71, i32 0, i32 10, !dbg !837
  %bf.load125 = load i8, i8* %do_closing124, align 1, !dbg !838
  %bf.clear126 = and i8 %bf.load125, -9, !dbg !838
  store i8 %bf.clear126, i8* %do_closing124, align 1, !dbg !838
  %72 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !839
  %cbin127 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %72, i32 0, i32 7, !dbg !840
  %73 = load i8, i8* %cbin127, align 2, !dbg !841
  %conv128 = zext i8 %73 to i32, !dbg !841
  %shl129 = shl i32 %conv128, 1, !dbg !841
  %conv130 = trunc i32 %shl129 to i8, !dbg !841
  store i8 %conv130, i8* %cbin127, align 2, !dbg !841
  %74 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !842
  %data_bits131 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %74, i32 0, i32 2, !dbg !843
  %75 = load i32, i32* %data_bits131, align 4, !dbg !844
  %inc132 = add i32 %75, 1, !dbg !844
  store i32 %inc132, i32* %data_bits131, align 4, !dbg !844
  %76 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !845
  %hdlc_bits1133 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %76, i32 0, i32 1, !dbg !846
  store i32 0, i32* %hdlc_bits1133, align 4, !dbg !847
  %77 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !848
  %state134 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %77, i32 0, i32 4, !dbg !849
  store i32 9, i32* %state134, align 4, !dbg !850
  br label %sw.epilog, !dbg !851

sw.bb135:                                         ; preds = %if.end55
  %78 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !852
  %cbin136 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %78, i32 0, i32 7, !dbg !853
  %79 = load i8, i8* %cbin136, align 2, !dbg !854
  %conv137 = zext i8 %79 to i32, !dbg !854
  %shl138 = shl i32 %conv137, 1, !dbg !854
  %conv139 = trunc i32 %shl138 to i8, !dbg !854
  store i8 %conv139, i8* %cbin136, align 2, !dbg !854
  %80 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !855
  %data_bits140 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %80, i32 0, i32 2, !dbg !856
  %81 = load i32, i32* %data_bits140, align 4, !dbg !857
  %inc141 = add i32 %81, 1, !dbg !857
  store i32 %inc141, i32* %data_bits140, align 4, !dbg !857
  %82 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !858
  %cbin142 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %82, i32 0, i32 7, !dbg !859
  %83 = load i8, i8* %cbin142, align 2, !dbg !860
  %inc143 = add i8 %83, 1, !dbg !860
  store i8 %inc143, i8* %cbin142, align 2, !dbg !860
  %84 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !861
  %hdlc_bits1144 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %84, i32 0, i32 1, !dbg !863
  %85 = load i32, i32* %hdlc_bits1144, align 4, !dbg !864
  %inc145 = add i32 %85, 1, !dbg !864
  store i32 %inc145, i32* %hdlc_bits1144, align 4, !dbg !864
  %cmp146 = icmp eq i32 %inc145, 6, !dbg !865
  br i1 %cmp146, label %if.then148, label %if.end150, !dbg !866

if.then148:                                       ; preds = %sw.bb135
  %86 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !867
  %state149 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %86, i32 0, i32 4, !dbg !868
  store i32 10, i32* %state149, align 4, !dbg !869
  br label %if.end150, !dbg !867

if.end150:                                        ; preds = %if.then148, %sw.bb135
  br label %sw.epilog, !dbg !870

sw.bb151:                                         ; preds = %if.end55
  %87 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !871
  %cbin152 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %87, i32 0, i32 7, !dbg !872
  %88 = load i8, i8* %cbin152, align 2, !dbg !873
  %conv153 = zext i8 %88 to i32, !dbg !873
  %shl154 = shl i32 %conv153, 1, !dbg !873
  %conv155 = trunc i32 %shl154 to i8, !dbg !873
  store i8 %conv155, i8* %cbin152, align 2, !dbg !873
  %89 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !874
  %data_bits156 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %89, i32 0, i32 2, !dbg !875
  %90 = load i32, i32* %data_bits156, align 4, !dbg !876
  %inc157 = add i32 %90, 1, !dbg !876
  store i32 %inc157, i32* %data_bits156, align 4, !dbg !876
  %91 = load i16, i16* %slen.addr, align 2, !dbg !877
  %conv158 = zext i16 %91 to i32, !dbg !877
  %cmp159 = icmp eq i32 %conv158, 0, !dbg !879
  br i1 %cmp159, label %if.then161, label %if.end163, !dbg !880

if.then161:                                       ; preds = %sw.bb151
  %92 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !881
  %state162 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %92, i32 0, i32 4, !dbg !883
  store i32 8, i32* %state162, align 4, !dbg !884
  br label %sw.epilog, !dbg !885

if.end163:                                        ; preds = %sw.bb151
  %93 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !886
  %bit_shift164 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %93, i32 0, i32 0, !dbg !888
  %94 = load i32, i32* %bit_shift164, align 4, !dbg !888
  %cmp165 = icmp eq i32 %94, 8, !dbg !889
  br i1 %cmp165, label %if.then167, label %if.end175, !dbg !890

if.then167:                                       ; preds = %if.end163
  %95 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !891
  %state168 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %95, i32 0, i32 4, !dbg !893
  store i32 0, i32* %state168, align 4, !dbg !894
  %96 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !895
  %crc169 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %96, i32 0, i32 6, !dbg !896
  store i16 -1, i16* %crc169, align 4, !dbg !897
  %97 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !898
  %hdlc_bits1170 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %97, i32 0, i32 1, !dbg !899
  store i32 0, i32* %hdlc_bits1170, align 4, !dbg !900
  %98 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !901
  %data_received171 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %98, i32 0, i32 10, !dbg !902
  %bf.load172 = load i8, i8* %data_received171, align 1, !dbg !903
  %bf.clear173 = and i8 %bf.load172, -2, !dbg !903
  %bf.set174 = or i8 %bf.clear173, 1, !dbg !903
  store i8 %bf.set174, i8* %data_received171, align 1, !dbg !903
  br label %if.end175, !dbg !904

if.end175:                                        ; preds = %if.then167, %if.end163
  br label %sw.epilog, !dbg !905

sw.bb176:                                         ; preds = %if.end55
  %99 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !906
  %data_received177 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %99, i32 0, i32 10, !dbg !907
  %bf.load178 = load i8, i8* %data_received177, align 1, !dbg !908
  %bf.clear179 = and i8 %bf.load178, -2, !dbg !908
  %bf.set180 = or i8 %bf.clear179, 1, !dbg !908
  store i8 %bf.set180, i8* %data_received177, align 1, !dbg !908
  %100 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !909
  %data_bits181 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %100, i32 0, i32 2, !dbg !911
  %101 = load i32, i32* %data_bits181, align 4, !dbg !911
  %cmp182 = icmp eq i32 %101, 8, !dbg !912
  br i1 %cmp182, label %if.then184, label %if.end188, !dbg !913

if.then184:                                       ; preds = %sw.bb176
  %102 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !914
  %state185 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %102, i32 0, i32 4, !dbg !916
  store i32 0, i32* %state185, align 4, !dbg !917
  %103 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !918
  %crc186 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %103, i32 0, i32 6, !dbg !919
  store i16 -1, i16* %crc186, align 4, !dbg !920
  %104 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !921
  %hdlc_bits1187 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %104, i32 0, i32 1, !dbg !922
  store i32 0, i32* %hdlc_bits1187, align 4, !dbg !923
  br label %sw.epilog, !dbg !924

if.end188:                                        ; preds = %sw.bb176
  %105 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !925
  %cbin189 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %105, i32 0, i32 7, !dbg !926
  %106 = load i8, i8* %cbin189, align 2, !dbg !927
  %conv190 = zext i8 %106 to i32, !dbg !927
  %shl191 = shl i32 %conv190, 1, !dbg !927
  %conv192 = trunc i32 %shl191 to i8, !dbg !927
  store i8 %conv192, i8* %cbin189, align 2, !dbg !927
  %107 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !928
  %data_bits193 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %107, i32 0, i32 2, !dbg !929
  %108 = load i32, i32* %data_bits193, align 4, !dbg !930
  %inc194 = add i32 %108, 1, !dbg !930
  store i32 %inc194, i32* %data_bits193, align 4, !dbg !930
  %109 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !931
  %shift_reg195 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %109, i32 0, i32 8, !dbg !933
  %110 = load i8, i8* %shift_reg195, align 1, !dbg !933
  %conv196 = zext i8 %110 to i32, !dbg !931
  %and197 = and i32 %conv196, 1, !dbg !934
  %tobool198 = icmp ne i32 %and197, 0, !dbg !934
  br i1 %tobool198, label %if.then199, label %if.end202, !dbg !935

if.then199:                                       ; preds = %if.end188
  %111 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !936
  %cbin200 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %111, i32 0, i32 7, !dbg !937
  %112 = load i8, i8* %cbin200, align 2, !dbg !938
  %inc201 = add i8 %112, 1, !dbg !938
  store i8 %inc201, i8* %cbin200, align 2, !dbg !938
  br label %if.end202, !dbg !936

if.end202:                                        ; preds = %if.then199, %if.end188
  %113 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !939
  %shift_reg203 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %113, i32 0, i32 8, !dbg !940
  %114 = load i8, i8* %shift_reg203, align 1, !dbg !941
  %conv204 = zext i8 %114 to i32, !dbg !941
  %shr205 = ashr i32 %conv204, 1, !dbg !941
  %conv206 = trunc i32 %shr205 to i8, !dbg !941
  store i8 %conv206, i8* %shift_reg203, align 1, !dbg !941
  %115 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !942
  %bit_shift207 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %115, i32 0, i32 0, !dbg !943
  %116 = load i32, i32* %bit_shift207, align 4, !dbg !944
  %dec208 = add i32 %116, -1, !dbg !944
  store i32 %dec208, i32* %bit_shift207, align 4, !dbg !944
  %117 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !945
  %bit_shift209 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %117, i32 0, i32 0, !dbg !947
  %118 = load i32, i32* %bit_shift209, align 4, !dbg !947
  %cmp210 = icmp eq i32 %118, 0, !dbg !948
  br i1 %cmp210, label %if.then212, label %if.end216, !dbg !949

if.then212:                                       ; preds = %if.end202
  %119 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !950
  %state213 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %119, i32 0, i32 4, !dbg !952
  store i32 0, i32* %state213, align 4, !dbg !953
  %120 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !954
  %crc214 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %120, i32 0, i32 6, !dbg !955
  store i16 -1, i16* %crc214, align 4, !dbg !956
  %121 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !957
  %hdlc_bits1215 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %121, i32 0, i32 1, !dbg !958
  store i32 0, i32* %hdlc_bits1215, align 4, !dbg !959
  br label %if.end216, !dbg !960

if.end216:                                        ; preds = %if.then212, %if.end202
  br label %sw.epilog, !dbg !961

sw.bb217:                                         ; preds = %if.end55
  %122 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !962
  %cbin218 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %122, i32 0, i32 7, !dbg !963
  %123 = load i8, i8* %cbin218, align 2, !dbg !964
  %conv219 = zext i8 %123 to i32, !dbg !964
  %shl220 = shl i32 %conv219, 1, !dbg !964
  %conv221 = trunc i32 %shl220 to i8, !dbg !964
  store i8 %conv221, i8* %cbin218, align 2, !dbg !964
  %124 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !965
  %data_bits222 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %124, i32 0, i32 2, !dbg !966
  %125 = load i32, i32* %data_bits222, align 4, !dbg !967
  %inc223 = add i32 %125, 1, !dbg !967
  store i32 %inc223, i32* %data_bits222, align 4, !dbg !967
  %126 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !968
  %hdlc_bits1224 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %126, i32 0, i32 1, !dbg !970
  %127 = load i32, i32* %hdlc_bits1224, align 4, !dbg !970
  %cmp225 = icmp eq i32 %127, 5, !dbg !971
  br i1 %cmp225, label %if.then227, label %if.end229, !dbg !972

if.then227:                                       ; preds = %sw.bb217
  %128 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !973
  %hdlc_bits1228 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %128, i32 0, i32 1, !dbg !975
  store i32 0, i32* %hdlc_bits1228, align 4, !dbg !976
  br label %sw.epilog, !dbg !977

if.end229:                                        ; preds = %sw.bb217
  %129 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !978
  %bit_shift230 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %129, i32 0, i32 0, !dbg !980
  %130 = load i32, i32* %bit_shift230, align 4, !dbg !980
  %cmp231 = icmp eq i32 %130, 8, !dbg !981
  br i1 %cmp231, label %if.then233, label %if.end238, !dbg !982

if.then233:                                       ; preds = %if.end229
  %131 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !983
  %crc234 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %131, i32 0, i32 6, !dbg !984
  %132 = load i16, i16* %crc234, align 4, !dbg !984
  %133 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !985
  %shift_reg235 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %133, i32 0, i32 8, !dbg !986
  %134 = load i8, i8* %shift_reg235, align 1, !dbg !986
  %call236 = call zeroext i16 @crc_ccitt_byte(i16 zeroext %132, i8 zeroext %134) #4, !dbg !987
  %135 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !988
  %crc237 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %135, i32 0, i32 6, !dbg !989
  store i16 %call236, i16* %crc237, align 4, !dbg !990
  br label %if.end238, !dbg !988

if.end238:                                        ; preds = %if.then233, %if.end229
  %136 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !991
  %shift_reg239 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %136, i32 0, i32 8, !dbg !993
  %137 = load i8, i8* %shift_reg239, align 1, !dbg !993
  %conv240 = zext i8 %137 to i32, !dbg !991
  %and241 = and i32 %conv240, 1, !dbg !994
  %tobool242 = icmp ne i32 %and241, 0, !dbg !994
  br i1 %tobool242, label %if.then243, label %if.else254, !dbg !995

if.then243:                                       ; preds = %if.end238
  %138 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !996
  %hdlc_bits1244 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %138, i32 0, i32 1, !dbg !998
  %139 = load i32, i32* %hdlc_bits1244, align 4, !dbg !999
  %inc245 = add i32 %139, 1, !dbg !999
  store i32 %inc245, i32* %hdlc_bits1244, align 4, !dbg !999
  %140 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1000
  %cbin246 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %140, i32 0, i32 7, !dbg !1001
  %141 = load i8, i8* %cbin246, align 2, !dbg !1002
  %inc247 = add i8 %141, 1, !dbg !1002
  store i8 %inc247, i8* %cbin246, align 2, !dbg !1002
  %142 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1003
  %shift_reg248 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %142, i32 0, i32 8, !dbg !1004
  %143 = load i8, i8* %shift_reg248, align 1, !dbg !1005
  %conv249 = zext i8 %143 to i32, !dbg !1005
  %shr250 = ashr i32 %conv249, 1, !dbg !1005
  %conv251 = trunc i32 %shr250 to i8, !dbg !1005
  store i8 %conv251, i8* %shift_reg248, align 1, !dbg !1005
  %144 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1006
  %bit_shift252 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %144, i32 0, i32 0, !dbg !1007
  %145 = load i32, i32* %bit_shift252, align 4, !dbg !1008
  %dec253 = add i32 %145, -1, !dbg !1008
  store i32 %dec253, i32* %bit_shift252, align 4, !dbg !1008
  br label %if.end262, !dbg !1009

if.else254:                                       ; preds = %if.end238
  %146 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1010
  %hdlc_bits1255 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %146, i32 0, i32 1, !dbg !1012
  store i32 0, i32* %hdlc_bits1255, align 4, !dbg !1013
  %147 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1014
  %shift_reg256 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %147, i32 0, i32 8, !dbg !1015
  %148 = load i8, i8* %shift_reg256, align 1, !dbg !1016
  %conv257 = zext i8 %148 to i32, !dbg !1016
  %shr258 = ashr i32 %conv257, 1, !dbg !1016
  %conv259 = trunc i32 %shr258 to i8, !dbg !1016
  store i8 %conv259, i8* %shift_reg256, align 1, !dbg !1016
  %149 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1017
  %bit_shift260 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %149, i32 0, i32 0, !dbg !1018
  %150 = load i32, i32* %bit_shift260, align 4, !dbg !1019
  %dec261 = add i32 %150, -1, !dbg !1019
  store i32 %dec261, i32* %bit_shift260, align 4, !dbg !1019
  br label %if.end262

if.end262:                                        ; preds = %if.else254, %if.then243
  br label %sw.epilog, !dbg !1020

sw.bb263:                                         ; preds = %if.end55
  %151 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1021
  %cbin264 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %151, i32 0, i32 7, !dbg !1022
  %152 = load i8, i8* %cbin264, align 2, !dbg !1023
  %conv265 = zext i8 %152 to i32, !dbg !1023
  %shl266 = shl i32 %conv265, 1, !dbg !1023
  %conv267 = trunc i32 %shl266 to i8, !dbg !1023
  store i8 %conv267, i8* %cbin264, align 2, !dbg !1023
  %153 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1024
  %data_bits268 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %153, i32 0, i32 2, !dbg !1025
  %154 = load i32, i32* %data_bits268, align 4, !dbg !1026
  %inc269 = add i32 %154, 1, !dbg !1026
  store i32 %inc269, i32* %data_bits268, align 4, !dbg !1026
  %155 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1027
  %hdlc_bits1270 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %155, i32 0, i32 1, !dbg !1029
  %156 = load i32, i32* %hdlc_bits1270, align 4, !dbg !1029
  %cmp271 = icmp eq i32 %156, 5, !dbg !1030
  br i1 %cmp271, label %if.then273, label %if.end275, !dbg !1031

if.then273:                                       ; preds = %sw.bb263
  %157 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1032
  %hdlc_bits1274 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %157, i32 0, i32 1, !dbg !1034
  store i32 0, i32* %hdlc_bits1274, align 4, !dbg !1035
  br label %sw.epilog, !dbg !1036

if.end275:                                        ; preds = %sw.bb263
  %158 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1037
  %shift_reg276 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %158, i32 0, i32 8, !dbg !1039
  %159 = load i8, i8* %shift_reg276, align 1, !dbg !1039
  %conv277 = zext i8 %159 to i32, !dbg !1037
  %and278 = and i32 %conv277, 1, !dbg !1040
  %tobool279 = icmp ne i32 %and278, 0, !dbg !1040
  br i1 %tobool279, label %if.then280, label %if.else291, !dbg !1041

if.then280:                                       ; preds = %if.end275
  %160 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1042
  %hdlc_bits1281 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %160, i32 0, i32 1, !dbg !1044
  %161 = load i32, i32* %hdlc_bits1281, align 4, !dbg !1045
  %inc282 = add i32 %161, 1, !dbg !1045
  store i32 %inc282, i32* %hdlc_bits1281, align 4, !dbg !1045
  %162 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1046
  %cbin283 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %162, i32 0, i32 7, !dbg !1047
  %163 = load i8, i8* %cbin283, align 2, !dbg !1048
  %inc284 = add i8 %163, 1, !dbg !1048
  store i8 %inc284, i8* %cbin283, align 2, !dbg !1048
  %164 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1049
  %shift_reg285 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %164, i32 0, i32 8, !dbg !1050
  %165 = load i8, i8* %shift_reg285, align 1, !dbg !1051
  %conv286 = zext i8 %165 to i32, !dbg !1051
  %shr287 = ashr i32 %conv286, 1, !dbg !1051
  %conv288 = trunc i32 %shr287 to i8, !dbg !1051
  store i8 %conv288, i8* %shift_reg285, align 1, !dbg !1051
  %166 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1052
  %bit_shift289 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %166, i32 0, i32 0, !dbg !1053
  %167 = load i32, i32* %bit_shift289, align 4, !dbg !1054
  %dec290 = add i32 %167, -1, !dbg !1054
  store i32 %dec290, i32* %bit_shift289, align 4, !dbg !1054
  br label %if.end299, !dbg !1055

if.else291:                                       ; preds = %if.end275
  %168 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1056
  %hdlc_bits1292 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %168, i32 0, i32 1, !dbg !1058
  store i32 0, i32* %hdlc_bits1292, align 4, !dbg !1059
  %169 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1060
  %shift_reg293 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %169, i32 0, i32 8, !dbg !1061
  %170 = load i8, i8* %shift_reg293, align 1, !dbg !1062
  %conv294 = zext i8 %170 to i32, !dbg !1062
  %shr295 = ashr i32 %conv294, 1, !dbg !1062
  %conv296 = trunc i32 %shr295 to i8, !dbg !1062
  store i8 %conv296, i8* %shift_reg293, align 1, !dbg !1062
  %171 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1063
  %bit_shift297 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %171, i32 0, i32 0, !dbg !1064
  %172 = load i32, i32* %bit_shift297, align 4, !dbg !1065
  %dec298 = add i32 %172, -1, !dbg !1065
  store i32 %dec298, i32* %bit_shift297, align 4, !dbg !1065
  br label %if.end299

if.end299:                                        ; preds = %if.else291, %if.then280
  %173 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1066
  %bit_shift300 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %173, i32 0, i32 0, !dbg !1068
  %174 = load i32, i32* %bit_shift300, align 4, !dbg !1068
  %cmp301 = icmp eq i32 %174, 0, !dbg !1069
  br i1 %cmp301, label %if.then303, label %if.end311, !dbg !1070

if.then303:                                       ; preds = %if.end299
  %175 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1071
  %crc304 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %175, i32 0, i32 6, !dbg !1073
  %176 = load i16, i16* %crc304, align 4, !dbg !1073
  %conv305 = zext i16 %176 to i32, !dbg !1071
  %shr306 = ashr i32 %conv305, 8, !dbg !1074
  %conv307 = trunc i32 %shr306 to i8, !dbg !1075
  %177 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1076
  %shift_reg308 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %177, i32 0, i32 8, !dbg !1077
  store i8 %conv307, i8* %shift_reg308, align 1, !dbg !1078
  %178 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1079
  %state309 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %178, i32 0, i32 4, !dbg !1080
  store i32 4, i32* %state309, align 4, !dbg !1081
  %179 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1082
  %bit_shift310 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %179, i32 0, i32 0, !dbg !1083
  store i32 8, i32* %bit_shift310, align 4, !dbg !1084
  br label %if.end311, !dbg !1085

if.end311:                                        ; preds = %if.then303, %if.end299
  br label %sw.epilog, !dbg !1086

sw.bb312:                                         ; preds = %if.end55
  %180 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1087
  %cbin313 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %180, i32 0, i32 7, !dbg !1088
  %181 = load i8, i8* %cbin313, align 2, !dbg !1089
  %conv314 = zext i8 %181 to i32, !dbg !1089
  %shl315 = shl i32 %conv314, 1, !dbg !1089
  %conv316 = trunc i32 %shl315 to i8, !dbg !1089
  store i8 %conv316, i8* %cbin313, align 2, !dbg !1089
  %182 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1090
  %data_bits317 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %182, i32 0, i32 2, !dbg !1091
  %183 = load i32, i32* %data_bits317, align 4, !dbg !1092
  %inc318 = add i32 %183, 1, !dbg !1092
  store i32 %inc318, i32* %data_bits317, align 4, !dbg !1092
  %184 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1093
  %hdlc_bits1319 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %184, i32 0, i32 1, !dbg !1095
  %185 = load i32, i32* %hdlc_bits1319, align 4, !dbg !1095
  %cmp320 = icmp eq i32 %185, 5, !dbg !1096
  br i1 %cmp320, label %if.then322, label %if.end324, !dbg !1097

if.then322:                                       ; preds = %sw.bb312
  %186 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1098
  %hdlc_bits1323 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %186, i32 0, i32 1, !dbg !1100
  store i32 0, i32* %hdlc_bits1323, align 4, !dbg !1101
  br label %sw.epilog, !dbg !1102

if.end324:                                        ; preds = %sw.bb312
  %187 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1103
  %shift_reg325 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %187, i32 0, i32 8, !dbg !1105
  %188 = load i8, i8* %shift_reg325, align 1, !dbg !1105
  %conv326 = zext i8 %188 to i32, !dbg !1103
  %and327 = and i32 %conv326, 1, !dbg !1106
  %tobool328 = icmp ne i32 %and327, 0, !dbg !1106
  br i1 %tobool328, label %if.then329, label %if.else340, !dbg !1107

if.then329:                                       ; preds = %if.end324
  %189 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1108
  %hdlc_bits1330 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %189, i32 0, i32 1, !dbg !1110
  %190 = load i32, i32* %hdlc_bits1330, align 4, !dbg !1111
  %inc331 = add i32 %190, 1, !dbg !1111
  store i32 %inc331, i32* %hdlc_bits1330, align 4, !dbg !1111
  %191 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1112
  %cbin332 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %191, i32 0, i32 7, !dbg !1113
  %192 = load i8, i8* %cbin332, align 2, !dbg !1114
  %inc333 = add i8 %192, 1, !dbg !1114
  store i8 %inc333, i8* %cbin332, align 2, !dbg !1114
  %193 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1115
  %shift_reg334 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %193, i32 0, i32 8, !dbg !1116
  %194 = load i8, i8* %shift_reg334, align 1, !dbg !1117
  %conv335 = zext i8 %194 to i32, !dbg !1117
  %shr336 = ashr i32 %conv335, 1, !dbg !1117
  %conv337 = trunc i32 %shr336 to i8, !dbg !1117
  store i8 %conv337, i8* %shift_reg334, align 1, !dbg !1117
  %195 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1118
  %bit_shift338 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %195, i32 0, i32 0, !dbg !1119
  %196 = load i32, i32* %bit_shift338, align 4, !dbg !1120
  %dec339 = add i32 %196, -1, !dbg !1120
  store i32 %dec339, i32* %bit_shift338, align 4, !dbg !1120
  br label %if.end348, !dbg !1121

if.else340:                                       ; preds = %if.end324
  %197 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1122
  %hdlc_bits1341 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %197, i32 0, i32 1, !dbg !1124
  store i32 0, i32* %hdlc_bits1341, align 4, !dbg !1125
  %198 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1126
  %shift_reg342 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %198, i32 0, i32 8, !dbg !1127
  %199 = load i8, i8* %shift_reg342, align 1, !dbg !1128
  %conv343 = zext i8 %199 to i32, !dbg !1128
  %shr344 = ashr i32 %conv343, 1, !dbg !1128
  %conv345 = trunc i32 %shr344 to i8, !dbg !1128
  store i8 %conv345, i8* %shift_reg342, align 1, !dbg !1128
  %200 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1129
  %bit_shift346 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %200, i32 0, i32 0, !dbg !1130
  %201 = load i32, i32* %bit_shift346, align 4, !dbg !1131
  %dec347 = add i32 %201, -1, !dbg !1131
  store i32 %dec347, i32* %bit_shift346, align 4, !dbg !1131
  br label %if.end348

if.end348:                                        ; preds = %if.else340, %if.then329
  %202 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1132
  %bit_shift349 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %202, i32 0, i32 0, !dbg !1134
  %203 = load i32, i32* %bit_shift349, align 4, !dbg !1134
  %cmp350 = icmp eq i32 %203, 0, !dbg !1135
  br i1 %cmp350, label %if.then352, label %if.end356, !dbg !1136

if.then352:                                       ; preds = %if.end348
  %204 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1137
  %shift_reg353 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %204, i32 0, i32 8, !dbg !1139
  store i8 126, i8* %shift_reg353, align 1, !dbg !1140
  %205 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1141
  %state354 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %205, i32 0, i32 4, !dbg !1142
  store i32 5, i32* %state354, align 4, !dbg !1143
  %206 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1144
  %bit_shift355 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %206, i32 0, i32 0, !dbg !1145
  store i32 8, i32* %bit_shift355, align 4, !dbg !1146
  br label %if.end356, !dbg !1147

if.end356:                                        ; preds = %if.then352, %if.end348
  br label %sw.epilog, !dbg !1148

sw.bb357:                                         ; preds = %if.end55
  %207 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1149
  %cbin358 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %207, i32 0, i32 7, !dbg !1150
  %208 = load i8, i8* %cbin358, align 2, !dbg !1151
  %conv359 = zext i8 %208 to i32, !dbg !1151
  %shl360 = shl i32 %conv359, 1, !dbg !1151
  %conv361 = trunc i32 %shl360 to i8, !dbg !1151
  store i8 %conv361, i8* %cbin358, align 2, !dbg !1151
  %209 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1152
  %data_bits362 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %209, i32 0, i32 2, !dbg !1153
  %210 = load i32, i32* %data_bits362, align 4, !dbg !1154
  %inc363 = add i32 %210, 1, !dbg !1154
  store i32 %inc363, i32* %data_bits362, align 4, !dbg !1154
  %211 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1155
  %hdlc_bits1364 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %211, i32 0, i32 1, !dbg !1157
  %212 = load i32, i32* %hdlc_bits1364, align 4, !dbg !1157
  %cmp365 = icmp eq i32 %212, 5, !dbg !1158
  br i1 %cmp365, label %if.then367, label %if.end369, !dbg !1159

if.then367:                                       ; preds = %sw.bb357
  %213 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1160
  %hdlc_bits1368 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %213, i32 0, i32 1, !dbg !1162
  store i32 0, i32* %hdlc_bits1368, align 4, !dbg !1163
  br label %sw.epilog, !dbg !1164

if.end369:                                        ; preds = %sw.bb357
  %214 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1165
  %shift_reg370 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %214, i32 0, i32 8, !dbg !1167
  %215 = load i8, i8* %shift_reg370, align 1, !dbg !1167
  %conv371 = zext i8 %215 to i32, !dbg !1165
  %and372 = and i32 %conv371, 1, !dbg !1168
  %tobool373 = icmp ne i32 %and372, 0, !dbg !1168
  br i1 %tobool373, label %if.then374, label %if.end377, !dbg !1169

if.then374:                                       ; preds = %if.end369
  %216 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1170
  %cbin375 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %216, i32 0, i32 7, !dbg !1171
  %217 = load i8, i8* %cbin375, align 2, !dbg !1172
  %inc376 = add i8 %217, 1, !dbg !1172
  store i8 %inc376, i8* %cbin375, align 2, !dbg !1172
  br label %if.end377, !dbg !1170

if.end377:                                        ; preds = %if.then374, %if.end369
  %218 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1173
  %shift_reg378 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %218, i32 0, i32 8, !dbg !1174
  %219 = load i8, i8* %shift_reg378, align 1, !dbg !1175
  %conv379 = zext i8 %219 to i32, !dbg !1175
  %shr380 = ashr i32 %conv379, 1, !dbg !1175
  %conv381 = trunc i32 %shr380 to i8, !dbg !1175
  store i8 %conv381, i8* %shift_reg378, align 1, !dbg !1175
  %220 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1176
  %bit_shift382 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %220, i32 0, i32 0, !dbg !1177
  %221 = load i32, i32* %bit_shift382, align 4, !dbg !1178
  %dec383 = add i32 %221, -1, !dbg !1178
  store i32 %dec383, i32* %bit_shift382, align 4, !dbg !1178
  %222 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1179
  %bit_shift384 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %222, i32 0, i32 0, !dbg !1181
  %223 = load i32, i32* %bit_shift384, align 4, !dbg !1181
  %cmp385 = icmp eq i32 %223, 0, !dbg !1182
  br i1 %cmp385, label %if.then387, label %if.end430, !dbg !1183

if.then387:                                       ; preds = %if.end377
  %224 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1184
  %data_bits388 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %224, i32 0, i32 2, !dbg !1186
  %225 = load i32, i32* %data_bits388, align 4, !dbg !1186
  %idxprom = sext i32 %225 to i64, !dbg !1187
  %arrayidx = getelementptr [9 x i8], [9 x i8]* @isdnhdlc_encode.xfast_flag_value, i64 0, i64 %idxprom, !dbg !1187
  %226 = load i8, i8* %arrayidx, align 1, !dbg !1187
  %227 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1188
  %ffvalue389 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %227, i32 0, i32 9, !dbg !1189
  store i8 %226, i8* %ffvalue389, align 4, !dbg !1190
  %228 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1191
  %dchannel = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %228, i32 0, i32 10, !dbg !1193
  %bf.load390 = load i8, i8* %dchannel, align 1, !dbg !1193
  %bf.lshr391 = lshr i8 %bf.load390, 1, !dbg !1193
  %bf.clear392 = and i8 %bf.lshr391, 1, !dbg !1193
  %bf.cast393 = zext i8 %bf.clear392 to i32, !dbg !1193
  %tobool394 = icmp ne i32 %bf.cast393, 0, !dbg !1191
  br i1 %tobool394, label %if.then395, label %if.else407, !dbg !1194

if.then395:                                       ; preds = %if.then387
  %229 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1195
  %ffvalue396 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %229, i32 0, i32 9, !dbg !1197
  store i8 126, i8* %ffvalue396, align 4, !dbg !1198
  %230 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1199
  %state397 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %230, i32 0, i32 4, !dbg !1200
  store i32 6, i32* %state397, align 4, !dbg !1201
  %231 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1202
  %data_bits398 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %231, i32 0, i32 2, !dbg !1203
  %232 = load i32, i32* %data_bits398, align 4, !dbg !1203
  %sub399 = sub i32 8, %232, !dbg !1204
  %233 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1205
  %bit_shift400 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %233, i32 0, i32 0, !dbg !1206
  store i32 %sub399, i32* %bit_shift400, align 4, !dbg !1207
  %234 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1208
  %bit_shift401 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %234, i32 0, i32 0, !dbg !1210
  %235 = load i32, i32* %bit_shift401, align 4, !dbg !1210
  %cmp402 = icmp eq i32 %235, 0, !dbg !1211
  br i1 %cmp402, label %if.then404, label %if.end406, !dbg !1212

if.then404:                                       ; preds = %if.then395
  %236 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1213
  %state405 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %236, i32 0, i32 4, !dbg !1214
  store i32 7, i32* %state405, align 4, !dbg !1215
  br label %if.end406, !dbg !1213

if.end406:                                        ; preds = %if.then404, %if.then395
  br label %if.end429, !dbg !1216

if.else407:                                       ; preds = %if.then387
  %237 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1217
  %do_adapt56408 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %237, i32 0, i32 10, !dbg !1220
  %bf.load409 = load i8, i8* %do_adapt56408, align 1, !dbg !1220
  %bf.lshr410 = lshr i8 %bf.load409, 2, !dbg !1220
  %bf.clear411 = and i8 %bf.lshr410, 1, !dbg !1220
  %bf.cast412 = zext i8 %bf.clear411 to i32, !dbg !1220
  %tobool413 = icmp ne i32 %bf.cast412, 0, !dbg !1217
  br i1 %tobool413, label %if.else419, label %if.then414, !dbg !1221

if.then414:                                       ; preds = %if.else407
  %238 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1222
  %state415 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %238, i32 0, i32 4, !dbg !1224
  store i32 2, i32* %state415, align 4, !dbg !1225
  %239 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1226
  %data_received416 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %239, i32 0, i32 10, !dbg !1227
  %bf.load417 = load i8, i8* %data_received416, align 1, !dbg !1228
  %bf.clear418 = and i8 %bf.load417, -2, !dbg !1228
  store i8 %bf.clear418, i8* %data_received416, align 1, !dbg !1228
  br label %if.end424, !dbg !1229

if.else419:                                       ; preds = %if.else407
  %240 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1230
  %state420 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %240, i32 0, i32 4, !dbg !1232
  store i32 8, i32* %state420, align 4, !dbg !1233
  %241 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1234
  %data_received421 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %241, i32 0, i32 10, !dbg !1235
  %bf.load422 = load i8, i8* %data_received421, align 1, !dbg !1236
  %bf.clear423 = and i8 %bf.load422, -2, !dbg !1236
  store i8 %bf.clear423, i8* %data_received421, align 1, !dbg !1236
  br label %if.end424

if.end424:                                        ; preds = %if.else419, %if.then414
  %242 = load i32, i32* %dsize.addr, align 4, !dbg !1237
  %cmp425 = icmp sgt i32 %242, 1, !dbg !1239
  br i1 %cmp425, label %if.then427, label %if.end428, !dbg !1240

if.then427:                                       ; preds = %if.end424
  store i32 1, i32* %dsize.addr, align 4, !dbg !1241
  br label %if.end428, !dbg !1242

if.end428:                                        ; preds = %if.then427, %if.end424
  br label %if.end429

if.end429:                                        ; preds = %if.end428, %if.end406
  br label %if.end430, !dbg !1243

if.end430:                                        ; preds = %if.end429, %if.end377
  br label %sw.epilog, !dbg !1244

sw.bb431:                                         ; preds = %if.end55
  %243 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1245
  %do_closing432 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %243, i32 0, i32 10, !dbg !1246
  %bf.load433 = load i8, i8* %do_closing432, align 1, !dbg !1247
  %bf.clear434 = and i8 %bf.load433, -9, !dbg !1247
  store i8 %bf.clear434, i8* %do_closing432, align 1, !dbg !1247
  %244 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1248
  %cbin435 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %244, i32 0, i32 7, !dbg !1249
  %245 = load i8, i8* %cbin435, align 2, !dbg !1250
  %conv436 = zext i8 %245 to i32, !dbg !1250
  %shl437 = shl i32 %conv436, 1, !dbg !1250
  %conv438 = trunc i32 %shl437 to i8, !dbg !1250
  store i8 %conv438, i8* %cbin435, align 2, !dbg !1250
  %246 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1251
  %cbin439 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %246, i32 0, i32 7, !dbg !1252
  %247 = load i8, i8* %cbin439, align 2, !dbg !1253
  %inc440 = add i8 %247, 1, !dbg !1253
  store i8 %inc440, i8* %cbin439, align 2, !dbg !1253
  %248 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1254
  %data_bits441 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %248, i32 0, i32 2, !dbg !1255
  %249 = load i32, i32* %data_bits441, align 4, !dbg !1256
  %inc442 = add i32 %249, 1, !dbg !1256
  store i32 %inc442, i32* %data_bits441, align 4, !dbg !1256
  %250 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1257
  %bit_shift443 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %250, i32 0, i32 0, !dbg !1258
  %251 = load i32, i32* %bit_shift443, align 4, !dbg !1259
  %dec444 = add i32 %251, -1, !dbg !1259
  store i32 %dec444, i32* %bit_shift443, align 4, !dbg !1259
  %252 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1260
  %bit_shift445 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %252, i32 0, i32 0, !dbg !1262
  %253 = load i32, i32* %bit_shift445, align 4, !dbg !1262
  %cmp446 = icmp eq i32 %253, 0, !dbg !1263
  br i1 %cmp446, label %if.then448, label %if.end451, !dbg !1264

if.then448:                                       ; preds = %sw.bb431
  %254 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1265
  %state449 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %254, i32 0, i32 4, !dbg !1267
  store i32 7, i32* %state449, align 4, !dbg !1268
  %255 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1269
  %bit_shift450 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %255, i32 0, i32 0, !dbg !1270
  store i32 0, i32* %bit_shift450, align 4, !dbg !1271
  br label %if.end451, !dbg !1272

if.end451:                                        ; preds = %if.then448, %sw.bb431
  br label %sw.epilog, !dbg !1273

sw.bb452:                                         ; preds = %if.end55
  %256 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1274
  %do_closing453 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %256, i32 0, i32 10, !dbg !1275
  %bf.load454 = load i8, i8* %do_closing453, align 1, !dbg !1276
  %bf.clear455 = and i8 %bf.load454, -9, !dbg !1276
  store i8 %bf.clear455, i8* %do_closing453, align 1, !dbg !1276
  %257 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1277
  %cbin456 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %257, i32 0, i32 7, !dbg !1278
  store i8 -1, i8* %cbin456, align 2, !dbg !1279
  %258 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1280
  %data_bits457 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %258, i32 0, i32 2, !dbg !1281
  store i32 8, i32* %data_bits457, align 4, !dbg !1282
  %259 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1283
  %bit_shift458 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %259, i32 0, i32 0, !dbg !1285
  %260 = load i32, i32* %bit_shift458, align 4, !dbg !1285
  %cmp459 = icmp eq i32 %260, 8, !dbg !1286
  br i1 %cmp459, label %if.then461, label %if.else464, !dbg !1287

if.then461:                                       ; preds = %sw.bb452
  %261 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1288
  %cbin462 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %261, i32 0, i32 7, !dbg !1290
  store i8 126, i8* %cbin462, align 2, !dbg !1291
  %262 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1292
  %state463 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %262, i32 0, i32 4, !dbg !1293
  store i32 3, i32* %state463, align 4, !dbg !1294
  br label %if.end516, !dbg !1295

if.else464:                                       ; preds = %sw.bb452
  %263 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1296
  %do_bitreverse465 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %263, i32 0, i32 10, !dbg !1299
  %bf.load466 = load i8, i8* %do_bitreverse465, align 1, !dbg !1299
  %bf.lshr467 = lshr i8 %bf.load466, 4, !dbg !1299
  %bf.clear468 = and i8 %bf.lshr467, 1, !dbg !1299
  %bf.cast469 = zext i8 %bf.clear468 to i32, !dbg !1299
  %cmp470 = icmp eq i32 %bf.cast469, 0, !dbg !1300
  br i1 %cmp470, label %if.then472, label %if.else509, !dbg !1301

if.then472:                                       ; preds = %if.else464
  call void @llvm.dbg.declare(metadata i8* %__x473, metadata !1302, metadata !DIExpression()), !dbg !1304
  %264 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1304
  %cbin474 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %264, i32 0, i32 7, !dbg !1304
  %265 = load i8, i8* %cbin474, align 2, !dbg !1304
  store i8 %265, i8* %__x473, align 1, !dbg !1304
  %266 = load i8, i8* %__x473, align 1, !dbg !1304
  %267 = call i1 @llvm.is.constant.i8(i8 %266), !dbg !1304
  br i1 %267, label %cond.true476, label %cond.false502, !dbg !1304

cond.true476:                                     ; preds = %if.then472
  call void @llvm.dbg.declare(metadata i8* %___x477, metadata !1305, metadata !DIExpression()), !dbg !1307
  %268 = load i8, i8* %__x473, align 1, !dbg !1307
  store i8 %268, i8* %___x477, align 1, !dbg !1307
  %269 = load i8, i8* %___x477, align 1, !dbg !1307
  %conv478 = zext i8 %269 to i32, !dbg !1307
  %shr479 = ashr i32 %conv478, 4, !dbg !1307
  %270 = load i8, i8* %___x477, align 1, !dbg !1307
  %conv480 = zext i8 %270 to i32, !dbg !1307
  %shl481 = shl i32 %conv480, 4, !dbg !1307
  %or482 = or i32 %shr479, %shl481, !dbg !1307
  %conv483 = trunc i32 %or482 to i8, !dbg !1307
  store i8 %conv483, i8* %___x477, align 1, !dbg !1307
  %271 = load i8, i8* %___x477, align 1, !dbg !1307
  %conv484 = zext i8 %271 to i32, !dbg !1307
  %and485 = and i32 %conv484, 204, !dbg !1307
  %shr486 = ashr i32 %and485, 2, !dbg !1307
  %272 = load i8, i8* %___x477, align 1, !dbg !1307
  %conv487 = zext i8 %272 to i32, !dbg !1307
  %and488 = and i32 %conv487, 51, !dbg !1307
  %shl489 = shl i32 %and488, 2, !dbg !1307
  %or490 = or i32 %shr486, %shl489, !dbg !1307
  %conv491 = trunc i32 %or490 to i8, !dbg !1307
  store i8 %conv491, i8* %___x477, align 1, !dbg !1307
  %273 = load i8, i8* %___x477, align 1, !dbg !1307
  %conv492 = zext i8 %273 to i32, !dbg !1307
  %and493 = and i32 %conv492, 170, !dbg !1307
  %shr494 = ashr i32 %and493, 1, !dbg !1307
  %274 = load i8, i8* %___x477, align 1, !dbg !1307
  %conv495 = zext i8 %274 to i32, !dbg !1307
  %and496 = and i32 %conv495, 85, !dbg !1307
  %shl497 = shl i32 %and496, 1, !dbg !1307
  %or498 = or i32 %shr494, %shl497, !dbg !1307
  %conv499 = trunc i32 %or498 to i8, !dbg !1307
  store i8 %conv499, i8* %___x477, align 1, !dbg !1307
  %275 = load i8, i8* %___x477, align 1, !dbg !1307
  store i8 %275, i8* %tmp500, align 1, !dbg !1307
  %276 = load i8, i8* %tmp500, align 1, !dbg !1307
  %conv501 = zext i8 %276 to i32, !dbg !1304
  br label %cond.end505, !dbg !1304

cond.false502:                                    ; preds = %if.then472
  %277 = load i8, i8* %__x473, align 1, !dbg !1304
  %call503 = call zeroext i8 @__bitrev8(i8 zeroext %277) #4, !dbg !1304
  %conv504 = zext i8 %call503 to i32, !dbg !1304
  br label %cond.end505, !dbg !1304

cond.end505:                                      ; preds = %cond.false502, %cond.true476
  %cond506 = phi i32 [ %conv501, %cond.true476 ], [ %conv504, %cond.false502 ], !dbg !1304
  store i32 %cond506, i32* %tmp475, align 4, !dbg !1304
  %278 = load i32, i32* %tmp475, align 4, !dbg !1304
  %conv507 = trunc i32 %278 to i8, !dbg !1308
  %279 = load i8*, i8** %dst.addr, align 8, !dbg !1309
  %incdec.ptr508 = getelementptr i8, i8* %279, i32 1, !dbg !1309
  store i8* %incdec.ptr508, i8** %dst.addr, align 8, !dbg !1309
  store i8 %conv507, i8* %279, align 1, !dbg !1310
  br label %if.end512, !dbg !1311

if.else509:                                       ; preds = %if.else464
  %280 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1312
  %cbin510 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %280, i32 0, i32 7, !dbg !1313
  %281 = load i8, i8* %cbin510, align 2, !dbg !1313
  %282 = load i8*, i8** %dst.addr, align 8, !dbg !1314
  %incdec.ptr511 = getelementptr i8, i8* %282, i32 1, !dbg !1314
  store i8* %incdec.ptr511, i8** %dst.addr, align 8, !dbg !1314
  store i8 %281, i8* %282, align 1, !dbg !1315
  br label %if.end512

if.end512:                                        ; preds = %if.else509, %cond.end505
  %283 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1316
  %bit_shift513 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %283, i32 0, i32 0, !dbg !1317
  store i32 0, i32* %bit_shift513, align 4, !dbg !1318
  %284 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1319
  %data_bits514 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %284, i32 0, i32 2, !dbg !1320
  store i32 0, i32* %data_bits514, align 4, !dbg !1321
  %285 = load i32, i32* %len, align 4, !dbg !1322
  %inc515 = add i32 %285, 1, !dbg !1322
  store i32 %inc515, i32* %len, align 4, !dbg !1322
  store i32 0, i32* %dsize.addr, align 4, !dbg !1323
  br label %if.end516

if.end516:                                        ; preds = %if.end512, %if.then461
  br label %sw.epilog, !dbg !1324

sw.default:                                       ; preds = %if.end55
  br label %sw.epilog, !dbg !1325

sw.epilog:                                        ; preds = %sw.default, %if.end516, %if.end451, %if.end430, %if.then367, %if.end356, %if.then322, %if.end311, %if.then273, %if.end262, %if.then227, %if.end216, %if.then184, %if.end175, %if.then161, %if.end150, %sw.bb123, %if.end122, %if.end104
  %286 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1326
  %do_adapt56517 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %286, i32 0, i32 10, !dbg !1328
  %bf.load518 = load i8, i8* %do_adapt56517, align 1, !dbg !1328
  %bf.lshr519 = lshr i8 %bf.load518, 2, !dbg !1328
  %bf.clear520 = and i8 %bf.lshr519, 1, !dbg !1328
  %bf.cast521 = zext i8 %bf.clear520 to i32, !dbg !1328
  %tobool522 = icmp ne i32 %bf.cast521, 0, !dbg !1326
  br i1 %tobool522, label %if.then523, label %if.end537, !dbg !1329

if.then523:                                       ; preds = %sw.epilog
  %287 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1330
  %data_bits524 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %287, i32 0, i32 2, !dbg !1333
  %288 = load i32, i32* %data_bits524, align 4, !dbg !1333
  %cmp525 = icmp eq i32 %288, 7, !dbg !1334
  br i1 %cmp525, label %if.then527, label %if.end536, !dbg !1335

if.then527:                                       ; preds = %if.then523
  %289 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1336
  %cbin528 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %289, i32 0, i32 7, !dbg !1338
  %290 = load i8, i8* %cbin528, align 2, !dbg !1339
  %conv529 = zext i8 %290 to i32, !dbg !1339
  %shl530 = shl i32 %conv529, 1, !dbg !1339
  %conv531 = trunc i32 %shl530 to i8, !dbg !1339
  store i8 %conv531, i8* %cbin528, align 2, !dbg !1339
  %291 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1340
  %cbin532 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %291, i32 0, i32 7, !dbg !1341
  %292 = load i8, i8* %cbin532, align 2, !dbg !1342
  %inc533 = add i8 %292, 1, !dbg !1342
  store i8 %inc533, i8* %cbin532, align 2, !dbg !1342
  %293 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1343
  %data_bits534 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %293, i32 0, i32 2, !dbg !1344
  %294 = load i32, i32* %data_bits534, align 4, !dbg !1345
  %inc535 = add i32 %294, 1, !dbg !1345
  store i32 %inc535, i32* %data_bits534, align 4, !dbg !1345
  br label %if.end536, !dbg !1346

if.end536:                                        ; preds = %if.then527, %if.then523
  br label %if.end537, !dbg !1347

if.end537:                                        ; preds = %if.end536, %sw.epilog
  %295 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1348
  %data_bits538 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %295, i32 0, i32 2, !dbg !1350
  %296 = load i32, i32* %data_bits538, align 4, !dbg !1350
  %cmp539 = icmp eq i32 %296, 8, !dbg !1351
  br i1 %cmp539, label %if.then541, label %if.end593, !dbg !1352

if.then541:                                       ; preds = %if.end537
  %297 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1353
  %do_bitreverse542 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %297, i32 0, i32 10, !dbg !1356
  %bf.load543 = load i8, i8* %do_bitreverse542, align 1, !dbg !1356
  %bf.lshr544 = lshr i8 %bf.load543, 4, !dbg !1356
  %bf.clear545 = and i8 %bf.lshr544, 1, !dbg !1356
  %bf.cast546 = zext i8 %bf.clear545 to i32, !dbg !1356
  %cmp547 = icmp eq i32 %bf.cast546, 0, !dbg !1357
  br i1 %cmp547, label %if.then549, label %if.else586, !dbg !1358

if.then549:                                       ; preds = %if.then541
  call void @llvm.dbg.declare(metadata i8* %__x550, metadata !1359, metadata !DIExpression()), !dbg !1361
  %298 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1361
  %cbin551 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %298, i32 0, i32 7, !dbg !1361
  %299 = load i8, i8* %cbin551, align 2, !dbg !1361
  store i8 %299, i8* %__x550, align 1, !dbg !1361
  %300 = load i8, i8* %__x550, align 1, !dbg !1361
  %301 = call i1 @llvm.is.constant.i8(i8 %300), !dbg !1361
  br i1 %301, label %cond.true553, label %cond.false579, !dbg !1361

cond.true553:                                     ; preds = %if.then549
  call void @llvm.dbg.declare(metadata i8* %___x554, metadata !1362, metadata !DIExpression()), !dbg !1364
  %302 = load i8, i8* %__x550, align 1, !dbg !1364
  store i8 %302, i8* %___x554, align 1, !dbg !1364
  %303 = load i8, i8* %___x554, align 1, !dbg !1364
  %conv555 = zext i8 %303 to i32, !dbg !1364
  %shr556 = ashr i32 %conv555, 4, !dbg !1364
  %304 = load i8, i8* %___x554, align 1, !dbg !1364
  %conv557 = zext i8 %304 to i32, !dbg !1364
  %shl558 = shl i32 %conv557, 4, !dbg !1364
  %or559 = or i32 %shr556, %shl558, !dbg !1364
  %conv560 = trunc i32 %or559 to i8, !dbg !1364
  store i8 %conv560, i8* %___x554, align 1, !dbg !1364
  %305 = load i8, i8* %___x554, align 1, !dbg !1364
  %conv561 = zext i8 %305 to i32, !dbg !1364
  %and562 = and i32 %conv561, 204, !dbg !1364
  %shr563 = ashr i32 %and562, 2, !dbg !1364
  %306 = load i8, i8* %___x554, align 1, !dbg !1364
  %conv564 = zext i8 %306 to i32, !dbg !1364
  %and565 = and i32 %conv564, 51, !dbg !1364
  %shl566 = shl i32 %and565, 2, !dbg !1364
  %or567 = or i32 %shr563, %shl566, !dbg !1364
  %conv568 = trunc i32 %or567 to i8, !dbg !1364
  store i8 %conv568, i8* %___x554, align 1, !dbg !1364
  %307 = load i8, i8* %___x554, align 1, !dbg !1364
  %conv569 = zext i8 %307 to i32, !dbg !1364
  %and570 = and i32 %conv569, 170, !dbg !1364
  %shr571 = ashr i32 %and570, 1, !dbg !1364
  %308 = load i8, i8* %___x554, align 1, !dbg !1364
  %conv572 = zext i8 %308 to i32, !dbg !1364
  %and573 = and i32 %conv572, 85, !dbg !1364
  %shl574 = shl i32 %and573, 1, !dbg !1364
  %or575 = or i32 %shr571, %shl574, !dbg !1364
  %conv576 = trunc i32 %or575 to i8, !dbg !1364
  store i8 %conv576, i8* %___x554, align 1, !dbg !1364
  %309 = load i8, i8* %___x554, align 1, !dbg !1364
  store i8 %309, i8* %tmp577, align 1, !dbg !1364
  %310 = load i8, i8* %tmp577, align 1, !dbg !1364
  %conv578 = zext i8 %310 to i32, !dbg !1361
  br label %cond.end582, !dbg !1361

cond.false579:                                    ; preds = %if.then549
  %311 = load i8, i8* %__x550, align 1, !dbg !1361
  %call580 = call zeroext i8 @__bitrev8(i8 zeroext %311) #4, !dbg !1361
  %conv581 = zext i8 %call580 to i32, !dbg !1361
  br label %cond.end582, !dbg !1361

cond.end582:                                      ; preds = %cond.false579, %cond.true553
  %cond583 = phi i32 [ %conv578, %cond.true553 ], [ %conv581, %cond.false579 ], !dbg !1361
  store i32 %cond583, i32* %tmp552, align 4, !dbg !1361
  %312 = load i32, i32* %tmp552, align 4, !dbg !1361
  %conv584 = trunc i32 %312 to i8, !dbg !1365
  %313 = load i8*, i8** %dst.addr, align 8, !dbg !1366
  %incdec.ptr585 = getelementptr i8, i8* %313, i32 1, !dbg !1366
  store i8* %incdec.ptr585, i8** %dst.addr, align 8, !dbg !1366
  store i8 %conv584, i8* %313, align 1, !dbg !1367
  br label %if.end589, !dbg !1368

if.else586:                                       ; preds = %if.then541
  %314 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1369
  %cbin587 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %314, i32 0, i32 7, !dbg !1370
  %315 = load i8, i8* %cbin587, align 2, !dbg !1370
  %316 = load i8*, i8** %dst.addr, align 8, !dbg !1371
  %incdec.ptr588 = getelementptr i8, i8* %316, i32 1, !dbg !1371
  store i8* %incdec.ptr588, i8** %dst.addr, align 8, !dbg !1371
  store i8 %315, i8* %316, align 1, !dbg !1372
  br label %if.end589

if.end589:                                        ; preds = %if.else586, %cond.end582
  %317 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %hdlc.addr, align 8, !dbg !1373
  %data_bits590 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %317, i32 0, i32 2, !dbg !1374
  store i32 0, i32* %data_bits590, align 4, !dbg !1375
  %318 = load i32, i32* %len, align 4, !dbg !1376
  %inc591 = add i32 %318, 1, !dbg !1376
  store i32 %inc591, i32* %len, align 4, !dbg !1376
  %319 = load i32, i32* %dsize.addr, align 4, !dbg !1377
  %dec592 = add i32 %319, -1, !dbg !1377
  store i32 %dec592, i32* %dsize.addr, align 4, !dbg !1377
  br label %if.end593, !dbg !1378

if.end593:                                        ; preds = %if.end589, %if.end537
  br label %while.cond, !dbg !690, !llvm.loop !1379

while.end594:                                     ; preds = %while.cond
  %320 = load i16, i16* %slen.addr, align 2, !dbg !1381
  %conv595 = zext i16 %320 to i32, !dbg !1381
  %321 = load i32*, i32** %count.addr, align 8, !dbg !1382
  %322 = load i32, i32* %321, align 4, !dbg !1383
  %sub596 = sub i32 %322, %conv595, !dbg !1383
  store i32 %sub596, i32* %321, align 4, !dbg !1383
  %323 = load i32, i32* %len, align 4, !dbg !1384
  store i32 %323, i32* %retval, align 4, !dbg !1385
  br label %return, !dbg !1385

return:                                           ; preds = %while.end594, %while.end
  %324 = load i32, i32* %retval, align 4, !dbg !1386
  ret i32 %324, !dbg !1386
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author104", scope: !2, file: !3, line: 20, type: !104, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !35, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/isdn/hardware/mISDN/isdnhdlc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !14}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 28, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12, !13}
!8 = !DIEnumerator(name: "HDLC_FAST_IDLE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "HDLC_GET_FLAG_B0", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "HDLC_GETFLAG_B1A6", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "HDLC_GETFLAG_B7", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "HDLC_GET_DATA", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "HDLC_FAST_FLAG", value: 5, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 33, baseType: !6, size: 32, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!16 = !DIEnumerator(name: "HDLC_SEND_DATA", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "HDLC_SEND_CRC1", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "HDLC_SEND_FAST_FLAG", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "HDLC_SEND_FIRST_FLAG", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "HDLC_SEND_CRC2", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "HDLC_SEND_CLOSING_FLAG", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "HDLC_SEND_IDLE1", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "HDLC_SEND_FAST_IDLE", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "HDLC_SENDFLAG_B0", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "HDLC_SENDFLAG_B1A6", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "HDLC_SENDFLAG_B7", value: 10, isUnsigned: true)
!27 = !DIEnumerator(name: "STOPPED", value: 11, isUnsigned: true)
!28 = !DIEnumerator(name: "HDLC_SENDFLAG_ONE", value: 12, isUnsigned: true)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !31, line: 17, baseType: !32)
!31 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !34)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!0, !36, !43, !48, !53, !92, !94, !99}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description105", scope: !2, file: !3, line: 23, type: !38, isLocal: true, isDefinition: true, align: 8)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 440, elements: !41)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !{!42}
!42 = !DISubrange(count: 55)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file106", scope: !2, file: !3, line: 24, type: !45, isLocal: true, isDefinition: true, align: 8)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 408, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 51)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license107", scope: !2, file: !3, line: 24, type: !50, isLocal: true, isDefinition: true, align: 8)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 168, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 21)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "fast_flag", scope: !55, file: !3, line: 123, type: !88, isLocal: true, isDefinition: true)
!55 = distinct !DISubprogram(name: "isdnhdlc_decode", scope: !3, file: !3, line: 118, type: !56, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !59, !83, !58, !85, !86, !58}
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isdnhdlc_vars", file: !61, line: 19, size: 256, elements: !62)
!61 = !DIFile(filename: "drivers/isdn/hardware/mISDN/isdnhdlc.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65, !66, !67, !68, !69, !73, !74, !75, !76, !79, !80, !81, !82}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "bit_shift", scope: !60, file: !61, line: 20, baseType: !58, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "hdlc_bits1", scope: !60, file: !61, line: 21, baseType: !58, size: 32, offset: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !60, file: !61, line: 22, baseType: !58, size: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit_shift", scope: !60, file: !61, line: 23, baseType: !58, size: 32, offset: 96)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !60, file: !61, line: 24, baseType: !58, size: 32, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "dstpos", scope: !60, file: !61, line: 25, baseType: !58, size: 32, offset: 160)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !60, file: !61, line: 27, baseType: !70, size: 16, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !31, line: 19, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !72)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "cbin", scope: !60, file: !61, line: 29, baseType: !30, size: 8, offset: 208)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "shift_reg", scope: !60, file: !61, line: 30, baseType: !30, size: 8, offset: 216)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ffvalue", scope: !60, file: !61, line: 31, baseType: !30, size: 8, offset: 224)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "data_received", scope: !60, file: !61, line: 34, baseType: !77, size: 1, offset: 232, flags: DIFlagBitField, extraData: i64 232)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !31, line: 21, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !6)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "dchannel", scope: !60, file: !61, line: 36, baseType: !77, size: 1, offset: 233, flags: DIFlagBitField, extraData: i64 232)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "do_adapt56", scope: !60, file: !61, line: 38, baseType: !77, size: 1, offset: 234, flags: DIFlagBitField, extraData: i64 232)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "do_closing", scope: !60, file: !61, line: 40, baseType: !77, size: 1, offset: 235, flags: DIFlagBitField, extraData: i64 232)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "do_bitreverse", scope: !60, file: !61, line: 42, baseType: !77, size: 1, offset: 236, flags: DIFlagBitField, extraData: i64 232)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!87 = !{}
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 72, elements: !90)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!90 = !{!91}
!91 = !DISubrange(count: 9)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "fast_flag_value", scope: !55, file: !3, line: 127, type: !88, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(name: "fast_abort", scope: !55, file: !3, line: 131, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 80, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 10)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "xfast_flag_value", scope: !101, file: !3, line: 344, type: !88, isLocal: true, isDefinition: true)
!101 = distinct !DISubprogram(name: "isdnhdlc_encode", scope: !3, file: !3, line: 341, type: !102, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!102 = !DISubroutineType(types: !103)
!103 = !{!58, !59, !83, !70, !85, !86, !58}
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1104, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 138)
!107 = !{i32 7, !"Dwarf Version", i32 4}
!108 = !{i32 2, !"Debug Info Version", i32 3}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"Code Model", i32 2}
!111 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!112 = distinct !DISubprogram(name: "isdnhdlc_rcv_init", scope: !3, file: !3, line: 40, type: !113, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !59, !77}
!115 = !DILocalVariable(name: "hdlc", arg: 1, scope: !112, file: !3, line: 40, type: !59)
!116 = !DILocation(line: 40, column: 46, scope: !112)
!117 = !DILocalVariable(name: "features", arg: 2, scope: !112, file: !3, line: 40, type: !77)
!118 = !DILocation(line: 40, column: 56, scope: !112)
!119 = !DILocation(line: 42, column: 9, scope: !112)
!120 = !DILocation(line: 42, column: 2, scope: !112)
!121 = !DILocation(line: 43, column: 2, scope: !112)
!122 = !DILocation(line: 43, column: 8, scope: !112)
!123 = !DILocation(line: 43, column: 14, scope: !112)
!124 = !DILocation(line: 44, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !112, file: !3, line: 44, column: 6)
!126 = !DILocation(line: 44, column: 15, scope: !125)
!127 = !DILocation(line: 44, column: 6, scope: !112)
!128 = !DILocation(line: 45, column: 3, scope: !125)
!129 = !DILocation(line: 45, column: 9, scope: !125)
!130 = !DILocation(line: 45, column: 20, scope: !125)
!131 = !DILocation(line: 46, column: 6, scope: !132)
!132 = distinct !DILexicalBlock(scope: !112, file: !3, line: 46, column: 6)
!133 = !DILocation(line: 46, column: 15, scope: !132)
!134 = !DILocation(line: 46, column: 6, scope: !112)
!135 = !DILocation(line: 47, column: 3, scope: !132)
!136 = !DILocation(line: 47, column: 9, scope: !132)
!137 = !DILocation(line: 47, column: 23, scope: !132)
!138 = !DILocation(line: 48, column: 1, scope: !112)
!139 = distinct !DISubprogram(name: "isdnhdlc_out_init", scope: !3, file: !3, line: 51, type: !113, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!140 = !DILocalVariable(name: "hdlc", arg: 1, scope: !139, file: !3, line: 51, type: !59)
!141 = !DILocation(line: 51, column: 46, scope: !139)
!142 = !DILocalVariable(name: "features", arg: 2, scope: !139, file: !3, line: 51, type: !77)
!143 = !DILocation(line: 51, column: 56, scope: !139)
!144 = !DILocation(line: 53, column: 9, scope: !139)
!145 = !DILocation(line: 53, column: 2, scope: !139)
!146 = !DILocation(line: 54, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !139, file: !3, line: 54, column: 6)
!148 = !DILocation(line: 54, column: 15, scope: !147)
!149 = !DILocation(line: 54, column: 6, scope: !139)
!150 = !DILocation(line: 55, column: 3, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !3, line: 54, column: 32)
!152 = !DILocation(line: 55, column: 9, scope: !151)
!153 = !DILocation(line: 55, column: 18, scope: !151)
!154 = !DILocation(line: 56, column: 3, scope: !151)
!155 = !DILocation(line: 56, column: 9, scope: !151)
!156 = !DILocation(line: 56, column: 15, scope: !151)
!157 = !DILocation(line: 57, column: 2, scope: !151)
!158 = !DILocation(line: 58, column: 3, scope: !159)
!159 = distinct !DILexicalBlock(scope: !147, file: !3, line: 57, column: 9)
!160 = !DILocation(line: 58, column: 9, scope: !159)
!161 = !DILocation(line: 58, column: 18, scope: !159)
!162 = !DILocation(line: 59, column: 3, scope: !159)
!163 = !DILocation(line: 59, column: 9, scope: !159)
!164 = !DILocation(line: 59, column: 15, scope: !159)
!165 = !DILocation(line: 60, column: 3, scope: !159)
!166 = !DILocation(line: 60, column: 9, scope: !159)
!167 = !DILocation(line: 60, column: 17, scope: !159)
!168 = !DILocation(line: 62, column: 2, scope: !139)
!169 = !DILocation(line: 62, column: 8, scope: !139)
!170 = !DILocation(line: 62, column: 13, scope: !139)
!171 = !DILocation(line: 63, column: 6, scope: !172)
!172 = distinct !DILexicalBlock(scope: !139, file: !3, line: 63, column: 6)
!173 = !DILocation(line: 63, column: 15, scope: !172)
!174 = !DILocation(line: 63, column: 6, scope: !139)
!175 = !DILocation(line: 64, column: 3, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !3, line: 63, column: 30)
!177 = !DILocation(line: 64, column: 9, scope: !176)
!178 = !DILocation(line: 64, column: 20, scope: !176)
!179 = !DILocation(line: 65, column: 3, scope: !176)
!180 = !DILocation(line: 65, column: 9, scope: !176)
!181 = !DILocation(line: 65, column: 15, scope: !176)
!182 = !DILocation(line: 66, column: 2, scope: !176)
!183 = !DILocation(line: 67, column: 3, scope: !172)
!184 = !DILocation(line: 67, column: 9, scope: !172)
!185 = !DILocation(line: 67, column: 19, scope: !172)
!186 = !DILocation(line: 68, column: 6, scope: !187)
!187 = distinct !DILexicalBlock(scope: !139, file: !3, line: 68, column: 6)
!188 = !DILocation(line: 68, column: 15, scope: !187)
!189 = !DILocation(line: 68, column: 6, scope: !139)
!190 = !DILocation(line: 69, column: 3, scope: !187)
!191 = !DILocation(line: 69, column: 9, scope: !187)
!192 = !DILocation(line: 69, column: 23, scope: !187)
!193 = !DILocation(line: 70, column: 1, scope: !139)
!194 = !DILocalVariable(name: "hdlc", arg: 1, scope: !55, file: !3, line: 118, type: !59)
!195 = !DILocation(line: 118, column: 43, scope: !55)
!196 = !DILocalVariable(name: "src", arg: 2, scope: !55, file: !3, line: 118, type: !83)
!197 = !DILocation(line: 118, column: 59, scope: !55)
!198 = !DILocalVariable(name: "slen", arg: 3, scope: !55, file: !3, line: 118, type: !58)
!199 = !DILocation(line: 118, column: 68, scope: !55)
!200 = !DILocalVariable(name: "count", arg: 4, scope: !55, file: !3, line: 119, type: !85)
!201 = !DILocation(line: 119, column: 12, scope: !55)
!202 = !DILocalVariable(name: "dst", arg: 5, scope: !55, file: !3, line: 119, type: !86)
!203 = !DILocation(line: 119, column: 23, scope: !55)
!204 = !DILocalVariable(name: "dsize", arg: 6, scope: !55, file: !3, line: 119, type: !58)
!205 = !DILocation(line: 119, column: 32, scope: !55)
!206 = !DILocalVariable(name: "status", scope: !55, file: !3, line: 121, type: !58)
!207 = !DILocation(line: 121, column: 6, scope: !55)
!208 = !DILocation(line: 159, column: 11, scope: !55)
!209 = !DILocation(line: 159, column: 3, scope: !55)
!210 = !DILocation(line: 159, column: 9, scope: !55)
!211 = !DILocation(line: 161, column: 2, scope: !55)
!212 = !DILocation(line: 161, column: 9, scope: !55)
!213 = !DILocation(line: 161, column: 14, scope: !55)
!214 = !DILocation(line: 162, column: 7, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 162, column: 7)
!216 = distinct !DILexicalBlock(scope: !55, file: !3, line: 161, column: 19)
!217 = !DILocation(line: 162, column: 13, scope: !215)
!218 = !DILocation(line: 162, column: 23, scope: !215)
!219 = !DILocation(line: 162, column: 7, scope: !216)
!220 = !DILocation(line: 164, column: 8, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !3, line: 164, column: 8)
!222 = distinct !DILexicalBlock(scope: !215, file: !3, line: 162, column: 29)
!223 = !DILocation(line: 164, column: 14, scope: !221)
!224 = !DILocation(line: 164, column: 28, scope: !221)
!225 = !DILocation(line: 164, column: 8, scope: !222)
!226 = !DILocalVariable(name: "__x", scope: !227, file: !3, line: 165, type: !30)
!227 = distinct !DILexicalBlock(scope: !221, file: !3, line: 165, column: 18)
!228 = !DILocation(line: 165, column: 18, scope: !227)
!229 = !DILocalVariable(name: "___x", scope: !230, file: !3, line: 165, type: !30)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 165, column: 18)
!231 = !DILocation(line: 165, column: 18, scope: !230)
!232 = !DILocation(line: 165, column: 18, scope: !221)
!233 = !DILocation(line: 165, column: 5, scope: !221)
!234 = !DILocation(line: 165, column: 11, scope: !221)
!235 = !DILocation(line: 165, column: 16, scope: !221)
!236 = !DILocation(line: 167, column: 22, scope: !221)
!237 = !DILocation(line: 167, column: 18, scope: !221)
!238 = !DILocation(line: 167, column: 5, scope: !221)
!239 = !DILocation(line: 167, column: 11, scope: !221)
!240 = !DILocation(line: 167, column: 16, scope: !221)
!241 = !DILocation(line: 168, column: 8, scope: !222)
!242 = !DILocation(line: 169, column: 4, scope: !222)
!243 = !DILocation(line: 169, column: 10, scope: !222)
!244 = !DILocation(line: 169, column: 20, scope: !222)
!245 = !DILocation(line: 170, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !222, file: !3, line: 170, column: 8)
!247 = !DILocation(line: 170, column: 14, scope: !246)
!248 = !DILocation(line: 170, column: 8, scope: !222)
!249 = !DILocation(line: 171, column: 5, scope: !246)
!250 = !DILocation(line: 171, column: 11, scope: !246)
!251 = !DILocation(line: 171, column: 20, scope: !246)
!252 = !DILocation(line: 172, column: 3, scope: !222)
!253 = !DILocation(line: 174, column: 11, scope: !216)
!254 = !DILocation(line: 174, column: 17, scope: !216)
!255 = !DILocation(line: 174, column: 3, scope: !216)
!256 = !DILocation(line: 176, column: 4, scope: !257)
!257 = distinct !DILexicalBlock(scope: !216, file: !3, line: 174, column: 24)
!258 = !DILocation(line: 178, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !257, file: !3, line: 178, column: 8)
!260 = !DILocation(line: 178, column: 14, scope: !259)
!261 = !DILocation(line: 178, column: 19, scope: !259)
!262 = !DILocation(line: 178, column: 8, scope: !257)
!263 = !DILocation(line: 179, column: 5, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !3, line: 178, column: 28)
!265 = !DILocation(line: 179, column: 11, scope: !264)
!266 = !DILocation(line: 179, column: 21, scope: !264)
!267 = !DILocation(line: 180, column: 5, scope: !264)
!268 = !DILocation(line: 182, column: 4, scope: !257)
!269 = !DILocation(line: 182, column: 10, scope: !257)
!270 = !DILocation(line: 182, column: 16, scope: !257)
!271 = !DILocation(line: 183, column: 4, scope: !257)
!272 = !DILocation(line: 183, column: 10, scope: !257)
!273 = !DILocation(line: 183, column: 21, scope: !257)
!274 = !DILocation(line: 184, column: 4, scope: !257)
!275 = !DILocation(line: 184, column: 10, scope: !257)
!276 = !DILocation(line: 184, column: 20, scope: !257)
!277 = !DILocation(line: 185, column: 4, scope: !257)
!278 = !DILocation(line: 187, column: 10, scope: !279)
!279 = distinct !DILexicalBlock(scope: !257, file: !3, line: 187, column: 8)
!280 = !DILocation(line: 187, column: 16, scope: !279)
!281 = !DILocation(line: 187, column: 21, scope: !279)
!282 = !DILocation(line: 187, column: 8, scope: !257)
!283 = !DILocation(line: 188, column: 5, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !3, line: 187, column: 30)
!285 = !DILocation(line: 188, column: 11, scope: !284)
!286 = !DILocation(line: 188, column: 17, scope: !284)
!287 = !DILocation(line: 189, column: 5, scope: !284)
!288 = !DILocation(line: 189, column: 11, scope: !284)
!289 = !DILocation(line: 189, column: 22, scope: !284)
!290 = !DILocation(line: 190, column: 4, scope: !284)
!291 = !DILocation(line: 191, column: 11, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 191, column: 9)
!293 = distinct !DILexicalBlock(scope: !279, file: !3, line: 190, column: 11)
!294 = !DILocation(line: 191, column: 17, scope: !292)
!295 = !DILocation(line: 191, column: 29, scope: !292)
!296 = !DILocation(line: 192, column: 12, scope: !292)
!297 = !DILocation(line: 192, column: 18, scope: !292)
!298 = !DILocation(line: 192, column: 10, scope: !292)
!299 = !DILocation(line: 192, column: 29, scope: !292)
!300 = !DILocation(line: 192, column: 35, scope: !292)
!301 = !DILocation(line: 193, column: 10, scope: !292)
!302 = !DILocation(line: 193, column: 16, scope: !292)
!303 = !DILocation(line: 193, column: 26, scope: !292)
!304 = !DILocation(line: 191, column: 9, scope: !293)
!305 = !DILocation(line: 194, column: 6, scope: !292)
!306 = !DILocation(line: 194, column: 12, scope: !292)
!307 = !DILocation(line: 194, column: 18, scope: !292)
!308 = !DILocation(line: 196, column: 4, scope: !257)
!309 = !DILocation(line: 196, column: 10, scope: !257)
!310 = !DILocation(line: 196, column: 15, scope: !257)
!311 = !DILocation(line: 197, column: 4, scope: !257)
!312 = !DILocation(line: 197, column: 10, scope: !257)
!313 = !DILocation(line: 197, column: 19, scope: !257)
!314 = !DILocation(line: 198, column: 4, scope: !257)
!315 = !DILocation(line: 200, column: 8, scope: !316)
!316 = distinct !DILexicalBlock(scope: !257, file: !3, line: 200, column: 8)
!317 = !DILocation(line: 200, column: 14, scope: !316)
!318 = !DILocation(line: 200, column: 19, scope: !316)
!319 = !DILocation(line: 200, column: 8, scope: !257)
!320 = !DILocation(line: 201, column: 5, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !3, line: 200, column: 27)
!322 = !DILocation(line: 201, column: 11, scope: !321)
!323 = !DILocation(line: 201, column: 21, scope: !321)
!324 = !DILocation(line: 202, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !3, line: 202, column: 9)
!326 = !DILocation(line: 202, column: 15, scope: !325)
!327 = !DILocation(line: 202, column: 26, scope: !325)
!328 = !DILocation(line: 202, column: 9, scope: !321)
!329 = !DILocation(line: 203, column: 6, scope: !325)
!330 = !DILocation(line: 203, column: 12, scope: !325)
!331 = !DILocation(line: 203, column: 18, scope: !325)
!332 = !DILocation(line: 204, column: 4, scope: !321)
!333 = !DILocation(line: 205, column: 5, scope: !316)
!334 = !DILocation(line: 205, column: 11, scope: !316)
!335 = !DILocation(line: 205, column: 22, scope: !316)
!336 = !DILocation(line: 206, column: 4, scope: !257)
!337 = !DILocation(line: 206, column: 10, scope: !257)
!338 = !DILocation(line: 206, column: 15, scope: !257)
!339 = !DILocation(line: 207, column: 4, scope: !257)
!340 = !DILocation(line: 207, column: 10, scope: !257)
!341 = !DILocation(line: 207, column: 19, scope: !257)
!342 = !DILocation(line: 208, column: 4, scope: !257)
!343 = !DILocation(line: 210, column: 8, scope: !344)
!344 = distinct !DILexicalBlock(scope: !257, file: !3, line: 210, column: 8)
!345 = !DILocation(line: 210, column: 14, scope: !344)
!346 = !DILocation(line: 210, column: 19, scope: !344)
!347 = !DILocation(line: 210, column: 8, scope: !257)
!348 = !DILocation(line: 211, column: 5, scope: !349)
!349 = distinct !DILexicalBlock(scope: !344, file: !3, line: 210, column: 27)
!350 = !DILocation(line: 211, column: 11, scope: !349)
!351 = !DILocation(line: 211, column: 17, scope: !349)
!352 = !DILocation(line: 212, column: 4, scope: !349)
!353 = !DILocation(line: 213, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !344, file: !3, line: 212, column: 11)
!355 = !DILocation(line: 213, column: 11, scope: !354)
!356 = !DILocation(line: 213, column: 17, scope: !354)
!357 = !DILocation(line: 214, column: 5, scope: !354)
!358 = !DILocation(line: 214, column: 11, scope: !354)
!359 = !DILocation(line: 214, column: 15, scope: !354)
!360 = !DILocation(line: 215, column: 5, scope: !354)
!361 = !DILocation(line: 215, column: 11, scope: !354)
!362 = !DILocation(line: 215, column: 21, scope: !354)
!363 = !DILocation(line: 216, column: 5, scope: !354)
!364 = !DILocation(line: 216, column: 11, scope: !354)
!365 = !DILocation(line: 216, column: 22, scope: !354)
!366 = !DILocation(line: 217, column: 5, scope: !354)
!367 = !DILocation(line: 217, column: 11, scope: !354)
!368 = !DILocation(line: 217, column: 21, scope: !354)
!369 = !DILocation(line: 218, column: 5, scope: !354)
!370 = !DILocation(line: 218, column: 11, scope: !354)
!371 = !DILocation(line: 218, column: 25, scope: !354)
!372 = !DILocation(line: 220, column: 4, scope: !257)
!373 = !DILocation(line: 220, column: 10, scope: !257)
!374 = !DILocation(line: 220, column: 15, scope: !257)
!375 = !DILocation(line: 221, column: 4, scope: !257)
!376 = !DILocation(line: 221, column: 10, scope: !257)
!377 = !DILocation(line: 221, column: 19, scope: !257)
!378 = !DILocation(line: 222, column: 4, scope: !257)
!379 = !DILocation(line: 224, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !257, file: !3, line: 224, column: 8)
!381 = !DILocation(line: 224, column: 14, scope: !380)
!382 = !DILocation(line: 224, column: 19, scope: !380)
!383 = !DILocation(line: 224, column: 8, scope: !257)
!384 = !DILocation(line: 225, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !380, file: !3, line: 224, column: 27)
!386 = !DILocation(line: 225, column: 11, scope: !385)
!387 = !DILocation(line: 225, column: 21, scope: !385)
!388 = !DILocation(line: 226, column: 13, scope: !385)
!389 = !DILocation(line: 226, column: 19, scope: !385)
!390 = !DILocation(line: 226, column: 5, scope: !385)
!391 = !DILocation(line: 228, column: 6, scope: !392)
!392 = distinct !DILexicalBlock(scope: !385, file: !3, line: 226, column: 31)
!393 = !DILocation(line: 230, column: 10, scope: !394)
!394 = distinct !DILexicalBlock(scope: !392, file: !3, line: 230, column: 10)
!395 = !DILocation(line: 230, column: 16, scope: !394)
!396 = !DILocation(line: 230, column: 10, scope: !392)
!397 = !DILocation(line: 232, column: 14, scope: !394)
!398 = !DILocation(line: 232, column: 7, scope: !394)
!399 = !DILocation(line: 233, column: 11, scope: !400)
!400 = distinct !DILexicalBlock(scope: !392, file: !3, line: 233, column: 10)
!401 = !DILocation(line: 233, column: 17, scope: !400)
!402 = !DILocation(line: 233, column: 10, scope: !392)
!403 = !DILocation(line: 234, column: 11, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !3, line: 234, column: 11)
!405 = distinct !DILexicalBlock(scope: !400, file: !3, line: 233, column: 29)
!406 = !DILocation(line: 234, column: 17, scope: !404)
!407 = !DILocation(line: 235, column: 12, scope: !404)
!408 = !DILocation(line: 235, column: 18, scope: !404)
!409 = !DILocation(line: 235, column: 28, scope: !404)
!410 = !DILocation(line: 234, column: 25, scope: !404)
!411 = !DILocation(line: 234, column: 22, scope: !404)
!412 = !DILocation(line: 234, column: 11, scope: !405)
!413 = !DILocation(line: 236, column: 8, scope: !414)
!414 = distinct !DILexicalBlock(scope: !404, file: !3, line: 235, column: 34)
!415 = !DILocation(line: 236, column: 14, scope: !414)
!416 = !DILocation(line: 236, column: 20, scope: !414)
!417 = !DILocation(line: 238, column: 8, scope: !414)
!418 = !DILocation(line: 238, column: 14, scope: !414)
!419 = !DILocation(line: 238, column: 24, scope: !414)
!420 = !DILocation(line: 239, column: 8, scope: !414)
!421 = !DILocation(line: 241, column: 6, scope: !405)
!422 = !DILocation(line: 242, column: 7, scope: !400)
!423 = !DILocation(line: 242, column: 13, scope: !400)
!424 = !DILocation(line: 242, column: 19, scope: !400)
!425 = !DILocation(line: 243, column: 6, scope: !392)
!426 = !DILocation(line: 245, column: 6, scope: !392)
!427 = !DILocation(line: 245, column: 12, scope: !392)
!428 = !DILocation(line: 245, column: 22, scope: !392)
!429 = !DILocation(line: 246, column: 6, scope: !392)
!430 = !DILocation(line: 246, column: 12, scope: !392)
!431 = !DILocation(line: 246, column: 22, scope: !392)
!432 = !DILocation(line: 247, column: 6, scope: !392)
!433 = !DILocation(line: 247, column: 12, scope: !392)
!434 = !DILocation(line: 247, column: 21, scope: !392)
!435 = !DILocation(line: 248, column: 6, scope: !392)
!436 = !DILocation(line: 250, column: 4, scope: !385)
!437 = !DILocation(line: 251, column: 13, scope: !438)
!438 = distinct !DILexicalBlock(scope: !380, file: !3, line: 250, column: 11)
!439 = !DILocation(line: 251, column: 19, scope: !438)
!440 = !DILocation(line: 251, column: 5, scope: !438)
!441 = !DILocation(line: 253, column: 6, scope: !442)
!442 = distinct !DILexicalBlock(scope: !438, file: !3, line: 251, column: 31)
!443 = !DILocation(line: 255, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !442, file: !3, line: 255, column: 10)
!445 = !DILocation(line: 255, column: 16, scope: !444)
!446 = !DILocation(line: 255, column: 10, scope: !442)
!447 = !DILocation(line: 256, column: 28, scope: !444)
!448 = !DILocation(line: 256, column: 16, scope: !444)
!449 = !DILocation(line: 256, column: 14, scope: !444)
!450 = !DILocation(line: 256, column: 7, scope: !444)
!451 = !DILocation(line: 257, column: 6, scope: !442)
!452 = !DILocation(line: 257, column: 12, scope: !442)
!453 = !DILocation(line: 257, column: 16, scope: !442)
!454 = !DILocation(line: 258, column: 6, scope: !442)
!455 = !DILocation(line: 258, column: 12, scope: !442)
!456 = !DILocation(line: 258, column: 22, scope: !442)
!457 = !DILocation(line: 259, column: 6, scope: !442)
!458 = !DILocation(line: 259, column: 12, scope: !442)
!459 = !DILocation(line: 259, column: 22, scope: !442)
!460 = !DILocation(line: 260, column: 11, scope: !461)
!461 = distinct !DILexicalBlock(scope: !442, file: !3, line: 260, column: 10)
!462 = !DILocation(line: 260, column: 17, scope: !461)
!463 = !DILocation(line: 260, column: 10, scope: !442)
!464 = !DILocation(line: 261, column: 7, scope: !461)
!465 = !DILocation(line: 261, column: 7, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !3, line: 261, column: 7)
!467 = distinct !DILexicalBlock(scope: !461, file: !3, line: 261, column: 7)
!468 = !DILocation(line: 261, column: 7, scope: !467)
!469 = !DILocation(line: 261, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !3, line: 261, column: 7)
!471 = !DILocation(line: 261, column: 7, scope: !472)
!472 = distinct !DILexicalBlock(scope: !466, file: !3, line: 261, column: 7)
!473 = !DILocation(line: 263, column: 7, scope: !474)
!474 = distinct !DILexicalBlock(scope: !461, file: !3, line: 262, column: 11)
!475 = !DILocation(line: 263, column: 13, scope: !474)
!476 = !DILocation(line: 263, column: 19, scope: !474)
!477 = !DILocation(line: 264, column: 7, scope: !474)
!478 = !DILocation(line: 264, column: 13, scope: !474)
!479 = !DILocation(line: 264, column: 27, scope: !474)
!480 = !DILocation(line: 266, column: 6, scope: !442)
!481 = !DILocation(line: 268, column: 6, scope: !442)
!482 = !DILocation(line: 268, column: 12, scope: !442)
!483 = !DILocation(line: 268, column: 22, scope: !442)
!484 = !DILocation(line: 269, column: 6, scope: !442)
!485 = !DILocation(line: 269, column: 12, scope: !442)
!486 = !DILocation(line: 269, column: 21, scope: !442)
!487 = !DILocation(line: 270, column: 6, scope: !442)
!488 = !DILocation(line: 272, column: 5, scope: !438)
!489 = !DILocation(line: 272, column: 11, scope: !438)
!490 = !DILocation(line: 272, column: 22, scope: !438)
!491 = !DILocation(line: 274, column: 8, scope: !492)
!492 = distinct !DILexicalBlock(scope: !257, file: !3, line: 274, column: 8)
!493 = !DILocation(line: 274, column: 8, scope: !257)
!494 = !DILocation(line: 275, column: 5, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !3, line: 274, column: 16)
!496 = !DILocation(line: 275, column: 11, scope: !495)
!497 = !DILocation(line: 275, column: 18, scope: !495)
!498 = !DILocation(line: 276, column: 15, scope: !495)
!499 = !DILocation(line: 276, column: 6, scope: !495)
!500 = !DILocation(line: 276, column: 12, scope: !495)
!501 = !DILocation(line: 277, column: 5, scope: !495)
!502 = !DILocation(line: 277, column: 11, scope: !495)
!503 = !DILocation(line: 277, column: 16, scope: !495)
!504 = !DILocation(line: 278, column: 5, scope: !495)
!505 = !DILocation(line: 278, column: 11, scope: !495)
!506 = !DILocation(line: 278, column: 20, scope: !495)
!507 = !DILocation(line: 279, column: 12, scope: !495)
!508 = !DILocation(line: 279, column: 5, scope: !495)
!509 = !DILocation(line: 281, column: 8, scope: !510)
!510 = distinct !DILexicalBlock(scope: !257, file: !3, line: 281, column: 8)
!511 = !DILocation(line: 281, column: 14, scope: !510)
!512 = !DILocation(line: 281, column: 24, scope: !510)
!513 = !DILocation(line: 281, column: 8, scope: !257)
!514 = !DILocation(line: 282, column: 5, scope: !515)
!515 = distinct !DILexicalBlock(scope: !510, file: !3, line: 281, column: 30)
!516 = !DILocation(line: 282, column: 11, scope: !515)
!517 = !DILocation(line: 282, column: 21, scope: !515)
!518 = !DILocation(line: 283, column: 5, scope: !515)
!519 = !DILocation(line: 283, column: 11, scope: !515)
!520 = !DILocation(line: 283, column: 25, scope: !515)
!521 = !DILocation(line: 284, column: 32, scope: !515)
!522 = !DILocation(line: 284, column: 38, scope: !515)
!523 = !DILocation(line: 285, column: 11, scope: !515)
!524 = !DILocation(line: 285, column: 17, scope: !515)
!525 = !DILocation(line: 284, column: 17, scope: !515)
!526 = !DILocation(line: 284, column: 5, scope: !515)
!527 = !DILocation(line: 284, column: 11, scope: !515)
!528 = !DILocation(line: 284, column: 15, scope: !515)
!529 = !DILocation(line: 288, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !515, file: !3, line: 288, column: 9)
!531 = !DILocation(line: 288, column: 15, scope: !530)
!532 = !DILocation(line: 288, column: 24, scope: !530)
!533 = !DILocation(line: 288, column: 22, scope: !530)
!534 = !DILocation(line: 288, column: 9, scope: !515)
!535 = !DILocation(line: 289, column: 28, scope: !530)
!536 = !DILocation(line: 289, column: 34, scope: !530)
!537 = !DILocation(line: 289, column: 6, scope: !530)
!538 = !DILocation(line: 289, column: 10, scope: !530)
!539 = !DILocation(line: 289, column: 16, scope: !530)
!540 = !DILocation(line: 289, column: 22, scope: !530)
!541 = !DILocation(line: 289, column: 26, scope: !530)
!542 = !DILocation(line: 292, column: 13, scope: !543)
!543 = distinct !DILexicalBlock(scope: !530, file: !3, line: 290, column: 10)
!544 = !DILocation(line: 293, column: 6, scope: !543)
!545 = !DILocation(line: 293, column: 12, scope: !543)
!546 = !DILocation(line: 293, column: 19, scope: !543)
!547 = !DILocation(line: 295, column: 4, scope: !515)
!548 = !DILocation(line: 296, column: 4, scope: !257)
!549 = !DILocation(line: 296, column: 10, scope: !257)
!550 = !DILocation(line: 296, column: 15, scope: !257)
!551 = !DILocation(line: 297, column: 4, scope: !257)
!552 = !DILocation(line: 297, column: 10, scope: !257)
!553 = !DILocation(line: 297, column: 19, scope: !257)
!554 = !DILocation(line: 298, column: 4, scope: !257)
!555 = !DILocation(line: 300, column: 8, scope: !556)
!556 = distinct !DILexicalBlock(scope: !257, file: !3, line: 300, column: 8)
!557 = !DILocation(line: 300, column: 14, scope: !556)
!558 = !DILocation(line: 300, column: 22, scope: !556)
!559 = !DILocation(line: 300, column: 28, scope: !556)
!560 = !DILocation(line: 300, column: 19, scope: !556)
!561 = !DILocation(line: 300, column: 8, scope: !257)
!562 = !DILocation(line: 301, column: 5, scope: !563)
!563 = distinct !DILexicalBlock(scope: !556, file: !3, line: 300, column: 37)
!564 = !DILocation(line: 301, column: 11, scope: !563)
!565 = !DILocation(line: 301, column: 21, scope: !563)
!566 = !DILocation(line: 302, column: 5, scope: !563)
!567 = !DILocation(line: 304, column: 9, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 304, column: 9)
!569 = distinct !DILexicalBlock(scope: !556, file: !3, line: 303, column: 11)
!570 = !DILocation(line: 304, column: 15, scope: !568)
!571 = !DILocation(line: 304, column: 20, scope: !568)
!572 = !DILocation(line: 304, column: 9, scope: !569)
!573 = !DILocation(line: 305, column: 6, scope: !574)
!574 = distinct !DILexicalBlock(scope: !568, file: !3, line: 304, column: 29)
!575 = !DILocation(line: 305, column: 12, scope: !574)
!576 = !DILocation(line: 305, column: 18, scope: !574)
!577 = !DILocation(line: 306, column: 6, scope: !574)
!578 = !DILocation(line: 306, column: 12, scope: !574)
!579 = !DILocation(line: 306, column: 22, scope: !574)
!580 = !DILocation(line: 307, column: 5, scope: !574)
!581 = !DILocation(line: 307, column: 16, scope: !582)
!582 = distinct !DILexicalBlock(scope: !568, file: !3, line: 307, column: 16)
!583 = !DILocation(line: 307, column: 22, scope: !582)
!584 = !DILocation(line: 307, column: 34, scope: !582)
!585 = !DILocation(line: 307, column: 16, scope: !568)
!586 = !DILocation(line: 308, column: 6, scope: !587)
!587 = distinct !DILexicalBlock(scope: !582, file: !3, line: 307, column: 40)
!588 = !DILocation(line: 308, column: 12, scope: !587)
!589 = !DILocation(line: 308, column: 18, scope: !587)
!590 = !DILocation(line: 309, column: 6, scope: !587)
!591 = !DILocation(line: 311, column: 6, scope: !582)
!592 = !DILocation(line: 311, column: 6, scope: !593)
!593 = distinct !DILexicalBlock(scope: !582, file: !3, line: 311, column: 6)
!594 = !DILocation(line: 311, column: 6, scope: !595)
!595 = distinct !DILexicalBlock(scope: !593, file: !3, line: 311, column: 6)
!596 = !DILocation(line: 313, column: 4, scope: !257)
!597 = !DILocation(line: 315, column: 4, scope: !257)
!598 = distinct !{!598, !211, !599}
!599 = !DILocation(line: 317, column: 2, scope: !55)
!600 = !DILocation(line: 318, column: 12, scope: !55)
!601 = !DILocation(line: 318, column: 3, scope: !55)
!602 = !DILocation(line: 318, column: 9, scope: !55)
!603 = !DILocation(line: 319, column: 2, scope: !55)
!604 = !DILocation(line: 320, column: 1, scope: !55)
!605 = distinct !DISubprogram(name: "__bitrev8", scope: !606, file: !606, line: 16, type: !607, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !87)
!606 = !DIFile(filename: "./include/linux/bitrev.h", directory: "/home/lizy2001/genbc/linux")
!607 = !DISubroutineType(types: !608)
!608 = !{!30, !30}
!609 = !DILocalVariable(name: "byte", arg: 1, scope: !605, file: !606, line: 16, type: !30)
!610 = !DILocation(line: 16, column: 31, scope: !605)
!611 = !DILocation(line: 18, column: 24, scope: !605)
!612 = !DILocation(line: 18, column: 9, scope: !605)
!613 = !DILocation(line: 18, column: 2, scope: !605)
!614 = distinct !DISubprogram(name: "check_frame", scope: !3, file: !3, line: 74, type: !615, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !87)
!615 = !DISubroutineType(types: !616)
!616 = !{!58, !59}
!617 = !DILocalVariable(name: "hdlc", arg: 1, scope: !614, file: !3, line: 74, type: !59)
!618 = !DILocation(line: 74, column: 35, scope: !614)
!619 = !DILocalVariable(name: "status", scope: !614, file: !3, line: 76, type: !58)
!620 = !DILocation(line: 76, column: 6, scope: !614)
!621 = !DILocation(line: 78, column: 6, scope: !622)
!622 = distinct !DILexicalBlock(scope: !614, file: !3, line: 78, column: 6)
!623 = !DILocation(line: 78, column: 12, scope: !622)
!624 = !DILocation(line: 78, column: 19, scope: !622)
!625 = !DILocation(line: 78, column: 6, scope: !614)
!626 = !DILocation(line: 79, column: 10, scope: !622)
!627 = !DILocation(line: 79, column: 3, scope: !622)
!628 = !DILocation(line: 80, column: 11, scope: !629)
!629 = distinct !DILexicalBlock(scope: !622, file: !3, line: 80, column: 11)
!630 = !DILocation(line: 80, column: 17, scope: !629)
!631 = !DILocation(line: 80, column: 21, scope: !629)
!632 = !DILocation(line: 80, column: 11, scope: !622)
!633 = !DILocation(line: 81, column: 10, scope: !629)
!634 = !DILocation(line: 81, column: 3, scope: !629)
!635 = !DILocation(line: 84, column: 3, scope: !636)
!636 = distinct !DILexicalBlock(scope: !629, file: !3, line: 82, column: 7)
!637 = !DILocation(line: 84, column: 9, scope: !636)
!638 = !DILocation(line: 84, column: 16, scope: !636)
!639 = !DILocation(line: 86, column: 12, scope: !636)
!640 = !DILocation(line: 86, column: 18, scope: !636)
!641 = !DILocation(line: 86, column: 10, scope: !636)
!642 = !DILocation(line: 88, column: 9, scope: !614)
!643 = !DILocation(line: 88, column: 2, scope: !614)
!644 = distinct !DISubprogram(name: "crc_ccitt_byte", scope: !645, file: !645, line: 13, type: !646, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !87)
!645 = !DIFile(filename: "./include/linux/crc-ccitt.h", directory: "/home/lizy2001/genbc/linux")
!646 = !DISubroutineType(types: !647)
!647 = !{!70, !70, !84}
!648 = !DILocalVariable(name: "crc", arg: 1, scope: !644, file: !645, line: 13, type: !70)
!649 = !DILocation(line: 13, column: 38, scope: !644)
!650 = !DILocalVariable(name: "c", arg: 2, scope: !644, file: !645, line: 13, type: !84)
!651 = !DILocation(line: 13, column: 52, scope: !644)
!652 = !DILocation(line: 15, column: 10, scope: !644)
!653 = !DILocation(line: 15, column: 14, scope: !644)
!654 = !DILocation(line: 15, column: 39, scope: !644)
!655 = !DILocation(line: 15, column: 45, scope: !644)
!656 = !DILocation(line: 15, column: 43, scope: !644)
!657 = !DILocation(line: 15, column: 48, scope: !644)
!658 = !DILocation(line: 15, column: 22, scope: !644)
!659 = !DILocation(line: 15, column: 20, scope: !644)
!660 = !DILocation(line: 15, column: 9, scope: !644)
!661 = !DILocation(line: 15, column: 2, scope: !644)
!662 = !DILocalVariable(name: "hdlc", arg: 1, scope: !101, file: !3, line: 341, type: !59)
!663 = !DILocation(line: 341, column: 43, scope: !101)
!664 = !DILocalVariable(name: "src", arg: 2, scope: !101, file: !3, line: 341, type: !83)
!665 = !DILocation(line: 341, column: 59, scope: !101)
!666 = !DILocalVariable(name: "slen", arg: 3, scope: !101, file: !3, line: 341, type: !70)
!667 = !DILocation(line: 341, column: 68, scope: !101)
!668 = !DILocalVariable(name: "count", arg: 4, scope: !101, file: !3, line: 342, type: !85)
!669 = !DILocation(line: 342, column: 12, scope: !101)
!670 = !DILocalVariable(name: "dst", arg: 5, scope: !101, file: !3, line: 342, type: !86)
!671 = !DILocation(line: 342, column: 23, scope: !101)
!672 = !DILocalVariable(name: "dsize", arg: 6, scope: !101, file: !3, line: 342, type: !58)
!673 = !DILocation(line: 342, column: 32, scope: !101)
!674 = !DILocalVariable(name: "len", scope: !101, file: !3, line: 348, type: !58)
!675 = !DILocation(line: 348, column: 6, scope: !101)
!676 = !DILocation(line: 350, column: 11, scope: !101)
!677 = !DILocation(line: 350, column: 3, scope: !101)
!678 = !DILocation(line: 350, column: 9, scope: !101)
!679 = !DILocation(line: 353, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !101, file: !3, line: 353, column: 6)
!681 = !DILocation(line: 353, column: 12, scope: !680)
!682 = !DILocation(line: 353, column: 18, scope: !680)
!683 = !DILocation(line: 353, column: 22, scope: !680)
!684 = !DILocation(line: 353, column: 28, scope: !680)
!685 = !DILocation(line: 353, column: 34, scope: !680)
!686 = !DILocation(line: 353, column: 6, scope: !101)
!687 = !DILocation(line: 354, column: 3, scope: !680)
!688 = !DILocation(line: 354, column: 9, scope: !680)
!689 = !DILocation(line: 354, column: 15, scope: !680)
!690 = !DILocation(line: 355, column: 2, scope: !101)
!691 = !DILocation(line: 355, column: 9, scope: !101)
!692 = !DILocation(line: 355, column: 15, scope: !101)
!693 = !DILocation(line: 356, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 356, column: 7)
!695 = distinct !DILexicalBlock(scope: !101, file: !3, line: 355, column: 20)
!696 = !DILocation(line: 356, column: 13, scope: !694)
!697 = !DILocation(line: 356, column: 23, scope: !694)
!698 = !DILocation(line: 356, column: 7, scope: !695)
!699 = !DILocation(line: 357, column: 8, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 357, column: 8)
!701 = distinct !DILexicalBlock(scope: !694, file: !3, line: 356, column: 29)
!702 = !DILocation(line: 357, column: 13, scope: !700)
!703 = !DILocation(line: 357, column: 17, scope: !700)
!704 = !DILocation(line: 357, column: 23, scope: !700)
!705 = !DILocation(line: 357, column: 8, scope: !701)
!706 = !DILocation(line: 358, column: 27, scope: !707)
!707 = distinct !DILexicalBlock(scope: !700, file: !3, line: 357, column: 35)
!708 = !DILocation(line: 358, column: 23, scope: !707)
!709 = !DILocation(line: 358, column: 5, scope: !707)
!710 = !DILocation(line: 358, column: 11, scope: !707)
!711 = !DILocation(line: 358, column: 21, scope: !707)
!712 = !DILocation(line: 359, column: 9, scope: !707)
!713 = !DILocation(line: 360, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !707, file: !3, line: 360, column: 9)
!715 = !DILocation(line: 360, column: 14, scope: !714)
!716 = !DILocation(line: 360, column: 9, scope: !707)
!717 = !DILocation(line: 362, column: 6, scope: !714)
!718 = !DILocation(line: 362, column: 12, scope: !714)
!719 = !DILocation(line: 362, column: 23, scope: !714)
!720 = !DILocation(line: 363, column: 5, scope: !707)
!721 = !DILocation(line: 363, column: 11, scope: !707)
!722 = !DILocation(line: 363, column: 21, scope: !707)
!723 = !DILocation(line: 364, column: 4, scope: !707)
!724 = !DILocation(line: 365, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 365, column: 9)
!726 = distinct !DILexicalBlock(scope: !700, file: !3, line: 364, column: 11)
!727 = !DILocation(line: 365, column: 15, scope: !725)
!728 = !DILocation(line: 365, column: 21, scope: !725)
!729 = !DILocation(line: 365, column: 9, scope: !726)
!730 = !DILocation(line: 366, column: 10, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 366, column: 10)
!732 = distinct !DILexicalBlock(scope: !725, file: !3, line: 365, column: 40)
!733 = !DILocation(line: 366, column: 16, scope: !731)
!734 = !DILocation(line: 366, column: 10, scope: !732)
!735 = !DILocation(line: 367, column: 7, scope: !736)
!736 = distinct !DILexicalBlock(scope: !731, file: !3, line: 366, column: 31)
!737 = !DILocation(line: 367, column: 13, scope: !736)
!738 = !DILocation(line: 367, column: 19, scope: !736)
!739 = !DILocation(line: 368, column: 7, scope: !736)
!740 = !DILocation(line: 368, column: 13, scope: !736)
!741 = !DILocation(line: 368, column: 17, scope: !736)
!742 = !DILocation(line: 369, column: 7, scope: !736)
!743 = !DILocation(line: 369, column: 13, scope: !736)
!744 = !DILocation(line: 369, column: 23, scope: !736)
!745 = !DILocation(line: 371, column: 8, scope: !736)
!746 = !DILocation(line: 371, column: 14, scope: !736)
!747 = !DILocation(line: 371, column: 18, scope: !736)
!748 = !DILocation(line: 370, column: 7, scope: !736)
!749 = !DILocation(line: 370, column: 13, scope: !736)
!750 = !DILocation(line: 370, column: 23, scope: !736)
!751 = !DILocation(line: 372, column: 6, scope: !736)
!752 = !DILocation(line: 372, column: 18, scope: !753)
!753 = distinct !DILexicalBlock(scope: !731, file: !3, line: 372, column: 17)
!754 = !DILocation(line: 372, column: 24, scope: !753)
!755 = !DILocation(line: 372, column: 17, scope: !731)
!756 = !DILocation(line: 373, column: 7, scope: !753)
!757 = !DILocation(line: 373, column: 13, scope: !753)
!758 = !DILocation(line: 373, column: 19, scope: !753)
!759 = !DILocation(line: 376, column: 7, scope: !753)
!760 = !DILocation(line: 376, column: 13, scope: !753)
!761 = !DILocation(line: 376, column: 19, scope: !753)
!762 = !DILocation(line: 378, column: 5, scope: !732)
!763 = !DILocation(line: 381, column: 3, scope: !701)
!764 = !DILocation(line: 383, column: 11, scope: !695)
!765 = !DILocation(line: 383, column: 17, scope: !695)
!766 = !DILocation(line: 383, column: 3, scope: !695)
!767 = !DILocation(line: 385, column: 4, scope: !768)
!768 = distinct !DILexicalBlock(scope: !695, file: !3, line: 383, column: 24)
!769 = !DILocation(line: 385, column: 16, scope: !768)
!770 = !DILocation(line: 386, column: 9, scope: !768)
!771 = !DILocation(line: 386, column: 12, scope: !768)
!772 = distinct !{!772, !767, !773}
!773 = !DILocation(line: 386, column: 14, scope: !768)
!774 = !DILocation(line: 387, column: 11, scope: !768)
!775 = !DILocation(line: 387, column: 4, scope: !768)
!776 = !DILocation(line: 389, column: 4, scope: !768)
!777 = !DILocation(line: 389, column: 10, scope: !768)
!778 = !DILocation(line: 389, column: 21, scope: !768)
!779 = !DILocation(line: 390, column: 8, scope: !780)
!780 = distinct !DILexicalBlock(scope: !768, file: !3, line: 390, column: 8)
!781 = !DILocation(line: 390, column: 13, scope: !780)
!782 = !DILocation(line: 390, column: 8, scope: !768)
!783 = !DILocation(line: 392, column: 9, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 392, column: 9)
!785 = distinct !DILexicalBlock(scope: !780, file: !3, line: 390, column: 19)
!786 = !DILocation(line: 392, column: 15, scope: !784)
!787 = !DILocation(line: 392, column: 29, scope: !784)
!788 = !DILocation(line: 392, column: 9, scope: !785)
!789 = !DILocalVariable(name: "__x", scope: !790, file: !3, line: 393, type: !30)
!790 = distinct !DILexicalBlock(scope: !784, file: !3, line: 393, column: 15)
!791 = !DILocation(line: 393, column: 15, scope: !790)
!792 = !DILocalVariable(name: "___x", scope: !793, file: !3, line: 393, type: !30)
!793 = distinct !DILexicalBlock(scope: !790, file: !3, line: 393, column: 15)
!794 = !DILocation(line: 393, column: 15, scope: !793)
!795 = !DILocation(line: 393, column: 15, scope: !784)
!796 = !DILocation(line: 393, column: 10, scope: !784)
!797 = !DILocation(line: 393, column: 13, scope: !784)
!798 = !DILocation(line: 393, column: 6, scope: !784)
!799 = !DILocation(line: 395, column: 15, scope: !784)
!800 = !DILocation(line: 395, column: 21, scope: !784)
!801 = !DILocation(line: 395, column: 10, scope: !784)
!802 = !DILocation(line: 395, column: 13, scope: !784)
!803 = !DILocation(line: 396, column: 8, scope: !785)
!804 = !DILocation(line: 397, column: 10, scope: !785)
!805 = !DILocation(line: 398, column: 5, scope: !785)
!806 = !DILocation(line: 390, column: 16, scope: !780)
!807 = !DILocation(line: 402, column: 8, scope: !808)
!808 = distinct !DILexicalBlock(scope: !768, file: !3, line: 402, column: 8)
!809 = !DILocation(line: 402, column: 14, scope: !808)
!810 = !DILocation(line: 402, column: 24, scope: !808)
!811 = !DILocation(line: 402, column: 8, scope: !768)
!812 = !DILocation(line: 403, column: 18, scope: !813)
!813 = distinct !DILexicalBlock(scope: !808, file: !3, line: 402, column: 30)
!814 = !DILocation(line: 403, column: 24, scope: !813)
!815 = !DILocation(line: 404, column: 11, scope: !813)
!816 = !DILocation(line: 404, column: 17, scope: !813)
!817 = !DILocation(line: 404, column: 9, scope: !813)
!818 = !DILocation(line: 403, column: 32, scope: !813)
!819 = !DILocation(line: 403, column: 5, scope: !813)
!820 = !DILocation(line: 403, column: 11, scope: !813)
!821 = !DILocation(line: 403, column: 16, scope: !813)
!822 = !DILocation(line: 405, column: 5, scope: !813)
!823 = !DILocation(line: 405, column: 11, scope: !813)
!824 = !DILocation(line: 405, column: 17, scope: !813)
!825 = !DILocation(line: 406, column: 5, scope: !813)
!826 = !DILocation(line: 406, column: 11, scope: !813)
!827 = !DILocation(line: 406, column: 15, scope: !813)
!828 = !DILocation(line: 407, column: 5, scope: !813)
!829 = !DILocation(line: 407, column: 11, scope: !813)
!830 = !DILocation(line: 407, column: 22, scope: !813)
!831 = !DILocation(line: 408, column: 5, scope: !813)
!832 = !DILocation(line: 408, column: 11, scope: !813)
!833 = !DILocation(line: 408, column: 25, scope: !813)
!834 = !DILocation(line: 409, column: 4, scope: !813)
!835 = !DILocation(line: 410, column: 4, scope: !768)
!836 = !DILocation(line: 412, column: 4, scope: !768)
!837 = !DILocation(line: 412, column: 10, scope: !768)
!838 = !DILocation(line: 412, column: 21, scope: !768)
!839 = !DILocation(line: 413, column: 4, scope: !768)
!840 = !DILocation(line: 413, column: 10, scope: !768)
!841 = !DILocation(line: 413, column: 15, scope: !768)
!842 = !DILocation(line: 414, column: 4, scope: !768)
!843 = !DILocation(line: 414, column: 10, scope: !768)
!844 = !DILocation(line: 414, column: 19, scope: !768)
!845 = !DILocation(line: 415, column: 4, scope: !768)
!846 = !DILocation(line: 415, column: 10, scope: !768)
!847 = !DILocation(line: 415, column: 21, scope: !768)
!848 = !DILocation(line: 416, column: 4, scope: !768)
!849 = !DILocation(line: 416, column: 10, scope: !768)
!850 = !DILocation(line: 416, column: 16, scope: !768)
!851 = !DILocation(line: 417, column: 4, scope: !768)
!852 = !DILocation(line: 419, column: 4, scope: !768)
!853 = !DILocation(line: 419, column: 10, scope: !768)
!854 = !DILocation(line: 419, column: 15, scope: !768)
!855 = !DILocation(line: 420, column: 4, scope: !768)
!856 = !DILocation(line: 420, column: 10, scope: !768)
!857 = !DILocation(line: 420, column: 19, scope: !768)
!858 = !DILocation(line: 421, column: 4, scope: !768)
!859 = !DILocation(line: 421, column: 10, scope: !768)
!860 = !DILocation(line: 421, column: 14, scope: !768)
!861 = !DILocation(line: 422, column: 10, scope: !862)
!862 = distinct !DILexicalBlock(scope: !768, file: !3, line: 422, column: 8)
!863 = !DILocation(line: 422, column: 16, scope: !862)
!864 = !DILocation(line: 422, column: 8, scope: !862)
!865 = !DILocation(line: 422, column: 27, scope: !862)
!866 = !DILocation(line: 422, column: 8, scope: !768)
!867 = !DILocation(line: 423, column: 5, scope: !862)
!868 = !DILocation(line: 423, column: 11, scope: !862)
!869 = !DILocation(line: 423, column: 17, scope: !862)
!870 = !DILocation(line: 424, column: 4, scope: !768)
!871 = !DILocation(line: 426, column: 4, scope: !768)
!872 = !DILocation(line: 426, column: 10, scope: !768)
!873 = !DILocation(line: 426, column: 15, scope: !768)
!874 = !DILocation(line: 427, column: 4, scope: !768)
!875 = !DILocation(line: 427, column: 10, scope: !768)
!876 = !DILocation(line: 427, column: 19, scope: !768)
!877 = !DILocation(line: 428, column: 8, scope: !878)
!878 = distinct !DILexicalBlock(scope: !768, file: !3, line: 428, column: 8)
!879 = !DILocation(line: 428, column: 13, scope: !878)
!880 = !DILocation(line: 428, column: 8, scope: !768)
!881 = !DILocation(line: 429, column: 5, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !3, line: 428, column: 19)
!883 = !DILocation(line: 429, column: 11, scope: !882)
!884 = !DILocation(line: 429, column: 17, scope: !882)
!885 = !DILocation(line: 430, column: 5, scope: !882)
!886 = !DILocation(line: 432, column: 8, scope: !887)
!887 = distinct !DILexicalBlock(scope: !768, file: !3, line: 432, column: 8)
!888 = !DILocation(line: 432, column: 14, scope: !887)
!889 = !DILocation(line: 432, column: 24, scope: !887)
!890 = !DILocation(line: 432, column: 8, scope: !768)
!891 = !DILocation(line: 433, column: 5, scope: !892)
!892 = distinct !DILexicalBlock(scope: !887, file: !3, line: 432, column: 30)
!893 = !DILocation(line: 433, column: 11, scope: !892)
!894 = !DILocation(line: 433, column: 17, scope: !892)
!895 = !DILocation(line: 434, column: 5, scope: !892)
!896 = !DILocation(line: 434, column: 11, scope: !892)
!897 = !DILocation(line: 434, column: 15, scope: !892)
!898 = !DILocation(line: 435, column: 5, scope: !892)
!899 = !DILocation(line: 435, column: 11, scope: !892)
!900 = !DILocation(line: 435, column: 22, scope: !892)
!901 = !DILocation(line: 436, column: 5, scope: !892)
!902 = !DILocation(line: 436, column: 11, scope: !892)
!903 = !DILocation(line: 436, column: 25, scope: !892)
!904 = !DILocation(line: 437, column: 4, scope: !892)
!905 = !DILocation(line: 438, column: 4, scope: !768)
!906 = !DILocation(line: 440, column: 4, scope: !768)
!907 = !DILocation(line: 440, column: 10, scope: !768)
!908 = !DILocation(line: 440, column: 24, scope: !768)
!909 = !DILocation(line: 441, column: 8, scope: !910)
!910 = distinct !DILexicalBlock(scope: !768, file: !3, line: 441, column: 8)
!911 = !DILocation(line: 441, column: 14, scope: !910)
!912 = !DILocation(line: 441, column: 24, scope: !910)
!913 = !DILocation(line: 441, column: 8, scope: !768)
!914 = !DILocation(line: 442, column: 5, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !3, line: 441, column: 30)
!916 = !DILocation(line: 442, column: 11, scope: !915)
!917 = !DILocation(line: 442, column: 17, scope: !915)
!918 = !DILocation(line: 443, column: 5, scope: !915)
!919 = !DILocation(line: 443, column: 11, scope: !915)
!920 = !DILocation(line: 443, column: 15, scope: !915)
!921 = !DILocation(line: 444, column: 5, scope: !915)
!922 = !DILocation(line: 444, column: 11, scope: !915)
!923 = !DILocation(line: 444, column: 22, scope: !915)
!924 = !DILocation(line: 445, column: 5, scope: !915)
!925 = !DILocation(line: 447, column: 4, scope: !768)
!926 = !DILocation(line: 447, column: 10, scope: !768)
!927 = !DILocation(line: 447, column: 15, scope: !768)
!928 = !DILocation(line: 448, column: 4, scope: !768)
!929 = !DILocation(line: 448, column: 10, scope: !768)
!930 = !DILocation(line: 448, column: 19, scope: !768)
!931 = !DILocation(line: 449, column: 8, scope: !932)
!932 = distinct !DILexicalBlock(scope: !768, file: !3, line: 449, column: 8)
!933 = !DILocation(line: 449, column: 14, scope: !932)
!934 = !DILocation(line: 449, column: 24, scope: !932)
!935 = !DILocation(line: 449, column: 8, scope: !768)
!936 = !DILocation(line: 450, column: 5, scope: !932)
!937 = !DILocation(line: 450, column: 11, scope: !932)
!938 = !DILocation(line: 450, column: 15, scope: !932)
!939 = !DILocation(line: 451, column: 4, scope: !768)
!940 = !DILocation(line: 451, column: 10, scope: !768)
!941 = !DILocation(line: 451, column: 20, scope: !768)
!942 = !DILocation(line: 452, column: 4, scope: !768)
!943 = !DILocation(line: 452, column: 10, scope: !768)
!944 = !DILocation(line: 452, column: 19, scope: !768)
!945 = !DILocation(line: 453, column: 8, scope: !946)
!946 = distinct !DILexicalBlock(scope: !768, file: !3, line: 453, column: 8)
!947 = !DILocation(line: 453, column: 14, scope: !946)
!948 = !DILocation(line: 453, column: 24, scope: !946)
!949 = !DILocation(line: 453, column: 8, scope: !768)
!950 = !DILocation(line: 454, column: 5, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !3, line: 453, column: 30)
!952 = !DILocation(line: 454, column: 11, scope: !951)
!953 = !DILocation(line: 454, column: 17, scope: !951)
!954 = !DILocation(line: 455, column: 5, scope: !951)
!955 = !DILocation(line: 455, column: 11, scope: !951)
!956 = !DILocation(line: 455, column: 15, scope: !951)
!957 = !DILocation(line: 456, column: 5, scope: !951)
!958 = !DILocation(line: 456, column: 11, scope: !951)
!959 = !DILocation(line: 456, column: 22, scope: !951)
!960 = !DILocation(line: 457, column: 4, scope: !951)
!961 = !DILocation(line: 458, column: 4, scope: !768)
!962 = !DILocation(line: 460, column: 4, scope: !768)
!963 = !DILocation(line: 460, column: 10, scope: !768)
!964 = !DILocation(line: 460, column: 15, scope: !768)
!965 = !DILocation(line: 461, column: 4, scope: !768)
!966 = !DILocation(line: 461, column: 10, scope: !768)
!967 = !DILocation(line: 461, column: 19, scope: !768)
!968 = !DILocation(line: 462, column: 8, scope: !969)
!969 = distinct !DILexicalBlock(scope: !768, file: !3, line: 462, column: 8)
!970 = !DILocation(line: 462, column: 14, scope: !969)
!971 = !DILocation(line: 462, column: 25, scope: !969)
!972 = !DILocation(line: 462, column: 8, scope: !768)
!973 = !DILocation(line: 463, column: 5, scope: !974)
!974 = distinct !DILexicalBlock(scope: !969, file: !3, line: 462, column: 31)
!975 = !DILocation(line: 463, column: 11, scope: !974)
!976 = !DILocation(line: 463, column: 22, scope: !974)
!977 = !DILocation(line: 464, column: 5, scope: !974)
!978 = !DILocation(line: 466, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !768, file: !3, line: 466, column: 8)
!980 = !DILocation(line: 466, column: 14, scope: !979)
!981 = !DILocation(line: 466, column: 24, scope: !979)
!982 = !DILocation(line: 466, column: 8, scope: !768)
!983 = !DILocation(line: 467, column: 32, scope: !979)
!984 = !DILocation(line: 467, column: 38, scope: !979)
!985 = !DILocation(line: 468, column: 11, scope: !979)
!986 = !DILocation(line: 468, column: 17, scope: !979)
!987 = !DILocation(line: 467, column: 17, scope: !979)
!988 = !DILocation(line: 467, column: 5, scope: !979)
!989 = !DILocation(line: 467, column: 11, scope: !979)
!990 = !DILocation(line: 467, column: 15, scope: !979)
!991 = !DILocation(line: 469, column: 8, scope: !992)
!992 = distinct !DILexicalBlock(scope: !768, file: !3, line: 469, column: 8)
!993 = !DILocation(line: 469, column: 14, scope: !992)
!994 = !DILocation(line: 469, column: 24, scope: !992)
!995 = !DILocation(line: 469, column: 8, scope: !768)
!996 = !DILocation(line: 470, column: 5, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !3, line: 469, column: 32)
!998 = !DILocation(line: 470, column: 11, scope: !997)
!999 = !DILocation(line: 470, column: 21, scope: !997)
!1000 = !DILocation(line: 471, column: 5, scope: !997)
!1001 = !DILocation(line: 471, column: 11, scope: !997)
!1002 = !DILocation(line: 471, column: 15, scope: !997)
!1003 = !DILocation(line: 472, column: 5, scope: !997)
!1004 = !DILocation(line: 472, column: 11, scope: !997)
!1005 = !DILocation(line: 472, column: 21, scope: !997)
!1006 = !DILocation(line: 473, column: 5, scope: !997)
!1007 = !DILocation(line: 473, column: 11, scope: !997)
!1008 = !DILocation(line: 473, column: 20, scope: !997)
!1009 = !DILocation(line: 474, column: 4, scope: !997)
!1010 = !DILocation(line: 475, column: 5, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !992, file: !3, line: 474, column: 11)
!1012 = !DILocation(line: 475, column: 11, scope: !1011)
!1013 = !DILocation(line: 475, column: 22, scope: !1011)
!1014 = !DILocation(line: 476, column: 5, scope: !1011)
!1015 = !DILocation(line: 476, column: 11, scope: !1011)
!1016 = !DILocation(line: 476, column: 21, scope: !1011)
!1017 = !DILocation(line: 477, column: 5, scope: !1011)
!1018 = !DILocation(line: 477, column: 11, scope: !1011)
!1019 = !DILocation(line: 477, column: 20, scope: !1011)
!1020 = !DILocation(line: 479, column: 4, scope: !768)
!1021 = !DILocation(line: 481, column: 4, scope: !768)
!1022 = !DILocation(line: 481, column: 10, scope: !768)
!1023 = !DILocation(line: 481, column: 15, scope: !768)
!1024 = !DILocation(line: 482, column: 4, scope: !768)
!1025 = !DILocation(line: 482, column: 10, scope: !768)
!1026 = !DILocation(line: 482, column: 19, scope: !768)
!1027 = !DILocation(line: 483, column: 8, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !768, file: !3, line: 483, column: 8)
!1029 = !DILocation(line: 483, column: 14, scope: !1028)
!1030 = !DILocation(line: 483, column: 25, scope: !1028)
!1031 = !DILocation(line: 483, column: 8, scope: !768)
!1032 = !DILocation(line: 484, column: 5, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 483, column: 31)
!1034 = !DILocation(line: 484, column: 11, scope: !1033)
!1035 = !DILocation(line: 484, column: 22, scope: !1033)
!1036 = !DILocation(line: 485, column: 5, scope: !1033)
!1037 = !DILocation(line: 487, column: 8, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !768, file: !3, line: 487, column: 8)
!1039 = !DILocation(line: 487, column: 14, scope: !1038)
!1040 = !DILocation(line: 487, column: 24, scope: !1038)
!1041 = !DILocation(line: 487, column: 8, scope: !768)
!1042 = !DILocation(line: 488, column: 5, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 487, column: 32)
!1044 = !DILocation(line: 488, column: 11, scope: !1043)
!1045 = !DILocation(line: 488, column: 21, scope: !1043)
!1046 = !DILocation(line: 489, column: 5, scope: !1043)
!1047 = !DILocation(line: 489, column: 11, scope: !1043)
!1048 = !DILocation(line: 489, column: 15, scope: !1043)
!1049 = !DILocation(line: 490, column: 5, scope: !1043)
!1050 = !DILocation(line: 490, column: 11, scope: !1043)
!1051 = !DILocation(line: 490, column: 21, scope: !1043)
!1052 = !DILocation(line: 491, column: 5, scope: !1043)
!1053 = !DILocation(line: 491, column: 11, scope: !1043)
!1054 = !DILocation(line: 491, column: 20, scope: !1043)
!1055 = !DILocation(line: 492, column: 4, scope: !1043)
!1056 = !DILocation(line: 493, column: 5, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 492, column: 11)
!1058 = !DILocation(line: 493, column: 11, scope: !1057)
!1059 = !DILocation(line: 493, column: 22, scope: !1057)
!1060 = !DILocation(line: 494, column: 5, scope: !1057)
!1061 = !DILocation(line: 494, column: 11, scope: !1057)
!1062 = !DILocation(line: 494, column: 21, scope: !1057)
!1063 = !DILocation(line: 495, column: 5, scope: !1057)
!1064 = !DILocation(line: 495, column: 11, scope: !1057)
!1065 = !DILocation(line: 495, column: 20, scope: !1057)
!1066 = !DILocation(line: 497, column: 8, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !768, file: !3, line: 497, column: 8)
!1068 = !DILocation(line: 497, column: 14, scope: !1067)
!1069 = !DILocation(line: 497, column: 24, scope: !1067)
!1070 = !DILocation(line: 497, column: 8, scope: !768)
!1071 = !DILocation(line: 498, column: 24, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 497, column: 30)
!1073 = !DILocation(line: 498, column: 30, scope: !1072)
!1074 = !DILocation(line: 498, column: 34, scope: !1072)
!1075 = !DILocation(line: 498, column: 23, scope: !1072)
!1076 = !DILocation(line: 498, column: 5, scope: !1072)
!1077 = !DILocation(line: 498, column: 11, scope: !1072)
!1078 = !DILocation(line: 498, column: 21, scope: !1072)
!1079 = !DILocation(line: 499, column: 5, scope: !1072)
!1080 = !DILocation(line: 499, column: 11, scope: !1072)
!1081 = !DILocation(line: 499, column: 17, scope: !1072)
!1082 = !DILocation(line: 500, column: 5, scope: !1072)
!1083 = !DILocation(line: 500, column: 11, scope: !1072)
!1084 = !DILocation(line: 500, column: 21, scope: !1072)
!1085 = !DILocation(line: 501, column: 4, scope: !1072)
!1086 = !DILocation(line: 502, column: 4, scope: !768)
!1087 = !DILocation(line: 504, column: 4, scope: !768)
!1088 = !DILocation(line: 504, column: 10, scope: !768)
!1089 = !DILocation(line: 504, column: 15, scope: !768)
!1090 = !DILocation(line: 505, column: 4, scope: !768)
!1091 = !DILocation(line: 505, column: 10, scope: !768)
!1092 = !DILocation(line: 505, column: 19, scope: !768)
!1093 = !DILocation(line: 506, column: 8, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !768, file: !3, line: 506, column: 8)
!1095 = !DILocation(line: 506, column: 14, scope: !1094)
!1096 = !DILocation(line: 506, column: 25, scope: !1094)
!1097 = !DILocation(line: 506, column: 8, scope: !768)
!1098 = !DILocation(line: 507, column: 5, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 506, column: 31)
!1100 = !DILocation(line: 507, column: 11, scope: !1099)
!1101 = !DILocation(line: 507, column: 22, scope: !1099)
!1102 = !DILocation(line: 508, column: 5, scope: !1099)
!1103 = !DILocation(line: 510, column: 8, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !768, file: !3, line: 510, column: 8)
!1105 = !DILocation(line: 510, column: 14, scope: !1104)
!1106 = !DILocation(line: 510, column: 24, scope: !1104)
!1107 = !DILocation(line: 510, column: 8, scope: !768)
!1108 = !DILocation(line: 511, column: 5, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 510, column: 32)
!1110 = !DILocation(line: 511, column: 11, scope: !1109)
!1111 = !DILocation(line: 511, column: 21, scope: !1109)
!1112 = !DILocation(line: 512, column: 5, scope: !1109)
!1113 = !DILocation(line: 512, column: 11, scope: !1109)
!1114 = !DILocation(line: 512, column: 15, scope: !1109)
!1115 = !DILocation(line: 513, column: 5, scope: !1109)
!1116 = !DILocation(line: 513, column: 11, scope: !1109)
!1117 = !DILocation(line: 513, column: 21, scope: !1109)
!1118 = !DILocation(line: 514, column: 5, scope: !1109)
!1119 = !DILocation(line: 514, column: 11, scope: !1109)
!1120 = !DILocation(line: 514, column: 20, scope: !1109)
!1121 = !DILocation(line: 515, column: 4, scope: !1109)
!1122 = !DILocation(line: 516, column: 5, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 515, column: 11)
!1124 = !DILocation(line: 516, column: 11, scope: !1123)
!1125 = !DILocation(line: 516, column: 22, scope: !1123)
!1126 = !DILocation(line: 517, column: 5, scope: !1123)
!1127 = !DILocation(line: 517, column: 11, scope: !1123)
!1128 = !DILocation(line: 517, column: 21, scope: !1123)
!1129 = !DILocation(line: 518, column: 5, scope: !1123)
!1130 = !DILocation(line: 518, column: 11, scope: !1123)
!1131 = !DILocation(line: 518, column: 20, scope: !1123)
!1132 = !DILocation(line: 520, column: 8, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !768, file: !3, line: 520, column: 8)
!1134 = !DILocation(line: 520, column: 14, scope: !1133)
!1135 = !DILocation(line: 520, column: 24, scope: !1133)
!1136 = !DILocation(line: 520, column: 8, scope: !768)
!1137 = !DILocation(line: 521, column: 5, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 520, column: 30)
!1139 = !DILocation(line: 521, column: 11, scope: !1138)
!1140 = !DILocation(line: 521, column: 21, scope: !1138)
!1141 = !DILocation(line: 522, column: 5, scope: !1138)
!1142 = !DILocation(line: 522, column: 11, scope: !1138)
!1143 = !DILocation(line: 522, column: 17, scope: !1138)
!1144 = !DILocation(line: 523, column: 5, scope: !1138)
!1145 = !DILocation(line: 523, column: 11, scope: !1138)
!1146 = !DILocation(line: 523, column: 21, scope: !1138)
!1147 = !DILocation(line: 524, column: 4, scope: !1138)
!1148 = !DILocation(line: 525, column: 4, scope: !768)
!1149 = !DILocation(line: 527, column: 4, scope: !768)
!1150 = !DILocation(line: 527, column: 10, scope: !768)
!1151 = !DILocation(line: 527, column: 15, scope: !768)
!1152 = !DILocation(line: 528, column: 4, scope: !768)
!1153 = !DILocation(line: 528, column: 10, scope: !768)
!1154 = !DILocation(line: 528, column: 19, scope: !768)
!1155 = !DILocation(line: 529, column: 8, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !768, file: !3, line: 529, column: 8)
!1157 = !DILocation(line: 529, column: 14, scope: !1156)
!1158 = !DILocation(line: 529, column: 25, scope: !1156)
!1159 = !DILocation(line: 529, column: 8, scope: !768)
!1160 = !DILocation(line: 530, column: 5, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 529, column: 31)
!1162 = !DILocation(line: 530, column: 11, scope: !1161)
!1163 = !DILocation(line: 530, column: 22, scope: !1161)
!1164 = !DILocation(line: 531, column: 5, scope: !1161)
!1165 = !DILocation(line: 533, column: 8, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !768, file: !3, line: 533, column: 8)
!1167 = !DILocation(line: 533, column: 14, scope: !1166)
!1168 = !DILocation(line: 533, column: 24, scope: !1166)
!1169 = !DILocation(line: 533, column: 8, scope: !768)
!1170 = !DILocation(line: 534, column: 5, scope: !1166)
!1171 = !DILocation(line: 534, column: 11, scope: !1166)
!1172 = !DILocation(line: 534, column: 15, scope: !1166)
!1173 = !DILocation(line: 535, column: 4, scope: !768)
!1174 = !DILocation(line: 535, column: 10, scope: !768)
!1175 = !DILocation(line: 535, column: 20, scope: !768)
!1176 = !DILocation(line: 536, column: 4, scope: !768)
!1177 = !DILocation(line: 536, column: 10, scope: !768)
!1178 = !DILocation(line: 536, column: 19, scope: !768)
!1179 = !DILocation(line: 537, column: 8, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !768, file: !3, line: 537, column: 8)
!1181 = !DILocation(line: 537, column: 14, scope: !1180)
!1182 = !DILocation(line: 537, column: 24, scope: !1180)
!1183 = !DILocation(line: 537, column: 8, scope: !768)
!1184 = !DILocation(line: 539, column: 23, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 537, column: 30)
!1186 = !DILocation(line: 539, column: 29, scope: !1185)
!1187 = !DILocation(line: 539, column: 6, scope: !1185)
!1188 = !DILocation(line: 538, column: 5, scope: !1185)
!1189 = !DILocation(line: 538, column: 11, scope: !1185)
!1190 = !DILocation(line: 538, column: 19, scope: !1185)
!1191 = !DILocation(line: 540, column: 9, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 540, column: 9)
!1193 = !DILocation(line: 540, column: 15, scope: !1192)
!1194 = !DILocation(line: 540, column: 9, scope: !1185)
!1195 = !DILocation(line: 541, column: 6, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 540, column: 25)
!1197 = !DILocation(line: 541, column: 12, scope: !1196)
!1198 = !DILocation(line: 541, column: 20, scope: !1196)
!1199 = !DILocation(line: 542, column: 6, scope: !1196)
!1200 = !DILocation(line: 542, column: 12, scope: !1196)
!1201 = !DILocation(line: 542, column: 18, scope: !1196)
!1202 = !DILocation(line: 543, column: 26, scope: !1196)
!1203 = !DILocation(line: 543, column: 32, scope: !1196)
!1204 = !DILocation(line: 543, column: 25, scope: !1196)
!1205 = !DILocation(line: 543, column: 6, scope: !1196)
!1206 = !DILocation(line: 543, column: 12, scope: !1196)
!1207 = !DILocation(line: 543, column: 22, scope: !1196)
!1208 = !DILocation(line: 544, column: 10, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 544, column: 10)
!1210 = !DILocation(line: 544, column: 16, scope: !1209)
!1211 = !DILocation(line: 544, column: 26, scope: !1209)
!1212 = !DILocation(line: 544, column: 10, scope: !1196)
!1213 = !DILocation(line: 545, column: 7, scope: !1209)
!1214 = !DILocation(line: 545, column: 13, scope: !1209)
!1215 = !DILocation(line: 545, column: 19, scope: !1209)
!1216 = !DILocation(line: 547, column: 5, scope: !1196)
!1217 = !DILocation(line: 548, column: 11, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 548, column: 10)
!1219 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 547, column: 12)
!1220 = !DILocation(line: 548, column: 17, scope: !1218)
!1221 = !DILocation(line: 548, column: 10, scope: !1219)
!1222 = !DILocation(line: 549, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 548, column: 29)
!1224 = !DILocation(line: 549, column: 13, scope: !1223)
!1225 = !DILocation(line: 549, column: 19, scope: !1223)
!1226 = !DILocation(line: 551, column: 7, scope: !1223)
!1227 = !DILocation(line: 551, column: 13, scope: !1223)
!1228 = !DILocation(line: 551, column: 27, scope: !1223)
!1229 = !DILocation(line: 552, column: 6, scope: !1223)
!1230 = !DILocation(line: 553, column: 7, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 552, column: 13)
!1232 = !DILocation(line: 553, column: 13, scope: !1231)
!1233 = !DILocation(line: 553, column: 19, scope: !1231)
!1234 = !DILocation(line: 554, column: 7, scope: !1231)
!1235 = !DILocation(line: 554, column: 13, scope: !1231)
!1236 = !DILocation(line: 554, column: 27, scope: !1231)
!1237 = !DILocation(line: 557, column: 10, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 557, column: 10)
!1239 = !DILocation(line: 557, column: 16, scope: !1238)
!1240 = !DILocation(line: 557, column: 10, scope: !1219)
!1241 = !DILocation(line: 558, column: 13, scope: !1238)
!1242 = !DILocation(line: 558, column: 7, scope: !1238)
!1243 = !DILocation(line: 560, column: 4, scope: !1185)
!1244 = !DILocation(line: 561, column: 4, scope: !768)
!1245 = !DILocation(line: 563, column: 4, scope: !768)
!1246 = !DILocation(line: 563, column: 10, scope: !768)
!1247 = !DILocation(line: 563, column: 21, scope: !768)
!1248 = !DILocation(line: 564, column: 4, scope: !768)
!1249 = !DILocation(line: 564, column: 10, scope: !768)
!1250 = !DILocation(line: 564, column: 15, scope: !768)
!1251 = !DILocation(line: 565, column: 4, scope: !768)
!1252 = !DILocation(line: 565, column: 10, scope: !768)
!1253 = !DILocation(line: 565, column: 14, scope: !768)
!1254 = !DILocation(line: 566, column: 4, scope: !768)
!1255 = !DILocation(line: 566, column: 10, scope: !768)
!1256 = !DILocation(line: 566, column: 19, scope: !768)
!1257 = !DILocation(line: 567, column: 4, scope: !768)
!1258 = !DILocation(line: 567, column: 10, scope: !768)
!1259 = !DILocation(line: 567, column: 19, scope: !768)
!1260 = !DILocation(line: 568, column: 8, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !768, file: !3, line: 568, column: 8)
!1262 = !DILocation(line: 568, column: 14, scope: !1261)
!1263 = !DILocation(line: 568, column: 24, scope: !1261)
!1264 = !DILocation(line: 568, column: 8, scope: !768)
!1265 = !DILocation(line: 569, column: 5, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 568, column: 30)
!1267 = !DILocation(line: 569, column: 11, scope: !1266)
!1268 = !DILocation(line: 569, column: 17, scope: !1266)
!1269 = !DILocation(line: 570, column: 5, scope: !1266)
!1270 = !DILocation(line: 570, column: 11, scope: !1266)
!1271 = !DILocation(line: 570, column: 21, scope: !1266)
!1272 = !DILocation(line: 571, column: 4, scope: !1266)
!1273 = !DILocation(line: 572, column: 4, scope: !768)
!1274 = !DILocation(line: 574, column: 4, scope: !768)
!1275 = !DILocation(line: 574, column: 10, scope: !768)
!1276 = !DILocation(line: 574, column: 21, scope: !768)
!1277 = !DILocation(line: 575, column: 4, scope: !768)
!1278 = !DILocation(line: 575, column: 10, scope: !768)
!1279 = !DILocation(line: 575, column: 15, scope: !768)
!1280 = !DILocation(line: 576, column: 4, scope: !768)
!1281 = !DILocation(line: 576, column: 10, scope: !768)
!1282 = !DILocation(line: 576, column: 20, scope: !768)
!1283 = !DILocation(line: 577, column: 8, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !768, file: !3, line: 577, column: 8)
!1285 = !DILocation(line: 577, column: 14, scope: !1284)
!1286 = !DILocation(line: 577, column: 24, scope: !1284)
!1287 = !DILocation(line: 577, column: 8, scope: !768)
!1288 = !DILocation(line: 578, column: 5, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 577, column: 30)
!1290 = !DILocation(line: 578, column: 11, scope: !1289)
!1291 = !DILocation(line: 578, column: 16, scope: !1289)
!1292 = !DILocation(line: 579, column: 5, scope: !1289)
!1293 = !DILocation(line: 579, column: 11, scope: !1289)
!1294 = !DILocation(line: 579, column: 17, scope: !1289)
!1295 = !DILocation(line: 580, column: 4, scope: !1289)
!1296 = !DILocation(line: 582, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 582, column: 9)
!1298 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 580, column: 11)
!1299 = !DILocation(line: 582, column: 15, scope: !1297)
!1300 = !DILocation(line: 582, column: 29, scope: !1297)
!1301 = !DILocation(line: 582, column: 9, scope: !1298)
!1302 = !DILocalVariable(name: "__x", scope: !1303, file: !3, line: 583, type: !30)
!1303 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 583, column: 15)
!1304 = !DILocation(line: 583, column: 15, scope: !1303)
!1305 = !DILocalVariable(name: "___x", scope: !1306, file: !3, line: 583, type: !30)
!1306 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 583, column: 15)
!1307 = !DILocation(line: 583, column: 15, scope: !1306)
!1308 = !DILocation(line: 583, column: 15, scope: !1297)
!1309 = !DILocation(line: 583, column: 10, scope: !1297)
!1310 = !DILocation(line: 583, column: 13, scope: !1297)
!1311 = !DILocation(line: 583, column: 6, scope: !1297)
!1312 = !DILocation(line: 585, column: 15, scope: !1297)
!1313 = !DILocation(line: 585, column: 21, scope: !1297)
!1314 = !DILocation(line: 585, column: 10, scope: !1297)
!1315 = !DILocation(line: 585, column: 13, scope: !1297)
!1316 = !DILocation(line: 586, column: 5, scope: !1298)
!1317 = !DILocation(line: 586, column: 11, scope: !1298)
!1318 = !DILocation(line: 586, column: 21, scope: !1298)
!1319 = !DILocation(line: 587, column: 5, scope: !1298)
!1320 = !DILocation(line: 587, column: 11, scope: !1298)
!1321 = !DILocation(line: 587, column: 21, scope: !1298)
!1322 = !DILocation(line: 588, column: 8, scope: !1298)
!1323 = !DILocation(line: 589, column: 11, scope: !1298)
!1324 = !DILocation(line: 591, column: 4, scope: !768)
!1325 = !DILocation(line: 593, column: 4, scope: !768)
!1326 = !DILocation(line: 595, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !695, file: !3, line: 595, column: 7)
!1328 = !DILocation(line: 595, column: 13, scope: !1327)
!1329 = !DILocation(line: 595, column: 7, scope: !695)
!1330 = !DILocation(line: 596, column: 8, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 596, column: 8)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 595, column: 25)
!1333 = !DILocation(line: 596, column: 14, scope: !1331)
!1334 = !DILocation(line: 596, column: 24, scope: !1331)
!1335 = !DILocation(line: 596, column: 8, scope: !1332)
!1336 = !DILocation(line: 597, column: 5, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 596, column: 30)
!1338 = !DILocation(line: 597, column: 11, scope: !1337)
!1339 = !DILocation(line: 597, column: 16, scope: !1337)
!1340 = !DILocation(line: 598, column: 5, scope: !1337)
!1341 = !DILocation(line: 598, column: 11, scope: !1337)
!1342 = !DILocation(line: 598, column: 15, scope: !1337)
!1343 = !DILocation(line: 599, column: 5, scope: !1337)
!1344 = !DILocation(line: 599, column: 11, scope: !1337)
!1345 = !DILocation(line: 599, column: 20, scope: !1337)
!1346 = !DILocation(line: 600, column: 4, scope: !1337)
!1347 = !DILocation(line: 601, column: 3, scope: !1332)
!1348 = !DILocation(line: 602, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !695, file: !3, line: 602, column: 7)
!1350 = !DILocation(line: 602, column: 13, scope: !1349)
!1351 = !DILocation(line: 602, column: 23, scope: !1349)
!1352 = !DILocation(line: 602, column: 7, scope: !695)
!1353 = !DILocation(line: 604, column: 8, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 604, column: 8)
!1355 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 602, column: 29)
!1356 = !DILocation(line: 604, column: 14, scope: !1354)
!1357 = !DILocation(line: 604, column: 28, scope: !1354)
!1358 = !DILocation(line: 604, column: 8, scope: !1355)
!1359 = !DILocalVariable(name: "__x", scope: !1360, file: !3, line: 605, type: !30)
!1360 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 605, column: 14)
!1361 = !DILocation(line: 605, column: 14, scope: !1360)
!1362 = !DILocalVariable(name: "___x", scope: !1363, file: !3, line: 605, type: !30)
!1363 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 605, column: 14)
!1364 = !DILocation(line: 605, column: 14, scope: !1363)
!1365 = !DILocation(line: 605, column: 14, scope: !1354)
!1366 = !DILocation(line: 605, column: 9, scope: !1354)
!1367 = !DILocation(line: 605, column: 12, scope: !1354)
!1368 = !DILocation(line: 605, column: 5, scope: !1354)
!1369 = !DILocation(line: 607, column: 14, scope: !1354)
!1370 = !DILocation(line: 607, column: 20, scope: !1354)
!1371 = !DILocation(line: 607, column: 9, scope: !1354)
!1372 = !DILocation(line: 607, column: 12, scope: !1354)
!1373 = !DILocation(line: 608, column: 4, scope: !1355)
!1374 = !DILocation(line: 608, column: 10, scope: !1355)
!1375 = !DILocation(line: 608, column: 20, scope: !1355)
!1376 = !DILocation(line: 609, column: 7, scope: !1355)
!1377 = !DILocation(line: 610, column: 9, scope: !1355)
!1378 = !DILocation(line: 611, column: 3, scope: !1355)
!1379 = distinct !{!1379, !690, !1380}
!1380 = !DILocation(line: 612, column: 2, scope: !101)
!1381 = !DILocation(line: 613, column: 12, scope: !101)
!1382 = !DILocation(line: 613, column: 3, scope: !101)
!1383 = !DILocation(line: 613, column: 9, scope: !101)
!1384 = !DILocation(line: 615, column: 9, scope: !101)
!1385 = !DILocation(line: 615, column: 2, scope: !101)
!1386 = !DILocation(line: 616, column: 1, scope: !101)
