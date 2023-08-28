; ModuleID = '../bcout/drivers/staging/comedi/drivers/ni_routes.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/ni_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ni_routes_module_init6:\09\09\09"
module asm ".long\09ni_routes_module_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.family_route_values = type { i8*, [210 x [210 x i8]] }
%struct.ni_device_routes = type { i8*, i32, %struct.ni_route_set* }
%struct.ni_route_set = type { i32, i32, i32* }
%struct.ni_route_tables = type { %struct.ni_device_routes*, i8* }

@NI_CMD_DESTS = internal constant [7 x i32] [i32 32927, i32 32929, i32 32931, i32 32938, i32 32940, i32 32942, i32 32951], align 16, !dbg !0
@__UNIQUE_ID___addressable_ni_routes_module_init106 = internal global i8* bitcast (i32 ()* @ni_routes_module_init to i8*), section ".discard.addressable", align 8, !dbg !73
@__exitcall_ni_routes_module_exit = internal global void ()* @ni_routes_module_exit, section ".exitcall.exit", align 8, !dbg !76
@__UNIQUE_ID_author107 = internal constant [48 x i8] c"ni_routing.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1, !dbg !83
@__UNIQUE_ID_description108 = internal constant [76 x i8] c"ni_routing.description=Comedi helper for routing signals-->terminals for NI\00", section ".modinfo", align 1, !dbg !90
@__UNIQUE_ID_file109 = internal constant [58 x i8] c"ni_routing.file=drivers/staging/comedi/drivers/ni_routing\00", section ".modinfo", align 1, !dbg !95
@__UNIQUE_ID_license110 = internal constant [23 x i8] c"ni_routing.license=GPL\00", section ".modinfo", align 1, !dbg !100
@ni_all_route_values = external dso_local constant [0 x %struct.family_route_values*], align 8
@ni_device_routes_list = external dso_local constant [0 x %struct.ni_device_routes*], align 8
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @ni_routes_module_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_ni_routes_module_init106 to i8*), i8* bitcast (void ()** @__exitcall_ni_routes_module_exit to i8*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_author107, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__UNIQUE_ID_description108, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_file109, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license110, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ni_assign_device_routes(i8* %device_family, i8* %board_name, i8* %alt_board_name, %struct.ni_route_tables* %tables) #0 !dbg !114 {
entry:
  %device_family.addr = alloca i8*, align 8
  %board_name.addr = alloca i8*, align 8
  %alt_board_name.addr = alloca i8*, align 8
  %tables.addr = alloca %struct.ni_route_tables*, align 8
  store i8* %device_family, i8** %device_family.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device_family.addr, metadata !146, metadata !DIExpression()), !dbg !147
  store i8* %board_name, i8** %board_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %board_name.addr, metadata !148, metadata !DIExpression()), !dbg !149
  store i8* %alt_board_name, i8** %alt_board_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %alt_board_name.addr, metadata !150, metadata !DIExpression()), !dbg !151
  store %struct.ni_route_tables* %tables, %struct.ni_route_tables** %tables.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ni_route_tables** %tables.addr, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !154
  %1 = bitcast %struct.ni_route_tables* %0 to i8*, !dbg !155
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false), !dbg !155
  %2 = load i8*, i8** %device_family.addr, align 8, !dbg !156
  %3 = load i8*, i8** %board_name.addr, align 8, !dbg !157
  %4 = load i8*, i8** %alt_board_name.addr, align 8, !dbg !158
  %5 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !159
  %call = call i32 @ni_find_device_routes(i8* %2, i8* %3, i8* %4, %struct.ni_route_tables* %5) #5, !dbg !160
  ret i32 %call, !dbg !161
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_find_device_routes(i8* %device_family, i8* %board_name, i8* %alt_board_name, %struct.ni_route_tables* %tables) #0 !dbg !162 {
entry:
  %retval = alloca i32, align 4
  %device_family.addr = alloca i8*, align 8
  %board_name.addr = alloca i8*, align 8
  %alt_board_name.addr = alloca i8*, align 8
  %tables.addr = alloca %struct.ni_route_tables*, align 8
  %dr = alloca %struct.ni_device_routes*, align 8
  %rv = alloca i8*, align 8
  store i8* %device_family, i8** %device_family.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device_family.addr, metadata !163, metadata !DIExpression()), !dbg !164
  store i8* %board_name, i8** %board_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %board_name.addr, metadata !165, metadata !DIExpression()), !dbg !166
  store i8* %alt_board_name, i8** %alt_board_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %alt_board_name.addr, metadata !167, metadata !DIExpression()), !dbg !168
  store %struct.ni_route_tables* %tables, %struct.ni_route_tables** %tables.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ni_route_tables** %tables.addr, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata %struct.ni_device_routes** %dr, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %rv, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = load i8*, i8** %device_family.addr, align 8, !dbg !175
  %call = call i8* @ni_find_route_values(i8* %0) #5, !dbg !176
  store i8* %call, i8** %rv, align 8, !dbg !177
  %1 = load i8*, i8** %board_name.addr, align 8, !dbg !178
  %call1 = call %struct.ni_device_routes* @ni_find_valid_routes(i8* %1) #5, !dbg !179
  store %struct.ni_device_routes* %call1, %struct.ni_device_routes** %dr, align 8, !dbg !180
  %2 = load %struct.ni_device_routes*, %struct.ni_device_routes** %dr, align 8, !dbg !181
  %tobool = icmp ne %struct.ni_device_routes* %2, null, !dbg !181
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !183

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %alt_board_name.addr, align 8, !dbg !184
  %tobool2 = icmp ne i8* %3, null, !dbg !184
  br i1 %tobool2, label %if.then, label %if.end, !dbg !185

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %alt_board_name.addr, align 8, !dbg !186
  %call3 = call %struct.ni_device_routes* @ni_find_valid_routes(i8* %4) #5, !dbg !187
  store %struct.ni_device_routes* %call3, %struct.ni_device_routes** %dr, align 8, !dbg !188
  br label %if.end, !dbg !189

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i8*, i8** %rv, align 8, !dbg !190
  %6 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !191
  %route_values = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %6, i32 0, i32 1, !dbg !192
  store i8* %5, i8** %route_values, align 8, !dbg !193
  %7 = load %struct.ni_device_routes*, %struct.ni_device_routes** %dr, align 8, !dbg !194
  %8 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !195
  %valid_routes = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %8, i32 0, i32 0, !dbg !196
  store %struct.ni_device_routes* %7, %struct.ni_device_routes** %valid_routes, align 8, !dbg !197
  %9 = load i8*, i8** %rv, align 8, !dbg !198
  %tobool4 = icmp ne i8* %9, null, !dbg !198
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !200

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.ni_device_routes*, %struct.ni_device_routes** %dr, align 8, !dbg !201
  %tobool5 = icmp ne %struct.ni_device_routes* %10, null, !dbg !201
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !202

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -61, i32* %retval, align 4, !dbg !203
  br label %return, !dbg !203

if.end7:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !204
  br label %return, !dbg !204

return:                                           ; preds = %if.end7, %if.then6
  %11 = load i32, i32* %retval, align 4, !dbg !205
  ret i32 %11, !dbg !205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ni_count_valid_routes(%struct.ni_route_tables* %tables) #0 !dbg !206 {
entry:
  %tables.addr = alloca %struct.ni_route_tables*, align 8
  %total = alloca i32, align 4
  %i = alloca i32, align 4
  %R = alloca %struct.ni_route_set*, align 8
  %j = alloca i32, align 4
  %src = alloca i32, align 4
  %dest = alloca i32, align 4
  %rv = alloca i8*, align 8
  store %struct.ni_route_tables* %tables, %struct.ni_route_tables** %tables.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ni_route_tables** %tables.addr, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %total, metadata !213, metadata !DIExpression()), !dbg !214
  store i32 0, i32* %total, align 4, !dbg !214
  call void @llvm.dbg.declare(metadata i32* %i, metadata !215, metadata !DIExpression()), !dbg !216
  store i32 0, i32* %i, align 4, !dbg !217
  br label %for.cond, !dbg !219

for.cond:                                         ; preds = %for.inc48, %entry
  %0 = load i32, i32* %i, align 4, !dbg !220
  %1 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !222
  %valid_routes = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %1, i32 0, i32 0, !dbg !223
  %2 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes, align 8, !dbg !223
  %n_route_sets = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %2, i32 0, i32 1, !dbg !224
  %3 = load i32, i32* %n_route_sets, align 8, !dbg !224
  %cmp = icmp slt i32 %0, %3, !dbg !225
  br i1 %cmp, label %for.body, label %for.end50, !dbg !226

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.ni_route_set** %R, metadata !227, metadata !DIExpression()), !dbg !231
  %4 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !232
  %valid_routes1 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %4, i32 0, i32 0, !dbg !233
  %5 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes1, align 8, !dbg !233
  %routes = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %5, i32 0, i32 2, !dbg !234
  %6 = load %struct.ni_route_set*, %struct.ni_route_set** %routes, align 8, !dbg !234
  %7 = load i32, i32* %i, align 4, !dbg !235
  %idxprom = sext i32 %7 to i64, !dbg !232
  %arrayidx = getelementptr %struct.ni_route_set, %struct.ni_route_set* %6, i64 %idxprom, !dbg !232
  store %struct.ni_route_set* %arrayidx, %struct.ni_route_set** %R, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata i32* %j, metadata !236, metadata !DIExpression()), !dbg !237
  store i32 0, i32* %j, align 4, !dbg !238
  br label %for.cond2, !dbg !240

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4, !dbg !241
  %9 = load %struct.ni_route_set*, %struct.ni_route_set** %R, align 8, !dbg !243
  %n_src = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %9, i32 0, i32 1, !dbg !244
  %10 = load i32, i32* %n_src, align 4, !dbg !244
  %cmp3 = icmp slt i32 %8, %10, !dbg !245
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !246

for.body4:                                        ; preds = %for.cond2
  call void @llvm.dbg.declare(metadata i32* %src, metadata !247, metadata !DIExpression()), !dbg !249
  %11 = load %struct.ni_route_set*, %struct.ni_route_set** %R, align 8, !dbg !250
  %src5 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %11, i32 0, i32 2, !dbg !251
  %12 = load i32*, i32** %src5, align 8, !dbg !251
  %13 = load i32, i32* %j, align 4, !dbg !252
  %idxprom6 = sext i32 %13 to i64, !dbg !250
  %arrayidx7 = getelementptr i32, i32* %12, i64 %idxprom6, !dbg !250
  %14 = load i32, i32* %arrayidx7, align 4, !dbg !250
  store i32 %14, i32* %src, align 4, !dbg !249
  call void @llvm.dbg.declare(metadata i32* %dest, metadata !253, metadata !DIExpression()), !dbg !254
  %15 = load %struct.ni_route_set*, %struct.ni_route_set** %R, align 8, !dbg !255
  %dest8 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %15, i32 0, i32 0, !dbg !256
  %16 = load i32, i32* %dest8, align 8, !dbg !256
  store i32 %16, i32* %dest, align 4, !dbg !254
  call void @llvm.dbg.declare(metadata i8** %rv, metadata !257, metadata !DIExpression()), !dbg !258
  %17 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !259
  %route_values = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %17, i32 0, i32 1, !dbg !260
  %18 = load i8*, i8** %route_values, align 8, !dbg !260
  store i8* %18, i8** %rv, align 8, !dbg !258
  %19 = load i8*, i8** %rv, align 8, !dbg !261
  %20 = load i32, i32* %dest, align 4, !dbg !261
  %sub = sub i32 %20, 32768, !dbg !261
  %mul = mul i32 %sub, 210, !dbg !261
  %21 = load i32, i32* %src, align 4, !dbg !261
  %sub9 = sub i32 %21, 32768, !dbg !261
  %add = add i32 %mul, %sub9, !dbg !261
  %idxprom10 = zext i32 %add to i64, !dbg !261
  %arrayidx11 = getelementptr i8, i8* %19, i64 %idxprom10, !dbg !261
  %22 = load i8, i8* %arrayidx11, align 1, !dbg !261
  %tobool = icmp ne i8 %22, 0, !dbg !261
  br i1 %tobool, label %if.then, label %if.else, !dbg !263

if.then:                                          ; preds = %for.body4
  %23 = load i32, i32* %total, align 4, !dbg !264
  %inc = add i32 %23, 1, !dbg !264
  store i32 %inc, i32* %total, align 4, !dbg !264
  br label %if.end46, !dbg !264

if.else:                                          ; preds = %for.body4
  %24 = load i32, i32* %dest, align 4, !dbg !265
  %call = call zeroext i1 @channel_is_rtsi(i32 %24) #5, !dbg !267
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !268

land.lhs.true:                                    ; preds = %if.else
  %25 = load i8*, i8** %rv, align 8, !dbg !269
  %26 = load i32, i32* %src, align 4, !dbg !269
  %sub12 = sub i32 %26, 32768, !dbg !269
  %add13 = add i32 43890, %sub12, !dbg !269
  %idxprom14 = zext i32 %add13 to i64, !dbg !269
  %arrayidx15 = getelementptr i8, i8* %25, i64 %idxprom14, !dbg !269
  %27 = load i8, i8* %arrayidx15, align 1, !dbg !269
  %conv = zext i8 %27 to i32, !dbg !269
  %tobool16 = icmp ne i32 %conv, 0, !dbg !269
  br i1 %tobool16, label %if.then44, label %lor.lhs.false, !dbg !270

lor.lhs.false:                                    ; preds = %land.lhs.true
  %28 = load i8*, i8** %rv, align 8, !dbg !271
  %29 = load i32, i32* %src, align 4, !dbg !271
  %sub17 = sub i32 %29, 32768, !dbg !271
  %add18 = add i32 15120, %sub17, !dbg !271
  %idxprom19 = zext i32 %add18 to i64, !dbg !271
  %arrayidx20 = getelementptr i8, i8* %28, i64 %idxprom19, !dbg !271
  %30 = load i8, i8* %arrayidx20, align 1, !dbg !271
  %conv21 = zext i8 %30 to i32, !dbg !271
  %tobool22 = icmp ne i32 %conv21, 0, !dbg !271
  br i1 %tobool22, label %if.then44, label %lor.lhs.false23, !dbg !272

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %31 = load i8*, i8** %rv, align 8, !dbg !273
  %32 = load i32, i32* %src, align 4, !dbg !273
  %sub24 = sub i32 %32, 32768, !dbg !273
  %add25 = add i32 15330, %sub24, !dbg !273
  %idxprom26 = zext i32 %add25 to i64, !dbg !273
  %arrayidx27 = getelementptr i8, i8* %31, i64 %idxprom26, !dbg !273
  %33 = load i8, i8* %arrayidx27, align 1, !dbg !273
  %conv28 = zext i8 %33 to i32, !dbg !273
  %tobool29 = icmp ne i32 %conv28, 0, !dbg !273
  br i1 %tobool29, label %if.then44, label %lor.lhs.false30, !dbg !274

lor.lhs.false30:                                  ; preds = %lor.lhs.false23
  %34 = load i8*, i8** %rv, align 8, !dbg !275
  %35 = load i32, i32* %src, align 4, !dbg !275
  %sub31 = sub i32 %35, 32768, !dbg !275
  %add32 = add i32 15540, %sub31, !dbg !275
  %idxprom33 = zext i32 %add32 to i64, !dbg !275
  %arrayidx34 = getelementptr i8, i8* %34, i64 %idxprom33, !dbg !275
  %36 = load i8, i8* %arrayidx34, align 1, !dbg !275
  %conv35 = zext i8 %36 to i32, !dbg !275
  %tobool36 = icmp ne i32 %conv35, 0, !dbg !275
  br i1 %tobool36, label %if.then44, label %lor.lhs.false37, !dbg !276

lor.lhs.false37:                                  ; preds = %lor.lhs.false30
  %37 = load i8*, i8** %rv, align 8, !dbg !277
  %38 = load i32, i32* %src, align 4, !dbg !277
  %sub38 = sub i32 %38, 32768, !dbg !277
  %add39 = add i32 15750, %sub38, !dbg !277
  %idxprom40 = zext i32 %add39 to i64, !dbg !277
  %arrayidx41 = getelementptr i8, i8* %37, i64 %idxprom40, !dbg !277
  %39 = load i8, i8* %arrayidx41, align 1, !dbg !277
  %conv42 = zext i8 %39 to i32, !dbg !277
  %tobool43 = icmp ne i32 %conv42, 0, !dbg !277
  br i1 %tobool43, label %if.then44, label %if.end, !dbg !278

if.then44:                                        ; preds = %lor.lhs.false37, %lor.lhs.false30, %lor.lhs.false23, %lor.lhs.false, %land.lhs.true
  %40 = load i32, i32* %total, align 4, !dbg !279
  %inc45 = add i32 %40, 1, !dbg !279
  store i32 %inc45, i32* %total, align 4, !dbg !279
  br label %if.end, !dbg !281

if.end:                                           ; preds = %if.then44, %lor.lhs.false37, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end, %if.then
  br label %for.inc, !dbg !282

for.inc:                                          ; preds = %if.end46
  %41 = load i32, i32* %j, align 4, !dbg !283
  %inc47 = add i32 %41, 1, !dbg !283
  store i32 %inc47, i32* %j, align 4, !dbg !283
  br label %for.cond2, !dbg !284, !llvm.loop !285

for.end:                                          ; preds = %for.cond2
  br label %for.inc48, !dbg !287

for.inc48:                                        ; preds = %for.end
  %42 = load i32, i32* %i, align 4, !dbg !288
  %inc49 = add i32 %42, 1, !dbg !288
  store i32 %inc49, i32* %i, align 4, !dbg !288
  br label %for.cond, !dbg !289, !llvm.loop !290

for.end50:                                        ; preds = %for.cond
  %43 = load i32, i32* %total, align 4, !dbg !292
  ret i32 %43, !dbg !293
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @channel_is_rtsi(i32 %channel) #0 !dbg !294 {
entry:
  %channel.addr = alloca i32, align 4
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i32, i32* %channel.addr, align 4, !dbg !302
  %cmp = icmp ule i32 32832, %0, !dbg !303
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !304

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %channel.addr, align 4, !dbg !305
  %cmp1 = icmp ule i32 %1, 32839, !dbg !306
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !307
  ret i1 %2, !dbg !308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ni_get_valid_routes(%struct.ni_route_tables* %tables, i32 %n_pairs, i32* %pair_data) #0 !dbg !309 {
entry:
  %retval = alloca i32, align 4
  %tables.addr = alloca %struct.ni_route_tables*, align 8
  %n_pairs.addr = alloca i32, align 4
  %pair_data.addr = alloca i32*, align 8
  %n_valid = alloca i32, align 4
  %i = alloca i32, align 4
  %R = alloca %struct.ni_route_set*, align 8
  %j = alloca i32, align 4
  %src = alloca i32, align 4
  %dest = alloca i32, align 4
  %valid = alloca i8, align 1
  %rv = alloca i8*, align 8
  store %struct.ni_route_tables* %tables, %struct.ni_route_tables** %tables.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ni_route_tables** %tables.addr, metadata !313, metadata !DIExpression()), !dbg !314
  store i32 %n_pairs, i32* %n_pairs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n_pairs.addr, metadata !315, metadata !DIExpression()), !dbg !316
  store i32* %pair_data, i32** %pair_data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %pair_data.addr, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata i32* %n_valid, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !321
  %call = call i32 @ni_count_valid_routes(%struct.ni_route_tables* %0) #5, !dbg !322
  store i32 %call, i32* %n_valid, align 4, !dbg !320
  call void @llvm.dbg.declare(metadata i32* %i, metadata !323, metadata !DIExpression()), !dbg !324
  %1 = load i32, i32* %n_pairs.addr, align 4, !dbg !325
  %cmp = icmp eq i32 %1, 0, !dbg !327
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !328

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %n_valid, align 4, !dbg !329
  %cmp1 = icmp eq i32 %2, 0, !dbg !330
  br i1 %cmp1, label %if.then, label %if.end, !dbg !331

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* %n_valid, align 4, !dbg !332
  store i32 %3, i32* %retval, align 4, !dbg !333
  br label %return, !dbg !333

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32*, i32** %pair_data.addr, align 8, !dbg !334
  %tobool = icmp ne i32* %4, null, !dbg !334
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !336

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !337
  br label %return, !dbg !337

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %n_valid, align 4, !dbg !338
  store i32 0, i32* %i, align 4, !dbg !339
  br label %for.cond, !dbg !341

for.cond:                                         ; preds = %for.inc70, %if.end3
  %5 = load i32, i32* %i, align 4, !dbg !342
  %6 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !344
  %valid_routes = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %6, i32 0, i32 0, !dbg !345
  %7 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes, align 8, !dbg !345
  %n_route_sets = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %7, i32 0, i32 1, !dbg !346
  %8 = load i32, i32* %n_route_sets, align 8, !dbg !346
  %cmp4 = icmp slt i32 %5, %8, !dbg !347
  br i1 %cmp4, label %for.body, label %for.end72, !dbg !348

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.ni_route_set** %R, metadata !349, metadata !DIExpression()), !dbg !351
  %9 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !352
  %valid_routes5 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %9, i32 0, i32 0, !dbg !353
  %10 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes5, align 8, !dbg !353
  %routes = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %10, i32 0, i32 2, !dbg !354
  %11 = load %struct.ni_route_set*, %struct.ni_route_set** %routes, align 8, !dbg !354
  %12 = load i32, i32* %i, align 4, !dbg !355
  %idxprom = sext i32 %12 to i64, !dbg !352
  %arrayidx = getelementptr %struct.ni_route_set, %struct.ni_route_set* %11, i64 %idxprom, !dbg !352
  store %struct.ni_route_set* %arrayidx, %struct.ni_route_set** %R, align 8, !dbg !351
  call void @llvm.dbg.declare(metadata i32* %j, metadata !356, metadata !DIExpression()), !dbg !357
  store i32 0, i32* %j, align 4, !dbg !358
  br label %for.cond6, !dbg !360

for.cond6:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4, !dbg !361
  %14 = load %struct.ni_route_set*, %struct.ni_route_set** %R, align 8, !dbg !363
  %n_src = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %14, i32 0, i32 1, !dbg !364
  %15 = load i32, i32* %n_src, align 4, !dbg !364
  %cmp7 = icmp slt i32 %13, %15, !dbg !365
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !366

for.body8:                                        ; preds = %for.cond6
  call void @llvm.dbg.declare(metadata i32* %src, metadata !367, metadata !DIExpression()), !dbg !369
  %16 = load %struct.ni_route_set*, %struct.ni_route_set** %R, align 8, !dbg !370
  %src9 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %16, i32 0, i32 2, !dbg !371
  %17 = load i32*, i32** %src9, align 8, !dbg !371
  %18 = load i32, i32* %j, align 4, !dbg !372
  %idxprom10 = sext i32 %18 to i64, !dbg !370
  %arrayidx11 = getelementptr i32, i32* %17, i64 %idxprom10, !dbg !370
  %19 = load i32, i32* %arrayidx11, align 4, !dbg !370
  store i32 %19, i32* %src, align 4, !dbg !369
  call void @llvm.dbg.declare(metadata i32* %dest, metadata !373, metadata !DIExpression()), !dbg !374
  %20 = load %struct.ni_route_set*, %struct.ni_route_set** %R, align 8, !dbg !375
  %dest12 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %20, i32 0, i32 0, !dbg !376
  %21 = load i32, i32* %dest12, align 8, !dbg !376
  store i32 %21, i32* %dest, align 4, !dbg !374
  call void @llvm.dbg.declare(metadata i8* %valid, metadata !377, metadata !DIExpression()), !dbg !378
  store i8 0, i8* %valid, align 1, !dbg !378
  call void @llvm.dbg.declare(metadata i8** %rv, metadata !379, metadata !DIExpression()), !dbg !380
  %22 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !381
  %route_values = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %22, i32 0, i32 1, !dbg !382
  %23 = load i8*, i8** %route_values, align 8, !dbg !382
  store i8* %23, i8** %rv, align 8, !dbg !380
  %24 = load i8*, i8** %rv, align 8, !dbg !383
  %25 = load i32, i32* %dest, align 4, !dbg !383
  %sub = sub i32 %25, 32768, !dbg !383
  %mul = mul i32 %sub, 210, !dbg !383
  %26 = load i32, i32* %src, align 4, !dbg !383
  %sub13 = sub i32 %26, 32768, !dbg !383
  %add = add i32 %mul, %sub13, !dbg !383
  %idxprom14 = zext i32 %add to i64, !dbg !383
  %arrayidx15 = getelementptr i8, i8* %24, i64 %idxprom14, !dbg !383
  %27 = load i8, i8* %arrayidx15, align 1, !dbg !383
  %tobool16 = icmp ne i8 %27, 0, !dbg !383
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !385

if.then17:                                        ; preds = %for.body8
  store i8 1, i8* %valid, align 1, !dbg !386
  br label %if.end54, !dbg !387

if.else:                                          ; preds = %for.body8
  %28 = load i32, i32* %dest, align 4, !dbg !388
  %call18 = call zeroext i1 @channel_is_rtsi(i32 %28) #5, !dbg !390
  br i1 %call18, label %land.lhs.true, label %if.end53, !dbg !391

land.lhs.true:                                    ; preds = %if.else
  %29 = load i8*, i8** %rv, align 8, !dbg !392
  %30 = load i32, i32* %src, align 4, !dbg !392
  %sub19 = sub i32 %30, 32768, !dbg !392
  %add20 = add i32 43890, %sub19, !dbg !392
  %idxprom21 = zext i32 %add20 to i64, !dbg !392
  %arrayidx22 = getelementptr i8, i8* %29, i64 %idxprom21, !dbg !392
  %31 = load i8, i8* %arrayidx22, align 1, !dbg !392
  %conv = zext i8 %31 to i32, !dbg !392
  %tobool23 = icmp ne i32 %conv, 0, !dbg !392
  br i1 %tobool23, label %if.then52, label %lor.lhs.false24, !dbg !393

lor.lhs.false24:                                  ; preds = %land.lhs.true
  %32 = load i8*, i8** %rv, align 8, !dbg !394
  %33 = load i32, i32* %src, align 4, !dbg !394
  %sub25 = sub i32 %33, 32768, !dbg !394
  %add26 = add i32 15120, %sub25, !dbg !394
  %idxprom27 = zext i32 %add26 to i64, !dbg !394
  %arrayidx28 = getelementptr i8, i8* %32, i64 %idxprom27, !dbg !394
  %34 = load i8, i8* %arrayidx28, align 1, !dbg !394
  %conv29 = zext i8 %34 to i32, !dbg !394
  %tobool30 = icmp ne i32 %conv29, 0, !dbg !394
  br i1 %tobool30, label %if.then52, label %lor.lhs.false31, !dbg !395

lor.lhs.false31:                                  ; preds = %lor.lhs.false24
  %35 = load i8*, i8** %rv, align 8, !dbg !396
  %36 = load i32, i32* %src, align 4, !dbg !396
  %sub32 = sub i32 %36, 32768, !dbg !396
  %add33 = add i32 15330, %sub32, !dbg !396
  %idxprom34 = zext i32 %add33 to i64, !dbg !396
  %arrayidx35 = getelementptr i8, i8* %35, i64 %idxprom34, !dbg !396
  %37 = load i8, i8* %arrayidx35, align 1, !dbg !396
  %conv36 = zext i8 %37 to i32, !dbg !396
  %tobool37 = icmp ne i32 %conv36, 0, !dbg !396
  br i1 %tobool37, label %if.then52, label %lor.lhs.false38, !dbg !397

lor.lhs.false38:                                  ; preds = %lor.lhs.false31
  %38 = load i8*, i8** %rv, align 8, !dbg !398
  %39 = load i32, i32* %src, align 4, !dbg !398
  %sub39 = sub i32 %39, 32768, !dbg !398
  %add40 = add i32 15540, %sub39, !dbg !398
  %idxprom41 = zext i32 %add40 to i64, !dbg !398
  %arrayidx42 = getelementptr i8, i8* %38, i64 %idxprom41, !dbg !398
  %40 = load i8, i8* %arrayidx42, align 1, !dbg !398
  %conv43 = zext i8 %40 to i32, !dbg !398
  %tobool44 = icmp ne i32 %conv43, 0, !dbg !398
  br i1 %tobool44, label %if.then52, label %lor.lhs.false45, !dbg !399

lor.lhs.false45:                                  ; preds = %lor.lhs.false38
  %41 = load i8*, i8** %rv, align 8, !dbg !400
  %42 = load i32, i32* %src, align 4, !dbg !400
  %sub46 = sub i32 %42, 32768, !dbg !400
  %add47 = add i32 15750, %sub46, !dbg !400
  %idxprom48 = zext i32 %add47 to i64, !dbg !400
  %arrayidx49 = getelementptr i8, i8* %41, i64 %idxprom48, !dbg !400
  %43 = load i8, i8* %arrayidx49, align 1, !dbg !400
  %conv50 = zext i8 %43 to i32, !dbg !400
  %tobool51 = icmp ne i32 %conv50, 0, !dbg !400
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !401

if.then52:                                        ; preds = %lor.lhs.false45, %lor.lhs.false38, %lor.lhs.false31, %lor.lhs.false24, %land.lhs.true
  store i8 1, i8* %valid, align 1, !dbg !402
  br label %if.end53, !dbg !404

if.end53:                                         ; preds = %if.then52, %lor.lhs.false45, %if.else
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then17
  %44 = load i8, i8* %valid, align 1, !dbg !405
  %tobool55 = trunc i8 %44 to i1, !dbg !405
  br i1 %tobool55, label %if.then56, label %if.end64, !dbg !407

if.then56:                                        ; preds = %if.end54
  %45 = load i32, i32* %src, align 4, !dbg !408
  %46 = load i32*, i32** %pair_data.addr, align 8, !dbg !410
  %47 = load i32, i32* %n_valid, align 4, !dbg !411
  %mul57 = mul i32 2, %47, !dbg !412
  %idxprom58 = zext i32 %mul57 to i64, !dbg !410
  %arrayidx59 = getelementptr i32, i32* %46, i64 %idxprom58, !dbg !410
  store i32 %45, i32* %arrayidx59, align 4, !dbg !413
  %48 = load i32, i32* %dest, align 4, !dbg !414
  %49 = load i32*, i32** %pair_data.addr, align 8, !dbg !415
  %50 = load i32, i32* %n_valid, align 4, !dbg !416
  %mul60 = mul i32 2, %50, !dbg !417
  %add61 = add i32 %mul60, 1, !dbg !418
  %idxprom62 = zext i32 %add61 to i64, !dbg !415
  %arrayidx63 = getelementptr i32, i32* %49, i64 %idxprom62, !dbg !415
  store i32 %48, i32* %arrayidx63, align 4, !dbg !419
  %51 = load i32, i32* %n_valid, align 4, !dbg !420
  %inc = add i32 %51, 1, !dbg !420
  store i32 %inc, i32* %n_valid, align 4, !dbg !420
  br label %if.end64, !dbg !421

if.end64:                                         ; preds = %if.then56, %if.end54
  %52 = load i32, i32* %n_valid, align 4, !dbg !422
  %53 = load i32, i32* %n_pairs.addr, align 4, !dbg !424
  %cmp65 = icmp uge i32 %52, %53, !dbg !425
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !426

if.then67:                                        ; preds = %if.end64
  %54 = load i32, i32* %n_valid, align 4, !dbg !427
  store i32 %54, i32* %retval, align 4, !dbg !428
  br label %return, !dbg !428

if.end68:                                         ; preds = %if.end64
  br label %for.inc, !dbg !429

for.inc:                                          ; preds = %if.end68
  %55 = load i32, i32* %j, align 4, !dbg !430
  %inc69 = add i32 %55, 1, !dbg !430
  store i32 %inc69, i32* %j, align 4, !dbg !430
  br label %for.cond6, !dbg !431, !llvm.loop !432

for.end:                                          ; preds = %for.cond6
  br label %for.inc70, !dbg !434

for.inc70:                                        ; preds = %for.end
  %56 = load i32, i32* %i, align 4, !dbg !435
  %inc71 = add i32 %56, 1, !dbg !435
  store i32 %inc71, i32* %i, align 4, !dbg !435
  br label %for.cond, !dbg !436, !llvm.loop !437

for.end72:                                        ; preds = %for.cond
  %57 = load i32, i32* %n_valid, align 4, !dbg !439
  store i32 %57, i32* %retval, align 4, !dbg !440
  br label %return, !dbg !440

return:                                           ; preds = %for.end72, %if.then67, %if.then2, %if.then
  %58 = load i32, i32* %retval, align 4, !dbg !441
  ret i32 %58, !dbg !441
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @ni_is_cmd_dest(i32 %dest) #0 !dbg !442 {
entry:
  %retval = alloca i1, align 1
  %dest.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %dest, i32* %dest.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dest.addr, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata i32* %i, metadata !445, metadata !DIExpression()), !dbg !446
  store i32 0, i32* %i, align 4, !dbg !447
  br label %for.cond, !dbg !449

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !450
  %conv = sext i32 %0 to i64, !dbg !450
  %cmp = icmp ult i64 %conv, 7, !dbg !452
  br i1 %cmp, label %for.body, label %for.end, !dbg !453

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !454
  %idxprom = sext i32 %1 to i64, !dbg !456
  %arrayidx = getelementptr [7 x i32], [7 x i32]* @NI_CMD_DESTS, i64 0, i64 %idxprom, !dbg !456
  %2 = load i32, i32* %arrayidx, align 4, !dbg !456
  %3 = load i32, i32* %dest.addr, align 4, !dbg !457
  %cmp2 = icmp eq i32 %2, %3, !dbg !458
  br i1 %cmp2, label %if.then, label %if.end, !dbg !459

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1, !dbg !460
  br label %return, !dbg !460

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !457

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4, !dbg !461
  %inc = add i32 %4, 1, !dbg !461
  store i32 %inc, i32* %i, align 4, !dbg !461
  br label %for.cond, !dbg !462, !llvm.loop !463

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !465
  br label %return, !dbg !465

return:                                           ; preds = %for.end, %if.then
  %5 = load i1, i1* %retval, align 1, !dbg !466
  ret i1 %5, !dbg !466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ni_sort_device_routes(%struct.ni_device_routes* %valid_routes) #0 !dbg !467 {
entry:
  %valid_routes.addr = alloca %struct.ni_device_routes*, align 8
  %n = alloca i32, align 4
  %rs = alloca %struct.ni_route_set*, align 8
  store %struct.ni_device_routes* %valid_routes, %struct.ni_device_routes** %valid_routes.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ni_device_routes** %valid_routes.addr, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata i32* %n, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes.addr, align 8, !dbg !475
  %n_route_sets = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %0, i32 0, i32 1, !dbg !476
  store i32 0, i32* %n_route_sets, align 8, !dbg !477
  br label %while.cond, !dbg !478

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes.addr, align 8, !dbg !479
  %routes = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %1, i32 0, i32 2, !dbg !480
  %2 = load %struct.ni_route_set*, %struct.ni_route_set** %routes, align 8, !dbg !480
  %3 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes.addr, align 8, !dbg !481
  %n_route_sets1 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %3, i32 0, i32 1, !dbg !482
  %4 = load i32, i32* %n_route_sets1, align 8, !dbg !482
  %idxprom = sext i32 %4 to i64, !dbg !479
  %arrayidx = getelementptr %struct.ni_route_set, %struct.ni_route_set* %2, i64 %idxprom, !dbg !479
  %dest = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %arrayidx, i32 0, i32 0, !dbg !483
  %5 = load i32, i32* %dest, align 8, !dbg !483
  %cmp = icmp ne i32 %5, 0, !dbg !484
  br i1 %cmp, label %while.body, label %while.end, !dbg !478

while.body:                                       ; preds = %while.cond
  %6 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes.addr, align 8, !dbg !485
  %n_route_sets2 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %6, i32 0, i32 1, !dbg !486
  %7 = load i32, i32* %n_route_sets2, align 8, !dbg !487
  %inc = add i32 %7, 1, !dbg !487
  store i32 %inc, i32* %n_route_sets2, align 8, !dbg !487
  br label %while.cond, !dbg !478, !llvm.loop !488

while.end:                                        ; preds = %while.cond
  %8 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes.addr, align 8, !dbg !489
  %routes3 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %8, i32 0, i32 2, !dbg !490
  %9 = load %struct.ni_route_set*, %struct.ni_route_set** %routes3, align 8, !dbg !490
  %10 = bitcast %struct.ni_route_set* %9 to i8*, !dbg !489
  %11 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes.addr, align 8, !dbg !491
  %n_route_sets4 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %11, i32 0, i32 1, !dbg !492
  %12 = load i32, i32* %n_route_sets4, align 8, !dbg !492
  %conv = sext i32 %12 to i64, !dbg !491
  call void @sort(i8* %10, i64 %conv, i64 16, i32 (i8*, i8*)* @_ni_sort_destcmp, void (i8*, i8*, i32)* null) #5, !dbg !493
  store i32 0, i32* %n, align 4, !dbg !494
  br label %for.cond, !dbg !496

for.cond:                                         ; preds = %for.inc, %while.end
  %13 = load i32, i32* %n, align 4, !dbg !497
  %14 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes.addr, align 8, !dbg !499
  %n_route_sets5 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %14, i32 0, i32 1, !dbg !500
  %15 = load i32, i32* %n_route_sets5, align 8, !dbg !500
  %cmp6 = icmp ult i32 %13, %15, !dbg !501
  br i1 %cmp6, label %for.body, label %for.end, !dbg !502

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.ni_route_set** %rs, metadata !503, metadata !DIExpression()), !dbg !505
  %16 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes.addr, align 8, !dbg !506
  %routes8 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %16, i32 0, i32 2, !dbg !507
  %17 = load %struct.ni_route_set*, %struct.ni_route_set** %routes8, align 8, !dbg !507
  %18 = load i32, i32* %n, align 4, !dbg !508
  %idxprom9 = zext i32 %18 to i64, !dbg !506
  %arrayidx10 = getelementptr %struct.ni_route_set, %struct.ni_route_set* %17, i64 %idxprom9, !dbg !506
  store %struct.ni_route_set* %arrayidx10, %struct.ni_route_set** %rs, align 8, !dbg !505
  %19 = load %struct.ni_route_set*, %struct.ni_route_set** %rs, align 8, !dbg !509
  %n_src = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %19, i32 0, i32 1, !dbg !510
  store i32 0, i32* %n_src, align 4, !dbg !511
  br label %while.cond11, !dbg !512

while.cond11:                                     ; preds = %while.body15, %for.body
  %20 = load %struct.ni_route_set*, %struct.ni_route_set** %rs, align 8, !dbg !513
  %src = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %20, i32 0, i32 2, !dbg !514
  %21 = load i32*, i32** %src, align 8, !dbg !514
  %22 = load %struct.ni_route_set*, %struct.ni_route_set** %rs, align 8, !dbg !515
  %n_src12 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %22, i32 0, i32 1, !dbg !516
  %23 = load i32, i32* %n_src12, align 4, !dbg !516
  %idxprom13 = sext i32 %23 to i64, !dbg !513
  %arrayidx14 = getelementptr i32, i32* %21, i64 %idxprom13, !dbg !513
  %24 = load i32, i32* %arrayidx14, align 4, !dbg !513
  %tobool = icmp ne i32 %24, 0, !dbg !512
  br i1 %tobool, label %while.body15, label %while.end18, !dbg !512

while.body15:                                     ; preds = %while.cond11
  %25 = load %struct.ni_route_set*, %struct.ni_route_set** %rs, align 8, !dbg !517
  %n_src16 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %25, i32 0, i32 1, !dbg !518
  %26 = load i32, i32* %n_src16, align 4, !dbg !519
  %inc17 = add i32 %26, 1, !dbg !519
  store i32 %inc17, i32* %n_src16, align 4, !dbg !519
  br label %while.cond11, !dbg !512, !llvm.loop !520

while.end18:                                      ; preds = %while.cond11
  %27 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes.addr, align 8, !dbg !521
  %routes19 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %27, i32 0, i32 2, !dbg !522
  %28 = load %struct.ni_route_set*, %struct.ni_route_set** %routes19, align 8, !dbg !522
  %29 = load i32, i32* %n, align 4, !dbg !523
  %idxprom20 = zext i32 %29 to i64, !dbg !521
  %arrayidx21 = getelementptr %struct.ni_route_set, %struct.ni_route_set* %28, i64 %idxprom20, !dbg !521
  %src22 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %arrayidx21, i32 0, i32 2, !dbg !524
  %30 = load i32*, i32** %src22, align 8, !dbg !524
  %31 = bitcast i32* %30 to i8*, !dbg !521
  %32 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes.addr, align 8, !dbg !525
  %routes23 = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %32, i32 0, i32 2, !dbg !526
  %33 = load %struct.ni_route_set*, %struct.ni_route_set** %routes23, align 8, !dbg !526
  %34 = load i32, i32* %n, align 4, !dbg !527
  %idxprom24 = zext i32 %34 to i64, !dbg !525
  %arrayidx25 = getelementptr %struct.ni_route_set, %struct.ni_route_set* %33, i64 %idxprom24, !dbg !525
  %n_src26 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %arrayidx25, i32 0, i32 1, !dbg !528
  %35 = load i32, i32* %n_src26, align 4, !dbg !528
  %conv27 = sext i32 %35 to i64, !dbg !525
  call void @sort(i8* %31, i64 %conv27, i64 4, i32 (i8*, i8*)* @_ni_sort_srccmp, void (i8*, i8*, i32)* null) #5, !dbg !529
  br label %for.inc, !dbg !530

for.inc:                                          ; preds = %while.end18
  %36 = load i32, i32* %n, align 4, !dbg !531
  %inc28 = add i32 %36, 1, !dbg !531
  store i32 %inc28, i32* %n, align 4, !dbg !531
  br label %for.cond, !dbg !532, !llvm.loop !533

for.end:                                          ; preds = %for.cond
  ret void, !dbg !535
}

; Function Attrs: noredzone
declare dso_local void @sort(i8*, i64, i64, i32 (i8*, i8*)*, void (i8*, i8*, i32)*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_ni_sort_destcmp(i8* %va, i8* %vb) #0 !dbg !536 {
entry:
  %retval = alloca i32, align 4
  %va.addr = alloca i8*, align 8
  %vb.addr = alloca i8*, align 8
  %a = alloca %struct.ni_route_set*, align 8
  %b = alloca %struct.ni_route_set*, align 8
  store i8* %va, i8** %va.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %va.addr, metadata !541, metadata !DIExpression()), !dbg !542
  store i8* %vb, i8** %vb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vb.addr, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata %struct.ni_route_set** %a, metadata !545, metadata !DIExpression()), !dbg !546
  %0 = load i8*, i8** %va.addr, align 8, !dbg !547
  %1 = bitcast i8* %0 to %struct.ni_route_set*, !dbg !547
  store %struct.ni_route_set* %1, %struct.ni_route_set** %a, align 8, !dbg !546
  call void @llvm.dbg.declare(metadata %struct.ni_route_set** %b, metadata !548, metadata !DIExpression()), !dbg !549
  %2 = load i8*, i8** %vb.addr, align 8, !dbg !550
  %3 = bitcast i8* %2 to %struct.ni_route_set*, !dbg !550
  store %struct.ni_route_set* %3, %struct.ni_route_set** %b, align 8, !dbg !549
  %4 = load %struct.ni_route_set*, %struct.ni_route_set** %a, align 8, !dbg !551
  %dest = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %4, i32 0, i32 0, !dbg !553
  %5 = load i32, i32* %dest, align 8, !dbg !553
  %6 = load %struct.ni_route_set*, %struct.ni_route_set** %b, align 8, !dbg !554
  %dest1 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %6, i32 0, i32 0, !dbg !555
  %7 = load i32, i32* %dest1, align 8, !dbg !555
  %cmp = icmp slt i32 %5, %7, !dbg !556
  br i1 %cmp, label %if.then, label %if.else, !dbg !557

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !558
  br label %return, !dbg !558

if.else:                                          ; preds = %entry
  %8 = load %struct.ni_route_set*, %struct.ni_route_set** %a, align 8, !dbg !559
  %dest2 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %8, i32 0, i32 0, !dbg !561
  %9 = load i32, i32* %dest2, align 8, !dbg !561
  %10 = load %struct.ni_route_set*, %struct.ni_route_set** %b, align 8, !dbg !562
  %dest3 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %10, i32 0, i32 0, !dbg !563
  %11 = load i32, i32* %dest3, align 8, !dbg !563
  %cmp4 = icmp sgt i32 %9, %11, !dbg !564
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !565

if.then5:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !566
  br label %return, !dbg !566

if.end:                                           ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !567
  br label %return, !dbg !567

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !568
  ret i32 %12, !dbg !568
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_ni_sort_srccmp(i8* %vsrc0, i8* %vsrc1) #0 !dbg !569 {
entry:
  %retval = alloca i32, align 4
  %vsrc0.addr = alloca i8*, align 8
  %vsrc1.addr = alloca i8*, align 8
  %src0 = alloca i32*, align 8
  %src1 = alloca i32*, align 8
  store i8* %vsrc0, i8** %vsrc0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vsrc0.addr, metadata !570, metadata !DIExpression()), !dbg !571
  store i8* %vsrc1, i8** %vsrc1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vsrc1.addr, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata i32** %src0, metadata !574, metadata !DIExpression()), !dbg !576
  %0 = load i8*, i8** %vsrc0.addr, align 8, !dbg !577
  %1 = bitcast i8* %0 to i32*, !dbg !577
  store i32* %1, i32** %src0, align 8, !dbg !576
  call void @llvm.dbg.declare(metadata i32** %src1, metadata !578, metadata !DIExpression()), !dbg !579
  %2 = load i8*, i8** %vsrc1.addr, align 8, !dbg !580
  %3 = bitcast i8* %2 to i32*, !dbg !580
  store i32* %3, i32** %src1, align 8, !dbg !579
  %4 = load i32*, i32** %src0, align 8, !dbg !581
  %5 = load i32, i32* %4, align 4, !dbg !583
  %6 = load i32*, i32** %src1, align 8, !dbg !584
  %7 = load i32, i32* %6, align 4, !dbg !585
  %cmp = icmp slt i32 %5, %7, !dbg !586
  br i1 %cmp, label %if.then, label %if.else, !dbg !587

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !588
  br label %return, !dbg !588

if.else:                                          ; preds = %entry
  %8 = load i32*, i32** %src0, align 8, !dbg !589
  %9 = load i32, i32* %8, align 4, !dbg !591
  %10 = load i32*, i32** %src1, align 8, !dbg !592
  %11 = load i32, i32* %10, align 4, !dbg !593
  %cmp1 = icmp sgt i32 %9, %11, !dbg !594
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !595

if.then2:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !596
  br label %return, !dbg !596

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !597
  br label %return, !dbg !597

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !598
  ret i32 %12, !dbg !598
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.ni_route_set* @ni_find_route_set(i32 %destination, %struct.ni_device_routes* %valid_routes) #0 !dbg !599 {
entry:
  %destination.addr = alloca i32, align 4
  %valid_routes.addr = alloca %struct.ni_device_routes*, align 8
  store i32 %destination, i32* %destination.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %destination.addr, metadata !602, metadata !DIExpression()), !dbg !603
  store %struct.ni_device_routes* %valid_routes, %struct.ni_device_routes** %valid_routes.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ni_device_routes** %valid_routes.addr, metadata !604, metadata !DIExpression()), !dbg !605
  %0 = bitcast i32* %destination.addr to i8*, !dbg !606
  %1 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes.addr, align 8, !dbg !607
  %routes = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %1, i32 0, i32 2, !dbg !608
  %2 = load %struct.ni_route_set*, %struct.ni_route_set** %routes, align 8, !dbg !608
  %3 = bitcast %struct.ni_route_set* %2 to i8*, !dbg !607
  %4 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes.addr, align 8, !dbg !609
  %n_route_sets = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %4, i32 0, i32 1, !dbg !610
  %5 = load i32, i32* %n_route_sets, align 8, !dbg !610
  %conv = sext i32 %5 to i64, !dbg !609
  %call = call i8* @bsearch(i8* %0, i8* %3, i64 %conv, i64 16, i32 (i8*, i8*)* @_ni_bsearch_destcmp) #5, !dbg !611
  %6 = bitcast i8* %call to %struct.ni_route_set*, !dbg !611
  ret %struct.ni_route_set* %6, !dbg !612
}

; Function Attrs: noredzone
declare dso_local i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_ni_bsearch_destcmp(i8* %vkey, i8* %velt) #0 !dbg !613 {
entry:
  %retval = alloca i32, align 4
  %vkey.addr = alloca i8*, align 8
  %velt.addr = alloca i8*, align 8
  %key = alloca i32*, align 8
  %elt = alloca %struct.ni_route_set*, align 8
  store i8* %vkey, i8** %vkey.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vkey.addr, metadata !614, metadata !DIExpression()), !dbg !615
  store i8* %velt, i8** %velt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %velt.addr, metadata !616, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.declare(metadata i32** %key, metadata !618, metadata !DIExpression()), !dbg !619
  %0 = load i8*, i8** %vkey.addr, align 8, !dbg !620
  %1 = bitcast i8* %0 to i32*, !dbg !620
  store i32* %1, i32** %key, align 8, !dbg !619
  call void @llvm.dbg.declare(metadata %struct.ni_route_set** %elt, metadata !621, metadata !DIExpression()), !dbg !622
  %2 = load i8*, i8** %velt.addr, align 8, !dbg !623
  %3 = bitcast i8* %2 to %struct.ni_route_set*, !dbg !623
  store %struct.ni_route_set* %3, %struct.ni_route_set** %elt, align 8, !dbg !622
  %4 = load i32*, i32** %key, align 8, !dbg !624
  %5 = load i32, i32* %4, align 4, !dbg !626
  %6 = load %struct.ni_route_set*, %struct.ni_route_set** %elt, align 8, !dbg !627
  %dest = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %6, i32 0, i32 0, !dbg !628
  %7 = load i32, i32* %dest, align 8, !dbg !628
  %cmp = icmp slt i32 %5, %7, !dbg !629
  br i1 %cmp, label %if.then, label %if.else, !dbg !630

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !631
  br label %return, !dbg !631

if.else:                                          ; preds = %entry
  %8 = load i32*, i32** %key, align 8, !dbg !632
  %9 = load i32, i32* %8, align 4, !dbg !634
  %10 = load %struct.ni_route_set*, %struct.ni_route_set** %elt, align 8, !dbg !635
  %dest1 = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %10, i32 0, i32 0, !dbg !636
  %11 = load i32, i32* %dest1, align 8, !dbg !636
  %cmp2 = icmp sgt i32 %9, %11, !dbg !637
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !638

if.then3:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !639
  br label %return, !dbg !639

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !640
  br label %return, !dbg !640

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !641
  ret i32 %12, !dbg !641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @ni_route_set_has_source(%struct.ni_route_set* %routes, i32 %source) #0 !dbg !642 {
entry:
  %retval = alloca i1, align 1
  %routes.addr = alloca %struct.ni_route_set*, align 8
  %source.addr = alloca i32, align 4
  store %struct.ni_route_set* %routes, %struct.ni_route_set** %routes.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ni_route_set** %routes.addr, metadata !645, metadata !DIExpression()), !dbg !646
  store i32 %source, i32* %source.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %source.addr, metadata !647, metadata !DIExpression()), !dbg !648
  %0 = bitcast i32* %source.addr to i8*, !dbg !649
  %1 = load %struct.ni_route_set*, %struct.ni_route_set** %routes.addr, align 8, !dbg !651
  %src = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %1, i32 0, i32 2, !dbg !652
  %2 = load i32*, i32** %src, align 8, !dbg !652
  %3 = bitcast i32* %2 to i8*, !dbg !651
  %4 = load %struct.ni_route_set*, %struct.ni_route_set** %routes.addr, align 8, !dbg !653
  %n_src = getelementptr inbounds %struct.ni_route_set, %struct.ni_route_set* %4, i32 0, i32 1, !dbg !654
  %5 = load i32, i32* %n_src, align 4, !dbg !654
  %conv = sext i32 %5 to i64, !dbg !653
  %call = call i8* @bsearch(i8* %0, i8* %3, i64 %conv, i64 4, i32 (i8*, i8*)* @_ni_bsearch_srccmp) #5, !dbg !655
  %tobool = icmp ne i8* %call, null, !dbg !655
  br i1 %tobool, label %if.end, label %if.then, !dbg !656

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !657
  br label %return, !dbg !657

if.end:                                           ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !658
  br label %return, !dbg !658

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, i1* %retval, align 1, !dbg !659
  ret i1 %6, !dbg !659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_ni_bsearch_srccmp(i8* %vkey, i8* %velt) #0 !dbg !660 {
entry:
  %retval = alloca i32, align 4
  %vkey.addr = alloca i8*, align 8
  %velt.addr = alloca i8*, align 8
  %key = alloca i32*, align 8
  %elt = alloca i32*, align 8
  store i8* %vkey, i8** %vkey.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %vkey.addr, metadata !661, metadata !DIExpression()), !dbg !662
  store i8* %velt, i8** %velt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %velt.addr, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.declare(metadata i32** %key, metadata !665, metadata !DIExpression()), !dbg !666
  %0 = load i8*, i8** %vkey.addr, align 8, !dbg !667
  %1 = bitcast i8* %0 to i32*, !dbg !667
  store i32* %1, i32** %key, align 8, !dbg !666
  call void @llvm.dbg.declare(metadata i32** %elt, metadata !668, metadata !DIExpression()), !dbg !669
  %2 = load i8*, i8** %velt.addr, align 8, !dbg !670
  %3 = bitcast i8* %2 to i32*, !dbg !670
  store i32* %3, i32** %elt, align 8, !dbg !669
  %4 = load i32*, i32** %key, align 8, !dbg !671
  %5 = load i32, i32* %4, align 4, !dbg !673
  %6 = load i32*, i32** %elt, align 8, !dbg !674
  %7 = load i32, i32* %6, align 4, !dbg !675
  %cmp = icmp slt i32 %5, %7, !dbg !676
  br i1 %cmp, label %if.then, label %if.else, !dbg !677

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !678
  br label %return, !dbg !678

if.else:                                          ; preds = %entry
  %8 = load i32*, i32** %key, align 8, !dbg !679
  %9 = load i32, i32* %8, align 4, !dbg !681
  %10 = load i32*, i32** %elt, align 8, !dbg !682
  %11 = load i32, i32* %10, align 4, !dbg !683
  %cmp1 = icmp sgt i32 %9, %11, !dbg !684
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !685

if.then2:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !686
  br label %return, !dbg !686

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !687
  br label %return, !dbg !687

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !688
  ret i32 %12, !dbg !688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local signext i8 @ni_lookup_route_register(i32 %src, i32 %dest, %struct.ni_route_tables* %tables) #0 !dbg !689 {
entry:
  %retval = alloca i8, align 1
  %src.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %tables.addr = alloca %struct.ni_route_tables*, align 8
  %regval = alloca i8, align 1
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !695, metadata !DIExpression()), !dbg !696
  store i32 %dest, i32* %dest.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dest.addr, metadata !697, metadata !DIExpression()), !dbg !698
  store %struct.ni_route_tables* %tables, %struct.ni_route_tables** %tables.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ni_route_tables** %tables.addr, metadata !699, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.declare(metadata i8* %regval, metadata !701, metadata !DIExpression()), !dbg !702
  %0 = load i32, i32* %src.addr, align 4, !dbg !703
  %sub = sub i32 %0, 32768, !dbg !703
  store i32 %sub, i32* %src.addr, align 4, !dbg !704
  %1 = load i32, i32* %dest.addr, align 4, !dbg !705
  %sub1 = sub i32 %1, 32768, !dbg !705
  store i32 %sub1, i32* %dest.addr, align 4, !dbg !706
  %2 = load i32, i32* %src.addr, align 4, !dbg !707
  %cmp = icmp slt i32 %2, 0, !dbg !709
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !710

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %src.addr, align 4, !dbg !711
  %cmp2 = icmp sge i32 %3, 210, !dbg !712
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !713

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %dest.addr, align 4, !dbg !714
  %cmp4 = icmp slt i32 %4, 0, !dbg !715
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !716

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %5 = load i32, i32* %dest.addr, align 4, !dbg !717
  %cmp6 = icmp sge i32 %5, 210, !dbg !718
  br i1 %cmp6, label %if.then, label %if.end, !dbg !719

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  store i8 -22, i8* %retval, align 1, !dbg !720
  br label %return, !dbg !720

if.end:                                           ; preds = %lor.lhs.false5
  %6 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !721
  %route_values = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %6, i32 0, i32 1, !dbg !721
  %7 = load i8*, i8** %route_values, align 8, !dbg !721
  %8 = load i32, i32* %dest.addr, align 4, !dbg !721
  %mul = mul i32 %8, 210, !dbg !721
  %9 = load i32, i32* %src.addr, align 4, !dbg !721
  %add = add i32 %mul, %9, !dbg !721
  %idxprom = sext i32 %add to i64, !dbg !721
  %arrayidx = getelementptr i8, i8* %7, i64 %idxprom, !dbg !721
  %10 = load i8, i8* %arrayidx, align 1, !dbg !721
  store i8 %10, i8* %regval, align 1, !dbg !722
  %11 = load i8, i8* %regval, align 1, !dbg !723
  %tobool = icmp ne i8 %11, 0, !dbg !723
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !725

if.then7:                                         ; preds = %if.end
  store i8 -22, i8* %retval, align 1, !dbg !726
  br label %return, !dbg !726

if.end8:                                          ; preds = %if.end
  %12 = load i8, i8* %regval, align 1, !dbg !727
  %conv = sext i8 %12 to i32, !dbg !727
  %and = and i32 %conv, 127, !dbg !727
  %conv9 = trunc i32 %and to i8, !dbg !727
  store i8 %conv9, i8* %retval, align 1, !dbg !728
  br label %return, !dbg !728

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %13 = load i8, i8* %retval, align 1, !dbg !729
  ret i8 %13, !dbg !729
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local signext i8 @ni_route_to_register(i32 %src, i32 %dest, %struct.ni_route_tables* %tables) #0 !dbg !730 {
entry:
  %retval = alloca i8, align 1
  %src.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %tables.addr = alloca %struct.ni_route_tables*, align 8
  %routes = alloca %struct.ni_route_set*, align 8
  %rv = alloca i8*, align 8
  %regval = alloca i8, align 1
  store i32 %src, i32* %src.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %src.addr, metadata !733, metadata !DIExpression()), !dbg !734
  store i32 %dest, i32* %dest.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dest.addr, metadata !735, metadata !DIExpression()), !dbg !736
  store %struct.ni_route_tables* %tables, %struct.ni_route_tables** %tables.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ni_route_tables** %tables.addr, metadata !737, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.declare(metadata %struct.ni_route_set** %routes, metadata !739, metadata !DIExpression()), !dbg !740
  %0 = load i32, i32* %dest.addr, align 4, !dbg !741
  %1 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !742
  %valid_routes = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %1, i32 0, i32 0, !dbg !743
  %2 = load %struct.ni_device_routes*, %struct.ni_device_routes** %valid_routes, align 8, !dbg !743
  %call = call %struct.ni_route_set* @ni_find_route_set(i32 %0, %struct.ni_device_routes* %2) #5, !dbg !744
  store %struct.ni_route_set* %call, %struct.ni_route_set** %routes, align 8, !dbg !740
  call void @llvm.dbg.declare(metadata i8** %rv, metadata !745, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.declare(metadata i8* %regval, metadata !747, metadata !DIExpression()), !dbg !748
  %3 = load %struct.ni_route_set*, %struct.ni_route_set** %routes, align 8, !dbg !749
  %tobool = icmp ne %struct.ni_route_set* %3, null, !dbg !749
  br i1 %tobool, label %if.end, label %if.then, !dbg !751

if.then:                                          ; preds = %entry
  store i8 -1, i8* %retval, align 1, !dbg !752
  br label %return, !dbg !752

if.end:                                           ; preds = %entry
  %4 = load %struct.ni_route_set*, %struct.ni_route_set** %routes, align 8, !dbg !753
  %5 = load i32, i32* %src.addr, align 4, !dbg !755
  %call1 = call zeroext i1 @ni_route_set_has_source(%struct.ni_route_set* %4, i32 %5) #5, !dbg !756
  br i1 %call1, label %if.end3, label %if.then2, !dbg !757

if.then2:                                         ; preds = %if.end
  store i8 -1, i8* %retval, align 1, !dbg !758
  br label %return, !dbg !758

if.end3:                                          ; preds = %if.end
  %6 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !759
  %route_values = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %6, i32 0, i32 1, !dbg !760
  %7 = load i8*, i8** %route_values, align 8, !dbg !760
  store i8* %7, i8** %rv, align 8, !dbg !761
  %8 = load i8*, i8** %rv, align 8, !dbg !762
  %9 = load i32, i32* %dest.addr, align 4, !dbg !762
  %sub = sub i32 %9, 32768, !dbg !762
  %mul = mul i32 %sub, 210, !dbg !762
  %10 = load i32, i32* %src.addr, align 4, !dbg !762
  %sub4 = sub i32 %10, 32768, !dbg !762
  %add = add i32 %mul, %sub4, !dbg !762
  %idxprom = zext i32 %add to i64, !dbg !762
  %arrayidx = getelementptr i8, i8* %8, i64 %idxprom, !dbg !762
  %11 = load i8, i8* %arrayidx, align 1, !dbg !762
  store i8 %11, i8* %regval, align 1, !dbg !763
  %12 = load i8, i8* %regval, align 1, !dbg !764
  %tobool5 = icmp ne i8 %12, 0, !dbg !764
  br i1 %tobool5, label %if.end41, label %land.lhs.true, !dbg !766

land.lhs.true:                                    ; preds = %if.end3
  %13 = load i32, i32* %dest.addr, align 4, !dbg !767
  %call6 = call zeroext i1 @channel_is_rtsi(i32 %13) #5, !dbg !768
  br i1 %call6, label %if.then7, label %if.end41, !dbg !769

if.then7:                                         ; preds = %land.lhs.true
  %14 = load i8*, i8** %rv, align 8, !dbg !770
  %15 = load i32, i32* %src.addr, align 4, !dbg !770
  %sub8 = sub i32 %15, 32768, !dbg !770
  %add9 = add i32 43890, %sub8, !dbg !770
  %idxprom10 = zext i32 %add9 to i64, !dbg !770
  %arrayidx11 = getelementptr i8, i8* %14, i64 %idxprom10, !dbg !770
  %16 = load i8, i8* %arrayidx11, align 1, !dbg !770
  store i8 %16, i8* %regval, align 1, !dbg !772
  %17 = load i8, i8* %regval, align 1, !dbg !773
  %tobool12 = icmp ne i8 %17, 0, !dbg !773
  br i1 %tobool12, label %if.end40, label %land.lhs.true13, !dbg !775

land.lhs.true13:                                  ; preds = %if.then7
  %18 = load i8*, i8** %rv, align 8, !dbg !776
  %19 = load i32, i32* %src.addr, align 4, !dbg !776
  %sub14 = sub i32 %19, 32768, !dbg !776
  %add15 = add i32 15120, %sub14, !dbg !776
  %idxprom16 = zext i32 %add15 to i64, !dbg !776
  %arrayidx17 = getelementptr i8, i8* %18, i64 %idxprom16, !dbg !776
  %20 = load i8, i8* %arrayidx17, align 1, !dbg !776
  %conv = zext i8 %20 to i32, !dbg !776
  %tobool18 = icmp ne i32 %conv, 0, !dbg !776
  br i1 %tobool18, label %if.then39, label %lor.lhs.false, !dbg !777

lor.lhs.false:                                    ; preds = %land.lhs.true13
  %21 = load i8*, i8** %rv, align 8, !dbg !778
  %22 = load i32, i32* %src.addr, align 4, !dbg !778
  %sub19 = sub i32 %22, 32768, !dbg !778
  %add20 = add i32 15330, %sub19, !dbg !778
  %idxprom21 = zext i32 %add20 to i64, !dbg !778
  %arrayidx22 = getelementptr i8, i8* %21, i64 %idxprom21, !dbg !778
  %23 = load i8, i8* %arrayidx22, align 1, !dbg !778
  %conv23 = zext i8 %23 to i32, !dbg !778
  %tobool24 = icmp ne i32 %conv23, 0, !dbg !778
  br i1 %tobool24, label %if.then39, label %lor.lhs.false25, !dbg !779

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %24 = load i8*, i8** %rv, align 8, !dbg !780
  %25 = load i32, i32* %src.addr, align 4, !dbg !780
  %sub26 = sub i32 %25, 32768, !dbg !780
  %add27 = add i32 15540, %sub26, !dbg !780
  %idxprom28 = zext i32 %add27 to i64, !dbg !780
  %arrayidx29 = getelementptr i8, i8* %24, i64 %idxprom28, !dbg !780
  %26 = load i8, i8* %arrayidx29, align 1, !dbg !780
  %conv30 = zext i8 %26 to i32, !dbg !780
  %tobool31 = icmp ne i32 %conv30, 0, !dbg !780
  br i1 %tobool31, label %if.then39, label %lor.lhs.false32, !dbg !781

lor.lhs.false32:                                  ; preds = %lor.lhs.false25
  %27 = load i8*, i8** %rv, align 8, !dbg !782
  %28 = load i32, i32* %src.addr, align 4, !dbg !782
  %sub33 = sub i32 %28, 32768, !dbg !782
  %add34 = add i32 15750, %sub33, !dbg !782
  %idxprom35 = zext i32 %add34 to i64, !dbg !782
  %arrayidx36 = getelementptr i8, i8* %27, i64 %idxprom35, !dbg !782
  %29 = load i8, i8* %arrayidx36, align 1, !dbg !782
  %conv37 = zext i8 %29 to i32, !dbg !782
  %tobool38 = icmp ne i32 %conv37, 0, !dbg !782
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !783

if.then39:                                        ; preds = %lor.lhs.false32, %lor.lhs.false25, %lor.lhs.false, %land.lhs.true13
  store i8 64, i8* %regval, align 1, !dbg !784
  br label %if.end40, !dbg !785

if.end40:                                         ; preds = %if.then39, %lor.lhs.false32, %if.then7
  br label %if.end41, !dbg !786

if.end41:                                         ; preds = %if.end40, %land.lhs.true, %if.end3
  %30 = load i8, i8* %regval, align 1, !dbg !787
  %tobool42 = icmp ne i8 %30, 0, !dbg !787
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !789

if.then43:                                        ; preds = %if.end41
  store i8 -1, i8* %retval, align 1, !dbg !790
  br label %return, !dbg !790

if.end44:                                         ; preds = %if.end41
  %31 = load i8, i8* %regval, align 1, !dbg !791
  %conv45 = sext i8 %31 to i32, !dbg !791
  %and = and i32 %conv45, 127, !dbg !791
  %conv46 = trunc i32 %and to i8, !dbg !791
  store i8 %conv46, i8* %retval, align 1, !dbg !792
  br label %return, !dbg !792

return:                                           ; preds = %if.end44, %if.then43, %if.then2, %if.then
  %32 = load i8, i8* %retval, align 1, !dbg !793
  ret i8 %32, !dbg !793
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ni_find_route_source(i8 zeroext %src_sel_reg_value, i32 %dest, %struct.ni_route_tables* %tables) #0 !dbg !794 {
entry:
  %retval = alloca i32, align 4
  %src_sel_reg_value.addr = alloca i8, align 1
  %dest.addr = alloca i32, align 4
  %tables.addr = alloca %struct.ni_route_tables*, align 8
  %src = alloca i32, align 4
  store i8 %src_sel_reg_value, i8* %src_sel_reg_value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %src_sel_reg_value.addr, metadata !797, metadata !DIExpression()), !dbg !798
  store i32 %dest, i32* %dest.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dest.addr, metadata !799, metadata !DIExpression()), !dbg !800
  store %struct.ni_route_tables* %tables, %struct.ni_route_tables** %tables.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ni_route_tables** %tables.addr, metadata !801, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.declare(metadata i32* %src, metadata !803, metadata !DIExpression()), !dbg !804
  %0 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !805
  %route_values = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %0, i32 0, i32 1, !dbg !807
  %1 = load i8*, i8** %route_values, align 8, !dbg !807
  %tobool = icmp ne i8* %1, null, !dbg !805
  br i1 %tobool, label %if.end, label %if.then, !dbg !808

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !809
  br label %return, !dbg !809

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %dest.addr, align 4, !dbg !810
  %sub = sub i32 %2, 32768, !dbg !810
  store i32 %sub, i32* %dest.addr, align 4, !dbg !811
  %3 = load i32, i32* %dest.addr, align 4, !dbg !812
  %cmp = icmp slt i32 %3, 0, !dbg !814
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !815

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %dest.addr, align 4, !dbg !816
  %cmp1 = icmp sge i32 %4, 210, !dbg !817
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !818

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !819
  br label %return, !dbg !819

if.end3:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %src, align 4, !dbg !820
  br label %for.cond, !dbg !822

for.cond:                                         ; preds = %for.inc, %if.end3
  %5 = load i32, i32* %src, align 4, !dbg !823
  %cmp4 = icmp slt i32 %5, 210, !dbg !825
  br i1 %cmp4, label %for.body, label %for.end, !dbg !826

for.body:                                         ; preds = %for.cond
  %6 = load %struct.ni_route_tables*, %struct.ni_route_tables** %tables.addr, align 8, !dbg !827
  %route_values5 = getelementptr inbounds %struct.ni_route_tables, %struct.ni_route_tables* %6, i32 0, i32 1, !dbg !827
  %7 = load i8*, i8** %route_values5, align 8, !dbg !827
  %8 = load i32, i32* %dest.addr, align 4, !dbg !827
  %mul = mul i32 %8, 210, !dbg !827
  %9 = load i32, i32* %src, align 4, !dbg !827
  %add = add i32 %mul, %9, !dbg !827
  %idxprom = sext i32 %add to i64, !dbg !827
  %arrayidx = getelementptr i8, i8* %7, i64 %idxprom, !dbg !827
  %10 = load i8, i8* %arrayidx, align 1, !dbg !827
  %conv = zext i8 %10 to i32, !dbg !827
  %11 = load i8, i8* %src_sel_reg_value.addr, align 1, !dbg !829
  %conv6 = zext i8 %11 to i32, !dbg !829
  %and = and i32 %conv6, 127, !dbg !829
  %or = or i32 %and, 128, !dbg !829
  %cmp7 = icmp eq i32 %conv, %or, !dbg !830
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !831

if.then9:                                         ; preds = %for.body
  %12 = load i32, i32* %src, align 4, !dbg !832
  %add10 = add i32 %12, 32768, !dbg !833
  store i32 %add10, i32* %retval, align 4, !dbg !834
  br label %return, !dbg !834

if.end11:                                         ; preds = %for.body
  br label %for.inc, !dbg !829

for.inc:                                          ; preds = %if.end11
  %13 = load i32, i32* %src, align 4, !dbg !835
  %inc = add i32 %13, 1, !dbg !835
  store i32 %inc, i32* %src, align 4, !dbg !835
  br label %for.cond, !dbg !836, !llvm.loop !837

for.end:                                          ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !839
  br label %return, !dbg !839

return:                                           ; preds = %for.end, %if.then9, %if.then2, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !840
  ret i32 %14, !dbg !840
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ni_routes_module_exit() #4 section ".exit.text" !dbg !841 {
entry:
  ret void, !dbg !842
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ni_routes_module_init() #4 section ".init.text" !dbg !843 {
entry:
  call void @ni_sort_all_device_routes() #5, !dbg !845
  ret i32 0, !dbg !846
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ni_find_route_values(i8* %device_family) #0 !dbg !847 {
entry:
  %device_family.addr = alloca i8*, align 8
  %rv = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %device_family, i8** %device_family.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device_family.addr, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.declare(metadata i8** %rv, metadata !852, metadata !DIExpression()), !dbg !853
  store i8* null, i8** %rv, align 8, !dbg !853
  call void @llvm.dbg.declare(metadata i32* %i, metadata !854, metadata !DIExpression()), !dbg !855
  store i32 0, i32* %i, align 4, !dbg !856
  br label %for.cond, !dbg !858

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !859
  %idxprom = sext i32 %0 to i64, !dbg !861
  %arrayidx = getelementptr [0 x %struct.family_route_values*], [0 x %struct.family_route_values*]* @ni_all_route_values, i64 0, i64 %idxprom, !dbg !861
  %1 = load %struct.family_route_values*, %struct.family_route_values** %arrayidx, align 8, !dbg !861
  %tobool = icmp ne %struct.family_route_values* %1, null, !dbg !862
  br i1 %tobool, label %for.body, label %for.end, !dbg !862

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !863
  %idxprom1 = sext i32 %2 to i64, !dbg !866
  %arrayidx2 = getelementptr [0 x %struct.family_route_values*], [0 x %struct.family_route_values*]* @ni_all_route_values, i64 0, i64 %idxprom1, !dbg !866
  %3 = load %struct.family_route_values*, %struct.family_route_values** %arrayidx2, align 8, !dbg !866
  %family = getelementptr inbounds %struct.family_route_values, %struct.family_route_values* %3, i32 0, i32 0, !dbg !867
  %4 = load i8*, i8** %family, align 8, !dbg !867
  %5 = load i8*, i8** %device_family.addr, align 8, !dbg !868
  %6 = load i8*, i8** %device_family.addr, align 8, !dbg !869
  %call = call i64 @strnlen(i8* %6, i64 30) #5, !dbg !870
  %call3 = call i32 @memcmp(i8* %4, i8* %5, i64 %call) #5, !dbg !871
  %cmp = icmp eq i32 %call3, 0, !dbg !872
  br i1 %cmp, label %if.then, label %if.end, !dbg !873

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !874
  %idxprom4 = sext i32 %7 to i64, !dbg !876
  %arrayidx5 = getelementptr [0 x %struct.family_route_values*], [0 x %struct.family_route_values*]* @ni_all_route_values, i64 0, i64 %idxprom4, !dbg !876
  %8 = load %struct.family_route_values*, %struct.family_route_values** %arrayidx5, align 8, !dbg !876
  %register_values = getelementptr inbounds %struct.family_route_values, %struct.family_route_values* %8, i32 0, i32 1, !dbg !877
  %arrayidx6 = getelementptr [210 x [210 x i8]], [210 x [210 x i8]]* %register_values, i64 0, i64 0, !dbg !876
  %arrayidx7 = getelementptr [210 x i8], [210 x i8]* %arrayidx6, i64 0, i64 0, !dbg !876
  store i8* %arrayidx7, i8** %rv, align 8, !dbg !878
  br label %for.end, !dbg !879

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !880

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !881
  %inc = add i32 %9, 1, !dbg !881
  store i32 %inc, i32* %i, align 4, !dbg !881
  br label %for.cond, !dbg !882, !llvm.loop !883

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load i8*, i8** %rv, align 8, !dbg !885
  ret i8* %10, !dbg !886
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.ni_device_routes* @ni_find_valid_routes(i8* %board_name) #0 !dbg !887 {
entry:
  %board_name.addr = alloca i8*, align 8
  %dr = alloca %struct.ni_device_routes*, align 8
  %i = alloca i32, align 4
  store i8* %board_name, i8** %board_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %board_name.addr, metadata !890, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.declare(metadata %struct.ni_device_routes** %dr, metadata !892, metadata !DIExpression()), !dbg !893
  store %struct.ni_device_routes* null, %struct.ni_device_routes** %dr, align 8, !dbg !893
  call void @llvm.dbg.declare(metadata i32* %i, metadata !894, metadata !DIExpression()), !dbg !895
  store i32 0, i32* %i, align 4, !dbg !896
  br label %for.cond, !dbg !898

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !899
  %idxprom = sext i32 %0 to i64, !dbg !901
  %arrayidx = getelementptr [0 x %struct.ni_device_routes*], [0 x %struct.ni_device_routes*]* @ni_device_routes_list, i64 0, i64 %idxprom, !dbg !901
  %1 = load %struct.ni_device_routes*, %struct.ni_device_routes** %arrayidx, align 8, !dbg !901
  %tobool = icmp ne %struct.ni_device_routes* %1, null, !dbg !902
  br i1 %tobool, label %for.body, label %for.end, !dbg !902

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !903
  %idxprom1 = sext i32 %2 to i64, !dbg !906
  %arrayidx2 = getelementptr [0 x %struct.ni_device_routes*], [0 x %struct.ni_device_routes*]* @ni_device_routes_list, i64 0, i64 %idxprom1, !dbg !906
  %3 = load %struct.ni_device_routes*, %struct.ni_device_routes** %arrayidx2, align 8, !dbg !906
  %device = getelementptr inbounds %struct.ni_device_routes, %struct.ni_device_routes* %3, i32 0, i32 0, !dbg !907
  %4 = load i8*, i8** %device, align 8, !dbg !907
  %5 = load i8*, i8** %board_name.addr, align 8, !dbg !908
  %6 = load i8*, i8** %board_name.addr, align 8, !dbg !909
  %call = call i64 @strnlen(i8* %6, i64 30) #5, !dbg !910
  %call3 = call i32 @memcmp(i8* %4, i8* %5, i64 %call) #5, !dbg !911
  %cmp = icmp eq i32 %call3, 0, !dbg !912
  br i1 %cmp, label %if.then, label %if.end, !dbg !913

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !914
  %idxprom4 = sext i32 %7 to i64, !dbg !916
  %arrayidx5 = getelementptr [0 x %struct.ni_device_routes*], [0 x %struct.ni_device_routes*]* @ni_device_routes_list, i64 0, i64 %idxprom4, !dbg !916
  %8 = load %struct.ni_device_routes*, %struct.ni_device_routes** %arrayidx5, align 8, !dbg !916
  store %struct.ni_device_routes* %8, %struct.ni_device_routes** %dr, align 8, !dbg !917
  br label %for.end, !dbg !918

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !919

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !920
  %inc = add i32 %9, 1, !dbg !920
  store i32 %inc, i32* %i, align 4, !dbg !920
  br label %for.cond, !dbg !921, !llvm.loop !922

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load %struct.ni_device_routes*, %struct.ni_device_routes** %dr, align 8, !dbg !924
  ret %struct.ni_device_routes* %10, !dbg !925
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: noredzone
declare dso_local i64 @strnlen(i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ni_sort_all_device_routes() #0 !dbg !926 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !927, metadata !DIExpression()), !dbg !928
  store i32 0, i32* %i, align 4, !dbg !929
  br label %for.cond, !dbg !931

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !932
  %idxprom = zext i32 %0 to i64, !dbg !934
  %arrayidx = getelementptr [0 x %struct.ni_device_routes*], [0 x %struct.ni_device_routes*]* @ni_device_routes_list, i64 0, i64 %idxprom, !dbg !934
  %1 = load %struct.ni_device_routes*, %struct.ni_device_routes** %arrayidx, align 8, !dbg !934
  %tobool = icmp ne %struct.ni_device_routes* %1, null, !dbg !935
  br i1 %tobool, label %for.body, label %for.end, !dbg !935

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !936
  %idxprom1 = zext i32 %2 to i64, !dbg !937
  %arrayidx2 = getelementptr [0 x %struct.ni_device_routes*], [0 x %struct.ni_device_routes*]* @ni_device_routes_list, i64 0, i64 %idxprom1, !dbg !937
  %3 = load %struct.ni_device_routes*, %struct.ni_device_routes** %arrayidx2, align 8, !dbg !937
  call void @ni_sort_device_routes(%struct.ni_device_routes* %3) #5, !dbg !938
  br label %for.inc, !dbg !938

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !939
  %inc = add i32 %4, 1, !dbg !939
  store i32 %inc, i32* %i, align 4, !dbg !939
  br label %for.cond, !dbg !940, !llvm.loop !941

for.end:                                          ; preds = %for.cond
  ret void, !dbg !943
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "NI_CMD_DESTS", scope: !2, file: !3, line: 253, type: !105, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !70, globals: !72, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/ni_routes.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !65}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ni_common_signal_names", file: !6, line: 1041, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/staging/comedi/drivers/ni_routing/../../comedi.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!9 = !DIEnumerator(name: "PXI_Star", value: 32924, isUnsigned: true)
!10 = !DIEnumerator(name: "PXI_Clk10", value: 32925, isUnsigned: true)
!11 = !DIEnumerator(name: "PXIe_Clk100", value: 32926, isUnsigned: true)
!12 = !DIEnumerator(name: "NI_AI_SampleClock", value: 32927, isUnsigned: true)
!13 = !DIEnumerator(name: "NI_AI_SampleClockTimebase", value: 32928, isUnsigned: true)
!14 = !DIEnumerator(name: "NI_AI_StartTrigger", value: 32929, isUnsigned: true)
!15 = !DIEnumerator(name: "NI_AI_ReferenceTrigger", value: 32930, isUnsigned: true)
!16 = !DIEnumerator(name: "NI_AI_ConvertClock", value: 32931, isUnsigned: true)
!17 = !DIEnumerator(name: "NI_AI_ConvertClockTimebase", value: 32932, isUnsigned: true)
!18 = !DIEnumerator(name: "NI_AI_PauseTrigger", value: 32933, isUnsigned: true)
!19 = !DIEnumerator(name: "NI_AI_HoldCompleteEvent", value: 32934, isUnsigned: true)
!20 = !DIEnumerator(name: "NI_AI_HoldComplete", value: 32935, isUnsigned: true)
!21 = !DIEnumerator(name: "NI_AI_ExternalMUXClock", value: 32936, isUnsigned: true)
!22 = !DIEnumerator(name: "NI_AI_STOP", value: 32937, isUnsigned: true)
!23 = !DIEnumerator(name: "NI_AO_SampleClock", value: 32938, isUnsigned: true)
!24 = !DIEnumerator(name: "NI_AO_SampleClockTimebase", value: 32939, isUnsigned: true)
!25 = !DIEnumerator(name: "NI_AO_StartTrigger", value: 32940, isUnsigned: true)
!26 = !DIEnumerator(name: "NI_AO_PauseTrigger", value: 32941, isUnsigned: true)
!27 = !DIEnumerator(name: "NI_DI_SampleClock", value: 32942, isUnsigned: true)
!28 = !DIEnumerator(name: "NI_DI_SampleClockTimebase", value: 32943, isUnsigned: true)
!29 = !DIEnumerator(name: "NI_DI_StartTrigger", value: 32944, isUnsigned: true)
!30 = !DIEnumerator(name: "NI_DI_ReferenceTrigger", value: 32945, isUnsigned: true)
!31 = !DIEnumerator(name: "NI_DI_PauseTrigger", value: 32946, isUnsigned: true)
!32 = !DIEnumerator(name: "NI_DI_InputBufferFull", value: 32947, isUnsigned: true)
!33 = !DIEnumerator(name: "NI_DI_ReadyForStartEvent", value: 32948, isUnsigned: true)
!34 = !DIEnumerator(name: "NI_DI_ReadyForTransferEventBurst", value: 32949, isUnsigned: true)
!35 = !DIEnumerator(name: "NI_DI_ReadyForTransferEventPipelined", value: 32950, isUnsigned: true)
!36 = !DIEnumerator(name: "NI_DO_SampleClock", value: 32951, isUnsigned: true)
!37 = !DIEnumerator(name: "NI_DO_SampleClockTimebase", value: 32952, isUnsigned: true)
!38 = !DIEnumerator(name: "NI_DO_StartTrigger", value: 32953, isUnsigned: true)
!39 = !DIEnumerator(name: "NI_DO_PauseTrigger", value: 32954, isUnsigned: true)
!40 = !DIEnumerator(name: "NI_DO_OutputBufferFull", value: 32955, isUnsigned: true)
!41 = !DIEnumerator(name: "NI_DO_DataActiveEvent", value: 32956, isUnsigned: true)
!42 = !DIEnumerator(name: "NI_DO_ReadyForStartEvent", value: 32957, isUnsigned: true)
!43 = !DIEnumerator(name: "NI_DO_ReadyForTransferEvent", value: 32958, isUnsigned: true)
!44 = !DIEnumerator(name: "NI_MasterTimebase", value: 32959, isUnsigned: true)
!45 = !DIEnumerator(name: "NI_20MHzTimebase", value: 32960, isUnsigned: true)
!46 = !DIEnumerator(name: "NI_80MHzTimebase", value: 32961, isUnsigned: true)
!47 = !DIEnumerator(name: "NI_100MHzTimebase", value: 32962, isUnsigned: true)
!48 = !DIEnumerator(name: "NI_200MHzTimebase", value: 32963, isUnsigned: true)
!49 = !DIEnumerator(name: "NI_100kHzTimebase", value: 32964, isUnsigned: true)
!50 = !DIEnumerator(name: "NI_10MHzRefClock", value: 32965, isUnsigned: true)
!51 = !DIEnumerator(name: "NI_FrequencyOutput", value: 32966, isUnsigned: true)
!52 = !DIEnumerator(name: "NI_ChangeDetectionEvent", value: 32967, isUnsigned: true)
!53 = !DIEnumerator(name: "NI_AnalogComparisonEvent", value: 32968, isUnsigned: true)
!54 = !DIEnumerator(name: "NI_WatchdogExpiredEvent", value: 32969, isUnsigned: true)
!55 = !DIEnumerator(name: "NI_WatchdogExpirationTrigger", value: 32970, isUnsigned: true)
!56 = !DIEnumerator(name: "NI_SCXI_Trig1", value: 32971, isUnsigned: true)
!57 = !DIEnumerator(name: "NI_LogicLow", value: 32972, isUnsigned: true)
!58 = !DIEnumerator(name: "NI_LogicHigh", value: 32973, isUnsigned: true)
!59 = !DIEnumerator(name: "NI_ExternalStrobe", value: 32974, isUnsigned: true)
!60 = !DIEnumerator(name: "NI_PFI_DO", value: 32975, isUnsigned: true)
!61 = !DIEnumerator(name: "NI_CaseGround", value: 32976, isUnsigned: true)
!62 = !DIEnumerator(name: "NI_RGOUT0", value: 32977, isUnsigned: true)
!63 = !DIEnumerator(name: "_NI_NAMES_MAX_PLUS_1", value: 32978, isUnsigned: true)
!64 = !DIEnumerator(name: "NI_NUM_NAMES", value: 210, isUnsigned: true)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 10, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!69 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!70 = !{!71}
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !{!73, !76, !83, !90, !95, !100, !0}
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ni_routes_module_init106", scope: !2, file: !3, line: 556, type: !75, isLocal: true, isDefinition: true)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "__exitcall_ni_routes_module_exit", scope: !2, file: !3, line: 557, type: !78, isLocal: true, isDefinition: true)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !79, line: 117, baseType: !80)
!79 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author107", scope: !2, file: !3, line: 559, type: !85, isLocal: true, isDefinition: true, align: 8)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 384, elements: !88)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !{!89}
!89 = !DISubrange(count: 48)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description108", scope: !2, file: !3, line: 560, type: !92, isLocal: true, isDefinition: true, align: 8)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 608, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 76)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file109", scope: !2, file: !3, line: 561, type: !97, isLocal: true, isDefinition: true, align: 8)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 464, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 58)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license110", scope: !2, file: !3, line: 561, type: !102, isLocal: true, isDefinition: true, align: 8)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 184, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 23)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 224, elements: !107)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!107 = !{!108}
!108 = !DISubrange(count: 7)
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"Code Model", i32 2}
!113 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!114 = distinct !DISubprogram(name: "ni_assign_device_routes", scope: !3, file: !3, line: 138, type: !115, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!115 = !DISubroutineType(types: !116)
!116 = !{!71, !117, !117, !117, !118}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ni_route_tables", file: !120, line: 66, size: 128, elements: !121)
!120 = !DIFile(filename: "drivers/staging/comedi/drivers/ni_routing/../ni_routes.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !137}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "valid_routes", scope: !119, file: !120, line: 67, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ni_device_routes", file: !120, line: 51, size: 192, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !125, file: !120, line: 52, baseType: !117, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "n_route_sets", scope: !125, file: !120, line: 53, baseType: !71, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "routes", scope: !125, file: !120, line: 54, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ni_route_set", file: !120, line: 39, size: 128, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !131, file: !120, line: 40, baseType: !71, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "n_src", scope: !131, file: !120, line: 41, baseType: !71, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !131, file: !120, line: 42, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "route_values", scope: !119, file: !120, line: 68, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !141, line: 17, baseType: !142)
!141 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !143, line: 21, baseType: !144)
!143 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!145 = !{}
!146 = !DILocalVariable(name: "device_family", arg: 1, scope: !114, file: !3, line: 138, type: !117)
!147 = !DILocation(line: 138, column: 41, scope: !114)
!148 = !DILocalVariable(name: "board_name", arg: 2, scope: !114, file: !3, line: 139, type: !117)
!149 = !DILocation(line: 139, column: 20, scope: !114)
!150 = !DILocalVariable(name: "alt_board_name", arg: 3, scope: !114, file: !3, line: 140, type: !117)
!151 = !DILocation(line: 140, column: 20, scope: !114)
!152 = !DILocalVariable(name: "tables", arg: 4, scope: !114, file: !3, line: 141, type: !118)
!153 = !DILocation(line: 141, column: 32, scope: !114)
!154 = !DILocation(line: 143, column: 9, scope: !114)
!155 = !DILocation(line: 143, column: 2, scope: !114)
!156 = !DILocation(line: 144, column: 31, scope: !114)
!157 = !DILocation(line: 144, column: 46, scope: !114)
!158 = !DILocation(line: 144, column: 58, scope: !114)
!159 = !DILocation(line: 145, column: 10, scope: !114)
!160 = !DILocation(line: 144, column: 9, scope: !114)
!161 = !DILocation(line: 144, column: 2, scope: !114)
!162 = distinct !DISubprogram(name: "ni_find_device_routes", scope: !3, file: !3, line: 96, type: !115, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!163 = !DILocalVariable(name: "device_family", arg: 1, scope: !162, file: !3, line: 96, type: !117)
!164 = !DILocation(line: 96, column: 46, scope: !162)
!165 = !DILocalVariable(name: "board_name", arg: 2, scope: !162, file: !3, line: 97, type: !117)
!166 = !DILocation(line: 97, column: 18, scope: !162)
!167 = !DILocalVariable(name: "alt_board_name", arg: 3, scope: !162, file: !3, line: 98, type: !117)
!168 = !DILocation(line: 98, column: 18, scope: !162)
!169 = !DILocalVariable(name: "tables", arg: 4, scope: !162, file: !3, line: 99, type: !118)
!170 = !DILocation(line: 99, column: 30, scope: !162)
!171 = !DILocalVariable(name: "dr", scope: !162, file: !3, line: 101, type: !123)
!172 = !DILocation(line: 101, column: 33, scope: !162)
!173 = !DILocalVariable(name: "rv", scope: !162, file: !3, line: 102, type: !138)
!174 = !DILocation(line: 102, column: 12, scope: !162)
!175 = !DILocation(line: 105, column: 28, scope: !162)
!176 = !DILocation(line: 105, column: 7, scope: !162)
!177 = !DILocation(line: 105, column: 5, scope: !162)
!178 = !DILocation(line: 108, column: 28, scope: !162)
!179 = !DILocation(line: 108, column: 7, scope: !162)
!180 = !DILocation(line: 108, column: 5, scope: !162)
!181 = !DILocation(line: 109, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !162, file: !3, line: 109, column: 6)
!183 = !DILocation(line: 109, column: 10, scope: !182)
!184 = !DILocation(line: 109, column: 13, scope: !182)
!185 = !DILocation(line: 109, column: 6, scope: !162)
!186 = !DILocation(line: 110, column: 29, scope: !182)
!187 = !DILocation(line: 110, column: 8, scope: !182)
!188 = !DILocation(line: 110, column: 6, scope: !182)
!189 = !DILocation(line: 110, column: 3, scope: !182)
!190 = !DILocation(line: 112, column: 25, scope: !162)
!191 = !DILocation(line: 112, column: 2, scope: !162)
!192 = !DILocation(line: 112, column: 10, scope: !162)
!193 = !DILocation(line: 112, column: 23, scope: !162)
!194 = !DILocation(line: 113, column: 25, scope: !162)
!195 = !DILocation(line: 113, column: 2, scope: !162)
!196 = !DILocation(line: 113, column: 10, scope: !162)
!197 = !DILocation(line: 113, column: 23, scope: !162)
!198 = !DILocation(line: 115, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !162, file: !3, line: 115, column: 6)
!200 = !DILocation(line: 115, column: 10, scope: !199)
!201 = !DILocation(line: 115, column: 14, scope: !199)
!202 = !DILocation(line: 115, column: 6, scope: !162)
!203 = !DILocation(line: 116, column: 3, scope: !199)
!204 = !DILocation(line: 118, column: 2, scope: !162)
!205 = !DILocation(line: 119, column: 1, scope: !162)
!206 = distinct !DISubprogram(name: "ni_count_valid_routes", scope: !3, file: !3, line: 153, type: !207, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!207 = !DISubroutineType(types: !208)
!208 = !{!7, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!211 = !DILocalVariable(name: "tables", arg: 1, scope: !206, file: !3, line: 153, type: !209)
!212 = !DILocation(line: 153, column: 66, scope: !206)
!213 = !DILocalVariable(name: "total", scope: !206, file: !3, line: 155, type: !71)
!214 = !DILocation(line: 155, column: 6, scope: !206)
!215 = !DILocalVariable(name: "i", scope: !206, file: !3, line: 156, type: !71)
!216 = !DILocation(line: 156, column: 6, scope: !206)
!217 = !DILocation(line: 158, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !206, file: !3, line: 158, column: 2)
!219 = !DILocation(line: 158, column: 7, scope: !218)
!220 = !DILocation(line: 158, column: 14, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !3, line: 158, column: 2)
!222 = !DILocation(line: 158, column: 18, scope: !221)
!223 = !DILocation(line: 158, column: 26, scope: !221)
!224 = !DILocation(line: 158, column: 40, scope: !221)
!225 = !DILocation(line: 158, column: 16, scope: !221)
!226 = !DILocation(line: 158, column: 2, scope: !218)
!227 = !DILocalVariable(name: "R", scope: !228, file: !3, line: 159, type: !229)
!228 = distinct !DILexicalBlock(scope: !221, file: !3, line: 158, column: 59)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!231 = !DILocation(line: 159, column: 30, scope: !228)
!232 = !DILocation(line: 159, column: 35, scope: !228)
!233 = !DILocation(line: 159, column: 43, scope: !228)
!234 = !DILocation(line: 159, column: 57, scope: !228)
!235 = !DILocation(line: 159, column: 64, scope: !228)
!236 = !DILocalVariable(name: "j", scope: !228, file: !3, line: 160, type: !71)
!237 = !DILocation(line: 160, column: 7, scope: !228)
!238 = !DILocation(line: 162, column: 10, scope: !239)
!239 = distinct !DILexicalBlock(scope: !228, file: !3, line: 162, column: 3)
!240 = !DILocation(line: 162, column: 8, scope: !239)
!241 = !DILocation(line: 162, column: 15, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !3, line: 162, column: 3)
!243 = !DILocation(line: 162, column: 19, scope: !242)
!244 = !DILocation(line: 162, column: 22, scope: !242)
!245 = !DILocation(line: 162, column: 17, scope: !242)
!246 = !DILocation(line: 162, column: 3, scope: !239)
!247 = !DILocalVariable(name: "src", scope: !248, file: !3, line: 163, type: !106)
!248 = distinct !DILexicalBlock(scope: !242, file: !3, line: 162, column: 34)
!249 = !DILocation(line: 163, column: 14, scope: !248)
!250 = !DILocation(line: 163, column: 21, scope: !248)
!251 = !DILocation(line: 163, column: 24, scope: !248)
!252 = !DILocation(line: 163, column: 28, scope: !248)
!253 = !DILocalVariable(name: "dest", scope: !248, file: !3, line: 164, type: !106)
!254 = !DILocation(line: 164, column: 14, scope: !248)
!255 = !DILocation(line: 164, column: 21, scope: !248)
!256 = !DILocation(line: 164, column: 24, scope: !248)
!257 = !DILocalVariable(name: "rv", scope: !248, file: !3, line: 165, type: !138)
!258 = !DILocation(line: 165, column: 14, scope: !248)
!259 = !DILocation(line: 165, column: 19, scope: !248)
!260 = !DILocation(line: 165, column: 27, scope: !248)
!261 = !DILocation(line: 167, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !248, file: !3, line: 167, column: 8)
!263 = !DILocation(line: 167, column: 8, scope: !248)
!264 = !DILocation(line: 169, column: 5, scope: !262)
!265 = !DILocation(line: 170, column: 29, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 170, column: 13)
!267 = !DILocation(line: 170, column: 13, scope: !266)
!268 = !DILocation(line: 170, column: 35, scope: !266)
!269 = !DILocation(line: 171, column: 7, scope: !266)
!270 = !DILocation(line: 171, column: 37, scope: !266)
!271 = !DILocation(line: 172, column: 7, scope: !266)
!272 = !DILocation(line: 172, column: 42, scope: !266)
!273 = !DILocation(line: 173, column: 7, scope: !266)
!274 = !DILocation(line: 173, column: 42, scope: !266)
!275 = !DILocation(line: 174, column: 7, scope: !266)
!276 = !DILocation(line: 174, column: 42, scope: !266)
!277 = !DILocation(line: 175, column: 7, scope: !266)
!278 = !DILocation(line: 170, column: 13, scope: !262)
!279 = !DILocation(line: 176, column: 5, scope: !280)
!280 = distinct !DILexicalBlock(scope: !266, file: !3, line: 175, column: 44)
!281 = !DILocation(line: 177, column: 4, scope: !280)
!282 = !DILocation(line: 178, column: 3, scope: !248)
!283 = !DILocation(line: 162, column: 29, scope: !242)
!284 = !DILocation(line: 162, column: 3, scope: !242)
!285 = distinct !{!285, !246, !286}
!286 = !DILocation(line: 178, column: 3, scope: !239)
!287 = !DILocation(line: 179, column: 2, scope: !228)
!288 = !DILocation(line: 158, column: 54, scope: !221)
!289 = !DILocation(line: 158, column: 2, scope: !221)
!290 = distinct !{!290, !226, !291}
!291 = !DILocation(line: 179, column: 2, scope: !218)
!292 = !DILocation(line: 180, column: 9, scope: !206)
!293 = !DILocation(line: 180, column: 2, scope: !206)
!294 = distinct !DISubprogram(name: "channel_is_rtsi", scope: !120, file: !120, line: 181, type: !295, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !71}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !298, line: 30, baseType: !299)
!298 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!299 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!300 = !DILocalVariable(name: "channel", arg: 1, scope: !294, file: !120, line: 181, type: !71)
!301 = !DILocation(line: 181, column: 40, scope: !294)
!302 = !DILocation(line: 183, column: 28, scope: !294)
!303 = !DILocation(line: 183, column: 25, scope: !294)
!304 = !DILocation(line: 183, column: 36, scope: !294)
!305 = !DILocation(line: 183, column: 39, scope: !294)
!306 = !DILocation(line: 183, column: 47, scope: !294)
!307 = !DILocation(line: 0, scope: !294)
!308 = !DILocation(line: 183, column: 2, scope: !294)
!309 = distinct !DISubprogram(name: "ni_get_valid_routes", scope: !3, file: !3, line: 197, type: !310, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!310 = !DISubroutineType(types: !311)
!311 = !{!7, !209, !7, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!313 = !DILocalVariable(name: "tables", arg: 1, scope: !309, file: !3, line: 197, type: !209)
!314 = !DILocation(line: 197, column: 64, scope: !309)
!315 = !DILocalVariable(name: "n_pairs", arg: 2, scope: !309, file: !3, line: 198, type: !7)
!316 = !DILocation(line: 198, column: 19, scope: !309)
!317 = !DILocalVariable(name: "pair_data", arg: 3, scope: !309, file: !3, line: 199, type: !312)
!318 = !DILocation(line: 199, column: 20, scope: !309)
!319 = !DILocalVariable(name: "n_valid", scope: !309, file: !3, line: 201, type: !7)
!320 = !DILocation(line: 201, column: 15, scope: !309)
!321 = !DILocation(line: 201, column: 47, scope: !309)
!322 = !DILocation(line: 201, column: 25, scope: !309)
!323 = !DILocalVariable(name: "i", scope: !309, file: !3, line: 202, type: !71)
!324 = !DILocation(line: 202, column: 6, scope: !309)
!325 = !DILocation(line: 204, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !309, file: !3, line: 204, column: 6)
!327 = !DILocation(line: 204, column: 14, scope: !326)
!328 = !DILocation(line: 204, column: 19, scope: !326)
!329 = !DILocation(line: 204, column: 22, scope: !326)
!330 = !DILocation(line: 204, column: 30, scope: !326)
!331 = !DILocation(line: 204, column: 6, scope: !309)
!332 = !DILocation(line: 205, column: 10, scope: !326)
!333 = !DILocation(line: 205, column: 3, scope: !326)
!334 = !DILocation(line: 207, column: 7, scope: !335)
!335 = distinct !DILexicalBlock(scope: !309, file: !3, line: 207, column: 6)
!336 = !DILocation(line: 207, column: 6, scope: !309)
!337 = !DILocation(line: 208, column: 3, scope: !335)
!338 = !DILocation(line: 210, column: 10, scope: !309)
!339 = !DILocation(line: 212, column: 9, scope: !340)
!340 = distinct !DILexicalBlock(scope: !309, file: !3, line: 212, column: 2)
!341 = !DILocation(line: 212, column: 7, scope: !340)
!342 = !DILocation(line: 212, column: 14, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !3, line: 212, column: 2)
!344 = !DILocation(line: 212, column: 18, scope: !343)
!345 = !DILocation(line: 212, column: 26, scope: !343)
!346 = !DILocation(line: 212, column: 40, scope: !343)
!347 = !DILocation(line: 212, column: 16, scope: !343)
!348 = !DILocation(line: 212, column: 2, scope: !340)
!349 = !DILocalVariable(name: "R", scope: !350, file: !3, line: 213, type: !229)
!350 = distinct !DILexicalBlock(scope: !343, file: !3, line: 212, column: 59)
!351 = !DILocation(line: 213, column: 30, scope: !350)
!352 = !DILocation(line: 213, column: 35, scope: !350)
!353 = !DILocation(line: 213, column: 43, scope: !350)
!354 = !DILocation(line: 213, column: 57, scope: !350)
!355 = !DILocation(line: 213, column: 64, scope: !350)
!356 = !DILocalVariable(name: "j", scope: !350, file: !3, line: 214, type: !71)
!357 = !DILocation(line: 214, column: 7, scope: !350)
!358 = !DILocation(line: 216, column: 10, scope: !359)
!359 = distinct !DILexicalBlock(scope: !350, file: !3, line: 216, column: 3)
!360 = !DILocation(line: 216, column: 8, scope: !359)
!361 = !DILocation(line: 216, column: 15, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !3, line: 216, column: 3)
!363 = !DILocation(line: 216, column: 19, scope: !362)
!364 = !DILocation(line: 216, column: 22, scope: !362)
!365 = !DILocation(line: 216, column: 17, scope: !362)
!366 = !DILocation(line: 216, column: 3, scope: !359)
!367 = !DILocalVariable(name: "src", scope: !368, file: !3, line: 217, type: !106)
!368 = distinct !DILexicalBlock(scope: !362, file: !3, line: 216, column: 34)
!369 = !DILocation(line: 217, column: 14, scope: !368)
!370 = !DILocation(line: 217, column: 21, scope: !368)
!371 = !DILocation(line: 217, column: 24, scope: !368)
!372 = !DILocation(line: 217, column: 28, scope: !368)
!373 = !DILocalVariable(name: "dest", scope: !368, file: !3, line: 218, type: !106)
!374 = !DILocation(line: 218, column: 14, scope: !368)
!375 = !DILocation(line: 218, column: 21, scope: !368)
!376 = !DILocation(line: 218, column: 24, scope: !368)
!377 = !DILocalVariable(name: "valid", scope: !368, file: !3, line: 219, type: !297)
!378 = !DILocation(line: 219, column: 9, scope: !368)
!379 = !DILocalVariable(name: "rv", scope: !368, file: !3, line: 220, type: !138)
!380 = !DILocation(line: 220, column: 14, scope: !368)
!381 = !DILocation(line: 220, column: 19, scope: !368)
!382 = !DILocation(line: 220, column: 27, scope: !368)
!383 = !DILocation(line: 222, column: 8, scope: !384)
!384 = distinct !DILexicalBlock(scope: !368, file: !3, line: 222, column: 8)
!385 = !DILocation(line: 222, column: 8, scope: !368)
!386 = !DILocation(line: 224, column: 11, scope: !384)
!387 = !DILocation(line: 224, column: 5, scope: !384)
!388 = !DILocation(line: 225, column: 29, scope: !389)
!389 = distinct !DILexicalBlock(scope: !384, file: !3, line: 225, column: 13)
!390 = !DILocation(line: 225, column: 13, scope: !389)
!391 = !DILocation(line: 225, column: 35, scope: !389)
!392 = !DILocation(line: 226, column: 7, scope: !389)
!393 = !DILocation(line: 226, column: 37, scope: !389)
!394 = !DILocation(line: 227, column: 7, scope: !389)
!395 = !DILocation(line: 227, column: 42, scope: !389)
!396 = !DILocation(line: 228, column: 7, scope: !389)
!397 = !DILocation(line: 228, column: 42, scope: !389)
!398 = !DILocation(line: 229, column: 7, scope: !389)
!399 = !DILocation(line: 229, column: 42, scope: !389)
!400 = !DILocation(line: 230, column: 7, scope: !389)
!401 = !DILocation(line: 225, column: 13, scope: !384)
!402 = !DILocation(line: 232, column: 11, scope: !403)
!403 = distinct !DILexicalBlock(scope: !389, file: !3, line: 230, column: 44)
!404 = !DILocation(line: 233, column: 4, scope: !403)
!405 = !DILocation(line: 235, column: 8, scope: !406)
!406 = distinct !DILexicalBlock(scope: !368, file: !3, line: 235, column: 8)
!407 = !DILocation(line: 235, column: 8, scope: !368)
!408 = !DILocation(line: 236, column: 30, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !3, line: 235, column: 15)
!410 = !DILocation(line: 236, column: 5, scope: !409)
!411 = !DILocation(line: 236, column: 19, scope: !409)
!412 = !DILocation(line: 236, column: 17, scope: !409)
!413 = !DILocation(line: 236, column: 28, scope: !409)
!414 = !DILocation(line: 237, column: 34, scope: !409)
!415 = !DILocation(line: 237, column: 5, scope: !409)
!416 = !DILocation(line: 237, column: 19, scope: !409)
!417 = !DILocation(line: 237, column: 17, scope: !409)
!418 = !DILocation(line: 237, column: 27, scope: !409)
!419 = !DILocation(line: 237, column: 32, scope: !409)
!420 = !DILocation(line: 238, column: 5, scope: !409)
!421 = !DILocation(line: 239, column: 4, scope: !409)
!422 = !DILocation(line: 241, column: 8, scope: !423)
!423 = distinct !DILexicalBlock(scope: !368, file: !3, line: 241, column: 8)
!424 = !DILocation(line: 241, column: 19, scope: !423)
!425 = !DILocation(line: 241, column: 16, scope: !423)
!426 = !DILocation(line: 241, column: 8, scope: !368)
!427 = !DILocation(line: 242, column: 12, scope: !423)
!428 = !DILocation(line: 242, column: 5, scope: !423)
!429 = !DILocation(line: 243, column: 3, scope: !368)
!430 = !DILocation(line: 216, column: 29, scope: !362)
!431 = !DILocation(line: 216, column: 3, scope: !362)
!432 = distinct !{!432, !366, !433}
!433 = !DILocation(line: 243, column: 3, scope: !359)
!434 = !DILocation(line: 244, column: 2, scope: !350)
!435 = !DILocation(line: 212, column: 54, scope: !343)
!436 = !DILocation(line: 212, column: 2, scope: !343)
!437 = distinct !{!437, !348, !438}
!438 = !DILocation(line: 244, column: 2, scope: !340)
!439 = !DILocation(line: 245, column: 9, scope: !309)
!440 = !DILocation(line: 245, column: 2, scope: !309)
!441 = !DILocation(line: 246, column: 1, scope: !309)
!442 = distinct !DISubprogram(name: "ni_is_cmd_dest", scope: !3, file: !3, line: 268, type: !295, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!443 = !DILocalVariable(name: "dest", arg: 1, scope: !442, file: !3, line: 268, type: !71)
!444 = !DILocation(line: 268, column: 25, scope: !442)
!445 = !DILocalVariable(name: "i", scope: !442, file: !3, line: 270, type: !71)
!446 = !DILocation(line: 270, column: 6, scope: !442)
!447 = !DILocation(line: 272, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !442, file: !3, line: 272, column: 2)
!449 = !DILocation(line: 272, column: 7, scope: !448)
!450 = !DILocation(line: 272, column: 14, scope: !451)
!451 = distinct !DILexicalBlock(scope: !448, file: !3, line: 272, column: 2)
!452 = !DILocation(line: 272, column: 16, scope: !451)
!453 = !DILocation(line: 272, column: 2, scope: !448)
!454 = !DILocation(line: 273, column: 20, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !3, line: 273, column: 7)
!456 = !DILocation(line: 273, column: 7, scope: !455)
!457 = !DILocation(line: 273, column: 26, scope: !455)
!458 = !DILocation(line: 273, column: 23, scope: !455)
!459 = !DILocation(line: 273, column: 7, scope: !451)
!460 = !DILocation(line: 274, column: 4, scope: !455)
!461 = !DILocation(line: 272, column: 44, scope: !451)
!462 = !DILocation(line: 272, column: 2, scope: !451)
!463 = distinct !{!463, !453, !464}
!464 = !DILocation(line: 274, column: 11, scope: !448)
!465 = !DILocation(line: 275, column: 2, scope: !442)
!466 = !DILocation(line: 276, column: 1, scope: !442)
!467 = distinct !DISubprogram(name: "ni_sort_device_routes", scope: !3, file: !3, line: 309, type: !468, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!471 = !DILocalVariable(name: "valid_routes", arg: 1, scope: !467, file: !3, line: 309, type: !470)
!472 = !DILocation(line: 309, column: 53, scope: !467)
!473 = !DILocalVariable(name: "n", scope: !467, file: !3, line: 311, type: !7)
!474 = !DILocation(line: 311, column: 15, scope: !467)
!475 = !DILocation(line: 314, column: 2, scope: !467)
!476 = !DILocation(line: 314, column: 16, scope: !467)
!477 = !DILocation(line: 314, column: 29, scope: !467)
!478 = !DILocation(line: 315, column: 2, scope: !467)
!479 = !DILocation(line: 315, column: 9, scope: !467)
!480 = !DILocation(line: 315, column: 23, scope: !467)
!481 = !DILocation(line: 315, column: 30, scope: !467)
!482 = !DILocation(line: 315, column: 44, scope: !467)
!483 = !DILocation(line: 315, column: 58, scope: !467)
!484 = !DILocation(line: 315, column: 63, scope: !467)
!485 = !DILocation(line: 316, column: 5, scope: !467)
!486 = !DILocation(line: 316, column: 19, scope: !467)
!487 = !DILocation(line: 316, column: 3, scope: !467)
!488 = distinct !{!488, !478, !486}
!489 = !DILocation(line: 319, column: 7, scope: !467)
!490 = !DILocation(line: 319, column: 21, scope: !467)
!491 = !DILocation(line: 319, column: 29, scope: !467)
!492 = !DILocation(line: 319, column: 43, scope: !467)
!493 = !DILocation(line: 319, column: 2, scope: !467)
!494 = !DILocation(line: 323, column: 9, scope: !495)
!495 = distinct !DILexicalBlock(scope: !467, file: !3, line: 323, column: 2)
!496 = !DILocation(line: 323, column: 7, scope: !495)
!497 = !DILocation(line: 323, column: 14, scope: !498)
!498 = distinct !DILexicalBlock(scope: !495, file: !3, line: 323, column: 2)
!499 = !DILocation(line: 323, column: 18, scope: !498)
!500 = !DILocation(line: 323, column: 32, scope: !498)
!501 = !DILocation(line: 323, column: 16, scope: !498)
!502 = !DILocation(line: 323, column: 2, scope: !495)
!503 = !DILocalVariable(name: "rs", scope: !504, file: !3, line: 324, type: !130)
!504 = distinct !DILexicalBlock(scope: !498, file: !3, line: 323, column: 51)
!505 = !DILocation(line: 324, column: 24, scope: !504)
!506 = !DILocation(line: 324, column: 30, scope: !504)
!507 = !DILocation(line: 324, column: 44, scope: !504)
!508 = !DILocation(line: 324, column: 51, scope: !504)
!509 = !DILocation(line: 327, column: 3, scope: !504)
!510 = !DILocation(line: 327, column: 7, scope: !504)
!511 = !DILocation(line: 327, column: 13, scope: !504)
!512 = !DILocation(line: 328, column: 3, scope: !504)
!513 = !DILocation(line: 328, column: 10, scope: !504)
!514 = !DILocation(line: 328, column: 14, scope: !504)
!515 = !DILocation(line: 328, column: 18, scope: !504)
!516 = !DILocation(line: 328, column: 22, scope: !504)
!517 = !DILocation(line: 329, column: 6, scope: !504)
!518 = !DILocation(line: 329, column: 10, scope: !504)
!519 = !DILocation(line: 329, column: 4, scope: !504)
!520 = distinct !{!520, !512, !518}
!521 = !DILocation(line: 332, column: 8, scope: !504)
!522 = !DILocation(line: 332, column: 22, scope: !504)
!523 = !DILocation(line: 332, column: 29, scope: !504)
!524 = !DILocation(line: 332, column: 32, scope: !504)
!525 = !DILocation(line: 332, column: 37, scope: !504)
!526 = !DILocation(line: 332, column: 51, scope: !504)
!527 = !DILocation(line: 332, column: 58, scope: !504)
!528 = !DILocation(line: 332, column: 61, scope: !504)
!529 = !DILocation(line: 332, column: 3, scope: !504)
!530 = !DILocation(line: 334, column: 2, scope: !504)
!531 = !DILocation(line: 323, column: 46, scope: !498)
!532 = !DILocation(line: 323, column: 2, scope: !498)
!533 = distinct !{!533, !502, !534}
!534 = !DILocation(line: 334, column: 2, scope: !495)
!535 = !DILocation(line: 335, column: 1, scope: !467)
!536 = distinct !DISubprogram(name: "_ni_sort_destcmp", scope: !3, file: !3, line: 280, type: !537, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!537 = !DISubroutineType(types: !538)
!538 = !{!71, !539, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!541 = !DILocalVariable(name: "va", arg: 1, scope: !536, file: !3, line: 280, type: !539)
!542 = !DILocation(line: 280, column: 41, scope: !536)
!543 = !DILocalVariable(name: "vb", arg: 2, scope: !536, file: !3, line: 280, type: !539)
!544 = !DILocation(line: 280, column: 57, scope: !536)
!545 = !DILocalVariable(name: "a", scope: !536, file: !3, line: 282, type: !229)
!546 = !DILocation(line: 282, column: 29, scope: !536)
!547 = !DILocation(line: 282, column: 33, scope: !536)
!548 = !DILocalVariable(name: "b", scope: !536, file: !3, line: 283, type: !229)
!549 = !DILocation(line: 283, column: 29, scope: !536)
!550 = !DILocation(line: 283, column: 33, scope: !536)
!551 = !DILocation(line: 285, column: 6, scope: !552)
!552 = distinct !DILexicalBlock(scope: !536, file: !3, line: 285, column: 6)
!553 = !DILocation(line: 285, column: 9, scope: !552)
!554 = !DILocation(line: 285, column: 16, scope: !552)
!555 = !DILocation(line: 285, column: 19, scope: !552)
!556 = !DILocation(line: 285, column: 14, scope: !552)
!557 = !DILocation(line: 285, column: 6, scope: !536)
!558 = !DILocation(line: 286, column: 3, scope: !552)
!559 = !DILocation(line: 287, column: 11, scope: !560)
!560 = distinct !DILexicalBlock(scope: !552, file: !3, line: 287, column: 11)
!561 = !DILocation(line: 287, column: 14, scope: !560)
!562 = !DILocation(line: 287, column: 21, scope: !560)
!563 = !DILocation(line: 287, column: 24, scope: !560)
!564 = !DILocation(line: 287, column: 19, scope: !560)
!565 = !DILocation(line: 287, column: 11, scope: !552)
!566 = !DILocation(line: 288, column: 3, scope: !560)
!567 = !DILocation(line: 289, column: 2, scope: !536)
!568 = !DILocation(line: 290, column: 1, scope: !536)
!569 = distinct !DISubprogram(name: "_ni_sort_srccmp", scope: !3, file: !3, line: 292, type: !537, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!570 = !DILocalVariable(name: "vsrc0", arg: 1, scope: !569, file: !3, line: 292, type: !539)
!571 = !DILocation(line: 292, column: 40, scope: !569)
!572 = !DILocalVariable(name: "vsrc1", arg: 2, scope: !569, file: !3, line: 292, type: !539)
!573 = !DILocation(line: 292, column: 59, scope: !569)
!574 = !DILocalVariable(name: "src0", scope: !569, file: !3, line: 294, type: !575)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!576 = !DILocation(line: 294, column: 13, scope: !569)
!577 = !DILocation(line: 294, column: 20, scope: !569)
!578 = !DILocalVariable(name: "src1", scope: !569, file: !3, line: 295, type: !575)
!579 = !DILocation(line: 295, column: 13, scope: !569)
!580 = !DILocation(line: 295, column: 20, scope: !569)
!581 = !DILocation(line: 297, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !569, file: !3, line: 297, column: 6)
!583 = !DILocation(line: 297, column: 6, scope: !582)
!584 = !DILocation(line: 297, column: 15, scope: !582)
!585 = !DILocation(line: 297, column: 14, scope: !582)
!586 = !DILocation(line: 297, column: 12, scope: !582)
!587 = !DILocation(line: 297, column: 6, scope: !569)
!588 = !DILocation(line: 298, column: 3, scope: !582)
!589 = !DILocation(line: 299, column: 12, scope: !590)
!590 = distinct !DILexicalBlock(scope: !582, file: !3, line: 299, column: 11)
!591 = !DILocation(line: 299, column: 11, scope: !590)
!592 = !DILocation(line: 299, column: 20, scope: !590)
!593 = !DILocation(line: 299, column: 19, scope: !590)
!594 = !DILocation(line: 299, column: 17, scope: !590)
!595 = !DILocation(line: 299, column: 11, scope: !582)
!596 = !DILocation(line: 300, column: 3, scope: !590)
!597 = !DILocation(line: 301, column: 2, scope: !569)
!598 = !DILocation(line: 302, column: 1, scope: !569)
!599 = distinct !DISubprogram(name: "ni_find_route_set", scope: !3, file: !3, line: 382, type: !600, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!600 = !DISubroutineType(types: !601)
!601 = !{!229, !106, !123}
!602 = !DILocalVariable(name: "destination", arg: 1, scope: !599, file: !3, line: 382, type: !106)
!603 = !DILocation(line: 382, column: 29, scope: !599)
!604 = !DILocalVariable(name: "valid_routes", arg: 2, scope: !599, file: !3, line: 383, type: !123)
!605 = !DILocation(line: 383, column: 36, scope: !599)
!606 = !DILocation(line: 385, column: 17, scope: !599)
!607 = !DILocation(line: 385, column: 31, scope: !599)
!608 = !DILocation(line: 385, column: 45, scope: !599)
!609 = !DILocation(line: 386, column: 10, scope: !599)
!610 = !DILocation(line: 386, column: 24, scope: !599)
!611 = !DILocation(line: 385, column: 9, scope: !599)
!612 = !DILocation(line: 385, column: 2, scope: !599)
!613 = distinct !DISubprogram(name: "_ni_bsearch_destcmp", scope: !3, file: !3, line: 348, type: !537, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!614 = !DILocalVariable(name: "vkey", arg: 1, scope: !613, file: !3, line: 348, type: !539)
!615 = !DILocation(line: 348, column: 44, scope: !613)
!616 = !DILocalVariable(name: "velt", arg: 2, scope: !613, file: !3, line: 348, type: !539)
!617 = !DILocation(line: 348, column: 62, scope: !613)
!618 = !DILocalVariable(name: "key", scope: !613, file: !3, line: 350, type: !575)
!619 = !DILocation(line: 350, column: 13, scope: !613)
!620 = !DILocation(line: 350, column: 19, scope: !613)
!621 = !DILocalVariable(name: "elt", scope: !613, file: !3, line: 351, type: !229)
!622 = !DILocation(line: 351, column: 29, scope: !613)
!623 = !DILocation(line: 351, column: 35, scope: !613)
!624 = !DILocation(line: 353, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !613, file: !3, line: 353, column: 6)
!626 = !DILocation(line: 353, column: 6, scope: !625)
!627 = !DILocation(line: 353, column: 13, scope: !625)
!628 = !DILocation(line: 353, column: 18, scope: !625)
!629 = !DILocation(line: 353, column: 11, scope: !625)
!630 = !DILocation(line: 353, column: 6, scope: !613)
!631 = !DILocation(line: 354, column: 3, scope: !625)
!632 = !DILocation(line: 355, column: 12, scope: !633)
!633 = distinct !DILexicalBlock(scope: !625, file: !3, line: 355, column: 11)
!634 = !DILocation(line: 355, column: 11, scope: !633)
!635 = !DILocation(line: 355, column: 18, scope: !633)
!636 = !DILocation(line: 355, column: 23, scope: !633)
!637 = !DILocation(line: 355, column: 16, scope: !633)
!638 = !DILocation(line: 355, column: 11, scope: !625)
!639 = !DILocation(line: 356, column: 3, scope: !633)
!640 = !DILocation(line: 357, column: 2, scope: !613)
!641 = !DILocation(line: 358, column: 1, scope: !613)
!642 = distinct !DISubprogram(name: "ni_route_set_has_source", scope: !3, file: !3, line: 397, type: !643, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!643 = !DISubroutineType(types: !644)
!644 = !{!297, !229, !106}
!645 = !DILocalVariable(name: "routes", arg: 1, scope: !642, file: !3, line: 397, type: !229)
!646 = !DILocation(line: 397, column: 57, scope: !642)
!647 = !DILocalVariable(name: "source", arg: 2, scope: !642, file: !3, line: 398, type: !106)
!648 = !DILocation(line: 398, column: 19, scope: !642)
!649 = !DILocation(line: 400, column: 15, scope: !650)
!650 = distinct !DILexicalBlock(scope: !642, file: !3, line: 400, column: 6)
!651 = !DILocation(line: 400, column: 24, scope: !650)
!652 = !DILocation(line: 400, column: 32, scope: !650)
!653 = !DILocation(line: 400, column: 37, scope: !650)
!654 = !DILocation(line: 400, column: 45, scope: !650)
!655 = !DILocation(line: 400, column: 7, scope: !650)
!656 = !DILocation(line: 400, column: 6, scope: !642)
!657 = !DILocation(line: 402, column: 3, scope: !650)
!658 = !DILocation(line: 403, column: 2, scope: !642)
!659 = !DILocation(line: 404, column: 1, scope: !642)
!660 = distinct !DISubprogram(name: "_ni_bsearch_srccmp", scope: !3, file: !3, line: 360, type: !537, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!661 = !DILocalVariable(name: "vkey", arg: 1, scope: !660, file: !3, line: 360, type: !539)
!662 = !DILocation(line: 360, column: 43, scope: !660)
!663 = !DILocalVariable(name: "velt", arg: 2, scope: !660, file: !3, line: 360, type: !539)
!664 = !DILocation(line: 360, column: 61, scope: !660)
!665 = !DILocalVariable(name: "key", scope: !660, file: !3, line: 362, type: !575)
!666 = !DILocation(line: 362, column: 13, scope: !660)
!667 = !DILocation(line: 362, column: 19, scope: !660)
!668 = !DILocalVariable(name: "elt", scope: !660, file: !3, line: 363, type: !575)
!669 = !DILocation(line: 363, column: 13, scope: !660)
!670 = !DILocation(line: 363, column: 19, scope: !660)
!671 = !DILocation(line: 365, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !660, file: !3, line: 365, column: 6)
!673 = !DILocation(line: 365, column: 6, scope: !672)
!674 = !DILocation(line: 365, column: 14, scope: !672)
!675 = !DILocation(line: 365, column: 13, scope: !672)
!676 = !DILocation(line: 365, column: 11, scope: !672)
!677 = !DILocation(line: 365, column: 6, scope: !660)
!678 = !DILocation(line: 366, column: 3, scope: !672)
!679 = !DILocation(line: 367, column: 12, scope: !680)
!680 = distinct !DILexicalBlock(scope: !672, file: !3, line: 367, column: 11)
!681 = !DILocation(line: 367, column: 11, scope: !680)
!682 = !DILocation(line: 367, column: 19, scope: !680)
!683 = !DILocation(line: 367, column: 18, scope: !680)
!684 = !DILocation(line: 367, column: 16, scope: !680)
!685 = !DILocation(line: 367, column: 11, scope: !672)
!686 = !DILocation(line: 368, column: 3, scope: !680)
!687 = !DILocation(line: 369, column: 2, scope: !660)
!688 = !DILocation(line: 370, column: 1, scope: !660)
!689 = distinct !DISubprogram(name: "ni_lookup_route_register", scope: !3, file: !3, line: 417, type: !690, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!690 = !DISubroutineType(types: !691)
!691 = !{!692, !71, !71, !209}
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !141, line: 16, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !143, line: 20, baseType: !694)
!694 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!695 = !DILocalVariable(name: "src", arg: 1, scope: !689, file: !3, line: 417, type: !71)
!696 = !DILocation(line: 417, column: 33, scope: !689)
!697 = !DILocalVariable(name: "dest", arg: 2, scope: !689, file: !3, line: 417, type: !71)
!698 = !DILocation(line: 417, column: 42, scope: !689)
!699 = !DILocalVariable(name: "tables", arg: 3, scope: !689, file: !3, line: 418, type: !209)
!700 = !DILocation(line: 418, column: 38, scope: !689)
!701 = !DILocalVariable(name: "regval", scope: !689, file: !3, line: 420, type: !692)
!702 = !DILocation(line: 420, column: 5, scope: !689)
!703 = !DILocation(line: 426, column: 8, scope: !689)
!704 = !DILocation(line: 426, column: 6, scope: !689)
!705 = !DILocation(line: 427, column: 9, scope: !689)
!706 = !DILocation(line: 427, column: 7, scope: !689)
!707 = !DILocation(line: 428, column: 6, scope: !708)
!708 = distinct !DILexicalBlock(scope: !689, file: !3, line: 428, column: 6)
!709 = !DILocation(line: 428, column: 10, scope: !708)
!710 = !DILocation(line: 428, column: 14, scope: !708)
!711 = !DILocation(line: 428, column: 17, scope: !708)
!712 = !DILocation(line: 428, column: 21, scope: !708)
!713 = !DILocation(line: 428, column: 37, scope: !708)
!714 = !DILocation(line: 428, column: 40, scope: !708)
!715 = !DILocation(line: 428, column: 45, scope: !708)
!716 = !DILocation(line: 428, column: 49, scope: !708)
!717 = !DILocation(line: 428, column: 52, scope: !708)
!718 = !DILocation(line: 428, column: 57, scope: !708)
!719 = !DILocation(line: 428, column: 6, scope: !689)
!720 = !DILocation(line: 429, column: 3, scope: !708)
!721 = !DILocation(line: 430, column: 11, scope: !689)
!722 = !DILocation(line: 430, column: 9, scope: !689)
!723 = !DILocation(line: 431, column: 7, scope: !724)
!724 = distinct !DILexicalBlock(scope: !689, file: !3, line: 431, column: 6)
!725 = !DILocation(line: 431, column: 6, scope: !689)
!726 = !DILocation(line: 432, column: 3, scope: !724)
!727 = !DILocation(line: 434, column: 9, scope: !689)
!728 = !DILocation(line: 434, column: 2, scope: !689)
!729 = !DILocation(line: 435, column: 1, scope: !689)
!730 = distinct !DISubprogram(name: "ni_route_to_register", scope: !3, file: !3, line: 468, type: !731, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!731 = !DISubroutineType(types: !732)
!732 = !{!692, !106, !106, !209}
!733 = !DILocalVariable(name: "src", arg: 1, scope: !730, file: !3, line: 468, type: !106)
!734 = !DILocation(line: 468, column: 35, scope: !730)
!735 = !DILocalVariable(name: "dest", arg: 2, scope: !730, file: !3, line: 468, type: !106)
!736 = !DILocation(line: 468, column: 50, scope: !730)
!737 = !DILocalVariable(name: "tables", arg: 3, scope: !730, file: !3, line: 469, type: !209)
!738 = !DILocation(line: 469, column: 34, scope: !730)
!739 = !DILocalVariable(name: "routes", scope: !730, file: !3, line: 471, type: !229)
!740 = !DILocation(line: 471, column: 29, scope: !730)
!741 = !DILocation(line: 472, column: 21, scope: !730)
!742 = !DILocation(line: 472, column: 27, scope: !730)
!743 = !DILocation(line: 472, column: 35, scope: !730)
!744 = !DILocation(line: 472, column: 3, scope: !730)
!745 = !DILocalVariable(name: "rv", scope: !730, file: !3, line: 473, type: !138)
!746 = !DILocation(line: 473, column: 12, scope: !730)
!747 = !DILocalVariable(name: "regval", scope: !730, file: !3, line: 474, type: !692)
!748 = !DILocation(line: 474, column: 5, scope: !730)
!749 = !DILocation(line: 477, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !730, file: !3, line: 477, column: 6)
!751 = !DILocation(line: 477, column: 6, scope: !730)
!752 = !DILocation(line: 478, column: 3, scope: !750)
!753 = !DILocation(line: 480, column: 31, scope: !754)
!754 = distinct !DILexicalBlock(scope: !730, file: !3, line: 480, column: 6)
!755 = !DILocation(line: 480, column: 39, scope: !754)
!756 = !DILocation(line: 480, column: 7, scope: !754)
!757 = !DILocation(line: 480, column: 6, scope: !730)
!758 = !DILocation(line: 481, column: 3, scope: !754)
!759 = !DILocation(line: 487, column: 7, scope: !730)
!760 = !DILocation(line: 487, column: 15, scope: !730)
!761 = !DILocation(line: 487, column: 5, scope: !730)
!762 = !DILocation(line: 488, column: 11, scope: !730)
!763 = !DILocation(line: 488, column: 9, scope: !730)
!764 = !DILocation(line: 494, column: 7, scope: !765)
!765 = distinct !DILexicalBlock(scope: !730, file: !3, line: 494, column: 6)
!766 = !DILocation(line: 494, column: 14, scope: !765)
!767 = !DILocation(line: 494, column: 33, scope: !765)
!768 = !DILocation(line: 494, column: 17, scope: !765)
!769 = !DILocation(line: 494, column: 6, scope: !730)
!770 = !DILocation(line: 495, column: 12, scope: !771)
!771 = distinct !DILexicalBlock(scope: !765, file: !3, line: 494, column: 40)
!772 = !DILocation(line: 495, column: 10, scope: !771)
!773 = !DILocation(line: 496, column: 8, scope: !774)
!774 = distinct !DILexicalBlock(scope: !771, file: !3, line: 496, column: 7)
!775 = !DILocation(line: 496, column: 15, scope: !774)
!776 = !DILocation(line: 496, column: 19, scope: !774)
!777 = !DILocation(line: 496, column: 54, scope: !774)
!778 = !DILocation(line: 497, column: 5, scope: !774)
!779 = !DILocation(line: 497, column: 40, scope: !774)
!780 = !DILocation(line: 498, column: 5, scope: !774)
!781 = !DILocation(line: 498, column: 40, scope: !774)
!782 = !DILocation(line: 499, column: 5, scope: !774)
!783 = !DILocation(line: 496, column: 7, scope: !771)
!784 = !DILocation(line: 500, column: 11, scope: !774)
!785 = !DILocation(line: 500, column: 4, scope: !774)
!786 = !DILocation(line: 501, column: 2, scope: !771)
!787 = !DILocation(line: 503, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !730, file: !3, line: 503, column: 6)
!789 = !DILocation(line: 503, column: 6, scope: !730)
!790 = !DILocation(line: 504, column: 3, scope: !788)
!791 = !DILocation(line: 506, column: 9, scope: !730)
!792 = !DILocation(line: 506, column: 2, scope: !730)
!793 = !DILocation(line: 507, column: 1, scope: !730)
!794 = distinct !DISubprogram(name: "ni_find_route_source", scope: !3, file: !3, line: 523, type: !795, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!795 = !DISubroutineType(types: !796)
!796 = !{!71, !139, !71, !209}
!797 = !DILocalVariable(name: "src_sel_reg_value", arg: 1, scope: !794, file: !3, line: 523, type: !139)
!798 = !DILocation(line: 523, column: 35, scope: !794)
!799 = !DILocalVariable(name: "dest", arg: 2, scope: !794, file: !3, line: 523, type: !71)
!800 = !DILocation(line: 523, column: 58, scope: !794)
!801 = !DILocalVariable(name: "tables", arg: 3, scope: !794, file: !3, line: 524, type: !209)
!802 = !DILocation(line: 524, column: 35, scope: !794)
!803 = !DILocalVariable(name: "src", scope: !794, file: !3, line: 526, type: !71)
!804 = !DILocation(line: 526, column: 6, scope: !794)
!805 = !DILocation(line: 528, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !794, file: !3, line: 528, column: 6)
!807 = !DILocation(line: 528, column: 15, scope: !806)
!808 = !DILocation(line: 528, column: 6, scope: !794)
!809 = !DILocation(line: 529, column: 3, scope: !806)
!810 = !DILocation(line: 531, column: 9, scope: !794)
!811 = !DILocation(line: 531, column: 7, scope: !794)
!812 = !DILocation(line: 533, column: 6, scope: !813)
!813 = distinct !DILexicalBlock(scope: !794, file: !3, line: 533, column: 6)
!814 = !DILocation(line: 533, column: 11, scope: !813)
!815 = !DILocation(line: 533, column: 15, scope: !813)
!816 = !DILocation(line: 533, column: 18, scope: !813)
!817 = !DILocation(line: 533, column: 23, scope: !813)
!818 = !DILocation(line: 533, column: 6, scope: !794)
!819 = !DILocation(line: 534, column: 3, scope: !813)
!820 = !DILocation(line: 535, column: 11, scope: !821)
!821 = distinct !DILexicalBlock(scope: !794, file: !3, line: 535, column: 2)
!822 = !DILocation(line: 535, column: 7, scope: !821)
!823 = !DILocation(line: 535, column: 16, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !3, line: 535, column: 2)
!825 = !DILocation(line: 535, column: 20, scope: !824)
!826 = !DILocation(line: 535, column: 2, scope: !821)
!827 = !DILocation(line: 536, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !824, file: !3, line: 536, column: 7)
!829 = !DILocation(line: 537, column: 7, scope: !828)
!830 = !DILocation(line: 536, column: 44, scope: !828)
!831 = !DILocation(line: 536, column: 7, scope: !824)
!832 = !DILocation(line: 538, column: 11, scope: !828)
!833 = !DILocation(line: 538, column: 15, scope: !828)
!834 = !DILocation(line: 538, column: 4, scope: !828)
!835 = !DILocation(line: 535, column: 36, scope: !824)
!836 = !DILocation(line: 535, column: 2, scope: !824)
!837 = distinct !{!837, !826, !838}
!838 = !DILocation(line: 538, column: 17, scope: !821)
!839 = !DILocation(line: 539, column: 2, scope: !794)
!840 = !DILocation(line: 540, column: 1, scope: !794)
!841 = distinct !DISubprogram(name: "ni_routes_module_exit", scope: !3, file: !3, line: 552, type: !81, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!842 = !DILocation(line: 554, column: 1, scope: !841)
!843 = distinct !DISubprogram(name: "ni_routes_module_init", scope: !3, file: !3, line: 546, type: !844, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!844 = !DISubroutineType(types: !70)
!845 = !DILocation(line: 548, column: 2, scope: !843)
!846 = !DILocation(line: 549, column: 2, scope: !843)
!847 = distinct !DISubprogram(name: "ni_find_route_values", scope: !3, file: !3, line: 55, type: !848, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!848 = !DISubroutineType(types: !849)
!849 = !{!138, !117}
!850 = !DILocalVariable(name: "device_family", arg: 1, scope: !847, file: !3, line: 55, type: !117)
!851 = !DILocation(line: 55, column: 51, scope: !847)
!852 = !DILocalVariable(name: "rv", scope: !847, file: !3, line: 57, type: !138)
!853 = !DILocation(line: 57, column: 12, scope: !847)
!854 = !DILocalVariable(name: "i", scope: !847, file: !3, line: 58, type: !71)
!855 = !DILocation(line: 58, column: 6, scope: !847)
!856 = !DILocation(line: 60, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !847, file: !3, line: 60, column: 2)
!858 = !DILocation(line: 60, column: 7, scope: !857)
!859 = !DILocation(line: 60, column: 34, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 60, column: 2)
!861 = !DILocation(line: 60, column: 14, scope: !860)
!862 = !DILocation(line: 60, column: 2, scope: !857)
!863 = !DILocation(line: 61, column: 34, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 61, column: 7)
!865 = distinct !DILexicalBlock(scope: !860, file: !3, line: 60, column: 43)
!866 = !DILocation(line: 61, column: 14, scope: !864)
!867 = !DILocation(line: 61, column: 38, scope: !864)
!868 = !DILocation(line: 61, column: 46, scope: !864)
!869 = !DILocation(line: 62, column: 15, scope: !864)
!870 = !DILocation(line: 62, column: 7, scope: !864)
!871 = !DILocation(line: 61, column: 7, scope: !864)
!872 = !DILocation(line: 62, column: 35, scope: !864)
!873 = !DILocation(line: 61, column: 7, scope: !865)
!874 = !DILocation(line: 63, column: 30, scope: !875)
!875 = distinct !DILexicalBlock(scope: !864, file: !3, line: 62, column: 41)
!876 = !DILocation(line: 63, column: 10, scope: !875)
!877 = !DILocation(line: 63, column: 34, scope: !875)
!878 = !DILocation(line: 63, column: 7, scope: !875)
!879 = !DILocation(line: 64, column: 4, scope: !875)
!880 = !DILocation(line: 66, column: 2, scope: !865)
!881 = !DILocation(line: 60, column: 38, scope: !860)
!882 = !DILocation(line: 60, column: 2, scope: !860)
!883 = distinct !{!883, !862, !884}
!884 = !DILocation(line: 66, column: 2, scope: !857)
!885 = !DILocation(line: 67, column: 9, scope: !847)
!886 = !DILocation(line: 67, column: 2, scope: !847)
!887 = distinct !DISubprogram(name: "ni_find_valid_routes", scope: !3, file: !3, line: 74, type: !888, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!888 = !DISubroutineType(types: !889)
!889 = !{!123, !117}
!890 = !DILocalVariable(name: "board_name", arg: 1, scope: !887, file: !3, line: 74, type: !117)
!891 = !DILocation(line: 74, column: 34, scope: !887)
!892 = !DILocalVariable(name: "dr", scope: !887, file: !3, line: 76, type: !123)
!893 = !DILocation(line: 76, column: 33, scope: !887)
!894 = !DILocalVariable(name: "i", scope: !887, file: !3, line: 77, type: !71)
!895 = !DILocation(line: 77, column: 6, scope: !887)
!896 = !DILocation(line: 79, column: 9, scope: !897)
!897 = distinct !DILexicalBlock(scope: !887, file: !3, line: 79, column: 2)
!898 = !DILocation(line: 79, column: 7, scope: !897)
!899 = !DILocation(line: 79, column: 36, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !3, line: 79, column: 2)
!901 = !DILocation(line: 79, column: 14, scope: !900)
!902 = !DILocation(line: 79, column: 2, scope: !897)
!903 = !DILocation(line: 80, column: 36, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 80, column: 7)
!905 = distinct !DILexicalBlock(scope: !900, file: !3, line: 79, column: 45)
!906 = !DILocation(line: 80, column: 14, scope: !904)
!907 = !DILocation(line: 80, column: 40, scope: !904)
!908 = !DILocation(line: 80, column: 48, scope: !904)
!909 = !DILocation(line: 81, column: 15, scope: !904)
!910 = !DILocation(line: 81, column: 7, scope: !904)
!911 = !DILocation(line: 80, column: 7, scope: !904)
!912 = !DILocation(line: 81, column: 32, scope: !904)
!913 = !DILocation(line: 80, column: 7, scope: !905)
!914 = !DILocation(line: 82, column: 31, scope: !915)
!915 = distinct !DILexicalBlock(scope: !904, file: !3, line: 81, column: 38)
!916 = !DILocation(line: 82, column: 9, scope: !915)
!917 = !DILocation(line: 82, column: 7, scope: !915)
!918 = !DILocation(line: 83, column: 4, scope: !915)
!919 = !DILocation(line: 85, column: 2, scope: !905)
!920 = !DILocation(line: 79, column: 40, scope: !900)
!921 = !DILocation(line: 79, column: 2, scope: !900)
!922 = distinct !{!922, !902, !923}
!923 = !DILocation(line: 85, column: 2, scope: !897)
!924 = !DILocation(line: 86, column: 9, scope: !887)
!925 = !DILocation(line: 86, column: 2, scope: !887)
!926 = distinct !DISubprogram(name: "ni_sort_all_device_routes", scope: !3, file: !3, line: 339, type: !81, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!927 = !DILocalVariable(name: "i", scope: !926, file: !3, line: 341, type: !7)
!928 = !DILocation(line: 341, column: 15, scope: !926)
!929 = !DILocation(line: 343, column: 9, scope: !930)
!930 = distinct !DILexicalBlock(scope: !926, file: !3, line: 343, column: 2)
!931 = !DILocation(line: 343, column: 7, scope: !930)
!932 = !DILocation(line: 343, column: 36, scope: !933)
!933 = distinct !DILexicalBlock(scope: !930, file: !3, line: 343, column: 2)
!934 = !DILocation(line: 343, column: 14, scope: !933)
!935 = !DILocation(line: 343, column: 2, scope: !930)
!936 = !DILocation(line: 344, column: 47, scope: !933)
!937 = !DILocation(line: 344, column: 25, scope: !933)
!938 = !DILocation(line: 344, column: 3, scope: !933)
!939 = !DILocation(line: 343, column: 40, scope: !933)
!940 = !DILocation(line: 343, column: 2, scope: !933)
!941 = distinct !{!941, !935, !942}
!942 = !DILocation(line: 344, column: 49, scope: !930)
!943 = !DILocation(line: 345, column: 1, scope: !926)
