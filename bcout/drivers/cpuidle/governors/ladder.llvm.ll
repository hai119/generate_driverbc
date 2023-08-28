; ModuleID = '../bcout/drivers/cpuidle/governors/ladder.llvm.bc'
source_filename = "drivers/cpuidle/governors/ladder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall2.init\22, \22a\22\09"
module asm "__initcall_init_ladder2:\09\09\09"
module asm ".long\09init_ladder - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, void (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i8*)*, void (%struct.cpuidle_device*, i32)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.cpuidle_driver = type { i8*, %struct.module*, i8, [10 x %struct.cpuidle_state], i32, i32, %struct.cpumask*, i8* }
%struct.module = type opaque
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* }
%struct.cpumask = type { [1 x i64] }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_kobj*], %struct.cpuidle_driver_kobj*, %struct.cpuidle_device_kobj*, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_state_kobj = type opaque
%struct.cpuidle_driver_kobj = type opaque
%struct.cpuidle_device_kobj = type opaque
%struct.ladder_device = type { [10 x %struct.ladder_device_state] }
%struct.ladder_device_state = type { %struct.anon, %struct.anon.0 }
%struct.anon = type { i32, i32, i64, i64 }
%struct.anon.0 = type { i32, i32 }

@__UNIQUE_ID___addressable_init_ladder161 = internal global i8* bitcast (i32 ()* @init_ladder to i8*), section ".discard.addressable", align 8, !dbg !0
@ladder_governor = internal global %struct.cpuidle_governor { [16 x i8] c"ladder\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, i32 10, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)* @ladder_enable_device, void (%struct.cpuidle_driver*, %struct.cpuidle_device*)* null, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i8*)* @ladder_select_state, void (%struct.cpuidle_device*, i32)* @ladder_reflect }, align 8, !dbg !38
@ladder_devices = internal global %struct.ladder_device zeroinitializer, section ".data", align 8, !dbg !163
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_init_ladder161 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @init_ladder() #0 section ".init.text" !dbg !170 {
entry:
  store i32 25, i32* getelementptr inbounds (%struct.cpuidle_governor, %struct.cpuidle_governor* @ladder_governor, i32 0, i32 2), align 8, !dbg !173
  %call = call i32 @cpuidle_register_governor(%struct.cpuidle_governor* @ladder_governor) #4, !dbg !175
  ret i32 %call, !dbg !176
}

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_register_governor(%struct.cpuidle_governor*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ladder_enable_device(%struct.cpuidle_driver* %drv, %struct.cpuidle_device* %dev) #2 !dbg !177 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %i = alloca i32, align 4
  %first_idx = alloca i32, align 4
  %ldev = alloca %struct.ladder_device*, align 8
  %tmp = alloca %struct.ladder_device*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.ladder_device*, align 8
  %lstate = alloca %struct.ladder_device_state*, align 8
  %state = alloca %struct.cpuidle_state*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !178, metadata !DIExpression()), !dbg !179
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32* %i, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %first_idx, metadata !184, metadata !DIExpression()), !dbg !185
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !186
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %0, i32 0, i32 3, !dbg !187
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 0, !dbg !186
  %flags = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx, i32 0, i32 4, !dbg !188
  %1 = load i32, i32* %flags, align 8, !dbg !188
  %conv = zext i32 %1 to i64, !dbg !186
  %and = and i64 %conv, 1, !dbg !189
  %tobool = icmp ne i64 %and, 0, !dbg !186
  %2 = zext i1 %tobool to i64, !dbg !186
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !186
  store i32 %cond, i32* %first_idx, align 4, !dbg !185
  call void @llvm.dbg.declare(metadata %struct.ladder_device** %ldev, metadata !190, metadata !DIExpression()), !dbg !191
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !192
  %cpu = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %3, i32 0, i32 1, !dbg !192
  %4 = load i32, i32* %cpu, align 4, !dbg !192
  br label %do.body, !dbg !194

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !196, metadata !DIExpression()), !dbg !200
  store i8* null, i8** %__vpp_verify, align 8, !dbg !200
  %5 = load i8*, i8** %__vpp_verify, align 8, !dbg !200
  br label %do.end, !dbg !200

do.end:                                           ; preds = %do.body
  store %struct.ladder_device* @ladder_devices, %struct.ladder_device** %tmp1, align 8, !dbg !200
  %6 = load %struct.ladder_device*, %struct.ladder_device** %tmp1, align 8, !dbg !194
  store %struct.ladder_device* %6, %struct.ladder_device** %tmp, align 8, !dbg !192
  %7 = load %struct.ladder_device*, %struct.ladder_device** %tmp, align 8, !dbg !192
  store %struct.ladder_device* %7, %struct.ladder_device** %ldev, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata %struct.ladder_device_state** %lstate, metadata !201, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %state, metadata !204, metadata !DIExpression()), !dbg !206
  %8 = load i32, i32* %first_idx, align 4, !dbg !207
  %9 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !208
  %last_state_idx = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %9, i32 0, i32 3, !dbg !209
  store i32 %8, i32* %last_state_idx, align 8, !dbg !210
  %10 = load i32, i32* %first_idx, align 4, !dbg !211
  store i32 %10, i32* %i, align 4, !dbg !213
  br label %for.cond, !dbg !214

for.cond:                                         ; preds = %for.inc, %do.end
  %11 = load i32, i32* %i, align 4, !dbg !215
  %12 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !217
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %12, i32 0, i32 4, !dbg !218
  %13 = load i32, i32* %state_count, align 8, !dbg !218
  %cmp = icmp slt i32 %11, %13, !dbg !219
  br i1 %cmp, label %for.body, label %for.end, !dbg !220

for.body:                                         ; preds = %for.cond
  %14 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !221
  %states3 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %14, i32 0, i32 3, !dbg !223
  %15 = load i32, i32* %i, align 4, !dbg !224
  %idxprom = sext i32 %15 to i64, !dbg !221
  %arrayidx4 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states3, i64 0, i64 %idxprom, !dbg !221
  store %struct.cpuidle_state* %arrayidx4, %struct.cpuidle_state** %state, align 8, !dbg !225
  %16 = load %struct.ladder_device*, %struct.ladder_device** %ldev, align 8, !dbg !226
  %states5 = getelementptr inbounds %struct.ladder_device, %struct.ladder_device* %16, i32 0, i32 0, !dbg !227
  %17 = load i32, i32* %i, align 4, !dbg !228
  %idxprom6 = sext i32 %17 to i64, !dbg !226
  %arrayidx7 = getelementptr [10 x %struct.ladder_device_state], [10 x %struct.ladder_device_state]* %states5, i64 0, i64 %idxprom6, !dbg !226
  store %struct.ladder_device_state* %arrayidx7, %struct.ladder_device_state** %lstate, align 8, !dbg !229
  %18 = load %struct.ladder_device_state*, %struct.ladder_device_state** %lstate, align 8, !dbg !230
  %stats = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %18, i32 0, i32 1, !dbg !231
  %promotion_count = getelementptr inbounds %struct.anon.0, %struct.anon.0* %stats, i32 0, i32 0, !dbg !232
  store i32 0, i32* %promotion_count, align 8, !dbg !233
  %19 = load %struct.ladder_device_state*, %struct.ladder_device_state** %lstate, align 8, !dbg !234
  %stats8 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %19, i32 0, i32 1, !dbg !235
  %demotion_count = getelementptr inbounds %struct.anon.0, %struct.anon.0* %stats8, i32 0, i32 1, !dbg !236
  store i32 0, i32* %demotion_count, align 4, !dbg !237
  %20 = load %struct.ladder_device_state*, %struct.ladder_device_state** %lstate, align 8, !dbg !238
  %threshold = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %20, i32 0, i32 0, !dbg !239
  %promotion_count9 = getelementptr inbounds %struct.anon, %struct.anon* %threshold, i32 0, i32 0, !dbg !240
  store i32 4, i32* %promotion_count9, align 8, !dbg !241
  %21 = load %struct.ladder_device_state*, %struct.ladder_device_state** %lstate, align 8, !dbg !242
  %threshold10 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %21, i32 0, i32 0, !dbg !243
  %demotion_count11 = getelementptr inbounds %struct.anon, %struct.anon* %threshold10, i32 0, i32 1, !dbg !244
  store i32 1, i32* %demotion_count11, align 4, !dbg !245
  %22 = load i32, i32* %i, align 4, !dbg !246
  %23 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !248
  %state_count12 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %23, i32 0, i32 4, !dbg !249
  %24 = load i32, i32* %state_count12, align 8, !dbg !249
  %sub = sub i32 %24, 1, !dbg !250
  %cmp13 = icmp slt i32 %22, %sub, !dbg !251
  br i1 %cmp13, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %for.body
  %25 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !253
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %25, i32 0, i32 2, !dbg !254
  %26 = load i64, i64* %exit_latency_ns, align 8, !dbg !254
  %27 = load %struct.ladder_device_state*, %struct.ladder_device_state** %lstate, align 8, !dbg !255
  %threshold15 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %27, i32 0, i32 0, !dbg !256
  %promotion_time_ns = getelementptr inbounds %struct.anon, %struct.anon* %threshold15, i32 0, i32 2, !dbg !257
  store i64 %26, i64* %promotion_time_ns, align 8, !dbg !258
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then, %for.body
  %28 = load i32, i32* %i, align 4, !dbg !259
  %29 = load i32, i32* %first_idx, align 4, !dbg !261
  %cmp16 = icmp sgt i32 %28, %29, !dbg !262
  br i1 %cmp16, label %if.then18, label %if.end21, !dbg !263

if.then18:                                        ; preds = %if.end
  %30 = load %struct.cpuidle_state*, %struct.cpuidle_state** %state, align 8, !dbg !264
  %exit_latency_ns19 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %30, i32 0, i32 2, !dbg !265
  %31 = load i64, i64* %exit_latency_ns19, align 8, !dbg !265
  %32 = load %struct.ladder_device_state*, %struct.ladder_device_state** %lstate, align 8, !dbg !266
  %threshold20 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %32, i32 0, i32 0, !dbg !267
  %demotion_time_ns = getelementptr inbounds %struct.anon, %struct.anon* %threshold20, i32 0, i32 3, !dbg !268
  store i64 %31, i64* %demotion_time_ns, align 8, !dbg !269
  br label %if.end21, !dbg !266

if.end21:                                         ; preds = %if.then18, %if.end
  br label %for.inc, !dbg !270

for.inc:                                          ; preds = %if.end21
  %33 = load i32, i32* %i, align 4, !dbg !271
  %inc = add i32 %33, 1, !dbg !271
  store i32 %inc, i32* %i, align 4, !dbg !271
  br label %for.cond, !dbg !272, !llvm.loop !273

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !275
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ladder_select_state(%struct.cpuidle_driver* %drv, %struct.cpuidle_device* %dev, i8* %dummy) #2 !dbg !276 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %dummy.addr = alloca i8*, align 8
  %ldev = alloca %struct.ladder_device*, align 8
  %tmp = alloca %struct.ladder_device*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.ladder_device*, align 8
  %last_state = alloca %struct.ladder_device_state*, align 8
  %last_idx = alloca i32, align 4
  %first_idx = alloca i32, align 4
  %latency_req = alloca i64, align 8
  %last_residency = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !277, metadata !DIExpression()), !dbg !278
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !279, metadata !DIExpression()), !dbg !280
  store i8* %dummy, i8** %dummy.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dummy.addr, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata %struct.ladder_device** %ldev, metadata !283, metadata !DIExpression()), !dbg !284
  br label %do.body, !dbg !285

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !288, metadata !DIExpression()), !dbg !290
  store i8* null, i8** %__vpp_verify, align 8, !dbg !290
  %0 = load i8*, i8** %__vpp_verify, align 8, !dbg !290
  br label %do.end, !dbg !290

do.end:                                           ; preds = %do.body
  store %struct.ladder_device* @ladder_devices, %struct.ladder_device** %tmp1, align 8, !dbg !290
  %1 = load %struct.ladder_device*, %struct.ladder_device** %tmp1, align 8, !dbg !285
  store %struct.ladder_device* %1, %struct.ladder_device** %tmp, align 8, !dbg !291
  %2 = load %struct.ladder_device*, %struct.ladder_device** %tmp, align 8, !dbg !291
  store %struct.ladder_device* %2, %struct.ladder_device** %ldev, align 8, !dbg !284
  call void @llvm.dbg.declare(metadata %struct.ladder_device_state** %last_state, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata i32* %last_idx, metadata !294, metadata !DIExpression()), !dbg !295
  %3 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !296
  %last_state_idx = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %3, i32 0, i32 3, !dbg !297
  %4 = load i32, i32* %last_state_idx, align 8, !dbg !297
  store i32 %4, i32* %last_idx, align 4, !dbg !295
  call void @llvm.dbg.declare(metadata i32* %first_idx, metadata !298, metadata !DIExpression()), !dbg !299
  %5 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !300
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %5, i32 0, i32 3, !dbg !301
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 0, !dbg !300
  %flags = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx, i32 0, i32 4, !dbg !302
  %6 = load i32, i32* %flags, align 8, !dbg !302
  %conv = zext i32 %6 to i64, !dbg !300
  %and = and i64 %conv, 1, !dbg !303
  %tobool = icmp ne i64 %and, 0, !dbg !300
  %7 = zext i1 %tobool to i64, !dbg !300
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !300
  store i32 %cond, i32* %first_idx, align 4, !dbg !299
  call void @llvm.dbg.declare(metadata i64* %latency_req, metadata !304, metadata !DIExpression()), !dbg !305
  %8 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !306
  %cpu = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %8, i32 0, i32 1, !dbg !307
  %9 = load i32, i32* %cpu, align 4, !dbg !307
  %call = call i64 @cpuidle_governor_latency_req(i32 %9) #4, !dbg !308
  store i64 %call, i64* %latency_req, align 8, !dbg !305
  call void @llvm.dbg.declare(metadata i64* %last_residency, metadata !309, metadata !DIExpression()), !dbg !310
  %10 = load i64, i64* %latency_req, align 8, !dbg !311
  %cmp = icmp eq i64 %10, 0, !dbg !311
  %lnot = xor i1 %cmp, true, !dbg !311
  %lnot3 = xor i1 %lnot, true, !dbg !311
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !311
  %conv4 = sext i32 %lnot.ext to i64, !dbg !311
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !311
  br i1 %tobool5, label %if.then, label %if.end, !dbg !313

if.then:                                          ; preds = %do.end
  %11 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !314
  %12 = load %struct.ladder_device*, %struct.ladder_device** %ldev, align 8, !dbg !316
  %13 = load i32, i32* %last_idx, align 4, !dbg !317
  call void @ladder_do_selection(%struct.cpuidle_device* %11, %struct.ladder_device* %12, i32 %13, i32 0) #4, !dbg !318
  store i32 0, i32* %retval, align 4, !dbg !319
  br label %return, !dbg !319

if.end:                                           ; preds = %do.end
  %14 = load %struct.ladder_device*, %struct.ladder_device** %ldev, align 8, !dbg !320
  %states6 = getelementptr inbounds %struct.ladder_device, %struct.ladder_device* %14, i32 0, i32 0, !dbg !321
  %15 = load i32, i32* %last_idx, align 4, !dbg !322
  %idxprom = sext i32 %15 to i64, !dbg !320
  %arrayidx7 = getelementptr [10 x %struct.ladder_device_state], [10 x %struct.ladder_device_state]* %states6, i64 0, i64 %idxprom, !dbg !320
  store %struct.ladder_device_state* %arrayidx7, %struct.ladder_device_state** %last_state, align 8, !dbg !323
  %16 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !324
  %last_residency_ns = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %16, i32 0, i32 4, !dbg !325
  %17 = load i64, i64* %last_residency_ns, align 8, !dbg !325
  %18 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !326
  %states8 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %18, i32 0, i32 3, !dbg !327
  %19 = load i32, i32* %last_idx, align 4, !dbg !328
  %idxprom9 = sext i32 %19 to i64, !dbg !326
  %arrayidx10 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states8, i64 0, i64 %idxprom9, !dbg !326
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx10, i32 0, i32 2, !dbg !329
  %20 = load i64, i64* %exit_latency_ns, align 8, !dbg !329
  %sub = sub i64 %17, %20, !dbg !330
  store i64 %sub, i64* %last_residency, align 8, !dbg !331
  %21 = load i32, i32* %last_idx, align 4, !dbg !332
  %22 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !334
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %22, i32 0, i32 4, !dbg !335
  %23 = load i32, i32* %state_count, align 8, !dbg !335
  %sub11 = sub i32 %23, 1, !dbg !336
  %cmp12 = icmp slt i32 %21, %sub11, !dbg !337
  br i1 %cmp12, label %land.lhs.true, label %if.end40, !dbg !338

land.lhs.true:                                    ; preds = %if.end
  %24 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !339
  %states_usage = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %24, i32 0, i32 7, !dbg !340
  %25 = load i32, i32* %last_idx, align 4, !dbg !341
  %add = add i32 %25, 1, !dbg !342
  %idxprom14 = sext i32 %add to i64, !dbg !339
  %arrayidx15 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage, i64 0, i64 %idxprom14, !dbg !339
  %disable = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx15, i32 0, i32 0, !dbg !343
  %26 = load i64, i64* %disable, align 8, !dbg !343
  %tobool16 = icmp ne i64 %26, 0, !dbg !339
  br i1 %tobool16, label %if.end40, label %land.lhs.true17, !dbg !344

land.lhs.true17:                                  ; preds = %land.lhs.true
  %27 = load i64, i64* %last_residency, align 8, !dbg !345
  %28 = load %struct.ladder_device_state*, %struct.ladder_device_state** %last_state, align 8, !dbg !346
  %threshold = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %28, i32 0, i32 0, !dbg !347
  %promotion_time_ns = getelementptr inbounds %struct.anon, %struct.anon* %threshold, i32 0, i32 2, !dbg !348
  %29 = load i64, i64* %promotion_time_ns, align 8, !dbg !348
  %cmp18 = icmp ugt i64 %27, %29, !dbg !349
  br i1 %cmp18, label %land.lhs.true20, label %if.end40, !dbg !350

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %30 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !351
  %states21 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %30, i32 0, i32 3, !dbg !352
  %31 = load i32, i32* %last_idx, align 4, !dbg !353
  %add22 = add i32 %31, 1, !dbg !354
  %idxprom23 = sext i32 %add22 to i64, !dbg !351
  %arrayidx24 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states21, i64 0, i64 %idxprom23, !dbg !351
  %exit_latency_ns25 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx24, i32 0, i32 2, !dbg !355
  %32 = load i64, i64* %exit_latency_ns25, align 8, !dbg !355
  %33 = load i64, i64* %latency_req, align 8, !dbg !356
  %cmp26 = icmp ule i64 %32, %33, !dbg !357
  br i1 %cmp26, label %if.then28, label %if.end40, !dbg !358

if.then28:                                        ; preds = %land.lhs.true20
  %34 = load %struct.ladder_device_state*, %struct.ladder_device_state** %last_state, align 8, !dbg !359
  %stats = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %34, i32 0, i32 1, !dbg !361
  %promotion_count = getelementptr inbounds %struct.anon.0, %struct.anon.0* %stats, i32 0, i32 0, !dbg !362
  %35 = load i32, i32* %promotion_count, align 8, !dbg !363
  %inc = add i32 %35, 1, !dbg !363
  store i32 %inc, i32* %promotion_count, align 8, !dbg !363
  %36 = load %struct.ladder_device_state*, %struct.ladder_device_state** %last_state, align 8, !dbg !364
  %stats29 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %36, i32 0, i32 1, !dbg !365
  %demotion_count = getelementptr inbounds %struct.anon.0, %struct.anon.0* %stats29, i32 0, i32 1, !dbg !366
  store i32 0, i32* %demotion_count, align 4, !dbg !367
  %37 = load %struct.ladder_device_state*, %struct.ladder_device_state** %last_state, align 8, !dbg !368
  %stats30 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %37, i32 0, i32 1, !dbg !370
  %promotion_count31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %stats30, i32 0, i32 0, !dbg !371
  %38 = load i32, i32* %promotion_count31, align 8, !dbg !371
  %39 = load %struct.ladder_device_state*, %struct.ladder_device_state** %last_state, align 8, !dbg !372
  %threshold32 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %39, i32 0, i32 0, !dbg !373
  %promotion_count33 = getelementptr inbounds %struct.anon, %struct.anon* %threshold32, i32 0, i32 0, !dbg !374
  %40 = load i32, i32* %promotion_count33, align 8, !dbg !374
  %cmp34 = icmp uge i32 %38, %40, !dbg !375
  br i1 %cmp34, label %if.then36, label %if.end39, !dbg !376

if.then36:                                        ; preds = %if.then28
  %41 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !377
  %42 = load %struct.ladder_device*, %struct.ladder_device** %ldev, align 8, !dbg !379
  %43 = load i32, i32* %last_idx, align 4, !dbg !380
  %44 = load i32, i32* %last_idx, align 4, !dbg !381
  %add37 = add i32 %44, 1, !dbg !382
  call void @ladder_do_selection(%struct.cpuidle_device* %41, %struct.ladder_device* %42, i32 %43, i32 %add37) #4, !dbg !383
  %45 = load i32, i32* %last_idx, align 4, !dbg !384
  %add38 = add i32 %45, 1, !dbg !385
  store i32 %add38, i32* %retval, align 4, !dbg !386
  br label %return, !dbg !386

if.end39:                                         ; preds = %if.then28
  br label %if.end40, !dbg !387

if.end40:                                         ; preds = %if.end39, %land.lhs.true20, %land.lhs.true17, %land.lhs.true, %if.end
  %46 = load i32, i32* %last_idx, align 4, !dbg !388
  %47 = load i32, i32* %first_idx, align 4, !dbg !390
  %cmp41 = icmp sgt i32 %46, %47, !dbg !391
  br i1 %cmp41, label %land.lhs.true43, label %if.end67, !dbg !392

land.lhs.true43:                                  ; preds = %if.end40
  %48 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !393
  %states_usage44 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %48, i32 0, i32 7, !dbg !394
  %49 = load i32, i32* %last_idx, align 4, !dbg !395
  %idxprom45 = sext i32 %49 to i64, !dbg !393
  %arrayidx46 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage44, i64 0, i64 %idxprom45, !dbg !393
  %disable47 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx46, i32 0, i32 0, !dbg !396
  %50 = load i64, i64* %disable47, align 8, !dbg !396
  %tobool48 = icmp ne i64 %50, 0, !dbg !393
  br i1 %tobool48, label %if.then55, label %lor.lhs.false, !dbg !397

lor.lhs.false:                                    ; preds = %land.lhs.true43
  %51 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !398
  %states49 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %51, i32 0, i32 3, !dbg !399
  %52 = load i32, i32* %last_idx, align 4, !dbg !400
  %idxprom50 = sext i32 %52 to i64, !dbg !398
  %arrayidx51 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states49, i64 0, i64 %idxprom50, !dbg !398
  %exit_latency_ns52 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx51, i32 0, i32 2, !dbg !401
  %53 = load i64, i64* %exit_latency_ns52, align 8, !dbg !401
  %54 = load i64, i64* %latency_req, align 8, !dbg !402
  %cmp53 = icmp ugt i64 %53, %54, !dbg !403
  br i1 %cmp53, label %if.then55, label %if.end67, !dbg !404

if.then55:                                        ; preds = %lor.lhs.false, %land.lhs.true43
  call void @llvm.dbg.declare(metadata i32* %i, metadata !405, metadata !DIExpression()), !dbg !407
  %55 = load i32, i32* %last_idx, align 4, !dbg !408
  %sub56 = sub i32 %55, 1, !dbg !410
  store i32 %sub56, i32* %i, align 4, !dbg !411
  br label %for.cond, !dbg !412

for.cond:                                         ; preds = %for.inc, %if.then55
  %56 = load i32, i32* %i, align 4, !dbg !413
  %57 = load i32, i32* %first_idx, align 4, !dbg !415
  %cmp57 = icmp sgt i32 %56, %57, !dbg !416
  br i1 %cmp57, label %for.body, label %for.end, !dbg !417

for.body:                                         ; preds = %for.cond
  %58 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !418
  %states59 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %58, i32 0, i32 3, !dbg !421
  %59 = load i32, i32* %i, align 4, !dbg !422
  %idxprom60 = sext i32 %59 to i64, !dbg !418
  %arrayidx61 = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states59, i64 0, i64 %idxprom60, !dbg !418
  %exit_latency_ns62 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx61, i32 0, i32 2, !dbg !423
  %60 = load i64, i64* %exit_latency_ns62, align 8, !dbg !423
  %61 = load i64, i64* %latency_req, align 8, !dbg !424
  %cmp63 = icmp ule i64 %60, %61, !dbg !425
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !426

if.then65:                                        ; preds = %for.body
  br label %for.end, !dbg !427

if.end66:                                         ; preds = %for.body
  br label %for.inc, !dbg !428

for.inc:                                          ; preds = %if.end66
  %62 = load i32, i32* %i, align 4, !dbg !429
  %dec = add i32 %62, -1, !dbg !429
  store i32 %dec, i32* %i, align 4, !dbg !429
  br label %for.cond, !dbg !430, !llvm.loop !431

for.end:                                          ; preds = %if.then65, %for.cond
  %63 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !433
  %64 = load %struct.ladder_device*, %struct.ladder_device** %ldev, align 8, !dbg !434
  %65 = load i32, i32* %last_idx, align 4, !dbg !435
  %66 = load i32, i32* %i, align 4, !dbg !436
  call void @ladder_do_selection(%struct.cpuidle_device* %63, %struct.ladder_device* %64, i32 %65, i32 %66) #4, !dbg !437
  %67 = load i32, i32* %i, align 4, !dbg !438
  store i32 %67, i32* %retval, align 4, !dbg !439
  br label %return, !dbg !439

if.end67:                                         ; preds = %lor.lhs.false, %if.end40
  %68 = load i32, i32* %last_idx, align 4, !dbg !440
  %69 = load i32, i32* %first_idx, align 4, !dbg !442
  %cmp68 = icmp sgt i32 %68, %69, !dbg !443
  br i1 %cmp68, label %land.lhs.true70, label %if.end90, !dbg !444

land.lhs.true70:                                  ; preds = %if.end67
  %70 = load i64, i64* %last_residency, align 8, !dbg !445
  %71 = load %struct.ladder_device_state*, %struct.ladder_device_state** %last_state, align 8, !dbg !446
  %threshold71 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %71, i32 0, i32 0, !dbg !447
  %demotion_time_ns = getelementptr inbounds %struct.anon, %struct.anon* %threshold71, i32 0, i32 3, !dbg !448
  %72 = load i64, i64* %demotion_time_ns, align 8, !dbg !448
  %cmp72 = icmp ult i64 %70, %72, !dbg !449
  br i1 %cmp72, label %if.then74, label %if.end90, !dbg !450

if.then74:                                        ; preds = %land.lhs.true70
  %73 = load %struct.ladder_device_state*, %struct.ladder_device_state** %last_state, align 8, !dbg !451
  %stats75 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %73, i32 0, i32 1, !dbg !453
  %demotion_count76 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %stats75, i32 0, i32 1, !dbg !454
  %74 = load i32, i32* %demotion_count76, align 4, !dbg !455
  %inc77 = add i32 %74, 1, !dbg !455
  store i32 %inc77, i32* %demotion_count76, align 4, !dbg !455
  %75 = load %struct.ladder_device_state*, %struct.ladder_device_state** %last_state, align 8, !dbg !456
  %stats78 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %75, i32 0, i32 1, !dbg !457
  %promotion_count79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %stats78, i32 0, i32 0, !dbg !458
  store i32 0, i32* %promotion_count79, align 8, !dbg !459
  %76 = load %struct.ladder_device_state*, %struct.ladder_device_state** %last_state, align 8, !dbg !460
  %stats80 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %76, i32 0, i32 1, !dbg !462
  %demotion_count81 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %stats80, i32 0, i32 1, !dbg !463
  %77 = load i32, i32* %demotion_count81, align 4, !dbg !463
  %78 = load %struct.ladder_device_state*, %struct.ladder_device_state** %last_state, align 8, !dbg !464
  %threshold82 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %78, i32 0, i32 0, !dbg !465
  %demotion_count83 = getelementptr inbounds %struct.anon, %struct.anon* %threshold82, i32 0, i32 1, !dbg !466
  %79 = load i32, i32* %demotion_count83, align 4, !dbg !466
  %cmp84 = icmp uge i32 %77, %79, !dbg !467
  br i1 %cmp84, label %if.then86, label %if.end89, !dbg !468

if.then86:                                        ; preds = %if.then74
  %80 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !469
  %81 = load %struct.ladder_device*, %struct.ladder_device** %ldev, align 8, !dbg !471
  %82 = load i32, i32* %last_idx, align 4, !dbg !472
  %83 = load i32, i32* %last_idx, align 4, !dbg !473
  %sub87 = sub i32 %83, 1, !dbg !474
  call void @ladder_do_selection(%struct.cpuidle_device* %80, %struct.ladder_device* %81, i32 %82, i32 %sub87) #4, !dbg !475
  %84 = load i32, i32* %last_idx, align 4, !dbg !476
  %sub88 = sub i32 %84, 1, !dbg !477
  store i32 %sub88, i32* %retval, align 4, !dbg !478
  br label %return, !dbg !478

if.end89:                                         ; preds = %if.then74
  br label %if.end90, !dbg !479

if.end90:                                         ; preds = %if.end89, %land.lhs.true70, %if.end67
  %85 = load i32, i32* %last_idx, align 4, !dbg !480
  store i32 %85, i32* %retval, align 4, !dbg !481
  br label %return, !dbg !481

return:                                           ; preds = %if.end90, %if.then86, %for.end, %if.then36, %if.then
  %86 = load i32, i32* %retval, align 4, !dbg !482
  ret i32 %86, !dbg !482
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ladder_reflect(%struct.cpuidle_device* %dev, i32 %index) #2 !dbg !483 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %index.addr = alloca i32, align 4
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !484, metadata !DIExpression()), !dbg !485
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !486, metadata !DIExpression()), !dbg !487
  %0 = load i32, i32* %index.addr, align 4, !dbg !488
  %cmp = icmp sgt i32 %0, 0, !dbg !490
  br i1 %cmp, label %if.then, label %if.end, !dbg !491

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4, !dbg !492
  %2 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !493
  %last_state_idx = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %2, i32 0, i32 3, !dbg !494
  store i32 %1, i32* %last_state_idx, align 8, !dbg !495
  br label %if.end, !dbg !493

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !496
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i64 @cpuidle_governor_latency_req(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ladder_do_selection(%struct.cpuidle_device* %dev, %struct.ladder_device* %ldev, i32 %old_idx, i32 %new_idx) #2 !dbg !497 {
entry:
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  %ldev.addr = alloca %struct.ladder_device*, align 8
  %old_idx.addr = alloca i32, align 4
  %new_idx.addr = alloca i32, align 4
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !500, metadata !DIExpression()), !dbg !501
  store %struct.ladder_device* %ldev, %struct.ladder_device** %ldev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ladder_device** %ldev.addr, metadata !502, metadata !DIExpression()), !dbg !503
  store i32 %old_idx, i32* %old_idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %old_idx.addr, metadata !504, metadata !DIExpression()), !dbg !505
  store i32 %new_idx, i32* %new_idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %new_idx.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load %struct.ladder_device*, %struct.ladder_device** %ldev.addr, align 8, !dbg !508
  %states = getelementptr inbounds %struct.ladder_device, %struct.ladder_device* %0, i32 0, i32 0, !dbg !509
  %1 = load i32, i32* %old_idx.addr, align 4, !dbg !510
  %idxprom = sext i32 %1 to i64, !dbg !508
  %arrayidx = getelementptr [10 x %struct.ladder_device_state], [10 x %struct.ladder_device_state]* %states, i64 0, i64 %idxprom, !dbg !508
  %stats = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %arrayidx, i32 0, i32 1, !dbg !511
  %promotion_count = getelementptr inbounds %struct.anon.0, %struct.anon.0* %stats, i32 0, i32 0, !dbg !512
  store i32 0, i32* %promotion_count, align 8, !dbg !513
  %2 = load %struct.ladder_device*, %struct.ladder_device** %ldev.addr, align 8, !dbg !514
  %states1 = getelementptr inbounds %struct.ladder_device, %struct.ladder_device* %2, i32 0, i32 0, !dbg !515
  %3 = load i32, i32* %old_idx.addr, align 4, !dbg !516
  %idxprom2 = sext i32 %3 to i64, !dbg !514
  %arrayidx3 = getelementptr [10 x %struct.ladder_device_state], [10 x %struct.ladder_device_state]* %states1, i64 0, i64 %idxprom2, !dbg !514
  %stats4 = getelementptr inbounds %struct.ladder_device_state, %struct.ladder_device_state* %arrayidx3, i32 0, i32 1, !dbg !517
  %demotion_count = getelementptr inbounds %struct.anon.0, %struct.anon.0* %stats4, i32 0, i32 1, !dbg !518
  store i32 0, i32* %demotion_count, align 4, !dbg !519
  %4 = load i32, i32* %new_idx.addr, align 4, !dbg !520
  %5 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !521
  %last_state_idx = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %5, i32 0, i32 3, !dbg !522
  store i32 %4, i32* %last_state_idx, align 8, !dbg !523
  ret void, !dbg !524
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_init_ladder161", scope: !2, file: !3, line: 197, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpuidle/governors/ladder.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !36}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ladder_device", file: !3, line: 39, size: 2560, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !7, file: !3, line: 40, baseType: !10, size: 2560)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2560, elements: !34)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ladder_device_state", file: !3, line: 26, size: 256, elements: !12)
!12 = !{!13, !28}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !11, file: !3, line: 32, baseType: !14, size: 192)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !11, file: !3, line: 27, size: 192, elements: !15)
!15 = !{!16, !22, !23, !27}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "promotion_count", scope: !14, file: !3, line: 28, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !18, line: 21, baseType: !19)
!18 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !20, line: 27, baseType: !21)
!20 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "demotion_count", scope: !14, file: !3, line: 29, baseType: !17, size: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "promotion_time_ns", scope: !14, file: !3, line: 30, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !18, line: 23, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !20, line: 31, baseType: !26)
!26 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "demotion_time_ns", scope: !14, file: !3, line: 31, baseType: !24, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !11, file: !3, line: 36, baseType: !29, size: 64, offset: 192)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !11, file: !3, line: 33, size: 64, elements: !30)
!30 = !{!31, !33}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "promotion_count", scope: !29, file: !3, line: 34, baseType: !32, size: 32)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "demotion_count", scope: !29, file: !3, line: 35, baseType: !32, size: 32, offset: 32)
!34 = !{!35}
!35 = !DISubrange(count: 10)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !{!0, !38, !163}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "ladder_governor", scope: !2, file: !3, line: 173, type: !40, isLocal: true, isDefinition: true)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_governor", file: !41, line: 258, size: 576, elements: !42)
!41 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !48, !55, !56, !148, !152, !159}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !41, line: 259, baseType: !44, size: 128)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !46)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !{!47}
!47 = !DISubrange(count: 16)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !40, file: !41, line: 260, baseType: !49, size: 128, offset: 128)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !50, line: 178, size: 128, elements: !51)
!50 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !49, file: !50, line: 179, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !49, file: !50, line: 179, baseType: !53, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !40, file: !41, line: 261, baseType: !21, size: 32, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !40, file: !41, line: 263, baseType: !57, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!32, !60, !90}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !41, line: 122, size: 8704, elements: !62)
!62 = !{!63, !66, !70, !71, !135, !136, !137, !147}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !61, file: !41, line: 123, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !61, file: !41, line: 124, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !69, line: 76, flags: DIFlagFwdDecl)
!69 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!70 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !61, file: !41, line: 127, baseType: !21, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !61, file: !41, line: 129, baseType: !72, size: 8320, offset: 192)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 8320, elements: !34)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !41, line: 48, size: 832, elements: !74)
!74 = !{!75, !76, !80, !81, !82, !83, !84, !85, !86, !130, !134}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !41, line: 49, baseType: !44, size: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !73, file: !41, line: 50, baseType: !77, size: 256, offset: 128)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !73, file: !41, line: 52, baseType: !24, size: 64, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !73, file: !41, line: 53, baseType: !24, size: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !41, line: 54, baseType: !21, size: 32, offset: 512)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !73, file: !41, line: 55, baseType: !21, size: 32, offset: 544)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !73, file: !41, line: 56, baseType: !32, size: 32, offset: 576)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !73, file: !41, line: 57, baseType: !21, size: 32, offset: 608)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !73, file: !41, line: 59, baseType: !87, size: 64, offset: 640)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!32, !90, !60, !32}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !41, line: 92, size: 6400, elements: !92)
!92 = !{!93, !94, !95, !96, !97, !103, !104, !105, !106, !107, !119, !123, !126, !129}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !91, file: !41, line: 93, baseType: !21, size: 1, flags: DIFlagBitField, extraData: i64 0)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !91, file: !41, line: 94, baseType: !21, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !91, file: !41, line: 95, baseType: !21, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !91, file: !41, line: 96, baseType: !21, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !91, file: !41, line: 97, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !99, line: 29, baseType: !100)
!99 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !18, line: 22, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !20, line: 30, baseType: !102)
!102 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !91, file: !41, line: 99, baseType: !32, size: 32, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !91, file: !41, line: 100, baseType: !24, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !91, file: !41, line: 101, baseType: !24, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !91, file: !41, line: 102, baseType: !24, size: 64, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !91, file: !41, line: 103, baseType: !108, size: 5120, offset: 384)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 5120, elements: !34)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !41, line: 35, size: 512, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !109, file: !41, line: 36, baseType: !26, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !109, file: !41, line: 37, baseType: !26, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !109, file: !41, line: 38, baseType: !24, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !109, file: !41, line: 39, baseType: !26, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !109, file: !41, line: 40, baseType: !26, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !109, file: !41, line: 41, baseType: !26, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !109, file: !41, line: 43, baseType: !26, size: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !109, file: !41, line: 44, baseType: !26, size: 64, offset: 448)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !91, file: !41, line: 104, baseType: !120, size: 640, offset: 5504)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 640, elements: !34)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !41, line: 89, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !91, file: !41, line: 105, baseType: !124, size: 64, offset: 6144)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !41, line: 90, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !91, file: !41, line: 106, baseType: !127, size: 64, offset: 6208)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !41, line: 88, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !91, file: !41, line: 107, baseType: !49, size: 128, offset: 6272)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !73, file: !41, line: 63, baseType: !131, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!32, !90, !32}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !73, file: !41, line: 73, baseType: !87, size: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !61, file: !41, line: 130, baseType: !32, size: 32, offset: 8512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !61, file: !41, line: 131, baseType: !32, size: 32, offset: 8544)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !61, file: !41, line: 134, baseType: !138, size: 64, offset: 8576)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !140, line: 17, size: 64, elements: !141)
!140 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !139, file: !140, line: 17, baseType: !143, size: 64)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !145)
!144 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!145 = !{!146}
!146 = !DISubrange(count: 1)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !61, file: !41, line: 137, baseType: !64, size: 64, offset: 8640)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !40, file: !41, line: 265, baseType: !149, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !60, !90}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !40, file: !41, line: 268, baseType: !153, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!32, !60, !90, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !50, line: 30, baseType: !158)
!158 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reflect", scope: !40, file: !41, line: 271, baseType: !160, size: 64, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !90, !32}
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "ladder_devices", scope: !2, file: !3, line: 43, type: !7, isLocal: true, isDefinition: true)
!165 = !{i32 7, !"Dwarf Version", i32 4}
!166 = !{i32 2, !"Debug Info Version", i32 3}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"Code Model", i32 2}
!169 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!170 = distinct !DISubprogram(name: "init_ladder", scope: !3, file: !3, line: 184, type: !171, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!171 = !DISubroutineType(types: !172)
!172 = !{!32}
!173 = !DILocation(line: 192, column: 26, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !3, line: 191, column: 6)
!175 = !DILocation(line: 194, column: 9, scope: !170)
!176 = !DILocation(line: 194, column: 2, scope: !170)
!177 = distinct !DISubprogram(name: "ladder_enable_device", scope: !3, file: !3, line: 132, type: !58, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!178 = !DILocalVariable(name: "drv", arg: 1, scope: !177, file: !3, line: 132, type: !60)
!179 = !DILocation(line: 132, column: 56, scope: !177)
!180 = !DILocalVariable(name: "dev", arg: 2, scope: !177, file: !3, line: 133, type: !90)
!181 = !DILocation(line: 133, column: 28, scope: !177)
!182 = !DILocalVariable(name: "i", scope: !177, file: !3, line: 135, type: !32)
!183 = !DILocation(line: 135, column: 6, scope: !177)
!184 = !DILocalVariable(name: "first_idx", scope: !177, file: !3, line: 136, type: !32)
!185 = !DILocation(line: 136, column: 6, scope: !177)
!186 = !DILocation(line: 136, column: 18, scope: !177)
!187 = !DILocation(line: 136, column: 23, scope: !177)
!188 = !DILocation(line: 136, column: 33, scope: !177)
!189 = !DILocation(line: 136, column: 39, scope: !177)
!190 = !DILocalVariable(name: "ldev", scope: !177, file: !3, line: 137, type: !6)
!191 = !DILocation(line: 137, column: 24, scope: !177)
!192 = !DILocation(line: 137, column: 32, scope: !193)
!193 = distinct !DILexicalBlock(scope: !177, file: !3, line: 137, column: 32)
!194 = !DILocation(line: 137, column: 32, scope: !195)
!195 = distinct !DILexicalBlock(scope: !193, file: !3, line: 137, column: 32)
!196 = !DILocalVariable(name: "__vpp_verify", scope: !197, file: !3, line: 137, type: !198)
!197 = distinct !DILexicalBlock(scope: !195, file: !3, line: 137, column: 32)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!200 = !DILocation(line: 137, column: 32, scope: !197)
!201 = !DILocalVariable(name: "lstate", scope: !177, file: !3, line: 138, type: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!203 = !DILocation(line: 138, column: 30, scope: !177)
!204 = !DILocalVariable(name: "state", scope: !177, file: !3, line: 139, type: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!206 = !DILocation(line: 139, column: 24, scope: !177)
!207 = !DILocation(line: 141, column: 24, scope: !177)
!208 = !DILocation(line: 141, column: 2, scope: !177)
!209 = !DILocation(line: 141, column: 7, scope: !177)
!210 = !DILocation(line: 141, column: 22, scope: !177)
!211 = !DILocation(line: 143, column: 11, scope: !212)
!212 = distinct !DILexicalBlock(scope: !177, file: !3, line: 143, column: 2)
!213 = !DILocation(line: 143, column: 9, scope: !212)
!214 = !DILocation(line: 143, column: 7, scope: !212)
!215 = !DILocation(line: 143, column: 22, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !3, line: 143, column: 2)
!217 = !DILocation(line: 143, column: 26, scope: !216)
!218 = !DILocation(line: 143, column: 31, scope: !216)
!219 = !DILocation(line: 143, column: 24, scope: !216)
!220 = !DILocation(line: 143, column: 2, scope: !212)
!221 = !DILocation(line: 144, column: 12, scope: !222)
!222 = distinct !DILexicalBlock(scope: !216, file: !3, line: 143, column: 49)
!223 = !DILocation(line: 144, column: 17, scope: !222)
!224 = !DILocation(line: 144, column: 24, scope: !222)
!225 = !DILocation(line: 144, column: 9, scope: !222)
!226 = !DILocation(line: 145, column: 13, scope: !222)
!227 = !DILocation(line: 145, column: 19, scope: !222)
!228 = !DILocation(line: 145, column: 26, scope: !222)
!229 = !DILocation(line: 145, column: 10, scope: !222)
!230 = !DILocation(line: 147, column: 3, scope: !222)
!231 = !DILocation(line: 147, column: 11, scope: !222)
!232 = !DILocation(line: 147, column: 17, scope: !222)
!233 = !DILocation(line: 147, column: 33, scope: !222)
!234 = !DILocation(line: 148, column: 3, scope: !222)
!235 = !DILocation(line: 148, column: 11, scope: !222)
!236 = !DILocation(line: 148, column: 17, scope: !222)
!237 = !DILocation(line: 148, column: 32, scope: !222)
!238 = !DILocation(line: 150, column: 3, scope: !222)
!239 = !DILocation(line: 150, column: 11, scope: !222)
!240 = !DILocation(line: 150, column: 21, scope: !222)
!241 = !DILocation(line: 150, column: 37, scope: !222)
!242 = !DILocation(line: 151, column: 3, scope: !222)
!243 = !DILocation(line: 151, column: 11, scope: !222)
!244 = !DILocation(line: 151, column: 21, scope: !222)
!245 = !DILocation(line: 151, column: 36, scope: !222)
!246 = !DILocation(line: 153, column: 7, scope: !247)
!247 = distinct !DILexicalBlock(scope: !222, file: !3, line: 153, column: 7)
!248 = !DILocation(line: 153, column: 11, scope: !247)
!249 = !DILocation(line: 153, column: 16, scope: !247)
!250 = !DILocation(line: 153, column: 28, scope: !247)
!251 = !DILocation(line: 153, column: 9, scope: !247)
!252 = !DILocation(line: 153, column: 7, scope: !222)
!253 = !DILocation(line: 154, column: 42, scope: !247)
!254 = !DILocation(line: 154, column: 49, scope: !247)
!255 = !DILocation(line: 154, column: 4, scope: !247)
!256 = !DILocation(line: 154, column: 12, scope: !247)
!257 = !DILocation(line: 154, column: 22, scope: !247)
!258 = !DILocation(line: 154, column: 40, scope: !247)
!259 = !DILocation(line: 155, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !222, file: !3, line: 155, column: 7)
!261 = !DILocation(line: 155, column: 11, scope: !260)
!262 = !DILocation(line: 155, column: 9, scope: !260)
!263 = !DILocation(line: 155, column: 7, scope: !222)
!264 = !DILocation(line: 156, column: 41, scope: !260)
!265 = !DILocation(line: 156, column: 48, scope: !260)
!266 = !DILocation(line: 156, column: 4, scope: !260)
!267 = !DILocation(line: 156, column: 12, scope: !260)
!268 = !DILocation(line: 156, column: 22, scope: !260)
!269 = !DILocation(line: 156, column: 39, scope: !260)
!270 = !DILocation(line: 157, column: 2, scope: !222)
!271 = !DILocation(line: 143, column: 45, scope: !216)
!272 = !DILocation(line: 143, column: 2, scope: !216)
!273 = distinct !{!273, !220, !274}
!274 = !DILocation(line: 157, column: 2, scope: !212)
!275 = !DILocation(line: 159, column: 2, scope: !177)
!276 = distinct !DISubprogram(name: "ladder_select_state", scope: !3, file: !3, line: 66, type: !154, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!277 = !DILocalVariable(name: "drv", arg: 1, scope: !276, file: !3, line: 66, type: !60)
!278 = !DILocation(line: 66, column: 55, scope: !276)
!279 = !DILocalVariable(name: "dev", arg: 2, scope: !276, file: !3, line: 67, type: !90)
!280 = !DILocation(line: 67, column: 34, scope: !276)
!281 = !DILocalVariable(name: "dummy", arg: 3, scope: !276, file: !3, line: 67, type: !156)
!282 = !DILocation(line: 67, column: 45, scope: !276)
!283 = !DILocalVariable(name: "ldev", scope: !276, file: !3, line: 69, type: !6)
!284 = !DILocation(line: 69, column: 24, scope: !276)
!285 = !DILocation(line: 69, column: 31, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 69, column: 31)
!287 = distinct !DILexicalBlock(scope: !276, file: !3, line: 69, column: 31)
!288 = !DILocalVariable(name: "__vpp_verify", scope: !289, file: !3, line: 69, type: !198)
!289 = distinct !DILexicalBlock(scope: !286, file: !3, line: 69, column: 31)
!290 = !DILocation(line: 69, column: 31, scope: !289)
!291 = !DILocation(line: 69, column: 31, scope: !287)
!292 = !DILocalVariable(name: "last_state", scope: !276, file: !3, line: 70, type: !202)
!293 = !DILocation(line: 70, column: 30, scope: !276)
!294 = !DILocalVariable(name: "last_idx", scope: !276, file: !3, line: 71, type: !32)
!295 = !DILocation(line: 71, column: 6, scope: !276)
!296 = !DILocation(line: 71, column: 17, scope: !276)
!297 = !DILocation(line: 71, column: 22, scope: !276)
!298 = !DILocalVariable(name: "first_idx", scope: !276, file: !3, line: 72, type: !32)
!299 = !DILocation(line: 72, column: 6, scope: !276)
!300 = !DILocation(line: 72, column: 18, scope: !276)
!301 = !DILocation(line: 72, column: 23, scope: !276)
!302 = !DILocation(line: 72, column: 33, scope: !276)
!303 = !DILocation(line: 72, column: 39, scope: !276)
!304 = !DILocalVariable(name: "latency_req", scope: !276, file: !3, line: 73, type: !100)
!305 = !DILocation(line: 73, column: 6, scope: !276)
!306 = !DILocation(line: 73, column: 49, scope: !276)
!307 = !DILocation(line: 73, column: 54, scope: !276)
!308 = !DILocation(line: 73, column: 20, scope: !276)
!309 = !DILocalVariable(name: "last_residency", scope: !276, file: !3, line: 74, type: !100)
!310 = !DILocation(line: 74, column: 6, scope: !276)
!311 = !DILocation(line: 77, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !276, file: !3, line: 77, column: 6)
!313 = !DILocation(line: 77, column: 6, scope: !276)
!314 = !DILocation(line: 78, column: 23, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !3, line: 77, column: 34)
!316 = !DILocation(line: 78, column: 28, scope: !315)
!317 = !DILocation(line: 78, column: 34, scope: !315)
!318 = !DILocation(line: 78, column: 3, scope: !315)
!319 = !DILocation(line: 79, column: 3, scope: !315)
!320 = !DILocation(line: 82, column: 16, scope: !276)
!321 = !DILocation(line: 82, column: 22, scope: !276)
!322 = !DILocation(line: 82, column: 29, scope: !276)
!323 = !DILocation(line: 82, column: 13, scope: !276)
!324 = !DILocation(line: 84, column: 19, scope: !276)
!325 = !DILocation(line: 84, column: 24, scope: !276)
!326 = !DILocation(line: 84, column: 44, scope: !276)
!327 = !DILocation(line: 84, column: 49, scope: !276)
!328 = !DILocation(line: 84, column: 56, scope: !276)
!329 = !DILocation(line: 84, column: 66, scope: !276)
!330 = !DILocation(line: 84, column: 42, scope: !276)
!331 = !DILocation(line: 84, column: 17, scope: !276)
!332 = !DILocation(line: 87, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !276, file: !3, line: 87, column: 6)
!334 = !DILocation(line: 87, column: 17, scope: !333)
!335 = !DILocation(line: 87, column: 22, scope: !333)
!336 = !DILocation(line: 87, column: 34, scope: !333)
!337 = !DILocation(line: 87, column: 15, scope: !333)
!338 = !DILocation(line: 87, column: 38, scope: !333)
!339 = !DILocation(line: 88, column: 7, scope: !333)
!340 = !DILocation(line: 88, column: 12, scope: !333)
!341 = !DILocation(line: 88, column: 25, scope: !333)
!342 = !DILocation(line: 88, column: 34, scope: !333)
!343 = !DILocation(line: 88, column: 39, scope: !333)
!344 = !DILocation(line: 88, column: 47, scope: !333)
!345 = !DILocation(line: 89, column: 6, scope: !333)
!346 = !DILocation(line: 89, column: 23, scope: !333)
!347 = !DILocation(line: 89, column: 35, scope: !333)
!348 = !DILocation(line: 89, column: 45, scope: !333)
!349 = !DILocation(line: 89, column: 21, scope: !333)
!350 = !DILocation(line: 89, column: 63, scope: !333)
!351 = !DILocation(line: 90, column: 6, scope: !333)
!352 = !DILocation(line: 90, column: 11, scope: !333)
!353 = !DILocation(line: 90, column: 18, scope: !333)
!354 = !DILocation(line: 90, column: 27, scope: !333)
!355 = !DILocation(line: 90, column: 32, scope: !333)
!356 = !DILocation(line: 90, column: 51, scope: !333)
!357 = !DILocation(line: 90, column: 48, scope: !333)
!358 = !DILocation(line: 87, column: 6, scope: !276)
!359 = !DILocation(line: 91, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !333, file: !3, line: 90, column: 64)
!361 = !DILocation(line: 91, column: 15, scope: !360)
!362 = !DILocation(line: 91, column: 21, scope: !360)
!363 = !DILocation(line: 91, column: 36, scope: !360)
!364 = !DILocation(line: 92, column: 3, scope: !360)
!365 = !DILocation(line: 92, column: 15, scope: !360)
!366 = !DILocation(line: 92, column: 21, scope: !360)
!367 = !DILocation(line: 92, column: 36, scope: !360)
!368 = !DILocation(line: 93, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !360, file: !3, line: 93, column: 7)
!370 = !DILocation(line: 93, column: 19, scope: !369)
!371 = !DILocation(line: 93, column: 25, scope: !369)
!372 = !DILocation(line: 93, column: 44, scope: !369)
!373 = !DILocation(line: 93, column: 56, scope: !369)
!374 = !DILocation(line: 93, column: 66, scope: !369)
!375 = !DILocation(line: 93, column: 41, scope: !369)
!376 = !DILocation(line: 93, column: 7, scope: !360)
!377 = !DILocation(line: 94, column: 24, scope: !378)
!378 = distinct !DILexicalBlock(scope: !369, file: !3, line: 93, column: 83)
!379 = !DILocation(line: 94, column: 29, scope: !378)
!380 = !DILocation(line: 94, column: 35, scope: !378)
!381 = !DILocation(line: 94, column: 45, scope: !378)
!382 = !DILocation(line: 94, column: 54, scope: !378)
!383 = !DILocation(line: 94, column: 4, scope: !378)
!384 = !DILocation(line: 95, column: 11, scope: !378)
!385 = !DILocation(line: 95, column: 20, scope: !378)
!386 = !DILocation(line: 95, column: 4, scope: !378)
!387 = !DILocation(line: 97, column: 2, scope: !360)
!388 = !DILocation(line: 100, column: 6, scope: !389)
!389 = distinct !DILexicalBlock(scope: !276, file: !3, line: 100, column: 6)
!390 = !DILocation(line: 100, column: 17, scope: !389)
!391 = !DILocation(line: 100, column: 15, scope: !389)
!392 = !DILocation(line: 100, column: 27, scope: !389)
!393 = !DILocation(line: 101, column: 7, scope: !389)
!394 = !DILocation(line: 101, column: 12, scope: !389)
!395 = !DILocation(line: 101, column: 25, scope: !389)
!396 = !DILocation(line: 101, column: 35, scope: !389)
!397 = !DILocation(line: 101, column: 43, scope: !389)
!398 = !DILocation(line: 102, column: 6, scope: !389)
!399 = !DILocation(line: 102, column: 11, scope: !389)
!400 = !DILocation(line: 102, column: 18, scope: !389)
!401 = !DILocation(line: 102, column: 28, scope: !389)
!402 = !DILocation(line: 102, column: 46, scope: !389)
!403 = !DILocation(line: 102, column: 44, scope: !389)
!404 = !DILocation(line: 100, column: 6, scope: !276)
!405 = !DILocalVariable(name: "i", scope: !406, file: !3, line: 103, type: !32)
!406 = distinct !DILexicalBlock(scope: !389, file: !3, line: 102, column: 60)
!407 = !DILocation(line: 103, column: 7, scope: !406)
!408 = !DILocation(line: 105, column: 12, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !3, line: 105, column: 3)
!410 = !DILocation(line: 105, column: 21, scope: !409)
!411 = !DILocation(line: 105, column: 10, scope: !409)
!412 = !DILocation(line: 105, column: 8, scope: !409)
!413 = !DILocation(line: 105, column: 26, scope: !414)
!414 = distinct !DILexicalBlock(scope: !409, file: !3, line: 105, column: 3)
!415 = !DILocation(line: 105, column: 30, scope: !414)
!416 = !DILocation(line: 105, column: 28, scope: !414)
!417 = !DILocation(line: 105, column: 3, scope: !409)
!418 = !DILocation(line: 106, column: 8, scope: !419)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 106, column: 8)
!420 = distinct !DILexicalBlock(scope: !414, file: !3, line: 105, column: 46)
!421 = !DILocation(line: 106, column: 13, scope: !419)
!422 = !DILocation(line: 106, column: 20, scope: !419)
!423 = !DILocation(line: 106, column: 23, scope: !419)
!424 = !DILocation(line: 106, column: 42, scope: !419)
!425 = !DILocation(line: 106, column: 39, scope: !419)
!426 = !DILocation(line: 106, column: 8, scope: !420)
!427 = !DILocation(line: 107, column: 5, scope: !419)
!428 = !DILocation(line: 108, column: 3, scope: !420)
!429 = !DILocation(line: 105, column: 42, scope: !414)
!430 = !DILocation(line: 105, column: 3, scope: !414)
!431 = distinct !{!431, !417, !432}
!432 = !DILocation(line: 108, column: 3, scope: !409)
!433 = !DILocation(line: 109, column: 23, scope: !406)
!434 = !DILocation(line: 109, column: 28, scope: !406)
!435 = !DILocation(line: 109, column: 34, scope: !406)
!436 = !DILocation(line: 109, column: 44, scope: !406)
!437 = !DILocation(line: 109, column: 3, scope: !406)
!438 = !DILocation(line: 110, column: 10, scope: !406)
!439 = !DILocation(line: 110, column: 3, scope: !406)
!440 = !DILocation(line: 113, column: 6, scope: !441)
!441 = distinct !DILexicalBlock(scope: !276, file: !3, line: 113, column: 6)
!442 = !DILocation(line: 113, column: 17, scope: !441)
!443 = !DILocation(line: 113, column: 15, scope: !441)
!444 = !DILocation(line: 113, column: 27, scope: !441)
!445 = !DILocation(line: 114, column: 6, scope: !441)
!446 = !DILocation(line: 114, column: 23, scope: !441)
!447 = !DILocation(line: 114, column: 35, scope: !441)
!448 = !DILocation(line: 114, column: 45, scope: !441)
!449 = !DILocation(line: 114, column: 21, scope: !441)
!450 = !DILocation(line: 113, column: 6, scope: !276)
!451 = !DILocation(line: 115, column: 3, scope: !452)
!452 = distinct !DILexicalBlock(scope: !441, file: !3, line: 114, column: 63)
!453 = !DILocation(line: 115, column: 15, scope: !452)
!454 = !DILocation(line: 115, column: 21, scope: !452)
!455 = !DILocation(line: 115, column: 35, scope: !452)
!456 = !DILocation(line: 116, column: 3, scope: !452)
!457 = !DILocation(line: 116, column: 15, scope: !452)
!458 = !DILocation(line: 116, column: 21, scope: !452)
!459 = !DILocation(line: 116, column: 37, scope: !452)
!460 = !DILocation(line: 117, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !452, file: !3, line: 117, column: 7)
!462 = !DILocation(line: 117, column: 19, scope: !461)
!463 = !DILocation(line: 117, column: 25, scope: !461)
!464 = !DILocation(line: 117, column: 43, scope: !461)
!465 = !DILocation(line: 117, column: 55, scope: !461)
!466 = !DILocation(line: 117, column: 65, scope: !461)
!467 = !DILocation(line: 117, column: 40, scope: !461)
!468 = !DILocation(line: 117, column: 7, scope: !452)
!469 = !DILocation(line: 118, column: 24, scope: !470)
!470 = distinct !DILexicalBlock(scope: !461, file: !3, line: 117, column: 81)
!471 = !DILocation(line: 118, column: 29, scope: !470)
!472 = !DILocation(line: 118, column: 35, scope: !470)
!473 = !DILocation(line: 118, column: 45, scope: !470)
!474 = !DILocation(line: 118, column: 54, scope: !470)
!475 = !DILocation(line: 118, column: 4, scope: !470)
!476 = !DILocation(line: 119, column: 11, scope: !470)
!477 = !DILocation(line: 119, column: 20, scope: !470)
!478 = !DILocation(line: 119, column: 4, scope: !470)
!479 = !DILocation(line: 121, column: 2, scope: !452)
!480 = !DILocation(line: 124, column: 9, scope: !276)
!481 = !DILocation(line: 124, column: 2, scope: !276)
!482 = !DILocation(line: 125, column: 1, scope: !276)
!483 = distinct !DISubprogram(name: "ladder_reflect", scope: !3, file: !3, line: 167, type: !161, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!484 = !DILocalVariable(name: "dev", arg: 1, scope: !483, file: !3, line: 167, type: !90)
!485 = !DILocation(line: 167, column: 51, scope: !483)
!486 = !DILocalVariable(name: "index", arg: 2, scope: !483, file: !3, line: 167, type: !32)
!487 = !DILocation(line: 167, column: 60, scope: !483)
!488 = !DILocation(line: 169, column: 6, scope: !489)
!489 = distinct !DILexicalBlock(scope: !483, file: !3, line: 169, column: 6)
!490 = !DILocation(line: 169, column: 12, scope: !489)
!491 = !DILocation(line: 169, column: 6, scope: !483)
!492 = !DILocation(line: 170, column: 25, scope: !489)
!493 = !DILocation(line: 170, column: 3, scope: !489)
!494 = !DILocation(line: 170, column: 8, scope: !489)
!495 = !DILocation(line: 170, column: 23, scope: !489)
!496 = !DILocation(line: 171, column: 1, scope: !483)
!497 = distinct !DISubprogram(name: "ladder_do_selection", scope: !3, file: !3, line: 51, type: !498, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !90, !6, !32, !32}
!500 = !DILocalVariable(name: "dev", arg: 1, scope: !497, file: !3, line: 51, type: !90)
!501 = !DILocation(line: 51, column: 63, scope: !497)
!502 = !DILocalVariable(name: "ldev", arg: 2, scope: !497, file: !3, line: 52, type: !6)
!503 = !DILocation(line: 52, column: 34, scope: !497)
!504 = !DILocalVariable(name: "old_idx", arg: 3, scope: !497, file: !3, line: 53, type: !32)
!505 = !DILocation(line: 53, column: 16, scope: !497)
!506 = !DILocalVariable(name: "new_idx", arg: 4, scope: !497, file: !3, line: 53, type: !32)
!507 = !DILocation(line: 53, column: 29, scope: !497)
!508 = !DILocation(line: 55, column: 2, scope: !497)
!509 = !DILocation(line: 55, column: 8, scope: !497)
!510 = !DILocation(line: 55, column: 15, scope: !497)
!511 = !DILocation(line: 55, column: 24, scope: !497)
!512 = !DILocation(line: 55, column: 30, scope: !497)
!513 = !DILocation(line: 55, column: 46, scope: !497)
!514 = !DILocation(line: 56, column: 2, scope: !497)
!515 = !DILocation(line: 56, column: 8, scope: !497)
!516 = !DILocation(line: 56, column: 15, scope: !497)
!517 = !DILocation(line: 56, column: 24, scope: !497)
!518 = !DILocation(line: 56, column: 30, scope: !497)
!519 = !DILocation(line: 56, column: 45, scope: !497)
!520 = !DILocation(line: 57, column: 24, scope: !497)
!521 = !DILocation(line: 57, column: 2, scope: !497)
!522 = !DILocation(line: 57, column: 7, scope: !497)
!523 = !DILocation(line: 57, column: 22, scope: !497)
!524 = !DILocation(line: 58, column: 1, scope: !497)
