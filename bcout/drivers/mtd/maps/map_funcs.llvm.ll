; ModuleID = '../bcout/drivers/mtd/maps/map_funcs.llvm.bc'
source_filename = "drivers/mtd/maps/map_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.map_info = type { i8*, i64, i64, i8*, i8*, i32, i32, i64 (%struct.map_info*, i64)*, void (%struct.map_info*, i8*, i64, i64)*, void (%struct.map_info*, i64, i64)*, void (%struct.map_info*, i64, i8*, i64)*, void (%struct.map_info*, i64, i64)*, void (%struct.map_info*, i32)*, i64, i64, i64, %struct.device_node*, i8*, %struct.mtd_chip_driver* }
%struct.device_node = type opaque
%struct.mtd_chip_driver = type { %struct.mtd_info* (%struct.map_info*)*, void (%struct.mtd_info*)*, %struct.module*, i8*, %struct.list_head }
%struct.mtd_info = type opaque
%struct.module = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.map_word = type { [1 x i64] }

@.str = private unnamed_addr constant [29 x i8] c"drivers/mtd/maps/map_funcs.c\00", align 1
@__UNIQUE_ID_file108 = internal constant [42 x i8] c"map_funcs.file=drivers/mtd/maps/map_funcs\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license109 = internal constant [22 x i8] c"map_funcs.license=GPL\00", section ".modinfo", align 1, !dbg !18
@.str.1 = private unnamed_addr constant [24 x i8] c"include/linux/mtd/map.h\00", align 1
@llvm.used = appending global [2 x i8*] [i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_file108, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license109, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @simple_map_init(%struct.map_info* %map) #0 !dbg !32 {
entry:
  %map.addr = alloca %struct.map_info*, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !130, metadata !DIExpression()), !dbg !131
  br label %do.body, !dbg !132

do.body:                                          ; preds = %entry
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !133
  %bankwidth = getelementptr inbounds %struct.map_info, %struct.map_info* %0, i32 0, i32 6, !dbg !133
  %1 = load i32, i32* %bankwidth, align 4, !dbg !133
  %call = call i32 @map_bankwidth_supported(i32 %1) #4, !dbg !133
  %tobool = icmp ne i32 %call, 0, !dbg !133
  %lnot = xor i1 %tobool, true, !dbg !133
  %lnot1 = xor i1 %lnot, true, !dbg !133
  %lnot2 = xor i1 %lnot1, true, !dbg !133
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !133
  %conv = sext i32 %lnot.ext to i64, !dbg !133
  %tobool3 = icmp ne i64 %conv, 0, !dbg !133
  br i1 %tobool3, label %if.then, label %if.end, !dbg !136

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !133

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !137

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !139

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !137

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 35, i32 0, i64 12) #5, !dbg !141, !srcloc !143
  br label %do.end7, !dbg !141

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !137

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 107) #5, !dbg !144, !srcloc !147
  unreachable, !dbg !148

do.end9:                                          ; No predecessors!
  br label %do.end10, !dbg !137

do.end10:                                         ; preds = %do.end9
  br label %if.end, !dbg !137

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.end11, !dbg !136

do.end11:                                         ; preds = %if.end
  %2 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !149
  %read = getelementptr inbounds %struct.map_info, %struct.map_info* %2, i32 0, i32 7, !dbg !150
  store i64 (%struct.map_info*, i64)* @simple_map_read, i64 (%struct.map_info*, i64)** %read, align 8, !dbg !151
  %3 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !152
  %write = getelementptr inbounds %struct.map_info, %struct.map_info* %3, i32 0, i32 9, !dbg !153
  store void (%struct.map_info*, i64, i64)* @simple_map_write, void (%struct.map_info*, i64, i64)** %write, align 8, !dbg !154
  %4 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !155
  %copy_from = getelementptr inbounds %struct.map_info, %struct.map_info* %4, i32 0, i32 8, !dbg !156
  store void (%struct.map_info*, i8*, i64, i64)* @simple_map_copy_from, void (%struct.map_info*, i8*, i64, i64)** %copy_from, align 8, !dbg !157
  %5 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !158
  %copy_to = getelementptr inbounds %struct.map_info, %struct.map_info* %5, i32 0, i32 10, !dbg !159
  store void (%struct.map_info*, i64, i8*, i64)* @simple_map_copy_to, void (%struct.map_info*, i64, i8*, i64)** %copy_to, align 8, !dbg !160
  ret void, !dbg !161
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @map_bankwidth_supported(i32 %w) #0 !dbg !162 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %w.addr, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = load i32, i32* %w.addr, align 4, !dbg !167
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !168

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 1, i32* %retval, align 4, !dbg !169
  br label %return, !dbg !169

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !171
  br label %return, !dbg !171

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !172
  ret i32 %1, !dbg !172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @simple_map_read(%struct.map_info* %map, i64 %ofs) #0 !dbg !173 {
entry:
  %retval = alloca %union.map_word, align 8
  %map.addr = alloca %struct.map_info*, align 8
  %ofs.addr = alloca i64, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !174, metadata !DIExpression()), !dbg !175
  store i64 %ofs, i64* %ofs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ofs.addr, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !178
  %1 = load i64, i64* %ofs.addr, align 8, !dbg !179
  %call = call i64 @inline_map_read(%struct.map_info* %0, i64 %1) #4, !dbg !180
  %coerce.dive = getelementptr inbounds %union.map_word, %union.map_word* %retval, i32 0, i32 0, !dbg !180
  %2 = bitcast [1 x i64]* %coerce.dive to i64*, !dbg !180
  store i64 %call, i64* %2, align 8, !dbg !180
  %coerce.dive1 = getelementptr inbounds %union.map_word, %union.map_word* %retval, i32 0, i32 0, !dbg !181
  %3 = bitcast [1 x i64]* %coerce.dive1 to i64*, !dbg !181
  %4 = load i64, i64* %3, align 8, !dbg !181
  ret i64 %4, !dbg !181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @simple_map_write(%struct.map_info* %map, i64 %datum.coerce, i64 %ofs) #0 !dbg !182 {
entry:
  %datum = alloca %union.map_word, align 8
  %map.addr = alloca %struct.map_info*, align 8
  %ofs.addr = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %union.map_word, %union.map_word* %datum, i32 0, i32 0
  %0 = bitcast [1 x i64]* %coerce.dive to i64*
  store i64 %datum.coerce, i64* %0, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata %union.map_word* %datum, metadata !185, metadata !DIExpression()), !dbg !186
  store i64 %ofs, i64* %ofs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ofs.addr, metadata !187, metadata !DIExpression()), !dbg !188
  %1 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !189
  %2 = load i64, i64* %ofs.addr, align 8, !dbg !190
  %coerce.dive1 = getelementptr inbounds %union.map_word, %union.map_word* %datum, i32 0, i32 0, !dbg !191
  %3 = bitcast [1 x i64]* %coerce.dive1 to i64*, !dbg !191
  %4 = load i64, i64* %3, align 8, !dbg !191
  call void @inline_map_write(%struct.map_info* %1, i64 %4, i64 %2) #4, !dbg !191
  ret void, !dbg !192
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @simple_map_copy_from(%struct.map_info* %map, i8* %to, i64 %from, i64 %len) #0 !dbg !193 {
entry:
  %map.addr = alloca %struct.map_info*, align 8
  %to.addr = alloca i8*, align 8
  %from.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !194, metadata !DIExpression()), !dbg !195
  store i8* %to, i8** %to.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr, metadata !196, metadata !DIExpression()), !dbg !197
  store i64 %from, i64* %from.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %from.addr, metadata !198, metadata !DIExpression()), !dbg !199
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !202
  %1 = load i8*, i8** %to.addr, align 8, !dbg !203
  %2 = load i64, i64* %from.addr, align 8, !dbg !204
  %3 = load i64, i64* %len.addr, align 8, !dbg !205
  call void @inline_map_copy_from(%struct.map_info* %0, i8* %1, i64 %2, i64 %3) #4, !dbg !206
  ret void, !dbg !207
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @simple_map_copy_to(%struct.map_info* %map, i64 %to, i8* %from, i64 %len) #0 !dbg !208 {
entry:
  %map.addr = alloca %struct.map_info*, align 8
  %to.addr = alloca i64, align 8
  %from.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !209, metadata !DIExpression()), !dbg !210
  store i64 %to, i64* %to.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %to.addr, metadata !211, metadata !DIExpression()), !dbg !212
  store i8* %from, i8** %from.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr, metadata !213, metadata !DIExpression()), !dbg !214
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !217
  %1 = load i64, i64* %to.addr, align 8, !dbg !218
  %2 = load i8*, i8** %from.addr, align 8, !dbg !219
  %3 = load i64, i64* %len.addr, align 8, !dbg !220
  call void @inline_map_copy_to(%struct.map_info* %0, i64 %1, i8* %2, i64 %3) #4, !dbg !221
  ret void, !dbg !222
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @inline_map_read(%struct.map_info* %map, i64 %ofs) #0 !dbg !223 {
entry:
  %retval = alloca %union.map_word, align 8
  %map.addr = alloca %struct.map_info*, align 8
  %ofs.addr = alloca i64, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !224, metadata !DIExpression()), !dbg !225
  store i64 %ofs, i64* %ofs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ofs.addr, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata %union.map_word* %retval, metadata !228, metadata !DIExpression()), !dbg !229
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !230
  %bankwidth = getelementptr inbounds %struct.map_info, %struct.map_info* %0, i32 0, i32 6, !dbg !230
  %1 = load i32, i32* %bankwidth, align 4, !dbg !230
  %cmp = icmp eq i32 %1, 1, !dbg !230
  br i1 %cmp, label %if.then, label %if.else, !dbg !232

if.then:                                          ; preds = %entry
  %2 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !233
  %virt = getelementptr inbounds %struct.map_info, %struct.map_info* %2, i32 0, i32 3, !dbg !234
  %3 = load i8*, i8** %virt, align 8, !dbg !234
  %4 = load i64, i64* %ofs.addr, align 8, !dbg !235
  %add.ptr = getelementptr i8, i8* %3, i64 %4, !dbg !236
  %call = call zeroext i8 @__readb(i8* %add.ptr) #4, !dbg !237
  %conv = zext i8 %call to i64, !dbg !237
  %x = bitcast %union.map_word* %retval to [1 x i64]*, !dbg !238
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %x, i64 0, i64 0, !dbg !239
  store i64 %conv, i64* %arrayidx, align 8, !dbg !240
  br label %if.end30, !dbg !239

if.else:                                          ; preds = %entry
  %5 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !241
  %bankwidth1 = getelementptr inbounds %struct.map_info, %struct.map_info* %5, i32 0, i32 6, !dbg !241
  %6 = load i32, i32* %bankwidth1, align 4, !dbg !241
  %cmp2 = icmp eq i32 %6, 2, !dbg !241
  br i1 %cmp2, label %if.then4, label %if.else11, !dbg !243

if.then4:                                         ; preds = %if.else
  %7 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !244
  %virt5 = getelementptr inbounds %struct.map_info, %struct.map_info* %7, i32 0, i32 3, !dbg !245
  %8 = load i8*, i8** %virt5, align 8, !dbg !245
  %9 = load i64, i64* %ofs.addr, align 8, !dbg !246
  %add.ptr6 = getelementptr i8, i8* %8, i64 %9, !dbg !247
  %call7 = call zeroext i16 @__readw(i8* %add.ptr6) #4, !dbg !248
  %conv8 = zext i16 %call7 to i64, !dbg !248
  %x9 = bitcast %union.map_word* %retval to [1 x i64]*, !dbg !249
  %arrayidx10 = getelementptr [1 x i64], [1 x i64]* %x9, i64 0, i64 0, !dbg !250
  store i64 %conv8, i64* %arrayidx10, align 8, !dbg !251
  br label %if.end29, !dbg !250

if.else11:                                        ; preds = %if.else
  %10 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !252
  %bankwidth12 = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 6, !dbg !252
  %11 = load i32, i32* %bankwidth12, align 4, !dbg !252
  %cmp13 = icmp eq i32 %11, 4, !dbg !252
  br i1 %cmp13, label %if.then15, label %if.else22, !dbg !254

if.then15:                                        ; preds = %if.else11
  %12 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !255
  %virt16 = getelementptr inbounds %struct.map_info, %struct.map_info* %12, i32 0, i32 3, !dbg !256
  %13 = load i8*, i8** %virt16, align 8, !dbg !256
  %14 = load i64, i64* %ofs.addr, align 8, !dbg !257
  %add.ptr17 = getelementptr i8, i8* %13, i64 %14, !dbg !258
  %call18 = call i32 @__readl(i8* %add.ptr17) #4, !dbg !259
  %conv19 = zext i32 %call18 to i64, !dbg !259
  %x20 = bitcast %union.map_word* %retval to [1 x i64]*, !dbg !260
  %arrayidx21 = getelementptr [1 x i64], [1 x i64]* %x20, i64 0, i64 0, !dbg !261
  store i64 %conv19, i64* %arrayidx21, align 8, !dbg !262
  br label %if.end, !dbg !261

if.else22:                                        ; preds = %if.else11
  br label %do.body, !dbg !263

do.body:                                          ; preds = %if.else22
  br label %do.body23, !dbg !266

do.body23:                                        ; preds = %do.body
  br label %do.end, !dbg !268

do.end:                                           ; preds = %do.body23
  br label %do.body24, !dbg !266

do.body24:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 406, i32 0, i64 12) #5, !dbg !270, !srcloc !272
  br label %do.end25, !dbg !270

do.end25:                                         ; preds = %do.body24
  br label %do.body26, !dbg !266

do.body26:                                        ; preds = %do.end25
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #5, !dbg !273, !srcloc !276
  unreachable, !dbg !277

do.end27:                                         ; No predecessors!
  br label %do.end28, !dbg !266

do.end28:                                         ; preds = %do.end27
  br label %if.end

if.end:                                           ; preds = %do.end28, %if.then15
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then4
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  %coerce.dive = getelementptr inbounds %union.map_word, %union.map_word* %retval, i32 0, i32 0, !dbg !278
  %15 = bitcast [1 x i64]* %coerce.dive to i64*, !dbg !278
  %16 = load i64, i64* %15, align 8, !dbg !278
  ret i64 %16, !dbg !278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @__readb(i8* %addr) #0 !dbg !279 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !288, metadata !DIExpression()), !dbg !287
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !287
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(i8* %0) #5, !dbg !287, !srcloc !289
  store i8 %1, i8* %ret, align 1, !dbg !287
  %2 = load i8, i8* %ret, align 1, !dbg !287
  ret i8 %2, !dbg !287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @__readw(i8* %addr) #0 !dbg !290 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !295, metadata !DIExpression()), !dbg !294
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !294
  %1 = bitcast i8* %0 to i16*, !dbg !294
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i16* %1) #5, !dbg !294, !srcloc !296
  store i16 %2, i16* %ret, align 2, !dbg !294
  %3 = load i16, i16* %ret, align 2, !dbg !294
  ret i16 %3, !dbg !294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__readl(i8* %addr) #0 !dbg !297 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !302, metadata !DIExpression()), !dbg !301
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !301
  %1 = bitcast i8* %0 to i32*, !dbg !301
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %1) #5, !dbg !301, !srcloc !303
  store i32 %2, i32* %ret, align 4, !dbg !301
  %3 = load i32, i32* %ret, align 4, !dbg !301
  ret i32 %3, !dbg !301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @inline_map_write(%struct.map_info* %map, i64 %datum.coerce, i64 %ofs) #0 !dbg !304 {
entry:
  %datum = alloca %union.map_word, align 8
  %map.addr = alloca %struct.map_info*, align 8
  %ofs.addr = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %union.map_word, %union.map_word* %datum, i32 0, i32 0
  %0 = bitcast [1 x i64]* %coerce.dive to i64*
  store i64 %datum.coerce, i64* %0, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !305, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata %union.map_word* %datum, metadata !307, metadata !DIExpression()), !dbg !308
  store i64 %ofs, i64* %ofs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ofs.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %1 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !311
  %bankwidth = getelementptr inbounds %struct.map_info, %struct.map_info* %1, i32 0, i32 6, !dbg !311
  %2 = load i32, i32* %bankwidth, align 4, !dbg !311
  %cmp = icmp eq i32 %2, 1, !dbg !311
  br i1 %cmp, label %if.then, label %if.else, !dbg !313

if.then:                                          ; preds = %entry
  %x = bitcast %union.map_word* %datum to [1 x i64]*, !dbg !314
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %x, i64 0, i64 0, !dbg !315
  %3 = load i64, i64* %arrayidx, align 8, !dbg !315
  %conv = trunc i64 %3 to i8, !dbg !315
  %4 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !316
  %virt = getelementptr inbounds %struct.map_info, %struct.map_info* %4, i32 0, i32 3, !dbg !317
  %5 = load i8*, i8** %virt, align 8, !dbg !317
  %6 = load i64, i64* %ofs.addr, align 8, !dbg !318
  %add.ptr = getelementptr i8, i8* %5, i64 %6, !dbg !319
  call void @__writeb(i8 zeroext %conv, i8* %add.ptr) #4, !dbg !320
  br label %if.end28, !dbg !320

if.else:                                          ; preds = %entry
  %7 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !321
  %bankwidth1 = getelementptr inbounds %struct.map_info, %struct.map_info* %7, i32 0, i32 6, !dbg !321
  %8 = load i32, i32* %bankwidth1, align 4, !dbg !321
  %cmp2 = icmp eq i32 %8, 2, !dbg !321
  br i1 %cmp2, label %if.then4, label %if.else10, !dbg !323

if.then4:                                         ; preds = %if.else
  %x5 = bitcast %union.map_word* %datum to [1 x i64]*, !dbg !324
  %arrayidx6 = getelementptr [1 x i64], [1 x i64]* %x5, i64 0, i64 0, !dbg !325
  %9 = load i64, i64* %arrayidx6, align 8, !dbg !325
  %conv7 = trunc i64 %9 to i16, !dbg !325
  %10 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !326
  %virt8 = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 3, !dbg !327
  %11 = load i8*, i8** %virt8, align 8, !dbg !327
  %12 = load i64, i64* %ofs.addr, align 8, !dbg !328
  %add.ptr9 = getelementptr i8, i8* %11, i64 %12, !dbg !329
  call void @__writew(i16 zeroext %conv7, i8* %add.ptr9) #4, !dbg !330
  br label %if.end27, !dbg !330

if.else10:                                        ; preds = %if.else
  %13 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !331
  %bankwidth11 = getelementptr inbounds %struct.map_info, %struct.map_info* %13, i32 0, i32 6, !dbg !331
  %14 = load i32, i32* %bankwidth11, align 4, !dbg !331
  %cmp12 = icmp eq i32 %14, 4, !dbg !331
  br i1 %cmp12, label %if.then14, label %if.else20, !dbg !333

if.then14:                                        ; preds = %if.else10
  %x15 = bitcast %union.map_word* %datum to [1 x i64]*, !dbg !334
  %arrayidx16 = getelementptr [1 x i64], [1 x i64]* %x15, i64 0, i64 0, !dbg !335
  %15 = load i64, i64* %arrayidx16, align 8, !dbg !335
  %conv17 = trunc i64 %15 to i32, !dbg !335
  %16 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !336
  %virt18 = getelementptr inbounds %struct.map_info, %struct.map_info* %16, i32 0, i32 3, !dbg !337
  %17 = load i8*, i8** %virt18, align 8, !dbg !337
  %18 = load i64, i64* %ofs.addr, align 8, !dbg !338
  %add.ptr19 = getelementptr i8, i8* %17, i64 %18, !dbg !339
  call void @__writel(i32 %conv17, i8* %add.ptr19) #4, !dbg !340
  br label %if.end, !dbg !340

if.else20:                                        ; preds = %if.else10
  br label %do.body, !dbg !341

do.body:                                          ; preds = %if.else20
  br label %do.body21, !dbg !344

do.body21:                                        ; preds = %do.body
  br label %do.end, !dbg !346

do.end:                                           ; preds = %do.body21
  br label %do.body22, !dbg !344

do.body22:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 426, i32 0, i64 12) #5, !dbg !348, !srcloc !350
  br label %do.end23, !dbg !348

do.end23:                                         ; preds = %do.body22
  br label %do.body24, !dbg !344

do.body24:                                        ; preds = %do.end23
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #5, !dbg !351, !srcloc !354
  unreachable, !dbg !355

do.end25:                                         ; No predecessors!
  br label %do.end26, !dbg !344

do.end26:                                         ; preds = %do.end25
  br label %if.end

if.end:                                           ; preds = %do.end26, %if.then14
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then4
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !356, !srcloc !357
  ret void, !dbg !358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writeb(i8 zeroext %val, i8* %addr) #0 !dbg !359 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !363, metadata !DIExpression()), !dbg !364
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !365, metadata !DIExpression()), !dbg !364
  %0 = load i8, i8* %val.addr, align 1, !dbg !364
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !364
  call void asm sideeffect "movb $0,$1", "q,*m,~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #5, !dbg !364, !srcloc !366
  ret void, !dbg !364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writew(i16 zeroext %val, i8* %addr) #0 !dbg !367 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !370, metadata !DIExpression()), !dbg !371
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !372, metadata !DIExpression()), !dbg !371
  %0 = load i16, i16* %val.addr, align 2, !dbg !371
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !371
  %2 = bitcast i8* %1 to i16*, !dbg !371
  call void asm sideeffect "movw $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #5, !dbg !371, !srcloc !373
  ret void, !dbg !371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__writel(i32 %val, i8* %addr) #0 !dbg !374 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !377, metadata !DIExpression()), !dbg !378
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !379, metadata !DIExpression()), !dbg !378
  %0 = load i32, i32* %val.addr, align 4, !dbg !378
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !378
  %2 = bitcast i8* %1 to i32*, !dbg !378
  call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #5, !dbg !378, !srcloc !380
  ret void, !dbg !378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @inline_map_copy_from(%struct.map_info* %map, i8* %to, i64 %from, i64 %len) #0 !dbg !381 {
entry:
  %map.addr = alloca %struct.map_info*, align 8
  %to.addr = alloca i8*, align 8
  %from.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !382, metadata !DIExpression()), !dbg !383
  store i8* %to, i8** %to.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr, metadata !384, metadata !DIExpression()), !dbg !385
  store i64 %from, i64* %from.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %from.addr, metadata !386, metadata !DIExpression()), !dbg !387
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !390
  %cached = getelementptr inbounds %struct.map_info, %struct.map_info* %0, i32 0, i32 4, !dbg !392
  %1 = load i8*, i8** %cached, align 8, !dbg !392
  %tobool = icmp ne i8* %1, null, !dbg !390
  br i1 %tobool, label %if.then, label %if.else, !dbg !393

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %to.addr, align 8, !dbg !394
  %3 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !395
  %cached1 = getelementptr inbounds %struct.map_info, %struct.map_info* %3, i32 0, i32 4, !dbg !396
  %4 = load i8*, i8** %cached1, align 8, !dbg !396
  %5 = load i64, i64* %from.addr, align 8, !dbg !397
  %add.ptr = getelementptr i8, i8* %4, i64 %5, !dbg !398
  %6 = load i64, i64* %len.addr, align 8, !dbg !399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %add.ptr, i64 %6, i1 false), !dbg !400
  br label %if.end, !dbg !400

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %to.addr, align 8, !dbg !401
  %8 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !402
  %virt = getelementptr inbounds %struct.map_info, %struct.map_info* %8, i32 0, i32 3, !dbg !403
  %9 = load i8*, i8** %virt, align 8, !dbg !403
  %10 = load i64, i64* %from.addr, align 8, !dbg !404
  %add.ptr2 = getelementptr i8, i8* %9, i64 %10, !dbg !405
  %11 = load i64, i64* %len.addr, align 8, !dbg !406
  call void @memcpy_fromio(i8* %7, i8* %add.ptr2, i64 %11) #4, !dbg !407
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !408
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local void @memcpy_fromio(i8*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @inline_map_copy_to(%struct.map_info* %map, i64 %to, i8* %from, i64 %len) #0 !dbg !409 {
entry:
  %map.addr = alloca %struct.map_info*, align 8
  %to.addr = alloca i64, align 8
  %from.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !410, metadata !DIExpression()), !dbg !411
  store i64 %to, i64* %to.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %to.addr, metadata !412, metadata !DIExpression()), !dbg !413
  store i8* %from, i8** %from.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr, metadata !414, metadata !DIExpression()), !dbg !415
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !418
  %virt = getelementptr inbounds %struct.map_info, %struct.map_info* %0, i32 0, i32 3, !dbg !419
  %1 = load i8*, i8** %virt, align 8, !dbg !419
  %2 = load i64, i64* %to.addr, align 8, !dbg !420
  %add.ptr = getelementptr i8, i8* %1, i64 %2, !dbg !421
  %3 = load i8*, i8** %from.addr, align 8, !dbg !422
  %4 = load i64, i64* %len.addr, align 8, !dbg !423
  call void @memcpy_toio(i8* %add.ptr, i8* %3, i64 %4) #4, !dbg !424
  ret void, !dbg !425
}

; Function Attrs: noredzone
declare dso_local void @memcpy_toio(i8*, i8*, i64) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file108", scope: !2, file: !3, line: 44, type: !24, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/maps/map_funcs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !9, !12, !15}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !8)
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!11 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!0, !18}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license109", scope: !2, file: !3, line: 44, type: !20, isLocal: true, isDefinition: true, align: 8)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 176, elements: !22)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!22 = !{!23}
!23 = !DISubrange(count: 22)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 336, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 42)
!27 = !{i32 7, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"Code Model", i32 2}
!31 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!32 = distinct !DISubprogram(name: "simple_map_init", scope: !3, file: !3, line: 33, type: !33, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "map_info", file: !37, line: 191, size: 1152, elements: !38)
!37 = !DIFile(filename: "./include/linux/mtd/map.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !41, !43, !52, !54, !55, !57, !58, !69, !78, !83, !89, !93, !97, !98, !99, !100, !104, !105}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !36, file: !37, line: 192, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !36, file: !37, line: 193, baseType: !42, size: 64, offset: 64)
!42 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !36, file: !37, line: 194, baseType: !44, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !45, line: 158, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !45, line: 153, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !48, line: 23, baseType: !49)
!48 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !50, line: 31, baseType: !51)
!50 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!51 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "virt", scope: !36, file: !37, line: 197, baseType: !53, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !36, file: !37, line: 198, baseType: !53, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !36, file: !37, line: 200, baseType: !56, size: 32, offset: 320)
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "bankwidth", scope: !36, file: !37, line: 201, baseType: !56, size: 32, offset: 352)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !36, file: !37, line: 207, baseType: !59, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !35, !42}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "map_word", file: !37, line: 171, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !37, line: 169, size: 64, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !63, file: !37, line: 170, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "copy_from", scope: !36, file: !37, line: 208, baseType: !70, size: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !35, !53, !42, !73}
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !45, line: 60, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !75, line: 73, baseType: !76)
!75 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !75, line: 15, baseType: !77)
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !36, file: !37, line: 210, baseType: !79, size: 64, offset: 512)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !35, !82, !42}
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to", scope: !36, file: !37, line: 211, baseType: !84, size: 64, offset: 576)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !35, !42, !87, !73}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "inval_cache", scope: !36, file: !37, line: 222, baseType: !90, size: 64, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !35, !42, !73}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "set_vpp", scope: !36, file: !37, line: 229, baseType: !94, size: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !35, !56}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pfow_base", scope: !36, file: !37, line: 231, baseType: !42, size: 64, offset: 768)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "map_priv_1", scope: !36, file: !37, line: 232, baseType: !42, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "map_priv_2", scope: !36, file: !37, line: 233, baseType: !42, size: 64, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !36, file: !37, line: 234, baseType: !101, size: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !103, line: 14, flags: DIFlagFwdDecl)
!103 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "fldrv_priv", scope: !36, file: !37, line: 235, baseType: !53, size: 64, offset: 1024)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "fldrv", scope: !36, file: !37, line: 236, baseType: !106, size: 64, offset: 1088)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_chip_driver", file: !37, line: 239, size: 384, elements: !108)
!108 = !{!109, !115, !119, !123, !124}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !107, file: !37, line: 240, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !35}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !37, line: 240, flags: DIFlagFwdDecl)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !107, file: !37, line: 241, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !113}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !107, file: !37, line: 242, baseType: !120, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !122, line: 76, flags: DIFlagFwdDecl)
!122 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !107, file: !37, line: 243, baseType: !15, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !107, file: !37, line: 244, baseType: !125, size: 128, offset: 256)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !45, line: 178, size: 128, elements: !126)
!126 = !{!127, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !45, line: 179, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !45, line: 179, baseType: !128, size: 64, offset: 64)
!130 = !DILocalVariable(name: "map", arg: 1, scope: !32, file: !3, line: 33, type: !35)
!131 = !DILocation(line: 33, column: 39, scope: !32)
!132 = !DILocation(line: 35, column: 2, scope: !32)
!133 = !DILocation(line: 35, column: 2, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !3, line: 35, column: 2)
!135 = distinct !DILexicalBlock(scope: !32, file: !3, line: 35, column: 2)
!136 = !DILocation(line: 35, column: 2, scope: !135)
!137 = !DILocation(line: 35, column: 2, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !3, line: 35, column: 2)
!139 = !DILocation(line: 35, column: 2, scope: !140)
!140 = distinct !DILexicalBlock(scope: !138, file: !3, line: 35, column: 2)
!141 = !DILocation(line: 35, column: 2, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !3, line: 35, column: 2)
!143 = !{i32 -2144213115, i32 -2144213086, i32 -2144213040, i32 -2144212982, i32 -2144212928, i32 -2144212874, i32 -2144212819, i32 -2144212788}
!144 = !DILocation(line: 35, column: 2, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 35, column: 2)
!146 = distinct !DILexicalBlock(scope: !138, file: !3, line: 35, column: 2)
!147 = !{i32 -2144212338, i32 -2144212331, i32 -2144212277, i32 -2144212246, i32 -2144212216}
!148 = !DILocation(line: 35, column: 2, scope: !146)
!149 = !DILocation(line: 37, column: 2, scope: !32)
!150 = !DILocation(line: 37, column: 7, scope: !32)
!151 = !DILocation(line: 37, column: 12, scope: !32)
!152 = !DILocation(line: 38, column: 2, scope: !32)
!153 = !DILocation(line: 38, column: 7, scope: !32)
!154 = !DILocation(line: 38, column: 13, scope: !32)
!155 = !DILocation(line: 39, column: 2, scope: !32)
!156 = !DILocation(line: 39, column: 7, scope: !32)
!157 = !DILocation(line: 39, column: 17, scope: !32)
!158 = !DILocation(line: 40, column: 2, scope: !32)
!159 = !DILocation(line: 40, column: 7, scope: !32)
!160 = !DILocation(line: 40, column: 15, scope: !32)
!161 = !DILocation(line: 41, column: 1, scope: !32)
!162 = distinct !DISubprogram(name: "map_bankwidth_supported", scope: !37, file: !37, line: 139, type: !163, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!163 = !DISubroutineType(types: !164)
!164 = !{!56, !56}
!165 = !DILocalVariable(name: "w", arg: 1, scope: !162, file: !37, line: 139, type: !56)
!166 = !DILocation(line: 139, column: 47, scope: !162)
!167 = !DILocation(line: 141, column: 10, scope: !162)
!168 = !DILocation(line: 141, column: 2, scope: !162)
!169 = !DILocation(line: 160, column: 3, scope: !170)
!170 = distinct !DILexicalBlock(scope: !162, file: !37, line: 141, column: 13)
!171 = !DILocation(line: 163, column: 3, scope: !170)
!172 = !DILocation(line: 165, column: 1, scope: !162)
!173 = distinct !DISubprogram(name: "simple_map_read", scope: !3, file: !3, line: 13, type: !60, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!174 = !DILocalVariable(name: "map", arg: 1, scope: !173, file: !3, line: 13, type: !35)
!175 = !DILocation(line: 13, column: 59, scope: !173)
!176 = !DILocalVariable(name: "ofs", arg: 2, scope: !173, file: !3, line: 13, type: !42)
!177 = !DILocation(line: 13, column: 78, scope: !173)
!178 = !DILocation(line: 15, column: 25, scope: !173)
!179 = !DILocation(line: 15, column: 30, scope: !173)
!180 = !DILocation(line: 15, column: 9, scope: !173)
!181 = !DILocation(line: 15, column: 2, scope: !173)
!182 = distinct !DISubprogram(name: "simple_map_write", scope: !3, file: !3, line: 18, type: !80, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!183 = !DILocalVariable(name: "map", arg: 1, scope: !182, file: !3, line: 18, type: !35)
!184 = !DILocation(line: 18, column: 56, scope: !182)
!185 = !DILocalVariable(name: "datum", arg: 2, scope: !182, file: !3, line: 18, type: !82)
!186 = !DILocation(line: 18, column: 76, scope: !182)
!187 = !DILocalVariable(name: "ofs", arg: 3, scope: !182, file: !3, line: 18, type: !42)
!188 = !DILocation(line: 18, column: 97, scope: !182)
!189 = !DILocation(line: 20, column: 19, scope: !182)
!190 = !DILocation(line: 20, column: 31, scope: !182)
!191 = !DILocation(line: 20, column: 2, scope: !182)
!192 = !DILocation(line: 21, column: 1, scope: !182)
!193 = distinct !DISubprogram(name: "simple_map_copy_from", scope: !3, file: !3, line: 23, type: !71, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!194 = !DILocalVariable(name: "map", arg: 1, scope: !193, file: !3, line: 23, type: !35)
!195 = !DILocation(line: 23, column: 60, scope: !193)
!196 = !DILocalVariable(name: "to", arg: 2, scope: !193, file: !3, line: 23, type: !53)
!197 = !DILocation(line: 23, column: 71, scope: !193)
!198 = !DILocalVariable(name: "from", arg: 3, scope: !193, file: !3, line: 23, type: !42)
!199 = !DILocation(line: 23, column: 89, scope: !193)
!200 = !DILocalVariable(name: "len", arg: 4, scope: !193, file: !3, line: 23, type: !73)
!201 = !DILocation(line: 23, column: 103, scope: !193)
!202 = !DILocation(line: 25, column: 23, scope: !193)
!203 = !DILocation(line: 25, column: 28, scope: !193)
!204 = !DILocation(line: 25, column: 32, scope: !193)
!205 = !DILocation(line: 25, column: 38, scope: !193)
!206 = !DILocation(line: 25, column: 2, scope: !193)
!207 = !DILocation(line: 26, column: 1, scope: !193)
!208 = distinct !DISubprogram(name: "simple_map_copy_to", scope: !3, file: !3, line: 28, type: !85, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!209 = !DILocalVariable(name: "map", arg: 1, scope: !208, file: !3, line: 28, type: !35)
!210 = !DILocation(line: 28, column: 58, scope: !208)
!211 = !DILocalVariable(name: "to", arg: 2, scope: !208, file: !3, line: 28, type: !42)
!212 = !DILocation(line: 28, column: 77, scope: !208)
!213 = !DILocalVariable(name: "from", arg: 3, scope: !208, file: !3, line: 28, type: !87)
!214 = !DILocation(line: 28, column: 93, scope: !208)
!215 = !DILocalVariable(name: "len", arg: 4, scope: !208, file: !3, line: 28, type: !73)
!216 = !DILocation(line: 28, column: 107, scope: !208)
!217 = !DILocation(line: 30, column: 21, scope: !208)
!218 = !DILocation(line: 30, column: 26, scope: !208)
!219 = !DILocation(line: 30, column: 30, scope: !208)
!220 = !DILocation(line: 30, column: 36, scope: !208)
!221 = !DILocation(line: 30, column: 2, scope: !208)
!222 = !DILocation(line: 31, column: 1, scope: !208)
!223 = distinct !DISubprogram(name: "inline_map_read", scope: !37, file: !37, line: 389, type: !60, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!224 = !DILocalVariable(name: "map", arg: 1, scope: !223, file: !37, line: 389, type: !35)
!225 = !DILocation(line: 389, column: 57, scope: !223)
!226 = !DILocalVariable(name: "ofs", arg: 2, scope: !223, file: !37, line: 389, type: !42)
!227 = !DILocation(line: 389, column: 76, scope: !223)
!228 = !DILocalVariable(name: "r", scope: !223, file: !37, line: 391, type: !62)
!229 = !DILocation(line: 391, column: 11, scope: !223)
!230 = !DILocation(line: 393, column: 6, scope: !231)
!231 = distinct !DILexicalBlock(scope: !223, file: !37, line: 393, column: 6)
!232 = !DILocation(line: 393, column: 6, scope: !223)
!233 = !DILocation(line: 394, column: 24, scope: !231)
!234 = !DILocation(line: 394, column: 29, scope: !231)
!235 = !DILocation(line: 394, column: 36, scope: !231)
!236 = !DILocation(line: 394, column: 34, scope: !231)
!237 = !DILocation(line: 394, column: 12, scope: !231)
!238 = !DILocation(line: 394, column: 5, scope: !231)
!239 = !DILocation(line: 394, column: 3, scope: !231)
!240 = !DILocation(line: 394, column: 10, scope: !231)
!241 = !DILocation(line: 395, column: 11, scope: !242)
!242 = distinct !DILexicalBlock(scope: !231, file: !37, line: 395, column: 11)
!243 = !DILocation(line: 395, column: 11, scope: !231)
!244 = !DILocation(line: 396, column: 24, scope: !242)
!245 = !DILocation(line: 396, column: 29, scope: !242)
!246 = !DILocation(line: 396, column: 36, scope: !242)
!247 = !DILocation(line: 396, column: 34, scope: !242)
!248 = !DILocation(line: 396, column: 12, scope: !242)
!249 = !DILocation(line: 396, column: 5, scope: !242)
!250 = !DILocation(line: 396, column: 3, scope: !242)
!251 = !DILocation(line: 396, column: 10, scope: !242)
!252 = !DILocation(line: 397, column: 11, scope: !253)
!253 = distinct !DILexicalBlock(scope: !242, file: !37, line: 397, column: 11)
!254 = !DILocation(line: 397, column: 11, scope: !242)
!255 = !DILocation(line: 398, column: 24, scope: !253)
!256 = !DILocation(line: 398, column: 29, scope: !253)
!257 = !DILocation(line: 398, column: 36, scope: !253)
!258 = !DILocation(line: 398, column: 34, scope: !253)
!259 = !DILocation(line: 398, column: 12, scope: !253)
!260 = !DILocation(line: 398, column: 5, scope: !253)
!261 = !DILocation(line: 398, column: 3, scope: !253)
!262 = !DILocation(line: 398, column: 10, scope: !253)
!263 = !DILocation(line: 406, column: 3, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !37, line: 403, column: 11)
!265 = distinct !DILexicalBlock(scope: !253, file: !37, line: 400, column: 11)
!266 = !DILocation(line: 406, column: 3, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !37, line: 406, column: 3)
!268 = !DILocation(line: 406, column: 3, scope: !269)
!269 = distinct !DILexicalBlock(scope: !267, file: !37, line: 406, column: 3)
!270 = !DILocation(line: 406, column: 3, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !37, line: 406, column: 3)
!272 = !{i32 -2144218803, i32 -2144218774, i32 -2144218728, i32 -2144218670, i32 -2144218616, i32 -2144218562, i32 -2144218507, i32 -2144218476}
!273 = !DILocation(line: 406, column: 3, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !37, line: 406, column: 3)
!275 = distinct !DILexicalBlock(scope: !267, file: !37, line: 406, column: 3)
!276 = !{i32 -2144218030, i32 -2144218023, i32 -2144217969, i32 -2144217938, i32 -2144217908}
!277 = !DILocation(line: 406, column: 3, scope: !275)
!278 = !DILocation(line: 408, column: 2, scope: !223)
!279 = distinct !DISubprogram(name: "__readb", scope: !280, file: !280, line: 61, type: !281, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!280 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!281 = !DISubroutineType(types: !282)
!282 = !{!8, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!286 = !DILocalVariable(name: "addr", arg: 1, scope: !279, file: !280, line: 61, type: !283)
!287 = !DILocation(line: 61, column: 1, scope: !279)
!288 = !DILocalVariable(name: "ret", scope: !279, file: !280, line: 61, type: !8)
!289 = !{i32 -2144312540}
!290 = distinct !DISubprogram(name: "__readw", scope: !280, file: !280, line: 62, type: !291, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!291 = !DISubroutineType(types: !292)
!292 = !{!11, !283}
!293 = !DILocalVariable(name: "addr", arg: 1, scope: !290, file: !280, line: 62, type: !283)
!294 = !DILocation(line: 62, column: 1, scope: !290)
!295 = !DILocalVariable(name: "ret", scope: !290, file: !280, line: 62, type: !11)
!296 = !{i32 -2144312134}
!297 = distinct !DISubprogram(name: "__readl", scope: !280, file: !280, line: 63, type: !298, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!298 = !DISubroutineType(types: !299)
!299 = !{!14, !283}
!300 = !DILocalVariable(name: "addr", arg: 1, scope: !297, file: !280, line: 63, type: !283)
!301 = !DILocation(line: 63, column: 1, scope: !297)
!302 = !DILocalVariable(name: "ret", scope: !297, file: !280, line: 63, type: !14)
!303 = !{i32 -2144311725}
!304 = distinct !DISubprogram(name: "inline_map_write", scope: !37, file: !37, line: 411, type: !80, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!305 = !DILocalVariable(name: "map", arg: 1, scope: !304, file: !37, line: 411, type: !35)
!306 = !DILocation(line: 411, column: 54, scope: !304)
!307 = !DILocalVariable(name: "datum", arg: 2, scope: !304, file: !37, line: 411, type: !82)
!308 = !DILocation(line: 411, column: 74, scope: !304)
!309 = !DILocalVariable(name: "ofs", arg: 3, scope: !304, file: !37, line: 411, type: !42)
!310 = !DILocation(line: 411, column: 95, scope: !304)
!311 = !DILocation(line: 413, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !304, file: !37, line: 413, column: 6)
!313 = !DILocation(line: 413, column: 6, scope: !304)
!314 = !DILocation(line: 414, column: 22, scope: !312)
!315 = !DILocation(line: 414, column: 16, scope: !312)
!316 = !DILocation(line: 414, column: 28, scope: !312)
!317 = !DILocation(line: 414, column: 33, scope: !312)
!318 = !DILocation(line: 414, column: 40, scope: !312)
!319 = !DILocation(line: 414, column: 38, scope: !312)
!320 = !DILocation(line: 414, column: 3, scope: !312)
!321 = !DILocation(line: 415, column: 11, scope: !322)
!322 = distinct !DILexicalBlock(scope: !312, file: !37, line: 415, column: 11)
!323 = !DILocation(line: 415, column: 11, scope: !312)
!324 = !DILocation(line: 416, column: 22, scope: !322)
!325 = !DILocation(line: 416, column: 16, scope: !322)
!326 = !DILocation(line: 416, column: 28, scope: !322)
!327 = !DILocation(line: 416, column: 33, scope: !322)
!328 = !DILocation(line: 416, column: 40, scope: !322)
!329 = !DILocation(line: 416, column: 38, scope: !322)
!330 = !DILocation(line: 416, column: 3, scope: !322)
!331 = !DILocation(line: 417, column: 11, scope: !332)
!332 = distinct !DILexicalBlock(scope: !322, file: !37, line: 417, column: 11)
!333 = !DILocation(line: 417, column: 11, scope: !322)
!334 = !DILocation(line: 418, column: 22, scope: !332)
!335 = !DILocation(line: 418, column: 16, scope: !332)
!336 = !DILocation(line: 418, column: 28, scope: !332)
!337 = !DILocation(line: 418, column: 33, scope: !332)
!338 = !DILocation(line: 418, column: 40, scope: !332)
!339 = !DILocation(line: 418, column: 38, scope: !332)
!340 = !DILocation(line: 418, column: 3, scope: !332)
!341 = !DILocation(line: 426, column: 3, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !37, line: 423, column: 11)
!343 = distinct !DILexicalBlock(scope: !332, file: !37, line: 420, column: 11)
!344 = !DILocation(line: 426, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !37, line: 426, column: 3)
!346 = !DILocation(line: 426, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !345, file: !37, line: 426, column: 3)
!348 = !DILocation(line: 426, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !37, line: 426, column: 3)
!350 = !{i32 -2144217320, i32 -2144217291, i32 -2144217245, i32 -2144217187, i32 -2144217133, i32 -2144217079, i32 -2144217024, i32 -2144216993}
!351 = !DILocation(line: 426, column: 3, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !37, line: 426, column: 3)
!353 = distinct !DILexicalBlock(scope: !345, file: !37, line: 426, column: 3)
!354 = !{i32 -2144216547, i32 -2144216540, i32 -2144216486, i32 -2144216455, i32 -2144216425}
!355 = !DILocation(line: 426, column: 3, scope: !353)
!356 = !DILocation(line: 427, column: 2, scope: !304)
!357 = !{i32 -2144216374}
!358 = !DILocation(line: 428, column: 1, scope: !304)
!359 = distinct !DISubprogram(name: "__writeb", scope: !280, file: !280, line: 69, type: !360, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !8, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!363 = !DILocalVariable(name: "val", arg: 1, scope: !359, file: !280, line: 69, type: !8)
!364 = !DILocation(line: 69, column: 1, scope: !359)
!365 = !DILocalVariable(name: "addr", arg: 2, scope: !359, file: !280, line: 69, type: !362)
!366 = !{i32 -2144310176}
!367 = distinct !DISubprogram(name: "__writew", scope: !280, file: !280, line: 70, type: !368, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !11, !362}
!370 = !DILocalVariable(name: "val", arg: 1, scope: !367, file: !280, line: 70, type: !11)
!371 = !DILocation(line: 70, column: 1, scope: !367)
!372 = !DILocalVariable(name: "addr", arg: 2, scope: !367, file: !280, line: 70, type: !362)
!373 = !{i32 -2144309800}
!374 = distinct !DISubprogram(name: "__writel", scope: !280, file: !280, line: 71, type: !375, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !14, !362}
!377 = !DILocalVariable(name: "val", arg: 1, scope: !374, file: !280, line: 71, type: !14)
!378 = !DILocation(line: 71, column: 1, scope: !374)
!379 = !DILocalVariable(name: "addr", arg: 2, scope: !374, file: !280, line: 71, type: !362)
!380 = !{i32 -2144309422}
!381 = distinct !DISubprogram(name: "inline_map_copy_from", scope: !37, file: !37, line: 430, type: !71, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!382 = !DILocalVariable(name: "map", arg: 1, scope: !381, file: !37, line: 430, type: !35)
!383 = !DILocation(line: 430, column: 58, scope: !381)
!384 = !DILocalVariable(name: "to", arg: 2, scope: !381, file: !37, line: 430, type: !53)
!385 = !DILocation(line: 430, column: 69, scope: !381)
!386 = !DILocalVariable(name: "from", arg: 3, scope: !381, file: !37, line: 430, type: !42)
!387 = !DILocation(line: 430, column: 87, scope: !381)
!388 = !DILocalVariable(name: "len", arg: 4, scope: !381, file: !37, line: 430, type: !73)
!389 = !DILocation(line: 430, column: 101, scope: !381)
!390 = !DILocation(line: 432, column: 6, scope: !391)
!391 = distinct !DILexicalBlock(scope: !381, file: !37, line: 432, column: 6)
!392 = !DILocation(line: 432, column: 11, scope: !391)
!393 = !DILocation(line: 432, column: 6, scope: !381)
!394 = !DILocation(line: 433, column: 10, scope: !391)
!395 = !DILocation(line: 433, column: 22, scope: !391)
!396 = !DILocation(line: 433, column: 27, scope: !391)
!397 = !DILocation(line: 433, column: 36, scope: !391)
!398 = !DILocation(line: 433, column: 34, scope: !391)
!399 = !DILocation(line: 433, column: 42, scope: !391)
!400 = !DILocation(line: 433, column: 3, scope: !391)
!401 = !DILocation(line: 435, column: 17, scope: !391)
!402 = !DILocation(line: 435, column: 21, scope: !391)
!403 = !DILocation(line: 435, column: 26, scope: !391)
!404 = !DILocation(line: 435, column: 33, scope: !391)
!405 = !DILocation(line: 435, column: 31, scope: !391)
!406 = !DILocation(line: 435, column: 39, scope: !391)
!407 = !DILocation(line: 435, column: 3, scope: !391)
!408 = !DILocation(line: 436, column: 1, scope: !381)
!409 = distinct !DISubprogram(name: "inline_map_copy_to", scope: !37, file: !37, line: 438, type: !85, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!410 = !DILocalVariable(name: "map", arg: 1, scope: !409, file: !37, line: 438, type: !35)
!411 = !DILocation(line: 438, column: 56, scope: !409)
!412 = !DILocalVariable(name: "to", arg: 2, scope: !409, file: !37, line: 438, type: !42)
!413 = !DILocation(line: 438, column: 75, scope: !409)
!414 = !DILocalVariable(name: "from", arg: 3, scope: !409, file: !37, line: 438, type: !87)
!415 = !DILocation(line: 438, column: 91, scope: !409)
!416 = !DILocalVariable(name: "len", arg: 4, scope: !409, file: !37, line: 438, type: !73)
!417 = !DILocation(line: 438, column: 105, scope: !409)
!418 = !DILocation(line: 440, column: 14, scope: !409)
!419 = !DILocation(line: 440, column: 19, scope: !409)
!420 = !DILocation(line: 440, column: 26, scope: !409)
!421 = !DILocation(line: 440, column: 24, scope: !409)
!422 = !DILocation(line: 440, column: 30, scope: !409)
!423 = !DILocation(line: 440, column: 36, scope: !409)
!424 = !DILocation(line: 440, column: 2, scope: !409)
!425 = !DILocation(line: 441, column: 1, scope: !409)
