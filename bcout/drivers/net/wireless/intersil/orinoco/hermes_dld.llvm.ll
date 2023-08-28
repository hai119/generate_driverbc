; ModuleID = '../bcout/drivers/net/wireless/intersil/orinoco/hermes_dld.llvm.bc'
source_filename = "drivers/net/wireless/intersil/orinoco/hermes_dld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.anon = type { i16, i16, [10 x i8] }
%struct.anon.0 = type { i16, i16, [4 x i8] }
%struct.anon.1 = type { i16, i16, [10 x i8] }
%struct.anon.2 = type { i16, i16, [2 x i8] }
%struct.anon.3 = type { i16, i16, [28 x i8] }
%struct.anon.4 = type { i16, i16, [256 x i8] }
%struct.hermes = type { i8*, i32, i16, i8, %struct.hermes_ops*, i8* }
%struct.hermes_ops = type { i32 (%struct.hermes*)*, i32 (%struct.hermes*, i16, i16, %struct.hermes_response*)*, i32 (%struct.hermes*, i16, i16, i16, i16, %struct.hermes_response*)*, i32 (%struct.hermes*, i16, i16*)*, i32 (%struct.hermes*, i32, i16, i32, i16*, i8*)*, i32 (%struct.hermes*, i32, i16, i16, i8*)*, i32 (%struct.hermes*, i32, i8*, i32, i16, i16)*, i32 (%struct.hermes*, i32, i8*, i32, i16, i16)*, i32 (%struct.hermes*, i16*, i32, i16)*, i32 (%struct.hermes*, i32)*, i32 (%struct.hermes*)*, i32 (%struct.hermes*, i8*, i32, i32)*, void (%struct.spinlock*, i64*)*, void (%struct.spinlock*, i64*)*, void (%struct.spinlock*)*, void (%struct.spinlock*)* }
%struct.hermes_response = type { i16, i16, i16, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.pdi = type { i16, i16, [0 x i8] }
%struct.pdr = type { i32, i32, i32, [0 x i8] }
%struct.dblock = type <{ i32, i16, [0 x i8] }>

@default_pdr_data_0x0005 = internal constant %struct.anon { i16 6, i16 5, [10 x i8] c"\00\00\06\00\01\00\01\00\01\00" }, align 1, !dbg !0
@default_pdr_data_0x0108 = internal constant %struct.anon.0 { i16 3, i16 264, [4 x i8] zeroinitializer }, align 1, !dbg !45
@default_pdr_data_0x0109 = internal constant %struct.anon.1 { i16 6, i16 265, [10 x i8] c"\00\00\00\00\03\00\00\00\00\00" }, align 1, !dbg !60
@default_pdr_data_0x0150 = internal constant %struct.anon.2 { i16 2, i16 336, [2 x i8] c"\00?" }, align 1, !dbg !71
@default_pdr_data_0x0160 = internal constant %struct.anon.3 { i16 15, i16 352, [28 x i8] zeroinitializer }, align 1, !dbg !82
@default_pdr_data_0x0161 = internal constant %struct.anon.4 { i16 129, i16 353, [256 x i8] c"?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01>\01>\01=\01=\01<\01<\01;\01;\01:\01:\019\019\018\018\017\017\016\016\015\015\014\014\013\013\012\012\011\011\010\010\01{\01{\01z\01z\01y\01y\01x\01x\01w\01w\01v\01v\01u\01u\01t\01t\01s\01s\01r\01r\01q\01q\01p\01p\01h\01h\01g\01g\01f\01f\01e\01e\01W\01W\01V\01V\01U\01U\01T\01T\01S\01S\01R\01R\01Q\01Q\01P\01P\01H\01H\01G\01G\01F\01F\01E\01E\01D\01D\01C\01C\01B\01B\01A\01A\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01" }, align 1, !dbg !93

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hermes_apply_pda(%struct.hermes* %hw, i8* %first_pdr, i8* %pdr_end, i16* %pda, i8* %pda_end) #0 !dbg !115 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %first_pdr.addr = alloca i8*, align 8
  %pdr_end.addr = alloca i8*, align 8
  %pda.addr = alloca i16*, align 8
  %pda_end.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %pdi = alloca %struct.pdi*, align 8
  %pdr = alloca %struct.pdr*, align 8
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !225, metadata !DIExpression()), !dbg !226
  store i8* %first_pdr, i8** %first_pdr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %first_pdr.addr, metadata !227, metadata !DIExpression()), !dbg !228
  store i8* %pdr_end, i8** %pdr_end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pdr_end.addr, metadata !229, metadata !DIExpression()), !dbg !230
  store i16* %pda, i16** %pda.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %pda.addr, metadata !231, metadata !DIExpression()), !dbg !232
  store i8* %pda_end, i8** %pda_end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pda_end.addr, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata %struct.pdi** %pdi, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata %struct.pdr** %pdr, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load i8*, i8** %first_pdr.addr, align 8, !dbg !241
  %1 = bitcast i8* %0 to %struct.pdr*, !dbg !242
  store %struct.pdr* %1, %struct.pdr** %pdr, align 8, !dbg !243
  %2 = load i8*, i8** %pda_end.addr, align 8, !dbg !244
  %add.ptr = getelementptr i8, i8* %2, i64 -4, !dbg !244
  store i8* %add.ptr, i8** %pda_end.addr, align 8, !dbg !244
  %3 = load i16*, i16** %pda.addr, align 8, !dbg !245
  %add.ptr1 = getelementptr i16, i16* %3, i64 2, !dbg !246
  %4 = bitcast i16* %add.ptr1 to %struct.pdi*, !dbg !247
  store %struct.pdi* %4, %struct.pdi** %pdi, align 8, !dbg !248
  br label %while.cond, !dbg !249

while.cond:                                       ; preds = %if.end, %entry
  %5 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !250
  %6 = bitcast %struct.pdi* %5 to i8*, !dbg !251
  %7 = load i8*, i8** %pda_end.addr, align 8, !dbg !252
  %cmp = icmp ule i8* %6, %7, !dbg !253
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !254

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !255
  %call = call i32 @pdi_id(%struct.pdi* %8) #2, !dbg !256
  %cmp2 = icmp ne i32 %call, 0, !dbg !257
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ], !dbg !258
  br i1 %9, label %while.body, label %while.end, !dbg !249

while.body:                                       ; preds = %land.end
  %10 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !259
  %11 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !261
  %12 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !262
  %13 = load i8*, i8** %pdr_end.addr, align 8, !dbg !263
  %call3 = call i32 @hermes_plug_pdi(%struct.hermes* %10, %struct.pdr* %11, %struct.pdi* %12, i8* %13) #2, !dbg !264
  store i32 %call3, i32* %ret, align 4, !dbg !265
  %14 = load i32, i32* %ret, align 4, !dbg !266
  %tobool = icmp ne i32 %14, 0, !dbg !266
  br i1 %tobool, label %if.then, label %if.end, !dbg !268

if.then:                                          ; preds = %while.body
  %15 = load i32, i32* %ret, align 4, !dbg !269
  store i32 %15, i32* %retval, align 4, !dbg !270
  br label %return, !dbg !270

if.end:                                           ; preds = %while.body
  %16 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !271
  %data = getelementptr inbounds %struct.pdi, %struct.pdi* %16, i32 0, i32 2, !dbg !272
  %17 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !273
  %call4 = call i32 @pdi_len(%struct.pdi* %17) #2, !dbg !274
  %idxprom = zext i32 %call4 to i64, !dbg !271
  %arrayidx = getelementptr [0 x i8], [0 x i8]* %data, i64 0, i64 %idxprom, !dbg !271
  %18 = bitcast i8* %arrayidx to %struct.pdi*, !dbg !275
  store %struct.pdi* %18, %struct.pdi** %pdi, align 8, !dbg !276
  br label %while.cond, !dbg !249, !llvm.loop !277

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4, !dbg !279
  br label %return, !dbg !279

return:                                           ; preds = %while.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !280
  ret i32 %19, !dbg !280
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pdi_id(%struct.pdi* %pdi) #0 !dbg !281 {
entry:
  %pdi.addr = alloca %struct.pdi*, align 8
  store %struct.pdi* %pdi, %struct.pdi** %pdi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pdi** %pdi.addr, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = load %struct.pdi*, %struct.pdi** %pdi.addr, align 8, !dbg !286
  %id = getelementptr inbounds %struct.pdi, %struct.pdi* %0, i32 0, i32 1, !dbg !286
  %1 = load i16, i16* %id, align 1, !dbg !286
  %conv = zext i16 %1 to i32, !dbg !286
  ret i32 %conv, !dbg !287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hermes_plug_pdi(%struct.hermes* %hw, %struct.pdr* %first_pdr, %struct.pdi* %pdi, i8* %pdr_end) #0 !dbg !288 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %first_pdr.addr = alloca %struct.pdr*, align 8
  %pdi.addr = alloca %struct.pdi*, align 8
  %pdr_end.addr = alloca i8*, align 8
  %pdr = alloca %struct.pdr*, align 8
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !291, metadata !DIExpression()), !dbg !292
  store %struct.pdr* %first_pdr, %struct.pdr** %first_pdr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pdr** %first_pdr.addr, metadata !293, metadata !DIExpression()), !dbg !294
  store %struct.pdi* %pdi, %struct.pdi** %pdi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pdi** %pdi.addr, metadata !295, metadata !DIExpression()), !dbg !296
  store i8* %pdr_end, i8** %pdr_end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pdr_end.addr, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata %struct.pdr** %pdr, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = load %struct.pdr*, %struct.pdr** %first_pdr.addr, align 8, !dbg !301
  %1 = load %struct.pdi*, %struct.pdi** %pdi.addr, align 8, !dbg !302
  %call = call i32 @pdi_id(%struct.pdi* %1) #2, !dbg !303
  %2 = load i8*, i8** %pdr_end.addr, align 8, !dbg !304
  %call1 = call %struct.pdr* @hermes_find_pdr(%struct.pdr* %0, i32 %call, i8* %2) #2, !dbg !305
  store %struct.pdr* %call1, %struct.pdr** %pdr, align 8, !dbg !306
  %3 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !307
  %tobool = icmp ne %struct.pdr* %3, null, !dbg !307
  br i1 %tobool, label %if.end, label %if.then, !dbg !309

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !310
  br label %return, !dbg !310

if.end:                                           ; preds = %entry
  %4 = load %struct.pdi*, %struct.pdi** %pdi.addr, align 8, !dbg !311
  %call2 = call i32 @pdi_len(%struct.pdi* %4) #2, !dbg !313
  %5 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !314
  %call3 = call i32 @pdr_len(%struct.pdr* %5) #2, !dbg !315
  %cmp = icmp ne i32 %call2, %call3, !dbg !316
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !317

if.then4:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !318
  br label %return, !dbg !318

if.end5:                                          ; preds = %if.end
  %6 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !319
  %ops = getelementptr inbounds %struct.hermes, %struct.hermes* %6, i32 0, i32 4, !dbg !320
  %7 = load %struct.hermes_ops*, %struct.hermes_ops** %ops, align 8, !dbg !320
  %program = getelementptr inbounds %struct.hermes_ops, %struct.hermes_ops* %7, i32 0, i32 11, !dbg !321
  %8 = load i32 (%struct.hermes*, i8*, i32, i32)*, i32 (%struct.hermes*, i8*, i32, i32)** %program, align 8, !dbg !321
  %9 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !322
  %10 = load %struct.pdi*, %struct.pdi** %pdi.addr, align 8, !dbg !323
  %data = getelementptr inbounds %struct.pdi, %struct.pdi* %10, i32 0, i32 2, !dbg !324
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !323
  %11 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !325
  %call6 = call i32 @pdr_addr(%struct.pdr* %11) #2, !dbg !326
  %12 = load %struct.pdi*, %struct.pdi** %pdi.addr, align 8, !dbg !327
  %call7 = call i32 @pdi_len(%struct.pdi* %12) #2, !dbg !328
  %call8 = call i32 %8(%struct.hermes* %9, i8* %arraydecay, i32 %call6, i32 %call7) #2, !dbg !319
  store i32 0, i32* %retval, align 4, !dbg !329
  br label %return, !dbg !329

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !330
  ret i32 %13, !dbg !330
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pdi_len(%struct.pdi* %pdi) #0 !dbg !331 {
entry:
  %pdi.addr = alloca %struct.pdi*, align 8
  store %struct.pdi* %pdi, %struct.pdi** %pdi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pdi** %pdi.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load %struct.pdi*, %struct.pdi** %pdi.addr, align 8, !dbg !334
  %len = getelementptr inbounds %struct.pdi, %struct.pdi* %0, i32 0, i32 0, !dbg !334
  %1 = load i16, i16* %len, align 1, !dbg !334
  %conv = zext i16 %1 to i32, !dbg !334
  %sub = sub i32 %conv, 1, !dbg !335
  %mul = mul i32 2, %sub, !dbg !336
  ret i32 %mul, !dbg !337
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hermes_blocks_length(i8* %first_block, i8* %end) #0 !dbg !338 {
entry:
  %first_block.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %blk = alloca %struct.dblock*, align 8
  %total_len = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %first_block, i8** %first_block.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %first_block.addr, metadata !345, metadata !DIExpression()), !dbg !346
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata %struct.dblock** %blk, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i8*, i8** %first_block.addr, align 8, !dbg !351
  %1 = bitcast i8* %0 to %struct.dblock*, !dbg !352
  store %struct.dblock* %1, %struct.dblock** %blk, align 8, !dbg !350
  call void @llvm.dbg.declare(metadata i32* %total_len, metadata !353, metadata !DIExpression()), !dbg !354
  store i32 0, i32* %total_len, align 4, !dbg !354
  call void @llvm.dbg.declare(metadata i32* %len, metadata !355, metadata !DIExpression()), !dbg !356
  %2 = load i8*, i8** %end.addr, align 8, !dbg !357
  %add.ptr = getelementptr i8, i8* %2, i64 -6, !dbg !357
  store i8* %add.ptr, i8** %end.addr, align 8, !dbg !357
  br label %while.cond, !dbg !358

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !359
  %4 = bitcast %struct.dblock* %3 to i8*, !dbg !360
  %5 = load i8*, i8** %end.addr, align 8, !dbg !361
  %cmp = icmp ule i8* %4, %5, !dbg !362
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !363

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !364
  %call = call i32 @dblock_addr(%struct.dblock* %6) #2, !dbg !365
  %cmp1 = icmp ne i32 %call, -1, !dbg !366
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !367
  br i1 %7, label %while.body, label %while.end, !dbg !358

while.body:                                       ; preds = %land.end
  %8 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !368
  %call2 = call i32 @dblock_len(%struct.dblock* %8) #2, !dbg !370
  store i32 %call2, i32* %len, align 4, !dbg !371
  %9 = load i32, i32* %len, align 4, !dbg !372
  %conv = sext i32 %9 to i64, !dbg !372
  %add = add i64 6, %conv, !dbg !373
  %10 = load i32, i32* %total_len, align 4, !dbg !374
  %conv3 = sext i32 %10 to i64, !dbg !374
  %add4 = add i64 %conv3, %add, !dbg !374
  %conv5 = trunc i64 %add4 to i32, !dbg !374
  store i32 %conv5, i32* %total_len, align 4, !dbg !374
  %11 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !375
  %data = getelementptr inbounds %struct.dblock, %struct.dblock* %11, i32 0, i32 2, !dbg !376
  %12 = load i32, i32* %len, align 4, !dbg !377
  %idxprom = sext i32 %12 to i64, !dbg !375
  %arrayidx = getelementptr [0 x i8], [0 x i8]* %data, i64 0, i64 %idxprom, !dbg !375
  %13 = bitcast i8* %arrayidx to %struct.dblock*, !dbg !378
  store %struct.dblock* %13, %struct.dblock** %blk, align 8, !dbg !379
  br label %while.cond, !dbg !358, !llvm.loop !380

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %total_len, align 4, !dbg !382
  %conv6 = sext i32 %14 to i64, !dbg !382
  ret i64 %conv6, !dbg !383
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dblock_addr(%struct.dblock* %blk) #0 !dbg !384 {
entry:
  %blk.addr = alloca %struct.dblock*, align 8
  store %struct.dblock* %blk, %struct.dblock** %blk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dblock** %blk.addr, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = load %struct.dblock*, %struct.dblock** %blk.addr, align 8, !dbg !389
  %addr = getelementptr inbounds %struct.dblock, %struct.dblock* %0, i32 0, i32 0, !dbg !389
  %1 = load i32, i32* %addr, align 1, !dbg !389
  ret i32 %1, !dbg !390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dblock_len(%struct.dblock* %blk) #0 !dbg !391 {
entry:
  %blk.addr = alloca %struct.dblock*, align 8
  store %struct.dblock* %blk, %struct.dblock** %blk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dblock** %blk.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load %struct.dblock*, %struct.dblock** %blk.addr, align 8, !dbg !394
  %len = getelementptr inbounds %struct.dblock, %struct.dblock* %0, i32 0, i32 1, !dbg !394
  %1 = load i16, i16* %len, align 1, !dbg !394
  %conv = zext i16 %1 to i32, !dbg !394
  ret i32 %conv, !dbg !395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hermes_program(%struct.hermes* %hw, i8* %first_block, i8* %end) #0 !dbg !396 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.hermes*, align 8
  %first_block.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %blk = alloca %struct.dblock*, align 8
  %blkaddr = alloca i32, align 4
  %blklen = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !399, metadata !DIExpression()), !dbg !400
  store i8* %first_block, i8** %first_block.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %first_block.addr, metadata !401, metadata !DIExpression()), !dbg !402
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata %struct.dblock** %blk, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata i32* %blkaddr, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata i32* %blklen, metadata !409, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata i32* %err, metadata !411, metadata !DIExpression()), !dbg !412
  store i32 0, i32* %err, align 4, !dbg !412
  %0 = load i8*, i8** %first_block.addr, align 8, !dbg !413
  %1 = bitcast i8* %0 to %struct.dblock*, !dbg !414
  store %struct.dblock* %1, %struct.dblock** %blk, align 8, !dbg !415
  %2 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !416
  %3 = bitcast %struct.dblock* %2 to i8*, !dbg !418
  %4 = load i8*, i8** %end.addr, align 8, !dbg !419
  %add.ptr = getelementptr i8, i8* %4, i64 -6, !dbg !420
  %cmp = icmp ugt i8* %3, %add.ptr, !dbg !421
  br i1 %cmp, label %if.then, label %if.end, !dbg !422

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !423
  br label %return, !dbg !423

if.end:                                           ; preds = %entry
  %5 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !424
  %call = call i32 @dblock_addr(%struct.dblock* %5) #2, !dbg !425
  store i32 %call, i32* %blkaddr, align 4, !dbg !426
  %6 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !427
  %call1 = call i32 @dblock_len(%struct.dblock* %6) #2, !dbg !428
  store i32 %call1, i32* %blklen, align 4, !dbg !429
  br label %while.cond, !dbg !430

while.cond:                                       ; preds = %if.end12, %if.end
  %7 = load i32, i32* %blkaddr, align 4, !dbg !431
  %cmp2 = icmp ne i32 %7, -1, !dbg !432
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !433

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !434
  %9 = bitcast %struct.dblock* %8 to i8*, !dbg !435
  %10 = load i32, i32* %blklen, align 4, !dbg !436
  %idx.ext = zext i32 %10 to i64, !dbg !437
  %add.ptr3 = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !437
  %11 = load i8*, i8** %end.addr, align 8, !dbg !438
  %cmp4 = icmp ule i8* %add.ptr3, %11, !dbg !439
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ], !dbg !440
  br i1 %12, label %while.body, label %while.end, !dbg !430

while.body:                                       ; preds = %land.end
  store i32 0, i32* %tmp, align 4, !dbg !441
  %13 = load i32, i32* %tmp, align 4, !dbg !445
  %14 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !446
  %ops = getelementptr inbounds %struct.hermes, %struct.hermes* %14, i32 0, i32 4, !dbg !447
  %15 = load %struct.hermes_ops*, %struct.hermes_ops** %ops, align 8, !dbg !447
  %program = getelementptr inbounds %struct.hermes_ops, %struct.hermes_ops* %15, i32 0, i32 11, !dbg !448
  %16 = load i32 (%struct.hermes*, i8*, i32, i32)*, i32 (%struct.hermes*, i8*, i32, i32)** %program, align 8, !dbg !448
  %17 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !449
  %18 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !450
  %data = getelementptr inbounds %struct.dblock, %struct.dblock* %18, i32 0, i32 2, !dbg !451
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !450
  %19 = load i32, i32* %blkaddr, align 4, !dbg !452
  %20 = load i32, i32* %blklen, align 4, !dbg !453
  %call5 = call i32 %16(%struct.hermes* %17, i8* %arraydecay, i32 %19, i32 %20) #2, !dbg !446
  store i32 %call5, i32* %err, align 4, !dbg !454
  %21 = load i32, i32* %err, align 4, !dbg !455
  %tobool = icmp ne i32 %21, 0, !dbg !455
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !457

if.then6:                                         ; preds = %while.body
  br label %while.end, !dbg !458

if.end7:                                          ; preds = %while.body
  %22 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !459
  %data8 = getelementptr inbounds %struct.dblock, %struct.dblock* %22, i32 0, i32 2, !dbg !460
  %23 = load i32, i32* %blklen, align 4, !dbg !461
  %idxprom = zext i32 %23 to i64, !dbg !459
  %arrayidx = getelementptr [0 x i8], [0 x i8]* %data8, i64 0, i64 %idxprom, !dbg !459
  %24 = bitcast i8* %arrayidx to %struct.dblock*, !dbg !462
  store %struct.dblock* %24, %struct.dblock** %blk, align 8, !dbg !463
  %25 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !464
  %26 = bitcast %struct.dblock* %25 to i8*, !dbg !466
  %27 = load i8*, i8** %end.addr, align 8, !dbg !467
  %add.ptr9 = getelementptr i8, i8* %27, i64 -6, !dbg !468
  %cmp10 = icmp ugt i8* %26, %add.ptr9, !dbg !469
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !470

if.then11:                                        ; preds = %if.end7
  store i32 -5, i32* %retval, align 4, !dbg !471
  br label %return, !dbg !471

if.end12:                                         ; preds = %if.end7
  %28 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !472
  %call13 = call i32 @dblock_addr(%struct.dblock* %28) #2, !dbg !473
  store i32 %call13, i32* %blkaddr, align 4, !dbg !474
  %29 = load %struct.dblock*, %struct.dblock** %blk, align 8, !dbg !475
  %call14 = call i32 @dblock_len(%struct.dblock* %29) #2, !dbg !476
  store i32 %call14, i32* %blklen, align 4, !dbg !477
  br label %while.cond, !dbg !430, !llvm.loop !478

while.end:                                        ; preds = %if.then6, %land.end
  %30 = load i32, i32* %err, align 4, !dbg !480
  store i32 %30, i32* %retval, align 4, !dbg !481
  br label %return, !dbg !481

return:                                           ; preds = %while.end, %if.then11, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !482
  ret i32 %31, !dbg !482
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hermes_apply_pda_with_defaults(%struct.hermes* %hw, i8* %first_pdr, i8* %pdr_end, i16* %pda, i8* %pda_end) #0 !dbg !483 {
entry:
  %hw.addr = alloca %struct.hermes*, align 8
  %first_pdr.addr = alloca i8*, align 8
  %pdr_end.addr = alloca i8*, align 8
  %pda.addr = alloca i16*, align 8
  %pda_end.addr = alloca i8*, align 8
  %pdr = alloca %struct.pdr*, align 8
  %first_pdi = alloca %struct.pdi*, align 8
  %pdi = alloca %struct.pdi*, align 8
  %default_pdi = alloca %struct.pdi*, align 8
  %outdoor_pdi = alloca %struct.pdi*, align 8
  %record_id = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  store %struct.hermes* %hw, %struct.hermes** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hermes** %hw.addr, metadata !484, metadata !DIExpression()), !dbg !485
  store i8* %first_pdr, i8** %first_pdr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %first_pdr.addr, metadata !486, metadata !DIExpression()), !dbg !487
  store i8* %pdr_end, i8** %pdr_end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pdr_end.addr, metadata !488, metadata !DIExpression()), !dbg !489
  store i16* %pda, i16** %pda.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %pda.addr, metadata !490, metadata !DIExpression()), !dbg !491
  store i8* %pda_end, i8** %pda_end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pda_end.addr, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata %struct.pdr** %pdr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load i8*, i8** %first_pdr.addr, align 8, !dbg !496
  %1 = bitcast i8* %0 to %struct.pdr*, !dbg !497
  store %struct.pdr* %1, %struct.pdr** %pdr, align 8, !dbg !495
  call void @llvm.dbg.declare(metadata %struct.pdi** %first_pdi, metadata !498, metadata !DIExpression()), !dbg !499
  %2 = load i16*, i16** %pda.addr, align 8, !dbg !500
  %arrayidx = getelementptr i16, i16* %2, i64 2, !dbg !500
  %3 = bitcast i16* %arrayidx to %struct.pdi*, !dbg !501
  store %struct.pdi* %3, %struct.pdi** %first_pdi, align 8, !dbg !499
  call void @llvm.dbg.declare(metadata %struct.pdi** %pdi, metadata !502, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.declare(metadata %struct.pdi** %default_pdi, metadata !504, metadata !DIExpression()), !dbg !505
  store %struct.pdi* null, %struct.pdi** %default_pdi, align 8, !dbg !505
  call void @llvm.dbg.declare(metadata %struct.pdi** %outdoor_pdi, metadata !506, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.declare(metadata i32* %record_id, metadata !508, metadata !DIExpression()), !dbg !509
  %4 = load i8*, i8** %pdr_end.addr, align 8, !dbg !510
  %add.ptr = getelementptr i8, i8* %4, i64 -12, !dbg !510
  store i8* %add.ptr, i8** %pdr_end.addr, align 8, !dbg !510
  br label %while.cond, !dbg !511

while.cond:                                       ; preds = %if.end40, %entry
  %5 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !512
  %6 = bitcast %struct.pdr* %5 to i8*, !dbg !513
  %7 = load i8*, i8** %pdr_end.addr, align 8, !dbg !514
  %cmp = icmp ule i8* %6, %7, !dbg !515
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !516

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !517
  %call = call i32 @pdr_id(%struct.pdr* %8) #2, !dbg !518
  %cmp1 = icmp ne i32 %call, 0, !dbg !519
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !520
  br i1 %9, label %while.body, label %while.end, !dbg !511

while.body:                                       ; preds = %land.end
  %10 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !521
  %call2 = call i32 @pdr_len(%struct.pdr* %10) #2, !dbg !524
  %cmp3 = icmp ult i32 %call2, 2, !dbg !525
  br i1 %cmp3, label %if.then, label %if.end, !dbg !526

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !527

if.end:                                           ; preds = %while.body
  %11 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !528
  %call4 = call i32 @pdr_id(%struct.pdr* %11) #2, !dbg !529
  store i32 %call4, i32* %record_id, align 4, !dbg !530
  %12 = load %struct.pdi*, %struct.pdi** %first_pdi, align 8, !dbg !531
  %13 = load i32, i32* %record_id, align 4, !dbg !532
  %14 = load i8*, i8** %pda_end.addr, align 8, !dbg !533
  %call5 = call %struct.pdi* @hermes_find_pdi(%struct.pdi* %12, i32 %13, i8* %14) #2, !dbg !534
  store %struct.pdi* %call5, %struct.pdi** %pdi, align 8, !dbg !535
  %15 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !536
  %tobool = icmp ne %struct.pdi* %15, null, !dbg !536
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !538

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %tmp, align 4, !dbg !539
  %16 = load i32, i32* %tmp, align 4, !dbg !542
  br label %if.end7, !dbg !543

if.end7:                                          ; preds = %if.then6, %if.end
  %17 = load i32, i32* %record_id, align 4, !dbg !544
  switch i32 %17, label %sw.default [
    i32 272, label %sw.bb
    i32 288, label %sw.bb
    i32 5, label %sw.bb13
    i32 264, label %sw.bb14
    i32 265, label %sw.bb15
    i32 336, label %sw.bb16
    i32 352, label %sw.bb17
    i32 353, label %sw.bb18
  ], !dbg !545

sw.bb:                                            ; preds = %if.end7, %if.end7
  %18 = load %struct.pdi*, %struct.pdi** %first_pdi, align 8, !dbg !546
  %19 = load i32, i32* %record_id, align 4, !dbg !548
  %add = add i32 %19, 1, !dbg !549
  %20 = load i8*, i8** %pda_end.addr, align 8, !dbg !550
  %call8 = call %struct.pdi* @hermes_find_pdi(%struct.pdi* %18, i32 %add, i8* %20) #2, !dbg !551
  store %struct.pdi* %call8, %struct.pdi** %outdoor_pdi, align 8, !dbg !552
  store %struct.pdi* null, %struct.pdi** %default_pdi, align 8, !dbg !553
  %21 = load %struct.pdi*, %struct.pdi** %outdoor_pdi, align 8, !dbg !554
  %tobool9 = icmp ne %struct.pdi* %21, null, !dbg !554
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !556

if.then10:                                        ; preds = %sw.bb
  %22 = load %struct.pdi*, %struct.pdi** %outdoor_pdi, align 8, !dbg !557
  store %struct.pdi* %22, %struct.pdi** %pdi, align 8, !dbg !559
  store i32 0, i32* %tmp11, align 4, !dbg !560
  %23 = load i32, i32* %tmp11, align 4, !dbg !563
  br label %if.end12, !dbg !564

if.end12:                                         ; preds = %if.then10, %sw.bb
  br label %sw.epilog, !dbg !565

sw.bb13:                                          ; preds = %if.end7
  store %struct.pdi* bitcast (%struct.anon* @default_pdr_data_0x0005 to %struct.pdi*), %struct.pdi** %default_pdi, align 8, !dbg !566
  br label %sw.epilog, !dbg !567

sw.bb14:                                          ; preds = %if.end7
  store %struct.pdi* bitcast (%struct.anon.0* @default_pdr_data_0x0108 to %struct.pdi*), %struct.pdi** %default_pdi, align 8, !dbg !568
  br label %sw.epilog, !dbg !569

sw.bb15:                                          ; preds = %if.end7
  store %struct.pdi* bitcast (%struct.anon.1* @default_pdr_data_0x0109 to %struct.pdi*), %struct.pdi** %default_pdi, align 8, !dbg !570
  br label %sw.epilog, !dbg !571

sw.bb16:                                          ; preds = %if.end7
  store %struct.pdi* bitcast (%struct.anon.2* @default_pdr_data_0x0150 to %struct.pdi*), %struct.pdi** %default_pdi, align 8, !dbg !572
  br label %sw.epilog, !dbg !573

sw.bb17:                                          ; preds = %if.end7
  store %struct.pdi* bitcast (%struct.anon.3* @default_pdr_data_0x0160 to %struct.pdi*), %struct.pdi** %default_pdi, align 8, !dbg !574
  br label %sw.epilog, !dbg !575

sw.bb18:                                          ; preds = %if.end7
  store %struct.pdi* bitcast (%struct.anon.4* @default_pdr_data_0x0161 to %struct.pdi*), %struct.pdi** %default_pdi, align 8, !dbg !576
  br label %sw.epilog, !dbg !577

sw.default:                                       ; preds = %if.end7
  store %struct.pdi* null, %struct.pdi** %default_pdi, align 8, !dbg !578
  br label %sw.epilog, !dbg !579

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %if.end12
  %24 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !580
  %tobool19 = icmp ne %struct.pdi* %24, null, !dbg !580
  br i1 %tobool19, label %if.end23, label %land.lhs.true, !dbg !582

land.lhs.true:                                    ; preds = %sw.epilog
  %25 = load %struct.pdi*, %struct.pdi** %default_pdi, align 8, !dbg !583
  %tobool20 = icmp ne %struct.pdi* %25, null, !dbg !583
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !584

if.then21:                                        ; preds = %land.lhs.true
  %26 = load %struct.pdi*, %struct.pdi** %default_pdi, align 8, !dbg !585
  store %struct.pdi* %26, %struct.pdi** %pdi, align 8, !dbg !587
  store i32 0, i32* %tmp22, align 4, !dbg !588
  %27 = load i32, i32* %tmp22, align 4, !dbg !591
  br label %if.end23, !dbg !592

if.end23:                                         ; preds = %if.then21, %land.lhs.true, %sw.epilog
  %28 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !593
  %tobool24 = icmp ne %struct.pdi* %28, null, !dbg !593
  br i1 %tobool24, label %if.then25, label %if.end40, !dbg !595

if.then25:                                        ; preds = %if.end23
  %29 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !596
  %call26 = call i32 @pdi_len(%struct.pdi* %29) #2, !dbg !599
  %30 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !600
  %call27 = call i32 @pdr_len(%struct.pdr* %30) #2, !dbg !601
  %cmp28 = icmp eq i32 %call26, %call27, !dbg !602
  br i1 %cmp28, label %land.lhs.true29, label %if.end39, !dbg !603

land.lhs.true29:                                  ; preds = %if.then25
  %31 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !604
  %data = getelementptr inbounds %struct.pdi, %struct.pdi* %31, i32 0, i32 2, !dbg !605
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !604
  %32 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !606
  %call30 = call i32 @pdi_len(%struct.pdi* %32) #2, !dbg !607
  %idx.ext = zext i32 %call30 to i64, !dbg !608
  %add.ptr31 = getelementptr i8, i8* %arraydecay, i64 %idx.ext, !dbg !608
  %33 = load i8*, i8** %pda_end.addr, align 8, !dbg !609
  %cmp32 = icmp ult i8* %add.ptr31, %33, !dbg !610
  br i1 %cmp32, label %if.then33, label %if.end39, !dbg !611

if.then33:                                        ; preds = %land.lhs.true29
  %34 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !612
  %ops = getelementptr inbounds %struct.hermes, %struct.hermes* %34, i32 0, i32 4, !dbg !614
  %35 = load %struct.hermes_ops*, %struct.hermes_ops** %ops, align 8, !dbg !614
  %program = getelementptr inbounds %struct.hermes_ops, %struct.hermes_ops* %35, i32 0, i32 11, !dbg !615
  %36 = load i32 (%struct.hermes*, i8*, i32, i32)*, i32 (%struct.hermes*, i8*, i32, i32)** %program, align 8, !dbg !615
  %37 = load %struct.hermes*, %struct.hermes** %hw.addr, align 8, !dbg !616
  %38 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !617
  %data34 = getelementptr inbounds %struct.pdi, %struct.pdi* %38, i32 0, i32 2, !dbg !618
  %arraydecay35 = getelementptr inbounds [0 x i8], [0 x i8]* %data34, i64 0, i64 0, !dbg !617
  %39 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !619
  %call36 = call i32 @pdr_addr(%struct.pdr* %39) #2, !dbg !620
  %40 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !621
  %call37 = call i32 @pdi_len(%struct.pdi* %40) #2, !dbg !622
  %call38 = call i32 %36(%struct.hermes* %37, i8* %arraydecay35, i32 %call36, i32 %call37) #2, !dbg !612
  br label %if.end39, !dbg !623

if.end39:                                         ; preds = %if.then33, %land.lhs.true29, %if.then25
  br label %if.end40, !dbg !624

if.end40:                                         ; preds = %if.end39, %if.end23
  %41 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !625
  %incdec.ptr = getelementptr %struct.pdr, %struct.pdr* %41, i32 1, !dbg !625
  store %struct.pdr* %incdec.ptr, %struct.pdr** %pdr, align 8, !dbg !625
  br label %while.cond, !dbg !511, !llvm.loop !626

while.end:                                        ; preds = %if.then, %land.end
  ret i32 0, !dbg !628
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pdr_id(%struct.pdr* %pdr) #0 !dbg !629 {
entry:
  %pdr.addr = alloca %struct.pdr*, align 8
  store %struct.pdr* %pdr, %struct.pdr** %pdr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pdr** %pdr.addr, metadata !632, metadata !DIExpression()), !dbg !633
  %0 = load %struct.pdr*, %struct.pdr** %pdr.addr, align 8, !dbg !634
  %id = getelementptr inbounds %struct.pdr, %struct.pdr* %0, i32 0, i32 0, !dbg !634
  %1 = load i32, i32* %id, align 1, !dbg !634
  ret i32 %1, !dbg !635
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pdr_len(%struct.pdr* %pdr) #0 !dbg !636 {
entry:
  %pdr.addr = alloca %struct.pdr*, align 8
  store %struct.pdr* %pdr, %struct.pdr** %pdr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pdr** %pdr.addr, metadata !637, metadata !DIExpression()), !dbg !638
  %0 = load %struct.pdr*, %struct.pdr** %pdr.addr, align 8, !dbg !639
  %len = getelementptr inbounds %struct.pdr, %struct.pdr* %0, i32 0, i32 2, !dbg !639
  %1 = load i32, i32* %len, align 1, !dbg !639
  ret i32 %1, !dbg !640
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pdi* @hermes_find_pdi(%struct.pdi* %first_pdi, i32 %record_id, i8* %end) #0 !dbg !641 {
entry:
  %retval = alloca %struct.pdi*, align 8
  %first_pdi.addr = alloca %struct.pdi*, align 8
  %record_id.addr = alloca i32, align 4
  %end.addr = alloca i8*, align 8
  %pdi = alloca %struct.pdi*, align 8
  store %struct.pdi* %first_pdi, %struct.pdi** %first_pdi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pdi** %first_pdi.addr, metadata !644, metadata !DIExpression()), !dbg !645
  store i32 %record_id, i32* %record_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %record_id.addr, metadata !646, metadata !DIExpression()), !dbg !647
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !648, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata %struct.pdi** %pdi, metadata !650, metadata !DIExpression()), !dbg !651
  %0 = load %struct.pdi*, %struct.pdi** %first_pdi.addr, align 8, !dbg !652
  store %struct.pdi* %0, %struct.pdi** %pdi, align 8, !dbg !651
  %1 = load i8*, i8** %end.addr, align 8, !dbg !653
  %add.ptr = getelementptr i8, i8* %1, i64 -4, !dbg !653
  store i8* %add.ptr, i8** %end.addr, align 8, !dbg !653
  br label %while.cond, !dbg !654

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !655
  %3 = bitcast %struct.pdi* %2 to i8*, !dbg !656
  %4 = load i8*, i8** %end.addr, align 8, !dbg !657
  %cmp = icmp ule i8* %3, %4, !dbg !658
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !659

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !660
  %call = call i32 @pdi_id(%struct.pdi* %5) #2, !dbg !661
  %cmp1 = icmp ne i32 %call, 0, !dbg !662
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !663
  br i1 %6, label %while.body, label %while.end, !dbg !654

while.body:                                       ; preds = %land.end
  %7 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !664
  %call2 = call i32 @pdi_id(%struct.pdi* %7) #2, !dbg !667
  %8 = load i32, i32* %record_id.addr, align 4, !dbg !668
  %cmp3 = icmp eq i32 %call2, %8, !dbg !669
  br i1 %cmp3, label %if.then, label %if.end, !dbg !670

if.then:                                          ; preds = %while.body
  %9 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !671
  store %struct.pdi* %9, %struct.pdi** %retval, align 8, !dbg !672
  br label %return, !dbg !672

if.end:                                           ; preds = %while.body
  %10 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !673
  %data = getelementptr inbounds %struct.pdi, %struct.pdi* %10, i32 0, i32 2, !dbg !674
  %11 = load %struct.pdi*, %struct.pdi** %pdi, align 8, !dbg !675
  %call4 = call i32 @pdi_len(%struct.pdi* %11) #2, !dbg !676
  %idxprom = zext i32 %call4 to i64, !dbg !673
  %arrayidx = getelementptr [0 x i8], [0 x i8]* %data, i64 0, i64 %idxprom, !dbg !673
  %12 = bitcast i8* %arrayidx to %struct.pdi*, !dbg !677
  store %struct.pdi* %12, %struct.pdi** %pdi, align 8, !dbg !678
  br label %while.cond, !dbg !654, !llvm.loop !679

while.end:                                        ; preds = %land.end
  store %struct.pdi* null, %struct.pdi** %retval, align 8, !dbg !681
  br label %return, !dbg !681

return:                                           ; preds = %while.end, %if.then
  %13 = load %struct.pdi*, %struct.pdi** %retval, align 8, !dbg !682
  ret %struct.pdi* %13, !dbg !682
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pdr_addr(%struct.pdr* %pdr) #0 !dbg !683 {
entry:
  %pdr.addr = alloca %struct.pdr*, align 8
  store %struct.pdr* %pdr, %struct.pdr** %pdr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pdr** %pdr.addr, metadata !684, metadata !DIExpression()), !dbg !685
  %0 = load %struct.pdr*, %struct.pdr** %pdr.addr, align 8, !dbg !686
  %addr = getelementptr inbounds %struct.pdr, %struct.pdr* %0, i32 0, i32 1, !dbg !686
  %1 = load i32, i32* %addr, align 1, !dbg !686
  ret i32 %1, !dbg !687
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pdr* @hermes_find_pdr(%struct.pdr* %first_pdr, i32 %record_id, i8* %end) #0 !dbg !688 {
entry:
  %retval = alloca %struct.pdr*, align 8
  %first_pdr.addr = alloca %struct.pdr*, align 8
  %record_id.addr = alloca i32, align 4
  %end.addr = alloca i8*, align 8
  %pdr = alloca %struct.pdr*, align 8
  store %struct.pdr* %first_pdr, %struct.pdr** %first_pdr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pdr** %first_pdr.addr, metadata !691, metadata !DIExpression()), !dbg !692
  store i32 %record_id, i32* %record_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %record_id.addr, metadata !693, metadata !DIExpression()), !dbg !694
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !695, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.declare(metadata %struct.pdr** %pdr, metadata !697, metadata !DIExpression()), !dbg !698
  %0 = load %struct.pdr*, %struct.pdr** %first_pdr.addr, align 8, !dbg !699
  store %struct.pdr* %0, %struct.pdr** %pdr, align 8, !dbg !698
  %1 = load i8*, i8** %end.addr, align 8, !dbg !700
  %add.ptr = getelementptr i8, i8* %1, i64 -12, !dbg !700
  store i8* %add.ptr, i8** %end.addr, align 8, !dbg !700
  br label %while.cond, !dbg !701

while.cond:                                       ; preds = %if.end7, %entry
  %2 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !702
  %3 = bitcast %struct.pdr* %2 to i8*, !dbg !703
  %4 = load i8*, i8** %end.addr, align 8, !dbg !704
  %cmp = icmp ule i8* %3, %4, !dbg !705
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !706

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !707
  %call = call i32 @pdr_id(%struct.pdr* %5) #2, !dbg !708
  %cmp1 = icmp ne i32 %call, 0, !dbg !709
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !710
  br i1 %6, label %while.body, label %while.end, !dbg !701

while.body:                                       ; preds = %land.end
  %7 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !711
  %call2 = call i32 @pdr_len(%struct.pdr* %7) #2, !dbg !714
  %cmp3 = icmp ult i32 %call2, 2, !dbg !715
  br i1 %cmp3, label %if.then, label %if.end, !dbg !716

if.then:                                          ; preds = %while.body
  store %struct.pdr* null, %struct.pdr** %retval, align 8, !dbg !717
  br label %return, !dbg !717

if.end:                                           ; preds = %while.body
  %8 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !718
  %call4 = call i32 @pdr_id(%struct.pdr* %8) #2, !dbg !720
  %9 = load i32, i32* %record_id.addr, align 4, !dbg !721
  %cmp5 = icmp eq i32 %call4, %9, !dbg !722
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !723

if.then6:                                         ; preds = %if.end
  %10 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !724
  store %struct.pdr* %10, %struct.pdr** %retval, align 8, !dbg !725
  br label %return, !dbg !725

if.end7:                                          ; preds = %if.end
  %11 = load %struct.pdr*, %struct.pdr** %pdr, align 8, !dbg !726
  %next = getelementptr inbounds %struct.pdr, %struct.pdr* %11, i32 0, i32 3, !dbg !727
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %next, i64 0, i64 0, !dbg !726
  %12 = bitcast i8* %arraydecay to %struct.pdr*, !dbg !728
  store %struct.pdr* %12, %struct.pdr** %pdr, align 8, !dbg !729
  br label %while.cond, !dbg !701, !llvm.loop !730

while.end:                                        ; preds = %land.end
  store %struct.pdr* null, %struct.pdr** %retval, align 8, !dbg !732
  br label %return, !dbg !732

return:                                           ; preds = %while.end, %if.then6, %if.then
  %13 = load %struct.pdr*, %struct.pdr** %retval, align 8, !dbg !733
  ret %struct.pdr* %13, !dbg !733
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "default_pdr_data_0x0005", scope: !2, file: !3, line: 330, type: !104, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !44, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/wireless/intersil/orinoco/hermes_dld.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !23, !33, !34, !41, !42, !29, !28, !43, !13, !11}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdr", file: !3, line: 75, size: 96, elements: !9)
!9 = !{!10, !16, !17, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !8, file: !3, line: 76, baseType: !11, size: 32)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !12, line: 31, baseType: !13)
!12 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !14, line: 27, baseType: !15)
!14 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !8, file: !3, line: 77, baseType: !11, size: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !8, file: !3, line: 78, baseType: !11, size: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !8, file: !3, line: 79, baseType: !19, offset: 96)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, elements: !21)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!22}
!22 = !DISubrange(count: -1)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdi", file: !3, line: 87, size: 32, elements: !26)
!26 = !{!27, !31, !32}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !25, file: !3, line: 88, baseType: !28, size: 16)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !12, line: 29, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !14, line: 24, baseType: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !25, file: !3, line: 89, baseType: !28, size: 16, offset: 16)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !3, line: 90, baseType: !19, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dblock", file: !3, line: 64, size: 48, elements: !37)
!37 = !{!38, !39, !40}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !36, file: !3, line: 65, baseType: !11, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !36, file: !3, line: 66, baseType: !28, size: 16, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !36, file: !3, line: 67, baseType: !19, offset: 48)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!44 = !{!0, !45, !60, !71, !82, !93}
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "default_pdr_data_0x0108", scope: !2, file: !3, line: 333, type: !47, isLocal: true, isDefinition: true)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 333, size: 64, elements: !49)
!49 = !{!50, !51, !52}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !48, file: !3, line: 333, baseType: !28, size: 16)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !48, file: !3, line: 333, baseType: !28, size: 16, offset: 16)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !48, file: !3, line: 333, baseType: !53, size: 32, offset: 32)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 32, elements: !58)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !55, line: 17, baseType: !56)
!55 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !14, line: 21, baseType: !57)
!57 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!58 = !{!59}
!59 = !DISubrange(count: 4)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "default_pdr_data_0x0109", scope: !2, file: !3, line: 336, type: !62, isLocal: true, isDefinition: true)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 336, size: 112, elements: !64)
!64 = !{!65, !66, !67}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !63, file: !3, line: 336, baseType: !28, size: 16)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !63, file: !3, line: 336, baseType: !28, size: 16, offset: 16)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !63, file: !3, line: 336, baseType: !68, size: 80, offset: 32)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 80, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 10)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "default_pdr_data_0x0150", scope: !2, file: !3, line: 339, type: !73, isLocal: true, isDefinition: true)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 339, size: 48, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !74, file: !3, line: 339, baseType: !28, size: 16)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !74, file: !3, line: 339, baseType: !28, size: 16, offset: 16)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !74, file: !3, line: 339, baseType: !79, size: 16, offset: 32)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 16, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 2)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "default_pdr_data_0x0160", scope: !2, file: !3, line: 342, type: !84, isLocal: true, isDefinition: true)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 342, size: 256, elements: !86)
!86 = !{!87, !88, !89}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !85, file: !3, line: 342, baseType: !28, size: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !85, file: !3, line: 342, baseType: !28, size: 16, offset: 16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !85, file: !3, line: 342, baseType: !90, size: 224, offset: 32)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 224, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 28)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "default_pdr_data_0x0161", scope: !2, file: !3, line: 349, type: !95, isLocal: true, isDefinition: true)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 349, size: 2080, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !96, file: !3, line: 349, baseType: !28, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !96, file: !3, line: 349, baseType: !28, size: 16, offset: 16)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !3, line: 349, baseType: !101, size: 2048, offset: 32)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2048, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 256)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 330, size: 112, elements: !106)
!106 = !{!107, !108, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !105, file: !3, line: 330, baseType: !28, size: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !105, file: !3, line: 330, baseType: !28, size: 16, offset: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !105, file: !3, line: 330, baseType: !68, size: 80, offset: 32)
!110 = !{i32 7, !"Dwarf Version", i32 4}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"Code Model", i32 2}
!114 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!115 = distinct !DISubprogram(name: "hermes_apply_pda", scope: !3, file: !3, line: 223, type: !116, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !119, !193, !168, !223, !168}
!118 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hermes", file: !121, line: 408, size: 256, elements: !122)
!121 = !DIFile(filename: "drivers/net/wireless/intersil/orinoco/hermes.h", directory: "/home/lizy2001/genbc/linux")
!122 = !{!123, !124, !125, !127, !131, !222}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !120, file: !121, line: 409, baseType: !33, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reg_spacing", scope: !120, file: !121, line: 410, baseType: !118, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "inten", scope: !120, file: !121, line: 413, baseType: !126, size: 16, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !55, line: 19, baseType: !29)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "eeprom_pda", scope: !120, file: !121, line: 414, baseType: !128, size: 8, offset: 112)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !129, line: 30, baseType: !130)
!129 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!130 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !120, file: !121, line: 415, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hermes_ops", file: !121, line: 379, size: 1024, elements: !135)
!135 = !{!136, !140, !151, !155, !160, !164, !170, !174, !178, !184, !188, !189, !195, !216, !217, !221}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !134, file: !121, line: 380, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!118, !119}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_wait", scope: !134, file: !121, line: 381, baseType: !141, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!118, !119, !126, !126, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hermes_response", file: !121, line: 359, size: 64, elements: !146)
!146 = !{!147, !148, !149, !150}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !145, file: !121, line: 360, baseType: !126, size: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "resp0", scope: !145, file: !121, line: 360, baseType: !126, size: 16, offset: 16)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "resp1", scope: !145, file: !121, line: 360, baseType: !126, size: 16, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "resp2", scope: !145, file: !121, line: 360, baseType: !126, size: 16, offset: 48)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "init_cmd_wait", scope: !134, file: !121, line: 383, baseType: !152, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!118, !119, !126, !126, !126, !126, !144}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !134, file: !121, line: 386, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!118, !119, !126, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "read_ltv", scope: !134, file: !121, line: 387, baseType: !161, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!118, !119, !118, !126, !15, !159, !33}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "write_ltv", scope: !134, file: !121, line: 389, baseType: !165, size: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!118, !119, !118, !126, !126, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "bap_pread", scope: !134, file: !121, line: 391, baseType: !171, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!118, !119, !118, !33, !118, !126, !126}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "bap_pwrite", scope: !134, file: !121, line: 393, baseType: !175, size: 64, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!118, !119, !118, !168, !118, !126, !126}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "read_pda", scope: !134, file: !121, line: 395, baseType: !179, size: 64, offset: 512)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!118, !119, !182, !183, !126}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !55, line: 21, baseType: !13)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "program_init", scope: !134, file: !121, line: 397, baseType: !185, size: 64, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!118, !119, !183}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "program_end", scope: !134, file: !121, line: 398, baseType: !137, size: 64, offset: 640)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !134, file: !121, line: 399, baseType: !190, size: 64, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!118, !119, !193, !183, !183}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "lock_irqsave", scope: !134, file: !121, line: 401, baseType: !196, size: 64, offset: 768)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !199, !214}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !201, line: 83, baseType: !202)
!201 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !201, line: 71, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !201, line: 72, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !201, line: 72, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !205, file: !201, line: 73, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !201, line: 20, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !208, file: !201, line: 21, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !212, line: 25, baseType: !213)
!212 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !212, line: 25, elements: !4)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_irqrestore", scope: !134, file: !121, line: 402, baseType: !196, size: 64, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "lock_irq", scope: !134, file: !121, line: 403, baseType: !218, size: 64, offset: 896)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !199}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_irq", scope: !134, file: !121, line: 404, baseType: !218, size: 64, offset: 960)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !120, file: !121, line: 416, baseType: !33, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!225 = !DILocalVariable(name: "hw", arg: 1, scope: !115, file: !3, line: 223, type: !119)
!226 = !DILocation(line: 223, column: 37, scope: !115)
!227 = !DILocalVariable(name: "first_pdr", arg: 2, scope: !115, file: !3, line: 224, type: !193)
!228 = !DILocation(line: 224, column: 20, scope: !115)
!229 = !DILocalVariable(name: "pdr_end", arg: 3, scope: !115, file: !3, line: 225, type: !168)
!230 = !DILocation(line: 225, column: 20, scope: !115)
!231 = !DILocalVariable(name: "pda", arg: 4, scope: !115, file: !3, line: 226, type: !223)
!232 = !DILocation(line: 226, column: 22, scope: !115)
!233 = !DILocalVariable(name: "pda_end", arg: 5, scope: !115, file: !3, line: 227, type: !168)
!234 = !DILocation(line: 227, column: 20, scope: !115)
!235 = !DILocalVariable(name: "ret", scope: !115, file: !3, line: 229, type: !118)
!236 = !DILocation(line: 229, column: 6, scope: !115)
!237 = !DILocalVariable(name: "pdi", scope: !115, file: !3, line: 230, type: !23)
!238 = !DILocation(line: 230, column: 20, scope: !115)
!239 = !DILocalVariable(name: "pdr", scope: !115, file: !3, line: 231, type: !6)
!240 = !DILocation(line: 231, column: 20, scope: !115)
!241 = !DILocation(line: 233, column: 29, scope: !115)
!242 = !DILocation(line: 233, column: 8, scope: !115)
!243 = !DILocation(line: 233, column: 6, scope: !115)
!244 = !DILocation(line: 234, column: 10, scope: !115)
!245 = !DILocation(line: 237, column: 30, scope: !115)
!246 = !DILocation(line: 237, column: 34, scope: !115)
!247 = !DILocation(line: 237, column: 8, scope: !115)
!248 = !DILocation(line: 237, column: 6, scope: !115)
!249 = !DILocation(line: 238, column: 2, scope: !115)
!250 = !DILocation(line: 238, column: 19, scope: !115)
!251 = !DILocation(line: 238, column: 10, scope: !115)
!252 = !DILocation(line: 238, column: 26, scope: !115)
!253 = !DILocation(line: 238, column: 23, scope: !115)
!254 = !DILocation(line: 238, column: 35, scope: !115)
!255 = !DILocation(line: 239, column: 17, scope: !115)
!256 = !DILocation(line: 239, column: 10, scope: !115)
!257 = !DILocation(line: 239, column: 22, scope: !115)
!258 = !DILocation(line: 0, scope: !115)
!259 = !DILocation(line: 240, column: 25, scope: !260)
!260 = distinct !DILexicalBlock(scope: !115, file: !3, line: 239, column: 35)
!261 = !DILocation(line: 240, column: 29, scope: !260)
!262 = !DILocation(line: 240, column: 34, scope: !260)
!263 = !DILocation(line: 240, column: 39, scope: !260)
!264 = !DILocation(line: 240, column: 9, scope: !260)
!265 = !DILocation(line: 240, column: 7, scope: !260)
!266 = !DILocation(line: 241, column: 7, scope: !267)
!267 = distinct !DILexicalBlock(scope: !260, file: !3, line: 241, column: 7)
!268 = !DILocation(line: 241, column: 7, scope: !260)
!269 = !DILocation(line: 242, column: 11, scope: !267)
!270 = !DILocation(line: 242, column: 4, scope: !267)
!271 = !DILocation(line: 245, column: 31, scope: !260)
!272 = !DILocation(line: 245, column: 36, scope: !260)
!273 = !DILocation(line: 245, column: 49, scope: !260)
!274 = !DILocation(line: 245, column: 41, scope: !260)
!275 = !DILocation(line: 245, column: 9, scope: !260)
!276 = !DILocation(line: 245, column: 7, scope: !260)
!277 = distinct !{!277, !249, !278}
!278 = !DILocation(line: 246, column: 2, scope: !115)
!279 = !DILocation(line: 247, column: 2, scope: !115)
!280 = !DILocation(line: 248, column: 1, scope: !115)
!281 = distinct !DISubprogram(name: "pdi_id", scope: !3, file: !3, line: 130, type: !282, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!282 = !DISubroutineType(types: !283)
!283 = !{!183, !23}
!284 = !DILocalVariable(name: "pdi", arg: 1, scope: !281, file: !3, line: 130, type: !23)
!285 = !DILocation(line: 130, column: 26, scope: !281)
!286 = !DILocation(line: 132, column: 9, scope: !281)
!287 = !DILocation(line: 132, column: 2, scope: !281)
!288 = distinct !DISubprogram(name: "hermes_plug_pdi", scope: !3, file: !3, line: 196, type: !289, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!289 = !DISubroutineType(types: !290)
!290 = !{!118, !119, !6, !23, !168}
!291 = !DILocalVariable(name: "hw", arg: 1, scope: !288, file: !3, line: 196, type: !119)
!292 = !DILocation(line: 196, column: 32, scope: !288)
!293 = !DILocalVariable(name: "first_pdr", arg: 2, scope: !288, file: !3, line: 196, type: !6)
!294 = !DILocation(line: 196, column: 54, scope: !288)
!295 = !DILocalVariable(name: "pdi", arg: 3, scope: !288, file: !3, line: 197, type: !23)
!296 = !DILocation(line: 197, column: 21, scope: !288)
!297 = !DILocalVariable(name: "pdr_end", arg: 4, scope: !288, file: !3, line: 197, type: !168)
!298 = !DILocation(line: 197, column: 38, scope: !288)
!299 = !DILocalVariable(name: "pdr", scope: !288, file: !3, line: 199, type: !6)
!300 = !DILocation(line: 199, column: 20, scope: !288)
!301 = !DILocation(line: 202, column: 24, scope: !288)
!302 = !DILocation(line: 202, column: 42, scope: !288)
!303 = !DILocation(line: 202, column: 35, scope: !288)
!304 = !DILocation(line: 202, column: 48, scope: !288)
!305 = !DILocation(line: 202, column: 8, scope: !288)
!306 = !DILocation(line: 202, column: 6, scope: !288)
!307 = !DILocation(line: 205, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !288, file: !3, line: 205, column: 6)
!309 = !DILocation(line: 205, column: 6, scope: !288)
!310 = !DILocation(line: 206, column: 3, scope: !308)
!311 = !DILocation(line: 209, column: 14, scope: !312)
!312 = distinct !DILexicalBlock(scope: !288, file: !3, line: 209, column: 6)
!313 = !DILocation(line: 209, column: 6, scope: !312)
!314 = !DILocation(line: 209, column: 30, scope: !312)
!315 = !DILocation(line: 209, column: 22, scope: !312)
!316 = !DILocation(line: 209, column: 19, scope: !312)
!317 = !DILocation(line: 209, column: 6, scope: !288)
!318 = !DILocation(line: 210, column: 3, scope: !312)
!319 = !DILocation(line: 213, column: 2, scope: !288)
!320 = !DILocation(line: 213, column: 6, scope: !288)
!321 = !DILocation(line: 213, column: 11, scope: !288)
!322 = !DILocation(line: 213, column: 19, scope: !288)
!323 = !DILocation(line: 213, column: 23, scope: !288)
!324 = !DILocation(line: 213, column: 28, scope: !288)
!325 = !DILocation(line: 213, column: 43, scope: !288)
!326 = !DILocation(line: 213, column: 34, scope: !288)
!327 = !DILocation(line: 213, column: 57, scope: !288)
!328 = !DILocation(line: 213, column: 49, scope: !288)
!329 = !DILocation(line: 215, column: 2, scope: !288)
!330 = !DILocation(line: 216, column: 1, scope: !288)
!331 = distinct !DISubprogram(name: "pdi_len", scope: !3, file: !3, line: 137, type: !282, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!332 = !DILocalVariable(name: "pdi", arg: 1, scope: !331, file: !3, line: 137, type: !23)
!333 = !DILocation(line: 137, column: 27, scope: !331)
!334 = !DILocation(line: 139, column: 14, scope: !331)
!335 = !DILocation(line: 139, column: 36, scope: !331)
!336 = !DILocation(line: 139, column: 11, scope: !331)
!337 = !DILocation(line: 139, column: 2, scope: !331)
!338 = distinct !DISubprogram(name: "hermes_blocks_length", scope: !3, file: !3, line: 254, type: !339, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!339 = !DISubroutineType(types: !340)
!340 = !{!341, !193, !168}
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 55, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !343, line: 72, baseType: !344)
!343 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !343, line: 16, baseType: !215)
!345 = !DILocalVariable(name: "first_block", arg: 1, scope: !338, file: !3, line: 254, type: !193)
!346 = !DILocation(line: 254, column: 34, scope: !338)
!347 = !DILocalVariable(name: "end", arg: 2, scope: !338, file: !3, line: 254, type: !168)
!348 = !DILocation(line: 254, column: 59, scope: !338)
!349 = !DILocalVariable(name: "blk", scope: !338, file: !3, line: 256, type: !34)
!350 = !DILocation(line: 256, column: 23, scope: !338)
!351 = !DILocation(line: 256, column: 53, scope: !338)
!352 = !DILocation(line: 256, column: 29, scope: !338)
!353 = !DILocalVariable(name: "total_len", scope: !338, file: !3, line: 257, type: !118)
!354 = !DILocation(line: 257, column: 6, scope: !338)
!355 = !DILocalVariable(name: "len", scope: !338, file: !3, line: 258, type: !118)
!356 = !DILocation(line: 258, column: 6, scope: !338)
!357 = !DILocation(line: 260, column: 6, scope: !338)
!358 = !DILocation(line: 264, column: 2, scope: !338)
!359 = !DILocation(line: 264, column: 19, scope: !338)
!360 = !DILocation(line: 264, column: 10, scope: !338)
!361 = !DILocation(line: 264, column: 26, scope: !338)
!362 = !DILocation(line: 264, column: 23, scope: !338)
!363 = !DILocation(line: 264, column: 31, scope: !338)
!364 = !DILocation(line: 265, column: 22, scope: !338)
!365 = !DILocation(line: 265, column: 10, scope: !338)
!366 = !DILocation(line: 265, column: 27, scope: !338)
!367 = !DILocation(line: 0, scope: !338)
!368 = !DILocation(line: 266, column: 20, scope: !369)
!369 = distinct !DILexicalBlock(scope: !338, file: !3, line: 265, column: 42)
!370 = !DILocation(line: 266, column: 9, scope: !369)
!371 = !DILocation(line: 266, column: 7, scope: !369)
!372 = !DILocation(line: 267, column: 31, scope: !369)
!373 = !DILocation(line: 267, column: 29, scope: !369)
!374 = !DILocation(line: 267, column: 13, scope: !369)
!375 = !DILocation(line: 268, column: 28, scope: !369)
!376 = !DILocation(line: 268, column: 33, scope: !369)
!377 = !DILocation(line: 268, column: 38, scope: !369)
!378 = !DILocation(line: 268, column: 9, scope: !369)
!379 = !DILocation(line: 268, column: 7, scope: !369)
!380 = distinct !{!380, !358, !381}
!381 = !DILocation(line: 269, column: 2, scope: !338)
!382 = !DILocation(line: 271, column: 9, scope: !338)
!383 = !DILocation(line: 271, column: 2, scope: !338)
!384 = distinct !DISubprogram(name: "dblock_addr", scope: !3, file: !3, line: 96, type: !385, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!385 = !DISubroutineType(types: !386)
!386 = !{!183, !34}
!387 = !DILocalVariable(name: "blk", arg: 1, scope: !384, file: !3, line: 96, type: !34)
!388 = !DILocation(line: 96, column: 34, scope: !384)
!389 = !DILocation(line: 98, column: 9, scope: !384)
!390 = !DILocation(line: 98, column: 2, scope: !384)
!391 = distinct !DISubprogram(name: "dblock_len", scope: !3, file: !3, line: 102, type: !385, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!392 = !DILocalVariable(name: "blk", arg: 1, scope: !391, file: !3, line: 102, type: !34)
!393 = !DILocation(line: 102, column: 33, scope: !391)
!394 = !DILocation(line: 104, column: 9, scope: !391)
!395 = !DILocation(line: 104, column: 2, scope: !391)
!396 = distinct !DISubprogram(name: "hermes_program", scope: !3, file: !3, line: 277, type: !397, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!397 = !DISubroutineType(types: !398)
!398 = !{!118, !119, !193, !168}
!399 = !DILocalVariable(name: "hw", arg: 1, scope: !396, file: !3, line: 277, type: !119)
!400 = !DILocation(line: 277, column: 35, scope: !396)
!401 = !DILocalVariable(name: "first_block", arg: 2, scope: !396, file: !3, line: 277, type: !193)
!402 = !DILocation(line: 277, column: 51, scope: !396)
!403 = !DILocalVariable(name: "end", arg: 3, scope: !396, file: !3, line: 277, type: !168)
!404 = !DILocation(line: 277, column: 76, scope: !396)
!405 = !DILocalVariable(name: "blk", scope: !396, file: !3, line: 279, type: !34)
!406 = !DILocation(line: 279, column: 23, scope: !396)
!407 = !DILocalVariable(name: "blkaddr", scope: !396, file: !3, line: 280, type: !183)
!408 = !DILocation(line: 280, column: 6, scope: !396)
!409 = !DILocalVariable(name: "blklen", scope: !396, file: !3, line: 281, type: !183)
!410 = !DILocation(line: 281, column: 6, scope: !396)
!411 = !DILocalVariable(name: "err", scope: !396, file: !3, line: 282, type: !118)
!412 = !DILocation(line: 282, column: 6, scope: !396)
!413 = !DILocation(line: 284, column: 32, scope: !396)
!414 = !DILocation(line: 284, column: 8, scope: !396)
!415 = !DILocation(line: 284, column: 6, scope: !396)
!416 = !DILocation(line: 286, column: 15, scope: !417)
!417 = distinct !DILexicalBlock(scope: !396, file: !3, line: 286, column: 6)
!418 = !DILocation(line: 286, column: 6, scope: !417)
!419 = !DILocation(line: 286, column: 22, scope: !417)
!420 = !DILocation(line: 286, column: 26, scope: !417)
!421 = !DILocation(line: 286, column: 19, scope: !417)
!422 = !DILocation(line: 286, column: 6, scope: !396)
!423 = !DILocation(line: 287, column: 3, scope: !417)
!424 = !DILocation(line: 289, column: 24, scope: !396)
!425 = !DILocation(line: 289, column: 12, scope: !396)
!426 = !DILocation(line: 289, column: 10, scope: !396)
!427 = !DILocation(line: 290, column: 22, scope: !396)
!428 = !DILocation(line: 290, column: 11, scope: !396)
!429 = !DILocation(line: 290, column: 9, scope: !396)
!430 = !DILocation(line: 292, column: 2, scope: !396)
!431 = !DILocation(line: 292, column: 10, scope: !396)
!432 = !DILocation(line: 292, column: 18, scope: !396)
!433 = !DILocation(line: 292, column: 32, scope: !396)
!434 = !DILocation(line: 293, column: 20, scope: !396)
!435 = !DILocation(line: 293, column: 11, scope: !396)
!436 = !DILocation(line: 293, column: 26, scope: !396)
!437 = !DILocation(line: 293, column: 24, scope: !396)
!438 = !DILocation(line: 293, column: 37, scope: !396)
!439 = !DILocation(line: 293, column: 34, scope: !396)
!440 = !DILocation(line: 0, scope: !396)
!441 = !DILocation(line: 294, column: 3, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 294, column: 3)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 294, column: 3)
!444 = distinct !DILexicalBlock(scope: !396, file: !3, line: 293, column: 43)
!445 = !DILocation(line: 294, column: 3, scope: !443)
!446 = !DILocation(line: 297, column: 9, scope: !444)
!447 = !DILocation(line: 297, column: 13, scope: !444)
!448 = !DILocation(line: 297, column: 18, scope: !444)
!449 = !DILocation(line: 297, column: 26, scope: !444)
!450 = !DILocation(line: 297, column: 30, scope: !444)
!451 = !DILocation(line: 297, column: 35, scope: !444)
!452 = !DILocation(line: 297, column: 41, scope: !444)
!453 = !DILocation(line: 297, column: 50, scope: !444)
!454 = !DILocation(line: 297, column: 7, scope: !444)
!455 = !DILocation(line: 298, column: 7, scope: !456)
!456 = distinct !DILexicalBlock(scope: !444, file: !3, line: 298, column: 7)
!457 = !DILocation(line: 298, column: 7, scope: !444)
!458 = !DILocation(line: 299, column: 4, scope: !456)
!459 = !DILocation(line: 301, column: 34, scope: !444)
!460 = !DILocation(line: 301, column: 39, scope: !444)
!461 = !DILocation(line: 301, column: 44, scope: !444)
!462 = !DILocation(line: 301, column: 9, scope: !444)
!463 = !DILocation(line: 301, column: 7, scope: !444)
!464 = !DILocation(line: 303, column: 16, scope: !465)
!465 = distinct !DILexicalBlock(scope: !444, file: !3, line: 303, column: 7)
!466 = !DILocation(line: 303, column: 7, scope: !465)
!467 = !DILocation(line: 303, column: 23, scope: !465)
!468 = !DILocation(line: 303, column: 27, scope: !465)
!469 = !DILocation(line: 303, column: 20, scope: !465)
!470 = !DILocation(line: 303, column: 7, scope: !444)
!471 = !DILocation(line: 304, column: 4, scope: !465)
!472 = !DILocation(line: 306, column: 25, scope: !444)
!473 = !DILocation(line: 306, column: 13, scope: !444)
!474 = !DILocation(line: 306, column: 11, scope: !444)
!475 = !DILocation(line: 307, column: 23, scope: !444)
!476 = !DILocation(line: 307, column: 12, scope: !444)
!477 = !DILocation(line: 307, column: 10, scope: !444)
!478 = distinct !{!478, !430, !479}
!479 = !DILocation(line: 308, column: 2, scope: !396)
!480 = !DILocation(line: 309, column: 9, scope: !396)
!481 = !DILocation(line: 309, column: 2, scope: !396)
!482 = !DILocation(line: 310, column: 1, scope: !396)
!483 = distinct !DISubprogram(name: "hermes_apply_pda_with_defaults", scope: !3, file: !3, line: 390, type: !116, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!484 = !DILocalVariable(name: "hw", arg: 1, scope: !483, file: !3, line: 390, type: !119)
!485 = !DILocation(line: 390, column: 51, scope: !483)
!486 = !DILocalVariable(name: "first_pdr", arg: 2, scope: !483, file: !3, line: 391, type: !193)
!487 = !DILocation(line: 391, column: 20, scope: !483)
!488 = !DILocalVariable(name: "pdr_end", arg: 3, scope: !483, file: !3, line: 392, type: !168)
!489 = !DILocation(line: 392, column: 20, scope: !483)
!490 = !DILocalVariable(name: "pda", arg: 4, scope: !483, file: !3, line: 393, type: !223)
!491 = !DILocation(line: 393, column: 22, scope: !483)
!492 = !DILocalVariable(name: "pda_end", arg: 5, scope: !483, file: !3, line: 394, type: !168)
!493 = !DILocation(line: 394, column: 20, scope: !483)
!494 = !DILocalVariable(name: "pdr", scope: !483, file: !3, line: 396, type: !6)
!495 = !DILocation(line: 396, column: 20, scope: !483)
!496 = !DILocation(line: 396, column: 47, scope: !483)
!497 = !DILocation(line: 396, column: 26, scope: !483)
!498 = !DILocalVariable(name: "first_pdi", scope: !483, file: !3, line: 397, type: !23)
!499 = !DILocation(line: 397, column: 20, scope: !483)
!500 = !DILocation(line: 397, column: 54, scope: !483)
!501 = !DILocation(line: 397, column: 32, scope: !483)
!502 = !DILocalVariable(name: "pdi", scope: !483, file: !3, line: 398, type: !23)
!503 = !DILocation(line: 398, column: 20, scope: !483)
!504 = !DILocalVariable(name: "default_pdi", scope: !483, file: !3, line: 399, type: !23)
!505 = !DILocation(line: 399, column: 20, scope: !483)
!506 = !DILocalVariable(name: "outdoor_pdi", scope: !483, file: !3, line: 400, type: !23)
!507 = !DILocation(line: 400, column: 20, scope: !483)
!508 = !DILocalVariable(name: "record_id", scope: !483, file: !3, line: 401, type: !118)
!509 = !DILocation(line: 401, column: 6, scope: !483)
!510 = !DILocation(line: 403, column: 10, scope: !483)
!511 = !DILocation(line: 405, column: 2, scope: !483)
!512 = !DILocation(line: 405, column: 19, scope: !483)
!513 = !DILocation(line: 405, column: 10, scope: !483)
!514 = !DILocation(line: 405, column: 26, scope: !483)
!515 = !DILocation(line: 405, column: 23, scope: !483)
!516 = !DILocation(line: 405, column: 35, scope: !483)
!517 = !DILocation(line: 406, column: 17, scope: !483)
!518 = !DILocation(line: 406, column: 10, scope: !483)
!519 = !DILocation(line: 406, column: 22, scope: !483)
!520 = !DILocation(line: 0, scope: !483)
!521 = !DILocation(line: 413, column: 15, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 413, column: 7)
!523 = distinct !DILexicalBlock(scope: !483, file: !3, line: 406, column: 35)
!524 = !DILocation(line: 413, column: 7, scope: !522)
!525 = !DILocation(line: 413, column: 20, scope: !522)
!526 = !DILocation(line: 413, column: 7, scope: !523)
!527 = !DILocation(line: 414, column: 4, scope: !522)
!528 = !DILocation(line: 415, column: 22, scope: !523)
!529 = !DILocation(line: 415, column: 15, scope: !523)
!530 = !DILocation(line: 415, column: 13, scope: !523)
!531 = !DILocation(line: 417, column: 25, scope: !523)
!532 = !DILocation(line: 417, column: 36, scope: !523)
!533 = !DILocation(line: 417, column: 47, scope: !523)
!534 = !DILocation(line: 417, column: 9, scope: !523)
!535 = !DILocation(line: 417, column: 7, scope: !523)
!536 = !DILocation(line: 418, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !523, file: !3, line: 418, column: 7)
!538 = !DILocation(line: 418, column: 7, scope: !523)
!539 = !DILocation(line: 419, column: 4, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 419, column: 4)
!541 = distinct !DILexicalBlock(scope: !537, file: !3, line: 419, column: 4)
!542 = !DILocation(line: 419, column: 4, scope: !541)
!543 = !DILocation(line: 419, column: 4, scope: !537)
!544 = !DILocation(line: 422, column: 11, scope: !523)
!545 = !DILocation(line: 422, column: 3, scope: !523)
!546 = !DILocation(line: 425, column: 34, scope: !547)
!547 = distinct !DILexicalBlock(scope: !523, file: !3, line: 422, column: 22)
!548 = !DILocation(line: 425, column: 45, scope: !547)
!549 = !DILocation(line: 425, column: 55, scope: !547)
!550 = !DILocation(line: 426, column: 13, scope: !547)
!551 = !DILocation(line: 425, column: 18, scope: !547)
!552 = !DILocation(line: 425, column: 16, scope: !547)
!553 = !DILocation(line: 427, column: 16, scope: !547)
!554 = !DILocation(line: 428, column: 8, scope: !555)
!555 = distinct !DILexicalBlock(scope: !547, file: !3, line: 428, column: 8)
!556 = !DILocation(line: 428, column: 8, scope: !547)
!557 = !DILocation(line: 429, column: 11, scope: !558)
!558 = distinct !DILexicalBlock(scope: !555, file: !3, line: 428, column: 21)
!559 = !DILocation(line: 429, column: 9, scope: !558)
!560 = !DILocation(line: 430, column: 5, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 430, column: 5)
!562 = distinct !DILexicalBlock(scope: !558, file: !3, line: 430, column: 5)
!563 = !DILocation(line: 430, column: 5, scope: !562)
!564 = !DILocation(line: 433, column: 4, scope: !558)
!565 = !DILocation(line: 434, column: 4, scope: !547)
!566 = !DILocation(line: 436, column: 16, scope: !547)
!567 = !DILocation(line: 437, column: 4, scope: !547)
!568 = !DILocation(line: 439, column: 16, scope: !547)
!569 = !DILocation(line: 440, column: 4, scope: !547)
!570 = !DILocation(line: 442, column: 16, scope: !547)
!571 = !DILocation(line: 443, column: 4, scope: !547)
!572 = !DILocation(line: 445, column: 16, scope: !547)
!573 = !DILocation(line: 446, column: 4, scope: !547)
!574 = !DILocation(line: 448, column: 16, scope: !547)
!575 = !DILocation(line: 449, column: 4, scope: !547)
!576 = !DILocation(line: 451, column: 16, scope: !547)
!577 = !DILocation(line: 452, column: 4, scope: !547)
!578 = !DILocation(line: 454, column: 16, scope: !547)
!579 = !DILocation(line: 455, column: 4, scope: !547)
!580 = !DILocation(line: 457, column: 8, scope: !581)
!581 = distinct !DILexicalBlock(scope: !523, file: !3, line: 457, column: 7)
!582 = !DILocation(line: 457, column: 12, scope: !581)
!583 = !DILocation(line: 457, column: 15, scope: !581)
!584 = !DILocation(line: 457, column: 7, scope: !523)
!585 = !DILocation(line: 459, column: 10, scope: !586)
!586 = distinct !DILexicalBlock(scope: !581, file: !3, line: 457, column: 28)
!587 = !DILocation(line: 459, column: 8, scope: !586)
!588 = !DILocation(line: 460, column: 4, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 460, column: 4)
!590 = distinct !DILexicalBlock(scope: !586, file: !3, line: 460, column: 4)
!591 = !DILocation(line: 460, column: 4, scope: !590)
!592 = !DILocation(line: 462, column: 3, scope: !586)
!593 = !DILocation(line: 464, column: 7, scope: !594)
!594 = distinct !DILexicalBlock(scope: !523, file: !3, line: 464, column: 7)
!595 = !DILocation(line: 464, column: 7, scope: !523)
!596 = !DILocation(line: 466, column: 17, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !3, line: 466, column: 8)
!598 = distinct !DILexicalBlock(scope: !594, file: !3, line: 464, column: 12)
!599 = !DILocation(line: 466, column: 9, scope: !597)
!600 = !DILocation(line: 466, column: 33, scope: !597)
!601 = !DILocation(line: 466, column: 25, scope: !597)
!602 = !DILocation(line: 466, column: 22, scope: !597)
!603 = !DILocation(line: 466, column: 39, scope: !597)
!604 = !DILocation(line: 467, column: 18, scope: !597)
!605 = !DILocation(line: 467, column: 23, scope: !597)
!606 = !DILocation(line: 467, column: 38, scope: !597)
!607 = !DILocation(line: 467, column: 30, scope: !597)
!608 = !DILocation(line: 467, column: 28, scope: !597)
!609 = !DILocation(line: 467, column: 45, scope: !597)
!610 = !DILocation(line: 467, column: 43, scope: !597)
!611 = !DILocation(line: 466, column: 8, scope: !598)
!612 = !DILocation(line: 469, column: 5, scope: !613)
!613 = distinct !DILexicalBlock(scope: !597, file: !3, line: 467, column: 55)
!614 = !DILocation(line: 469, column: 9, scope: !613)
!615 = !DILocation(line: 469, column: 14, scope: !613)
!616 = !DILocation(line: 469, column: 22, scope: !613)
!617 = !DILocation(line: 469, column: 26, scope: !613)
!618 = !DILocation(line: 469, column: 31, scope: !613)
!619 = !DILocation(line: 469, column: 46, scope: !613)
!620 = !DILocation(line: 469, column: 37, scope: !613)
!621 = !DILocation(line: 470, column: 16, scope: !613)
!622 = !DILocation(line: 470, column: 8, scope: !613)
!623 = !DILocation(line: 471, column: 4, scope: !613)
!624 = !DILocation(line: 472, column: 3, scope: !598)
!625 = !DILocation(line: 474, column: 6, scope: !523)
!626 = distinct !{!626, !511, !627}
!627 = !DILocation(line: 475, column: 2, scope: !483)
!628 = !DILocation(line: 476, column: 2, scope: !483)
!629 = distinct !DISubprogram(name: "pdr_id", scope: !3, file: !3, line: 110, type: !630, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!630 = !DISubroutineType(types: !631)
!631 = !{!183, !6}
!632 = !DILocalVariable(name: "pdr", arg: 1, scope: !629, file: !3, line: 110, type: !6)
!633 = !DILocation(line: 110, column: 26, scope: !629)
!634 = !DILocation(line: 112, column: 9, scope: !629)
!635 = !DILocation(line: 112, column: 2, scope: !629)
!636 = distinct !DISubprogram(name: "pdr_len", scope: !3, file: !3, line: 122, type: !630, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!637 = !DILocalVariable(name: "pdr", arg: 1, scope: !636, file: !3, line: 122, type: !6)
!638 = !DILocation(line: 122, column: 27, scope: !636)
!639 = !DILocation(line: 124, column: 9, scope: !636)
!640 = !DILocation(line: 124, column: 2, scope: !636)
!641 = distinct !DISubprogram(name: "hermes_find_pdi", scope: !3, file: !3, line: 176, type: !642, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!642 = !DISubroutineType(types: !643)
!643 = !{!23, !23, !183, !168}
!644 = !DILocalVariable(name: "first_pdi", arg: 1, scope: !641, file: !3, line: 176, type: !23)
!645 = !DILocation(line: 176, column: 35, scope: !641)
!646 = !DILocalVariable(name: "record_id", arg: 2, scope: !641, file: !3, line: 176, type: !183)
!647 = !DILocation(line: 176, column: 50, scope: !641)
!648 = !DILocalVariable(name: "end", arg: 3, scope: !641, file: !3, line: 176, type: !168)
!649 = !DILocation(line: 176, column: 73, scope: !641)
!650 = !DILocalVariable(name: "pdi", scope: !641, file: !3, line: 178, type: !23)
!651 = !DILocation(line: 178, column: 20, scope: !641)
!652 = !DILocation(line: 178, column: 26, scope: !641)
!653 = !DILocation(line: 180, column: 6, scope: !641)
!654 = !DILocation(line: 182, column: 2, scope: !641)
!655 = !DILocation(line: 182, column: 19, scope: !641)
!656 = !DILocation(line: 182, column: 10, scope: !641)
!657 = !DILocation(line: 182, column: 26, scope: !641)
!658 = !DILocation(line: 182, column: 23, scope: !641)
!659 = !DILocation(line: 182, column: 31, scope: !641)
!660 = !DILocation(line: 183, column: 17, scope: !641)
!661 = !DILocation(line: 183, column: 10, scope: !641)
!662 = !DILocation(line: 183, column: 22, scope: !641)
!663 = !DILocation(line: 0, scope: !641)
!664 = !DILocation(line: 186, column: 14, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !3, line: 186, column: 7)
!666 = distinct !DILexicalBlock(scope: !641, file: !3, line: 183, column: 35)
!667 = !DILocation(line: 186, column: 7, scope: !665)
!668 = !DILocation(line: 186, column: 22, scope: !665)
!669 = !DILocation(line: 186, column: 19, scope: !665)
!670 = !DILocation(line: 186, column: 7, scope: !666)
!671 = !DILocation(line: 187, column: 11, scope: !665)
!672 = !DILocation(line: 187, column: 4, scope: !665)
!673 = !DILocation(line: 189, column: 25, scope: !666)
!674 = !DILocation(line: 189, column: 30, scope: !666)
!675 = !DILocation(line: 189, column: 43, scope: !666)
!676 = !DILocation(line: 189, column: 35, scope: !666)
!677 = !DILocation(line: 189, column: 9, scope: !666)
!678 = !DILocation(line: 189, column: 7, scope: !666)
!679 = distinct !{!679, !654, !680}
!680 = !DILocation(line: 190, column: 2, scope: !641)
!681 = !DILocation(line: 191, column: 2, scope: !641)
!682 = !DILocation(line: 192, column: 1, scope: !641)
!683 = distinct !DISubprogram(name: "pdr_addr", scope: !3, file: !3, line: 116, type: !630, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!684 = !DILocalVariable(name: "pdr", arg: 1, scope: !683, file: !3, line: 116, type: !6)
!685 = !DILocation(line: 116, column: 28, scope: !683)
!686 = !DILocation(line: 118, column: 9, scope: !683)
!687 = !DILocation(line: 118, column: 2, scope: !683)
!688 = distinct !DISubprogram(name: "hermes_find_pdr", scope: !3, file: !3, line: 149, type: !689, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!689 = !DISubroutineType(types: !690)
!690 = !{!6, !6, !183, !168}
!691 = !DILocalVariable(name: "first_pdr", arg: 1, scope: !688, file: !3, line: 149, type: !6)
!692 = !DILocation(line: 149, column: 35, scope: !688)
!693 = !DILocalVariable(name: "record_id", arg: 2, scope: !688, file: !3, line: 149, type: !183)
!694 = !DILocation(line: 149, column: 50, scope: !688)
!695 = !DILocalVariable(name: "end", arg: 3, scope: !688, file: !3, line: 149, type: !168)
!696 = !DILocation(line: 149, column: 73, scope: !688)
!697 = !DILocalVariable(name: "pdr", scope: !688, file: !3, line: 151, type: !6)
!698 = !DILocation(line: 151, column: 20, scope: !688)
!699 = !DILocation(line: 151, column: 26, scope: !688)
!700 = !DILocation(line: 153, column: 6, scope: !688)
!701 = !DILocation(line: 155, column: 2, scope: !688)
!702 = !DILocation(line: 155, column: 19, scope: !688)
!703 = !DILocation(line: 155, column: 10, scope: !688)
!704 = !DILocation(line: 155, column: 26, scope: !688)
!705 = !DILocation(line: 155, column: 23, scope: !688)
!706 = !DILocation(line: 155, column: 31, scope: !688)
!707 = !DILocation(line: 156, column: 17, scope: !688)
!708 = !DILocation(line: 156, column: 10, scope: !688)
!709 = !DILocation(line: 156, column: 22, scope: !688)
!710 = !DILocation(line: 0, scope: !688)
!711 = !DILocation(line: 162, column: 15, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 162, column: 7)
!713 = distinct !DILexicalBlock(scope: !688, file: !3, line: 156, column: 35)
!714 = !DILocation(line: 162, column: 7, scope: !712)
!715 = !DILocation(line: 162, column: 20, scope: !712)
!716 = !DILocation(line: 162, column: 7, scope: !713)
!717 = !DILocation(line: 163, column: 4, scope: !712)
!718 = !DILocation(line: 166, column: 14, scope: !719)
!719 = distinct !DILexicalBlock(scope: !713, file: !3, line: 166, column: 7)
!720 = !DILocation(line: 166, column: 7, scope: !719)
!721 = !DILocation(line: 166, column: 22, scope: !719)
!722 = !DILocation(line: 166, column: 19, scope: !719)
!723 = !DILocation(line: 166, column: 7, scope: !713)
!724 = !DILocation(line: 167, column: 11, scope: !719)
!725 = !DILocation(line: 167, column: 4, scope: !719)
!726 = !DILocation(line: 169, column: 24, scope: !713)
!727 = !DILocation(line: 169, column: 29, scope: !713)
!728 = !DILocation(line: 169, column: 9, scope: !713)
!729 = !DILocation(line: 169, column: 7, scope: !713)
!730 = distinct !{!730, !701, !731}
!731 = !DILocation(line: 170, column: 2, scope: !688)
!732 = !DILocation(line: 171, column: 2, scope: !688)
!733 = !DILocation(line: 172, column: 1, scope: !688)
