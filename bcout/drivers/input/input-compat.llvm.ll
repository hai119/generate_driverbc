; ModuleID = '../bcout/drivers/input/input-compat.llvm.bc'
source_filename = "drivers/input/input-compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.input_event = type { i64, i64, i16, i16, i32 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @input_event_from_user(i8* %buffer, %struct.input_event* %event) #0 !dbg !16 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !39, metadata !DIExpression()), !dbg !51
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !61, metadata !DIExpression()), !dbg !62
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !63, metadata !DIExpression()), !dbg !64
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !65, metadata !DIExpression()), !dbg !66
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !67, metadata !DIExpression()), !dbg !70
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !71, metadata !DIExpression()), !dbg !72
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !73, metadata !DIExpression()), !dbg !74
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !75, metadata !DIExpression()), !dbg !76
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %event.addr = alloca %struct.input_event*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store %struct.input_event* %event, %struct.input_event** %event.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_event** %event.addr, metadata !79, metadata !DIExpression()), !dbg !80
  %0 = load %struct.input_event*, %struct.input_event** %event.addr, align 8, !dbg !81
  %1 = bitcast %struct.input_event* %0 to i8*, !dbg !81
  %2 = load i8*, i8** %buffer.addr, align 8, !dbg !82
  store i8* %1, i8** %to.addr.i, align 8
  store i8* %2, i8** %from.addr.i, align 8
  store i64 24, i64* %n.addr.i, align 8
  %3 = load i8*, i8** %to.addr.i, align 8, !dbg !83
  %4 = load i64, i64* %n.addr.i, align 8, !dbg !83
  store i8* %3, i8** %addr.addr.i.i, align 8
  store i64 %4, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !66
  %5 = load i32, i32* %sz.i.i, align 4, !dbg !84
  %cmp.i.i = icmp sge i32 %5, 0, !dbg !84
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !84

land.rhs.i.i:                                     ; preds = %entry
  %6 = load i32, i32* %sz.i.i, align 4, !dbg !84
  %conv.i.i = sext i32 %6 to i64, !dbg !84
  %7 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !84
  %cmp1.i.i = icmp ult i64 %conv.i.i, %7, !dbg !84
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !86
  %lnot.i.i = xor i1 %8, true, !dbg !84
  %lnot.ext.i.i = zext i1 %8 to i32, !dbg !84
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !84
  br i1 %8, label %if.then.i.i, label %if.end10.i.i, !dbg !87

if.then.i.i:                                      ; preds = %land.end.i.i
  %9 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !88
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #4, !dbg !91
  br i1 %10, label %if.else.i.i, label %if.then5.i.i, !dbg !92

if.then5.i.i:                                     ; preds = %if.then.i.i
  %11 = load i32, i32* %sz.i.i, align 4, !dbg !93
  %12 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !94
  call void @copy_overflow(i32 %11, i64 %12) #5, !dbg !95
  br label %if.end9.i.i, !dbg !95

if.else.i.i:                                      ; preds = %if.then.i.i
  %13 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !96
  %tobool6.i.i = trunc i8 %13 to i1, !dbg !96
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !98

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #5, !dbg !99
  br label %if.end.i.i, !dbg !99

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #5, !dbg !100
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !101
  br label %check_copy_size.exit.i, !dbg !101

if.end10.i.i:                                     ; preds = %land.end.i.i
  %14 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !70
  %cmp11.i.i = icmp ugt i64 %14, 2147483647, !dbg !70
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !70
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !70
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !70
  %15 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !102
  %tobool17.i.i = icmp ne i32 %15, 0, !dbg !102
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !102
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !102
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !102
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !70

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 150, i32 2307, i64 12) #4, !dbg !104, !srcloc !107
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #4, !dbg !108, !srcloc !110
  br label %if.end31.i.i, !dbg !111

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %16 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !70
  %tobool32.i.i = icmp ne i32 %16, 0, !dbg !70
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !70
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !70
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !70
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !102
  %17 = load i64, i64* %tmp.i.i, align 8, !dbg !70
  %tobool38.i.i = icmp ne i64 %17, 0, !dbg !112
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !113

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !114
  br label %check_copy_size.exit.i, !dbg !114

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %18 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !115
  %19 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !116
  %20 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !117
  %tobool41.i.i = trunc i8 %20 to i1, !dbg !117
  call void @check_object_size(i8* %18, i64 %19, i1 zeroext %tobool41.i.i) #5, !dbg !118
  store i1 true, i1* %retval.i.i, align 1, !dbg !119
  br label %check_copy_size.exit.i, !dbg !119

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %21 = load i1, i1* %retval.i.i, align 1, !dbg !120
  %lnot.i = xor i1 %21, true, !dbg !83
  %lnot.ext.i = zext i1 %21 to i32, !dbg !83
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !83
  br i1 %21, label %if.then.i, label %copy_from_user.exit, !dbg !121

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %22 = load i8*, i8** %to.addr.i, align 8, !dbg !122
  %23 = load i8*, i8** %from.addr.i, align 8, !dbg !123
  %24 = load i64, i64* %n.addr.i, align 8, !dbg !124
  %call2.i = call i64 @_copy_from_user(i8* %22, i8* %23, i64 %24) #5, !dbg !125
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !126
  br label %copy_from_user.exit, !dbg !127

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %25 = load i64, i64* %n.addr.i, align 8, !dbg !128
  %tobool = icmp ne i64 %25, 0, !dbg !129
  br i1 %tobool, label %if.then, label %if.end, !dbg !130

if.then:                                          ; preds = %copy_from_user.exit
  store i32 -14, i32* %retval, align 4, !dbg !131
  br label %return, !dbg !131

if.end:                                           ; preds = %copy_from_user.exit
  store i32 0, i32* %retval, align 4, !dbg !132
  br label %return, !dbg !132

return:                                           ; preds = %if.end, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !133
  ret i32 %26, !dbg !133
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @input_event_to_user(i8* %buffer, %struct.input_event* %event) #0 !dbg !134 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !39, metadata !DIExpression()), !dbg !140
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !61, metadata !DIExpression()), !dbg !146
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !63, metadata !DIExpression()), !dbg !147
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !65, metadata !DIExpression()), !dbg !148
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !67, metadata !DIExpression()), !dbg !149
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !150, metadata !DIExpression()), !dbg !151
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !152, metadata !DIExpression()), !dbg !153
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !154, metadata !DIExpression()), !dbg !155
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %event.addr = alloca %struct.input_event*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !156, metadata !DIExpression()), !dbg !157
  store %struct.input_event* %event, %struct.input_event** %event.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_event** %event.addr, metadata !158, metadata !DIExpression()), !dbg !159
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !160
  %1 = load %struct.input_event*, %struct.input_event** %event.addr, align 8, !dbg !161
  %2 = bitcast %struct.input_event* %1 to i8*, !dbg !161
  store i8* %0, i8** %to.addr.i, align 8
  store i8* %2, i8** %from.addr.i, align 8
  store i64 24, i64* %n.addr.i, align 8
  %3 = load i8*, i8** %from.addr.i, align 8, !dbg !162
  %4 = load i64, i64* %n.addr.i, align 8, !dbg !162
  store i8* %3, i8** %addr.addr.i.i, align 8
  store i64 %4, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !148
  %5 = load i32, i32* %sz.i.i, align 4, !dbg !163
  %cmp.i.i = icmp sge i32 %5, 0, !dbg !163
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !163

land.rhs.i.i:                                     ; preds = %entry
  %6 = load i32, i32* %sz.i.i, align 4, !dbg !163
  %conv.i.i = sext i32 %6 to i64, !dbg !163
  %7 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !163
  %cmp1.i.i = icmp ult i64 %conv.i.i, %7, !dbg !163
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !164
  %lnot.i.i = xor i1 %8, true, !dbg !163
  %lnot.ext.i.i = zext i1 %8 to i32, !dbg !163
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !163
  br i1 %8, label %if.then.i.i, label %if.end10.i.i, !dbg !165

if.then.i.i:                                      ; preds = %land.end.i.i
  %9 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !166
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #4, !dbg !167
  br i1 %10, label %if.else.i.i, label %if.then5.i.i, !dbg !168

if.then5.i.i:                                     ; preds = %if.then.i.i
  %11 = load i32, i32* %sz.i.i, align 4, !dbg !169
  %12 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !170
  call void @copy_overflow(i32 %11, i64 %12) #5, !dbg !171
  br label %if.end9.i.i, !dbg !171

if.else.i.i:                                      ; preds = %if.then.i.i
  %13 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !172
  %tobool6.i.i = trunc i8 %13 to i1, !dbg !172
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !173

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #5, !dbg !174
  br label %if.end.i.i, !dbg !174

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #5, !dbg !175
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !176
  br label %check_copy_size.exit.i, !dbg !176

if.end10.i.i:                                     ; preds = %land.end.i.i
  %14 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !149
  %cmp11.i.i = icmp ugt i64 %14, 2147483647, !dbg !149
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !149
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !149
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !149
  %15 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !177
  %tobool17.i.i = icmp ne i32 %15, 0, !dbg !177
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !177
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !177
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !177
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !149

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 150, i32 2307, i64 12) #4, !dbg !178, !srcloc !107
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #4, !dbg !179, !srcloc !110
  br label %if.end31.i.i, !dbg !180

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %16 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !149
  %tobool32.i.i = icmp ne i32 %16, 0, !dbg !149
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !149
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !149
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !149
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !177
  %17 = load i64, i64* %tmp.i.i, align 8, !dbg !149
  %tobool38.i.i = icmp ne i64 %17, 0, !dbg !181
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !182

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !183
  br label %check_copy_size.exit.i, !dbg !183

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %18 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !184
  %19 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !185
  %20 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !186
  %tobool41.i.i = trunc i8 %20 to i1, !dbg !186
  call void @check_object_size(i8* %18, i64 %19, i1 zeroext %tobool41.i.i) #5, !dbg !187
  store i1 true, i1* %retval.i.i, align 1, !dbg !188
  br label %check_copy_size.exit.i, !dbg !188

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %21 = load i1, i1* %retval.i.i, align 1, !dbg !189
  %lnot.i = xor i1 %21, true, !dbg !162
  %lnot.ext.i = zext i1 %21 to i32, !dbg !162
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !162
  br i1 %21, label %if.then.i, label %copy_to_user.exit, !dbg !190

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %22 = load i8*, i8** %to.addr.i, align 8, !dbg !191
  %23 = load i8*, i8** %from.addr.i, align 8, !dbg !192
  %24 = load i64, i64* %n.addr.i, align 8, !dbg !193
  %call2.i = call i64 @_copy_to_user(i8* %22, i8* %23, i64 %24) #5, !dbg !194
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !195
  br label %copy_to_user.exit, !dbg !196

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %25 = load i64, i64* %n.addr.i, align 8, !dbg !197
  %tobool = icmp ne i64 %25, 0, !dbg !198
  br i1 %tobool, label %if.then, label %if.end, !dbg !199

if.then:                                          ; preds = %copy_to_user.exit
  store i32 -14, i32* %retval, align 4, !dbg !200
  br label %return, !dbg !200

if.end:                                           ; preds = %copy_to_user.exit
  store i32 0, i32* %retval, align 4, !dbg !201
  br label %return, !dbg !201

return:                                           ; preds = %if.end, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !202
  ret i32 %26, !dbg !202
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @input_ff_effect_from_user(i8* %buffer, i64 %size, %struct.ff_effect* %effect) #0 !dbg !203 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !39, metadata !DIExpression()), !dbg !274
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !61, metadata !DIExpression()), !dbg !278
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !63, metadata !DIExpression()), !dbg !279
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !65, metadata !DIExpression()), !dbg !280
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !67, metadata !DIExpression()), !dbg !281
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !71, metadata !DIExpression()), !dbg !282
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !73, metadata !DIExpression()), !dbg !283
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !75, metadata !DIExpression()), !dbg !284
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %effect.addr = alloca %struct.ff_effect*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !285, metadata !DIExpression()), !dbg !286
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !287, metadata !DIExpression()), !dbg !288
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i64, i64* %size.addr, align 8, !dbg !291
  %cmp = icmp ne i64 %0, 48, !dbg !293
  br i1 %cmp, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !295
  br label %return, !dbg !295

if.end:                                           ; preds = %entry
  %1 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !296
  %2 = bitcast %struct.ff_effect* %1 to i8*, !dbg !296
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !297
  store i8* %2, i8** %to.addr.i, align 8
  store i8* %3, i8** %from.addr.i, align 8
  store i64 48, i64* %n.addr.i, align 8
  %4 = load i8*, i8** %to.addr.i, align 8, !dbg !298
  %5 = load i64, i64* %n.addr.i, align 8, !dbg !298
  store i8* %4, i8** %addr.addr.i.i, align 8
  store i64 %5, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !280
  %6 = load i32, i32* %sz.i.i, align 4, !dbg !299
  %cmp.i.i = icmp sge i32 %6, 0, !dbg !299
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !299

land.rhs.i.i:                                     ; preds = %if.end
  %7 = load i32, i32* %sz.i.i, align 4, !dbg !299
  %conv.i.i = sext i32 %7 to i64, !dbg !299
  %8 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !299
  %cmp1.i.i = icmp ult i64 %conv.i.i, %8, !dbg !299
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end
  %9 = phi i1 [ false, %if.end ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !300
  %lnot.i.i = xor i1 %9, true, !dbg !299
  %lnot.ext.i.i = zext i1 %9 to i32, !dbg !299
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !299
  br i1 %9, label %if.then.i.i, label %if.end10.i.i, !dbg !301

if.then.i.i:                                      ; preds = %land.end.i.i
  %10 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !302
  %11 = call i1 @llvm.is.constant.i64(i64 %10) #4, !dbg !303
  br i1 %11, label %if.else.i.i, label %if.then5.i.i, !dbg !304

if.then5.i.i:                                     ; preds = %if.then.i.i
  %12 = load i32, i32* %sz.i.i, align 4, !dbg !305
  %13 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !306
  call void @copy_overflow(i32 %12, i64 %13) #5, !dbg !307
  br label %if.end9.i.i, !dbg !307

if.else.i.i:                                      ; preds = %if.then.i.i
  %14 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !308
  %tobool6.i.i = trunc i8 %14 to i1, !dbg !308
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !309

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #5, !dbg !310
  br label %if.end.i.i, !dbg !310

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #5, !dbg !311
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !312
  br label %check_copy_size.exit.i, !dbg !312

if.end10.i.i:                                     ; preds = %land.end.i.i
  %15 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !281
  %cmp11.i.i = icmp ugt i64 %15, 2147483647, !dbg !281
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !281
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !281
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !281
  %16 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !313
  %tobool17.i.i = icmp ne i32 %16, 0, !dbg !313
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !313
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !313
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !313
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !281

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 150, i32 2307, i64 12) #4, !dbg !314, !srcloc !107
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #4, !dbg !315, !srcloc !110
  br label %if.end31.i.i, !dbg !316

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %17 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !281
  %tobool32.i.i = icmp ne i32 %17, 0, !dbg !281
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !281
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !281
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !281
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !313
  %18 = load i64, i64* %tmp.i.i, align 8, !dbg !281
  %tobool38.i.i = icmp ne i64 %18, 0, !dbg !317
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !318

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !319
  br label %check_copy_size.exit.i, !dbg !319

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %19 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !320
  %20 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !321
  %21 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !322
  %tobool41.i.i = trunc i8 %21 to i1, !dbg !322
  call void @check_object_size(i8* %19, i64 %20, i1 zeroext %tobool41.i.i) #5, !dbg !323
  store i1 true, i1* %retval.i.i, align 1, !dbg !324
  br label %check_copy_size.exit.i, !dbg !324

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %22 = load i1, i1* %retval.i.i, align 1, !dbg !325
  %lnot.i = xor i1 %22, true, !dbg !298
  %lnot.ext.i = zext i1 %22 to i32, !dbg !298
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !298
  br i1 %22, label %if.then.i, label %copy_from_user.exit, !dbg !326

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %23 = load i8*, i8** %to.addr.i, align 8, !dbg !327
  %24 = load i8*, i8** %from.addr.i, align 8, !dbg !328
  %25 = load i64, i64* %n.addr.i, align 8, !dbg !329
  %call2.i = call i64 @_copy_from_user(i8* %23, i8* %24, i64 %25) #5, !dbg !330
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !331
  br label %copy_from_user.exit, !dbg !332

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %26 = load i64, i64* %n.addr.i, align 8, !dbg !333
  %tobool = icmp ne i64 %26, 0, !dbg !334
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !335

if.then1:                                         ; preds = %copy_from_user.exit
  store i32 -14, i32* %retval, align 4, !dbg !336
  br label %return, !dbg !336

if.end2:                                          ; preds = %copy_from_user.exit
  store i32 0, i32* %retval, align 4, !dbg !337
  br label %return, !dbg !337

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !338
  ret i32 %27, !dbg !338
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !339 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !342, metadata !DIExpression()), !dbg !343
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !344, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !346, metadata !DIExpression()), !dbg !348
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !348
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !349
  %tobool = icmp ne i32 %0, 0, !dbg !349
  %lnot = xor i1 %tobool, true, !dbg !349
  %lnot1 = xor i1 %lnot, true, !dbg !349
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !349
  %conv = sext i32 %lnot.ext to i64, !dbg !349
  %tobool2 = icmp ne i64 %conv, 0, !dbg !349
  br i1 %tobool2, label %if.then, label %if.end, !dbg !348

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !349

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !351

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !353

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !351
  %2 = load i64, i64* %count.addr, align 8, !dbg !351
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %1, i64 %2) #6, !dbg !351
  br label %do.body4, !dbg !351

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !355

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !357

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !355

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 134, i32 2313, i64 12) #4, !dbg !359, !srcloc !361
  br label %do.end8, !dbg !359

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #4, !dbg !362, !srcloc !364
  br label %do.body9, !dbg !355

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !365

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !355

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !351

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !367

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !351

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !351

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !348
  %tobool15 = icmp ne i32 %3, 0, !dbg !348
  %lnot16 = xor i1 %tobool15, true, !dbg !348
  %lnot18 = xor i1 %lnot16, true, !dbg !348
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !348
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !348
  store i64 %conv20, i64* %tmp, align 8, !dbg !349
  %4 = load i64, i64* %tmp, align 8, !dbg !348
  ret void, !dbg !369
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !370 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !373, metadata !DIExpression()), !dbg !374
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !377, metadata !DIExpression()), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind }
attributes #5 = { noredzone nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/input/input-compat.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"Code Model", i32 2}
!15 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!16 = distinct !DISubprogram(name: "input_event_from_user", scope: !1, file: !1, line: 99, type: !17, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!17 = !DISubroutineType(types: !18)
!18 = !{!10, !19, !22}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_event", file: !24, line: 28, size: 192, elements: !25)
!24 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !30, !31, !35, !36}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__sec", scope: !23, file: !24, line: 34, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !28, line: 16, baseType: !29)
!28 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__usec", scope: !23, file: !24, line: 39, baseType: !27, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !24, line: 44, baseType: !32, size: 16, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !34)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !23, file: !24, line: 45, baseType: !32, size: 16, offset: 144)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !23, file: !24, line: 46, baseType: !37, size: 32, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !33, line: 26, baseType: !10)
!38 = !{}
!39 = !DILocalVariable(name: "addr", arg: 1, scope: !40, file: !41, line: 138, type: !47)
!40 = distinct !DISubprogram(name: "check_copy_size", scope: !41, file: !41, line: 138, type: !42, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !38)
!41 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !47, !49, !44}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 30, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!46 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 55, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !28, line: 72, baseType: !27)
!51 = !DILocation(line: 138, column: 29, scope: !40, inlinedAt: !52)
!52 = distinct !DILocation(line: 191, column: 6, scope: !53, inlinedAt: !59)
!53 = distinct !DILexicalBlock(scope: !55, file: !54, line: 191, column: 6)
!54 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!55 = distinct !DISubprogram(name: "copy_from_user", scope: !54, file: !54, line: 189, type: !56, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !38)
!56 = !DISubroutineType(types: !57)
!57 = !{!29, !58, !47, !29}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = distinct !DILocation(line: 102, column: 6, scope: !60)
!60 = distinct !DILexicalBlock(scope: !16, file: !1, line: 102, column: 6)
!61 = !DILocalVariable(name: "bytes", arg: 2, scope: !40, file: !41, line: 138, type: !49)
!62 = !DILocation(line: 138, column: 42, scope: !40, inlinedAt: !52)
!63 = !DILocalVariable(name: "is_source", arg: 3, scope: !40, file: !41, line: 138, type: !44)
!64 = !DILocation(line: 138, column: 54, scope: !40, inlinedAt: !52)
!65 = !DILocalVariable(name: "sz", scope: !40, file: !41, line: 140, type: !10)
!66 = !DILocation(line: 140, column: 6, scope: !40, inlinedAt: !52)
!67 = !DILocalVariable(name: "__ret_warn_on", scope: !68, file: !41, line: 150, type: !10)
!68 = distinct !DILexicalBlock(scope: !69, file: !41, line: 150, column: 6)
!69 = distinct !DILexicalBlock(scope: !40, file: !41, line: 150, column: 6)
!70 = !DILocation(line: 150, column: 6, scope: !68, inlinedAt: !52)
!71 = !DILocalVariable(name: "to", arg: 1, scope: !55, file: !54, line: 189, type: !58)
!72 = !DILocation(line: 189, column: 22, scope: !55, inlinedAt: !59)
!73 = !DILocalVariable(name: "from", arg: 2, scope: !55, file: !54, line: 189, type: !47)
!74 = !DILocation(line: 189, column: 45, scope: !55, inlinedAt: !59)
!75 = !DILocalVariable(name: "n", arg: 3, scope: !55, file: !54, line: 189, type: !29)
!76 = !DILocation(line: 189, column: 65, scope: !55, inlinedAt: !59)
!77 = !DILocalVariable(name: "buffer", arg: 1, scope: !16, file: !1, line: 99, type: !19)
!78 = !DILocation(line: 99, column: 46, scope: !16)
!79 = !DILocalVariable(name: "event", arg: 2, scope: !16, file: !1, line: 100, type: !22)
!80 = !DILocation(line: 100, column: 25, scope: !16)
!81 = !DILocation(line: 102, column: 21, scope: !60)
!82 = !DILocation(line: 102, column: 28, scope: !60)
!83 = !DILocation(line: 191, column: 6, scope: !53, inlinedAt: !59)
!84 = !DILocation(line: 141, column: 6, scope: !85, inlinedAt: !52)
!85 = distinct !DILexicalBlock(scope: !40, file: !41, line: 141, column: 6)
!86 = !DILocation(line: 0, scope: !85, inlinedAt: !52)
!87 = !DILocation(line: 141, column: 6, scope: !40, inlinedAt: !52)
!88 = !DILocation(line: 142, column: 29, scope: !89, inlinedAt: !52)
!89 = distinct !DILexicalBlock(scope: !90, file: !41, line: 142, column: 7)
!90 = distinct !DILexicalBlock(scope: !85, file: !41, line: 141, column: 39)
!91 = !DILocation(line: 142, column: 8, scope: !89, inlinedAt: !52)
!92 = !DILocation(line: 142, column: 7, scope: !90, inlinedAt: !52)
!93 = !DILocation(line: 143, column: 18, scope: !89, inlinedAt: !52)
!94 = !DILocation(line: 143, column: 22, scope: !89, inlinedAt: !52)
!95 = !DILocation(line: 143, column: 4, scope: !89, inlinedAt: !52)
!96 = !DILocation(line: 144, column: 12, scope: !97, inlinedAt: !52)
!97 = distinct !DILexicalBlock(scope: !89, file: !41, line: 144, column: 12)
!98 = !DILocation(line: 144, column: 12, scope: !89, inlinedAt: !52)
!99 = !DILocation(line: 145, column: 4, scope: !97, inlinedAt: !52)
!100 = !DILocation(line: 147, column: 4, scope: !97, inlinedAt: !52)
!101 = !DILocation(line: 148, column: 3, scope: !90, inlinedAt: !52)
!102 = !DILocation(line: 150, column: 6, scope: !103, inlinedAt: !52)
!103 = distinct !DILexicalBlock(scope: !68, file: !41, line: 150, column: 6)
!104 = !DILocation(line: 150, column: 6, scope: !105, inlinedAt: !52)
!105 = distinct !DILexicalBlock(scope: !106, file: !41, line: 150, column: 6)
!106 = distinct !DILexicalBlock(scope: !103, file: !41, line: 150, column: 6)
!107 = !{i32 -2145569792, i32 -2145569763, i32 -2145569717, i32 -2145569659, i32 -2145569605, i32 -2145569551, i32 -2145569496, i32 -2145569465}
!108 = !DILocation(line: 150, column: 6, scope: !109, inlinedAt: !52)
!109 = distinct !DILexicalBlock(scope: !106, file: !41, line: 150, column: 6)
!110 = !{i32 -2145569045, i32 -2145569038, i32 -2145568986, i32 -2145568955, i32 -2145568925}
!111 = !DILocation(line: 150, column: 6, scope: !106, inlinedAt: !52)
!112 = !DILocation(line: 150, column: 6, scope: !69, inlinedAt: !52)
!113 = !DILocation(line: 150, column: 6, scope: !40, inlinedAt: !52)
!114 = !DILocation(line: 151, column: 3, scope: !69, inlinedAt: !52)
!115 = !DILocation(line: 152, column: 20, scope: !40, inlinedAt: !52)
!116 = !DILocation(line: 152, column: 26, scope: !40, inlinedAt: !52)
!117 = !DILocation(line: 152, column: 33, scope: !40, inlinedAt: !52)
!118 = !DILocation(line: 152, column: 2, scope: !40, inlinedAt: !52)
!119 = !DILocation(line: 153, column: 2, scope: !40, inlinedAt: !52)
!120 = !DILocation(line: 154, column: 1, scope: !40, inlinedAt: !52)
!121 = !DILocation(line: 191, column: 6, scope: !55, inlinedAt: !59)
!122 = !DILocation(line: 192, column: 23, scope: !53, inlinedAt: !59)
!123 = !DILocation(line: 192, column: 27, scope: !53, inlinedAt: !59)
!124 = !DILocation(line: 192, column: 33, scope: !53, inlinedAt: !59)
!125 = !DILocation(line: 192, column: 7, scope: !53, inlinedAt: !59)
!126 = !DILocation(line: 192, column: 5, scope: !53, inlinedAt: !59)
!127 = !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !59)
!128 = !DILocation(line: 193, column: 9, scope: !55, inlinedAt: !59)
!129 = !DILocation(line: 102, column: 6, scope: !60)
!130 = !DILocation(line: 102, column: 6, scope: !16)
!131 = !DILocation(line: 103, column: 3, scope: !60)
!132 = !DILocation(line: 105, column: 2, scope: !16)
!133 = !DILocation(line: 106, column: 1, scope: !16)
!134 = distinct !DISubprogram(name: "input_event_to_user", scope: !1, file: !1, line: 108, type: !135, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!135 = !DISubroutineType(types: !136)
!136 = !{!10, !137, !138}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!140 = !DILocation(line: 138, column: 29, scope: !40, inlinedAt: !141)
!141 = distinct !DILocation(line: 199, column: 6, scope: !142, inlinedAt: !144)
!142 = distinct !DILexicalBlock(scope: !143, file: !54, line: 199, column: 6)
!143 = distinct !DISubprogram(name: "copy_to_user", scope: !54, file: !54, line: 197, type: !56, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !38)
!144 = distinct !DILocation(line: 111, column: 6, scope: !145)
!145 = distinct !DILexicalBlock(scope: !134, file: !1, line: 111, column: 6)
!146 = !DILocation(line: 138, column: 42, scope: !40, inlinedAt: !141)
!147 = !DILocation(line: 138, column: 54, scope: !40, inlinedAt: !141)
!148 = !DILocation(line: 140, column: 6, scope: !40, inlinedAt: !141)
!149 = !DILocation(line: 150, column: 6, scope: !68, inlinedAt: !141)
!150 = !DILocalVariable(name: "to", arg: 1, scope: !143, file: !54, line: 197, type: !58)
!151 = !DILocation(line: 197, column: 27, scope: !143, inlinedAt: !144)
!152 = !DILocalVariable(name: "from", arg: 2, scope: !143, file: !54, line: 197, type: !47)
!153 = !DILocation(line: 197, column: 43, scope: !143, inlinedAt: !144)
!154 = !DILocalVariable(name: "n", arg: 3, scope: !143, file: !54, line: 197, type: !29)
!155 = !DILocation(line: 197, column: 63, scope: !143, inlinedAt: !144)
!156 = !DILocalVariable(name: "buffer", arg: 1, scope: !134, file: !1, line: 108, type: !137)
!157 = !DILocation(line: 108, column: 38, scope: !134)
!158 = !DILocalVariable(name: "event", arg: 2, scope: !134, file: !1, line: 109, type: !138)
!159 = !DILocation(line: 109, column: 30, scope: !134)
!160 = !DILocation(line: 111, column: 19, scope: !145)
!161 = !DILocation(line: 111, column: 27, scope: !145)
!162 = !DILocation(line: 199, column: 6, scope: !142, inlinedAt: !144)
!163 = !DILocation(line: 141, column: 6, scope: !85, inlinedAt: !141)
!164 = !DILocation(line: 0, scope: !85, inlinedAt: !141)
!165 = !DILocation(line: 141, column: 6, scope: !40, inlinedAt: !141)
!166 = !DILocation(line: 142, column: 29, scope: !89, inlinedAt: !141)
!167 = !DILocation(line: 142, column: 8, scope: !89, inlinedAt: !141)
!168 = !DILocation(line: 142, column: 7, scope: !90, inlinedAt: !141)
!169 = !DILocation(line: 143, column: 18, scope: !89, inlinedAt: !141)
!170 = !DILocation(line: 143, column: 22, scope: !89, inlinedAt: !141)
!171 = !DILocation(line: 143, column: 4, scope: !89, inlinedAt: !141)
!172 = !DILocation(line: 144, column: 12, scope: !97, inlinedAt: !141)
!173 = !DILocation(line: 144, column: 12, scope: !89, inlinedAt: !141)
!174 = !DILocation(line: 145, column: 4, scope: !97, inlinedAt: !141)
!175 = !DILocation(line: 147, column: 4, scope: !97, inlinedAt: !141)
!176 = !DILocation(line: 148, column: 3, scope: !90, inlinedAt: !141)
!177 = !DILocation(line: 150, column: 6, scope: !103, inlinedAt: !141)
!178 = !DILocation(line: 150, column: 6, scope: !105, inlinedAt: !141)
!179 = !DILocation(line: 150, column: 6, scope: !109, inlinedAt: !141)
!180 = !DILocation(line: 150, column: 6, scope: !106, inlinedAt: !141)
!181 = !DILocation(line: 150, column: 6, scope: !69, inlinedAt: !141)
!182 = !DILocation(line: 150, column: 6, scope: !40, inlinedAt: !141)
!183 = !DILocation(line: 151, column: 3, scope: !69, inlinedAt: !141)
!184 = !DILocation(line: 152, column: 20, scope: !40, inlinedAt: !141)
!185 = !DILocation(line: 152, column: 26, scope: !40, inlinedAt: !141)
!186 = !DILocation(line: 152, column: 33, scope: !40, inlinedAt: !141)
!187 = !DILocation(line: 152, column: 2, scope: !40, inlinedAt: !141)
!188 = !DILocation(line: 153, column: 2, scope: !40, inlinedAt: !141)
!189 = !DILocation(line: 154, column: 1, scope: !40, inlinedAt: !141)
!190 = !DILocation(line: 199, column: 6, scope: !143, inlinedAt: !144)
!191 = !DILocation(line: 200, column: 21, scope: !142, inlinedAt: !144)
!192 = !DILocation(line: 200, column: 25, scope: !142, inlinedAt: !144)
!193 = !DILocation(line: 200, column: 31, scope: !142, inlinedAt: !144)
!194 = !DILocation(line: 200, column: 7, scope: !142, inlinedAt: !144)
!195 = !DILocation(line: 200, column: 5, scope: !142, inlinedAt: !144)
!196 = !DILocation(line: 200, column: 3, scope: !142, inlinedAt: !144)
!197 = !DILocation(line: 201, column: 9, scope: !143, inlinedAt: !144)
!198 = !DILocation(line: 111, column: 6, scope: !145)
!199 = !DILocation(line: 111, column: 6, scope: !134)
!200 = !DILocation(line: 112, column: 3, scope: !145)
!201 = !DILocation(line: 114, column: 2, scope: !134)
!202 = !DILocation(line: 115, column: 1, scope: !134)
!203 = distinct !DISubprogram(name: "input_ff_effect_from_user", scope: !1, file: !1, line: 117, type: !204, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!204 = !DISubroutineType(types: !205)
!205 = !{!10, !19, !49, !206}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !24, line: 450, size: 384, elements: !208)
!208 = !{!209, !210, !213, !214, !219, !224}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !207, file: !24, line: 451, baseType: !32, size: 16)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !207, file: !24, line: 452, baseType: !211, size: 16, offset: 16)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !33, line: 23, baseType: !212)
!212 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !207, file: !24, line: 453, baseType: !32, size: 16, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !207, file: !24, line: 454, baseType: !215, size: 32, offset: 48)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !24, line: 316, size: 32, elements: !216)
!216 = !{!217, !218}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !215, file: !24, line: 317, baseType: !32, size: 16)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !215, file: !24, line: 318, baseType: !32, size: 16, offset: 16)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !207, file: !24, line: 455, baseType: !220, size: 32, offset: 80)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !24, line: 306, size: 32, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !220, file: !24, line: 307, baseType: !32, size: 16)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !220, file: !24, line: 308, baseType: !32, size: 16, offset: 16)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !207, file: !24, line: 463, baseType: !225, size: 256, offset: 128)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !207, file: !24, line: 457, size: 256, elements: !226)
!226 = !{!227, !238, !244, !257, !269}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !225, file: !24, line: 458, baseType: !228, size: 80)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !24, line: 345, size: 80, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !228, file: !24, line: 346, baseType: !211, size: 16)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !228, file: !24, line: 347, baseType: !232, size: 64, offset: 16)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !24, line: 333, size: 64, elements: !233)
!233 = !{!234, !235, !236, !237}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !232, file: !24, line: 334, baseType: !32, size: 16)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !232, file: !24, line: 335, baseType: !32, size: 16, offset: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !232, file: !24, line: 336, baseType: !32, size: 16, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !232, file: !24, line: 337, baseType: !32, size: 16, offset: 48)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !225, file: !24, line: 459, baseType: !239, size: 96)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !24, line: 356, size: 96, elements: !240)
!240 = !{!241, !242, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !239, file: !24, line: 357, baseType: !211, size: 16)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !239, file: !24, line: 358, baseType: !211, size: 16, offset: 16)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !239, file: !24, line: 359, baseType: !232, size: 64, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !225, file: !24, line: 460, baseType: !245, size: 256)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !24, line: 401, size: 256, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !255}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !245, file: !24, line: 402, baseType: !32, size: 16)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !245, file: !24, line: 403, baseType: !32, size: 16, offset: 16)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !245, file: !24, line: 404, baseType: !211, size: 16, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !245, file: !24, line: 405, baseType: !211, size: 16, offset: 48)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !245, file: !24, line: 406, baseType: !32, size: 16, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !245, file: !24, line: 408, baseType: !232, size: 64, offset: 80)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !245, file: !24, line: 410, baseType: !254, size: 32, offset: 160)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !5)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !245, file: !24, line: 411, baseType: !256, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !225, file: !24, line: 461, baseType: !258, size: 192)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 192, elements: !267)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !24, line: 372, size: 96, elements: !260)
!260 = !{!261, !262, !263, !264, !265, !266}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !259, file: !24, line: 373, baseType: !32, size: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !259, file: !24, line: 374, baseType: !32, size: 16, offset: 16)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !259, file: !24, line: 376, baseType: !211, size: 16, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !259, file: !24, line: 377, baseType: !211, size: 16, offset: 48)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !259, file: !24, line: 379, baseType: !32, size: 16, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !259, file: !24, line: 380, baseType: !211, size: 16, offset: 80)
!267 = !{!268}
!268 = !DISubrange(count: 2)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !225, file: !24, line: 462, baseType: !270, size: 32)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !24, line: 422, size: 32, elements: !271)
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !270, file: !24, line: 423, baseType: !32, size: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !270, file: !24, line: 424, baseType: !32, size: 16, offset: 16)
!274 = !DILocation(line: 138, column: 29, scope: !40, inlinedAt: !275)
!275 = distinct !DILocation(line: 191, column: 6, scope: !53, inlinedAt: !276)
!276 = distinct !DILocation(line: 123, column: 6, scope: !277)
!277 = distinct !DILexicalBlock(scope: !203, file: !1, line: 123, column: 6)
!278 = !DILocation(line: 138, column: 42, scope: !40, inlinedAt: !275)
!279 = !DILocation(line: 138, column: 54, scope: !40, inlinedAt: !275)
!280 = !DILocation(line: 140, column: 6, scope: !40, inlinedAt: !275)
!281 = !DILocation(line: 150, column: 6, scope: !68, inlinedAt: !275)
!282 = !DILocation(line: 189, column: 22, scope: !55, inlinedAt: !276)
!283 = !DILocation(line: 189, column: 45, scope: !55, inlinedAt: !276)
!284 = !DILocation(line: 189, column: 65, scope: !55, inlinedAt: !276)
!285 = !DILocalVariable(name: "buffer", arg: 1, scope: !203, file: !1, line: 117, type: !19)
!286 = !DILocation(line: 117, column: 50, scope: !203)
!287 = !DILocalVariable(name: "size", arg: 2, scope: !203, file: !1, line: 117, type: !49)
!288 = !DILocation(line: 117, column: 65, scope: !203)
!289 = !DILocalVariable(name: "effect", arg: 3, scope: !203, file: !1, line: 118, type: !206)
!290 = !DILocation(line: 118, column: 28, scope: !203)
!291 = !DILocation(line: 120, column: 6, scope: !292)
!292 = distinct !DILexicalBlock(scope: !203, file: !1, line: 120, column: 6)
!293 = !DILocation(line: 120, column: 11, scope: !292)
!294 = !DILocation(line: 120, column: 6, scope: !203)
!295 = !DILocation(line: 121, column: 3, scope: !292)
!296 = !DILocation(line: 123, column: 21, scope: !277)
!297 = !DILocation(line: 123, column: 29, scope: !277)
!298 = !DILocation(line: 191, column: 6, scope: !53, inlinedAt: !276)
!299 = !DILocation(line: 141, column: 6, scope: !85, inlinedAt: !275)
!300 = !DILocation(line: 0, scope: !85, inlinedAt: !275)
!301 = !DILocation(line: 141, column: 6, scope: !40, inlinedAt: !275)
!302 = !DILocation(line: 142, column: 29, scope: !89, inlinedAt: !275)
!303 = !DILocation(line: 142, column: 8, scope: !89, inlinedAt: !275)
!304 = !DILocation(line: 142, column: 7, scope: !90, inlinedAt: !275)
!305 = !DILocation(line: 143, column: 18, scope: !89, inlinedAt: !275)
!306 = !DILocation(line: 143, column: 22, scope: !89, inlinedAt: !275)
!307 = !DILocation(line: 143, column: 4, scope: !89, inlinedAt: !275)
!308 = !DILocation(line: 144, column: 12, scope: !97, inlinedAt: !275)
!309 = !DILocation(line: 144, column: 12, scope: !89, inlinedAt: !275)
!310 = !DILocation(line: 145, column: 4, scope: !97, inlinedAt: !275)
!311 = !DILocation(line: 147, column: 4, scope: !97, inlinedAt: !275)
!312 = !DILocation(line: 148, column: 3, scope: !90, inlinedAt: !275)
!313 = !DILocation(line: 150, column: 6, scope: !103, inlinedAt: !275)
!314 = !DILocation(line: 150, column: 6, scope: !105, inlinedAt: !275)
!315 = !DILocation(line: 150, column: 6, scope: !109, inlinedAt: !275)
!316 = !DILocation(line: 150, column: 6, scope: !106, inlinedAt: !275)
!317 = !DILocation(line: 150, column: 6, scope: !69, inlinedAt: !275)
!318 = !DILocation(line: 150, column: 6, scope: !40, inlinedAt: !275)
!319 = !DILocation(line: 151, column: 3, scope: !69, inlinedAt: !275)
!320 = !DILocation(line: 152, column: 20, scope: !40, inlinedAt: !275)
!321 = !DILocation(line: 152, column: 26, scope: !40, inlinedAt: !275)
!322 = !DILocation(line: 152, column: 33, scope: !40, inlinedAt: !275)
!323 = !DILocation(line: 152, column: 2, scope: !40, inlinedAt: !275)
!324 = !DILocation(line: 153, column: 2, scope: !40, inlinedAt: !275)
!325 = !DILocation(line: 154, column: 1, scope: !40, inlinedAt: !275)
!326 = !DILocation(line: 191, column: 6, scope: !55, inlinedAt: !276)
!327 = !DILocation(line: 192, column: 23, scope: !53, inlinedAt: !276)
!328 = !DILocation(line: 192, column: 27, scope: !53, inlinedAt: !276)
!329 = !DILocation(line: 192, column: 33, scope: !53, inlinedAt: !276)
!330 = !DILocation(line: 192, column: 7, scope: !53, inlinedAt: !276)
!331 = !DILocation(line: 192, column: 5, scope: !53, inlinedAt: !276)
!332 = !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !276)
!333 = !DILocation(line: 193, column: 9, scope: !55, inlinedAt: !276)
!334 = !DILocation(line: 123, column: 6, scope: !277)
!335 = !DILocation(line: 123, column: 6, scope: !203)
!336 = !DILocation(line: 124, column: 3, scope: !277)
!337 = !DILocation(line: 126, column: 2, scope: !203)
!338 = !DILocation(line: 127, column: 1, scope: !203)
!339 = distinct !DISubprogram(name: "copy_overflow", scope: !41, file: !41, line: 132, type: !340, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !38)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !10, !29}
!342 = !DILocalVariable(name: "size", arg: 1, scope: !339, file: !41, line: 132, type: !10)
!343 = !DILocation(line: 132, column: 38, scope: !339)
!344 = !DILocalVariable(name: "count", arg: 2, scope: !339, file: !41, line: 132, type: !29)
!345 = !DILocation(line: 132, column: 58, scope: !339)
!346 = !DILocalVariable(name: "__ret_warn_on", scope: !347, file: !41, line: 134, type: !10)
!347 = distinct !DILexicalBlock(scope: !339, file: !41, line: 134, column: 2)
!348 = !DILocation(line: 134, column: 2, scope: !347)
!349 = !DILocation(line: 134, column: 2, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !41, line: 134, column: 2)
!351 = !DILocation(line: 134, column: 2, scope: !352)
!352 = distinct !DILexicalBlock(scope: !350, file: !41, line: 134, column: 2)
!353 = !DILocation(line: 134, column: 2, scope: !354)
!354 = distinct !DILexicalBlock(scope: !352, file: !41, line: 134, column: 2)
!355 = !DILocation(line: 134, column: 2, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !41, line: 134, column: 2)
!357 = !DILocation(line: 134, column: 2, scope: !358)
!358 = distinct !DILexicalBlock(scope: !356, file: !41, line: 134, column: 2)
!359 = !DILocation(line: 134, column: 2, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !41, line: 134, column: 2)
!361 = !{i32 -2145571616, i32 -2145571587, i32 -2145571541, i32 -2145571483, i32 -2145571429, i32 -2145571375, i32 -2145571320, i32 -2145571289}
!362 = !DILocation(line: 134, column: 2, scope: !363)
!363 = distinct !DILexicalBlock(scope: !356, file: !41, line: 134, column: 2)
!364 = !{i32 -2145570869, i32 -2145570862, i32 -2145570810, i32 -2145570779, i32 -2145570749}
!365 = !DILocation(line: 134, column: 2, scope: !366)
!366 = distinct !DILexicalBlock(scope: !356, file: !41, line: 134, column: 2)
!367 = !DILocation(line: 134, column: 2, scope: !368)
!368 = distinct !DILexicalBlock(scope: !352, file: !41, line: 134, column: 2)
!369 = !DILocation(line: 135, column: 1, scope: !339)
!370 = distinct !DISubprogram(name: "check_object_size", scope: !41, file: !41, line: 122, type: !371, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !38)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !47, !29, !44}
!373 = !DILocalVariable(name: "ptr", arg: 1, scope: !370, file: !41, line: 122, type: !47)
!374 = !DILocation(line: 122, column: 50, scope: !370)
!375 = !DILocalVariable(name: "n", arg: 2, scope: !370, file: !41, line: 122, type: !29)
!376 = !DILocation(line: 122, column: 69, scope: !370)
!377 = !DILocalVariable(name: "to_user", arg: 3, scope: !370, file: !41, line: 123, type: !44)
!378 = !DILocation(line: 123, column: 15, scope: !370)
!379 = !DILocation(line: 124, column: 3, scope: !370)
