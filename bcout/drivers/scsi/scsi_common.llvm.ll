; ModuleID = '../bcout/drivers/scsi/scsi_common.llvm.bc'
source_filename = "drivers/scsi/scsi_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.scsi_lun = type { [8 x i8] }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [18 x i8] c"Well-known LUN   \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No Device        \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown          \00", align 1
@scsi_device_types = internal constant [21 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0)], align 16, !dbg !0
@.str.3 = private unnamed_addr constant [18 x i8] c"Direct-Access    \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Sequential-Access\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Printer          \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Processor        \00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"WORM             \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"CD-ROM           \00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Scanner          \00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Optical Device   \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Medium Changer   \00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Communications   \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"ASC IT8          \00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"RAID             \00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Enclosure        \00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Direct-Access-RBC\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Optical card     \00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Bridge controller\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Object storage   \00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Automation/Drive \00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Security Manager \00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Direct-Access-ZBC\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @scsi_device_type(i32 %type) #0 !dbg !43 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !47, metadata !DIExpression()), !dbg !48
  %0 = load i32, i32* %type.addr, align 4, !dbg !49
  %cmp = icmp eq i32 %0, 30, !dbg !51
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %retval, align 8, !dbg !53
  br label %return, !dbg !53

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4, !dbg !54
  %cmp1 = icmp eq i32 %1, 31, !dbg !56
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !57

if.then2:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %retval, align 8, !dbg !58
  br label %return, !dbg !58

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* %type.addr, align 4, !dbg !59
  %conv = zext i32 %2 to i64, !dbg !59
  %cmp4 = icmp uge i64 %conv, 21, !dbg !61
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !62

if.then6:                                         ; preds = %if.end3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %retval, align 8, !dbg !63
  br label %return, !dbg !63

if.end7:                                          ; preds = %if.end3
  %3 = load i32, i32* %type.addr, align 4, !dbg !64
  %idxprom = zext i32 %3 to i64, !dbg !65
  %arrayidx = getelementptr [21 x i8*], [21 x i8*]* @scsi_device_types, i64 0, i64 %idxprom, !dbg !65
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !65
  store i8* %4, i8** %retval, align 8, !dbg !66
  br label %return, !dbg !66

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !67
  ret i8* %5, !dbg !67
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @scsilun_to_int(%struct.scsi_lun* %scsilun) #0 !dbg !68 {
entry:
  %scsilun.addr = alloca %struct.scsi_lun*, align 8
  %i = alloca i32, align 4
  %lun = alloca i64, align 8
  store %struct.scsi_lun* %scsilun, %struct.scsi_lun** %scsilun.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_lun** %scsilun.addr, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata i32* %i, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i64* %lun, metadata !85, metadata !DIExpression()), !dbg !86
  store i64 0, i64* %lun, align 8, !dbg !87
  store i32 0, i32* %i, align 4, !dbg !88
  br label %for.cond, !dbg !90

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !91
  %conv = sext i32 %0 to i64, !dbg !91
  %cmp = icmp ult i64 %conv, 8, !dbg !93
  br i1 %cmp, label %for.body, label %for.end, !dbg !94

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %lun, align 8, !dbg !95
  %2 = load %struct.scsi_lun*, %struct.scsi_lun** %scsilun.addr, align 8, !dbg !96
  %scsi_lun = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %2, i32 0, i32 0, !dbg !97
  %3 = load i32, i32* %i, align 4, !dbg !98
  %idxprom = sext i32 %3 to i64, !dbg !96
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %scsi_lun, i64 0, i64 %idxprom, !dbg !96
  %4 = load i8, i8* %arrayidx, align 1, !dbg !96
  %conv2 = zext i8 %4 to i64, !dbg !99
  %5 = load i32, i32* %i, align 4, !dbg !100
  %add = add i32 %5, 1, !dbg !101
  %mul = mul i32 %add, 8, !dbg !102
  %sh_prom = zext i32 %mul to i64, !dbg !103
  %shl = shl i64 %conv2, %sh_prom, !dbg !103
  %6 = load %struct.scsi_lun*, %struct.scsi_lun** %scsilun.addr, align 8, !dbg !104
  %scsi_lun3 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %6, i32 0, i32 0, !dbg !105
  %7 = load i32, i32* %i, align 4, !dbg !106
  %add4 = add i32 %7, 1, !dbg !107
  %idxprom5 = sext i32 %add4 to i64, !dbg !104
  %arrayidx6 = getelementptr [8 x i8], [8 x i8]* %scsi_lun3, i64 0, i64 %idxprom5, !dbg !104
  %8 = load i8, i8* %arrayidx6, align 1, !dbg !104
  %conv7 = zext i8 %8 to i64, !dbg !108
  %9 = load i32, i32* %i, align 4, !dbg !109
  %mul8 = mul i32 %9, 8, !dbg !110
  %sh_prom9 = zext i32 %mul8 to i64, !dbg !111
  %shl10 = shl i64 %conv7, %sh_prom9, !dbg !111
  %or = or i64 %shl, %shl10, !dbg !112
  %or11 = or i64 %1, %or, !dbg !113
  store i64 %or11, i64* %lun, align 8, !dbg !114
  br label %for.inc, !dbg !115

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !116
  %add12 = add i32 %10, 2, !dbg !116
  store i32 %add12, i32* %i, align 4, !dbg !116
  br label %for.cond, !dbg !117, !llvm.loop !118

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %lun, align 8, !dbg !120
  ret i64 %11, !dbg !121
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @int_to_scsilun(i64 %lun, %struct.scsi_lun* %scsilun) #0 !dbg !122 {
entry:
  %lun.addr = alloca i64, align 8
  %scsilun.addr = alloca %struct.scsi_lun*, align 8
  %i = alloca i32, align 4
  store i64 %lun, i64* %lun.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %lun.addr, metadata !125, metadata !DIExpression()), !dbg !126
  store %struct.scsi_lun* %scsilun, %struct.scsi_lun** %scsilun.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_lun** %scsilun.addr, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %i, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load %struct.scsi_lun*, %struct.scsi_lun** %scsilun.addr, align 8, !dbg !131
  %scsi_lun = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %0, i32 0, i32 0, !dbg !132
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %scsi_lun, i64 0, i64 0, !dbg !133
  call void @llvm.memset.p0i8.i64(i8* align 1 %arraydecay, i8 0, i64 8, i1 false), !dbg !133
  store i32 0, i32* %i, align 4, !dbg !134
  br label %for.cond, !dbg !136

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !137
  %conv = sext i32 %1 to i64, !dbg !137
  %cmp = icmp ult i64 %conv, 8, !dbg !139
  br i1 %cmp, label %for.body, label %for.end, !dbg !140

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %lun.addr, align 8, !dbg !141
  %shr = lshr i64 %2, 8, !dbg !143
  %and = and i64 %shr, 255, !dbg !144
  %conv2 = trunc i64 %and to i8, !dbg !145
  %3 = load %struct.scsi_lun*, %struct.scsi_lun** %scsilun.addr, align 8, !dbg !146
  %scsi_lun3 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %3, i32 0, i32 0, !dbg !147
  %4 = load i32, i32* %i, align 4, !dbg !148
  %idxprom = sext i32 %4 to i64, !dbg !146
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %scsi_lun3, i64 0, i64 %idxprom, !dbg !146
  store i8 %conv2, i8* %arrayidx, align 1, !dbg !149
  %5 = load i64, i64* %lun.addr, align 8, !dbg !150
  %and4 = and i64 %5, 255, !dbg !151
  %conv5 = trunc i64 %and4 to i8, !dbg !150
  %6 = load %struct.scsi_lun*, %struct.scsi_lun** %scsilun.addr, align 8, !dbg !152
  %scsi_lun6 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %6, i32 0, i32 0, !dbg !153
  %7 = load i32, i32* %i, align 4, !dbg !154
  %add = add i32 %7, 1, !dbg !155
  %idxprom7 = sext i32 %add to i64, !dbg !152
  %arrayidx8 = getelementptr [8 x i8], [8 x i8]* %scsi_lun6, i64 0, i64 %idxprom7, !dbg !152
  store i8 %conv5, i8* %arrayidx8, align 1, !dbg !156
  %8 = load i64, i64* %lun.addr, align 8, !dbg !157
  %shr9 = lshr i64 %8, 16, !dbg !158
  store i64 %shr9, i64* %lun.addr, align 8, !dbg !159
  br label %for.inc, !dbg !160

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !161
  %add10 = add i32 %9, 2, !dbg !161
  store i32 %add10, i32* %i, align 4, !dbg !161
  br label %for.cond, !dbg !162, !llvm.loop !163

for.end:                                          ; preds = %for.cond
  ret void, !dbg !165
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @scsi_normalize_sense(i8* %sense_buffer, i32 %sb_len, %struct.scsi_sense_hdr* %sshdr) #0 !dbg !166 {
entry:
  %retval = alloca i1, align 1
  %sense_buffer.addr = alloca i8*, align 8
  %sb_len.addr = alloca i32, align 4
  %sshdr.addr = alloca %struct.scsi_sense_hdr*, align 8
  store i8* %sense_buffer, i8** %sense_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %sense_buffer.addr, metadata !187, metadata !DIExpression()), !dbg !188
  store i32 %sb_len, i32* %sb_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sb_len.addr, metadata !189, metadata !DIExpression()), !dbg !190
  store %struct.scsi_sense_hdr* %sshdr, %struct.scsi_sense_hdr** %sshdr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_sense_hdr** %sshdr.addr, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !193
  %1 = bitcast %struct.scsi_sense_hdr* %0 to i8*, !dbg !194
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 8, i1 false), !dbg !194
  %2 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !195
  %tobool = icmp ne i8* %2, null, !dbg !195
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !197

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %sb_len.addr, align 4, !dbg !198
  %tobool1 = icmp ne i32 %3, 0, !dbg !198
  br i1 %tobool1, label %if.end, label %if.then, !dbg !199

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !200
  br label %return, !dbg !200

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !201
  %arrayidx = getelementptr i8, i8* %4, i64 0, !dbg !201
  %5 = load i8, i8* %arrayidx, align 1, !dbg !201
  %conv = zext i8 %5 to i32, !dbg !201
  %and = and i32 %conv, 127, !dbg !202
  %conv2 = trunc i32 %and to i8, !dbg !203
  %6 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !204
  %response_code = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 0, !dbg !205
  store i8 %conv2, i8* %response_code, align 1, !dbg !206
  %7 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !207
  %call = call zeroext i1 @scsi_sense_valid(%struct.scsi_sense_hdr* %7) #5, !dbg !209
  br i1 %call, label %if.end4, label %if.then3, !dbg !210

if.then3:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !211
  br label %return, !dbg !211

if.end4:                                          ; preds = %if.end
  %8 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !212
  %response_code5 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 0, !dbg !214
  %9 = load i8, i8* %response_code5, align 1, !dbg !214
  %conv6 = zext i8 %9 to i32, !dbg !212
  %cmp = icmp sge i32 %conv6, 114, !dbg !215
  br i1 %cmp, label %if.then8, label %if.else, !dbg !216

if.then8:                                         ; preds = %if.end4
  %10 = load i32, i32* %sb_len.addr, align 4, !dbg !217
  %cmp9 = icmp sgt i32 %10, 1, !dbg !220
  br i1 %cmp9, label %if.then11, label %if.end16, !dbg !221

if.then11:                                        ; preds = %if.then8
  %11 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !222
  %arrayidx12 = getelementptr i8, i8* %11, i64 1, !dbg !222
  %12 = load i8, i8* %arrayidx12, align 1, !dbg !222
  %conv13 = zext i8 %12 to i32, !dbg !222
  %and14 = and i32 %conv13, 15, !dbg !223
  %conv15 = trunc i32 %and14 to i8, !dbg !224
  %13 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !225
  %sense_key = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %13, i32 0, i32 1, !dbg !226
  store i8 %conv15, i8* %sense_key, align 1, !dbg !227
  br label %if.end16, !dbg !225

if.end16:                                         ; preds = %if.then11, %if.then8
  %14 = load i32, i32* %sb_len.addr, align 4, !dbg !228
  %cmp17 = icmp sgt i32 %14, 2, !dbg !230
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !231

if.then19:                                        ; preds = %if.end16
  %15 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !232
  %arrayidx20 = getelementptr i8, i8* %15, i64 2, !dbg !232
  %16 = load i8, i8* %arrayidx20, align 1, !dbg !232
  %17 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !233
  %asc = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %17, i32 0, i32 2, !dbg !234
  store i8 %16, i8* %asc, align 1, !dbg !235
  br label %if.end21, !dbg !233

if.end21:                                         ; preds = %if.then19, %if.end16
  %18 = load i32, i32* %sb_len.addr, align 4, !dbg !236
  %cmp22 = icmp sgt i32 %18, 3, !dbg !238
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !239

if.then24:                                        ; preds = %if.end21
  %19 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !240
  %arrayidx25 = getelementptr i8, i8* %19, i64 3, !dbg !240
  %20 = load i8, i8* %arrayidx25, align 1, !dbg !240
  %21 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !241
  %ascq = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %21, i32 0, i32 3, !dbg !242
  store i8 %20, i8* %ascq, align 1, !dbg !243
  br label %if.end26, !dbg !241

if.end26:                                         ; preds = %if.then24, %if.end21
  %22 = load i32, i32* %sb_len.addr, align 4, !dbg !244
  %cmp27 = icmp sgt i32 %22, 7, !dbg !246
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !247

if.then29:                                        ; preds = %if.end26
  %23 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !248
  %arrayidx30 = getelementptr i8, i8* %23, i64 7, !dbg !248
  %24 = load i8, i8* %arrayidx30, align 1, !dbg !248
  %25 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !249
  %additional_length = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %25, i32 0, i32 7, !dbg !250
  store i8 %24, i8* %additional_length, align 1, !dbg !251
  br label %if.end31, !dbg !249

if.end31:                                         ; preds = %if.then29, %if.end26
  br label %if.end64, !dbg !252

if.else:                                          ; preds = %if.end4
  %26 = load i32, i32* %sb_len.addr, align 4, !dbg !253
  %cmp32 = icmp sgt i32 %26, 2, !dbg !256
  br i1 %cmp32, label %if.then34, label %if.end40, !dbg !257

if.then34:                                        ; preds = %if.else
  %27 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !258
  %arrayidx35 = getelementptr i8, i8* %27, i64 2, !dbg !258
  %28 = load i8, i8* %arrayidx35, align 1, !dbg !258
  %conv36 = zext i8 %28 to i32, !dbg !258
  %and37 = and i32 %conv36, 15, !dbg !259
  %conv38 = trunc i32 %and37 to i8, !dbg !260
  %29 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !261
  %sense_key39 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %29, i32 0, i32 1, !dbg !262
  store i8 %conv38, i8* %sense_key39, align 1, !dbg !263
  br label %if.end40, !dbg !261

if.end40:                                         ; preds = %if.then34, %if.else
  %30 = load i32, i32* %sb_len.addr, align 4, !dbg !264
  %cmp41 = icmp sgt i32 %30, 7, !dbg !266
  br i1 %cmp41, label %if.then43, label %if.end63, !dbg !267

if.then43:                                        ; preds = %if.end40
  %31 = load i32, i32* %sb_len.addr, align 4, !dbg !268
  %32 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !270
  %arrayidx44 = getelementptr i8, i8* %32, i64 7, !dbg !270
  %33 = load i8, i8* %arrayidx44, align 1, !dbg !270
  %conv45 = zext i8 %33 to i32, !dbg !270
  %add = add i32 %conv45, 8, !dbg !271
  %cmp46 = icmp slt i32 %31, %add, !dbg !272
  br i1 %cmp46, label %cond.true, label %cond.false, !dbg !273

cond.true:                                        ; preds = %if.then43
  %34 = load i32, i32* %sb_len.addr, align 4, !dbg !274
  br label %cond.end, !dbg !273

cond.false:                                       ; preds = %if.then43
  %35 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !275
  %arrayidx48 = getelementptr i8, i8* %35, i64 7, !dbg !275
  %36 = load i8, i8* %arrayidx48, align 1, !dbg !275
  %conv49 = zext i8 %36 to i32, !dbg !275
  %add50 = add i32 %conv49, 8, !dbg !276
  br label %cond.end, !dbg !273

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %34, %cond.true ], [ %add50, %cond.false ], !dbg !273
  store i32 %cond, i32* %sb_len.addr, align 4, !dbg !277
  %37 = load i32, i32* %sb_len.addr, align 4, !dbg !278
  %cmp51 = icmp sgt i32 %37, 12, !dbg !280
  br i1 %cmp51, label %if.then53, label %if.end56, !dbg !281

if.then53:                                        ; preds = %cond.end
  %38 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !282
  %arrayidx54 = getelementptr i8, i8* %38, i64 12, !dbg !282
  %39 = load i8, i8* %arrayidx54, align 1, !dbg !282
  %40 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !283
  %asc55 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %40, i32 0, i32 2, !dbg !284
  store i8 %39, i8* %asc55, align 1, !dbg !285
  br label %if.end56, !dbg !283

if.end56:                                         ; preds = %if.then53, %cond.end
  %41 = load i32, i32* %sb_len.addr, align 4, !dbg !286
  %cmp57 = icmp sgt i32 %41, 13, !dbg !288
  br i1 %cmp57, label %if.then59, label %if.end62, !dbg !289

if.then59:                                        ; preds = %if.end56
  %42 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !290
  %arrayidx60 = getelementptr i8, i8* %42, i64 13, !dbg !290
  %43 = load i8, i8* %arrayidx60, align 1, !dbg !290
  %44 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !291
  %ascq61 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %44, i32 0, i32 3, !dbg !292
  store i8 %43, i8* %ascq61, align 1, !dbg !293
  br label %if.end62, !dbg !291

if.end62:                                         ; preds = %if.then59, %if.end56
  br label %if.end63, !dbg !294

if.end63:                                         ; preds = %if.end62, %if.end40
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end31
  store i1 true, i1* %retval, align 1, !dbg !295
  br label %return, !dbg !295

return:                                           ; preds = %if.end64, %if.then3, %if.then
  %45 = load i1, i1* %retval, align 1, !dbg !296
  ret i1 %45, !dbg !296
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @scsi_sense_valid(%struct.scsi_sense_hdr* %sshdr) #0 !dbg !297 {
entry:
  %retval = alloca i1, align 1
  %sshdr.addr = alloca %struct.scsi_sense_hdr*, align 8
  store %struct.scsi_sense_hdr* %sshdr, %struct.scsi_sense_hdr** %sshdr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scsi_sense_hdr** %sshdr.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !304
  %tobool = icmp ne %struct.scsi_sense_hdr* %0, null, !dbg !304
  br i1 %tobool, label %if.end, label %if.then, !dbg !306

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !307
  br label %return, !dbg !307

if.end:                                           ; preds = %entry
  %1 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %sshdr.addr, align 8, !dbg !308
  %response_code = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %1, i32 0, i32 0, !dbg !309
  %2 = load i8, i8* %response_code, align 1, !dbg !309
  %conv = zext i8 %2 to i32, !dbg !308
  %and = and i32 %conv, 112, !dbg !310
  %cmp = icmp eq i32 %and, 112, !dbg !311
  store i1 %cmp, i1* %retval, align 1, !dbg !312
  br label %return, !dbg !312

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, i1* %retval, align 1, !dbg !313
  ret i1 %3, !dbg !313
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @scsi_sense_desc_find(i8* %sense_buffer, i32 %sb_len, i32 %desc_type) #0 !dbg !314 {
entry:
  %retval = alloca i8*, align 8
  %sense_buffer.addr = alloca i8*, align 8
  %sb_len.addr = alloca i32, align 4
  %desc_type.addr = alloca i32, align 4
  %add_sen_len = alloca i32, align 4
  %add_len = alloca i32, align 4
  %desc_len = alloca i32, align 4
  %k = alloca i32, align 4
  %descp = alloca i8*, align 8
  store i8* %sense_buffer, i8** %sense_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %sense_buffer.addr, metadata !317, metadata !DIExpression()), !dbg !318
  store i32 %sb_len, i32* %sb_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sb_len.addr, metadata !319, metadata !DIExpression()), !dbg !320
  store i32 %desc_type, i32* %desc_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %desc_type.addr, metadata !321, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata i32* %add_sen_len, metadata !323, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata i32* %add_len, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata i32* %desc_len, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.declare(metadata i32* %k, metadata !329, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata i8** %descp, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i32, i32* %sb_len.addr, align 4, !dbg !333
  %cmp = icmp slt i32 %0, 8, !dbg !335
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !336

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !337
  %arrayidx = getelementptr i8, i8* %1, i64 7, !dbg !337
  %2 = load i8, i8* %arrayidx, align 1, !dbg !337
  %conv = zext i8 %2 to i32, !dbg !337
  store i32 %conv, i32* %add_sen_len, align 4, !dbg !338
  %cmp1 = icmp eq i32 0, %conv, !dbg !339
  br i1 %cmp1, label %if.then, label %if.end, !dbg !340

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 8, !dbg !341
  br label %return, !dbg !341

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !342
  %arrayidx3 = getelementptr i8, i8* %3, i64 0, !dbg !342
  %4 = load i8, i8* %arrayidx3, align 1, !dbg !342
  %conv4 = zext i8 %4 to i32, !dbg !342
  %cmp5 = icmp slt i32 %conv4, 114, !dbg !344
  br i1 %cmp5, label %if.then12, label %lor.lhs.false7, !dbg !345

lor.lhs.false7:                                   ; preds = %if.end
  %5 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !346
  %arrayidx8 = getelementptr i8, i8* %5, i64 0, !dbg !346
  %6 = load i8, i8* %arrayidx8, align 1, !dbg !346
  %conv9 = zext i8 %6 to i32, !dbg !346
  %cmp10 = icmp sgt i32 %conv9, 115, !dbg !347
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !348

if.then12:                                        ; preds = %lor.lhs.false7, %if.end
  store i8* null, i8** %retval, align 8, !dbg !349
  br label %return, !dbg !349

if.end13:                                         ; preds = %lor.lhs.false7
  %7 = load i32, i32* %add_sen_len, align 4, !dbg !350
  %8 = load i32, i32* %sb_len.addr, align 4, !dbg !351
  %sub = sub i32 %8, 8, !dbg !352
  %cmp14 = icmp slt i32 %7, %sub, !dbg !353
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !354

cond.true:                                        ; preds = %if.end13
  %9 = load i32, i32* %add_sen_len, align 4, !dbg !355
  br label %cond.end, !dbg !354

cond.false:                                       ; preds = %if.end13
  %10 = load i32, i32* %sb_len.addr, align 4, !dbg !356
  %sub16 = sub i32 %10, 8, !dbg !357
  br label %cond.end, !dbg !354

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %sub16, %cond.false ], !dbg !354
  store i32 %cond, i32* %add_sen_len, align 4, !dbg !358
  %11 = load i8*, i8** %sense_buffer.addr, align 8, !dbg !359
  %arrayidx17 = getelementptr i8, i8* %11, i64 8, !dbg !359
  store i8* %arrayidx17, i8** %descp, align 8, !dbg !360
  store i32 0, i32* %desc_len, align 4, !dbg !361
  store i32 0, i32* %k, align 4, !dbg !363
  br label %for.cond, !dbg !364

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, i32* %k, align 4, !dbg !365
  %13 = load i32, i32* %add_sen_len, align 4, !dbg !367
  %cmp18 = icmp slt i32 %12, %13, !dbg !368
  br i1 %cmp18, label %for.body, label %for.end, !dbg !369

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %desc_len, align 4, !dbg !370
  %15 = load i8*, i8** %descp, align 8, !dbg !372
  %idx.ext = sext i32 %14 to i64, !dbg !372
  %add.ptr = getelementptr i8, i8* %15, i64 %idx.ext, !dbg !372
  store i8* %add.ptr, i8** %descp, align 8, !dbg !372
  %16 = load i32, i32* %k, align 4, !dbg !373
  %17 = load i32, i32* %add_sen_len, align 4, !dbg !374
  %sub20 = sub i32 %17, 1, !dbg !375
  %cmp21 = icmp slt i32 %16, %sub20, !dbg !376
  br i1 %cmp21, label %cond.true23, label %cond.false26, !dbg !377

cond.true23:                                      ; preds = %for.body
  %18 = load i8*, i8** %descp, align 8, !dbg !378
  %arrayidx24 = getelementptr i8, i8* %18, i64 1, !dbg !378
  %19 = load i8, i8* %arrayidx24, align 1, !dbg !378
  %conv25 = zext i8 %19 to i32, !dbg !378
  br label %cond.end27, !dbg !377

cond.false26:                                     ; preds = %for.body
  br label %cond.end27, !dbg !377

cond.end27:                                       ; preds = %cond.false26, %cond.true23
  %cond28 = phi i32 [ %conv25, %cond.true23 ], [ -1, %cond.false26 ], !dbg !377
  store i32 %cond28, i32* %add_len, align 4, !dbg !379
  %20 = load i32, i32* %add_len, align 4, !dbg !380
  %add = add i32 %20, 2, !dbg !381
  store i32 %add, i32* %desc_len, align 4, !dbg !382
  %21 = load i8*, i8** %descp, align 8, !dbg !383
  %arrayidx29 = getelementptr i8, i8* %21, i64 0, !dbg !383
  %22 = load i8, i8* %arrayidx29, align 1, !dbg !383
  %conv30 = zext i8 %22 to i32, !dbg !383
  %23 = load i32, i32* %desc_type.addr, align 4, !dbg !385
  %cmp31 = icmp eq i32 %conv30, %23, !dbg !386
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !387

if.then33:                                        ; preds = %cond.end27
  %24 = load i8*, i8** %descp, align 8, !dbg !388
  store i8* %24, i8** %retval, align 8, !dbg !389
  br label %return, !dbg !389

if.end34:                                         ; preds = %cond.end27
  %25 = load i32, i32* %add_len, align 4, !dbg !390
  %cmp35 = icmp slt i32 %25, 0, !dbg !392
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !393

if.then37:                                        ; preds = %if.end34
  br label %for.end, !dbg !394

if.end38:                                         ; preds = %if.end34
  br label %for.inc, !dbg !395

for.inc:                                          ; preds = %if.end38
  %26 = load i32, i32* %desc_len, align 4, !dbg !396
  %27 = load i32, i32* %k, align 4, !dbg !397
  %add39 = add i32 %27, %26, !dbg !397
  store i32 %add39, i32* %k, align 4, !dbg !397
  br label %for.cond, !dbg !398, !llvm.loop !399

for.end:                                          ; preds = %if.then37, %for.cond
  store i8* null, i8** %retval, align 8, !dbg !401
  br label %return, !dbg !401

return:                                           ; preds = %for.end, %if.then33, %if.then12, %if.then
  %28 = load i8*, i8** %retval, align 8, !dbg !402
  ret i8* %28, !dbg !402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @scsi_build_sense_buffer(i32 %desc, i8* %buf, i8 zeroext %key, i8 zeroext %asc, i8 zeroext %ascq) #0 !dbg !403 {
entry:
  %desc.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %key.addr = alloca i8, align 1
  %asc.addr = alloca i8, align 1
  %ascq.addr = alloca i8, align 1
  store i32 %desc, i32* %desc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %desc.addr, metadata !407, metadata !DIExpression()), !dbg !408
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !409, metadata !DIExpression()), !dbg !410
  store i8 %key, i8* %key.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %key.addr, metadata !411, metadata !DIExpression()), !dbg !412
  store i8 %asc, i8* %asc.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %asc.addr, metadata !413, metadata !DIExpression()), !dbg !414
  store i8 %ascq, i8* %ascq.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ascq.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load i32, i32* %desc.addr, align 4, !dbg !417
  %tobool = icmp ne i32 %0, 0, !dbg !417
  br i1 %tobool, label %if.then, label %if.else, !dbg !419

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !420
  %arrayidx = getelementptr i8, i8* %1, i64 0, !dbg !420
  store i8 114, i8* %arrayidx, align 1, !dbg !422
  %2 = load i8, i8* %key.addr, align 1, !dbg !423
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !424
  %arrayidx1 = getelementptr i8, i8* %3, i64 1, !dbg !424
  store i8 %2, i8* %arrayidx1, align 1, !dbg !425
  %4 = load i8, i8* %asc.addr, align 1, !dbg !426
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !427
  %arrayidx2 = getelementptr i8, i8* %5, i64 2, !dbg !427
  store i8 %4, i8* %arrayidx2, align 1, !dbg !428
  %6 = load i8, i8* %ascq.addr, align 1, !dbg !429
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !430
  %arrayidx3 = getelementptr i8, i8* %7, i64 3, !dbg !430
  store i8 %6, i8* %arrayidx3, align 1, !dbg !431
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !432
  %arrayidx4 = getelementptr i8, i8* %8, i64 7, !dbg !432
  store i8 0, i8* %arrayidx4, align 1, !dbg !433
  br label %if.end, !dbg !434

if.else:                                          ; preds = %entry
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !435
  %arrayidx5 = getelementptr i8, i8* %9, i64 0, !dbg !435
  store i8 112, i8* %arrayidx5, align 1, !dbg !437
  %10 = load i8, i8* %key.addr, align 1, !dbg !438
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !439
  %arrayidx6 = getelementptr i8, i8* %11, i64 2, !dbg !439
  store i8 %10, i8* %arrayidx6, align 1, !dbg !440
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !441
  %arrayidx7 = getelementptr i8, i8* %12, i64 7, !dbg !441
  store i8 10, i8* %arrayidx7, align 1, !dbg !442
  %13 = load i8, i8* %asc.addr, align 1, !dbg !443
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !444
  %arrayidx8 = getelementptr i8, i8* %14, i64 12, !dbg !444
  store i8 %13, i8* %arrayidx8, align 1, !dbg !445
  %15 = load i8, i8* %ascq.addr, align 1, !dbg !446
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !447
  %arrayidx9 = getelementptr i8, i8* %16, i64 13, !dbg !447
  store i8 %15, i8* %arrayidx9, align 1, !dbg !448
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @scsi_set_sense_information(i8* %buf, i32 %buf_len, i64 %info) #0 !dbg !450 {
entry:
  %val.addr.i44 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr.i44, metadata !453, metadata !DIExpression()), !dbg !459
  %p.addr.i45 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i45, metadata !464, metadata !DIExpression()), !dbg !465
  %val.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr.i, metadata !466, metadata !DIExpression()), !dbg !470
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !473, metadata !DIExpression()), !dbg !474
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i32, align 4
  %info.addr = alloca i64, align 8
  %ucp = alloca i8*, align 8
  %len = alloca i8, align 1
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !475, metadata !DIExpression()), !dbg !476
  store i32 %buf_len, i32* %buf_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buf_len.addr, metadata !477, metadata !DIExpression()), !dbg !478
  store i64 %info, i64* %info.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %info.addr, metadata !479, metadata !DIExpression()), !dbg !480
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !481
  %arrayidx = getelementptr i8, i8* %0, i64 0, !dbg !481
  %1 = load i8, i8* %arrayidx, align 1, !dbg !481
  %conv = zext i8 %1 to i32, !dbg !481
  %and = and i32 %conv, 127, !dbg !482
  %cmp = icmp eq i32 %and, 114, !dbg !483
  br i1 %cmp, label %if.then, label %if.else, !dbg !484

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %ucp, metadata !485, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.declare(metadata i8* %len, metadata !487, metadata !DIExpression()), !dbg !488
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !489
  %arrayidx2 = getelementptr i8, i8* %2, i64 7, !dbg !489
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !489
  store i8 %3, i8* %len, align 1, !dbg !490
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !491
  %5 = load i8, i8* %len, align 1, !dbg !492
  %conv3 = zext i8 %5 to i32, !dbg !492
  %add = add i32 %conv3, 8, !dbg !493
  %call = call i8* @scsi_sense_desc_find(i8* %4, i32 %add, i32 0) #5, !dbg !494
  store i8* %call, i8** %ucp, align 8, !dbg !495
  %6 = load i8*, i8** %ucp, align 8, !dbg !496
  %tobool = icmp ne i8* %6, null, !dbg !496
  br i1 %tobool, label %if.end, label %if.then4, !dbg !498

if.then4:                                         ; preds = %if.then
  %7 = load i8, i8* %len, align 1, !dbg !499
  %conv5 = zext i8 %7 to i32, !dbg !499
  %add6 = add i32 %conv5, 12, !dbg !501
  %conv7 = trunc i32 %add6 to i8, !dbg !499
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !502
  %arrayidx8 = getelementptr i8, i8* %8, i64 7, !dbg !502
  store i8 %conv7, i8* %arrayidx8, align 1, !dbg !503
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !504
  %add.ptr = getelementptr i8, i8* %9, i64 8, !dbg !505
  %10 = load i8, i8* %len, align 1, !dbg !506
  %conv9 = zext i8 %10 to i32, !dbg !506
  %idx.ext = sext i32 %conv9 to i64, !dbg !507
  %add.ptr10 = getelementptr i8, i8* %add.ptr, i64 %idx.ext, !dbg !507
  store i8* %add.ptr10, i8** %ucp, align 8, !dbg !508
  br label %if.end, !dbg !509

if.end:                                           ; preds = %if.then4, %if.then
  %11 = load i32, i32* %buf_len.addr, align 4, !dbg !510
  %12 = load i8, i8* %len, align 1, !dbg !512
  %conv11 = zext i8 %12 to i32, !dbg !512
  %add12 = add i32 %conv11, 12, !dbg !513
  %cmp13 = icmp slt i32 %11, %add12, !dbg !514
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !515

if.then15:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !516
  br label %return, !dbg !516

if.end16:                                         ; preds = %if.end
  %13 = load i8*, i8** %ucp, align 8, !dbg !517
  %arrayidx17 = getelementptr i8, i8* %13, i64 0, !dbg !517
  store i8 0, i8* %arrayidx17, align 1, !dbg !518
  %14 = load i8*, i8** %ucp, align 8, !dbg !519
  %arrayidx18 = getelementptr i8, i8* %14, i64 1, !dbg !519
  store i8 10, i8* %arrayidx18, align 1, !dbg !520
  %15 = load i8*, i8** %ucp, align 8, !dbg !521
  %arrayidx19 = getelementptr i8, i8* %15, i64 2, !dbg !521
  store i8 -128, i8* %arrayidx19, align 1, !dbg !522
  %16 = load i8*, i8** %ucp, align 8, !dbg !523
  %arrayidx20 = getelementptr i8, i8* %16, i64 3, !dbg !523
  store i8 0, i8* %arrayidx20, align 1, !dbg !524
  %17 = load i64, i64* %info.addr, align 8, !dbg !525
  %18 = load i8*, i8** %ucp, align 8, !dbg !526
  %arrayidx21 = getelementptr i8, i8* %18, i64 4, !dbg !526
  store i64 %17, i64* %val.addr.i, align 8
  store i8* %arrayidx21, i8** %p.addr.i, align 8
  %19 = load i64, i64* %val.addr.i, align 8, !dbg !527
  %20 = call i1 @llvm.is.constant.i64(i64 %19) #6, !dbg !527
  br i1 %20, label %cond.true.i, label %cond.false.i, !dbg !527

cond.true.i:                                      ; preds = %if.end16
  %21 = load i64, i64* %val.addr.i, align 8, !dbg !527
  %and.i = and i64 %21, 255, !dbg !527
  %shl.i = shl i64 %and.i, 56, !dbg !527
  %22 = load i64, i64* %val.addr.i, align 8, !dbg !527
  %and1.i = and i64 %22, 65280, !dbg !527
  %shl2.i = shl i64 %and1.i, 40, !dbg !527
  %or.i = or i64 %shl.i, %shl2.i, !dbg !527
  %23 = load i64, i64* %val.addr.i, align 8, !dbg !527
  %and3.i = and i64 %23, 16711680, !dbg !527
  %shl4.i = shl i64 %and3.i, 24, !dbg !527
  %or5.i = or i64 %or.i, %shl4.i, !dbg !527
  %24 = load i64, i64* %val.addr.i, align 8, !dbg !527
  %and6.i = and i64 %24, 4278190080, !dbg !527
  %shl7.i = shl i64 %and6.i, 8, !dbg !527
  %or8.i = or i64 %or5.i, %shl7.i, !dbg !527
  %25 = load i64, i64* %val.addr.i, align 8, !dbg !527
  %and9.i = and i64 %25, 1095216660480, !dbg !527
  %shr.i = lshr i64 %and9.i, 8, !dbg !527
  %or10.i = or i64 %or8.i, %shr.i, !dbg !527
  %26 = load i64, i64* %val.addr.i, align 8, !dbg !527
  %and11.i = and i64 %26, 280375465082880, !dbg !527
  %shr12.i = lshr i64 %and11.i, 24, !dbg !527
  %or13.i = or i64 %or10.i, %shr12.i, !dbg !527
  %27 = load i64, i64* %val.addr.i, align 8, !dbg !527
  %and14.i = and i64 %27, 71776119061217280, !dbg !527
  %shr15.i = lshr i64 %and14.i, 40, !dbg !527
  %or16.i = or i64 %or13.i, %shr15.i, !dbg !527
  %28 = load i64, i64* %val.addr.i, align 8, !dbg !527
  %and17.i = and i64 %28, -72057594037927936, !dbg !527
  %shr18.i = lshr i64 %and17.i, 56, !dbg !527
  %or19.i = or i64 %or16.i, %shr18.i, !dbg !527
  br label %put_unaligned_be64.exit, !dbg !527

cond.false.i:                                     ; preds = %if.end16
  %29 = load i64, i64* %val.addr.i, align 8, !dbg !527
  %call.i = call i64 @__fswab64(i64 %29) #7, !dbg !527
  br label %put_unaligned_be64.exit, !dbg !527

put_unaligned_be64.exit:                          ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i64 [ %or19.i, %cond.true.i ], [ %call.i, %cond.false.i ], !dbg !527
  %30 = load i8*, i8** %p.addr.i, align 8, !dbg !528
  %31 = bitcast i8* %30 to i64*, !dbg !529
  store i64 %cond.i, i64* %31, align 8, !dbg !530
  br label %if.end43, !dbg !531

if.else:                                          ; preds = %entry
  %32 = load i8*, i8** %buf.addr, align 8, !dbg !532
  %arrayidx22 = getelementptr i8, i8* %32, i64 0, !dbg !532
  %33 = load i8, i8* %arrayidx22, align 1, !dbg !532
  %conv23 = zext i8 %33 to i32, !dbg !532
  %and24 = and i32 %conv23, 127, !dbg !533
  %cmp25 = icmp eq i32 %and24, 112, !dbg !534
  br i1 %cmp25, label %if.then27, label %if.end42, !dbg !535

if.then27:                                        ; preds = %if.else
  %34 = load i64, i64* %info.addr, align 8, !dbg !536
  %cmp28 = icmp ule i64 %34, 4294967295, !dbg !538
  br i1 %cmp28, label %if.then30, label %if.else34, !dbg !539

if.then30:                                        ; preds = %if.then27
  %35 = load i8*, i8** %buf.addr, align 8, !dbg !540
  %arrayidx31 = getelementptr i8, i8* %35, i64 0, !dbg !540
  %36 = load i8, i8* %arrayidx31, align 1, !dbg !541
  %conv32 = zext i8 %36 to i32, !dbg !541
  %or = or i32 %conv32, 128, !dbg !541
  %conv33 = trunc i32 %or to i8, !dbg !541
  store i8 %conv33, i8* %arrayidx31, align 1, !dbg !541
  br label %if.end39, !dbg !540

if.else34:                                        ; preds = %if.then27
  %37 = load i8*, i8** %buf.addr, align 8, !dbg !542
  %arrayidx35 = getelementptr i8, i8* %37, i64 0, !dbg !542
  %38 = load i8, i8* %arrayidx35, align 1, !dbg !543
  %conv36 = zext i8 %38 to i32, !dbg !543
  %and37 = and i32 %conv36, 127, !dbg !543
  %conv38 = trunc i32 %and37 to i8, !dbg !543
  store i8 %conv38, i8* %arrayidx35, align 1, !dbg !543
  br label %if.end39

if.end39:                                         ; preds = %if.else34, %if.then30
  %39 = load i64, i64* %info.addr, align 8, !dbg !544
  %conv40 = trunc i64 %39 to i32, !dbg !545
  %40 = load i8*, i8** %buf.addr, align 8, !dbg !546
  %arrayidx41 = getelementptr i8, i8* %40, i64 3, !dbg !546
  store i32 %conv40, i32* %val.addr.i44, align 4
  store i8* %arrayidx41, i8** %p.addr.i45, align 8
  %41 = load i32, i32* %val.addr.i44, align 4, !dbg !547
  %42 = call i1 @llvm.is.constant.i32(i32 %41) #6, !dbg !547
  br i1 %42, label %cond.true.i53, label %cond.false.i55, !dbg !547

cond.true.i53:                                    ; preds = %if.end39
  %43 = load i32, i32* %val.addr.i44, align 4, !dbg !547
  %and.i46 = and i32 %43, 255, !dbg !547
  %shl.i47 = shl i32 %and.i46, 24, !dbg !547
  %44 = load i32, i32* %val.addr.i44, align 4, !dbg !547
  %and1.i48 = and i32 %44, 65280, !dbg !547
  %shl2.i49 = shl i32 %and1.i48, 8, !dbg !547
  %or.i50 = or i32 %shl.i47, %shl2.i49, !dbg !547
  %45 = load i32, i32* %val.addr.i44, align 4, !dbg !547
  %and3.i51 = and i32 %45, 16711680, !dbg !547
  %shr.i52 = lshr i32 %and3.i51, 8, !dbg !547
  %or4.i = or i32 %or.i50, %shr.i52, !dbg !547
  %46 = load i32, i32* %val.addr.i44, align 4, !dbg !547
  %and5.i = and i32 %46, -16777216, !dbg !547
  %shr6.i = lshr i32 %and5.i, 24, !dbg !547
  %or7.i = or i32 %or4.i, %shr6.i, !dbg !547
  br label %put_unaligned_be32.exit, !dbg !547

cond.false.i55:                                   ; preds = %if.end39
  %47 = load i32, i32* %val.addr.i44, align 4, !dbg !547
  %call.i54 = call i32 @__fswab32(i32 %47) #7, !dbg !547
  br label %put_unaligned_be32.exit, !dbg !547

put_unaligned_be32.exit:                          ; preds = %cond.true.i53, %cond.false.i55
  %cond.i56 = phi i32 [ %or7.i, %cond.true.i53 ], [ %call.i54, %cond.false.i55 ], !dbg !547
  %48 = load i8*, i8** %p.addr.i45, align 8, !dbg !548
  %49 = bitcast i8* %48 to i32*, !dbg !549
  store i32 %cond.i56, i32* %49, align 4, !dbg !550
  br label %if.end42, !dbg !551

if.end42:                                         ; preds = %put_unaligned_be32.exit, %if.else
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %put_unaligned_be64.exit
  store i32 0, i32* %retval, align 4, !dbg !552
  br label %return, !dbg !552

return:                                           ; preds = %if.end43, %if.then15
  %50 = load i32, i32* %retval, align 4, !dbg !553
  ret i32 %50, !dbg !553
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @scsi_set_sense_field_pointer(i8* %buf, i32 %buf_len, i16 zeroext %fp, i8 zeroext %bp, i1 zeroext %cd) #0 !dbg !554 {
entry:
  %val.addr.i73 = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr.i73, metadata !558, metadata !DIExpression()), !dbg !562
  %p.addr.i74 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i74, metadata !567, metadata !DIExpression()), !dbg !568
  %val.addr.i = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr.i, metadata !558, metadata !DIExpression()), !dbg !569
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !567, metadata !DIExpression()), !dbg !572
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i32, align 4
  %fp.addr = alloca i16, align 2
  %bp.addr = alloca i8, align 1
  %cd.addr = alloca i8, align 1
  %ucp = alloca i8*, align 8
  %len = alloca i8, align 1
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !573, metadata !DIExpression()), !dbg !574
  store i32 %buf_len, i32* %buf_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buf_len.addr, metadata !575, metadata !DIExpression()), !dbg !576
  store i16 %fp, i16* %fp.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %fp.addr, metadata !577, metadata !DIExpression()), !dbg !578
  store i8 %bp, i8* %bp.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bp.addr, metadata !579, metadata !DIExpression()), !dbg !580
  %frombool = zext i1 %cd to i8
  store i8 %frombool, i8* %cd.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cd.addr, metadata !581, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.declare(metadata i8** %ucp, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.declare(metadata i8* %len, metadata !585, metadata !DIExpression()), !dbg !586
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !587
  %arrayidx = getelementptr i8, i8* %0, i64 0, !dbg !587
  %1 = load i8, i8* %arrayidx, align 1, !dbg !587
  %conv = zext i8 %1 to i32, !dbg !587
  %and = and i32 %conv, 127, !dbg !588
  %cmp = icmp eq i32 %and, 114, !dbg !589
  br i1 %cmp, label %if.then, label %if.else, !dbg !590

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !591
  %arrayidx2 = getelementptr i8, i8* %2, i64 7, !dbg !591
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !591
  store i8 %3, i8* %len, align 1, !dbg !592
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !593
  %5 = load i8, i8* %len, align 1, !dbg !594
  %conv3 = zext i8 %5 to i32, !dbg !594
  %add = add i32 %conv3, 8, !dbg !595
  %call = call i8* @scsi_sense_desc_find(i8* %4, i32 %add, i32 2) #5, !dbg !596
  store i8* %call, i8** %ucp, align 8, !dbg !597
  %6 = load i8*, i8** %ucp, align 8, !dbg !598
  %tobool = icmp ne i8* %6, null, !dbg !598
  br i1 %tobool, label %if.end, label %if.then4, !dbg !600

if.then4:                                         ; preds = %if.then
  %7 = load i8, i8* %len, align 1, !dbg !601
  %conv5 = zext i8 %7 to i32, !dbg !601
  %add6 = add i32 %conv5, 8, !dbg !603
  %conv7 = trunc i32 %add6 to i8, !dbg !601
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !604
  %arrayidx8 = getelementptr i8, i8* %8, i64 7, !dbg !604
  store i8 %conv7, i8* %arrayidx8, align 1, !dbg !605
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !606
  %add.ptr = getelementptr i8, i8* %9, i64 8, !dbg !607
  %10 = load i8, i8* %len, align 1, !dbg !608
  %conv9 = zext i8 %10 to i32, !dbg !608
  %idx.ext = sext i32 %conv9 to i64, !dbg !609
  %add.ptr10 = getelementptr i8, i8* %add.ptr, i64 %idx.ext, !dbg !609
  store i8* %add.ptr10, i8** %ucp, align 8, !dbg !610
  br label %if.end, !dbg !611

if.end:                                           ; preds = %if.then4, %if.then
  %11 = load i32, i32* %buf_len.addr, align 4, !dbg !612
  %12 = load i8, i8* %len, align 1, !dbg !614
  %conv11 = zext i8 %12 to i32, !dbg !614
  %add12 = add i32 %conv11, 8, !dbg !615
  %cmp13 = icmp slt i32 %11, %add12, !dbg !616
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !617

if.then15:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !618
  br label %return, !dbg !618

if.end16:                                         ; preds = %if.end
  %13 = load i8*, i8** %ucp, align 8, !dbg !619
  %arrayidx17 = getelementptr i8, i8* %13, i64 0, !dbg !619
  store i8 2, i8* %arrayidx17, align 1, !dbg !620
  %14 = load i8*, i8** %ucp, align 8, !dbg !621
  %arrayidx18 = getelementptr i8, i8* %14, i64 1, !dbg !621
  store i8 6, i8* %arrayidx18, align 1, !dbg !622
  %15 = load i8*, i8** %ucp, align 8, !dbg !623
  %arrayidx19 = getelementptr i8, i8* %15, i64 4, !dbg !623
  store i8 -128, i8* %arrayidx19, align 1, !dbg !624
  %16 = load i8, i8* %cd.addr, align 1, !dbg !625
  %tobool20 = trunc i8 %16 to i1, !dbg !625
  br i1 %tobool20, label %if.then21, label %if.end25, !dbg !627

if.then21:                                        ; preds = %if.end16
  %17 = load i8*, i8** %ucp, align 8, !dbg !628
  %arrayidx22 = getelementptr i8, i8* %17, i64 4, !dbg !628
  %18 = load i8, i8* %arrayidx22, align 1, !dbg !629
  %conv23 = zext i8 %18 to i32, !dbg !629
  %or = or i32 %conv23, 64, !dbg !629
  %conv24 = trunc i32 %or to i8, !dbg !629
  store i8 %conv24, i8* %arrayidx22, align 1, !dbg !629
  br label %if.end25, !dbg !628

if.end25:                                         ; preds = %if.then21, %if.end16
  %19 = load i8, i8* %bp.addr, align 1, !dbg !630
  %conv26 = zext i8 %19 to i32, !dbg !630
  %cmp27 = icmp slt i32 %conv26, 8, !dbg !632
  br i1 %cmp27, label %if.then29, label %if.end36, !dbg !633

if.then29:                                        ; preds = %if.end25
  %20 = load i8, i8* %bp.addr, align 1, !dbg !634
  %conv30 = zext i8 %20 to i32, !dbg !634
  %or31 = or i32 8, %conv30, !dbg !635
  %21 = load i8*, i8** %ucp, align 8, !dbg !636
  %arrayidx32 = getelementptr i8, i8* %21, i64 4, !dbg !636
  %22 = load i8, i8* %arrayidx32, align 1, !dbg !637
  %conv33 = zext i8 %22 to i32, !dbg !637
  %or34 = or i32 %conv33, %or31, !dbg !637
  %conv35 = trunc i32 %or34 to i8, !dbg !637
  store i8 %conv35, i8* %arrayidx32, align 1, !dbg !637
  br label %if.end36, !dbg !636

if.end36:                                         ; preds = %if.then29, %if.end25
  %23 = load i16, i16* %fp.addr, align 2, !dbg !638
  %24 = load i8*, i8** %ucp, align 8, !dbg !639
  %arrayidx37 = getelementptr i8, i8* %24, i64 5, !dbg !639
  store i16 %23, i16* %val.addr.i, align 2
  store i8* %arrayidx37, i8** %p.addr.i, align 8
  %25 = load i16, i16* %val.addr.i, align 2, !dbg !640
  %26 = call i1 @llvm.is.constant.i16(i16 %25) #6, !dbg !640
  br i1 %26, label %cond.true.i, label %cond.false.i, !dbg !640

cond.true.i:                                      ; preds = %if.end36
  %27 = load i16, i16* %val.addr.i, align 2, !dbg !640
  %conv.i = zext i16 %27 to i32, !dbg !640
  %and.i = and i32 %conv.i, 255, !dbg !640
  %shl.i = shl i32 %and.i, 8, !dbg !640
  %28 = load i16, i16* %val.addr.i, align 2, !dbg !640
  %conv1.i = zext i16 %28 to i32, !dbg !640
  %and2.i = and i32 %conv1.i, 65280, !dbg !640
  %shr.i = ashr i32 %and2.i, 8, !dbg !640
  %or.i = or i32 %shl.i, %shr.i, !dbg !640
  %conv3.i = trunc i32 %or.i to i16, !dbg !640
  %conv4.i = zext i16 %conv3.i to i32, !dbg !640
  br label %put_unaligned_be16.exit, !dbg !640

cond.false.i:                                     ; preds = %if.end36
  %29 = load i16, i16* %val.addr.i, align 2, !dbg !640
  %call.i = call zeroext i16 @__fswab16(i16 zeroext %29) #7, !dbg !640
  %conv5.i = zext i16 %call.i to i32, !dbg !640
  br label %put_unaligned_be16.exit, !dbg !640

put_unaligned_be16.exit:                          ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %conv4.i, %cond.true.i ], [ %conv5.i, %cond.false.i ], !dbg !640
  %conv6.i = trunc i32 %cond.i to i16, !dbg !640
  %30 = load i8*, i8** %p.addr.i, align 8, !dbg !641
  %31 = bitcast i8* %30 to i16*, !dbg !642
  store i16 %conv6.i, i16* %31, align 2, !dbg !643
  br label %if.end72, !dbg !644

if.else:                                          ; preds = %entry
  %32 = load i8*, i8** %buf.addr, align 8, !dbg !645
  %arrayidx38 = getelementptr i8, i8* %32, i64 0, !dbg !645
  %33 = load i8, i8* %arrayidx38, align 1, !dbg !645
  %conv39 = zext i8 %33 to i32, !dbg !645
  %and40 = and i32 %conv39, 127, !dbg !646
  %cmp41 = icmp eq i32 %and40, 112, !dbg !647
  br i1 %cmp41, label %if.then43, label %if.end71, !dbg !648

if.then43:                                        ; preds = %if.else
  %34 = load i8*, i8** %buf.addr, align 8, !dbg !649
  %arrayidx44 = getelementptr i8, i8* %34, i64 7, !dbg !649
  %35 = load i8, i8* %arrayidx44, align 1, !dbg !649
  store i8 %35, i8* %len, align 1, !dbg !650
  %36 = load i8, i8* %len, align 1, !dbg !651
  %conv45 = zext i8 %36 to i32, !dbg !651
  %cmp46 = icmp slt i32 %conv45, 18, !dbg !653
  br i1 %cmp46, label %if.then48, label %if.end50, !dbg !654

if.then48:                                        ; preds = %if.then43
  %37 = load i8*, i8** %buf.addr, align 8, !dbg !655
  %arrayidx49 = getelementptr i8, i8* %37, i64 7, !dbg !655
  store i8 18, i8* %arrayidx49, align 1, !dbg !656
  br label %if.end50, !dbg !655

if.end50:                                         ; preds = %if.then48, %if.then43
  %38 = load i8*, i8** %buf.addr, align 8, !dbg !657
  %arrayidx51 = getelementptr i8, i8* %38, i64 15, !dbg !657
  store i8 -128, i8* %arrayidx51, align 1, !dbg !658
  %39 = load i8, i8* %cd.addr, align 1, !dbg !659
  %tobool52 = trunc i8 %39 to i1, !dbg !659
  br i1 %tobool52, label %if.then53, label %if.end58, !dbg !661

if.then53:                                        ; preds = %if.end50
  %40 = load i8*, i8** %buf.addr, align 8, !dbg !662
  %arrayidx54 = getelementptr i8, i8* %40, i64 15, !dbg !662
  %41 = load i8, i8* %arrayidx54, align 1, !dbg !663
  %conv55 = zext i8 %41 to i32, !dbg !663
  %or56 = or i32 %conv55, 64, !dbg !663
  %conv57 = trunc i32 %or56 to i8, !dbg !663
  store i8 %conv57, i8* %arrayidx54, align 1, !dbg !663
  br label %if.end58, !dbg !662

if.end58:                                         ; preds = %if.then53, %if.end50
  %42 = load i8, i8* %bp.addr, align 1, !dbg !664
  %conv59 = zext i8 %42 to i32, !dbg !664
  %cmp60 = icmp slt i32 %conv59, 8, !dbg !666
  br i1 %cmp60, label %if.then62, label %if.end69, !dbg !667

if.then62:                                        ; preds = %if.end58
  %43 = load i8, i8* %bp.addr, align 1, !dbg !668
  %conv63 = zext i8 %43 to i32, !dbg !668
  %or64 = or i32 8, %conv63, !dbg !669
  %44 = load i8*, i8** %buf.addr, align 8, !dbg !670
  %arrayidx65 = getelementptr i8, i8* %44, i64 15, !dbg !670
  %45 = load i8, i8* %arrayidx65, align 1, !dbg !671
  %conv66 = zext i8 %45 to i32, !dbg !671
  %or67 = or i32 %conv66, %or64, !dbg !671
  %conv68 = trunc i32 %or67 to i8, !dbg !671
  store i8 %conv68, i8* %arrayidx65, align 1, !dbg !671
  br label %if.end69, !dbg !670

if.end69:                                         ; preds = %if.then62, %if.end58
  %46 = load i16, i16* %fp.addr, align 2, !dbg !672
  %47 = load i8*, i8** %buf.addr, align 8, !dbg !673
  %arrayidx70 = getelementptr i8, i8* %47, i64 16, !dbg !673
  store i16 %46, i16* %val.addr.i73, align 2
  store i8* %arrayidx70, i8** %p.addr.i74, align 8
  %48 = load i16, i16* %val.addr.i73, align 2, !dbg !674
  %49 = call i1 @llvm.is.constant.i16(i16 %48) #6, !dbg !674
  br i1 %49, label %cond.true.i84, label %cond.false.i87, !dbg !674

cond.true.i84:                                    ; preds = %if.end69
  %50 = load i16, i16* %val.addr.i73, align 2, !dbg !674
  %conv.i75 = zext i16 %50 to i32, !dbg !674
  %and.i76 = and i32 %conv.i75, 255, !dbg !674
  %shl.i77 = shl i32 %and.i76, 8, !dbg !674
  %51 = load i16, i16* %val.addr.i73, align 2, !dbg !674
  %conv1.i78 = zext i16 %51 to i32, !dbg !674
  %and2.i79 = and i32 %conv1.i78, 65280, !dbg !674
  %shr.i80 = ashr i32 %and2.i79, 8, !dbg !674
  %or.i81 = or i32 %shl.i77, %shr.i80, !dbg !674
  %conv3.i82 = trunc i32 %or.i81 to i16, !dbg !674
  %conv4.i83 = zext i16 %conv3.i82 to i32, !dbg !674
  br label %put_unaligned_be16.exit90, !dbg !674

cond.false.i87:                                   ; preds = %if.end69
  %52 = load i16, i16* %val.addr.i73, align 2, !dbg !674
  %call.i85 = call zeroext i16 @__fswab16(i16 zeroext %52) #7, !dbg !674
  %conv5.i86 = zext i16 %call.i85 to i32, !dbg !674
  br label %put_unaligned_be16.exit90, !dbg !674

put_unaligned_be16.exit90:                        ; preds = %cond.true.i84, %cond.false.i87
  %cond.i88 = phi i32 [ %conv4.i83, %cond.true.i84 ], [ %conv5.i86, %cond.false.i87 ], !dbg !674
  %conv6.i89 = trunc i32 %cond.i88 to i16, !dbg !674
  %53 = load i8*, i8** %p.addr.i74, align 8, !dbg !675
  %54 = bitcast i8* %53 to i16*, !dbg !676
  store i16 %conv6.i89, i16* %54, align 2, !dbg !677
  br label %if.end71, !dbg !678

if.end71:                                         ; preds = %put_unaligned_be16.exit90, %if.else
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %put_unaligned_be16.exit
  store i32 0, i32* %retval, align 4, !dbg !679
  br label %return, !dbg !679

return:                                           ; preds = %if.end72, %if.then15
  %55 = load i32, i32* %retval, align 4, !dbg !680
  ret i32 %55, !dbg !680
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i64 @__fswab64(i64 %val) #4 !dbg !681 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !685, metadata !DIExpression()), !dbg !686
  %0 = load i64, i64* %val.addr, align 8, !dbg !687
  %call = call i64 @__arch_swab64(i64 %0) #7, !dbg !688
  ret i64 %call, !dbg !689
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i64 @__arch_swab64(i64 %val) #4 !dbg !690 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !692, metadata !DIExpression()), !dbg !693
  %0 = load i64, i64* %val.addr, align 8, !dbg !694
  %1 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %0) #8, !dbg !695, !srcloc !696
  store i64 %1, i64* %val.addr, align 8, !dbg !695
  %2 = load i64, i64* %val.addr, align 8, !dbg !697
  ret i64 %2, !dbg !698
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #4 !dbg !699 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !702, metadata !DIExpression()), !dbg !703
  %0 = load i32, i32* %val.addr, align 4, !dbg !704
  %call = call i32 @__arch_swab32(i32 %0) #7, !dbg !705
  ret i32 %call, !dbg !706
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #4 !dbg !707 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !708, metadata !DIExpression()), !dbg !709
  %0 = load i32, i32* %val.addr, align 4, !dbg !710
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #8, !dbg !711, !srcloc !712
  store i32 %1, i32* %val.addr, align 4, !dbg !711
  %2 = load i32, i32* %val.addr, align 4, !dbg !713
  ret i32 %2, !dbg !714
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #3

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #4 !dbg !715 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !718, metadata !DIExpression()), !dbg !719
  %0 = load i16, i16* %val.addr, align 2, !dbg !720
  %conv = zext i16 %0 to i32, !dbg !720
  %and = and i32 %conv, 255, !dbg !720
  %shl = shl i32 %and, 8, !dbg !720
  %1 = load i16, i16* %val.addr, align 2, !dbg !720
  %conv1 = zext i16 %1 to i32, !dbg !720
  %and2 = and i32 %conv1, 65280, !dbg !720
  %shr = ashr i32 %and2, 8, !dbg !720
  %or = or i32 %shl, %shr, !dbg !720
  %conv3 = trunc i32 %or to i16, !dbg !720
  ret i16 %conv3, !dbg !721
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }
attributes #7 = { noredzone nounwind readnone }
attributes #8 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "scsi_device_types", scope: !2, file: !3, line: 17, type: !32, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/scsi/scsi_common.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !{!12, !13, !18, !20, !22, !15, !24, !25, !21, !26, !27, !28, !30}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !23, line: 34, baseType: !15)
!23 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !23, line: 32, baseType: !21)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !23, line: 30, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !29)
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!31 = !{!0}
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1344, elements: !36)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!36 = !{!37}
!37 = !DISubrange(count: 21)
!38 = !{i32 7, !"Dwarf Version", i32 4}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"Code Model", i32 2}
!42 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!43 = distinct !DISubprogram(name: "scsi_device_type", scope: !3, file: !3, line: 45, type: !44, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{!34, !7}
!46 = !{}
!47 = !DILocalVariable(name: "type", arg: 1, scope: !43, file: !3, line: 45, type: !7)
!48 = !DILocation(line: 45, column: 39, scope: !43)
!49 = !DILocation(line: 47, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !43, file: !3, line: 47, column: 6)
!51 = !DILocation(line: 47, column: 11, scope: !50)
!52 = !DILocation(line: 47, column: 6, scope: !43)
!53 = !DILocation(line: 48, column: 3, scope: !50)
!54 = !DILocation(line: 49, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !43, file: !3, line: 49, column: 6)
!56 = !DILocation(line: 49, column: 11, scope: !55)
!57 = !DILocation(line: 49, column: 6, scope: !43)
!58 = !DILocation(line: 50, column: 3, scope: !55)
!59 = !DILocation(line: 51, column: 6, scope: !60)
!60 = distinct !DILexicalBlock(scope: !43, file: !3, line: 51, column: 6)
!61 = !DILocation(line: 51, column: 11, scope: !60)
!62 = !DILocation(line: 51, column: 6, scope: !43)
!63 = !DILocation(line: 52, column: 3, scope: !60)
!64 = !DILocation(line: 53, column: 27, scope: !43)
!65 = !DILocation(line: 53, column: 9, scope: !43)
!66 = !DILocation(line: 53, column: 2, scope: !43)
!67 = !DILocation(line: 54, column: 1, scope: !43)
!68 = distinct !DISubprogram(name: "scsilun_to_int", scope: !3, file: !3, line: 77, type: !69, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!69 = !DISubroutineType(types: !70)
!70 = !{!13, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_lun", file: !73, line: 287, size: 64, elements: !74)
!73 = !DIFile(filename: "./include/scsi/scsi_proto.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_lun", scope: !72, file: !73, line: 288, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !79)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !78)
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !{!80}
!80 = !DISubrange(count: 8)
!81 = !DILocalVariable(name: "scsilun", arg: 1, scope: !68, file: !3, line: 77, type: !71)
!82 = !DILocation(line: 77, column: 37, scope: !68)
!83 = !DILocalVariable(name: "i", scope: !68, file: !3, line: 79, type: !12)
!84 = !DILocation(line: 79, column: 6, scope: !68)
!85 = !DILocalVariable(name: "lun", scope: !68, file: !3, line: 80, type: !13)
!86 = !DILocation(line: 80, column: 6, scope: !68)
!87 = !DILocation(line: 82, column: 6, scope: !68)
!88 = !DILocation(line: 83, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !68, file: !3, line: 83, column: 2)
!90 = !DILocation(line: 83, column: 7, scope: !89)
!91 = !DILocation(line: 83, column: 14, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !3, line: 83, column: 2)
!93 = !DILocation(line: 83, column: 16, scope: !92)
!94 = !DILocation(line: 83, column: 2, scope: !89)
!95 = !DILocation(line: 84, column: 9, scope: !92)
!96 = !DILocation(line: 84, column: 22, scope: !92)
!97 = !DILocation(line: 84, column: 31, scope: !92)
!98 = !DILocation(line: 84, column: 40, scope: !92)
!99 = !DILocation(line: 84, column: 17, scope: !92)
!100 = !DILocation(line: 84, column: 48, scope: !92)
!101 = !DILocation(line: 84, column: 50, scope: !92)
!102 = !DILocation(line: 84, column: 55, scope: !92)
!103 = !DILocation(line: 84, column: 43, scope: !92)
!104 = !DILocation(line: 85, column: 15, scope: !92)
!105 = !DILocation(line: 85, column: 24, scope: !92)
!106 = !DILocation(line: 85, column: 33, scope: !92)
!107 = !DILocation(line: 85, column: 35, scope: !92)
!108 = !DILocation(line: 85, column: 10, scope: !92)
!109 = !DILocation(line: 85, column: 44, scope: !92)
!110 = !DILocation(line: 85, column: 46, scope: !92)
!111 = !DILocation(line: 85, column: 40, scope: !92)
!112 = !DILocation(line: 84, column: 61, scope: !92)
!113 = !DILocation(line: 84, column: 13, scope: !92)
!114 = !DILocation(line: 84, column: 7, scope: !92)
!115 = !DILocation(line: 84, column: 3, scope: !92)
!116 = !DILocation(line: 83, column: 33, scope: !92)
!117 = !DILocation(line: 83, column: 2, scope: !92)
!118 = distinct !{!118, !94, !119}
!119 = !DILocation(line: 85, column: 51, scope: !89)
!120 = !DILocation(line: 86, column: 9, scope: !68)
!121 = !DILocation(line: 86, column: 2, scope: !68)
!122 = distinct !DISubprogram(name: "int_to_scsilun", scope: !3, file: !3, line: 105, type: !123, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !13, !71}
!125 = !DILocalVariable(name: "lun", arg: 1, scope: !122, file: !3, line: 105, type: !13)
!126 = !DILocation(line: 105, column: 25, scope: !122)
!127 = !DILocalVariable(name: "scsilun", arg: 2, scope: !122, file: !3, line: 105, type: !71)
!128 = !DILocation(line: 105, column: 47, scope: !122)
!129 = !DILocalVariable(name: "i", scope: !122, file: !3, line: 107, type: !12)
!130 = !DILocation(line: 107, column: 6, scope: !122)
!131 = !DILocation(line: 109, column: 9, scope: !122)
!132 = !DILocation(line: 109, column: 18, scope: !122)
!133 = !DILocation(line: 109, column: 2, scope: !122)
!134 = !DILocation(line: 111, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !122, file: !3, line: 111, column: 2)
!136 = !DILocation(line: 111, column: 7, scope: !135)
!137 = !DILocation(line: 111, column: 14, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 111, column: 2)
!139 = !DILocation(line: 111, column: 16, scope: !138)
!140 = !DILocation(line: 111, column: 2, scope: !135)
!141 = !DILocation(line: 112, column: 27, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !3, line: 111, column: 39)
!143 = !DILocation(line: 112, column: 31, scope: !142)
!144 = !DILocation(line: 112, column: 37, scope: !142)
!145 = !DILocation(line: 112, column: 26, scope: !142)
!146 = !DILocation(line: 112, column: 3, scope: !142)
!147 = !DILocation(line: 112, column: 12, scope: !142)
!148 = !DILocation(line: 112, column: 21, scope: !142)
!149 = !DILocation(line: 112, column: 24, scope: !142)
!150 = !DILocation(line: 113, column: 28, scope: !142)
!151 = !DILocation(line: 113, column: 32, scope: !142)
!152 = !DILocation(line: 113, column: 3, scope: !142)
!153 = !DILocation(line: 113, column: 12, scope: !142)
!154 = !DILocation(line: 113, column: 21, scope: !142)
!155 = !DILocation(line: 113, column: 22, scope: !142)
!156 = !DILocation(line: 113, column: 26, scope: !142)
!157 = !DILocation(line: 114, column: 9, scope: !142)
!158 = !DILocation(line: 114, column: 13, scope: !142)
!159 = !DILocation(line: 114, column: 7, scope: !142)
!160 = !DILocation(line: 115, column: 2, scope: !142)
!161 = !DILocation(line: 111, column: 33, scope: !138)
!162 = !DILocation(line: 111, column: 2, scope: !138)
!163 = distinct !{!163, !140, !164}
!164 = !DILocation(line: 115, column: 2, scope: !135)
!165 = !DILocation(line: 116, column: 1, scope: !122)
!166 = distinct !DISubprogram(name: "scsi_normalize_sense", scope: !3, file: !3, line: 138, type: !167, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !172, !12, !175}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !170, line: 30, baseType: !171)
!170 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!171 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !77)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_sense_hdr", file: !177, line: 50, size: 64, elements: !178)
!177 = !DIFile(filename: "./include/scsi/scsi_common.h", directory: "/home/lizy2001/genbc/linux")
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "response_code", scope: !176, file: !177, line: 51, baseType: !174, size: 8)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sense_key", scope: !176, file: !177, line: 52, baseType: !174, size: 8, offset: 8)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "asc", scope: !176, file: !177, line: 53, baseType: !174, size: 8, offset: 16)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ascq", scope: !176, file: !177, line: 54, baseType: !174, size: 8, offset: 24)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "byte4", scope: !176, file: !177, line: 55, baseType: !174, size: 8, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "byte5", scope: !176, file: !177, line: 56, baseType: !174, size: 8, offset: 40)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "byte6", scope: !176, file: !177, line: 57, baseType: !174, size: 8, offset: 48)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "additional_length", scope: !176, file: !177, line: 58, baseType: !174, size: 8, offset: 56)
!187 = !DILocalVariable(name: "sense_buffer", arg: 1, scope: !166, file: !3, line: 138, type: !172)
!188 = !DILocation(line: 138, column: 37, scope: !166)
!189 = !DILocalVariable(name: "sb_len", arg: 2, scope: !166, file: !3, line: 138, type: !12)
!190 = !DILocation(line: 138, column: 55, scope: !166)
!191 = !DILocalVariable(name: "sshdr", arg: 3, scope: !166, file: !3, line: 139, type: !175)
!192 = !DILocation(line: 139, column: 29, scope: !166)
!193 = !DILocation(line: 141, column: 9, scope: !166)
!194 = !DILocation(line: 141, column: 2, scope: !166)
!195 = !DILocation(line: 143, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !166, file: !3, line: 143, column: 6)
!197 = !DILocation(line: 143, column: 20, scope: !196)
!198 = !DILocation(line: 143, column: 24, scope: !196)
!199 = !DILocation(line: 143, column: 6, scope: !166)
!200 = !DILocation(line: 144, column: 3, scope: !196)
!201 = !DILocation(line: 146, column: 26, scope: !166)
!202 = !DILocation(line: 146, column: 42, scope: !166)
!203 = !DILocation(line: 146, column: 25, scope: !166)
!204 = !DILocation(line: 146, column: 2, scope: !166)
!205 = !DILocation(line: 146, column: 9, scope: !166)
!206 = !DILocation(line: 146, column: 23, scope: !166)
!207 = !DILocation(line: 148, column: 24, scope: !208)
!208 = distinct !DILexicalBlock(scope: !166, file: !3, line: 148, column: 6)
!209 = !DILocation(line: 148, column: 7, scope: !208)
!210 = !DILocation(line: 148, column: 6, scope: !166)
!211 = !DILocation(line: 149, column: 3, scope: !208)
!212 = !DILocation(line: 151, column: 6, scope: !213)
!213 = distinct !DILexicalBlock(scope: !166, file: !3, line: 151, column: 6)
!214 = !DILocation(line: 151, column: 13, scope: !213)
!215 = !DILocation(line: 151, column: 27, scope: !213)
!216 = !DILocation(line: 151, column: 6, scope: !166)
!217 = !DILocation(line: 155, column: 7, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 155, column: 7)
!219 = distinct !DILexicalBlock(scope: !213, file: !3, line: 151, column: 36)
!220 = !DILocation(line: 155, column: 14, scope: !218)
!221 = !DILocation(line: 155, column: 7, scope: !219)
!222 = !DILocation(line: 156, column: 24, scope: !218)
!223 = !DILocation(line: 156, column: 40, scope: !218)
!224 = !DILocation(line: 156, column: 23, scope: !218)
!225 = !DILocation(line: 156, column: 4, scope: !218)
!226 = !DILocation(line: 156, column: 11, scope: !218)
!227 = !DILocation(line: 156, column: 21, scope: !218)
!228 = !DILocation(line: 157, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !219, file: !3, line: 157, column: 7)
!230 = !DILocation(line: 157, column: 14, scope: !229)
!231 = !DILocation(line: 157, column: 7, scope: !219)
!232 = !DILocation(line: 158, column: 17, scope: !229)
!233 = !DILocation(line: 158, column: 4, scope: !229)
!234 = !DILocation(line: 158, column: 11, scope: !229)
!235 = !DILocation(line: 158, column: 15, scope: !229)
!236 = !DILocation(line: 159, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !219, file: !3, line: 159, column: 7)
!238 = !DILocation(line: 159, column: 14, scope: !237)
!239 = !DILocation(line: 159, column: 7, scope: !219)
!240 = !DILocation(line: 160, column: 18, scope: !237)
!241 = !DILocation(line: 160, column: 4, scope: !237)
!242 = !DILocation(line: 160, column: 11, scope: !237)
!243 = !DILocation(line: 160, column: 16, scope: !237)
!244 = !DILocation(line: 161, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !219, file: !3, line: 161, column: 7)
!246 = !DILocation(line: 161, column: 14, scope: !245)
!247 = !DILocation(line: 161, column: 7, scope: !219)
!248 = !DILocation(line: 162, column: 31, scope: !245)
!249 = !DILocation(line: 162, column: 4, scope: !245)
!250 = !DILocation(line: 162, column: 11, scope: !245)
!251 = !DILocation(line: 162, column: 29, scope: !245)
!252 = !DILocation(line: 163, column: 2, scope: !219)
!253 = !DILocation(line: 167, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 167, column: 7)
!255 = distinct !DILexicalBlock(scope: !213, file: !3, line: 163, column: 9)
!256 = !DILocation(line: 167, column: 14, scope: !254)
!257 = !DILocation(line: 167, column: 7, scope: !255)
!258 = !DILocation(line: 168, column: 24, scope: !254)
!259 = !DILocation(line: 168, column: 40, scope: !254)
!260 = !DILocation(line: 168, column: 23, scope: !254)
!261 = !DILocation(line: 168, column: 4, scope: !254)
!262 = !DILocation(line: 168, column: 11, scope: !254)
!263 = !DILocation(line: 168, column: 21, scope: !254)
!264 = !DILocation(line: 169, column: 7, scope: !265)
!265 = distinct !DILexicalBlock(scope: !255, file: !3, line: 169, column: 7)
!266 = !DILocation(line: 169, column: 14, scope: !265)
!267 = !DILocation(line: 169, column: 7, scope: !255)
!268 = !DILocation(line: 170, column: 14, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !3, line: 169, column: 19)
!270 = !DILocation(line: 170, column: 24, scope: !269)
!271 = !DILocation(line: 170, column: 40, scope: !269)
!272 = !DILocation(line: 170, column: 21, scope: !269)
!273 = !DILocation(line: 170, column: 13, scope: !269)
!274 = !DILocation(line: 171, column: 7, scope: !269)
!275 = !DILocation(line: 171, column: 17, scope: !269)
!276 = !DILocation(line: 171, column: 33, scope: !269)
!277 = !DILocation(line: 170, column: 11, scope: !269)
!278 = !DILocation(line: 172, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !269, file: !3, line: 172, column: 8)
!280 = !DILocation(line: 172, column: 15, scope: !279)
!281 = !DILocation(line: 172, column: 8, scope: !269)
!282 = !DILocation(line: 173, column: 18, scope: !279)
!283 = !DILocation(line: 173, column: 5, scope: !279)
!284 = !DILocation(line: 173, column: 12, scope: !279)
!285 = !DILocation(line: 173, column: 16, scope: !279)
!286 = !DILocation(line: 174, column: 8, scope: !287)
!287 = distinct !DILexicalBlock(scope: !269, file: !3, line: 174, column: 8)
!288 = !DILocation(line: 174, column: 15, scope: !287)
!289 = !DILocation(line: 174, column: 8, scope: !269)
!290 = !DILocation(line: 175, column: 19, scope: !287)
!291 = !DILocation(line: 175, column: 5, scope: !287)
!292 = !DILocation(line: 175, column: 12, scope: !287)
!293 = !DILocation(line: 175, column: 17, scope: !287)
!294 = !DILocation(line: 176, column: 3, scope: !269)
!295 = !DILocation(line: 179, column: 2, scope: !166)
!296 = !DILocation(line: 180, column: 1, scope: !166)
!297 = distinct !DISubprogram(name: "scsi_sense_valid", scope: !177, file: !177, line: 61, type: !298, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !46)
!298 = !DISubroutineType(types: !299)
!299 = !{!169, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!302 = !DILocalVariable(name: "sshdr", arg: 1, scope: !297, file: !177, line: 61, type: !300)
!303 = !DILocation(line: 61, column: 66, scope: !297)
!304 = !DILocation(line: 63, column: 7, scope: !305)
!305 = distinct !DILexicalBlock(scope: !297, file: !177, line: 63, column: 6)
!306 = !DILocation(line: 63, column: 6, scope: !297)
!307 = !DILocation(line: 64, column: 3, scope: !305)
!308 = !DILocation(line: 66, column: 10, scope: !297)
!309 = !DILocation(line: 66, column: 17, scope: !297)
!310 = !DILocation(line: 66, column: 31, scope: !297)
!311 = !DILocation(line: 66, column: 39, scope: !297)
!312 = !DILocation(line: 66, column: 2, scope: !297)
!313 = !DILocation(line: 67, column: 1, scope: !297)
!314 = distinct !DISubprogram(name: "scsi_sense_desc_find", scope: !3, file: !3, line: 196, type: !315, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!315 = !DISubroutineType(types: !316)
!316 = !{!172, !172, !12, !12}
!317 = !DILocalVariable(name: "sense_buffer", arg: 1, scope: !314, file: !3, line: 196, type: !172)
!318 = !DILocation(line: 196, column: 44, scope: !314)
!319 = !DILocalVariable(name: "sb_len", arg: 2, scope: !314, file: !3, line: 196, type: !12)
!320 = !DILocation(line: 196, column: 62, scope: !314)
!321 = !DILocalVariable(name: "desc_type", arg: 3, scope: !314, file: !3, line: 197, type: !12)
!322 = !DILocation(line: 197, column: 9, scope: !314)
!323 = !DILocalVariable(name: "add_sen_len", scope: !314, file: !3, line: 199, type: !12)
!324 = !DILocation(line: 199, column: 6, scope: !314)
!325 = !DILocalVariable(name: "add_len", scope: !314, file: !3, line: 199, type: !12)
!326 = !DILocation(line: 199, column: 19, scope: !314)
!327 = !DILocalVariable(name: "desc_len", scope: !314, file: !3, line: 199, type: !12)
!328 = !DILocation(line: 199, column: 28, scope: !314)
!329 = !DILocalVariable(name: "k", scope: !314, file: !3, line: 199, type: !12)
!330 = !DILocation(line: 199, column: 38, scope: !314)
!331 = !DILocalVariable(name: "descp", scope: !314, file: !3, line: 200, type: !172)
!332 = !DILocation(line: 200, column: 13, scope: !314)
!333 = !DILocation(line: 202, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !314, file: !3, line: 202, column: 6)
!335 = !DILocation(line: 202, column: 14, scope: !334)
!336 = !DILocation(line: 202, column: 19, scope: !334)
!337 = !DILocation(line: 202, column: 43, scope: !334)
!338 = !DILocation(line: 202, column: 41, scope: !334)
!339 = !DILocation(line: 202, column: 25, scope: !334)
!340 = !DILocation(line: 202, column: 6, scope: !314)
!341 = !DILocation(line: 203, column: 3, scope: !334)
!342 = !DILocation(line: 204, column: 7, scope: !343)
!343 = distinct !DILexicalBlock(scope: !314, file: !3, line: 204, column: 6)
!344 = !DILocation(line: 204, column: 23, scope: !343)
!345 = !DILocation(line: 204, column: 31, scope: !343)
!346 = !DILocation(line: 204, column: 35, scope: !343)
!347 = !DILocation(line: 204, column: 51, scope: !343)
!348 = !DILocation(line: 204, column: 6, scope: !314)
!349 = !DILocation(line: 205, column: 3, scope: !343)
!350 = !DILocation(line: 206, column: 17, scope: !314)
!351 = !DILocation(line: 206, column: 32, scope: !314)
!352 = !DILocation(line: 206, column: 39, scope: !314)
!353 = !DILocation(line: 206, column: 29, scope: !314)
!354 = !DILocation(line: 206, column: 16, scope: !314)
!355 = !DILocation(line: 207, column: 4, scope: !314)
!356 = !DILocation(line: 207, column: 19, scope: !314)
!357 = !DILocation(line: 207, column: 26, scope: !314)
!358 = !DILocation(line: 206, column: 14, scope: !314)
!359 = !DILocation(line: 208, column: 11, scope: !314)
!360 = !DILocation(line: 208, column: 8, scope: !314)
!361 = !DILocation(line: 209, column: 16, scope: !362)
!362 = distinct !DILexicalBlock(scope: !314, file: !3, line: 209, column: 2)
!363 = !DILocation(line: 209, column: 23, scope: !362)
!364 = !DILocation(line: 209, column: 7, scope: !362)
!365 = !DILocation(line: 209, column: 28, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !3, line: 209, column: 2)
!367 = !DILocation(line: 209, column: 32, scope: !366)
!368 = !DILocation(line: 209, column: 30, scope: !366)
!369 = !DILocation(line: 209, column: 2, scope: !362)
!370 = !DILocation(line: 210, column: 12, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !3, line: 209, column: 60)
!372 = !DILocation(line: 210, column: 9, scope: !371)
!373 = !DILocation(line: 211, column: 14, scope: !371)
!374 = !DILocation(line: 211, column: 19, scope: !371)
!375 = !DILocation(line: 211, column: 31, scope: !371)
!376 = !DILocation(line: 211, column: 16, scope: !371)
!377 = !DILocation(line: 211, column: 13, scope: !371)
!378 = !DILocation(line: 211, column: 39, scope: !371)
!379 = !DILocation(line: 211, column: 11, scope: !371)
!380 = !DILocation(line: 212, column: 14, scope: !371)
!381 = !DILocation(line: 212, column: 22, scope: !371)
!382 = !DILocation(line: 212, column: 12, scope: !371)
!383 = !DILocation(line: 213, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !371, file: !3, line: 213, column: 7)
!385 = !DILocation(line: 213, column: 19, scope: !384)
!386 = !DILocation(line: 213, column: 16, scope: !384)
!387 = !DILocation(line: 213, column: 7, scope: !371)
!388 = !DILocation(line: 214, column: 11, scope: !384)
!389 = !DILocation(line: 214, column: 4, scope: !384)
!390 = !DILocation(line: 215, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !371, file: !3, line: 215, column: 7)
!392 = !DILocation(line: 215, column: 15, scope: !391)
!393 = !DILocation(line: 215, column: 7, scope: !371)
!394 = !DILocation(line: 216, column: 4, scope: !391)
!395 = !DILocation(line: 217, column: 2, scope: !371)
!396 = !DILocation(line: 209, column: 50, scope: !366)
!397 = !DILocation(line: 209, column: 47, scope: !366)
!398 = !DILocation(line: 209, column: 2, scope: !366)
!399 = distinct !{!399, !369, !400}
!400 = !DILocation(line: 217, column: 2, scope: !362)
!401 = !DILocation(line: 218, column: 2, scope: !314)
!402 = !DILocation(line: 219, column: 1, scope: !314)
!403 = distinct !DISubprogram(name: "scsi_build_sense_buffer", scope: !3, file: !3, line: 232, type: !404, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !12, !406, !174, !174, !174}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!407 = !DILocalVariable(name: "desc", arg: 1, scope: !403, file: !3, line: 232, type: !12)
!408 = !DILocation(line: 232, column: 34, scope: !403)
!409 = !DILocalVariable(name: "buf", arg: 2, scope: !403, file: !3, line: 232, type: !406)
!410 = !DILocation(line: 232, column: 44, scope: !403)
!411 = !DILocalVariable(name: "key", arg: 3, scope: !403, file: !3, line: 232, type: !174)
!412 = !DILocation(line: 232, column: 52, scope: !403)
!413 = !DILocalVariable(name: "asc", arg: 4, scope: !403, file: !3, line: 232, type: !174)
!414 = !DILocation(line: 232, column: 60, scope: !403)
!415 = !DILocalVariable(name: "ascq", arg: 5, scope: !403, file: !3, line: 232, type: !174)
!416 = !DILocation(line: 232, column: 68, scope: !403)
!417 = !DILocation(line: 234, column: 6, scope: !418)
!418 = distinct !DILexicalBlock(scope: !403, file: !3, line: 234, column: 6)
!419 = !DILocation(line: 234, column: 6, scope: !403)
!420 = !DILocation(line: 235, column: 3, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !3, line: 234, column: 12)
!422 = !DILocation(line: 235, column: 10, scope: !421)
!423 = !DILocation(line: 236, column: 12, scope: !421)
!424 = !DILocation(line: 236, column: 3, scope: !421)
!425 = !DILocation(line: 236, column: 10, scope: !421)
!426 = !DILocation(line: 237, column: 12, scope: !421)
!427 = !DILocation(line: 237, column: 3, scope: !421)
!428 = !DILocation(line: 237, column: 10, scope: !421)
!429 = !DILocation(line: 238, column: 12, scope: !421)
!430 = !DILocation(line: 238, column: 3, scope: !421)
!431 = !DILocation(line: 238, column: 10, scope: !421)
!432 = !DILocation(line: 239, column: 3, scope: !421)
!433 = !DILocation(line: 239, column: 10, scope: !421)
!434 = !DILocation(line: 240, column: 2, scope: !421)
!435 = !DILocation(line: 241, column: 3, scope: !436)
!436 = distinct !DILexicalBlock(scope: !418, file: !3, line: 240, column: 9)
!437 = !DILocation(line: 241, column: 10, scope: !436)
!438 = !DILocation(line: 242, column: 12, scope: !436)
!439 = !DILocation(line: 242, column: 3, scope: !436)
!440 = !DILocation(line: 242, column: 10, scope: !436)
!441 = !DILocation(line: 243, column: 3, scope: !436)
!442 = !DILocation(line: 243, column: 10, scope: !436)
!443 = !DILocation(line: 244, column: 13, scope: !436)
!444 = !DILocation(line: 244, column: 3, scope: !436)
!445 = !DILocation(line: 244, column: 11, scope: !436)
!446 = !DILocation(line: 245, column: 13, scope: !436)
!447 = !DILocation(line: 245, column: 3, scope: !436)
!448 = !DILocation(line: 245, column: 11, scope: !436)
!449 = !DILocation(line: 247, column: 1, scope: !403)
!450 = distinct !DISubprogram(name: "scsi_set_sense_information", scope: !3, file: !3, line: 260, type: !451, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!451 = !DISubroutineType(types: !452)
!452 = !{!12, !406, !12, !13}
!453 = !DILocalVariable(name: "val", arg: 1, scope: !454, file: !455, line: 58, type: !20)
!454 = distinct !DISubprogram(name: "put_unaligned_be32", scope: !455, file: !455, line: 58, type: !456, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DIFile(filename: "./include/linux/unaligned/access_ok.h", directory: "/home/lizy2001/genbc/linux")
!456 = !DISubroutineType(types: !457)
!457 = !{null, !20, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!459 = !DILocation(line: 58, column: 52, scope: !454, inlinedAt: !460)
!460 = distinct !DILocation(line: 291, column: 3, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !3, line: 281, column: 38)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 281, column: 13)
!463 = distinct !DILexicalBlock(scope: !450, file: !3, line: 262, column: 6)
!464 = !DILocalVariable(name: "p", arg: 2, scope: !454, file: !455, line: 58, type: !458)
!465 = !DILocation(line: 58, column: 63, scope: !454, inlinedAt: !460)
!466 = !DILocalVariable(name: "val", arg: 1, scope: !467, file: !455, line: 63, type: !13)
!467 = distinct !DISubprogram(name: "put_unaligned_be64", scope: !455, file: !455, line: 63, type: !468, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !46)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !13, !458}
!470 = !DILocation(line: 63, column: 52, scope: !467, inlinedAt: !471)
!471 = distinct !DILocation(line: 280, column: 3, scope: !472)
!472 = distinct !DILexicalBlock(scope: !463, file: !3, line: 262, column: 31)
!473 = !DILocalVariable(name: "p", arg: 2, scope: !467, file: !455, line: 63, type: !458)
!474 = !DILocation(line: 63, column: 63, scope: !467, inlinedAt: !471)
!475 = !DILocalVariable(name: "buf", arg: 1, scope: !450, file: !3, line: 260, type: !406)
!476 = !DILocation(line: 260, column: 36, scope: !450)
!477 = !DILocalVariable(name: "buf_len", arg: 2, scope: !450, file: !3, line: 260, type: !12)
!478 = !DILocation(line: 260, column: 45, scope: !450)
!479 = !DILocalVariable(name: "info", arg: 3, scope: !450, file: !3, line: 260, type: !13)
!480 = !DILocation(line: 260, column: 58, scope: !450)
!481 = !DILocation(line: 262, column: 7, scope: !463)
!482 = !DILocation(line: 262, column: 14, scope: !463)
!483 = !DILocation(line: 262, column: 22, scope: !463)
!484 = !DILocation(line: 262, column: 6, scope: !450)
!485 = !DILocalVariable(name: "ucp", scope: !472, file: !3, line: 263, type: !406)
!486 = !DILocation(line: 263, column: 7, scope: !472)
!487 = !DILocalVariable(name: "len", scope: !472, file: !3, line: 263, type: !174)
!488 = !DILocation(line: 263, column: 12, scope: !472)
!489 = !DILocation(line: 265, column: 9, scope: !472)
!490 = !DILocation(line: 265, column: 7, scope: !472)
!491 = !DILocation(line: 266, column: 38, scope: !472)
!492 = !DILocation(line: 266, column: 43, scope: !472)
!493 = !DILocation(line: 266, column: 47, scope: !472)
!494 = !DILocation(line: 266, column: 17, scope: !472)
!495 = !DILocation(line: 266, column: 7, scope: !472)
!496 = !DILocation(line: 267, column: 8, scope: !497)
!497 = distinct !DILexicalBlock(scope: !472, file: !3, line: 267, column: 7)
!498 = !DILocation(line: 267, column: 7, scope: !472)
!499 = !DILocation(line: 268, column: 13, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !3, line: 267, column: 13)
!501 = !DILocation(line: 268, column: 17, scope: !500)
!502 = !DILocation(line: 268, column: 4, scope: !500)
!503 = !DILocation(line: 268, column: 11, scope: !500)
!504 = !DILocation(line: 269, column: 10, scope: !500)
!505 = !DILocation(line: 269, column: 14, scope: !500)
!506 = !DILocation(line: 269, column: 20, scope: !500)
!507 = !DILocation(line: 269, column: 18, scope: !500)
!508 = !DILocation(line: 269, column: 8, scope: !500)
!509 = !DILocation(line: 270, column: 3, scope: !500)
!510 = !DILocation(line: 272, column: 7, scope: !511)
!511 = distinct !DILexicalBlock(scope: !472, file: !3, line: 272, column: 7)
!512 = !DILocation(line: 272, column: 17, scope: !511)
!513 = !DILocation(line: 272, column: 21, scope: !511)
!514 = !DILocation(line: 272, column: 15, scope: !511)
!515 = !DILocation(line: 272, column: 7, scope: !472)
!516 = !DILocation(line: 274, column: 4, scope: !511)
!517 = !DILocation(line: 276, column: 3, scope: !472)
!518 = !DILocation(line: 276, column: 10, scope: !472)
!519 = !DILocation(line: 277, column: 3, scope: !472)
!520 = !DILocation(line: 277, column: 10, scope: !472)
!521 = !DILocation(line: 278, column: 3, scope: !472)
!522 = !DILocation(line: 278, column: 10, scope: !472)
!523 = !DILocation(line: 279, column: 3, scope: !472)
!524 = !DILocation(line: 279, column: 10, scope: !472)
!525 = !DILocation(line: 280, column: 22, scope: !472)
!526 = !DILocation(line: 280, column: 29, scope: !472)
!527 = !DILocation(line: 65, column: 19, scope: !467, inlinedAt: !471)
!528 = !DILocation(line: 65, column: 14, scope: !467, inlinedAt: !471)
!529 = !DILocation(line: 65, column: 4, scope: !467, inlinedAt: !471)
!530 = !DILocation(line: 65, column: 17, scope: !467, inlinedAt: !471)
!531 = !DILocation(line: 281, column: 2, scope: !472)
!532 = !DILocation(line: 281, column: 14, scope: !462)
!533 = !DILocation(line: 281, column: 21, scope: !462)
!534 = !DILocation(line: 281, column: 29, scope: !462)
!535 = !DILocation(line: 281, column: 13, scope: !463)
!536 = !DILocation(line: 287, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !461, file: !3, line: 287, column: 7)
!538 = !DILocation(line: 287, column: 12, scope: !537)
!539 = !DILocation(line: 287, column: 7, scope: !461)
!540 = !DILocation(line: 288, column: 4, scope: !537)
!541 = !DILocation(line: 288, column: 11, scope: !537)
!542 = !DILocation(line: 290, column: 4, scope: !537)
!543 = !DILocation(line: 290, column: 11, scope: !537)
!544 = !DILocation(line: 291, column: 27, scope: !461)
!545 = !DILocation(line: 291, column: 22, scope: !461)
!546 = !DILocation(line: 291, column: 34, scope: !461)
!547 = !DILocation(line: 60, column: 19, scope: !454, inlinedAt: !460)
!548 = !DILocation(line: 60, column: 14, scope: !454, inlinedAt: !460)
!549 = !DILocation(line: 60, column: 4, scope: !454, inlinedAt: !460)
!550 = !DILocation(line: 60, column: 17, scope: !454, inlinedAt: !460)
!551 = !DILocation(line: 292, column: 2, scope: !461)
!552 = !DILocation(line: 294, column: 2, scope: !450)
!553 = !DILocation(line: 295, column: 1, scope: !450)
!554 = distinct !DISubprogram(name: "scsi_set_sense_field_pointer", scope: !3, file: !3, line: 310, type: !555, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DISubroutineType(types: !556)
!556 = !{!12, !406, !12, !557, !174, !169}
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !28)
!558 = !DILocalVariable(name: "val", arg: 1, scope: !559, file: !455, line: 53, type: !557)
!559 = distinct !DISubprogram(name: "put_unaligned_be16", scope: !455, file: !455, line: 53, type: !560, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !557, !458}
!562 = !DILocation(line: 53, column: 52, scope: !559, inlinedAt: !563)
!563 = distinct !DILocation(line: 344, column: 3, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 334, column: 38)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 334, column: 13)
!566 = distinct !DILexicalBlock(scope: !554, file: !3, line: 314, column: 6)
!567 = !DILocalVariable(name: "p", arg: 2, scope: !559, file: !455, line: 53, type: !458)
!568 = !DILocation(line: 53, column: 63, scope: !559, inlinedAt: !563)
!569 = !DILocation(line: 53, column: 52, scope: !559, inlinedAt: !570)
!570 = distinct !DILocation(line: 333, column: 3, scope: !571)
!571 = distinct !DILexicalBlock(scope: !566, file: !3, line: 314, column: 31)
!572 = !DILocation(line: 53, column: 63, scope: !559, inlinedAt: !570)
!573 = !DILocalVariable(name: "buf", arg: 1, scope: !554, file: !3, line: 310, type: !406)
!574 = !DILocation(line: 310, column: 38, scope: !554)
!575 = !DILocalVariable(name: "buf_len", arg: 2, scope: !554, file: !3, line: 310, type: !12)
!576 = !DILocation(line: 310, column: 47, scope: !554)
!577 = !DILocalVariable(name: "fp", arg: 3, scope: !554, file: !3, line: 310, type: !557)
!578 = !DILocation(line: 310, column: 60, scope: !554)
!579 = !DILocalVariable(name: "bp", arg: 4, scope: !554, file: !3, line: 310, type: !174)
!580 = !DILocation(line: 310, column: 67, scope: !554)
!581 = !DILocalVariable(name: "cd", arg: 5, scope: !554, file: !3, line: 310, type: !169)
!582 = !DILocation(line: 310, column: 76, scope: !554)
!583 = !DILocalVariable(name: "ucp", scope: !554, file: !3, line: 312, type: !406)
!584 = !DILocation(line: 312, column: 6, scope: !554)
!585 = !DILocalVariable(name: "len", scope: !554, file: !3, line: 312, type: !174)
!586 = !DILocation(line: 312, column: 11, scope: !554)
!587 = !DILocation(line: 314, column: 7, scope: !566)
!588 = !DILocation(line: 314, column: 14, scope: !566)
!589 = !DILocation(line: 314, column: 22, scope: !566)
!590 = !DILocation(line: 314, column: 6, scope: !554)
!591 = !DILocation(line: 315, column: 9, scope: !571)
!592 = !DILocation(line: 315, column: 7, scope: !571)
!593 = !DILocation(line: 316, column: 38, scope: !571)
!594 = !DILocation(line: 316, column: 43, scope: !571)
!595 = !DILocation(line: 316, column: 47, scope: !571)
!596 = !DILocation(line: 316, column: 17, scope: !571)
!597 = !DILocation(line: 316, column: 7, scope: !571)
!598 = !DILocation(line: 317, column: 8, scope: !599)
!599 = distinct !DILexicalBlock(scope: !571, file: !3, line: 317, column: 7)
!600 = !DILocation(line: 317, column: 7, scope: !571)
!601 = !DILocation(line: 318, column: 13, scope: !602)
!602 = distinct !DILexicalBlock(scope: !599, file: !3, line: 317, column: 13)
!603 = !DILocation(line: 318, column: 17, scope: !602)
!604 = !DILocation(line: 318, column: 4, scope: !602)
!605 = !DILocation(line: 318, column: 11, scope: !602)
!606 = !DILocation(line: 319, column: 10, scope: !602)
!607 = !DILocation(line: 319, column: 14, scope: !602)
!608 = !DILocation(line: 319, column: 20, scope: !602)
!609 = !DILocation(line: 319, column: 18, scope: !602)
!610 = !DILocation(line: 319, column: 8, scope: !602)
!611 = !DILocation(line: 320, column: 3, scope: !602)
!612 = !DILocation(line: 322, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !571, file: !3, line: 322, column: 7)
!614 = !DILocation(line: 322, column: 17, scope: !613)
!615 = !DILocation(line: 322, column: 21, scope: !613)
!616 = !DILocation(line: 322, column: 15, scope: !613)
!617 = !DILocation(line: 322, column: 7, scope: !571)
!618 = !DILocation(line: 324, column: 4, scope: !613)
!619 = !DILocation(line: 326, column: 3, scope: !571)
!620 = !DILocation(line: 326, column: 10, scope: !571)
!621 = !DILocation(line: 327, column: 3, scope: !571)
!622 = !DILocation(line: 327, column: 10, scope: !571)
!623 = !DILocation(line: 328, column: 3, scope: !571)
!624 = !DILocation(line: 328, column: 10, scope: !571)
!625 = !DILocation(line: 329, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !571, file: !3, line: 329, column: 7)
!627 = !DILocation(line: 329, column: 7, scope: !571)
!628 = !DILocation(line: 330, column: 4, scope: !626)
!629 = !DILocation(line: 330, column: 11, scope: !626)
!630 = !DILocation(line: 331, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !571, file: !3, line: 331, column: 7)
!632 = !DILocation(line: 331, column: 10, scope: !631)
!633 = !DILocation(line: 331, column: 7, scope: !571)
!634 = !DILocation(line: 332, column: 20, scope: !631)
!635 = !DILocation(line: 332, column: 18, scope: !631)
!636 = !DILocation(line: 332, column: 4, scope: !631)
!637 = !DILocation(line: 332, column: 11, scope: !631)
!638 = !DILocation(line: 333, column: 22, scope: !571)
!639 = !DILocation(line: 333, column: 27, scope: !571)
!640 = !DILocation(line: 55, column: 19, scope: !559, inlinedAt: !570)
!641 = !DILocation(line: 55, column: 14, scope: !559, inlinedAt: !570)
!642 = !DILocation(line: 55, column: 4, scope: !559, inlinedAt: !570)
!643 = !DILocation(line: 55, column: 17, scope: !559, inlinedAt: !570)
!644 = !DILocation(line: 334, column: 2, scope: !571)
!645 = !DILocation(line: 334, column: 14, scope: !565)
!646 = !DILocation(line: 334, column: 21, scope: !565)
!647 = !DILocation(line: 334, column: 29, scope: !565)
!648 = !DILocation(line: 334, column: 13, scope: !566)
!649 = !DILocation(line: 335, column: 9, scope: !564)
!650 = !DILocation(line: 335, column: 7, scope: !564)
!651 = !DILocation(line: 336, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !564, file: !3, line: 336, column: 7)
!653 = !DILocation(line: 336, column: 11, scope: !652)
!654 = !DILocation(line: 336, column: 7, scope: !564)
!655 = !DILocation(line: 337, column: 4, scope: !652)
!656 = !DILocation(line: 337, column: 11, scope: !652)
!657 = !DILocation(line: 339, column: 3, scope: !564)
!658 = !DILocation(line: 339, column: 11, scope: !564)
!659 = !DILocation(line: 340, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !564, file: !3, line: 340, column: 7)
!661 = !DILocation(line: 340, column: 7, scope: !564)
!662 = !DILocation(line: 341, column: 4, scope: !660)
!663 = !DILocation(line: 341, column: 12, scope: !660)
!664 = !DILocation(line: 342, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !564, file: !3, line: 342, column: 7)
!666 = !DILocation(line: 342, column: 10, scope: !665)
!667 = !DILocation(line: 342, column: 7, scope: !564)
!668 = !DILocation(line: 343, column: 21, scope: !665)
!669 = !DILocation(line: 343, column: 19, scope: !665)
!670 = !DILocation(line: 343, column: 4, scope: !665)
!671 = !DILocation(line: 343, column: 12, scope: !665)
!672 = !DILocation(line: 344, column: 22, scope: !564)
!673 = !DILocation(line: 344, column: 27, scope: !564)
!674 = !DILocation(line: 55, column: 19, scope: !559, inlinedAt: !563)
!675 = !DILocation(line: 55, column: 14, scope: !559, inlinedAt: !563)
!676 = !DILocation(line: 55, column: 4, scope: !559, inlinedAt: !563)
!677 = !DILocation(line: 55, column: 17, scope: !559, inlinedAt: !563)
!678 = !DILocation(line: 345, column: 2, scope: !564)
!679 = !DILocation(line: 347, column: 2, scope: !554)
!680 = !DILocation(line: 348, column: 1, scope: !554)
!681 = distinct !DISubprogram(name: "__fswab64", scope: !682, file: !682, line: 66, type: !683, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!683 = !DISubroutineType(types: !684)
!684 = !{!15, !15}
!685 = !DILocalVariable(name: "val", arg: 1, scope: !681, file: !682, line: 66, type: !15)
!686 = !DILocation(line: 66, column: 57, scope: !681)
!687 = !DILocation(line: 69, column: 23, scope: !681)
!688 = !DILocation(line: 69, column: 9, scope: !681)
!689 = !DILocation(line: 69, column: 2, scope: !681)
!690 = distinct !DISubprogram(name: "__arch_swab64", scope: !691, file: !691, line: 15, type: !683, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !46)
!691 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!692 = !DILocalVariable(name: "val", arg: 1, scope: !690, file: !691, line: 15, type: !15)
!693 = !DILocation(line: 15, column: 61, scope: !690)
!694 = !DILocation(line: 31, column: 38, scope: !690)
!695 = !DILocation(line: 31, column: 2, scope: !690)
!696 = !{i32 381744}
!697 = !DILocation(line: 32, column: 9, scope: !690)
!698 = !DILocation(line: 32, column: 2, scope: !690)
!699 = distinct !DISubprogram(name: "__fswab32", scope: !682, file: !682, line: 57, type: !700, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !46)
!700 = !DISubroutineType(types: !701)
!701 = !{!21, !21}
!702 = !DILocalVariable(name: "val", arg: 1, scope: !699, file: !682, line: 57, type: !21)
!703 = !DILocation(line: 57, column: 57, scope: !699)
!704 = !DILocation(line: 60, column: 23, scope: !699)
!705 = !DILocation(line: 60, column: 9, scope: !699)
!706 = !DILocation(line: 60, column: 2, scope: !699)
!707 = distinct !DISubprogram(name: "__arch_swab32", scope: !691, file: !691, line: 8, type: !700, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !46)
!708 = !DILocalVariable(name: "val", arg: 1, scope: !707, file: !691, line: 8, type: !21)
!709 = !DILocation(line: 8, column: 61, scope: !707)
!710 = !DILocation(line: 10, column: 38, scope: !707)
!711 = !DILocation(line: 10, column: 2, scope: !707)
!712 = !{i32 381340}
!713 = !DILocation(line: 11, column: 9, scope: !707)
!714 = !DILocation(line: 11, column: 2, scope: !707)
!715 = distinct !DISubprogram(name: "__fswab16", scope: !682, file: !682, line: 48, type: !716, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !46)
!716 = !DISubroutineType(types: !717)
!717 = !{!28, !28}
!718 = !DILocalVariable(name: "val", arg: 1, scope: !715, file: !682, line: 48, type: !28)
!719 = !DILocation(line: 48, column: 57, scope: !715)
!720 = !DILocation(line: 53, column: 9, scope: !715)
!721 = !DILocation(line: 53, column: 2, scope: !715)
