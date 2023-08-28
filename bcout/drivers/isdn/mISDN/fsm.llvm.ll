; ModuleID = '../bcout/drivers/isdn/mISDN/fsm.llvm.bc'
source_filename = "drivers/isdn/mISDN/fsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.Fsm = type { void (%struct.FsmInst*, i32, i8*)**, i32, i32, i8**, i8** }
%struct.FsmInst = type { %struct.Fsm*, i32, i32, i8*, i32, void (%struct.FsmInst*, i8*, ...)* }
%struct.FsmNode = type { i32, i32, void (%struct.FsmInst*, i32, i8*)* }
%struct.FsmTimer = type { %struct.FsmInst*, %struct.timer_list, i32, i8* }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.lock_class_key = type {}

@.str = private unnamed_addr constant [50 x i8] c"\013mISDN_FsmNew Error: %d st(%ld/%ld) ev(%ld/%ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\013mISDN_FsmEvent Error st(%ld/%ld) ev(%d/%ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"State %s Event %s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"State %s Event %s no action\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ChangeState %s\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"\014mISDN_FsmAddTimer: timer already active!\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"mISDN_FsmAddTimer already active!\00", align 1
@jiffies = external dso_local global i64, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mISDN_FsmNew(%struct.Fsm* %fsm, %struct.FsmNode* %fnlist, i32 %fncount) #0 !dbg !87 {
entry:
  %retval = alloca i32, align 4
  %fsm.addr = alloca %struct.Fsm*, align 8
  %fnlist.addr = alloca %struct.FsmNode*, align 8
  %fncount.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Fsm* %fsm, %struct.Fsm** %fsm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Fsm** %fsm.addr, metadata !97, metadata !DIExpression()), !dbg !98
  store %struct.FsmNode* %fnlist, %struct.FsmNode** %fnlist.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.FsmNode** %fnlist.addr, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 %fncount, i32* %fncount.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fncount.addr, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = load %struct.Fsm*, %struct.Fsm** %fsm.addr, align 8, !dbg !105
  %state_count = getelementptr inbounds %struct.Fsm, %struct.Fsm* %0, i32 0, i32 1, !dbg !106
  %1 = load i32, i32* %state_count, align 8, !dbg !106
  %conv = sext i32 %1 to i64, !dbg !105
  %2 = load %struct.Fsm*, %struct.Fsm** %fsm.addr, align 8, !dbg !107
  %event_count = getelementptr inbounds %struct.Fsm, %struct.Fsm* %2, i32 0, i32 2, !dbg !108
  %3 = load i32, i32* %event_count, align 4, !dbg !108
  %conv1 = sext i32 %3 to i64, !dbg !107
  %call = call i64 @array3_size(i64 8, i64 %conv, i64 %conv1) #7, !dbg !109
  %call2 = call i8* @kzalloc(i64 %call, i32 3264) #7, !dbg !110
  %4 = bitcast i8* %call2 to void (%struct.FsmInst*, i32, i8*)**, !dbg !110
  %5 = load %struct.Fsm*, %struct.Fsm** %fsm.addr, align 8, !dbg !111
  %jumpmatrix = getelementptr inbounds %struct.Fsm, %struct.Fsm* %5, i32 0, i32 0, !dbg !112
  store void (%struct.FsmInst*, i32, i8*)** %4, void (%struct.FsmInst*, i32, i8*)*** %jumpmatrix, align 8, !dbg !113
  %6 = load %struct.Fsm*, %struct.Fsm** %fsm.addr, align 8, !dbg !114
  %jumpmatrix3 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %6, i32 0, i32 0, !dbg !116
  %7 = load void (%struct.FsmInst*, i32, i8*)**, void (%struct.FsmInst*, i32, i8*)*** %jumpmatrix3, align 8, !dbg !116
  %cmp = icmp eq void (%struct.FsmInst*, i32, i8*)** %7, null, !dbg !117
  br i1 %cmp, label %if.then, label %if.end, !dbg !118

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !119
  br label %return, !dbg !119

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !120
  br label %for.cond, !dbg !122

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !123
  %9 = load i32, i32* %fncount.addr, align 4, !dbg !125
  %cmp5 = icmp slt i32 %8, %9, !dbg !126
  br i1 %cmp5, label %for.body, label %for.end, !dbg !127

for.body:                                         ; preds = %for.cond
  %10 = load %struct.FsmNode*, %struct.FsmNode** %fnlist.addr, align 8, !dbg !128
  %11 = load i32, i32* %i, align 4, !dbg !130
  %idxprom = sext i32 %11 to i64, !dbg !128
  %arrayidx = getelementptr %struct.FsmNode, %struct.FsmNode* %10, i64 %idxprom, !dbg !128
  %state = getelementptr inbounds %struct.FsmNode, %struct.FsmNode* %arrayidx, i32 0, i32 0, !dbg !131
  %12 = load i32, i32* %state, align 8, !dbg !131
  %13 = load %struct.Fsm*, %struct.Fsm** %fsm.addr, align 8, !dbg !132
  %state_count7 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %13, i32 0, i32 1, !dbg !133
  %14 = load i32, i32* %state_count7, align 8, !dbg !133
  %cmp8 = icmp sge i32 %12, %14, !dbg !134
  br i1 %cmp8, label %if.then15, label %lor.lhs.false, !dbg !135

lor.lhs.false:                                    ; preds = %for.body
  %15 = load %struct.FsmNode*, %struct.FsmNode** %fnlist.addr, align 8, !dbg !136
  %16 = load i32, i32* %i, align 4, !dbg !137
  %idxprom10 = sext i32 %16 to i64, !dbg !136
  %arrayidx11 = getelementptr %struct.FsmNode, %struct.FsmNode* %15, i64 %idxprom10, !dbg !136
  %event = getelementptr inbounds %struct.FsmNode, %struct.FsmNode* %arrayidx11, i32 0, i32 1, !dbg !138
  %17 = load i32, i32* %event, align 4, !dbg !138
  %18 = load %struct.Fsm*, %struct.Fsm** %fsm.addr, align 8, !dbg !139
  %event_count12 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %18, i32 0, i32 2, !dbg !140
  %19 = load i32, i32* %event_count12, align 4, !dbg !140
  %cmp13 = icmp sge i32 %17, %19, !dbg !141
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !142

if.then15:                                        ; preds = %lor.lhs.false, %for.body
  %20 = load i32, i32* %i, align 4, !dbg !143
  %21 = load %struct.FsmNode*, %struct.FsmNode** %fnlist.addr, align 8, !dbg !145
  %22 = load i32, i32* %i, align 4, !dbg !146
  %idxprom16 = sext i32 %22 to i64, !dbg !145
  %arrayidx17 = getelementptr %struct.FsmNode, %struct.FsmNode* %21, i64 %idxprom16, !dbg !145
  %state18 = getelementptr inbounds %struct.FsmNode, %struct.FsmNode* %arrayidx17, i32 0, i32 0, !dbg !147
  %23 = load i32, i32* %state18, align 8, !dbg !147
  %conv19 = sext i32 %23 to i64, !dbg !148
  %24 = load %struct.Fsm*, %struct.Fsm** %fsm.addr, align 8, !dbg !149
  %state_count20 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %24, i32 0, i32 1, !dbg !150
  %25 = load i32, i32* %state_count20, align 8, !dbg !150
  %conv21 = sext i32 %25 to i64, !dbg !151
  %26 = load %struct.FsmNode*, %struct.FsmNode** %fnlist.addr, align 8, !dbg !152
  %27 = load i32, i32* %i, align 4, !dbg !153
  %idxprom22 = sext i32 %27 to i64, !dbg !152
  %arrayidx23 = getelementptr %struct.FsmNode, %struct.FsmNode* %26, i64 %idxprom22, !dbg !152
  %event24 = getelementptr inbounds %struct.FsmNode, %struct.FsmNode* %arrayidx23, i32 0, i32 1, !dbg !154
  %28 = load i32, i32* %event24, align 4, !dbg !154
  %conv25 = sext i32 %28 to i64, !dbg !155
  %29 = load %struct.Fsm*, %struct.Fsm** %fsm.addr, align 8, !dbg !156
  %event_count26 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %29, i32 0, i32 2, !dbg !157
  %30 = load i32, i32* %event_count26, align 4, !dbg !157
  %conv27 = sext i32 %30 to i64, !dbg !158
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %conv19, i64 %conv21, i64 %conv25, i64 %conv27) #8, !dbg !159
  br label %if.end41, !dbg !160

if.else:                                          ; preds = %lor.lhs.false
  %31 = load %struct.FsmNode*, %struct.FsmNode** %fnlist.addr, align 8, !dbg !161
  %32 = load i32, i32* %i, align 4, !dbg !162
  %idxprom29 = sext i32 %32 to i64, !dbg !161
  %arrayidx30 = getelementptr %struct.FsmNode, %struct.FsmNode* %31, i64 %idxprom29, !dbg !161
  %routine = getelementptr inbounds %struct.FsmNode, %struct.FsmNode* %arrayidx30, i32 0, i32 2, !dbg !163
  %33 = load void (%struct.FsmInst*, i32, i8*)*, void (%struct.FsmInst*, i32, i8*)** %routine, align 8, !dbg !163
  %34 = load %struct.Fsm*, %struct.Fsm** %fsm.addr, align 8, !dbg !164
  %jumpmatrix31 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %34, i32 0, i32 0, !dbg !165
  %35 = load void (%struct.FsmInst*, i32, i8*)**, void (%struct.FsmInst*, i32, i8*)*** %jumpmatrix31, align 8, !dbg !165
  %36 = load %struct.Fsm*, %struct.Fsm** %fsm.addr, align 8, !dbg !166
  %state_count32 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %36, i32 0, i32 1, !dbg !167
  %37 = load i32, i32* %state_count32, align 8, !dbg !167
  %38 = load %struct.FsmNode*, %struct.FsmNode** %fnlist.addr, align 8, !dbg !168
  %39 = load i32, i32* %i, align 4, !dbg !169
  %idxprom33 = sext i32 %39 to i64, !dbg !168
  %arrayidx34 = getelementptr %struct.FsmNode, %struct.FsmNode* %38, i64 %idxprom33, !dbg !168
  %event35 = getelementptr inbounds %struct.FsmNode, %struct.FsmNode* %arrayidx34, i32 0, i32 1, !dbg !170
  %40 = load i32, i32* %event35, align 4, !dbg !170
  %mul = mul i32 %37, %40, !dbg !171
  %41 = load %struct.FsmNode*, %struct.FsmNode** %fnlist.addr, align 8, !dbg !172
  %42 = load i32, i32* %i, align 4, !dbg !173
  %idxprom36 = sext i32 %42 to i64, !dbg !172
  %arrayidx37 = getelementptr %struct.FsmNode, %struct.FsmNode* %41, i64 %idxprom36, !dbg !172
  %state38 = getelementptr inbounds %struct.FsmNode, %struct.FsmNode* %arrayidx37, i32 0, i32 0, !dbg !174
  %43 = load i32, i32* %state38, align 8, !dbg !174
  %add = add i32 %mul, %43, !dbg !175
  %idxprom39 = sext i32 %add to i64, !dbg !164
  %arrayidx40 = getelementptr void (%struct.FsmInst*, i32, i8*)*, void (%struct.FsmInst*, i32, i8*)** %35, i64 %idxprom39, !dbg !164
  store void (%struct.FsmInst*, i32, i8*)* %33, void (%struct.FsmInst*, i32, i8*)** %arrayidx40, align 8, !dbg !176
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then15
  br label %for.inc, !dbg !177

for.inc:                                          ; preds = %if.end41
  %44 = load i32, i32* %i, align 4, !dbg !178
  %inc = add i32 %44, 1, !dbg !178
  store i32 %inc, i32* %i, align 4, !dbg !178
  br label %for.cond, !dbg !179, !llvm.loop !180

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !182
  br label %return, !dbg !182

return:                                           ; preds = %for.end, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !183
  ret i32 %45, !dbg !183
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !184 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !187, metadata !DIExpression()), !dbg !194
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !200, metadata !DIExpression()), !dbg !201
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !202, metadata !DIExpression()), !dbg !203
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !204, metadata !DIExpression()), !dbg !205
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !206, metadata !DIExpression()), !dbg !210
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !212, metadata !DIExpression()), !dbg !216
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !218, metadata !DIExpression()), !dbg !222
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !227, metadata !DIExpression()), !dbg !228
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !229, metadata !DIExpression()), !dbg !230
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !231, metadata !DIExpression()), !dbg !232
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !233, metadata !DIExpression()), !dbg !234
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !235, metadata !DIExpression()), !dbg !236
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !237, metadata !DIExpression()), !dbg !238
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !239, metadata !DIExpression()), !dbg !240
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !241, metadata !DIExpression()), !dbg !242
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !243, metadata !DIExpression()), !dbg !244
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i64, i64* %size.addr, align 8, !dbg !247
  %1 = load i32, i32* %flags.addr, align 4, !dbg !248
  %or = or i32 %1, 256, !dbg !249
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !250
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !251
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !252

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !253
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !254
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !255

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !256
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !257
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !258
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !259
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !236
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !260
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !261
  %10 = load i32, i32* %order.i.i, align 4, !dbg !262
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !263
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !264
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !265
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !266
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !266
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !266
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !266
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !266
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !267
  br label %kmalloc.exit, !dbg !267

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !268
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !269
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !269
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !271

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !272
  br label %kmalloc_index.exit.i, !dbg !272

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !273
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !275
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !276

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !277
  br label %kmalloc_index.exit.i, !dbg !277

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !278
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !280
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !281

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !282
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !283
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !284

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !285
  br label %kmalloc_index.exit.i, !dbg !285

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !286
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !288
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !289

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !290
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !291
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !292

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !293
  br label %kmalloc_index.exit.i, !dbg !293

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !294
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !296
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !297

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !298
  br label %kmalloc_index.exit.i, !dbg !298

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !299
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !301
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !302

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !303
  br label %kmalloc_index.exit.i, !dbg !303

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !304
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !306
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !307

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !308
  br label %kmalloc_index.exit.i, !dbg !308

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !309
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !311
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !312

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !313
  br label %kmalloc_index.exit.i, !dbg !313

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !314
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !316
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !317

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !318
  br label %kmalloc_index.exit.i, !dbg !318

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !319
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !321
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !322

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !323
  br label %kmalloc_index.exit.i, !dbg !323

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !324
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !326
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !327

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !328
  br label %kmalloc_index.exit.i, !dbg !328

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !329
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !331
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !332

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !333
  br label %kmalloc_index.exit.i, !dbg !333

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !334
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !336
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !337

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !338
  br label %kmalloc_index.exit.i, !dbg !338

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !339
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !341
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !342

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !343
  br label %kmalloc_index.exit.i, !dbg !343

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !344
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !346
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !347

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !348
  br label %kmalloc_index.exit.i, !dbg !348

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !349
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !351
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !352

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !353
  br label %kmalloc_index.exit.i, !dbg !353

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !354
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !356
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !357

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !358
  br label %kmalloc_index.exit.i, !dbg !358

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !359
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !361
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !362

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !363
  br label %kmalloc_index.exit.i, !dbg !363

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !364
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !366
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !367

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !368
  br label %kmalloc_index.exit.i, !dbg !368

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !369
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !371
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !372

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !373
  br label %kmalloc_index.exit.i, !dbg !373

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !374
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !376
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !377

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !378
  br label %kmalloc_index.exit.i, !dbg !378

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !379
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !381
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !382

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !383
  br label %kmalloc_index.exit.i, !dbg !383

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !384
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !386
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !387

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !388
  br label %kmalloc_index.exit.i, !dbg !388

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !389
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !391
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !392

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !393
  br label %kmalloc_index.exit.i, !dbg !393

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !394
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !396
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !397

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !398
  br label %kmalloc_index.exit.i, !dbg !398

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !399
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !401
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !402

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !403
  br label %kmalloc_index.exit.i, !dbg !403

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !404
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !406
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !407

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !408
  br label %kmalloc_index.exit.i, !dbg !408

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !409
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !411
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !412

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !413
  br label %kmalloc_index.exit.i, !dbg !413

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !414, !srcloc !417
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !418, !srcloc !421
  unreachable, !dbg !422

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !423
  store i32 %45, i32* %index.i, align 4, !dbg !424
  %46 = load i32, i32* %index.i, align 4, !dbg !425
  %tobool.i = icmp ne i32 %46, 0, !dbg !425
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !427

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !428
  br label %kmalloc.exit, !dbg !428

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !429
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !430
  %and.i.i = and i32 %48, 17, !dbg !430
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !430
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !430
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !430
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !430
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !432

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !433
  br label %kmalloc_type.exit.i, !dbg !433

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !434
  %and2.i.i = and i32 %49, 1, !dbg !435
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !434
  %50 = zext i1 %tobool3.i.i to i64, !dbg !434
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !434
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !436
  br label %kmalloc_type.exit.i, !dbg !436

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !437
  %idxprom.i = zext i32 %51 to i64, !dbg !438
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !438
  %52 = load i32, i32* %index.i, align 4, !dbg !439
  %idxprom6.i = zext i32 %52 to i64, !dbg !438
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !438
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !438
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !440
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !441
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !442
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !443
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !444
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !444
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !444
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !444
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !444
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !205
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !445
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !446
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !447
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !448
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !449
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !450
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !451
  store i8* %62, i8** %retval.i, align 8, !dbg !452
  br label %kmalloc.exit, !dbg !452

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !453
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !454
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !455
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !455
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !455
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !455
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !455
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !456
  br label %kmalloc.exit, !dbg !456

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !457
  ret i8* %65, !dbg !458
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @array3_size(i64 %a, i64 %b, i64 %c) #0 !dbg !459 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  %__a3 = alloca i64, align 8
  %__b4 = alloca i64, align 8
  %__d5 = alloca i64*, align 8
  %tmp10 = alloca i8, align 1
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !463, metadata !DIExpression()), !dbg !464
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !465, metadata !DIExpression()), !dbg !466
  store i64 %c, i64* %c.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !467, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !471, metadata !DIExpression()), !dbg !474
  %0 = load i64, i64* %a.addr, align 8, !dbg !474
  store i64 %0, i64* %__a, align 8, !dbg !474
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !475, metadata !DIExpression()), !dbg !474
  %1 = load i64, i64* %b.addr, align 8, !dbg !474
  store i64 %1, i64* %__b, align 8, !dbg !474
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !476, metadata !DIExpression()), !dbg !474
  store i64* %bytes, i64** %__d, align 8, !dbg !474
  %cmp = icmp eq i64* %__a, %__b, !dbg !474
  %conv = zext i1 %cmp to i32, !dbg !474
  %2 = load i64*, i64** %__d, align 8, !dbg !474
  %cmp1 = icmp eq i64* %__a, %2, !dbg !474
  %conv2 = zext i1 %cmp1 to i32, !dbg !474
  %3 = load i64, i64* %__a, align 8, !dbg !474
  %4 = load i64, i64* %__b, align 8, !dbg !474
  %5 = load i64*, i64** %__d, align 8, !dbg !474
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !474
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !474
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !474
  store i64 %8, i64* %5, align 8, !dbg !474
  %frombool = zext i1 %7 to i8, !dbg !474
  store i8 %frombool, i8* %tmp, align 1, !dbg !474
  %9 = load i8, i8* %tmp, align 1, !dbg !474
  %tobool = trunc i8 %9 to i1, !dbg !474
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !478
  br i1 %call, label %if.then, label %if.end, !dbg !479

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !480
  br label %return, !dbg !480

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__a3, metadata !481, metadata !DIExpression()), !dbg !484
  %10 = load i64, i64* %bytes, align 8, !dbg !484
  store i64 %10, i64* %__a3, align 8, !dbg !484
  call void @llvm.dbg.declare(metadata i64* %__b4, metadata !485, metadata !DIExpression()), !dbg !484
  %11 = load i64, i64* %c.addr, align 8, !dbg !484
  store i64 %11, i64* %__b4, align 8, !dbg !484
  call void @llvm.dbg.declare(metadata i64** %__d5, metadata !486, metadata !DIExpression()), !dbg !484
  store i64* %bytes, i64** %__d5, align 8, !dbg !484
  %cmp6 = icmp eq i64* %__a3, %__b4, !dbg !484
  %conv7 = zext i1 %cmp6 to i32, !dbg !484
  %12 = load i64*, i64** %__d5, align 8, !dbg !484
  %cmp8 = icmp eq i64* %__a3, %12, !dbg !484
  %conv9 = zext i1 %cmp8 to i32, !dbg !484
  %13 = load i64, i64* %__a3, align 8, !dbg !484
  %14 = load i64, i64* %__b4, align 8, !dbg !484
  %15 = load i64*, i64** %__d5, align 8, !dbg !484
  %16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 %14), !dbg !484
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !484
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !484
  store i64 %18, i64* %15, align 8, !dbg !484
  %frombool11 = zext i1 %17 to i8, !dbg !484
  store i8 %frombool11, i8* %tmp10, align 1, !dbg !484
  %19 = load i8, i8* %tmp10, align 1, !dbg !484
  %tobool12 = trunc i8 %19 to i1, !dbg !484
  %call13 = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool12) #7, !dbg !487
  br i1 %call13, label %if.then14, label %if.end15, !dbg !488

if.then14:                                        ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !489
  br label %return, !dbg !489

if.end15:                                         ; preds = %if.end
  %20 = load i64, i64* %bytes, align 8, !dbg !490
  store i64 %20, i64* %retval, align 8, !dbg !491
  br label %return, !dbg !491

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !492
  ret i64 %21, !dbg !492
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mISDN_FsmFree(%struct.Fsm* %fsm) #0 !dbg !493 {
entry:
  %fsm.addr = alloca %struct.Fsm*, align 8
  store %struct.Fsm* %fsm, %struct.Fsm** %fsm.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Fsm** %fsm.addr, metadata !496, metadata !DIExpression()), !dbg !497
  %0 = load %struct.Fsm*, %struct.Fsm** %fsm.addr, align 8, !dbg !498
  %jumpmatrix = getelementptr inbounds %struct.Fsm, %struct.Fsm* %0, i32 0, i32 0, !dbg !499
  %1 = load void (%struct.FsmInst*, i32, i8*)**, void (%struct.FsmInst*, i32, i8*)*** %jumpmatrix, align 8, !dbg !499
  %2 = bitcast void (%struct.FsmInst*, i32, i8*)** %1 to i8*, !dbg !500
  call void @kfree(i8* %2) #7, !dbg !501
  ret void, !dbg !502
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mISDN_FsmEvent(%struct.FsmInst* %fi, i32 %event, i8* %arg) #0 !dbg !503 {
entry:
  %retval = alloca i32, align 4
  %fi.addr = alloca %struct.FsmInst*, align 8
  %event.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %r = alloca void (%struct.FsmInst*, i32, i8*)*, align 8
  store %struct.FsmInst* %fi, %struct.FsmInst** %fi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.FsmInst** %fi.addr, metadata !506, metadata !DIExpression()), !dbg !507
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !508, metadata !DIExpression()), !dbg !509
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata void (%struct.FsmInst*, i32, i8*)** %r, metadata !512, metadata !DIExpression()), !dbg !513
  %0 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !514
  %state = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %0, i32 0, i32 1, !dbg !516
  %1 = load i32, i32* %state, align 8, !dbg !516
  %2 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !517
  %fsm = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %2, i32 0, i32 0, !dbg !518
  %3 = load %struct.Fsm*, %struct.Fsm** %fsm, align 8, !dbg !518
  %state_count = getelementptr inbounds %struct.Fsm, %struct.Fsm* %3, i32 0, i32 1, !dbg !519
  %4 = load i32, i32* %state_count, align 8, !dbg !519
  %cmp = icmp sge i32 %1, %4, !dbg !520
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !521

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %event.addr, align 4, !dbg !522
  %6 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !523
  %fsm1 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %6, i32 0, i32 0, !dbg !524
  %7 = load %struct.Fsm*, %struct.Fsm** %fsm1, align 8, !dbg !524
  %event_count = getelementptr inbounds %struct.Fsm, %struct.Fsm* %7, i32 0, i32 2, !dbg !525
  %8 = load i32, i32* %event_count, align 4, !dbg !525
  %cmp2 = icmp sge i32 %5, %8, !dbg !526
  br i1 %cmp2, label %if.then, label %if.end, !dbg !527

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !528
  %state3 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %9, i32 0, i32 1, !dbg !530
  %10 = load i32, i32* %state3, align 8, !dbg !530
  %conv = sext i32 %10 to i64, !dbg !531
  %11 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !532
  %fsm4 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %11, i32 0, i32 0, !dbg !533
  %12 = load %struct.Fsm*, %struct.Fsm** %fsm4, align 8, !dbg !533
  %state_count5 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %12, i32 0, i32 1, !dbg !534
  %13 = load i32, i32* %state_count5, align 8, !dbg !534
  %conv6 = sext i32 %13 to i64, !dbg !535
  %14 = load i32, i32* %event.addr, align 4, !dbg !536
  %15 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !537
  %fsm7 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %15, i32 0, i32 0, !dbg !538
  %16 = load %struct.Fsm*, %struct.Fsm** %fsm7, align 8, !dbg !538
  %event_count8 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %16, i32 0, i32 2, !dbg !539
  %17 = load i32, i32* %event_count8, align 4, !dbg !539
  %conv9 = sext i32 %17 to i64, !dbg !540
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %conv, i64 %conv6, i32 %14, i64 %conv9) #8, !dbg !541
  store i32 1, i32* %retval, align 4, !dbg !542
  br label %return, !dbg !542

if.end:                                           ; preds = %lor.lhs.false
  %18 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !543
  %fsm10 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %18, i32 0, i32 0, !dbg !544
  %19 = load %struct.Fsm*, %struct.Fsm** %fsm10, align 8, !dbg !544
  %jumpmatrix = getelementptr inbounds %struct.Fsm, %struct.Fsm* %19, i32 0, i32 0, !dbg !545
  %20 = load void (%struct.FsmInst*, i32, i8*)**, void (%struct.FsmInst*, i32, i8*)*** %jumpmatrix, align 8, !dbg !545
  %21 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !546
  %fsm11 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %21, i32 0, i32 0, !dbg !547
  %22 = load %struct.Fsm*, %struct.Fsm** %fsm11, align 8, !dbg !547
  %state_count12 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %22, i32 0, i32 1, !dbg !548
  %23 = load i32, i32* %state_count12, align 8, !dbg !548
  %24 = load i32, i32* %event.addr, align 4, !dbg !549
  %mul = mul i32 %23, %24, !dbg !550
  %25 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !551
  %state13 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %25, i32 0, i32 1, !dbg !552
  %26 = load i32, i32* %state13, align 8, !dbg !552
  %add = add i32 %mul, %26, !dbg !553
  %idxprom = sext i32 %add to i64, !dbg !543
  %arrayidx = getelementptr void (%struct.FsmInst*, i32, i8*)*, void (%struct.FsmInst*, i32, i8*)** %20, i64 %idxprom, !dbg !543
  %27 = load void (%struct.FsmInst*, i32, i8*)*, void (%struct.FsmInst*, i32, i8*)** %arrayidx, align 8, !dbg !543
  store void (%struct.FsmInst*, i32, i8*)* %27, void (%struct.FsmInst*, i32, i8*)** %r, align 8, !dbg !554
  %28 = load void (%struct.FsmInst*, i32, i8*)*, void (%struct.FsmInst*, i32, i8*)** %r, align 8, !dbg !555
  %tobool = icmp ne void (%struct.FsmInst*, i32, i8*)* %28, null, !dbg !555
  br i1 %tobool, label %if.then14, label %if.else, !dbg !557

if.then14:                                        ; preds = %if.end
  %29 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !558
  %debug = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %29, i32 0, i32 2, !dbg !561
  %30 = load i32, i32* %debug, align 4, !dbg !561
  %tobool15 = icmp ne i32 %30, 0, !dbg !558
  br i1 %tobool15, label %if.then16, label %if.end24, !dbg !562

if.then16:                                        ; preds = %if.then14
  %31 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !563
  %printdebug = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %31, i32 0, i32 5, !dbg !564
  %32 = load void (%struct.FsmInst*, i8*, ...)*, void (%struct.FsmInst*, i8*, ...)** %printdebug, align 8, !dbg !564
  %33 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !565
  %34 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !566
  %fsm17 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %34, i32 0, i32 0, !dbg !567
  %35 = load %struct.Fsm*, %struct.Fsm** %fsm17, align 8, !dbg !567
  %strState = getelementptr inbounds %struct.Fsm, %struct.Fsm* %35, i32 0, i32 4, !dbg !568
  %36 = load i8**, i8*** %strState, align 8, !dbg !568
  %37 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !569
  %state18 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %37, i32 0, i32 1, !dbg !570
  %38 = load i32, i32* %state18, align 8, !dbg !570
  %idxprom19 = sext i32 %38 to i64, !dbg !566
  %arrayidx20 = getelementptr i8*, i8** %36, i64 %idxprom19, !dbg !566
  %39 = load i8*, i8** %arrayidx20, align 8, !dbg !566
  %40 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !571
  %fsm21 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %40, i32 0, i32 0, !dbg !572
  %41 = load %struct.Fsm*, %struct.Fsm** %fsm21, align 8, !dbg !572
  %strEvent = getelementptr inbounds %struct.Fsm, %struct.Fsm* %41, i32 0, i32 3, !dbg !573
  %42 = load i8**, i8*** %strEvent, align 8, !dbg !573
  %43 = load i32, i32* %event.addr, align 4, !dbg !574
  %idxprom22 = sext i32 %43 to i64, !dbg !571
  %arrayidx23 = getelementptr i8*, i8** %42, i64 %idxprom22, !dbg !571
  %44 = load i8*, i8** %arrayidx23, align 8, !dbg !571
  call void (%struct.FsmInst*, i8*, ...) %32(%struct.FsmInst* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* %44) #7, !dbg !563
  br label %if.end24, !dbg !563

if.end24:                                         ; preds = %if.then16, %if.then14
  %45 = load void (%struct.FsmInst*, i32, i8*)*, void (%struct.FsmInst*, i32, i8*)** %r, align 8, !dbg !575
  %46 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !576
  %47 = load i32, i32* %event.addr, align 4, !dbg !577
  %48 = load i8*, i8** %arg.addr, align 8, !dbg !578
  call void %45(%struct.FsmInst* %46, i32 %47, i8* %48) #7, !dbg !575
  store i32 0, i32* %retval, align 4, !dbg !579
  br label %return, !dbg !579

if.else:                                          ; preds = %if.end
  %49 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !580
  %debug25 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %49, i32 0, i32 2, !dbg !583
  %50 = load i32, i32* %debug25, align 4, !dbg !583
  %tobool26 = icmp ne i32 %50, 0, !dbg !580
  br i1 %tobool26, label %if.then27, label %if.end38, !dbg !584

if.then27:                                        ; preds = %if.else
  %51 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !585
  %printdebug28 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %51, i32 0, i32 5, !dbg !586
  %52 = load void (%struct.FsmInst*, i8*, ...)*, void (%struct.FsmInst*, i8*, ...)** %printdebug28, align 8, !dbg !586
  %53 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !587
  %54 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !588
  %fsm29 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %54, i32 0, i32 0, !dbg !589
  %55 = load %struct.Fsm*, %struct.Fsm** %fsm29, align 8, !dbg !589
  %strState30 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %55, i32 0, i32 4, !dbg !590
  %56 = load i8**, i8*** %strState30, align 8, !dbg !590
  %57 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !591
  %state31 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %57, i32 0, i32 1, !dbg !592
  %58 = load i32, i32* %state31, align 8, !dbg !592
  %idxprom32 = sext i32 %58 to i64, !dbg !588
  %arrayidx33 = getelementptr i8*, i8** %56, i64 %idxprom32, !dbg !588
  %59 = load i8*, i8** %arrayidx33, align 8, !dbg !588
  %60 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !593
  %fsm34 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %60, i32 0, i32 0, !dbg !594
  %61 = load %struct.Fsm*, %struct.Fsm** %fsm34, align 8, !dbg !594
  %strEvent35 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %61, i32 0, i32 3, !dbg !595
  %62 = load i8**, i8*** %strEvent35, align 8, !dbg !595
  %63 = load i32, i32* %event.addr, align 4, !dbg !596
  %idxprom36 = sext i32 %63 to i64, !dbg !593
  %arrayidx37 = getelementptr i8*, i8** %62, i64 %idxprom36, !dbg !593
  %64 = load i8*, i8** %arrayidx37, align 8, !dbg !593
  call void (%struct.FsmInst*, i8*, ...) %52(%struct.FsmInst* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %59, i8* %64) #7, !dbg !585
  br label %if.end38, !dbg !585

if.end38:                                         ; preds = %if.then27, %if.else
  store i32 1, i32* %retval, align 4, !dbg !597
  br label %return, !dbg !597

return:                                           ; preds = %if.end38, %if.end24, %if.then
  %65 = load i32, i32* %retval, align 4, !dbg !598
  ret i32 %65, !dbg !598
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mISDN_FsmChangeState(%struct.FsmInst* %fi, i32 %newstate) #0 !dbg !599 {
entry:
  %fi.addr = alloca %struct.FsmInst*, align 8
  %newstate.addr = alloca i32, align 4
  store %struct.FsmInst* %fi, %struct.FsmInst** %fi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.FsmInst** %fi.addr, metadata !602, metadata !DIExpression()), !dbg !603
  store i32 %newstate, i32* %newstate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %newstate.addr, metadata !604, metadata !DIExpression()), !dbg !605
  %0 = load i32, i32* %newstate.addr, align 4, !dbg !606
  %1 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !607
  %state = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %1, i32 0, i32 1, !dbg !608
  store i32 %0, i32* %state, align 8, !dbg !609
  %2 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !610
  %debug = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %2, i32 0, i32 2, !dbg !612
  %3 = load i32, i32* %debug, align 4, !dbg !612
  %tobool = icmp ne i32 %3, 0, !dbg !610
  br i1 %tobool, label %if.then, label %if.end, !dbg !613

if.then:                                          ; preds = %entry
  %4 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !614
  %printdebug = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %4, i32 0, i32 5, !dbg !615
  %5 = load void (%struct.FsmInst*, i8*, ...)*, void (%struct.FsmInst*, i8*, ...)** %printdebug, align 8, !dbg !615
  %6 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !616
  %7 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !617
  %fsm = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %7, i32 0, i32 0, !dbg !618
  %8 = load %struct.Fsm*, %struct.Fsm** %fsm, align 8, !dbg !618
  %strState = getelementptr inbounds %struct.Fsm, %struct.Fsm* %8, i32 0, i32 4, !dbg !619
  %9 = load i8**, i8*** %strState, align 8, !dbg !619
  %10 = load i32, i32* %newstate.addr, align 4, !dbg !620
  %idxprom = sext i32 %10 to i64, !dbg !617
  %arrayidx = getelementptr i8*, i8** %9, i64 %idxprom, !dbg !617
  %11 = load i8*, i8** %arrayidx, align 8, !dbg !617
  call void (%struct.FsmInst*, i8*, ...) %5(%struct.FsmInst* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %11) #7, !dbg !614
  br label %if.end, !dbg !614

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !621
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mISDN_FsmInitTimer(%struct.FsmInst* %fi, %struct.FsmTimer* %ft) #0 !dbg !622 {
entry:
  %fi.addr = alloca %struct.FsmInst*, align 8
  %ft.addr = alloca %struct.FsmTimer*, align 8
  store %struct.FsmInst* %fi, %struct.FsmInst** %fi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.FsmInst** %fi.addr, metadata !625, metadata !DIExpression()), !dbg !626
  store %struct.FsmTimer* %ft, %struct.FsmTimer** %ft.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.FsmTimer** %ft.addr, metadata !627, metadata !DIExpression()), !dbg !628
  %0 = load %struct.FsmInst*, %struct.FsmInst** %fi.addr, align 8, !dbg !629
  %1 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !630
  %fi1 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %1, i32 0, i32 0, !dbg !631
  store %struct.FsmInst* %0, %struct.FsmInst** %fi1, align 8, !dbg !632
  %2 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !633
  %tl = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %2, i32 0, i32 1, !dbg !633
  call void @init_timer_key(%struct.timer_list* %tl, void (%struct.timer_list*)* @FsmExpireTimer, i32 0, i8* null, %struct.lock_class_key* null) #7, !dbg !633
  ret void, !dbg !634
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @FsmExpireTimer(%struct.timer_list* %t) #0 !dbg !635 {
entry:
  %t.addr = alloca %struct.timer_list*, align 8
  %ft = alloca %struct.FsmTimer*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.FsmTimer*, align 8
  store %struct.timer_list* %t, %struct.timer_list** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timer_list** %t.addr, metadata !636, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.declare(metadata %struct.FsmTimer** %ft, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !640, metadata !DIExpression()), !dbg !642
  %0 = load %struct.timer_list*, %struct.timer_list** %t.addr, align 8, !dbg !642
  %1 = bitcast %struct.timer_list* %0 to i8*, !dbg !642
  store i8* %1, i8** %__mptr, align 8, !dbg !642
  br label %do.body, !dbg !642

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !643

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !642
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !642
  %3 = bitcast i8* %add.ptr to %struct.FsmTimer*, !dbg !642
  store %struct.FsmTimer* %3, %struct.FsmTimer** %tmp, align 8, !dbg !643
  %4 = load %struct.FsmTimer*, %struct.FsmTimer** %tmp, align 8, !dbg !642
  store %struct.FsmTimer* %4, %struct.FsmTimer** %ft, align 8, !dbg !639
  %5 = load %struct.FsmTimer*, %struct.FsmTimer** %ft, align 8, !dbg !645
  %fi = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %5, i32 0, i32 0, !dbg !646
  %6 = load %struct.FsmInst*, %struct.FsmInst** %fi, align 8, !dbg !646
  %7 = load %struct.FsmTimer*, %struct.FsmTimer** %ft, align 8, !dbg !647
  %event = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %7, i32 0, i32 2, !dbg !648
  %8 = load i32, i32* %event, align 8, !dbg !648
  %9 = load %struct.FsmTimer*, %struct.FsmTimer** %ft, align 8, !dbg !649
  %arg = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %9, i32 0, i32 3, !dbg !650
  %10 = load i8*, i8** %arg, align 8, !dbg !650
  %call = call i32 @mISDN_FsmEvent(%struct.FsmInst* %6, i32 %8, i8* %10) #7, !dbg !651
  ret void, !dbg !652
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mISDN_FsmDelTimer(%struct.FsmTimer* %ft, i32 %where) #0 !dbg !653 {
entry:
  %ft.addr = alloca %struct.FsmTimer*, align 8
  %where.addr = alloca i32, align 4
  store %struct.FsmTimer* %ft, %struct.FsmTimer** %ft.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.FsmTimer** %ft.addr, metadata !656, metadata !DIExpression()), !dbg !657
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !658, metadata !DIExpression()), !dbg !659
  %0 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !660
  %tl = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %0, i32 0, i32 1, !dbg !661
  %call = call i32 @del_timer(%struct.timer_list* %tl) #7, !dbg !662
  ret void, !dbg !663
}

; Function Attrs: noredzone
declare dso_local i32 @del_timer(%struct.timer_list*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mISDN_FsmAddTimer(%struct.FsmTimer* %ft, i32 %millisec, i32 %event, i8* %arg, i32 %where) #0 !dbg !664 {
entry:
  %retval = alloca i32, align 4
  %ft.addr = alloca %struct.FsmTimer*, align 8
  %millisec.addr = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %where.addr = alloca i32, align 4
  store %struct.FsmTimer* %ft, %struct.FsmTimer** %ft.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.FsmTimer** %ft.addr, metadata !667, metadata !DIExpression()), !dbg !668
  store i32 %millisec, i32* %millisec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %millisec.addr, metadata !669, metadata !DIExpression()), !dbg !670
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !671, metadata !DIExpression()), !dbg !672
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !673, metadata !DIExpression()), !dbg !674
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !675, metadata !DIExpression()), !dbg !676
  %0 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !677
  %tl = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %0, i32 0, i32 1, !dbg !679
  %call = call i32 @timer_pending(%struct.timer_list* %tl) #7, !dbg !680
  %tobool = icmp ne i32 %call, 0, !dbg !680
  br i1 %tobool, label %if.then, label %if.end6, !dbg !681

if.then:                                          ; preds = %entry
  %1 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !682
  %fi = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %1, i32 0, i32 0, !dbg !685
  %2 = load %struct.FsmInst*, %struct.FsmInst** %fi, align 8, !dbg !685
  %debug = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %2, i32 0, i32 2, !dbg !686
  %3 = load i32, i32* %debug, align 4, !dbg !686
  %tobool1 = icmp ne i32 %3, 0, !dbg !682
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !687

if.then2:                                         ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !688
  %4 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !690
  %fi4 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %4, i32 0, i32 0, !dbg !691
  %5 = load %struct.FsmInst*, %struct.FsmInst** %fi4, align 8, !dbg !691
  %printdebug = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %5, i32 0, i32 5, !dbg !692
  %6 = load void (%struct.FsmInst*, i8*, ...)*, void (%struct.FsmInst*, i8*, ...)** %printdebug, align 8, !dbg !692
  %7 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !693
  %fi5 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %7, i32 0, i32 0, !dbg !694
  %8 = load %struct.FsmInst*, %struct.FsmInst** %fi5, align 8, !dbg !694
  call void (%struct.FsmInst*, i8*, ...) %6(%struct.FsmInst* %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !690
  br label %if.end, !dbg !695

if.end:                                           ; preds = %if.then2, %if.then
  store i32 -1, i32* %retval, align 4, !dbg !696
  br label %return, !dbg !696

if.end6:                                          ; preds = %entry
  %9 = load i32, i32* %event.addr, align 4, !dbg !697
  %10 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !698
  %event7 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %10, i32 0, i32 2, !dbg !699
  store i32 %9, i32* %event7, align 8, !dbg !700
  %11 = load i8*, i8** %arg.addr, align 8, !dbg !701
  %12 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !702
  %arg8 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %12, i32 0, i32 3, !dbg !703
  store i8* %11, i8** %arg8, align 8, !dbg !704
  %13 = load volatile i64, i64* @jiffies, align 8, !dbg !705
  %14 = load i32, i32* %millisec.addr, align 4, !dbg !706
  %mul = mul i32 %14, 250, !dbg !707
  %div = sdiv i32 %mul, 1000, !dbg !708
  %conv = sext i32 %div to i64, !dbg !709
  %add = add i64 %13, %conv, !dbg !710
  %15 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !711
  %tl9 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %15, i32 0, i32 1, !dbg !712
  %expires = getelementptr inbounds %struct.timer_list, %struct.timer_list* %tl9, i32 0, i32 1, !dbg !713
  store i64 %add, i64* %expires, align 8, !dbg !714
  %16 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !715
  %tl10 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %16, i32 0, i32 1, !dbg !716
  call void @add_timer(%struct.timer_list* %tl10) #7, !dbg !717
  store i32 0, i32* %retval, align 4, !dbg !718
  br label %return, !dbg !718

return:                                           ; preds = %if.end6, %if.end
  %17 = load i32, i32* %retval, align 4, !dbg !719
  ret i32 %17, !dbg !719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @timer_pending(%struct.timer_list* %timer) #0 !dbg !720 {
entry:
  %timer.addr = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %timer, %struct.timer_list** %timer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timer_list** %timer.addr, metadata !725, metadata !DIExpression()), !dbg !726
  %0 = load %struct.timer_list*, %struct.timer_list** %timer.addr, align 8, !dbg !727
  %entry1 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %0, i32 0, i32 0, !dbg !728
  %call = call i32 @hlist_unhashed_lockless(%struct.hlist_node* %entry1) #7, !dbg !729
  %tobool = icmp ne i32 %call, 0, !dbg !730
  %lnot = xor i1 %tobool, true, !dbg !730
  %lnot.ext = zext i1 %lnot to i32, !dbg !730
  ret i32 %lnot.ext, !dbg !731
}

; Function Attrs: noredzone
declare dso_local void @add_timer(%struct.timer_list*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mISDN_FsmRestartTimer(%struct.FsmTimer* %ft, i32 %millisec, i32 %event, i8* %arg, i32 %where) #0 !dbg !732 {
entry:
  %ft.addr = alloca %struct.FsmTimer*, align 8
  %millisec.addr = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %where.addr = alloca i32, align 4
  store %struct.FsmTimer* %ft, %struct.FsmTimer** %ft.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.FsmTimer** %ft.addr, metadata !735, metadata !DIExpression()), !dbg !736
  store i32 %millisec, i32* %millisec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %millisec.addr, metadata !737, metadata !DIExpression()), !dbg !738
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !739, metadata !DIExpression()), !dbg !740
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !741, metadata !DIExpression()), !dbg !742
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !743, metadata !DIExpression()), !dbg !744
  %0 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !745
  %tl = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %0, i32 0, i32 1, !dbg !747
  %call = call i32 @timer_pending(%struct.timer_list* %tl) #7, !dbg !748
  %tobool = icmp ne i32 %call, 0, !dbg !748
  br i1 %tobool, label %if.then, label %if.end, !dbg !749

if.then:                                          ; preds = %entry
  %1 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !750
  %tl1 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %1, i32 0, i32 1, !dbg !751
  %call2 = call i32 @del_timer(%struct.timer_list* %tl1) #7, !dbg !752
  br label %if.end, !dbg !752

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %event.addr, align 4, !dbg !753
  %3 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !754
  %event3 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %3, i32 0, i32 2, !dbg !755
  store i32 %2, i32* %event3, align 8, !dbg !756
  %4 = load i8*, i8** %arg.addr, align 8, !dbg !757
  %5 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !758
  %arg4 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %5, i32 0, i32 3, !dbg !759
  store i8* %4, i8** %arg4, align 8, !dbg !760
  %6 = load volatile i64, i64* @jiffies, align 8, !dbg !761
  %7 = load i32, i32* %millisec.addr, align 4, !dbg !762
  %mul = mul i32 %7, 250, !dbg !763
  %div = sdiv i32 %mul, 1000, !dbg !764
  %conv = sext i32 %div to i64, !dbg !765
  %add = add i64 %6, %conv, !dbg !766
  %8 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !767
  %tl5 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %8, i32 0, i32 1, !dbg !768
  %expires = getelementptr inbounds %struct.timer_list, %struct.timer_list* %tl5, i32 0, i32 1, !dbg !769
  store i64 %add, i64* %expires, align 8, !dbg !770
  %9 = load %struct.FsmTimer*, %struct.FsmTimer** %ft.addr, align 8, !dbg !771
  %tl6 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %9, i32 0, i32 1, !dbg !772
  call void @add_timer(%struct.timer_list* %tl6) #7, !dbg !773
  ret void, !dbg !774
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !775 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !779, metadata !DIExpression()), !dbg !786
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !788, metadata !DIExpression()), !dbg !789
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !790, metadata !DIExpression()), !dbg !791
  %0 = load i64, i64* %size.addr, align 8, !dbg !792
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !794
  br i1 %1, label %if.then, label %if.end447, !dbg !795

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !796
  %tobool = icmp ne i64 %2, 0, !dbg !796
  br i1 %tobool, label %if.end, label %if.then1, !dbg !799

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !800
  br label %return, !dbg !800

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !801
  %cmp = icmp ult i64 %3, 4096, !dbg !803
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !804

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !805
  br label %return, !dbg !805

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub = sub i64 %4, 1, !dbg !806
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !806
  br i1 %5, label %cond.true, label %cond.false442, !dbg !806

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub4 = sub i64 %6, 1, !dbg !806
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !806
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !806

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub6 = sub i64 %8, 1, !dbg !806
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !806
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !806

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !806

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub9 = sub i64 %9, 1, !dbg !806
  %and = and i64 %sub9, -9223372036854775808, !dbg !806
  %tobool10 = icmp ne i64 %and, 0, !dbg !806
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !806

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !806

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub13 = sub i64 %10, 1, !dbg !806
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !806
  %tobool15 = icmp ne i64 %and14, 0, !dbg !806
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !806

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !806

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub18 = sub i64 %11, 1, !dbg !806
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !806
  %tobool20 = icmp ne i64 %and19, 0, !dbg !806
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !806

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !806

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub23 = sub i64 %12, 1, !dbg !806
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !806
  %tobool25 = icmp ne i64 %and24, 0, !dbg !806
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !806

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !806

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub28 = sub i64 %13, 1, !dbg !806
  %and29 = and i64 %sub28, 576460752303423488, !dbg !806
  %tobool30 = icmp ne i64 %and29, 0, !dbg !806
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !806

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !806

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub33 = sub i64 %14, 1, !dbg !806
  %and34 = and i64 %sub33, 288230376151711744, !dbg !806
  %tobool35 = icmp ne i64 %and34, 0, !dbg !806
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !806

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !806

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub38 = sub i64 %15, 1, !dbg !806
  %and39 = and i64 %sub38, 144115188075855872, !dbg !806
  %tobool40 = icmp ne i64 %and39, 0, !dbg !806
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !806

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !806

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub43 = sub i64 %16, 1, !dbg !806
  %and44 = and i64 %sub43, 72057594037927936, !dbg !806
  %tobool45 = icmp ne i64 %and44, 0, !dbg !806
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !806

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !806

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub48 = sub i64 %17, 1, !dbg !806
  %and49 = and i64 %sub48, 36028797018963968, !dbg !806
  %tobool50 = icmp ne i64 %and49, 0, !dbg !806
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !806

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !806

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub53 = sub i64 %18, 1, !dbg !806
  %and54 = and i64 %sub53, 18014398509481984, !dbg !806
  %tobool55 = icmp ne i64 %and54, 0, !dbg !806
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !806

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !806

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub58 = sub i64 %19, 1, !dbg !806
  %and59 = and i64 %sub58, 9007199254740992, !dbg !806
  %tobool60 = icmp ne i64 %and59, 0, !dbg !806
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !806

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !806

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub63 = sub i64 %20, 1, !dbg !806
  %and64 = and i64 %sub63, 4503599627370496, !dbg !806
  %tobool65 = icmp ne i64 %and64, 0, !dbg !806
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !806

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !806

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub68 = sub i64 %21, 1, !dbg !806
  %and69 = and i64 %sub68, 2251799813685248, !dbg !806
  %tobool70 = icmp ne i64 %and69, 0, !dbg !806
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !806

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !806

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub73 = sub i64 %22, 1, !dbg !806
  %and74 = and i64 %sub73, 1125899906842624, !dbg !806
  %tobool75 = icmp ne i64 %and74, 0, !dbg !806
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !806

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !806

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub78 = sub i64 %23, 1, !dbg !806
  %and79 = and i64 %sub78, 562949953421312, !dbg !806
  %tobool80 = icmp ne i64 %and79, 0, !dbg !806
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !806

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !806

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub83 = sub i64 %24, 1, !dbg !806
  %and84 = and i64 %sub83, 281474976710656, !dbg !806
  %tobool85 = icmp ne i64 %and84, 0, !dbg !806
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !806

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !806

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub88 = sub i64 %25, 1, !dbg !806
  %and89 = and i64 %sub88, 140737488355328, !dbg !806
  %tobool90 = icmp ne i64 %and89, 0, !dbg !806
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !806

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !806

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub93 = sub i64 %26, 1, !dbg !806
  %and94 = and i64 %sub93, 70368744177664, !dbg !806
  %tobool95 = icmp ne i64 %and94, 0, !dbg !806
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !806

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !806

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub98 = sub i64 %27, 1, !dbg !806
  %and99 = and i64 %sub98, 35184372088832, !dbg !806
  %tobool100 = icmp ne i64 %and99, 0, !dbg !806
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !806

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !806

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub103 = sub i64 %28, 1, !dbg !806
  %and104 = and i64 %sub103, 17592186044416, !dbg !806
  %tobool105 = icmp ne i64 %and104, 0, !dbg !806
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !806

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !806

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub108 = sub i64 %29, 1, !dbg !806
  %and109 = and i64 %sub108, 8796093022208, !dbg !806
  %tobool110 = icmp ne i64 %and109, 0, !dbg !806
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !806

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !806

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub113 = sub i64 %30, 1, !dbg !806
  %and114 = and i64 %sub113, 4398046511104, !dbg !806
  %tobool115 = icmp ne i64 %and114, 0, !dbg !806
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !806

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !806

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub118 = sub i64 %31, 1, !dbg !806
  %and119 = and i64 %sub118, 2199023255552, !dbg !806
  %tobool120 = icmp ne i64 %and119, 0, !dbg !806
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !806

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !806

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub123 = sub i64 %32, 1, !dbg !806
  %and124 = and i64 %sub123, 1099511627776, !dbg !806
  %tobool125 = icmp ne i64 %and124, 0, !dbg !806
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !806

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !806

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub128 = sub i64 %33, 1, !dbg !806
  %and129 = and i64 %sub128, 549755813888, !dbg !806
  %tobool130 = icmp ne i64 %and129, 0, !dbg !806
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !806

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !806

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub133 = sub i64 %34, 1, !dbg !806
  %and134 = and i64 %sub133, 274877906944, !dbg !806
  %tobool135 = icmp ne i64 %and134, 0, !dbg !806
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !806

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !806

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub138 = sub i64 %35, 1, !dbg !806
  %and139 = and i64 %sub138, 137438953472, !dbg !806
  %tobool140 = icmp ne i64 %and139, 0, !dbg !806
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !806

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !806

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub143 = sub i64 %36, 1, !dbg !806
  %and144 = and i64 %sub143, 68719476736, !dbg !806
  %tobool145 = icmp ne i64 %and144, 0, !dbg !806
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !806

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !806

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub148 = sub i64 %37, 1, !dbg !806
  %and149 = and i64 %sub148, 34359738368, !dbg !806
  %tobool150 = icmp ne i64 %and149, 0, !dbg !806
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !806

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !806

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub153 = sub i64 %38, 1, !dbg !806
  %and154 = and i64 %sub153, 17179869184, !dbg !806
  %tobool155 = icmp ne i64 %and154, 0, !dbg !806
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !806

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !806

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub158 = sub i64 %39, 1, !dbg !806
  %and159 = and i64 %sub158, 8589934592, !dbg !806
  %tobool160 = icmp ne i64 %and159, 0, !dbg !806
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !806

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !806

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub163 = sub i64 %40, 1, !dbg !806
  %and164 = and i64 %sub163, 4294967296, !dbg !806
  %tobool165 = icmp ne i64 %and164, 0, !dbg !806
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !806

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !806

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub168 = sub i64 %41, 1, !dbg !806
  %and169 = and i64 %sub168, 2147483648, !dbg !806
  %tobool170 = icmp ne i64 %and169, 0, !dbg !806
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !806

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !806

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub173 = sub i64 %42, 1, !dbg !806
  %and174 = and i64 %sub173, 1073741824, !dbg !806
  %tobool175 = icmp ne i64 %and174, 0, !dbg !806
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !806

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !806

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub178 = sub i64 %43, 1, !dbg !806
  %and179 = and i64 %sub178, 536870912, !dbg !806
  %tobool180 = icmp ne i64 %and179, 0, !dbg !806
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !806

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !806

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub183 = sub i64 %44, 1, !dbg !806
  %and184 = and i64 %sub183, 268435456, !dbg !806
  %tobool185 = icmp ne i64 %and184, 0, !dbg !806
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !806

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !806

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub188 = sub i64 %45, 1, !dbg !806
  %and189 = and i64 %sub188, 134217728, !dbg !806
  %tobool190 = icmp ne i64 %and189, 0, !dbg !806
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !806

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !806

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub193 = sub i64 %46, 1, !dbg !806
  %and194 = and i64 %sub193, 67108864, !dbg !806
  %tobool195 = icmp ne i64 %and194, 0, !dbg !806
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !806

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !806

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub198 = sub i64 %47, 1, !dbg !806
  %and199 = and i64 %sub198, 33554432, !dbg !806
  %tobool200 = icmp ne i64 %and199, 0, !dbg !806
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !806

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !806

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub203 = sub i64 %48, 1, !dbg !806
  %and204 = and i64 %sub203, 16777216, !dbg !806
  %tobool205 = icmp ne i64 %and204, 0, !dbg !806
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !806

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !806

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub208 = sub i64 %49, 1, !dbg !806
  %and209 = and i64 %sub208, 8388608, !dbg !806
  %tobool210 = icmp ne i64 %and209, 0, !dbg !806
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !806

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !806

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub213 = sub i64 %50, 1, !dbg !806
  %and214 = and i64 %sub213, 4194304, !dbg !806
  %tobool215 = icmp ne i64 %and214, 0, !dbg !806
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !806

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !806

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub218 = sub i64 %51, 1, !dbg !806
  %and219 = and i64 %sub218, 2097152, !dbg !806
  %tobool220 = icmp ne i64 %and219, 0, !dbg !806
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !806

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !806

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub223 = sub i64 %52, 1, !dbg !806
  %and224 = and i64 %sub223, 1048576, !dbg !806
  %tobool225 = icmp ne i64 %and224, 0, !dbg !806
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !806

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !806

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub228 = sub i64 %53, 1, !dbg !806
  %and229 = and i64 %sub228, 524288, !dbg !806
  %tobool230 = icmp ne i64 %and229, 0, !dbg !806
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !806

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !806

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub233 = sub i64 %54, 1, !dbg !806
  %and234 = and i64 %sub233, 262144, !dbg !806
  %tobool235 = icmp ne i64 %and234, 0, !dbg !806
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !806

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !806

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub238 = sub i64 %55, 1, !dbg !806
  %and239 = and i64 %sub238, 131072, !dbg !806
  %tobool240 = icmp ne i64 %and239, 0, !dbg !806
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !806

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !806

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub243 = sub i64 %56, 1, !dbg !806
  %and244 = and i64 %sub243, 65536, !dbg !806
  %tobool245 = icmp ne i64 %and244, 0, !dbg !806
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !806

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !806

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub248 = sub i64 %57, 1, !dbg !806
  %and249 = and i64 %sub248, 32768, !dbg !806
  %tobool250 = icmp ne i64 %and249, 0, !dbg !806
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !806

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !806

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub253 = sub i64 %58, 1, !dbg !806
  %and254 = and i64 %sub253, 16384, !dbg !806
  %tobool255 = icmp ne i64 %and254, 0, !dbg !806
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !806

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !806

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub258 = sub i64 %59, 1, !dbg !806
  %and259 = and i64 %sub258, 8192, !dbg !806
  %tobool260 = icmp ne i64 %and259, 0, !dbg !806
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !806

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !806

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub263 = sub i64 %60, 1, !dbg !806
  %and264 = and i64 %sub263, 4096, !dbg !806
  %tobool265 = icmp ne i64 %and264, 0, !dbg !806
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !806

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !806

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub268 = sub i64 %61, 1, !dbg !806
  %and269 = and i64 %sub268, 2048, !dbg !806
  %tobool270 = icmp ne i64 %and269, 0, !dbg !806
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !806

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !806

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub273 = sub i64 %62, 1, !dbg !806
  %and274 = and i64 %sub273, 1024, !dbg !806
  %tobool275 = icmp ne i64 %and274, 0, !dbg !806
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !806

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !806

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub278 = sub i64 %63, 1, !dbg !806
  %and279 = and i64 %sub278, 512, !dbg !806
  %tobool280 = icmp ne i64 %and279, 0, !dbg !806
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !806

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !806

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub283 = sub i64 %64, 1, !dbg !806
  %and284 = and i64 %sub283, 256, !dbg !806
  %tobool285 = icmp ne i64 %and284, 0, !dbg !806
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !806

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !806

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub288 = sub i64 %65, 1, !dbg !806
  %and289 = and i64 %sub288, 128, !dbg !806
  %tobool290 = icmp ne i64 %and289, 0, !dbg !806
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !806

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !806

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub293 = sub i64 %66, 1, !dbg !806
  %and294 = and i64 %sub293, 64, !dbg !806
  %tobool295 = icmp ne i64 %and294, 0, !dbg !806
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !806

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !806

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub298 = sub i64 %67, 1, !dbg !806
  %and299 = and i64 %sub298, 32, !dbg !806
  %tobool300 = icmp ne i64 %and299, 0, !dbg !806
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !806

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !806

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub303 = sub i64 %68, 1, !dbg !806
  %and304 = and i64 %sub303, 16, !dbg !806
  %tobool305 = icmp ne i64 %and304, 0, !dbg !806
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !806

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !806

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub308 = sub i64 %69, 1, !dbg !806
  %and309 = and i64 %sub308, 8, !dbg !806
  %tobool310 = icmp ne i64 %and309, 0, !dbg !806
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !806

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !806

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub313 = sub i64 %70, 1, !dbg !806
  %and314 = and i64 %sub313, 4, !dbg !806
  %tobool315 = icmp ne i64 %and314, 0, !dbg !806
  %71 = zext i1 %tobool315 to i64, !dbg !806
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !806
  br label %cond.end, !dbg !806

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !806
  br label %cond.end317, !dbg !806

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !806
  br label %cond.end319, !dbg !806

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !806
  br label %cond.end321, !dbg !806

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !806
  br label %cond.end323, !dbg !806

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !806
  br label %cond.end325, !dbg !806

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !806
  br label %cond.end327, !dbg !806

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !806
  br label %cond.end329, !dbg !806

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !806
  br label %cond.end331, !dbg !806

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !806
  br label %cond.end333, !dbg !806

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !806
  br label %cond.end335, !dbg !806

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !806
  br label %cond.end337, !dbg !806

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !806
  br label %cond.end339, !dbg !806

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !806
  br label %cond.end341, !dbg !806

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !806
  br label %cond.end343, !dbg !806

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !806
  br label %cond.end345, !dbg !806

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !806
  br label %cond.end347, !dbg !806

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !806
  br label %cond.end349, !dbg !806

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !806
  br label %cond.end351, !dbg !806

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !806
  br label %cond.end353, !dbg !806

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !806
  br label %cond.end355, !dbg !806

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !806
  br label %cond.end357, !dbg !806

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !806
  br label %cond.end359, !dbg !806

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !806
  br label %cond.end361, !dbg !806

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !806
  br label %cond.end363, !dbg !806

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !806
  br label %cond.end365, !dbg !806

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !806
  br label %cond.end367, !dbg !806

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !806
  br label %cond.end369, !dbg !806

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !806
  br label %cond.end371, !dbg !806

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !806
  br label %cond.end373, !dbg !806

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !806
  br label %cond.end375, !dbg !806

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !806
  br label %cond.end377, !dbg !806

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !806
  br label %cond.end379, !dbg !806

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !806
  br label %cond.end381, !dbg !806

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !806
  br label %cond.end383, !dbg !806

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !806
  br label %cond.end385, !dbg !806

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !806
  br label %cond.end387, !dbg !806

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !806
  br label %cond.end389, !dbg !806

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !806
  br label %cond.end391, !dbg !806

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !806
  br label %cond.end393, !dbg !806

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !806
  br label %cond.end395, !dbg !806

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !806
  br label %cond.end397, !dbg !806

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !806
  br label %cond.end399, !dbg !806

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !806
  br label %cond.end401, !dbg !806

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !806
  br label %cond.end403, !dbg !806

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !806
  br label %cond.end405, !dbg !806

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !806
  br label %cond.end407, !dbg !806

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !806
  br label %cond.end409, !dbg !806

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !806
  br label %cond.end411, !dbg !806

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !806
  br label %cond.end413, !dbg !806

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !806
  br label %cond.end415, !dbg !806

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !806
  br label %cond.end417, !dbg !806

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !806
  br label %cond.end419, !dbg !806

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !806
  br label %cond.end421, !dbg !806

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !806
  br label %cond.end423, !dbg !806

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !806
  br label %cond.end425, !dbg !806

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !806
  br label %cond.end427, !dbg !806

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !806
  br label %cond.end429, !dbg !806

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !806
  br label %cond.end431, !dbg !806

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !806
  br label %cond.end433, !dbg !806

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !806
  br label %cond.end435, !dbg !806

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !806
  br label %cond.end437, !dbg !806

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !806
  br label %cond.end440, !dbg !806

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !806

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !806
  br label %cond.end444, !dbg !806

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !806
  %sub443 = sub i64 %72, 1, !dbg !806
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !806
  br label %cond.end444, !dbg !806

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !806
  %sub446 = sub i32 %cond445, 12, !dbg !807
  %add = add i32 %sub446, 1, !dbg !808
  store i32 %add, i32* %retval, align 4, !dbg !809
  br label %return, !dbg !809

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !810
  %dec = add i64 %73, -1, !dbg !810
  store i64 %dec, i64* %size.addr, align 8, !dbg !810
  %74 = load i64, i64* %size.addr, align 8, !dbg !811
  %shr = lshr i64 %74, 12, !dbg !811
  store i64 %shr, i64* %size.addr, align 8, !dbg !811
  %75 = load i64, i64* %size.addr, align 8, !dbg !812
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !789
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !813
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !814
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !813, !srcloc !815
  store i32 %78, i32* %bitpos.i, align 4, !dbg !813
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !816
  %add.i = add i32 %79, 1, !dbg !817
  store i32 %add.i, i32* %retval, align 4, !dbg !818
  br label %return, !dbg !818

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !819
  ret i32 %80, !dbg !819
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !820 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !779, metadata !DIExpression()), !dbg !825
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !788, metadata !DIExpression()), !dbg !827
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !828, metadata !DIExpression()), !dbg !829
  %0 = load i64, i64* %n.addr, align 8, !dbg !830
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !827
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !831
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !832
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !831, !srcloc !815
  store i32 %3, i32* %bitpos.i, align 4, !dbg !831
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !833
  %add.i = add i32 %4, 1, !dbg !834
  %sub = sub i32 %add.i, 1, !dbg !835
  ret i32 %sub, !dbg !836
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !837 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !843, metadata !DIExpression()), !dbg !844
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !845, metadata !DIExpression()), !dbg !846
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !847, metadata !DIExpression()), !dbg !848
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !849, metadata !DIExpression()), !dbg !850
  %0 = load i8*, i8** %object.addr, align 8, !dbg !851
  ret i8* %0, !dbg !852
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !853 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !858, metadata !DIExpression()), !dbg !859
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !860
  %tobool = trunc i8 %0 to i1, !dbg !860
  %lnot = xor i1 %tobool, true, !dbg !860
  %lnot1 = xor i1 %lnot, true, !dbg !860
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !860
  %conv = sext i32 %lnot.ext to i64, !dbg !860
  %tobool2 = icmp ne i64 %conv, 0, !dbg !860
  ret i1 %tobool2, !dbg !861
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hlist_unhashed_lockless(%struct.hlist_node* %h) #0 !dbg !862 {
entry:
  %h.addr = alloca %struct.hlist_node*, align 8
  %tmp = alloca %struct.hlist_node**, align 8
  store %struct.hlist_node* %h, %struct.hlist_node** %h.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hlist_node** %h.addr, metadata !868, metadata !DIExpression()), !dbg !869
  br label %do.body, !dbg !870

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !872

do.end:                                           ; preds = %do.body
  %0 = load %struct.hlist_node*, %struct.hlist_node** %h.addr, align 8, !dbg !870
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i32 0, i32 1, !dbg !870
  %1 = load volatile %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8, !dbg !870
  store %struct.hlist_node** %1, %struct.hlist_node*** %tmp, align 8, !dbg !872
  %2 = load %struct.hlist_node**, %struct.hlist_node*** %tmp, align 8, !dbg !870
  %tobool = icmp ne %struct.hlist_node** %2, null, !dbg !874
  %lnot = xor i1 %tobool, true, !dbg !874
  %lnot.ext = zext i1 %lnot to i32, !dbg !874
  ret i32 %lnot.ext, !dbg !875
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/isdn/mISDN/fsm.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4, line: 305, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!11 = !{!12, !14, !15, !16, !46, !51, !79}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !13, line: 148, baseType: !5)
!13 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "FSMFNPTR", file: !17, line: 20, baseType: !18)
!17 = !DIFile(filename: "drivers/isdn/mISDN/fsm.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !31, !14}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FsmInst", file: !17, line: 28, size: 320, elements: !23)
!23 = !{!24, !38, !39, !40, !41, !42}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !22, file: !17, line: 29, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Fsm", file: !17, line: 22, size: 256, elements: !27)
!27 = !{!28, !30, !32, !33, !37}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "jumpmatrix", scope: !26, file: !17, line: 23, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !26, file: !17, line: 24, baseType: !31, size: 32, offset: 64)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !26, file: !17, line: 24, baseType: !31, size: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "strEvent", scope: !26, file: !17, line: 25, baseType: !34, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "strState", scope: !26, file: !17, line: 25, baseType: !34, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !22, file: !17, line: 30, baseType: !31, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !22, file: !17, line: 31, baseType: !31, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "userdata", scope: !22, file: !17, line: 32, baseType: !14, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "userint", scope: !22, file: !17, line: 33, baseType: !31, size: 32, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "printdebug", scope: !22, file: !17, line: 34, baseType: !43, size: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !21, !35, null}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 55, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !48, line: 72, baseType: !49)
!48 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !48, line: 16, baseType: !50)
!50 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FsmTimer", file: !17, line: 42, size: 512, elements: !53)
!53 = !{!54, !55, !77, !78}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "fi", scope: !52, file: !17, line: 43, baseType: !21, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tl", scope: !52, file: !17, line: 44, baseType: !56, size: 320, offset: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !57, line: 11, size: 320, elements: !58)
!57 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!58 = !{!59, !66, !67, !72}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !56, file: !57, line: 16, baseType: !60, size: 128)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !13, line: 186, size: 128, elements: !61)
!61 = !{!62, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !60, file: !13, line: 187, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !60, file: !13, line: 187, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !56, file: !57, line: 17, baseType: !50, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !56, file: !57, line: 18, baseType: !68, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !57, line: 19, baseType: !73, size: 32, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !74, line: 21, baseType: !75)
!74 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !76, line: 27, baseType: !5)
!76 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !52, file: !17, line: 45, baseType: !31, size: 32, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !52, file: !17, line: 46, baseType: !14, size: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !65)
!82 = !{i32 7, !"Dwarf Version", i32 4}
!83 = !{i32 2, !"Debug Info Version", i32 3}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"Code Model", i32 2}
!86 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!87 = distinct !DISubprogram(name: "mISDN_FsmNew", scope: !1, file: !1, line: 21, type: !88, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !96)
!88 = !DISubroutineType(types: !89)
!89 = !{!31, !25, !90, !31}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FsmNode", file: !17, line: 37, size: 128, elements: !92)
!92 = !{!93, !94, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !91, file: !17, line: 38, baseType: !31, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !91, file: !17, line: 38, baseType: !31, size: 32, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !91, file: !17, line: 39, baseType: !18, size: 64, offset: 64)
!96 = !{}
!97 = !DILocalVariable(name: "fsm", arg: 1, scope: !87, file: !1, line: 21, type: !25)
!98 = !DILocation(line: 21, column: 26, scope: !87)
!99 = !DILocalVariable(name: "fnlist", arg: 2, scope: !87, file: !1, line: 22, type: !90)
!100 = !DILocation(line: 22, column: 23, scope: !87)
!101 = !DILocalVariable(name: "fncount", arg: 3, scope: !87, file: !1, line: 22, type: !31)
!102 = !DILocation(line: 22, column: 35, scope: !87)
!103 = !DILocalVariable(name: "i", scope: !87, file: !1, line: 24, type: !31)
!104 = !DILocation(line: 24, column: 6, scope: !87)
!105 = !DILocation(line: 27, column: 41, scope: !87)
!106 = !DILocation(line: 27, column: 46, scope: !87)
!107 = !DILocation(line: 28, column: 9, scope: !87)
!108 = !DILocation(line: 28, column: 14, scope: !87)
!109 = !DILocation(line: 27, column: 11, scope: !87)
!110 = !DILocation(line: 27, column: 3, scope: !87)
!111 = !DILocation(line: 26, column: 2, scope: !87)
!112 = !DILocation(line: 26, column: 7, scope: !87)
!113 = !DILocation(line: 26, column: 18, scope: !87)
!114 = !DILocation(line: 30, column: 6, scope: !115)
!115 = distinct !DILexicalBlock(scope: !87, file: !1, line: 30, column: 6)
!116 = !DILocation(line: 30, column: 11, scope: !115)
!117 = !DILocation(line: 30, column: 22, scope: !115)
!118 = !DILocation(line: 30, column: 6, scope: !87)
!119 = !DILocation(line: 31, column: 3, scope: !115)
!120 = !DILocation(line: 33, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !87, file: !1, line: 33, column: 2)
!122 = !DILocation(line: 33, column: 7, scope: !121)
!123 = !DILocation(line: 33, column: 14, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 33, column: 2)
!125 = !DILocation(line: 33, column: 18, scope: !124)
!126 = !DILocation(line: 33, column: 16, scope: !124)
!127 = !DILocation(line: 33, column: 2, scope: !121)
!128 = !DILocation(line: 34, column: 8, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !1, line: 34, column: 7)
!130 = !DILocation(line: 34, column: 15, scope: !129)
!131 = !DILocation(line: 34, column: 18, scope: !129)
!132 = !DILocation(line: 34, column: 27, scope: !129)
!133 = !DILocation(line: 34, column: 32, scope: !129)
!134 = !DILocation(line: 34, column: 24, scope: !129)
!135 = !DILocation(line: 34, column: 45, scope: !129)
!136 = !DILocation(line: 35, column: 8, scope: !129)
!137 = !DILocation(line: 35, column: 15, scope: !129)
!138 = !DILocation(line: 35, column: 18, scope: !129)
!139 = !DILocation(line: 35, column: 27, scope: !129)
!140 = !DILocation(line: 35, column: 32, scope: !129)
!141 = !DILocation(line: 35, column: 24, scope: !129)
!142 = !DILocation(line: 34, column: 7, scope: !124)
!143 = !DILocation(line: 38, column: 11, scope: !144)
!144 = distinct !DILexicalBlock(scope: !129, file: !1, line: 35, column: 46)
!145 = !DILocation(line: 38, column: 20, scope: !144)
!146 = !DILocation(line: 38, column: 27, scope: !144)
!147 = !DILocation(line: 38, column: 30, scope: !144)
!148 = !DILocation(line: 38, column: 14, scope: !144)
!149 = !DILocation(line: 38, column: 43, scope: !144)
!150 = !DILocation(line: 38, column: 48, scope: !144)
!151 = !DILocation(line: 38, column: 37, scope: !144)
!152 = !DILocation(line: 39, column: 17, scope: !144)
!153 = !DILocation(line: 39, column: 24, scope: !144)
!154 = !DILocation(line: 39, column: 27, scope: !144)
!155 = !DILocation(line: 39, column: 11, scope: !144)
!156 = !DILocation(line: 39, column: 40, scope: !144)
!157 = !DILocation(line: 39, column: 45, scope: !144)
!158 = !DILocation(line: 39, column: 34, scope: !144)
!159 = !DILocation(line: 36, column: 4, scope: !144)
!160 = !DILocation(line: 40, column: 3, scope: !144)
!161 = !DILocation(line: 42, column: 36, scope: !129)
!162 = !DILocation(line: 42, column: 43, scope: !129)
!163 = !DILocation(line: 42, column: 46, scope: !129)
!164 = !DILocation(line: 41, column: 4, scope: !129)
!165 = !DILocation(line: 41, column: 9, scope: !129)
!166 = !DILocation(line: 41, column: 20, scope: !129)
!167 = !DILocation(line: 41, column: 25, scope: !129)
!168 = !DILocation(line: 41, column: 39, scope: !129)
!169 = !DILocation(line: 41, column: 46, scope: !129)
!170 = !DILocation(line: 41, column: 49, scope: !129)
!171 = !DILocation(line: 41, column: 37, scope: !129)
!172 = !DILocation(line: 42, column: 6, scope: !129)
!173 = !DILocation(line: 42, column: 13, scope: !129)
!174 = !DILocation(line: 42, column: 16, scope: !129)
!175 = !DILocation(line: 41, column: 55, scope: !129)
!176 = !DILocation(line: 42, column: 23, scope: !129)
!177 = !DILocation(line: 35, column: 43, scope: !129)
!178 = !DILocation(line: 33, column: 28, scope: !124)
!179 = !DILocation(line: 33, column: 2, scope: !124)
!180 = distinct !{!180, !127, !181}
!181 = !DILocation(line: 42, column: 46, scope: !121)
!182 = !DILocation(line: 43, column: 2, scope: !87)
!183 = !DILocation(line: 44, column: 1, scope: !87)
!184 = distinct !DISubprogram(name: "kzalloc", scope: !4, file: !4, line: 662, type: !185, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!185 = !DISubroutineType(types: !186)
!186 = !{!14, !46, !12}
!187 = !DILocalVariable(name: "s", arg: 1, scope: !188, file: !4, line: 445, type: !191)
!188 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4, file: !4, line: 445, type: !189, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!189 = !DISubroutineType(types: !190)
!190 = !{!14, !191, !12, !46}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !193, line: 117, flags: DIFlagFwdDecl)
!193 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!194 = !DILocation(line: 445, column: 72, scope: !188, inlinedAt: !195)
!195 = distinct !DILocation(line: 552, column: 10, scope: !196, inlinedAt: !199)
!196 = distinct !DILexicalBlock(scope: !197, file: !4, line: 540, column: 34)
!197 = distinct !DILexicalBlock(scope: !198, file: !4, line: 540, column: 6)
!198 = distinct !DISubprogram(name: "kmalloc", scope: !4, file: !4, line: 538, type: !185, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!199 = distinct !DILocation(line: 664, column: 9, scope: !184)
!200 = !DILocalVariable(name: "flags", arg: 2, scope: !188, file: !4, line: 446, type: !12)
!201 = !DILocation(line: 446, column: 9, scope: !188, inlinedAt: !195)
!202 = !DILocalVariable(name: "size", arg: 3, scope: !188, file: !4, line: 446, type: !46)
!203 = !DILocation(line: 446, column: 23, scope: !188, inlinedAt: !195)
!204 = !DILocalVariable(name: "ret", scope: !188, file: !4, line: 448, type: !14)
!205 = !DILocation(line: 448, column: 8, scope: !188, inlinedAt: !195)
!206 = !DILocalVariable(name: "flags", arg: 1, scope: !207, file: !4, line: 318, type: !12)
!207 = distinct !DISubprogram(name: "kmalloc_type", scope: !4, file: !4, line: 318, type: !208, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!208 = !DISubroutineType(types: !209)
!209 = !{!3, !12}
!210 = !DILocation(line: 318, column: 67, scope: !207, inlinedAt: !211)
!211 = distinct !DILocation(line: 553, column: 20, scope: !196, inlinedAt: !199)
!212 = !DILocalVariable(name: "size", arg: 1, scope: !213, file: !4, line: 346, type: !46)
!213 = distinct !DISubprogram(name: "kmalloc_index", scope: !4, file: !4, line: 346, type: !214, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!214 = !DISubroutineType(types: !215)
!215 = !{!5, !46}
!216 = !DILocation(line: 346, column: 58, scope: !213, inlinedAt: !217)
!217 = distinct !DILocation(line: 547, column: 11, scope: !196, inlinedAt: !199)
!218 = !DILocalVariable(name: "size", arg: 1, scope: !219, file: !4, line: 472, type: !46)
!219 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4, file: !4, line: 472, type: !220, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!220 = !DISubroutineType(types: !221)
!221 = !{!14, !46, !12, !5}
!222 = !DILocation(line: 472, column: 28, scope: !219, inlinedAt: !223)
!223 = distinct !DILocation(line: 481, column: 9, scope: !224, inlinedAt: !225)
!224 = distinct !DISubprogram(name: "kmalloc_large", scope: !4, file: !4, line: 478, type: !185, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!225 = distinct !DILocation(line: 545, column: 11, scope: !226, inlinedAt: !199)
!226 = distinct !DILexicalBlock(scope: !196, file: !4, line: 544, column: 7)
!227 = !DILocalVariable(name: "flags", arg: 2, scope: !219, file: !4, line: 472, type: !12)
!228 = !DILocation(line: 472, column: 40, scope: !219, inlinedAt: !223)
!229 = !DILocalVariable(name: "order", arg: 3, scope: !219, file: !4, line: 472, type: !5)
!230 = !DILocation(line: 472, column: 60, scope: !219, inlinedAt: !223)
!231 = !DILocalVariable(name: "size", arg: 1, scope: !224, file: !4, line: 478, type: !46)
!232 = !DILocation(line: 478, column: 51, scope: !224, inlinedAt: !225)
!233 = !DILocalVariable(name: "flags", arg: 2, scope: !224, file: !4, line: 478, type: !12)
!234 = !DILocation(line: 478, column: 63, scope: !224, inlinedAt: !225)
!235 = !DILocalVariable(name: "order", scope: !224, file: !4, line: 480, type: !5)
!236 = !DILocation(line: 480, column: 15, scope: !224, inlinedAt: !225)
!237 = !DILocalVariable(name: "size", arg: 1, scope: !198, file: !4, line: 538, type: !46)
!238 = !DILocation(line: 538, column: 45, scope: !198, inlinedAt: !199)
!239 = !DILocalVariable(name: "flags", arg: 2, scope: !198, file: !4, line: 538, type: !12)
!240 = !DILocation(line: 538, column: 57, scope: !198, inlinedAt: !199)
!241 = !DILocalVariable(name: "index", scope: !196, file: !4, line: 542, type: !5)
!242 = !DILocation(line: 542, column: 16, scope: !196, inlinedAt: !199)
!243 = !DILocalVariable(name: "size", arg: 1, scope: !184, file: !4, line: 662, type: !46)
!244 = !DILocation(line: 662, column: 36, scope: !184)
!245 = !DILocalVariable(name: "flags", arg: 2, scope: !184, file: !4, line: 662, type: !12)
!246 = !DILocation(line: 662, column: 48, scope: !184)
!247 = !DILocation(line: 664, column: 17, scope: !184)
!248 = !DILocation(line: 664, column: 23, scope: !184)
!249 = !DILocation(line: 664, column: 29, scope: !184)
!250 = !DILocation(line: 540, column: 27, scope: !197, inlinedAt: !199)
!251 = !DILocation(line: 540, column: 6, scope: !197, inlinedAt: !199)
!252 = !DILocation(line: 540, column: 6, scope: !198, inlinedAt: !199)
!253 = !DILocation(line: 544, column: 7, scope: !226, inlinedAt: !199)
!254 = !DILocation(line: 544, column: 12, scope: !226, inlinedAt: !199)
!255 = !DILocation(line: 544, column: 7, scope: !196, inlinedAt: !199)
!256 = !DILocation(line: 545, column: 25, scope: !226, inlinedAt: !199)
!257 = !DILocation(line: 545, column: 31, scope: !226, inlinedAt: !199)
!258 = !DILocation(line: 480, column: 33, scope: !224, inlinedAt: !225)
!259 = !DILocation(line: 480, column: 23, scope: !224, inlinedAt: !225)
!260 = !DILocation(line: 481, column: 29, scope: !224, inlinedAt: !225)
!261 = !DILocation(line: 481, column: 35, scope: !224, inlinedAt: !225)
!262 = !DILocation(line: 481, column: 42, scope: !224, inlinedAt: !225)
!263 = !DILocation(line: 474, column: 23, scope: !219, inlinedAt: !223)
!264 = !DILocation(line: 474, column: 29, scope: !219, inlinedAt: !223)
!265 = !DILocation(line: 474, column: 36, scope: !219, inlinedAt: !223)
!266 = !DILocation(line: 474, column: 9, scope: !219, inlinedAt: !223)
!267 = !DILocation(line: 545, column: 4, scope: !226, inlinedAt: !199)
!268 = !DILocation(line: 547, column: 25, scope: !196, inlinedAt: !199)
!269 = !DILocation(line: 348, column: 7, scope: !270, inlinedAt: !217)
!270 = distinct !DILexicalBlock(scope: !213, file: !4, line: 348, column: 6)
!271 = !DILocation(line: 348, column: 6, scope: !213, inlinedAt: !217)
!272 = !DILocation(line: 349, column: 3, scope: !270, inlinedAt: !217)
!273 = !DILocation(line: 351, column: 6, scope: !274, inlinedAt: !217)
!274 = distinct !DILexicalBlock(scope: !213, file: !4, line: 351, column: 6)
!275 = !DILocation(line: 351, column: 11, scope: !274, inlinedAt: !217)
!276 = !DILocation(line: 351, column: 6, scope: !213, inlinedAt: !217)
!277 = !DILocation(line: 352, column: 3, scope: !274, inlinedAt: !217)
!278 = !DILocation(line: 354, column: 32, scope: !279, inlinedAt: !217)
!279 = distinct !DILexicalBlock(scope: !213, file: !4, line: 354, column: 6)
!280 = !DILocation(line: 354, column: 37, scope: !279, inlinedAt: !217)
!281 = !DILocation(line: 354, column: 42, scope: !279, inlinedAt: !217)
!282 = !DILocation(line: 354, column: 45, scope: !279, inlinedAt: !217)
!283 = !DILocation(line: 354, column: 50, scope: !279, inlinedAt: !217)
!284 = !DILocation(line: 354, column: 6, scope: !213, inlinedAt: !217)
!285 = !DILocation(line: 355, column: 3, scope: !279, inlinedAt: !217)
!286 = !DILocation(line: 356, column: 32, scope: !287, inlinedAt: !217)
!287 = distinct !DILexicalBlock(scope: !213, file: !4, line: 356, column: 6)
!288 = !DILocation(line: 356, column: 37, scope: !287, inlinedAt: !217)
!289 = !DILocation(line: 356, column: 43, scope: !287, inlinedAt: !217)
!290 = !DILocation(line: 356, column: 46, scope: !287, inlinedAt: !217)
!291 = !DILocation(line: 356, column: 51, scope: !287, inlinedAt: !217)
!292 = !DILocation(line: 356, column: 6, scope: !213, inlinedAt: !217)
!293 = !DILocation(line: 357, column: 3, scope: !287, inlinedAt: !217)
!294 = !DILocation(line: 358, column: 6, scope: !295, inlinedAt: !217)
!295 = distinct !DILexicalBlock(scope: !213, file: !4, line: 358, column: 6)
!296 = !DILocation(line: 358, column: 11, scope: !295, inlinedAt: !217)
!297 = !DILocation(line: 358, column: 6, scope: !213, inlinedAt: !217)
!298 = !DILocation(line: 358, column: 26, scope: !295, inlinedAt: !217)
!299 = !DILocation(line: 359, column: 6, scope: !300, inlinedAt: !217)
!300 = distinct !DILexicalBlock(scope: !213, file: !4, line: 359, column: 6)
!301 = !DILocation(line: 359, column: 11, scope: !300, inlinedAt: !217)
!302 = !DILocation(line: 359, column: 6, scope: !213, inlinedAt: !217)
!303 = !DILocation(line: 359, column: 26, scope: !300, inlinedAt: !217)
!304 = !DILocation(line: 360, column: 6, scope: !305, inlinedAt: !217)
!305 = distinct !DILexicalBlock(scope: !213, file: !4, line: 360, column: 6)
!306 = !DILocation(line: 360, column: 11, scope: !305, inlinedAt: !217)
!307 = !DILocation(line: 360, column: 6, scope: !213, inlinedAt: !217)
!308 = !DILocation(line: 360, column: 26, scope: !305, inlinedAt: !217)
!309 = !DILocation(line: 361, column: 6, scope: !310, inlinedAt: !217)
!310 = distinct !DILexicalBlock(scope: !213, file: !4, line: 361, column: 6)
!311 = !DILocation(line: 361, column: 11, scope: !310, inlinedAt: !217)
!312 = !DILocation(line: 361, column: 6, scope: !213, inlinedAt: !217)
!313 = !DILocation(line: 361, column: 26, scope: !310, inlinedAt: !217)
!314 = !DILocation(line: 362, column: 6, scope: !315, inlinedAt: !217)
!315 = distinct !DILexicalBlock(scope: !213, file: !4, line: 362, column: 6)
!316 = !DILocation(line: 362, column: 11, scope: !315, inlinedAt: !217)
!317 = !DILocation(line: 362, column: 6, scope: !213, inlinedAt: !217)
!318 = !DILocation(line: 362, column: 26, scope: !315, inlinedAt: !217)
!319 = !DILocation(line: 363, column: 6, scope: !320, inlinedAt: !217)
!320 = distinct !DILexicalBlock(scope: !213, file: !4, line: 363, column: 6)
!321 = !DILocation(line: 363, column: 11, scope: !320, inlinedAt: !217)
!322 = !DILocation(line: 363, column: 6, scope: !213, inlinedAt: !217)
!323 = !DILocation(line: 363, column: 26, scope: !320, inlinedAt: !217)
!324 = !DILocation(line: 364, column: 6, scope: !325, inlinedAt: !217)
!325 = distinct !DILexicalBlock(scope: !213, file: !4, line: 364, column: 6)
!326 = !DILocation(line: 364, column: 11, scope: !325, inlinedAt: !217)
!327 = !DILocation(line: 364, column: 6, scope: !213, inlinedAt: !217)
!328 = !DILocation(line: 364, column: 26, scope: !325, inlinedAt: !217)
!329 = !DILocation(line: 365, column: 6, scope: !330, inlinedAt: !217)
!330 = distinct !DILexicalBlock(scope: !213, file: !4, line: 365, column: 6)
!331 = !DILocation(line: 365, column: 11, scope: !330, inlinedAt: !217)
!332 = !DILocation(line: 365, column: 6, scope: !213, inlinedAt: !217)
!333 = !DILocation(line: 365, column: 26, scope: !330, inlinedAt: !217)
!334 = !DILocation(line: 366, column: 6, scope: !335, inlinedAt: !217)
!335 = distinct !DILexicalBlock(scope: !213, file: !4, line: 366, column: 6)
!336 = !DILocation(line: 366, column: 11, scope: !335, inlinedAt: !217)
!337 = !DILocation(line: 366, column: 6, scope: !213, inlinedAt: !217)
!338 = !DILocation(line: 366, column: 26, scope: !335, inlinedAt: !217)
!339 = !DILocation(line: 367, column: 6, scope: !340, inlinedAt: !217)
!340 = distinct !DILexicalBlock(scope: !213, file: !4, line: 367, column: 6)
!341 = !DILocation(line: 367, column: 11, scope: !340, inlinedAt: !217)
!342 = !DILocation(line: 367, column: 6, scope: !213, inlinedAt: !217)
!343 = !DILocation(line: 367, column: 26, scope: !340, inlinedAt: !217)
!344 = !DILocation(line: 368, column: 6, scope: !345, inlinedAt: !217)
!345 = distinct !DILexicalBlock(scope: !213, file: !4, line: 368, column: 6)
!346 = !DILocation(line: 368, column: 11, scope: !345, inlinedAt: !217)
!347 = !DILocation(line: 368, column: 6, scope: !213, inlinedAt: !217)
!348 = !DILocation(line: 368, column: 26, scope: !345, inlinedAt: !217)
!349 = !DILocation(line: 369, column: 6, scope: !350, inlinedAt: !217)
!350 = distinct !DILexicalBlock(scope: !213, file: !4, line: 369, column: 6)
!351 = !DILocation(line: 369, column: 11, scope: !350, inlinedAt: !217)
!352 = !DILocation(line: 369, column: 6, scope: !213, inlinedAt: !217)
!353 = !DILocation(line: 369, column: 26, scope: !350, inlinedAt: !217)
!354 = !DILocation(line: 370, column: 6, scope: !355, inlinedAt: !217)
!355 = distinct !DILexicalBlock(scope: !213, file: !4, line: 370, column: 6)
!356 = !DILocation(line: 370, column: 11, scope: !355, inlinedAt: !217)
!357 = !DILocation(line: 370, column: 6, scope: !213, inlinedAt: !217)
!358 = !DILocation(line: 370, column: 26, scope: !355, inlinedAt: !217)
!359 = !DILocation(line: 371, column: 6, scope: !360, inlinedAt: !217)
!360 = distinct !DILexicalBlock(scope: !213, file: !4, line: 371, column: 6)
!361 = !DILocation(line: 371, column: 11, scope: !360, inlinedAt: !217)
!362 = !DILocation(line: 371, column: 6, scope: !213, inlinedAt: !217)
!363 = !DILocation(line: 371, column: 26, scope: !360, inlinedAt: !217)
!364 = !DILocation(line: 372, column: 6, scope: !365, inlinedAt: !217)
!365 = distinct !DILexicalBlock(scope: !213, file: !4, line: 372, column: 6)
!366 = !DILocation(line: 372, column: 11, scope: !365, inlinedAt: !217)
!367 = !DILocation(line: 372, column: 6, scope: !213, inlinedAt: !217)
!368 = !DILocation(line: 372, column: 26, scope: !365, inlinedAt: !217)
!369 = !DILocation(line: 373, column: 6, scope: !370, inlinedAt: !217)
!370 = distinct !DILexicalBlock(scope: !213, file: !4, line: 373, column: 6)
!371 = !DILocation(line: 373, column: 11, scope: !370, inlinedAt: !217)
!372 = !DILocation(line: 373, column: 6, scope: !213, inlinedAt: !217)
!373 = !DILocation(line: 373, column: 26, scope: !370, inlinedAt: !217)
!374 = !DILocation(line: 374, column: 6, scope: !375, inlinedAt: !217)
!375 = distinct !DILexicalBlock(scope: !213, file: !4, line: 374, column: 6)
!376 = !DILocation(line: 374, column: 11, scope: !375, inlinedAt: !217)
!377 = !DILocation(line: 374, column: 6, scope: !213, inlinedAt: !217)
!378 = !DILocation(line: 374, column: 26, scope: !375, inlinedAt: !217)
!379 = !DILocation(line: 375, column: 6, scope: !380, inlinedAt: !217)
!380 = distinct !DILexicalBlock(scope: !213, file: !4, line: 375, column: 6)
!381 = !DILocation(line: 375, column: 11, scope: !380, inlinedAt: !217)
!382 = !DILocation(line: 375, column: 6, scope: !213, inlinedAt: !217)
!383 = !DILocation(line: 375, column: 27, scope: !380, inlinedAt: !217)
!384 = !DILocation(line: 376, column: 6, scope: !385, inlinedAt: !217)
!385 = distinct !DILexicalBlock(scope: !213, file: !4, line: 376, column: 6)
!386 = !DILocation(line: 376, column: 11, scope: !385, inlinedAt: !217)
!387 = !DILocation(line: 376, column: 6, scope: !213, inlinedAt: !217)
!388 = !DILocation(line: 376, column: 32, scope: !385, inlinedAt: !217)
!389 = !DILocation(line: 377, column: 6, scope: !390, inlinedAt: !217)
!390 = distinct !DILexicalBlock(scope: !213, file: !4, line: 377, column: 6)
!391 = !DILocation(line: 377, column: 11, scope: !390, inlinedAt: !217)
!392 = !DILocation(line: 377, column: 6, scope: !213, inlinedAt: !217)
!393 = !DILocation(line: 377, column: 32, scope: !390, inlinedAt: !217)
!394 = !DILocation(line: 378, column: 6, scope: !395, inlinedAt: !217)
!395 = distinct !DILexicalBlock(scope: !213, file: !4, line: 378, column: 6)
!396 = !DILocation(line: 378, column: 11, scope: !395, inlinedAt: !217)
!397 = !DILocation(line: 378, column: 6, scope: !213, inlinedAt: !217)
!398 = !DILocation(line: 378, column: 32, scope: !395, inlinedAt: !217)
!399 = !DILocation(line: 379, column: 6, scope: !400, inlinedAt: !217)
!400 = distinct !DILexicalBlock(scope: !213, file: !4, line: 379, column: 6)
!401 = !DILocation(line: 379, column: 11, scope: !400, inlinedAt: !217)
!402 = !DILocation(line: 379, column: 6, scope: !213, inlinedAt: !217)
!403 = !DILocation(line: 379, column: 33, scope: !400, inlinedAt: !217)
!404 = !DILocation(line: 380, column: 6, scope: !405, inlinedAt: !217)
!405 = distinct !DILexicalBlock(scope: !213, file: !4, line: 380, column: 6)
!406 = !DILocation(line: 380, column: 11, scope: !405, inlinedAt: !217)
!407 = !DILocation(line: 380, column: 6, scope: !213, inlinedAt: !217)
!408 = !DILocation(line: 380, column: 33, scope: !405, inlinedAt: !217)
!409 = !DILocation(line: 381, column: 6, scope: !410, inlinedAt: !217)
!410 = distinct !DILexicalBlock(scope: !213, file: !4, line: 381, column: 6)
!411 = !DILocation(line: 381, column: 11, scope: !410, inlinedAt: !217)
!412 = !DILocation(line: 381, column: 6, scope: !213, inlinedAt: !217)
!413 = !DILocation(line: 381, column: 33, scope: !410, inlinedAt: !217)
!414 = !DILocation(line: 382, column: 2, scope: !415, inlinedAt: !217)
!415 = distinct !DILexicalBlock(scope: !416, file: !4, line: 382, column: 2)
!416 = distinct !DILexicalBlock(scope: !213, file: !4, line: 382, column: 2)
!417 = !{i32 -2144651116, i32 -2144651087, i32 -2144651041, i32 -2144650983, i32 -2144650929, i32 -2144650875, i32 -2144650820, i32 -2144650789}
!418 = !DILocation(line: 382, column: 2, scope: !419, inlinedAt: !217)
!419 = distinct !DILexicalBlock(scope: !420, file: !4, line: 382, column: 2)
!420 = distinct !DILexicalBlock(scope: !416, file: !4, line: 382, column: 2)
!421 = !{i32 -2144650346, i32 -2144650339, i32 -2144650285, i32 -2144650254, i32 -2144650224}
!422 = !DILocation(line: 382, column: 2, scope: !420, inlinedAt: !217)
!423 = !DILocation(line: 386, column: 1, scope: !213, inlinedAt: !217)
!424 = !DILocation(line: 547, column: 9, scope: !196, inlinedAt: !199)
!425 = !DILocation(line: 549, column: 8, scope: !426, inlinedAt: !199)
!426 = distinct !DILexicalBlock(scope: !196, file: !4, line: 549, column: 7)
!427 = !DILocation(line: 549, column: 7, scope: !196, inlinedAt: !199)
!428 = !DILocation(line: 550, column: 4, scope: !426, inlinedAt: !199)
!429 = !DILocation(line: 553, column: 33, scope: !196, inlinedAt: !199)
!430 = !DILocation(line: 325, column: 6, scope: !431, inlinedAt: !211)
!431 = distinct !DILexicalBlock(scope: !207, file: !4, line: 325, column: 6)
!432 = !DILocation(line: 325, column: 6, scope: !207, inlinedAt: !211)
!433 = !DILocation(line: 326, column: 3, scope: !431, inlinedAt: !211)
!434 = !DILocation(line: 332, column: 9, scope: !207, inlinedAt: !211)
!435 = !DILocation(line: 332, column: 15, scope: !207, inlinedAt: !211)
!436 = !DILocation(line: 332, column: 2, scope: !207, inlinedAt: !211)
!437 = !DILocation(line: 336, column: 1, scope: !207, inlinedAt: !211)
!438 = !DILocation(line: 553, column: 5, scope: !196, inlinedAt: !199)
!439 = !DILocation(line: 553, column: 41, scope: !196, inlinedAt: !199)
!440 = !DILocation(line: 554, column: 5, scope: !196, inlinedAt: !199)
!441 = !DILocation(line: 554, column: 12, scope: !196, inlinedAt: !199)
!442 = !DILocation(line: 448, column: 31, scope: !188, inlinedAt: !195)
!443 = !DILocation(line: 448, column: 34, scope: !188, inlinedAt: !195)
!444 = !DILocation(line: 448, column: 14, scope: !188, inlinedAt: !195)
!445 = !DILocation(line: 450, column: 22, scope: !188, inlinedAt: !195)
!446 = !DILocation(line: 450, column: 25, scope: !188, inlinedAt: !195)
!447 = !DILocation(line: 450, column: 30, scope: !188, inlinedAt: !195)
!448 = !DILocation(line: 450, column: 36, scope: !188, inlinedAt: !195)
!449 = !DILocation(line: 450, column: 8, scope: !188, inlinedAt: !195)
!450 = !DILocation(line: 450, column: 6, scope: !188, inlinedAt: !195)
!451 = !DILocation(line: 451, column: 9, scope: !188, inlinedAt: !195)
!452 = !DILocation(line: 552, column: 3, scope: !196, inlinedAt: !199)
!453 = !DILocation(line: 557, column: 19, scope: !198, inlinedAt: !199)
!454 = !DILocation(line: 557, column: 25, scope: !198, inlinedAt: !199)
!455 = !DILocation(line: 557, column: 9, scope: !198, inlinedAt: !199)
!456 = !DILocation(line: 557, column: 2, scope: !198, inlinedAt: !199)
!457 = !DILocation(line: 558, column: 1, scope: !198, inlinedAt: !199)
!458 = !DILocation(line: 664, column: 2, scope: !184)
!459 = distinct !DISubprogram(name: "array3_size", scope: !460, file: !460, line: 285, type: !461, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!460 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!461 = !DISubroutineType(types: !462)
!462 = !{!46, !46, !46, !46}
!463 = !DILocalVariable(name: "a", arg: 1, scope: !459, file: !460, line: 285, type: !46)
!464 = !DILocation(line: 285, column: 54, scope: !459)
!465 = !DILocalVariable(name: "b", arg: 2, scope: !459, file: !460, line: 285, type: !46)
!466 = !DILocation(line: 285, column: 64, scope: !459)
!467 = !DILocalVariable(name: "c", arg: 3, scope: !459, file: !460, line: 285, type: !46)
!468 = !DILocation(line: 285, column: 74, scope: !459)
!469 = !DILocalVariable(name: "bytes", scope: !459, file: !460, line: 287, type: !46)
!470 = !DILocation(line: 287, column: 9, scope: !459)
!471 = !DILocalVariable(name: "__a", scope: !472, file: !460, line: 289, type: !46)
!472 = distinct !DILexicalBlock(scope: !473, file: !460, line: 289, column: 6)
!473 = distinct !DILexicalBlock(scope: !459, file: !460, line: 289, column: 6)
!474 = !DILocation(line: 289, column: 6, scope: !472)
!475 = !DILocalVariable(name: "__b", scope: !472, file: !460, line: 289, type: !46)
!476 = !DILocalVariable(name: "__d", scope: !472, file: !460, line: 289, type: !477)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!478 = !DILocation(line: 289, column: 6, scope: !473)
!479 = !DILocation(line: 289, column: 6, scope: !459)
!480 = !DILocation(line: 290, column: 3, scope: !473)
!481 = !DILocalVariable(name: "__a", scope: !482, file: !460, line: 291, type: !46)
!482 = distinct !DILexicalBlock(scope: !483, file: !460, line: 291, column: 6)
!483 = distinct !DILexicalBlock(scope: !459, file: !460, line: 291, column: 6)
!484 = !DILocation(line: 291, column: 6, scope: !482)
!485 = !DILocalVariable(name: "__b", scope: !482, file: !460, line: 291, type: !46)
!486 = !DILocalVariable(name: "__d", scope: !482, file: !460, line: 291, type: !477)
!487 = !DILocation(line: 291, column: 6, scope: !483)
!488 = !DILocation(line: 291, column: 6, scope: !459)
!489 = !DILocation(line: 292, column: 3, scope: !483)
!490 = !DILocation(line: 294, column: 9, scope: !459)
!491 = !DILocation(line: 294, column: 2, scope: !459)
!492 = !DILocation(line: 295, column: 1, scope: !459)
!493 = distinct !DISubprogram(name: "mISDN_FsmFree", scope: !1, file: !1, line: 48, type: !494, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !96)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !25}
!496 = !DILocalVariable(name: "fsm", arg: 1, scope: !493, file: !1, line: 48, type: !25)
!497 = !DILocation(line: 48, column: 27, scope: !493)
!498 = !DILocation(line: 50, column: 17, scope: !493)
!499 = !DILocation(line: 50, column: 22, scope: !493)
!500 = !DILocation(line: 50, column: 8, scope: !493)
!501 = !DILocation(line: 50, column: 2, scope: !493)
!502 = !DILocation(line: 51, column: 1, scope: !493)
!503 = distinct !DISubprogram(name: "mISDN_FsmEvent", scope: !1, file: !1, line: 55, type: !504, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !96)
!504 = !DISubroutineType(types: !505)
!505 = !{!31, !21, !31, !14}
!506 = !DILocalVariable(name: "fi", arg: 1, scope: !503, file: !1, line: 55, type: !21)
!507 = !DILocation(line: 55, column: 32, scope: !503)
!508 = !DILocalVariable(name: "event", arg: 2, scope: !503, file: !1, line: 55, type: !31)
!509 = !DILocation(line: 55, column: 40, scope: !503)
!510 = !DILocalVariable(name: "arg", arg: 3, scope: !503, file: !1, line: 55, type: !14)
!511 = !DILocation(line: 55, column: 53, scope: !503)
!512 = !DILocalVariable(name: "r", scope: !503, file: !1, line: 57, type: !16)
!513 = !DILocation(line: 57, column: 11, scope: !503)
!514 = !DILocation(line: 59, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !503, file: !1, line: 59, column: 6)
!516 = !DILocation(line: 59, column: 11, scope: !515)
!517 = !DILocation(line: 59, column: 20, scope: !515)
!518 = !DILocation(line: 59, column: 24, scope: !515)
!519 = !DILocation(line: 59, column: 29, scope: !515)
!520 = !DILocation(line: 59, column: 17, scope: !515)
!521 = !DILocation(line: 59, column: 42, scope: !515)
!522 = !DILocation(line: 60, column: 7, scope: !515)
!523 = !DILocation(line: 60, column: 16, scope: !515)
!524 = !DILocation(line: 60, column: 20, scope: !515)
!525 = !DILocation(line: 60, column: 25, scope: !515)
!526 = !DILocation(line: 60, column: 13, scope: !515)
!527 = !DILocation(line: 59, column: 6, scope: !503)
!528 = !DILocation(line: 63, column: 16, scope: !529)
!529 = distinct !DILexicalBlock(scope: !515, file: !1, line: 60, column: 39)
!530 = !DILocation(line: 63, column: 20, scope: !529)
!531 = !DILocation(line: 63, column: 10, scope: !529)
!532 = !DILocation(line: 63, column: 33, scope: !529)
!533 = !DILocation(line: 63, column: 37, scope: !529)
!534 = !DILocation(line: 63, column: 42, scope: !529)
!535 = !DILocation(line: 63, column: 27, scope: !529)
!536 = !DILocation(line: 63, column: 55, scope: !529)
!537 = !DILocation(line: 64, column: 16, scope: !529)
!538 = !DILocation(line: 64, column: 20, scope: !529)
!539 = !DILocation(line: 64, column: 25, scope: !529)
!540 = !DILocation(line: 64, column: 10, scope: !529)
!541 = !DILocation(line: 61, column: 3, scope: !529)
!542 = !DILocation(line: 65, column: 3, scope: !529)
!543 = !DILocation(line: 67, column: 6, scope: !503)
!544 = !DILocation(line: 67, column: 10, scope: !503)
!545 = !DILocation(line: 67, column: 15, scope: !503)
!546 = !DILocation(line: 67, column: 26, scope: !503)
!547 = !DILocation(line: 67, column: 30, scope: !503)
!548 = !DILocation(line: 67, column: 35, scope: !503)
!549 = !DILocation(line: 67, column: 49, scope: !503)
!550 = !DILocation(line: 67, column: 47, scope: !503)
!551 = !DILocation(line: 67, column: 57, scope: !503)
!552 = !DILocation(line: 67, column: 61, scope: !503)
!553 = !DILocation(line: 67, column: 55, scope: !503)
!554 = !DILocation(line: 67, column: 4, scope: !503)
!555 = !DILocation(line: 68, column: 6, scope: !556)
!556 = distinct !DILexicalBlock(scope: !503, file: !1, line: 68, column: 6)
!557 = !DILocation(line: 68, column: 6, scope: !503)
!558 = !DILocation(line: 69, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !1, line: 69, column: 7)
!560 = distinct !DILexicalBlock(scope: !556, file: !1, line: 68, column: 9)
!561 = !DILocation(line: 69, column: 11, scope: !559)
!562 = !DILocation(line: 69, column: 7, scope: !560)
!563 = !DILocation(line: 70, column: 4, scope: !559)
!564 = !DILocation(line: 70, column: 8, scope: !559)
!565 = !DILocation(line: 70, column: 19, scope: !559)
!566 = !DILocation(line: 71, column: 12, scope: !559)
!567 = !DILocation(line: 71, column: 16, scope: !559)
!568 = !DILocation(line: 71, column: 21, scope: !559)
!569 = !DILocation(line: 71, column: 30, scope: !559)
!570 = !DILocation(line: 71, column: 34, scope: !559)
!571 = !DILocation(line: 72, column: 12, scope: !559)
!572 = !DILocation(line: 72, column: 16, scope: !559)
!573 = !DILocation(line: 72, column: 21, scope: !559)
!574 = !DILocation(line: 72, column: 30, scope: !559)
!575 = !DILocation(line: 73, column: 3, scope: !560)
!576 = !DILocation(line: 73, column: 5, scope: !560)
!577 = !DILocation(line: 73, column: 9, scope: !560)
!578 = !DILocation(line: 73, column: 16, scope: !560)
!579 = !DILocation(line: 74, column: 3, scope: !560)
!580 = !DILocation(line: 76, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 76, column: 7)
!582 = distinct !DILexicalBlock(scope: !556, file: !1, line: 75, column: 9)
!583 = !DILocation(line: 76, column: 11, scope: !581)
!584 = !DILocation(line: 76, column: 7, scope: !582)
!585 = !DILocation(line: 77, column: 4, scope: !581)
!586 = !DILocation(line: 77, column: 8, scope: !581)
!587 = !DILocation(line: 77, column: 19, scope: !581)
!588 = !DILocation(line: 78, column: 12, scope: !581)
!589 = !DILocation(line: 78, column: 16, scope: !581)
!590 = !DILocation(line: 78, column: 21, scope: !581)
!591 = !DILocation(line: 78, column: 30, scope: !581)
!592 = !DILocation(line: 78, column: 34, scope: !581)
!593 = !DILocation(line: 79, column: 12, scope: !581)
!594 = !DILocation(line: 79, column: 16, scope: !581)
!595 = !DILocation(line: 79, column: 21, scope: !581)
!596 = !DILocation(line: 79, column: 30, scope: !581)
!597 = !DILocation(line: 80, column: 3, scope: !582)
!598 = !DILocation(line: 82, column: 1, scope: !503)
!599 = distinct !DISubprogram(name: "mISDN_FsmChangeState", scope: !1, file: !1, line: 86, type: !600, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !96)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !21, !31}
!602 = !DILocalVariable(name: "fi", arg: 1, scope: !599, file: !1, line: 86, type: !21)
!603 = !DILocation(line: 86, column: 38, scope: !599)
!604 = !DILocalVariable(name: "newstate", arg: 2, scope: !599, file: !1, line: 86, type: !31)
!605 = !DILocation(line: 86, column: 46, scope: !599)
!606 = !DILocation(line: 88, column: 14, scope: !599)
!607 = !DILocation(line: 88, column: 2, scope: !599)
!608 = !DILocation(line: 88, column: 6, scope: !599)
!609 = !DILocation(line: 88, column: 12, scope: !599)
!610 = !DILocation(line: 89, column: 6, scope: !611)
!611 = distinct !DILexicalBlock(scope: !599, file: !1, line: 89, column: 6)
!612 = !DILocation(line: 89, column: 10, scope: !611)
!613 = !DILocation(line: 89, column: 6, scope: !599)
!614 = !DILocation(line: 90, column: 3, scope: !611)
!615 = !DILocation(line: 90, column: 7, scope: !611)
!616 = !DILocation(line: 90, column: 18, scope: !611)
!617 = !DILocation(line: 91, column: 11, scope: !611)
!618 = !DILocation(line: 91, column: 15, scope: !611)
!619 = !DILocation(line: 91, column: 20, scope: !611)
!620 = !DILocation(line: 91, column: 29, scope: !611)
!621 = !DILocation(line: 92, column: 1, scope: !599)
!622 = distinct !DISubprogram(name: "mISDN_FsmInitTimer", scope: !1, file: !1, line: 107, type: !623, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !96)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !21, !51}
!625 = !DILocalVariable(name: "fi", arg: 1, scope: !622, file: !1, line: 107, type: !21)
!626 = !DILocation(line: 107, column: 36, scope: !622)
!627 = !DILocalVariable(name: "ft", arg: 2, scope: !622, file: !1, line: 107, type: !51)
!628 = !DILocation(line: 107, column: 57, scope: !622)
!629 = !DILocation(line: 109, column: 11, scope: !622)
!630 = !DILocation(line: 109, column: 2, scope: !622)
!631 = !DILocation(line: 109, column: 6, scope: !622)
!632 = !DILocation(line: 109, column: 9, scope: !622)
!633 = !DILocation(line: 114, column: 2, scope: !622)
!634 = !DILocation(line: 115, column: 1, scope: !622)
!635 = distinct !DISubprogram(name: "FsmExpireTimer", scope: !1, file: !1, line: 96, type: !69, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!636 = !DILocalVariable(name: "t", arg: 1, scope: !635, file: !1, line: 96, type: !71)
!637 = !DILocation(line: 96, column: 35, scope: !635)
!638 = !DILocalVariable(name: "ft", scope: !635, file: !1, line: 98, type: !51)
!639 = !DILocation(line: 98, column: 19, scope: !635)
!640 = !DILocalVariable(name: "__mptr", scope: !641, file: !1, line: 98, type: !14)
!641 = distinct !DILexicalBlock(scope: !635, file: !1, line: 98, column: 24)
!642 = !DILocation(line: 98, column: 24, scope: !641)
!643 = !DILocation(line: 98, column: 24, scope: !644)
!644 = distinct !DILexicalBlock(scope: !641, file: !1, line: 98, column: 24)
!645 = !DILocation(line: 103, column: 17, scope: !635)
!646 = !DILocation(line: 103, column: 21, scope: !635)
!647 = !DILocation(line: 103, column: 25, scope: !635)
!648 = !DILocation(line: 103, column: 29, scope: !635)
!649 = !DILocation(line: 103, column: 36, scope: !635)
!650 = !DILocation(line: 103, column: 40, scope: !635)
!651 = !DILocation(line: 103, column: 2, scope: !635)
!652 = !DILocation(line: 104, column: 1, scope: !635)
!653 = distinct !DISubprogram(name: "mISDN_FsmDelTimer", scope: !1, file: !1, line: 119, type: !654, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !96)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !51, !31}
!656 = !DILocalVariable(name: "ft", arg: 1, scope: !653, file: !1, line: 119, type: !51)
!657 = !DILocation(line: 119, column: 36, scope: !653)
!658 = !DILocalVariable(name: "where", arg: 2, scope: !653, file: !1, line: 119, type: !31)
!659 = !DILocation(line: 119, column: 44, scope: !653)
!660 = !DILocation(line: 126, column: 13, scope: !653)
!661 = !DILocation(line: 126, column: 17, scope: !653)
!662 = !DILocation(line: 126, column: 2, scope: !653)
!663 = !DILocation(line: 127, column: 1, scope: !653)
!664 = distinct !DISubprogram(name: "mISDN_FsmAddTimer", scope: !1, file: !1, line: 131, type: !665, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !96)
!665 = !DISubroutineType(types: !666)
!666 = !{!31, !51, !31, !31, !14, !31}
!667 = !DILocalVariable(name: "ft", arg: 1, scope: !664, file: !1, line: 131, type: !51)
!668 = !DILocation(line: 131, column: 36, scope: !664)
!669 = !DILocalVariable(name: "millisec", arg: 2, scope: !664, file: !1, line: 132, type: !31)
!670 = !DILocation(line: 132, column: 9, scope: !664)
!671 = !DILocalVariable(name: "event", arg: 3, scope: !664, file: !1, line: 132, type: !31)
!672 = !DILocation(line: 132, column: 23, scope: !664)
!673 = !DILocalVariable(name: "arg", arg: 4, scope: !664, file: !1, line: 132, type: !14)
!674 = !DILocation(line: 132, column: 36, scope: !664)
!675 = !DILocalVariable(name: "where", arg: 5, scope: !664, file: !1, line: 132, type: !31)
!676 = !DILocation(line: 132, column: 45, scope: !664)
!677 = !DILocation(line: 141, column: 21, scope: !678)
!678 = distinct !DILexicalBlock(scope: !664, file: !1, line: 141, column: 6)
!679 = !DILocation(line: 141, column: 25, scope: !678)
!680 = !DILocation(line: 141, column: 6, scope: !678)
!681 = !DILocation(line: 141, column: 6, scope: !664)
!682 = !DILocation(line: 142, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !1, line: 142, column: 7)
!684 = distinct !DILexicalBlock(scope: !678, file: !1, line: 141, column: 30)
!685 = !DILocation(line: 142, column: 11, scope: !683)
!686 = !DILocation(line: 142, column: 15, scope: !683)
!687 = !DILocation(line: 142, column: 7, scope: !684)
!688 = !DILocation(line: 143, column: 4, scope: !689)
!689 = distinct !DILexicalBlock(scope: !683, file: !1, line: 142, column: 22)
!690 = !DILocation(line: 145, column: 4, scope: !689)
!691 = !DILocation(line: 145, column: 8, scope: !689)
!692 = !DILocation(line: 145, column: 12, scope: !689)
!693 = !DILocation(line: 145, column: 23, scope: !689)
!694 = !DILocation(line: 145, column: 27, scope: !689)
!695 = !DILocation(line: 147, column: 3, scope: !689)
!696 = !DILocation(line: 148, column: 3, scope: !684)
!697 = !DILocation(line: 150, column: 14, scope: !664)
!698 = !DILocation(line: 150, column: 2, scope: !664)
!699 = !DILocation(line: 150, column: 6, scope: !664)
!700 = !DILocation(line: 150, column: 12, scope: !664)
!701 = !DILocation(line: 151, column: 12, scope: !664)
!702 = !DILocation(line: 151, column: 2, scope: !664)
!703 = !DILocation(line: 151, column: 6, scope: !664)
!704 = !DILocation(line: 151, column: 10, scope: !664)
!705 = !DILocation(line: 152, column: 19, scope: !664)
!706 = !DILocation(line: 152, column: 30, scope: !664)
!707 = !DILocation(line: 152, column: 39, scope: !664)
!708 = !DILocation(line: 152, column: 45, scope: !664)
!709 = !DILocation(line: 152, column: 29, scope: !664)
!710 = !DILocation(line: 152, column: 27, scope: !664)
!711 = !DILocation(line: 152, column: 2, scope: !664)
!712 = !DILocation(line: 152, column: 6, scope: !664)
!713 = !DILocation(line: 152, column: 9, scope: !664)
!714 = !DILocation(line: 152, column: 17, scope: !664)
!715 = !DILocation(line: 153, column: 13, scope: !664)
!716 = !DILocation(line: 153, column: 17, scope: !664)
!717 = !DILocation(line: 153, column: 2, scope: !664)
!718 = !DILocation(line: 154, column: 2, scope: !664)
!719 = !DILocation(line: 155, column: 1, scope: !664)
!720 = distinct !DISubprogram(name: "timer_pending", scope: !57, file: !57, line: 166, type: !721, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!721 = !DISubroutineType(types: !722)
!722 = !{!31, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!725 = !DILocalVariable(name: "timer", arg: 1, scope: !720, file: !57, line: 166, type: !723)
!726 = !DILocation(line: 166, column: 59, scope: !720)
!727 = !DILocation(line: 168, column: 35, scope: !720)
!728 = !DILocation(line: 168, column: 42, scope: !720)
!729 = !DILocation(line: 168, column: 10, scope: !720)
!730 = !DILocation(line: 168, column: 9, scope: !720)
!731 = !DILocation(line: 168, column: 2, scope: !720)
!732 = distinct !DISubprogram(name: "mISDN_FsmRestartTimer", scope: !1, file: !1, line: 159, type: !733, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !96)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !51, !31, !31, !14, !31}
!735 = !DILocalVariable(name: "ft", arg: 1, scope: !732, file: !1, line: 159, type: !51)
!736 = !DILocation(line: 159, column: 40, scope: !732)
!737 = !DILocalVariable(name: "millisec", arg: 2, scope: !732, file: !1, line: 160, type: !31)
!738 = !DILocation(line: 160, column: 13, scope: !732)
!739 = !DILocalVariable(name: "event", arg: 3, scope: !732, file: !1, line: 160, type: !31)
!740 = !DILocation(line: 160, column: 27, scope: !732)
!741 = !DILocalVariable(name: "arg", arg: 4, scope: !732, file: !1, line: 160, type: !14)
!742 = !DILocation(line: 160, column: 40, scope: !732)
!743 = !DILocalVariable(name: "where", arg: 5, scope: !732, file: !1, line: 160, type: !31)
!744 = !DILocation(line: 160, column: 49, scope: !732)
!745 = !DILocation(line: 169, column: 21, scope: !746)
!746 = distinct !DILexicalBlock(scope: !732, file: !1, line: 169, column: 6)
!747 = !DILocation(line: 169, column: 25, scope: !746)
!748 = !DILocation(line: 169, column: 6, scope: !746)
!749 = !DILocation(line: 169, column: 6, scope: !732)
!750 = !DILocation(line: 170, column: 14, scope: !746)
!751 = !DILocation(line: 170, column: 18, scope: !746)
!752 = !DILocation(line: 170, column: 3, scope: !746)
!753 = !DILocation(line: 171, column: 14, scope: !732)
!754 = !DILocation(line: 171, column: 2, scope: !732)
!755 = !DILocation(line: 171, column: 6, scope: !732)
!756 = !DILocation(line: 171, column: 12, scope: !732)
!757 = !DILocation(line: 172, column: 12, scope: !732)
!758 = !DILocation(line: 172, column: 2, scope: !732)
!759 = !DILocation(line: 172, column: 6, scope: !732)
!760 = !DILocation(line: 172, column: 10, scope: !732)
!761 = !DILocation(line: 173, column: 19, scope: !732)
!762 = !DILocation(line: 173, column: 30, scope: !732)
!763 = !DILocation(line: 173, column: 39, scope: !732)
!764 = !DILocation(line: 173, column: 45, scope: !732)
!765 = !DILocation(line: 173, column: 29, scope: !732)
!766 = !DILocation(line: 173, column: 27, scope: !732)
!767 = !DILocation(line: 173, column: 2, scope: !732)
!768 = !DILocation(line: 173, column: 6, scope: !732)
!769 = !DILocation(line: 173, column: 9, scope: !732)
!770 = !DILocation(line: 173, column: 17, scope: !732)
!771 = !DILocation(line: 174, column: 13, scope: !732)
!772 = !DILocation(line: 174, column: 17, scope: !732)
!773 = !DILocation(line: 174, column: 2, scope: !732)
!774 = !DILocation(line: 175, column: 1, scope: !732)
!775 = distinct !DISubprogram(name: "get_order", scope: !776, file: !776, line: 29, type: !777, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!776 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!777 = !DISubroutineType(types: !778)
!778 = !{!31, !50}
!779 = !DILocalVariable(name: "x", arg: 1, scope: !780, file: !781, line: 366, type: !784)
!780 = distinct !DISubprogram(name: "fls64", scope: !781, file: !781, line: 366, type: !782, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!781 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!782 = !DISubroutineType(types: !783)
!783 = !{!31, !784}
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !76, line: 31, baseType: !785)
!785 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!786 = !DILocation(line: 366, column: 40, scope: !780, inlinedAt: !787)
!787 = distinct !DILocation(line: 46, column: 9, scope: !775)
!788 = !DILocalVariable(name: "bitpos", scope: !780, file: !781, line: 368, type: !31)
!789 = !DILocation(line: 368, column: 6, scope: !780, inlinedAt: !787)
!790 = !DILocalVariable(name: "size", arg: 1, scope: !775, file: !776, line: 29, type: !50)
!791 = !DILocation(line: 29, column: 63, scope: !775)
!792 = !DILocation(line: 31, column: 27, scope: !793)
!793 = distinct !DILexicalBlock(scope: !775, file: !776, line: 31, column: 6)
!794 = !DILocation(line: 31, column: 6, scope: !793)
!795 = !DILocation(line: 31, column: 6, scope: !775)
!796 = !DILocation(line: 32, column: 8, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !776, line: 32, column: 7)
!798 = distinct !DILexicalBlock(scope: !793, file: !776, line: 31, column: 34)
!799 = !DILocation(line: 32, column: 7, scope: !798)
!800 = !DILocation(line: 33, column: 4, scope: !797)
!801 = !DILocation(line: 35, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !798, file: !776, line: 35, column: 7)
!803 = !DILocation(line: 35, column: 12, scope: !802)
!804 = !DILocation(line: 35, column: 7, scope: !798)
!805 = !DILocation(line: 36, column: 4, scope: !802)
!806 = !DILocation(line: 38, column: 10, scope: !798)
!807 = !DILocation(line: 38, column: 28, scope: !798)
!808 = !DILocation(line: 38, column: 41, scope: !798)
!809 = !DILocation(line: 38, column: 3, scope: !798)
!810 = !DILocation(line: 41, column: 6, scope: !775)
!811 = !DILocation(line: 42, column: 7, scope: !775)
!812 = !DILocation(line: 46, column: 15, scope: !775)
!813 = !DILocation(line: 374, column: 2, scope: !780, inlinedAt: !787)
!814 = !DILocation(line: 376, column: 14, scope: !780, inlinedAt: !787)
!815 = !{i32 243142}
!816 = !DILocation(line: 377, column: 9, scope: !780, inlinedAt: !787)
!817 = !DILocation(line: 377, column: 16, scope: !780, inlinedAt: !787)
!818 = !DILocation(line: 46, column: 2, scope: !775)
!819 = !DILocation(line: 48, column: 1, scope: !775)
!820 = distinct !DISubprogram(name: "__ilog2_u64", scope: !821, file: !821, line: 30, type: !822, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!821 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!822 = !DISubroutineType(types: !823)
!823 = !{!31, !824}
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !74, line: 23, baseType: !784)
!825 = !DILocation(line: 366, column: 40, scope: !780, inlinedAt: !826)
!826 = distinct !DILocation(line: 32, column: 9, scope: !820)
!827 = !DILocation(line: 368, column: 6, scope: !780, inlinedAt: !826)
!828 = !DILocalVariable(name: "n", arg: 1, scope: !820, file: !821, line: 30, type: !824)
!829 = !DILocation(line: 30, column: 21, scope: !820)
!830 = !DILocation(line: 32, column: 15, scope: !820)
!831 = !DILocation(line: 374, column: 2, scope: !780, inlinedAt: !826)
!832 = !DILocation(line: 376, column: 14, scope: !780, inlinedAt: !826)
!833 = !DILocation(line: 377, column: 9, scope: !780, inlinedAt: !826)
!834 = !DILocation(line: 377, column: 16, scope: !780, inlinedAt: !826)
!835 = !DILocation(line: 32, column: 18, scope: !820)
!836 = !DILocation(line: 32, column: 2, scope: !820)
!837 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !838, file: !838, line: 137, type: !839, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!838 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!839 = !DISubroutineType(types: !840)
!840 = !{!14, !191, !841, !46, !12}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!843 = !DILocalVariable(name: "s", arg: 1, scope: !837, file: !838, line: 137, type: !191)
!844 = !DILocation(line: 137, column: 54, scope: !837)
!845 = !DILocalVariable(name: "object", arg: 2, scope: !837, file: !838, line: 137, type: !841)
!846 = !DILocation(line: 137, column: 69, scope: !837)
!847 = !DILocalVariable(name: "size", arg: 3, scope: !837, file: !838, line: 138, type: !46)
!848 = !DILocation(line: 138, column: 12, scope: !837)
!849 = !DILocalVariable(name: "flags", arg: 4, scope: !837, file: !838, line: 138, type: !12)
!850 = !DILocation(line: 138, column: 24, scope: !837)
!851 = !DILocation(line: 140, column: 17, scope: !837)
!852 = !DILocation(line: 140, column: 2, scope: !837)
!853 = distinct !DISubprogram(name: "__must_check_overflow", scope: !460, file: !460, line: 52, type: !854, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!854 = !DISubroutineType(types: !855)
!855 = !{!856, !856}
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !13, line: 30, baseType: !857)
!857 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!858 = !DILocalVariable(name: "overflow", arg: 1, scope: !853, file: !460, line: 52, type: !856)
!859 = !DILocation(line: 52, column: 60, scope: !853)
!860 = !DILocation(line: 54, column: 9, scope: !853)
!861 = !DILocation(line: 54, column: 2, scope: !853)
!862 = distinct !DISubprogram(name: "hlist_unhashed_lockless", scope: !863, file: !863, line: 819, type: !864, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !96)
!863 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!864 = !DISubroutineType(types: !865)
!865 = !{!31, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!868 = !DILocalVariable(name: "h", arg: 1, scope: !862, file: !863, line: 819, type: !866)
!869 = !DILocation(line: 819, column: 68, scope: !862)
!870 = !DILocation(line: 821, column: 10, scope: !871)
!871 = distinct !DILexicalBlock(scope: !862, file: !863, line: 821, column: 10)
!872 = !DILocation(line: 821, column: 10, scope: !873)
!873 = distinct !DILexicalBlock(scope: !871, file: !863, line: 821, column: 10)
!874 = !DILocation(line: 821, column: 9, scope: !862)
!875 = !DILocation(line: 821, column: 2, scope: !862)
