; ModuleID = '../bcout/drivers/cpuidle/driver.llvm.bc'
source_filename = "drivers/cpuidle/driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, void (%struct.cpuidle_driver*, %struct.cpuidle_device*)*, i32 (%struct.cpuidle_driver*, %struct.cpuidle_device*, i8*)*, void (%struct.cpuidle_device*, i32)* }
%struct.cpuidle_driver = type { i8*, %struct.module*, i8, [10 x %struct.cpuidle_state], i32, i32, %struct.cpumask*, i8* }
%struct.module = type opaque
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* }
%struct.cpumask = type { [1 x i64] }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_kobj*], %struct.cpuidle_driver_kobj*, %struct.cpuidle_device_kobj*, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_state_kobj = type opaque
%struct.cpuidle_driver_kobj = type opaque
%struct.cpuidle_device_kobj = type opaque

@cpuidle_driver_lock = dso_local global %struct.spinlock undef, align 1, !dbg !0
@param_governor = external dso_local global [0 x i8], align 1
@cpuidle_lock = external dso_local global %struct.mutex, align 8
@cpuidle_curr_governor = external dso_local global %struct.cpuidle_governor*, align 8
@cpuidle_prev_governor = external dso_local global %struct.cpuidle_governor*, align 8
@cpuidle_devices = external dso_local global %struct.cpuidle_device*, section ".data", align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@cpuidle_curr_driver = internal global %struct.cpuidle_driver* null, align 8, !dbg !82

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpuidle_register_driver(%struct.cpuidle_driver* %drv) #0 !dbg !147 {
entry:
  %lock.addr.i16 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i16, metadata !150, metadata !DIExpression()), !dbg !156
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !158, metadata !DIExpression()), !dbg !160
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %gov = alloca %struct.cpuidle_governor*, align 8
  %ret = alloca i32, align 4
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata %struct.cpuidle_governor** %gov, metadata !164, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !191, metadata !DIExpression()), !dbg !192
  store %struct.spinlock* @cpuidle_driver_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !193, !srcloc !195
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !196
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !196
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !196
  %2 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !198
  %call = call i32 @__cpuidle_register_driver(%struct.cpuidle_driver* %2) #4, !dbg !199
  store i32 %call, i32* %ret, align 4, !dbg !200
  store %struct.spinlock* @cpuidle_driver_lock, %struct.spinlock** %lock.addr.i16, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !201, !srcloc !203
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i16, align 8, !dbg !204
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !204
  %rlock.i17 = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !204
  %5 = load i32, i32* %ret, align 4, !dbg !206
  %tobool = icmp ne i32 %5, 0, !dbg !206
  br i1 %tobool, label %if.end15, label %land.lhs.true, !dbg !208

land.lhs.true:                                    ; preds = %entry
  %call1 = call i64 @strlen(i8* getelementptr inbounds ([0 x i8], [0 x i8]* @param_governor, i64 0, i64 0)) #4, !dbg !209
  %tobool2 = icmp ne i64 %call1, 0, !dbg !209
  br i1 %tobool2, label %if.end15, label %land.lhs.true3, !dbg !210

land.lhs.true3:                                   ; preds = %land.lhs.true
  %6 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !211
  %governor = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %6, i32 0, i32 7, !dbg !212
  %7 = load i8*, i8** %governor, align 8, !dbg !212
  %tobool4 = icmp ne i8* %7, null, !dbg !211
  br i1 %tobool4, label %land.lhs.true5, label %if.end15, !dbg !213

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %call6 = call %struct.cpuidle_driver* @cpuidle_get_driver() #4, !dbg !214
  %8 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !215
  %cmp = icmp eq %struct.cpuidle_driver* %call6, %8, !dbg !216
  br i1 %cmp, label %if.then, label %if.end15, !dbg !217

if.then:                                          ; preds = %land.lhs.true5
  call void @mutex_lock(%struct.mutex* @cpuidle_lock) #4, !dbg !218
  %9 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !220
  %governor7 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %9, i32 0, i32 7, !dbg !221
  %10 = load i8*, i8** %governor7, align 8, !dbg !221
  %call8 = call %struct.cpuidle_governor* @cpuidle_find_governor(i8* %10) #4, !dbg !222
  store %struct.cpuidle_governor* %call8, %struct.cpuidle_governor** %gov, align 8, !dbg !223
  %11 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %gov, align 8, !dbg !224
  %tobool9 = icmp ne %struct.cpuidle_governor* %11, null, !dbg !224
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !226

if.then10:                                        ; preds = %if.then
  %12 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_curr_governor, align 8, !dbg !227
  store %struct.cpuidle_governor* %12, %struct.cpuidle_governor** @cpuidle_prev_governor, align 8, !dbg !229
  %13 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** %gov, align 8, !dbg !230
  %call11 = call i32 @cpuidle_switch_governor(%struct.cpuidle_governor* %13) #4, !dbg !232
  %cmp12 = icmp slt i32 %call11, 0, !dbg !233
  br i1 %cmp12, label %if.then13, label %if.end, !dbg !234

if.then13:                                        ; preds = %if.then10
  store %struct.cpuidle_governor* null, %struct.cpuidle_governor** @cpuidle_prev_governor, align 8, !dbg !235
  br label %if.end, !dbg !236

if.end:                                           ; preds = %if.then13, %if.then10
  br label %if.end14, !dbg !237

if.end14:                                         ; preds = %if.end, %if.then
  call void @mutex_unlock(%struct.mutex* @cpuidle_lock) #4, !dbg !238
  br label %if.end15, !dbg !239

if.end15:                                         ; preds = %if.end14, %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  %14 = load i32, i32* %ret, align 4, !dbg !240
  ret i32 %14, !dbg !241
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__cpuidle_register_driver(%struct.cpuidle_driver* %drv) #0 !dbg !242 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %ret = alloca i32, align 4
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !247
  %tobool = icmp ne %struct.cpuidle_driver* %0, null, !dbg !247
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !249

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !250
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %1, i32 0, i32 4, !dbg !251
  %2 = load i32, i32* %state_count, align 8, !dbg !251
  %tobool1 = icmp ne i32 %2, 0, !dbg !250
  br i1 %tobool1, label %if.end, label %if.then, !dbg !252

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !253
  br label %return, !dbg !253

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !254
  %call = call i32 @cpuidle_coupled_state_verify(%struct.cpuidle_driver* %3) #4, !dbg !255
  store i32 %call, i32* %ret, align 4, !dbg !256
  %4 = load i32, i32* %ret, align 4, !dbg !257
  %tobool2 = icmp ne i32 %4, 0, !dbg !257
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !259

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4, !dbg !260
  store i32 %5, i32* %retval, align 4, !dbg !261
  br label %return, !dbg !261

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @cpuidle_disabled() #4, !dbg !262
  %tobool6 = icmp ne i32 %call5, 0, !dbg !262
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !264

if.then7:                                         ; preds = %if.end4
  store i32 -19, i32* %retval, align 4, !dbg !265
  br label %return, !dbg !265

if.end8:                                          ; preds = %if.end4
  %6 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !266
  call void @__cpuidle_driver_init(%struct.cpuidle_driver* %6) #4, !dbg !267
  %7 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !268
  %call9 = call i32 @__cpuidle_set_driver(%struct.cpuidle_driver* %7) #4, !dbg !269
  store i32 %call9, i32* %ret, align 4, !dbg !270
  %8 = load i32, i32* %ret, align 4, !dbg !271
  %tobool10 = icmp ne i32 %8, 0, !dbg !271
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !273

if.then11:                                        ; preds = %if.end8
  %9 = load i32, i32* %ret, align 4, !dbg !274
  store i32 %9, i32* %retval, align 4, !dbg !275
  br label %return, !dbg !275

if.end12:                                         ; preds = %if.end8
  %10 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !276
  %bctimer = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %10, i32 0, i32 2, !dbg !278
  %bf.load = load i8, i8* %bctimer, align 8, !dbg !278
  %bf.clear = and i8 %bf.load, 1, !dbg !278
  %bf.cast = zext i8 %bf.clear to i32, !dbg !278
  %tobool13 = icmp ne i32 %bf.cast, 0, !dbg !276
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !279

if.then14:                                        ; preds = %if.end12
  %11 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !280
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %11, i32 0, i32 6, !dbg !281
  %12 = load %struct.cpumask*, %struct.cpumask** %cpumask, align 8, !dbg !281
  call void @on_each_cpu_mask(%struct.cpumask* %12, void (i8*)* @cpuidle_setup_broadcast_timer, i8* inttoptr (i64 1 to i8*), i1 zeroext true) #4, !dbg !282
  br label %if.end15, !dbg !282

if.end15:                                         ; preds = %if.then14, %if.end12
  store i32 0, i32* %retval, align 4, !dbg !283
  br label %return, !dbg !283

return:                                           ; preds = %if.end15, %if.then11, %if.then7, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !284
  ret i32 %13, !dbg !284
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.cpuidle_driver* @cpuidle_get_driver() #0 !dbg !285 {
entry:
  %drv = alloca %struct.cpuidle_driver*, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !290, metadata !DIExpression()), !dbg !291
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !292, !srcloc !294
  store i32 0, i32* %tmp, align 4, !dbg !292
  %0 = load i32, i32* %tmp, align 4, !dbg !292
  store i32 %0, i32* %cpu, align 4, !dbg !295
  %1 = load i32, i32* %cpu, align 4, !dbg !296
  %call = call %struct.cpuidle_driver* @__cpuidle_get_cpu_driver(i32 %1) #4, !dbg !297
  store %struct.cpuidle_driver* %call, %struct.cpuidle_driver** %drv, align 8, !dbg !298
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !299, !srcloc !300
  %2 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv, align 8, !dbg !301
  ret %struct.cpuidle_driver* %2, !dbg !302
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local %struct.cpuidle_governor* @cpuidle_find_governor(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_switch_governor(%struct.cpuidle_governor*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_unregister_driver(%struct.cpuidle_driver* %drv) #0 !dbg !303 {
entry:
  %lock.addr.i8 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i8, metadata !150, metadata !DIExpression()), !dbg !306
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !158, metadata !DIExpression()), !dbg !308
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %enabled = alloca i8, align 1
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata i8* %enabled, metadata !312, metadata !DIExpression()), !dbg !313
  %call = call %struct.cpuidle_driver* @cpuidle_get_driver() #4, !dbg !314
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !315
  %cmp = icmp eq %struct.cpuidle_driver* %call, %0, !dbg !316
  %frombool = zext i1 %cmp to i8, !dbg !313
  store i8 %frombool, i8* %enabled, align 1, !dbg !313
  store %struct.spinlock* @cpuidle_driver_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !317, !srcloc !195
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !318
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !318
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !318
  %3 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !319
  call void @__cpuidle_unregister_driver(%struct.cpuidle_driver* %3) #4, !dbg !320
  store %struct.spinlock* @cpuidle_driver_lock, %struct.spinlock** %lock.addr.i8, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !321, !srcloc !203
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i8, align 8, !dbg !322
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !322
  %rlock.i9 = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !322
  %6 = load i8, i8* %enabled, align 1, !dbg !323
  %tobool = trunc i8 %6 to i1, !dbg !323
  br i1 %tobool, label %if.end, label %if.then, !dbg !325

if.then:                                          ; preds = %entry
  br label %return, !dbg !326

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* @cpuidle_lock) #4, !dbg !327
  %7 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_prev_governor, align 8, !dbg !328
  %tobool1 = icmp ne %struct.cpuidle_governor* %7, null, !dbg !328
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !330

if.then2:                                         ; preds = %if.end
  %8 = load %struct.cpuidle_governor*, %struct.cpuidle_governor** @cpuidle_prev_governor, align 8, !dbg !331
  %call3 = call i32 @cpuidle_switch_governor(%struct.cpuidle_governor* %8) #4, !dbg !334
  %tobool4 = icmp ne i32 %call3, 0, !dbg !334
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !335

if.then5:                                         ; preds = %if.then2
  store %struct.cpuidle_governor* null, %struct.cpuidle_governor** @cpuidle_prev_governor, align 8, !dbg !336
  br label %if.end6, !dbg !337

if.end6:                                          ; preds = %if.then5, %if.then2
  br label %if.end7, !dbg !338

if.end7:                                          ; preds = %if.end6, %if.end
  call void @mutex_unlock(%struct.mutex* @cpuidle_lock) #4, !dbg !339
  br label %return, !dbg !340

return:                                           ; preds = %if.end7, %if.then
  ret void, !dbg !340
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__cpuidle_unregister_driver(%struct.cpuidle_driver* %drv) #0 !dbg !341 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !344
  %bctimer = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %0, i32 0, i32 2, !dbg !346
  %bf.load = load i8, i8* %bctimer, align 8, !dbg !346
  %bf.clear = and i8 %bf.load, 1, !dbg !346
  %bf.cast = zext i8 %bf.clear to i32, !dbg !346
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !344
  br i1 %tobool, label %if.then, label %if.end, !dbg !347

if.then:                                          ; preds = %entry
  %1 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !348
  %bctimer1 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %1, i32 0, i32 2, !dbg !350
  %bf.load2 = load i8, i8* %bctimer1, align 8, !dbg !351
  %bf.clear3 = and i8 %bf.load2, -2, !dbg !351
  store i8 %bf.clear3, i8* %bctimer1, align 8, !dbg !351
  %2 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !352
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %2, i32 0, i32 6, !dbg !353
  %3 = load %struct.cpumask*, %struct.cpumask** %cpumask, align 8, !dbg !353
  call void @on_each_cpu_mask(%struct.cpumask* %3, void (i8*)* @cpuidle_setup_broadcast_timer, i8* null, i1 zeroext true) #4, !dbg !354
  br label %if.end, !dbg !355

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !356
  call void @__cpuidle_unset_driver(%struct.cpuidle_driver* %4) #4, !dbg !357
  ret void, !dbg !358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.cpuidle_driver* @__cpuidle_get_cpu_driver(i32 %cpu) #0 !dbg !359 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** @cpuidle_curr_driver, align 8, !dbg !364
  ret %struct.cpuidle_driver* %0, !dbg !365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device* %dev) #0 !dbg !366 {
entry:
  %retval = alloca %struct.cpuidle_driver*, align 8
  %dev.addr = alloca %struct.cpuidle_device*, align 8
  store %struct.cpuidle_device* %dev, %struct.cpuidle_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !371
  %tobool = icmp ne %struct.cpuidle_device* %0, null, !dbg !371
  br i1 %tobool, label %if.end, label %if.then, !dbg !373

if.then:                                          ; preds = %entry
  store %struct.cpuidle_driver* null, %struct.cpuidle_driver** %retval, align 8, !dbg !374
  br label %return, !dbg !374

if.end:                                           ; preds = %entry
  %1 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev.addr, align 8, !dbg !375
  %cpu = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %1, i32 0, i32 1, !dbg !376
  %2 = load i32, i32* %cpu, align 4, !dbg !376
  %call = call %struct.cpuidle_driver* @__cpuidle_get_cpu_driver(i32 %2) #4, !dbg !377
  store %struct.cpuidle_driver* %call, %struct.cpuidle_driver** %retval, align 8, !dbg !378
  br label %return, !dbg !378

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %retval, align 8, !dbg !379
  ret %struct.cpuidle_driver* %3, !dbg !379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cpuidle_driver_state_disabled(%struct.cpuidle_driver* %drv, i32 %idx, i1 zeroext %disable) #0 !dbg !380 {
entry:
  %lock.addr.i19 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i19, metadata !150, metadata !DIExpression()), !dbg !383
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !158, metadata !DIExpression()), !dbg !385
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %idx.addr = alloca i32, align 4
  %disable.addr = alloca i8, align 1
  %cpu = alloca i32, align 4
  %dev = alloca %struct.cpuidle_device*, align 8
  %tmp = alloca %struct.cpuidle_device**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp3 = alloca %struct.cpuidle_device**, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !387, metadata !DIExpression()), !dbg !388
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %frombool = zext i1 %disable to i8
  store i8 %frombool, i8* %disable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %disable.addr, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !393, metadata !DIExpression()), !dbg !394
  call void @mutex_lock(%struct.mutex* @cpuidle_lock) #4, !dbg !395
  store %struct.spinlock* @cpuidle_driver_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !396, !srcloc !195
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !397
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !397
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !397
  %2 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !398
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %2, i32 0, i32 6, !dbg !400
  %3 = load %struct.cpumask*, %struct.cpumask** %cpumask, align 8, !dbg !400
  %tobool = icmp ne %struct.cpumask* %3, null, !dbg !398
  br i1 %tobool, label %if.end, label %if.then, !dbg !401

if.then:                                          ; preds = %entry
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !402
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %4, i32 0, i32 3, !dbg !404
  %5 = load i32, i32* %idx.addr, align 4, !dbg !405
  %idxprom = sext i32 %5 to i64, !dbg !402
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 %idxprom, !dbg !402
  %flags = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %arrayidx, i32 0, i32 4, !dbg !406
  %6 = load i32, i32* %flags, align 8, !dbg !407
  %conv = zext i32 %6 to i64, !dbg !407
  %or = or i64 %conv, 8, !dbg !407
  %conv1 = trunc i64 %or to i32, !dbg !407
  store i32 %conv1, i32* %flags, align 8, !dbg !407
  br label %unlock, !dbg !408

if.end:                                           ; preds = %entry
  store i32 0, i32* %cpu, align 4, !dbg !409
  br label %for.cond, !dbg !409

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %cpu, align 4, !dbg !411
  %cmp = icmp ult i32 %7, 1, !dbg !411
  br i1 %cmp, label %for.body, label %for.end, !dbg !409

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.cpuidle_device** %dev, metadata !413, metadata !DIExpression()), !dbg !415
  %8 = load i32, i32* %cpu, align 4, !dbg !416
  br label %do.body, !dbg !418

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !420, metadata !DIExpression()), !dbg !424
  store i8* null, i8** %__vpp_verify, align 8, !dbg !424
  %9 = load i8*, i8** %__vpp_verify, align 8, !dbg !424
  br label %do.end, !dbg !424

do.end:                                           ; preds = %do.body
  store %struct.cpuidle_device** @cpuidle_devices, %struct.cpuidle_device*** %tmp3, align 8, !dbg !424
  %10 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp3, align 8, !dbg !418
  store %struct.cpuidle_device** %10, %struct.cpuidle_device*** %tmp, align 8, !dbg !416
  %11 = load %struct.cpuidle_device**, %struct.cpuidle_device*** %tmp, align 8, !dbg !416
  %12 = load %struct.cpuidle_device*, %struct.cpuidle_device** %11, align 8, !dbg !425
  store %struct.cpuidle_device* %12, %struct.cpuidle_device** %dev, align 8, !dbg !415
  %13 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !426
  %tobool4 = icmp ne %struct.cpuidle_device* %13, null, !dbg !426
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !428

if.then5:                                         ; preds = %do.end
  br label %for.inc, !dbg !429

if.end6:                                          ; preds = %do.end
  %14 = load i8, i8* %disable.addr, align 1, !dbg !430
  %tobool7 = trunc i8 %14 to i1, !dbg !430
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !432

if.then8:                                         ; preds = %if.end6
  %15 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !433
  %states_usage = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %15, i32 0, i32 7, !dbg !434
  %16 = load i32, i32* %idx.addr, align 4, !dbg !435
  %idxprom9 = sext i32 %16 to i64, !dbg !433
  %arrayidx10 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage, i64 0, i64 %idxprom9, !dbg !433
  %disable11 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx10, i32 0, i32 0, !dbg !436
  %17 = load i64, i64* %disable11, align 8, !dbg !437
  %or12 = or i64 %17, 2, !dbg !437
  store i64 %or12, i64* %disable11, align 8, !dbg !437
  br label %if.end17, !dbg !433

if.else:                                          ; preds = %if.end6
  %18 = load %struct.cpuidle_device*, %struct.cpuidle_device** %dev, align 8, !dbg !438
  %states_usage13 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %18, i32 0, i32 7, !dbg !439
  %19 = load i32, i32* %idx.addr, align 4, !dbg !440
  %idxprom14 = sext i32 %19 to i64, !dbg !438
  %arrayidx15 = getelementptr [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_usage]* %states_usage13, i64 0, i64 %idxprom14, !dbg !438
  %disable16 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %arrayidx15, i32 0, i32 0, !dbg !441
  %20 = load i64, i64* %disable16, align 8, !dbg !442
  %and = and i64 %20, -3, !dbg !442
  store i64 %and, i64* %disable16, align 8, !dbg !442
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then8
  br label %for.inc, !dbg !443

for.inc:                                          ; preds = %if.end17, %if.then5
  %21 = load i32, i32* %cpu, align 4, !dbg !411
  %inc = add i32 %21, 1, !dbg !411
  store i32 %inc, i32* %cpu, align 4, !dbg !411
  %22 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !411
  %cpumask18 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %22, i32 0, i32 6, !dbg !411
  %23 = load %struct.cpumask*, %struct.cpumask** %cpumask18, align 8, !dbg !411
  br label %for.cond, !dbg !411, !llvm.loop !444

for.end:                                          ; preds = %for.cond
  br label %unlock, !dbg !445

unlock:                                           ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !446), !dbg !447
  store %struct.spinlock* @cpuidle_driver_lock, %struct.spinlock** %lock.addr.i19, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !448, !srcloc !203
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i19, align 8, !dbg !449
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !449
  %rlock.i20 = bitcast %union.anon* %25 to %struct.raw_spinlock*, !dbg !449
  call void @mutex_unlock(%struct.mutex* @cpuidle_lock) #4, !dbg !450
  ret void, !dbg !451
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuidle_coupled_state_verify(%struct.cpuidle_driver* %drv) #0 !dbg !452 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !454, metadata !DIExpression()), !dbg !455
  ret i32 0, !dbg !456
}

; Function Attrs: noredzone
declare dso_local i32 @cpuidle_disabled() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__cpuidle_driver_init(%struct.cpuidle_driver* %drv) #0 !dbg !457 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.cpuidle_state*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata i32* %i, metadata !460, metadata !DIExpression()), !dbg !461
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !462
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %0, i32 0, i32 6, !dbg !464
  %1 = load %struct.cpumask*, %struct.cpumask** %cpumask, align 8, !dbg !464
  %tobool = icmp ne %struct.cpumask* %1, null, !dbg !462
  br i1 %tobool, label %if.end, label %if.then, !dbg !465

if.then:                                          ; preds = %entry
  %2 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !466
  %cpumask1 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %2, i32 0, i32 6, !dbg !467
  store %struct.cpumask* @__cpu_possible_mask, %struct.cpumask** %cpumask1, align 8, !dbg !468
  br label %if.end, !dbg !466

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !dbg !469
  br label %for.cond, !dbg !471

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !472
  %4 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !474
  %state_count = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %4, i32 0, i32 4, !dbg !475
  %5 = load i32, i32* %state_count, align 8, !dbg !475
  %cmp = icmp slt i32 %3, %5, !dbg !476
  br i1 %cmp, label %for.body, label %for.end, !dbg !477

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.cpuidle_state** %s, metadata !478, metadata !DIExpression()), !dbg !481
  %6 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !482
  %states = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %6, i32 0, i32 3, !dbg !483
  %7 = load i32, i32* %i, align 4, !dbg !484
  %idxprom = sext i32 %7 to i64, !dbg !482
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], [10 x %struct.cpuidle_state]* %states, i64 0, i64 %idxprom, !dbg !482
  store %struct.cpuidle_state* %arrayidx, %struct.cpuidle_state** %s, align 8, !dbg !481
  %8 = load %struct.cpuidle_state*, %struct.cpuidle_state** %s, align 8, !dbg !485
  %flags = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %8, i32 0, i32 4, !dbg !487
  %9 = load i32, i32* %flags, align 8, !dbg !487
  %conv = zext i32 %9 to i64, !dbg !485
  %and = and i64 %conv, 4, !dbg !488
  %tobool2 = icmp ne i64 %and, 0, !dbg !488
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !489

if.then3:                                         ; preds = %for.body
  %10 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !490
  %bctimer = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %10, i32 0, i32 2, !dbg !491
  %bf.load = load i8, i8* %bctimer, align 8, !dbg !492
  %bf.clear = and i8 %bf.load, -2, !dbg !492
  %bf.set = or i8 %bf.clear, 1, !dbg !492
  store i8 %bf.set, i8* %bctimer, align 8, !dbg !492
  br label %if.end4, !dbg !490

if.end4:                                          ; preds = %if.then3, %for.body
  %11 = load %struct.cpuidle_state*, %struct.cpuidle_state** %s, align 8, !dbg !493
  %target_residency = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %11, i32 0, i32 7, !dbg !495
  %12 = load i32, i32* %target_residency, align 4, !dbg !495
  %cmp5 = icmp ugt i32 %12, 0, !dbg !496
  br i1 %cmp5, label %if.then7, label %if.end10, !dbg !497

if.then7:                                         ; preds = %if.end4
  %13 = load %struct.cpuidle_state*, %struct.cpuidle_state** %s, align 8, !dbg !498
  %target_residency8 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %13, i32 0, i32 7, !dbg !499
  %14 = load i32, i32* %target_residency8, align 4, !dbg !499
  %conv9 = zext i32 %14 to i64, !dbg !498
  %mul = mul i64 %conv9, 1000, !dbg !500
  %15 = load %struct.cpuidle_state*, %struct.cpuidle_state** %s, align 8, !dbg !501
  %target_residency_ns = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %15, i32 0, i32 3, !dbg !502
  store i64 %mul, i64* %target_residency_ns, align 8, !dbg !503
  br label %if.end10, !dbg !501

if.end10:                                         ; preds = %if.then7, %if.end4
  %16 = load %struct.cpuidle_state*, %struct.cpuidle_state** %s, align 8, !dbg !504
  %exit_latency = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %16, i32 0, i32 5, !dbg !506
  %17 = load i32, i32* %exit_latency, align 4, !dbg !506
  %cmp11 = icmp ugt i32 %17, 0, !dbg !507
  br i1 %cmp11, label %if.then13, label %if.end17, !dbg !508

if.then13:                                        ; preds = %if.end10
  %18 = load %struct.cpuidle_state*, %struct.cpuidle_state** %s, align 8, !dbg !509
  %exit_latency14 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %18, i32 0, i32 5, !dbg !510
  %19 = load i32, i32* %exit_latency14, align 4, !dbg !510
  %conv15 = zext i32 %19 to i64, !dbg !509
  %mul16 = mul i64 %conv15, 1000, !dbg !511
  %20 = load %struct.cpuidle_state*, %struct.cpuidle_state** %s, align 8, !dbg !512
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %20, i32 0, i32 2, !dbg !513
  store i64 %mul16, i64* %exit_latency_ns, align 8, !dbg !514
  br label %if.end17, !dbg !512

if.end17:                                         ; preds = %if.then13, %if.end10
  br label %for.inc, !dbg !515

for.inc:                                          ; preds = %if.end17
  %21 = load i32, i32* %i, align 4, !dbg !516
  %inc = add i32 %21, 1, !dbg !516
  store i32 %inc, i32* %i, align 4, !dbg !516
  br label %for.cond, !dbg !517, !llvm.loop !518

for.end:                                          ; preds = %for.cond
  ret void, !dbg !520
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__cpuidle_set_driver(%struct.cpuidle_driver* %drv) #0 !dbg !521 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !522, metadata !DIExpression()), !dbg !523
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** @cpuidle_curr_driver, align 8, !dbg !524
  %tobool = icmp ne %struct.cpuidle_driver* %0, null, !dbg !524
  br i1 %tobool, label %if.then, label %if.end, !dbg !526

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !527
  br label %return, !dbg !527

if.end:                                           ; preds = %entry
  %1 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !528
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** @cpuidle_curr_driver, align 8, !dbg !529
  store i32 0, i32* %retval, align 4, !dbg !530
  br label %return, !dbg !530

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !531
  ret i32 %2, !dbg !531
}

; Function Attrs: noredzone
declare dso_local void @on_each_cpu_mask(%struct.cpumask*, void (i8*)*, i8*, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuidle_setup_broadcast_timer(i8* %arg) #0 !dbg !532 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !535, metadata !DIExpression()), !dbg !536
  %0 = load i8*, i8** %arg.addr, align 8, !dbg !537
  %tobool = icmp ne i8* %0, null, !dbg !537
  br i1 %tobool, label %if.then, label %if.else, !dbg !539

if.then:                                          ; preds = %entry
  call void @tick_broadcast_enable() #4, !dbg !540
  br label %if.end, !dbg !540

if.else:                                          ; preds = %entry
  call void @tick_broadcast_disable() #4, !dbg !541
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !542
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tick_broadcast_enable() #0 !dbg !543 {
entry:
  call void @tick_broadcast_control(i32 1) #4, !dbg !546
  ret void, !dbg !547
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tick_broadcast_disable() #0 !dbg !548 {
entry:
  call void @tick_broadcast_control(i32 0) #4, !dbg !549
  ret void, !dbg !550
}

; Function Attrs: noredzone
declare dso_local void @tick_broadcast_control(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__cpuidle_unset_driver(%struct.cpuidle_driver* %drv) #0 !dbg !551 {
entry:
  %drv.addr = alloca %struct.cpuidle_driver*, align 8
  store %struct.cpuidle_driver* %drv, %struct.cpuidle_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuidle_driver** %drv.addr, metadata !552, metadata !DIExpression()), !dbg !553
  %0 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %drv.addr, align 8, !dbg !554
  %1 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** @cpuidle_curr_driver, align 8, !dbg !556
  %cmp = icmp eq %struct.cpuidle_driver* %0, %1, !dbg !557
  br i1 %cmp, label %if.then, label %if.end, !dbg !558

if.then:                                          ; preds = %entry
  store %struct.cpuidle_driver* null, %struct.cpuidle_driver** @cpuidle_curr_driver, align 8, !dbg !559
  br label %if.end, !dbg !560

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !561
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpuidle_driver_lock", scope: !2, file: !3, line: 22, type: !127, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !81, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpuidle/driver.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tick_broadcast_mode", file: !6, line: 54, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/tick.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "TICK_BROADCAST_OFF", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "TICK_BROADCAST_ON", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "TICK_BROADCAST_FORCE", value: 2, isUnsigned: true)
!12 = !{!13, !69, !70, !79}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !16, line: 92, size: 6400, elements: !17)
!16 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!18, !19, !20, !21, !22, !30, !32, !36, !37, !38, !52, !56, !59, !62}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !15, file: !16, line: 93, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !15, file: !16, line: 94, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !15, file: !16, line: 95, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !15, file: !16, line: 96, baseType: !7, size: 32, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !15, file: !16, line: 97, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !24, line: 29, baseType: !25)
!24 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !26, line: 22, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !28, line: 30, baseType: !29)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!29 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !15, file: !16, line: 99, baseType: !31, size: 32, offset: 128)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !15, file: !16, line: 100, baseType: !33, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !35)
!35 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !15, file: !16, line: 101, baseType: !33, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !15, file: !16, line: 102, baseType: !33, size: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !15, file: !16, line: 103, baseType: !39, size: 5120, offset: 384)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 5120, elements: !50)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !16, line: 35, size: 512, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !40, file: !16, line: 36, baseType: !35, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !40, file: !16, line: 37, baseType: !35, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !40, file: !16, line: 38, baseType: !33, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !40, file: !16, line: 39, baseType: !35, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !40, file: !16, line: 40, baseType: !35, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !40, file: !16, line: 41, baseType: !35, size: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !40, file: !16, line: 43, baseType: !35, size: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !40, file: !16, line: 44, baseType: !35, size: 64, offset: 448)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !15, file: !16, line: 104, baseType: !53, size: 640, offset: 5504)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 640, elements: !50)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !16, line: 89, flags: DIFlagFwdDecl)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !15, file: !16, line: 105, baseType: !57, size: 64, offset: 6144)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !16, line: 90, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !15, file: !16, line: 106, baseType: !60, size: 64, offset: 6208)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !16, line: 88, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !15, file: !16, line: 107, baseType: !63, size: 128, offset: 6272)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !64, line: 178, size: 128, elements: !65)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !63, file: !64, line: 179, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !63, file: !64, line: 179, baseType: !67, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !72, line: 17, size: 64, elements: !73)
!72 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !71, file: !72, line: 17, baseType: !75, size: 64)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !77)
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!81 = !{!0, !82}
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "cpuidle_curr_driver", scope: !2, file: !3, line: 88, type: !84, isLocal: true, isDefinition: true)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !16, line: 122, size: 8704, elements: !86)
!86 = !{!87, !91, !95, !96, !123, !124, !125, !126}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !16, line: 123, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !85, file: !16, line: 124, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !94, line: 76, flags: DIFlagFwdDecl)
!94 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!95 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !85, file: !16, line: 127, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !85, file: !16, line: 129, baseType: !97, size: 8320, offset: 192)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 8320, elements: !50)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !16, line: 48, size: 832, elements: !99)
!99 = !{!100, !104, !108, !109, !110, !111, !112, !113, !114, !118, !122}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !16, line: 49, baseType: !101, size: 128)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !98, file: !16, line: 50, baseType: !105, size: 256, offset: 128)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !98, file: !16, line: 52, baseType: !33, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !98, file: !16, line: 53, baseType: !33, size: 64, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !16, line: 54, baseType: !7, size: 32, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !98, file: !16, line: 55, baseType: !7, size: 32, offset: 544)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !98, file: !16, line: 56, baseType: !31, size: 32, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !98, file: !16, line: 57, baseType: !7, size: 32, offset: 608)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !98, file: !16, line: 59, baseType: !115, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!31, !14, !84, !31}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !98, file: !16, line: 63, baseType: !119, size: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!31, !14, !31}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !98, file: !16, line: 73, baseType: !115, size: 64, offset: 768)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !85, file: !16, line: 130, baseType: !31, size: 32, offset: 8512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !85, file: !16, line: 131, baseType: !31, size: 32, offset: 8544)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !85, file: !16, line: 134, baseType: !70, size: 64, offset: 8576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !85, file: !16, line: 137, baseType: !88, size: 64, offset: 8640)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !128, line: 83, baseType: !129)
!128 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !128, line: 71, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, scope: !129, file: !128, line: 72, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !128, line: 72, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !132, file: !128, line: 73, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !128, line: 20, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !135, file: !128, line: 21, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !139, line: 25, baseType: !140)
!139 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 25, elements: !141)
!141 = !{}
!142 = !{i32 7, !"Dwarf Version", i32 4}
!143 = !{i32 2, !"Debug Info Version", i32 3}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"Code Model", i32 2}
!146 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!147 = distinct !DISubprogram(name: "cpuidle_register_driver", scope: !3, file: !3, line: 260, type: !148, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !141)
!148 = !DISubroutineType(types: !149)
!149 = !{!31, !84}
!150 = !DILocalVariable(name: "lock", arg: 1, scope: !151, file: !152, line: 392, type: !155)
!151 = distinct !DISubprogram(name: "spin_unlock", scope: !152, file: !152, line: 392, type: !153, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!152 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!153 = !DISubroutineType(types: !154)
!154 = !{null, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!156 = !DILocation(line: 392, column: 53, scope: !151, inlinedAt: !157)
!157 = distinct !DILocation(line: 267, column: 2, scope: !147)
!158 = !DILocalVariable(name: "lock", arg: 1, scope: !159, file: !152, line: 352, type: !155)
!159 = distinct !DISubprogram(name: "spin_lock", scope: !152, file: !152, line: 352, type: !153, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!160 = !DILocation(line: 352, column: 51, scope: !159, inlinedAt: !161)
!161 = distinct !DILocation(line: 265, column: 2, scope: !147)
!162 = !DILocalVariable(name: "drv", arg: 1, scope: !147, file: !3, line: 260, type: !84)
!163 = !DILocation(line: 260, column: 52, scope: !147)
!164 = !DILocalVariable(name: "gov", scope: !147, file: !3, line: 262, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_governor", file: !16, line: 258, size: 576, elements: !167)
!167 = !{!168, !169, !170, !171, !175, !179, !186}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !16, line: 259, baseType: !101, size: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !166, file: !16, line: 260, baseType: !63, size: 128, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !166, file: !16, line: 261, baseType: !7, size: 32, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !166, file: !16, line: 263, baseType: !172, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!31, !84, !14}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !166, file: !16, line: 265, baseType: !176, size: 64, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !84, !14}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !166, file: !16, line: 268, baseType: !180, size: 64, offset: 448)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!31, !84, !14, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 30, baseType: !185)
!185 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "reflect", scope: !166, file: !16, line: 271, baseType: !187, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !14, !31}
!190 = !DILocation(line: 262, column: 27, scope: !147)
!191 = !DILocalVariable(name: "ret", scope: !147, file: !3, line: 263, type: !31)
!192 = !DILocation(line: 263, column: 6, scope: !147)
!193 = !DILocation(line: 354, column: 2, scope: !194, inlinedAt: !161)
!194 = distinct !DILexicalBlock(scope: !159, file: !152, line: 354, column: 2)
!195 = !{i32 -2145460316}
!196 = !DILocation(line: 354, column: 2, scope: !197, inlinedAt: !161)
!197 = distinct !DILexicalBlock(scope: !194, file: !152, line: 354, column: 2)
!198 = !DILocation(line: 266, column: 34, scope: !147)
!199 = !DILocation(line: 266, column: 8, scope: !147)
!200 = !DILocation(line: 266, column: 6, scope: !147)
!201 = !DILocation(line: 394, column: 2, scope: !202, inlinedAt: !157)
!202 = distinct !DILexicalBlock(scope: !151, file: !152, line: 394, column: 2)
!203 = !{i32 -2145457955}
!204 = !DILocation(line: 394, column: 2, scope: !205, inlinedAt: !157)
!205 = distinct !DILexicalBlock(scope: !202, file: !152, line: 394, column: 2)
!206 = !DILocation(line: 269, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !147, file: !3, line: 269, column: 6)
!208 = !DILocation(line: 269, column: 11, scope: !207)
!209 = !DILocation(line: 269, column: 15, scope: !207)
!210 = !DILocation(line: 269, column: 38, scope: !207)
!211 = !DILocation(line: 269, column: 41, scope: !207)
!212 = !DILocation(line: 269, column: 46, scope: !207)
!213 = !DILocation(line: 269, column: 55, scope: !207)
!214 = !DILocation(line: 270, column: 7, scope: !207)
!215 = !DILocation(line: 270, column: 31, scope: !207)
!216 = !DILocation(line: 270, column: 28, scope: !207)
!217 = !DILocation(line: 269, column: 6, scope: !147)
!218 = !DILocation(line: 271, column: 3, scope: !219)
!219 = distinct !DILexicalBlock(scope: !207, file: !3, line: 270, column: 37)
!220 = !DILocation(line: 272, column: 31, scope: !219)
!221 = !DILocation(line: 272, column: 36, scope: !219)
!222 = !DILocation(line: 272, column: 9, scope: !219)
!223 = !DILocation(line: 272, column: 7, scope: !219)
!224 = !DILocation(line: 273, column: 7, scope: !225)
!225 = distinct !DILexicalBlock(scope: !219, file: !3, line: 273, column: 7)
!226 = !DILocation(line: 273, column: 7, scope: !219)
!227 = !DILocation(line: 274, column: 28, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !3, line: 273, column: 12)
!229 = !DILocation(line: 274, column: 26, scope: !228)
!230 = !DILocation(line: 275, column: 32, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !3, line: 275, column: 8)
!232 = !DILocation(line: 275, column: 8, scope: !231)
!233 = !DILocation(line: 275, column: 37, scope: !231)
!234 = !DILocation(line: 275, column: 8, scope: !228)
!235 = !DILocation(line: 276, column: 27, scope: !231)
!236 = !DILocation(line: 276, column: 5, scope: !231)
!237 = !DILocation(line: 277, column: 3, scope: !228)
!238 = !DILocation(line: 278, column: 3, scope: !219)
!239 = !DILocation(line: 279, column: 2, scope: !219)
!240 = !DILocation(line: 281, column: 9, scope: !147)
!241 = !DILocation(line: 281, column: 2, scope: !147)
!242 = distinct !DISubprogram(name: "__cpuidle_register_driver", scope: !3, file: !3, line: 203, type: !148, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!243 = !DILocalVariable(name: "drv", arg: 1, scope: !242, file: !3, line: 203, type: !84)
!244 = !DILocation(line: 203, column: 61, scope: !242)
!245 = !DILocalVariable(name: "ret", scope: !242, file: !3, line: 205, type: !31)
!246 = !DILocation(line: 205, column: 6, scope: !242)
!247 = !DILocation(line: 207, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !242, file: !3, line: 207, column: 6)
!249 = !DILocation(line: 207, column: 11, scope: !248)
!250 = !DILocation(line: 207, column: 15, scope: !248)
!251 = !DILocation(line: 207, column: 20, scope: !248)
!252 = !DILocation(line: 207, column: 6, scope: !242)
!253 = !DILocation(line: 208, column: 3, scope: !248)
!254 = !DILocation(line: 210, column: 37, scope: !242)
!255 = !DILocation(line: 210, column: 8, scope: !242)
!256 = !DILocation(line: 210, column: 6, scope: !242)
!257 = !DILocation(line: 211, column: 6, scope: !258)
!258 = distinct !DILexicalBlock(scope: !242, file: !3, line: 211, column: 6)
!259 = !DILocation(line: 211, column: 6, scope: !242)
!260 = !DILocation(line: 212, column: 10, scope: !258)
!261 = !DILocation(line: 212, column: 3, scope: !258)
!262 = !DILocation(line: 214, column: 6, scope: !263)
!263 = distinct !DILexicalBlock(scope: !242, file: !3, line: 214, column: 6)
!264 = !DILocation(line: 214, column: 6, scope: !242)
!265 = !DILocation(line: 215, column: 3, scope: !263)
!266 = !DILocation(line: 217, column: 24, scope: !242)
!267 = !DILocation(line: 217, column: 2, scope: !242)
!268 = !DILocation(line: 219, column: 29, scope: !242)
!269 = !DILocation(line: 219, column: 8, scope: !242)
!270 = !DILocation(line: 219, column: 6, scope: !242)
!271 = !DILocation(line: 220, column: 6, scope: !272)
!272 = distinct !DILexicalBlock(scope: !242, file: !3, line: 220, column: 6)
!273 = !DILocation(line: 220, column: 6, scope: !242)
!274 = !DILocation(line: 221, column: 10, scope: !272)
!275 = !DILocation(line: 221, column: 3, scope: !272)
!276 = !DILocation(line: 223, column: 6, scope: !277)
!277 = distinct !DILexicalBlock(scope: !242, file: !3, line: 223, column: 6)
!278 = !DILocation(line: 223, column: 11, scope: !277)
!279 = !DILocation(line: 223, column: 6, scope: !242)
!280 = !DILocation(line: 224, column: 20, scope: !277)
!281 = !DILocation(line: 224, column: 25, scope: !277)
!282 = !DILocation(line: 224, column: 3, scope: !277)
!283 = !DILocation(line: 227, column: 2, scope: !242)
!284 = !DILocation(line: 228, column: 1, scope: !242)
!285 = distinct !DISubprogram(name: "cpuidle_get_driver", scope: !3, file: !3, line: 318, type: !286, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !141)
!286 = !DISubroutineType(types: !287)
!287 = !{!84}
!288 = !DILocalVariable(name: "drv", scope: !285, file: !3, line: 320, type: !84)
!289 = !DILocation(line: 320, column: 25, scope: !285)
!290 = !DILocalVariable(name: "cpu", scope: !285, file: !3, line: 321, type: !31)
!291 = !DILocation(line: 321, column: 6, scope: !285)
!292 = !DILocation(line: 323, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !285, file: !3, line: 323, column: 8)
!294 = !{i32 -2143361533}
!295 = !DILocation(line: 323, column: 6, scope: !285)
!296 = !DILocation(line: 324, column: 33, scope: !285)
!297 = !DILocation(line: 324, column: 8, scope: !285)
!298 = !DILocation(line: 324, column: 6, scope: !285)
!299 = !DILocation(line: 325, column: 2, scope: !285)
!300 = !{i32 -2143361442}
!301 = !DILocation(line: 327, column: 9, scope: !285)
!302 = !DILocation(line: 327, column: 2, scope: !285)
!303 = distinct !DISubprogram(name: "cpuidle_unregister_driver", scope: !3, file: !3, line: 293, type: !304, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !141)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !84}
!306 = !DILocation(line: 392, column: 53, scope: !151, inlinedAt: !307)
!307 = distinct !DILocation(line: 299, column: 2, scope: !303)
!308 = !DILocation(line: 352, column: 51, scope: !159, inlinedAt: !309)
!309 = distinct !DILocation(line: 297, column: 2, scope: !303)
!310 = !DILocalVariable(name: "drv", arg: 1, scope: !303, file: !3, line: 293, type: !84)
!311 = !DILocation(line: 293, column: 55, scope: !303)
!312 = !DILocalVariable(name: "enabled", scope: !303, file: !3, line: 295, type: !184)
!313 = !DILocation(line: 295, column: 7, scope: !303)
!314 = !DILocation(line: 295, column: 18, scope: !303)
!315 = !DILocation(line: 295, column: 42, scope: !303)
!316 = !DILocation(line: 295, column: 39, scope: !303)
!317 = !DILocation(line: 354, column: 2, scope: !194, inlinedAt: !309)
!318 = !DILocation(line: 354, column: 2, scope: !197, inlinedAt: !309)
!319 = !DILocation(line: 298, column: 30, scope: !303)
!320 = !DILocation(line: 298, column: 2, scope: !303)
!321 = !DILocation(line: 394, column: 2, scope: !202, inlinedAt: !307)
!322 = !DILocation(line: 394, column: 2, scope: !205, inlinedAt: !307)
!323 = !DILocation(line: 301, column: 7, scope: !324)
!324 = distinct !DILexicalBlock(scope: !303, file: !3, line: 301, column: 6)
!325 = !DILocation(line: 301, column: 6, scope: !303)
!326 = !DILocation(line: 302, column: 3, scope: !324)
!327 = !DILocation(line: 304, column: 2, scope: !303)
!328 = !DILocation(line: 305, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !303, file: !3, line: 305, column: 6)
!330 = !DILocation(line: 305, column: 6, scope: !303)
!331 = !DILocation(line: 306, column: 32, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !3, line: 306, column: 7)
!333 = distinct !DILexicalBlock(scope: !329, file: !3, line: 305, column: 29)
!334 = !DILocation(line: 306, column: 8, scope: !332)
!335 = !DILocation(line: 306, column: 7, scope: !333)
!336 = !DILocation(line: 307, column: 26, scope: !332)
!337 = !DILocation(line: 307, column: 4, scope: !332)
!338 = !DILocation(line: 308, column: 2, scope: !333)
!339 = !DILocation(line: 309, column: 2, scope: !303)
!340 = !DILocation(line: 310, column: 1, scope: !303)
!341 = distinct !DISubprogram(name: "__cpuidle_unregister_driver", scope: !3, file: !3, line: 239, type: !304, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!342 = !DILocalVariable(name: "drv", arg: 1, scope: !341, file: !3, line: 239, type: !84)
!343 = !DILocation(line: 239, column: 64, scope: !341)
!344 = !DILocation(line: 241, column: 6, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !3, line: 241, column: 6)
!346 = !DILocation(line: 241, column: 11, scope: !345)
!347 = !DILocation(line: 241, column: 6, scope: !341)
!348 = !DILocation(line: 242, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !3, line: 241, column: 20)
!350 = !DILocation(line: 242, column: 8, scope: !349)
!351 = !DILocation(line: 242, column: 16, scope: !349)
!352 = !DILocation(line: 243, column: 20, scope: !349)
!353 = !DILocation(line: 243, column: 25, scope: !349)
!354 = !DILocation(line: 243, column: 3, scope: !349)
!355 = !DILocation(line: 245, column: 2, scope: !349)
!356 = !DILocation(line: 247, column: 25, scope: !341)
!357 = !DILocation(line: 247, column: 2, scope: !341)
!358 = !DILocation(line: 248, column: 1, scope: !341)
!359 = distinct !DISubprogram(name: "__cpuidle_get_cpu_driver", scope: !3, file: !3, line: 97, type: !360, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!360 = !DISubroutineType(types: !361)
!361 = !{!84, !31}
!362 = !DILocalVariable(name: "cpu", arg: 1, scope: !359, file: !3, line: 97, type: !31)
!363 = !DILocation(line: 97, column: 67, scope: !359)
!364 = !DILocation(line: 99, column: 9, scope: !359)
!365 = !DILocation(line: 99, column: 2, scope: !359)
!366 = distinct !DISubprogram(name: "cpuidle_get_cpu_driver", scope: !3, file: !3, line: 338, type: !367, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !141)
!367 = !DISubroutineType(types: !368)
!368 = !{!84, !14}
!369 = !DILocalVariable(name: "dev", arg: 1, scope: !366, file: !3, line: 338, type: !14)
!370 = !DILocation(line: 338, column: 70, scope: !366)
!371 = !DILocation(line: 340, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !366, file: !3, line: 340, column: 6)
!373 = !DILocation(line: 340, column: 6, scope: !366)
!374 = !DILocation(line: 341, column: 3, scope: !372)
!375 = !DILocation(line: 343, column: 34, scope: !366)
!376 = !DILocation(line: 343, column: 39, scope: !366)
!377 = !DILocation(line: 343, column: 9, scope: !366)
!378 = !DILocation(line: 343, column: 2, scope: !366)
!379 = !DILocation(line: 344, column: 1, scope: !366)
!380 = distinct !DISubprogram(name: "cpuidle_driver_state_disabled", scope: !3, file: !3, line: 353, type: !381, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !141)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !84, !31, !184}
!383 = !DILocation(line: 392, column: 53, scope: !151, inlinedAt: !384)
!384 = distinct !DILocation(line: 380, column: 2, scope: !380)
!385 = !DILocation(line: 352, column: 51, scope: !159, inlinedAt: !386)
!386 = distinct !DILocation(line: 360, column: 2, scope: !380)
!387 = !DILocalVariable(name: "drv", arg: 1, scope: !380, file: !3, line: 353, type: !84)
!388 = !DILocation(line: 353, column: 59, scope: !380)
!389 = !DILocalVariable(name: "idx", arg: 2, scope: !380, file: !3, line: 353, type: !31)
!390 = !DILocation(line: 353, column: 68, scope: !380)
!391 = !DILocalVariable(name: "disable", arg: 3, scope: !380, file: !3, line: 354, type: !184)
!392 = !DILocation(line: 354, column: 11, scope: !380)
!393 = !DILocalVariable(name: "cpu", scope: !380, file: !3, line: 356, type: !7)
!394 = !DILocation(line: 356, column: 15, scope: !380)
!395 = !DILocation(line: 358, column: 2, scope: !380)
!396 = !DILocation(line: 354, column: 2, scope: !194, inlinedAt: !386)
!397 = !DILocation(line: 354, column: 2, scope: !197, inlinedAt: !386)
!398 = !DILocation(line: 362, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !380, file: !3, line: 362, column: 6)
!400 = !DILocation(line: 362, column: 12, scope: !399)
!401 = !DILocation(line: 362, column: 6, scope: !380)
!402 = !DILocation(line: 363, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !3, line: 362, column: 21)
!404 = !DILocation(line: 363, column: 8, scope: !403)
!405 = !DILocation(line: 363, column: 15, scope: !403)
!406 = !DILocation(line: 363, column: 20, scope: !403)
!407 = !DILocation(line: 363, column: 26, scope: !403)
!408 = !DILocation(line: 364, column: 3, scope: !403)
!409 = !DILocation(line: 367, column: 2, scope: !410)
!410 = distinct !DILexicalBlock(scope: !380, file: !3, line: 367, column: 2)
!411 = !DILocation(line: 367, column: 2, scope: !412)
!412 = distinct !DILexicalBlock(scope: !410, file: !3, line: 367, column: 2)
!413 = !DILocalVariable(name: "dev", scope: !414, file: !3, line: 368, type: !14)
!414 = distinct !DILexicalBlock(scope: !412, file: !3, line: 367, column: 34)
!415 = !DILocation(line: 368, column: 26, scope: !414)
!416 = !DILocation(line: 368, column: 32, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !3, line: 368, column: 32)
!418 = !DILocation(line: 368, column: 32, scope: !419)
!419 = distinct !DILexicalBlock(scope: !417, file: !3, line: 368, column: 32)
!420 = !DILocalVariable(name: "__vpp_verify", scope: !421, file: !3, line: 368, type: !422)
!421 = distinct !DILexicalBlock(scope: !419, file: !3, line: 368, column: 32)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!424 = !DILocation(line: 368, column: 32, scope: !421)
!425 = !DILocation(line: 368, column: 32, scope: !414)
!426 = !DILocation(line: 370, column: 8, scope: !427)
!427 = distinct !DILexicalBlock(scope: !414, file: !3, line: 370, column: 7)
!428 = !DILocation(line: 370, column: 7, scope: !414)
!429 = !DILocation(line: 371, column: 4, scope: !427)
!430 = !DILocation(line: 373, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !414, file: !3, line: 373, column: 7)
!432 = !DILocation(line: 373, column: 7, scope: !414)
!433 = !DILocation(line: 374, column: 4, scope: !431)
!434 = !DILocation(line: 374, column: 9, scope: !431)
!435 = !DILocation(line: 374, column: 22, scope: !431)
!436 = !DILocation(line: 374, column: 27, scope: !431)
!437 = !DILocation(line: 374, column: 35, scope: !431)
!438 = !DILocation(line: 376, column: 4, scope: !431)
!439 = !DILocation(line: 376, column: 9, scope: !431)
!440 = !DILocation(line: 376, column: 22, scope: !431)
!441 = !DILocation(line: 376, column: 27, scope: !431)
!442 = !DILocation(line: 376, column: 35, scope: !431)
!443 = !DILocation(line: 377, column: 2, scope: !414)
!444 = distinct !{!444, !409, !445}
!445 = !DILocation(line: 377, column: 2, scope: !410)
!446 = !DILabel(scope: !380, name: "unlock", file: !3, line: 379)
!447 = !DILocation(line: 379, column: 1, scope: !380)
!448 = !DILocation(line: 394, column: 2, scope: !202, inlinedAt: !384)
!449 = !DILocation(line: 394, column: 2, scope: !205, inlinedAt: !384)
!450 = !DILocation(line: 382, column: 2, scope: !380)
!451 = !DILocation(line: 383, column: 1, scope: !380)
!452 = distinct !DISubprogram(name: "cpuidle_coupled_state_verify", scope: !453, file: !453, line: 54, type: !148, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!453 = !DIFile(filename: "drivers/cpuidle/cpuidle.h", directory: "/home/lizy2001/genbc/linux")
!454 = !DILocalVariable(name: "drv", arg: 1, scope: !452, file: !453, line: 54, type: !84)
!455 = !DILocation(line: 54, column: 71, scope: !452)
!456 = !DILocation(line: 56, column: 2, scope: !452)
!457 = distinct !DISubprogram(name: "__cpuidle_driver_init", scope: !3, file: !3, line: 154, type: !304, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!458 = !DILocalVariable(name: "drv", arg: 1, scope: !457, file: !3, line: 154, type: !84)
!459 = !DILocation(line: 154, column: 58, scope: !457)
!460 = !DILocalVariable(name: "i", scope: !457, file: !3, line: 156, type: !31)
!461 = !DILocation(line: 156, column: 6, scope: !457)
!462 = !DILocation(line: 163, column: 7, scope: !463)
!463 = distinct !DILexicalBlock(scope: !457, file: !3, line: 163, column: 6)
!464 = !DILocation(line: 163, column: 12, scope: !463)
!465 = !DILocation(line: 163, column: 6, scope: !457)
!466 = !DILocation(line: 164, column: 3, scope: !463)
!467 = !DILocation(line: 164, column: 8, scope: !463)
!468 = !DILocation(line: 164, column: 16, scope: !463)
!469 = !DILocation(line: 166, column: 9, scope: !470)
!470 = distinct !DILexicalBlock(scope: !457, file: !3, line: 166, column: 2)
!471 = !DILocation(line: 166, column: 7, scope: !470)
!472 = !DILocation(line: 166, column: 14, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !3, line: 166, column: 2)
!474 = !DILocation(line: 166, column: 18, scope: !473)
!475 = !DILocation(line: 166, column: 23, scope: !473)
!476 = !DILocation(line: 166, column: 16, scope: !473)
!477 = !DILocation(line: 166, column: 2, scope: !470)
!478 = !DILocalVariable(name: "s", scope: !479, file: !3, line: 167, type: !480)
!479 = distinct !DILexicalBlock(scope: !473, file: !3, line: 166, column: 41)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!481 = !DILocation(line: 167, column: 25, scope: !479)
!482 = !DILocation(line: 167, column: 30, scope: !479)
!483 = !DILocation(line: 167, column: 35, scope: !479)
!484 = !DILocation(line: 167, column: 42, scope: !479)
!485 = !DILocation(line: 174, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !479, file: !3, line: 174, column: 7)
!487 = !DILocation(line: 174, column: 10, scope: !486)
!488 = !DILocation(line: 174, column: 16, scope: !486)
!489 = !DILocation(line: 174, column: 7, scope: !479)
!490 = !DILocation(line: 175, column: 4, scope: !486)
!491 = !DILocation(line: 175, column: 9, scope: !486)
!492 = !DILocation(line: 175, column: 17, scope: !486)
!493 = !DILocation(line: 182, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !479, file: !3, line: 182, column: 7)
!495 = !DILocation(line: 182, column: 10, scope: !494)
!496 = !DILocation(line: 182, column: 27, scope: !494)
!497 = !DILocation(line: 182, column: 7, scope: !479)
!498 = !DILocation(line: 183, column: 29, scope: !494)
!499 = !DILocation(line: 183, column: 32, scope: !494)
!500 = !DILocation(line: 183, column: 49, scope: !494)
!501 = !DILocation(line: 183, column: 4, scope: !494)
!502 = !DILocation(line: 183, column: 7, scope: !494)
!503 = !DILocation(line: 183, column: 27, scope: !494)
!504 = !DILocation(line: 185, column: 7, scope: !505)
!505 = distinct !DILexicalBlock(scope: !479, file: !3, line: 185, column: 7)
!506 = !DILocation(line: 185, column: 10, scope: !505)
!507 = !DILocation(line: 185, column: 23, scope: !505)
!508 = !DILocation(line: 185, column: 7, scope: !479)
!509 = !DILocation(line: 186, column: 25, scope: !505)
!510 = !DILocation(line: 186, column: 28, scope: !505)
!511 = !DILocation(line: 186, column: 41, scope: !505)
!512 = !DILocation(line: 186, column: 4, scope: !505)
!513 = !DILocation(line: 186, column: 7, scope: !505)
!514 = !DILocation(line: 186, column: 23, scope: !505)
!515 = !DILocation(line: 187, column: 2, scope: !479)
!516 = !DILocation(line: 166, column: 37, scope: !473)
!517 = !DILocation(line: 166, column: 2, scope: !473)
!518 = distinct !{!518, !477, !519}
!519 = !DILocation(line: 187, column: 2, scope: !470)
!520 = !DILocation(line: 188, column: 1, scope: !457)
!521 = distinct !DISubprogram(name: "__cpuidle_set_driver", scope: !3, file: !3, line: 108, type: !148, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!522 = !DILocalVariable(name: "drv", arg: 1, scope: !521, file: !3, line: 108, type: !84)
!523 = !DILocation(line: 108, column: 63, scope: !521)
!524 = !DILocation(line: 110, column: 6, scope: !525)
!525 = distinct !DILexicalBlock(scope: !521, file: !3, line: 110, column: 6)
!526 = !DILocation(line: 110, column: 6, scope: !521)
!527 = !DILocation(line: 111, column: 3, scope: !525)
!528 = !DILocation(line: 113, column: 24, scope: !521)
!529 = !DILocation(line: 113, column: 22, scope: !521)
!530 = !DILocation(line: 115, column: 2, scope: !521)
!531 = !DILocation(line: 116, column: 1, scope: !521)
!532 = distinct !DISubprogram(name: "cpuidle_setup_broadcast_timer", scope: !3, file: !3, line: 142, type: !533, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !69}
!535 = !DILocalVariable(name: "arg", arg: 1, scope: !532, file: !3, line: 142, type: !69)
!536 = !DILocation(line: 142, column: 49, scope: !532)
!537 = !DILocation(line: 144, column: 6, scope: !538)
!538 = distinct !DILexicalBlock(scope: !532, file: !3, line: 144, column: 6)
!539 = !DILocation(line: 144, column: 6, scope: !532)
!540 = !DILocation(line: 145, column: 3, scope: !538)
!541 = !DILocation(line: 147, column: 3, scope: !538)
!542 = !DILocation(line: 148, column: 1, scope: !532)
!543 = distinct !DISubprogram(name: "tick_broadcast_enable", scope: !6, file: !6, line: 86, type: !544, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!544 = !DISubroutineType(types: !545)
!545 = !{null}
!546 = !DILocation(line: 88, column: 2, scope: !543)
!547 = !DILocation(line: 89, column: 1, scope: !543)
!548 = distinct !DISubprogram(name: "tick_broadcast_disable", scope: !6, file: !6, line: 90, type: !544, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!549 = !DILocation(line: 92, column: 2, scope: !548)
!550 = !DILocation(line: 93, column: 1, scope: !548)
!551 = distinct !DISubprogram(name: "__cpuidle_unset_driver", scope: !3, file: !3, line: 125, type: !304, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !141)
!552 = !DILocalVariable(name: "drv", arg: 1, scope: !551, file: !3, line: 125, type: !84)
!553 = !DILocation(line: 125, column: 66, scope: !551)
!554 = !DILocation(line: 127, column: 6, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !3, line: 127, column: 6)
!556 = !DILocation(line: 127, column: 13, scope: !555)
!557 = !DILocation(line: 127, column: 10, scope: !555)
!558 = !DILocation(line: 127, column: 6, scope: !551)
!559 = !DILocation(line: 128, column: 23, scope: !555)
!560 = !DILocation(line: 128, column: 3, scope: !555)
!561 = !DILocation(line: 129, column: 1, scope: !551)
