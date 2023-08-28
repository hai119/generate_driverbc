; ModuleID = '../bcout/drivers/scsi/scsi_trace.llvm.bc'
source_filename = "drivers/scsi/scsi_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"lba=%u txlen=%u\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"lba=%u txlen=%u protect=%u\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" unmap=%u\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"lba=%llu txlen=%u protect=%u\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"regions=%u\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"READ_CAPACITY_16\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"GET_LBA_STATUS\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s lba=%llu alloc_len=%u\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"VERIFY\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"WRITE_SAME\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"%s_32 lba=%llu txlen=%u protect=%u ei_lbrt=%u\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"REPORT_IDENTIFYING_INFORMATION\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"REPORT_TARGET_PORT_GROUPS\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"REPORT_ALIASES\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"REPORT_SUPPORTED_OPERATION_CODES\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"REPORT_SUPPORTED_TASK_MANAGEMENT_FUNCTIONS\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"REPORT_PRIORITY\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"REPORT_TIMESTAMP\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"MANAGEMENT_PROTOCOL_IN\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"%s alloc_len=%u\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"SET_IDENTIFYING_INFORMATION\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"SET_TARGET_PORT_GROUPS\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"CHANGE_ALIASES\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"SET_PRIORITY\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"SET_TIMESTAMP\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"MANAGEMENT_PROTOCOL_OUT\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"REPORT_ZONES\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"%s zone=%llu alloc_len=%u options=%u partial=%u\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"CLOSE_ZONE\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"FINISH_ZONE\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"OPEN_ZONE\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"RESET_WRITE_POINTER\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"%s zone=%llu all=%u\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @scsi_trace_parse_cdb(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !26 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !62, metadata !DIExpression()), !dbg !63
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !64, metadata !DIExpression()), !dbg !65
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = load i8*, i8** %cdb.addr, align 8, !dbg !68
  %arrayidx = getelementptr i8, i8* %0, i64 0, !dbg !68
  %1 = load i8, i8* %arrayidx, align 1, !dbg !68
  %conv = zext i8 %1 to i32, !dbg !68
  switch i32 %conv, label %sw.default [
    i32 8, label %sw.bb
    i32 10, label %sw.bb
    i32 40, label %sw.bb1
    i32 47, label %sw.bb1
    i32 42, label %sw.bb1
    i32 65, label %sw.bb1
    i32 168, label %sw.bb3
    i32 175, label %sw.bb3
    i32 170, label %sw.bb3
    i32 136, label %sw.bb5
    i32 143, label %sw.bb5
    i32 138, label %sw.bb5
    i32 147, label %sw.bb5
    i32 66, label %sw.bb7
    i32 158, label %sw.bb9
    i32 127, label %sw.bb11
    i32 163, label %sw.bb13
    i32 164, label %sw.bb15
    i32 149, label %sw.bb17
    i32 148, label %sw.bb19
  ], !dbg !69

sw.bb:                                            ; preds = %entry, %entry
  %2 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !70
  %3 = load i8*, i8** %cdb.addr, align 8, !dbg !72
  %4 = load i32, i32* %len.addr, align 4, !dbg !73
  %call = call i8* @scsi_trace_rw6(%struct.trace_seq* %2, i8* %3, i32 %4) #4, !dbg !74
  store i8* %call, i8** %retval, align 8, !dbg !75
  br label %return, !dbg !75

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry
  %5 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !76
  %6 = load i8*, i8** %cdb.addr, align 8, !dbg !77
  %7 = load i32, i32* %len.addr, align 4, !dbg !78
  %call2 = call i8* @scsi_trace_rw10(%struct.trace_seq* %5, i8* %6, i32 %7) #4, !dbg !79
  store i8* %call2, i8** %retval, align 8, !dbg !80
  br label %return, !dbg !80

sw.bb3:                                           ; preds = %entry, %entry, %entry
  %8 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !81
  %9 = load i8*, i8** %cdb.addr, align 8, !dbg !82
  %10 = load i32, i32* %len.addr, align 4, !dbg !83
  %call4 = call i8* @scsi_trace_rw12(%struct.trace_seq* %8, i8* %9, i32 %10) #4, !dbg !84
  store i8* %call4, i8** %retval, align 8, !dbg !85
  br label %return, !dbg !85

sw.bb5:                                           ; preds = %entry, %entry, %entry, %entry
  %11 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !86
  %12 = load i8*, i8** %cdb.addr, align 8, !dbg !87
  %13 = load i32, i32* %len.addr, align 4, !dbg !88
  %call6 = call i8* @scsi_trace_rw16(%struct.trace_seq* %11, i8* %12, i32 %13) #4, !dbg !89
  store i8* %call6, i8** %retval, align 8, !dbg !90
  br label %return, !dbg !90

sw.bb7:                                           ; preds = %entry
  %14 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !91
  %15 = load i8*, i8** %cdb.addr, align 8, !dbg !92
  %16 = load i32, i32* %len.addr, align 4, !dbg !93
  %call8 = call i8* @scsi_trace_unmap(%struct.trace_seq* %14, i8* %15, i32 %16) #4, !dbg !94
  store i8* %call8, i8** %retval, align 8, !dbg !95
  br label %return, !dbg !95

sw.bb9:                                           ; preds = %entry
  %17 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !96
  %18 = load i8*, i8** %cdb.addr, align 8, !dbg !97
  %19 = load i32, i32* %len.addr, align 4, !dbg !98
  %call10 = call i8* @scsi_trace_service_action_in(%struct.trace_seq* %17, i8* %18, i32 %19) #4, !dbg !99
  store i8* %call10, i8** %retval, align 8, !dbg !100
  br label %return, !dbg !100

sw.bb11:                                          ; preds = %entry
  %20 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !101
  %21 = load i8*, i8** %cdb.addr, align 8, !dbg !102
  %22 = load i32, i32* %len.addr, align 4, !dbg !103
  %call12 = call i8* @scsi_trace_varlen(%struct.trace_seq* %20, i8* %21, i32 %22) #4, !dbg !104
  store i8* %call12, i8** %retval, align 8, !dbg !105
  br label %return, !dbg !105

sw.bb13:                                          ; preds = %entry
  %23 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !106
  %24 = load i8*, i8** %cdb.addr, align 8, !dbg !107
  %25 = load i32, i32* %len.addr, align 4, !dbg !108
  %call14 = call i8* @scsi_trace_maintenance_in(%struct.trace_seq* %23, i8* %24, i32 %25) #4, !dbg !109
  store i8* %call14, i8** %retval, align 8, !dbg !110
  br label %return, !dbg !110

sw.bb15:                                          ; preds = %entry
  %26 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !111
  %27 = load i8*, i8** %cdb.addr, align 8, !dbg !112
  %28 = load i32, i32* %len.addr, align 4, !dbg !113
  %call16 = call i8* @scsi_trace_maintenance_out(%struct.trace_seq* %26, i8* %27, i32 %28) #4, !dbg !114
  store i8* %call16, i8** %retval, align 8, !dbg !115
  br label %return, !dbg !115

sw.bb17:                                          ; preds = %entry
  %29 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !116
  %30 = load i8*, i8** %cdb.addr, align 8, !dbg !117
  %31 = load i32, i32* %len.addr, align 4, !dbg !118
  %call18 = call i8* @scsi_trace_zbc_in(%struct.trace_seq* %29, i8* %30, i32 %31) #4, !dbg !119
  store i8* %call18, i8** %retval, align 8, !dbg !120
  br label %return, !dbg !120

sw.bb19:                                          ; preds = %entry
  %32 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !121
  %33 = load i8*, i8** %cdb.addr, align 8, !dbg !122
  %34 = load i32, i32* %len.addr, align 4, !dbg !123
  %call20 = call i8* @scsi_trace_zbc_out(%struct.trace_seq* %32, i8* %33, i32 %34) #4, !dbg !124
  store i8* %call20, i8** %retval, align 8, !dbg !125
  br label %return, !dbg !125

sw.default:                                       ; preds = %entry
  %35 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !126
  %36 = load i8*, i8** %cdb.addr, align 8, !dbg !127
  %37 = load i32, i32* %len.addr, align 4, !dbg !128
  %call21 = call i8* @scsi_trace_misc(%struct.trace_seq* %35, i8* %36, i32 %37) #4, !dbg !129
  store i8* %call21, i8** %retval, align 8, !dbg !130
  br label %return, !dbg !130

return:                                           ; preds = %sw.default, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %38 = load i8*, i8** %retval, align 8, !dbg !131
  ret i8* %38, !dbg !131
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_rw6(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !132 {
entry:
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  %lba = alloca i32, align 4
  %txlen = alloca i32, align 4
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !133, metadata !DIExpression()), !dbg !134
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !135, metadata !DIExpression()), !dbg !136
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !141
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #4, !dbg !142
  store i8* %call, i8** %ret, align 8, !dbg !140
  call void @llvm.dbg.declare(metadata i32* %lba, metadata !143, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %txlen, metadata !147, metadata !DIExpression()), !dbg !148
  %1 = load i8*, i8** %cdb.addr, align 8, !dbg !149
  %arrayidx = getelementptr i8, i8* %1, i64 1, !dbg !149
  %call1 = call i32 @get_unaligned_be24(i8* %arrayidx) #4, !dbg !150
  %and = and i32 %call1, 2097151, !dbg !151
  store i32 %and, i32* %lba, align 4, !dbg !152
  %2 = load i8*, i8** %cdb.addr, align 8, !dbg !153
  %arrayidx2 = getelementptr i8, i8* %2, i64 4, !dbg !153
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !153
  %conv = zext i8 %3 to i32, !dbg !153
  %tobool = icmp ne i32 %conv, 0, !dbg !153
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !153

cond.true:                                        ; preds = %entry
  %4 = load i8*, i8** %cdb.addr, align 8, !dbg !154
  %arrayidx3 = getelementptr i8, i8* %4, i64 4, !dbg !154
  %5 = load i8, i8* %arrayidx3, align 1, !dbg !154
  %conv4 = zext i8 %5 to i32, !dbg !154
  br label %cond.end, !dbg !153

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !153

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ 256, %cond.false ], !dbg !153
  store i32 %cond, i32* %txlen, align 4, !dbg !155
  %6 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !156
  %7 = load i32, i32* %lba, align 4, !dbg !157
  %8 = load i32, i32* %txlen, align 4, !dbg !158
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8) #4, !dbg !159
  %9 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !160
  call void @trace_seq_putc(%struct.trace_seq* %9, i8 zeroext 0) #4, !dbg !161
  %10 = load i8*, i8** %ret, align 8, !dbg !162
  ret i8* %10, !dbg !163
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_rw10(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !164 {
entry:
  %p.addr.i.i.i12 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i.i12, metadata !165, metadata !DIExpression()), !dbg !172
  %p.addr.i.i13 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i13, metadata !189, metadata !DIExpression()), !dbg !190
  %p.addr.i14 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i14, metadata !191, metadata !DIExpression()), !dbg !192
  %p.addr.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i.i, metadata !193, metadata !DIExpression()), !dbg !199
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !211, metadata !DIExpression()), !dbg !212
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !213, metadata !DIExpression()), !dbg !214
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  %lba = alloca i32, align 4
  %txlen = alloca i32, align 4
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !215, metadata !DIExpression()), !dbg !216
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !217, metadata !DIExpression()), !dbg !218
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !223
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #4, !dbg !224
  store i8* %call, i8** %ret, align 8, !dbg !222
  call void @llvm.dbg.declare(metadata i32* %lba, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %txlen, metadata !227, metadata !DIExpression()), !dbg !228
  %1 = load i8*, i8** %cdb.addr, align 8, !dbg !229
  %arrayidx = getelementptr i8, i8* %1, i64 2, !dbg !229
  store i8* %arrayidx, i8** %p.addr.i, align 8
  %2 = load i8*, i8** %p.addr.i, align 8, !dbg !230
  %3 = bitcast i8* %2 to i32*, !dbg !231
  store i32* %3, i32** %p.addr.i.i, align 8
  %4 = load i32*, i32** %p.addr.i.i, align 8, !dbg !232
  store i32* %4, i32** %p.addr.i.i.i, align 8
  %5 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !233
  %6 = load i32, i32* %5, align 4, !dbg !233
  %7 = call i1 @llvm.is.constant.i32(i32 %6) #5, !dbg !233
  br i1 %7, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !233

cond.true.i.i.i:                                  ; preds = %entry
  %8 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !233
  %9 = load i32, i32* %8, align 4, !dbg !233
  %and.i.i.i = and i32 %9, 255, !dbg !233
  %shl.i.i.i = shl i32 %and.i.i.i, 24, !dbg !233
  %10 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !233
  %11 = load i32, i32* %10, align 4, !dbg !233
  %and1.i.i.i = and i32 %11, 65280, !dbg !233
  %shl2.i.i.i = shl i32 %and1.i.i.i, 8, !dbg !233
  %or.i.i.i = or i32 %shl.i.i.i, %shl2.i.i.i, !dbg !233
  %12 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !233
  %13 = load i32, i32* %12, align 4, !dbg !233
  %and3.i.i.i = and i32 %13, 16711680, !dbg !233
  %shr.i.i.i = lshr i32 %and3.i.i.i, 8, !dbg !233
  %or4.i.i.i = or i32 %or.i.i.i, %shr.i.i.i, !dbg !233
  %14 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !233
  %15 = load i32, i32* %14, align 4, !dbg !233
  %and5.i.i.i = and i32 %15, -16777216, !dbg !233
  %shr6.i.i.i = lshr i32 %and5.i.i.i, 24, !dbg !233
  %or7.i.i.i = or i32 %or4.i.i.i, %shr6.i.i.i, !dbg !233
  br label %get_unaligned_be32.exit, !dbg !233

cond.false.i.i.i:                                 ; preds = %entry
  %16 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !233
  %17 = load i32, i32* %16, align 4, !dbg !233
  %call.i.i.i = call i32 @__fswab32(i32 %17) #6, !dbg !233
  br label %get_unaligned_be32.exit, !dbg !233

get_unaligned_be32.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %or7.i.i.i, %cond.true.i.i.i ], [ %call.i.i.i, %cond.false.i.i.i ], !dbg !233
  store i32 %cond.i.i.i, i32* %lba, align 4, !dbg !234
  %18 = load i8*, i8** %cdb.addr, align 8, !dbg !235
  %arrayidx2 = getelementptr i8, i8* %18, i64 7, !dbg !235
  store i8* %arrayidx2, i8** %p.addr.i14, align 8
  %19 = load i8*, i8** %p.addr.i14, align 8, !dbg !236
  %20 = bitcast i8* %19 to i16*, !dbg !237
  store i16* %20, i16** %p.addr.i.i13, align 8
  %21 = load i16*, i16** %p.addr.i.i13, align 8, !dbg !238
  store i16* %21, i16** %p.addr.i.i.i12, align 8
  %22 = load i16*, i16** %p.addr.i.i.i12, align 8, !dbg !239
  %23 = load i16, i16* %22, align 2, !dbg !239
  %24 = call i1 @llvm.is.constant.i16(i16 %23) #5, !dbg !239
  br i1 %24, label %cond.true.i.i.i19, label %cond.false.i.i.i21, !dbg !239

cond.true.i.i.i19:                                ; preds = %get_unaligned_be32.exit
  %25 = load i16*, i16** %p.addr.i.i.i12, align 8, !dbg !239
  %26 = load i16, i16* %25, align 2, !dbg !239
  %conv.i.i.i = zext i16 %26 to i32, !dbg !239
  %and.i.i.i15 = and i32 %conv.i.i.i, 255, !dbg !239
  %shl.i.i.i16 = shl i32 %and.i.i.i15, 8, !dbg !239
  %27 = load i16*, i16** %p.addr.i.i.i12, align 8, !dbg !239
  %28 = load i16, i16* %27, align 2, !dbg !239
  %conv1.i.i.i = zext i16 %28 to i32, !dbg !239
  %and2.i.i.i = and i32 %conv1.i.i.i, 65280, !dbg !239
  %shr.i.i.i17 = ashr i32 %and2.i.i.i, 8, !dbg !239
  %or.i.i.i18 = or i32 %shl.i.i.i16, %shr.i.i.i17, !dbg !239
  %conv3.i.i.i = trunc i32 %or.i.i.i18 to i16, !dbg !239
  %conv4.i.i.i = zext i16 %conv3.i.i.i to i32, !dbg !239
  br label %get_unaligned_be16.exit, !dbg !239

cond.false.i.i.i21:                               ; preds = %get_unaligned_be32.exit
  %29 = load i16*, i16** %p.addr.i.i.i12, align 8, !dbg !239
  %30 = load i16, i16* %29, align 2, !dbg !239
  %call.i.i.i20 = call zeroext i16 @__fswab16(i16 zeroext %30) #6, !dbg !239
  %conv5.i.i.i = zext i16 %call.i.i.i20 to i32, !dbg !239
  br label %get_unaligned_be16.exit, !dbg !239

get_unaligned_be16.exit:                          ; preds = %cond.true.i.i.i19, %cond.false.i.i.i21
  %cond.i.i.i22 = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i19 ], [ %conv5.i.i.i, %cond.false.i.i.i21 ], !dbg !239
  %conv6.i.i.i = trunc i32 %cond.i.i.i22 to i16, !dbg !239
  %conv = zext i16 %conv6.i.i.i to i32, !dbg !240
  store i32 %conv, i32* %txlen, align 4, !dbg !241
  %31 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !242
  %32 = load i32, i32* %lba, align 4, !dbg !243
  %33 = load i32, i32* %txlen, align 4, !dbg !244
  %34 = load i8*, i8** %cdb.addr, align 8, !dbg !245
  %arrayidx4 = getelementptr i8, i8* %34, i64 1, !dbg !245
  %35 = load i8, i8* %arrayidx4, align 1, !dbg !245
  %conv5 = zext i8 %35 to i32, !dbg !245
  %shr = ashr i32 %conv5, 5, !dbg !246
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33, i32 %shr) #4, !dbg !247
  %36 = load i8*, i8** %cdb.addr, align 8, !dbg !248
  %arrayidx6 = getelementptr i8, i8* %36, i64 0, !dbg !248
  %37 = load i8, i8* %arrayidx6, align 1, !dbg !248
  %conv7 = zext i8 %37 to i32, !dbg !248
  %cmp = icmp eq i32 %conv7, 65, !dbg !250
  br i1 %cmp, label %if.then, label %if.end, !dbg !251

if.then:                                          ; preds = %get_unaligned_be16.exit
  %38 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !252
  %39 = load i8*, i8** %cdb.addr, align 8, !dbg !253
  %arrayidx9 = getelementptr i8, i8* %39, i64 1, !dbg !253
  %40 = load i8, i8* %arrayidx9, align 1, !dbg !253
  %conv10 = zext i8 %40 to i32, !dbg !253
  %shr11 = ashr i32 %conv10, 3, !dbg !254
  %and = and i32 %shr11, 1, !dbg !255
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %and) #4, !dbg !256
  br label %if.end, !dbg !256

if.end:                                           ; preds = %if.then, %get_unaligned_be16.exit
  %41 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !257
  call void @trace_seq_putc(%struct.trace_seq* %41, i8 zeroext 0) #4, !dbg !258
  %42 = load i8*, i8** %ret, align 8, !dbg !259
  ret i8* %42, !dbg !260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_rw12(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !261 {
entry:
  %p.addr.i.i.i5 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i.i5, metadata !193, metadata !DIExpression()), !dbg !262
  %p.addr.i.i6 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i6, metadata !211, metadata !DIExpression()), !dbg !266
  %p.addr.i7 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i7, metadata !213, metadata !DIExpression()), !dbg !267
  %p.addr.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i.i, metadata !193, metadata !DIExpression()), !dbg !268
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !211, metadata !DIExpression()), !dbg !272
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !213, metadata !DIExpression()), !dbg !273
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  %lba = alloca i32, align 4
  %txlen = alloca i32, align 4
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !274, metadata !DIExpression()), !dbg !275
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !276, metadata !DIExpression()), !dbg !277
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !282
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #4, !dbg !283
  store i8* %call, i8** %ret, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata i32* %lba, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata i32* %txlen, metadata !286, metadata !DIExpression()), !dbg !287
  %1 = load i8*, i8** %cdb.addr, align 8, !dbg !288
  %arrayidx = getelementptr i8, i8* %1, i64 2, !dbg !288
  store i8* %arrayidx, i8** %p.addr.i, align 8
  %2 = load i8*, i8** %p.addr.i, align 8, !dbg !289
  %3 = bitcast i8* %2 to i32*, !dbg !290
  store i32* %3, i32** %p.addr.i.i, align 8
  %4 = load i32*, i32** %p.addr.i.i, align 8, !dbg !291
  store i32* %4, i32** %p.addr.i.i.i, align 8
  %5 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !292
  %6 = load i32, i32* %5, align 4, !dbg !292
  %7 = call i1 @llvm.is.constant.i32(i32 %6) #5, !dbg !292
  br i1 %7, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !292

cond.true.i.i.i:                                  ; preds = %entry
  %8 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !292
  %9 = load i32, i32* %8, align 4, !dbg !292
  %and.i.i.i = and i32 %9, 255, !dbg !292
  %shl.i.i.i = shl i32 %and.i.i.i, 24, !dbg !292
  %10 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !292
  %11 = load i32, i32* %10, align 4, !dbg !292
  %and1.i.i.i = and i32 %11, 65280, !dbg !292
  %shl2.i.i.i = shl i32 %and1.i.i.i, 8, !dbg !292
  %or.i.i.i = or i32 %shl.i.i.i, %shl2.i.i.i, !dbg !292
  %12 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !292
  %13 = load i32, i32* %12, align 4, !dbg !292
  %and3.i.i.i = and i32 %13, 16711680, !dbg !292
  %shr.i.i.i = lshr i32 %and3.i.i.i, 8, !dbg !292
  %or4.i.i.i = or i32 %or.i.i.i, %shr.i.i.i, !dbg !292
  %14 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !292
  %15 = load i32, i32* %14, align 4, !dbg !292
  %and5.i.i.i = and i32 %15, -16777216, !dbg !292
  %shr6.i.i.i = lshr i32 %and5.i.i.i, 24, !dbg !292
  %or7.i.i.i = or i32 %or4.i.i.i, %shr6.i.i.i, !dbg !292
  br label %get_unaligned_be32.exit, !dbg !292

cond.false.i.i.i:                                 ; preds = %entry
  %16 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !292
  %17 = load i32, i32* %16, align 4, !dbg !292
  %call.i.i.i = call i32 @__fswab32(i32 %17) #6, !dbg !292
  br label %get_unaligned_be32.exit, !dbg !292

get_unaligned_be32.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %or7.i.i.i, %cond.true.i.i.i ], [ %call.i.i.i, %cond.false.i.i.i ], !dbg !292
  store i32 %cond.i.i.i, i32* %lba, align 4, !dbg !293
  %18 = load i8*, i8** %cdb.addr, align 8, !dbg !294
  %arrayidx2 = getelementptr i8, i8* %18, i64 6, !dbg !294
  store i8* %arrayidx2, i8** %p.addr.i7, align 8
  %19 = load i8*, i8** %p.addr.i7, align 8, !dbg !295
  %20 = bitcast i8* %19 to i32*, !dbg !296
  store i32* %20, i32** %p.addr.i.i6, align 8
  %21 = load i32*, i32** %p.addr.i.i6, align 8, !dbg !297
  store i32* %21, i32** %p.addr.i.i.i5, align 8
  %22 = load i32*, i32** %p.addr.i.i.i5, align 8, !dbg !298
  %23 = load i32, i32* %22, align 4, !dbg !298
  %24 = call i1 @llvm.is.constant.i32(i32 %23) #5, !dbg !298
  br i1 %24, label %cond.true.i.i.i19, label %cond.false.i.i.i21, !dbg !298

cond.true.i.i.i19:                                ; preds = %get_unaligned_be32.exit
  %25 = load i32*, i32** %p.addr.i.i.i5, align 8, !dbg !298
  %26 = load i32, i32* %25, align 4, !dbg !298
  %and.i.i.i8 = and i32 %26, 255, !dbg !298
  %shl.i.i.i9 = shl i32 %and.i.i.i8, 24, !dbg !298
  %27 = load i32*, i32** %p.addr.i.i.i5, align 8, !dbg !298
  %28 = load i32, i32* %27, align 4, !dbg !298
  %and1.i.i.i10 = and i32 %28, 65280, !dbg !298
  %shl2.i.i.i11 = shl i32 %and1.i.i.i10, 8, !dbg !298
  %or.i.i.i12 = or i32 %shl.i.i.i9, %shl2.i.i.i11, !dbg !298
  %29 = load i32*, i32** %p.addr.i.i.i5, align 8, !dbg !298
  %30 = load i32, i32* %29, align 4, !dbg !298
  %and3.i.i.i13 = and i32 %30, 16711680, !dbg !298
  %shr.i.i.i14 = lshr i32 %and3.i.i.i13, 8, !dbg !298
  %or4.i.i.i15 = or i32 %or.i.i.i12, %shr.i.i.i14, !dbg !298
  %31 = load i32*, i32** %p.addr.i.i.i5, align 8, !dbg !298
  %32 = load i32, i32* %31, align 4, !dbg !298
  %and5.i.i.i16 = and i32 %32, -16777216, !dbg !298
  %shr6.i.i.i17 = lshr i32 %and5.i.i.i16, 24, !dbg !298
  %or7.i.i.i18 = or i32 %or4.i.i.i15, %shr6.i.i.i17, !dbg !298
  br label %get_unaligned_be32.exit23, !dbg !298

cond.false.i.i.i21:                               ; preds = %get_unaligned_be32.exit
  %33 = load i32*, i32** %p.addr.i.i.i5, align 8, !dbg !298
  %34 = load i32, i32* %33, align 4, !dbg !298
  %call.i.i.i20 = call i32 @__fswab32(i32 %34) #6, !dbg !298
  br label %get_unaligned_be32.exit23, !dbg !298

get_unaligned_be32.exit23:                        ; preds = %cond.true.i.i.i19, %cond.false.i.i.i21
  %cond.i.i.i22 = phi i32 [ %or7.i.i.i18, %cond.true.i.i.i19 ], [ %call.i.i.i20, %cond.false.i.i.i21 ], !dbg !298
  store i32 %cond.i.i.i22, i32* %txlen, align 4, !dbg !299
  %35 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !300
  %36 = load i32, i32* %lba, align 4, !dbg !301
  %37 = load i32, i32* %txlen, align 4, !dbg !302
  %38 = load i8*, i8** %cdb.addr, align 8, !dbg !303
  %arrayidx4 = getelementptr i8, i8* %38, i64 1, !dbg !303
  %39 = load i8, i8* %arrayidx4, align 1, !dbg !303
  %conv = zext i8 %39 to i32, !dbg !303
  %shr = ashr i32 %conv, 5, !dbg !304
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i32 %shr) #4, !dbg !305
  %40 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !306
  call void @trace_seq_putc(%struct.trace_seq* %40, i8 zeroext 0) #4, !dbg !307
  %41 = load i8*, i8** %ret, align 8, !dbg !308
  ret i8* %41, !dbg !309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_rw16(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !310 {
entry:
  %p.addr.i.i.i11 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i.i11, metadata !193, metadata !DIExpression()), !dbg !311
  %p.addr.i.i12 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i12, metadata !211, metadata !DIExpression()), !dbg !315
  %p.addr.i13 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i13, metadata !213, metadata !DIExpression()), !dbg !316
  %p.addr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i.i.i, metadata !317, metadata !DIExpression()), !dbg !323
  %p.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i.i, metadata !336, metadata !DIExpression()), !dbg !337
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !338, metadata !DIExpression()), !dbg !339
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  %lba = alloca i64, align 8
  %txlen = alloca i32, align 4
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !340, metadata !DIExpression()), !dbg !341
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !342, metadata !DIExpression()), !dbg !343
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !344, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !346, metadata !DIExpression()), !dbg !347
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !348
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #4, !dbg !349
  store i8* %call, i8** %ret, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata i64* %lba, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata i32* %txlen, metadata !352, metadata !DIExpression()), !dbg !353
  %1 = load i8*, i8** %cdb.addr, align 8, !dbg !354
  %arrayidx = getelementptr i8, i8* %1, i64 2, !dbg !354
  store i8* %arrayidx, i8** %p.addr.i, align 8
  %2 = load i8*, i8** %p.addr.i, align 8, !dbg !355
  %3 = bitcast i8* %2 to i64*, !dbg !356
  store i64* %3, i64** %p.addr.i.i, align 8
  %4 = load i64*, i64** %p.addr.i.i, align 8, !dbg !357
  store i64* %4, i64** %p.addr.i.i.i, align 8
  %5 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !358
  %6 = load i64, i64* %5, align 8, !dbg !358
  %7 = call i1 @llvm.is.constant.i64(i64 %6) #5, !dbg !358
  br i1 %7, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !358

cond.true.i.i.i:                                  ; preds = %entry
  %8 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !358
  %9 = load i64, i64* %8, align 8, !dbg !358
  %and.i.i.i = and i64 %9, 255, !dbg !358
  %shl.i.i.i = shl i64 %and.i.i.i, 56, !dbg !358
  %10 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !358
  %11 = load i64, i64* %10, align 8, !dbg !358
  %and1.i.i.i = and i64 %11, 65280, !dbg !358
  %shl2.i.i.i = shl i64 %and1.i.i.i, 40, !dbg !358
  %or.i.i.i = or i64 %shl.i.i.i, %shl2.i.i.i, !dbg !358
  %12 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !358
  %13 = load i64, i64* %12, align 8, !dbg !358
  %and3.i.i.i = and i64 %13, 16711680, !dbg !358
  %shl4.i.i.i = shl i64 %and3.i.i.i, 24, !dbg !358
  %or5.i.i.i = or i64 %or.i.i.i, %shl4.i.i.i, !dbg !358
  %14 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !358
  %15 = load i64, i64* %14, align 8, !dbg !358
  %and6.i.i.i = and i64 %15, 4278190080, !dbg !358
  %shl7.i.i.i = shl i64 %and6.i.i.i, 8, !dbg !358
  %or8.i.i.i = or i64 %or5.i.i.i, %shl7.i.i.i, !dbg !358
  %16 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !358
  %17 = load i64, i64* %16, align 8, !dbg !358
  %and9.i.i.i = and i64 %17, 1095216660480, !dbg !358
  %shr.i.i.i = lshr i64 %and9.i.i.i, 8, !dbg !358
  %or10.i.i.i = or i64 %or8.i.i.i, %shr.i.i.i, !dbg !358
  %18 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !358
  %19 = load i64, i64* %18, align 8, !dbg !358
  %and11.i.i.i = and i64 %19, 280375465082880, !dbg !358
  %shr12.i.i.i = lshr i64 %and11.i.i.i, 24, !dbg !358
  %or13.i.i.i = or i64 %or10.i.i.i, %shr12.i.i.i, !dbg !358
  %20 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !358
  %21 = load i64, i64* %20, align 8, !dbg !358
  %and14.i.i.i = and i64 %21, 71776119061217280, !dbg !358
  %shr15.i.i.i = lshr i64 %and14.i.i.i, 40, !dbg !358
  %or16.i.i.i = or i64 %or13.i.i.i, %shr15.i.i.i, !dbg !358
  %22 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !358
  %23 = load i64, i64* %22, align 8, !dbg !358
  %and17.i.i.i = and i64 %23, -72057594037927936, !dbg !358
  %shr18.i.i.i = lshr i64 %and17.i.i.i, 56, !dbg !358
  %or19.i.i.i = or i64 %or16.i.i.i, %shr18.i.i.i, !dbg !358
  br label %get_unaligned_be64.exit, !dbg !358

cond.false.i.i.i:                                 ; preds = %entry
  %24 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !358
  %25 = load i64, i64* %24, align 8, !dbg !358
  %call.i.i.i = call i64 @__fswab64(i64 %25) #6, !dbg !358
  br label %get_unaligned_be64.exit, !dbg !358

get_unaligned_be64.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i64 [ %or19.i.i.i, %cond.true.i.i.i ], [ %call.i.i.i, %cond.false.i.i.i ], !dbg !358
  store i64 %cond.i.i.i, i64* %lba, align 8, !dbg !359
  %26 = load i8*, i8** %cdb.addr, align 8, !dbg !360
  %arrayidx2 = getelementptr i8, i8* %26, i64 10, !dbg !360
  store i8* %arrayidx2, i8** %p.addr.i13, align 8
  %27 = load i8*, i8** %p.addr.i13, align 8, !dbg !361
  %28 = bitcast i8* %27 to i32*, !dbg !362
  store i32* %28, i32** %p.addr.i.i12, align 8
  %29 = load i32*, i32** %p.addr.i.i12, align 8, !dbg !363
  store i32* %29, i32** %p.addr.i.i.i11, align 8
  %30 = load i32*, i32** %p.addr.i.i.i11, align 8, !dbg !364
  %31 = load i32, i32* %30, align 4, !dbg !364
  %32 = call i1 @llvm.is.constant.i32(i32 %31) #5, !dbg !364
  br i1 %32, label %cond.true.i.i.i21, label %cond.false.i.i.i23, !dbg !364

cond.true.i.i.i21:                                ; preds = %get_unaligned_be64.exit
  %33 = load i32*, i32** %p.addr.i.i.i11, align 8, !dbg !364
  %34 = load i32, i32* %33, align 4, !dbg !364
  %and.i.i.i14 = and i32 %34, 255, !dbg !364
  %shl.i.i.i15 = shl i32 %and.i.i.i14, 24, !dbg !364
  %35 = load i32*, i32** %p.addr.i.i.i11, align 8, !dbg !364
  %36 = load i32, i32* %35, align 4, !dbg !364
  %and1.i.i.i16 = and i32 %36, 65280, !dbg !364
  %shl2.i.i.i17 = shl i32 %and1.i.i.i16, 8, !dbg !364
  %or.i.i.i18 = or i32 %shl.i.i.i15, %shl2.i.i.i17, !dbg !364
  %37 = load i32*, i32** %p.addr.i.i.i11, align 8, !dbg !364
  %38 = load i32, i32* %37, align 4, !dbg !364
  %and3.i.i.i19 = and i32 %38, 16711680, !dbg !364
  %shr.i.i.i20 = lshr i32 %and3.i.i.i19, 8, !dbg !364
  %or4.i.i.i = or i32 %or.i.i.i18, %shr.i.i.i20, !dbg !364
  %39 = load i32*, i32** %p.addr.i.i.i11, align 8, !dbg !364
  %40 = load i32, i32* %39, align 4, !dbg !364
  %and5.i.i.i = and i32 %40, -16777216, !dbg !364
  %shr6.i.i.i = lshr i32 %and5.i.i.i, 24, !dbg !364
  %or7.i.i.i = or i32 %or4.i.i.i, %shr6.i.i.i, !dbg !364
  br label %get_unaligned_be32.exit, !dbg !364

cond.false.i.i.i23:                               ; preds = %get_unaligned_be64.exit
  %41 = load i32*, i32** %p.addr.i.i.i11, align 8, !dbg !364
  %42 = load i32, i32* %41, align 4, !dbg !364
  %call.i.i.i22 = call i32 @__fswab32(i32 %42) #6, !dbg !364
  br label %get_unaligned_be32.exit, !dbg !364

get_unaligned_be32.exit:                          ; preds = %cond.true.i.i.i21, %cond.false.i.i.i23
  %cond.i.i.i24 = phi i32 [ %or7.i.i.i, %cond.true.i.i.i21 ], [ %call.i.i.i22, %cond.false.i.i.i23 ], !dbg !364
  store i32 %cond.i.i.i24, i32* %txlen, align 4, !dbg !365
  %43 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !366
  %44 = load i64, i64* %lba, align 8, !dbg !367
  %45 = load i32, i32* %txlen, align 4, !dbg !368
  %46 = load i8*, i8** %cdb.addr, align 8, !dbg !369
  %arrayidx4 = getelementptr i8, i8* %46, i64 1, !dbg !369
  %47 = load i8, i8* %arrayidx4, align 1, !dbg !369
  %conv = zext i8 %47 to i32, !dbg !369
  %shr = ashr i32 %conv, 5, !dbg !370
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %44, i32 %45, i32 %shr) #4, !dbg !371
  %48 = load i8*, i8** %cdb.addr, align 8, !dbg !372
  %arrayidx5 = getelementptr i8, i8* %48, i64 0, !dbg !372
  %49 = load i8, i8* %arrayidx5, align 1, !dbg !372
  %conv6 = zext i8 %49 to i32, !dbg !372
  %cmp = icmp eq i32 %conv6, 147, !dbg !374
  br i1 %cmp, label %if.then, label %if.end, !dbg !375

if.then:                                          ; preds = %get_unaligned_be32.exit
  %50 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !376
  %51 = load i8*, i8** %cdb.addr, align 8, !dbg !377
  %arrayidx8 = getelementptr i8, i8* %51, i64 1, !dbg !377
  %52 = load i8, i8* %arrayidx8, align 1, !dbg !377
  %conv9 = zext i8 %52 to i32, !dbg !377
  %shr10 = ashr i32 %conv9, 3, !dbg !378
  %and = and i32 %shr10, 1, !dbg !379
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %and) #4, !dbg !380
  br label %if.end, !dbg !380

if.end:                                           ; preds = %if.then, %get_unaligned_be32.exit
  %53 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !381
  call void @trace_seq_putc(%struct.trace_seq* %53, i8 zeroext 0) #4, !dbg !382
  %54 = load i8*, i8** %ret, align 8, !dbg !383
  ret i8* %54, !dbg !384
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_unmap(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !385 {
entry:
  %p.addr.i.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i.i, metadata !165, metadata !DIExpression()), !dbg !386
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !189, metadata !DIExpression()), !dbg !390
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !191, metadata !DIExpression()), !dbg !391
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  %regions = alloca i32, align 4
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !392, metadata !DIExpression()), !dbg !393
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !394, metadata !DIExpression()), !dbg !395
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !400
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #4, !dbg !401
  store i8* %call, i8** %ret, align 8, !dbg !399
  call void @llvm.dbg.declare(metadata i32* %regions, metadata !402, metadata !DIExpression()), !dbg !403
  %1 = load i8*, i8** %cdb.addr, align 8, !dbg !404
  %arrayidx = getelementptr i8, i8* %1, i64 7, !dbg !404
  store i8* %arrayidx, i8** %p.addr.i, align 8
  %2 = load i8*, i8** %p.addr.i, align 8, !dbg !405
  %3 = bitcast i8* %2 to i16*, !dbg !406
  store i16* %3, i16** %p.addr.i.i, align 8
  %4 = load i16*, i16** %p.addr.i.i, align 8, !dbg !407
  store i16* %4, i16** %p.addr.i.i.i, align 8
  %5 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !408
  %6 = load i16, i16* %5, align 2, !dbg !408
  %7 = call i1 @llvm.is.constant.i16(i16 %6) #5, !dbg !408
  br i1 %7, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !408

cond.true.i.i.i:                                  ; preds = %entry
  %8 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !408
  %9 = load i16, i16* %8, align 2, !dbg !408
  %conv.i.i.i = zext i16 %9 to i32, !dbg !408
  %and.i.i.i = and i32 %conv.i.i.i, 255, !dbg !408
  %shl.i.i.i = shl i32 %and.i.i.i, 8, !dbg !408
  %10 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !408
  %11 = load i16, i16* %10, align 2, !dbg !408
  %conv1.i.i.i = zext i16 %11 to i32, !dbg !408
  %and2.i.i.i = and i32 %conv1.i.i.i, 65280, !dbg !408
  %shr.i.i.i = ashr i32 %and2.i.i.i, 8, !dbg !408
  %or.i.i.i = or i32 %shl.i.i.i, %shr.i.i.i, !dbg !408
  %conv3.i.i.i = trunc i32 %or.i.i.i to i16, !dbg !408
  %conv4.i.i.i = zext i16 %conv3.i.i.i to i32, !dbg !408
  br label %get_unaligned_be16.exit, !dbg !408

cond.false.i.i.i:                                 ; preds = %entry
  %12 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !408
  %13 = load i16, i16* %12, align 2, !dbg !408
  %call.i.i.i = call zeroext i16 @__fswab16(i16 zeroext %13) #6, !dbg !408
  %conv5.i.i.i = zext i16 %call.i.i.i to i32, !dbg !408
  br label %get_unaligned_be16.exit, !dbg !408

get_unaligned_be16.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i ], [ %conv5.i.i.i, %cond.false.i.i.i ], !dbg !408
  %conv6.i.i.i = trunc i32 %cond.i.i.i to i16, !dbg !408
  %conv = zext i16 %conv6.i.i.i to i32, !dbg !409
  store i32 %conv, i32* %regions, align 4, !dbg !403
  %14 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !410
  %15 = load i32, i32* %regions, align 4, !dbg !411
  %sub = sub i32 %15, 8, !dbg !412
  %div = udiv i32 %sub, 16, !dbg !413
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %div) #4, !dbg !414
  %16 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !415
  call void @trace_seq_putc(%struct.trace_seq* %16, i8 zeroext 0) #4, !dbg !416
  %17 = load i8*, i8** %ret, align 8, !dbg !417
  ret i8* %17, !dbg !418
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_service_action_in(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !419 {
entry:
  %p.addr.i.i.i6 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i.i6, metadata !193, metadata !DIExpression()), !dbg !420
  %p.addr.i.i7 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i7, metadata !211, metadata !DIExpression()), !dbg !424
  %p.addr.i8 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i8, metadata !213, metadata !DIExpression()), !dbg !425
  %p.addr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i.i.i, metadata !317, metadata !DIExpression()), !dbg !426
  %p.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i.i, metadata !336, metadata !DIExpression()), !dbg !430
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !338, metadata !DIExpression()), !dbg !431
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  %cmd = alloca i8*, align 8
  %lba = alloca i64, align 8
  %alloc_len = alloca i32, align 4
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !432, metadata !DIExpression()), !dbg !433
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !434, metadata !DIExpression()), !dbg !435
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !438, metadata !DIExpression()), !dbg !439
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !440
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #4, !dbg !441
  store i8* %call, i8** %ret, align 8, !dbg !439
  call void @llvm.dbg.declare(metadata i8** %cmd, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata i64* %lba, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata i32* %alloc_len, metadata !446, metadata !DIExpression()), !dbg !447
  %1 = load i8*, i8** %cdb.addr, align 8, !dbg !448
  %arrayidx = getelementptr i8, i8* %1, i64 1, !dbg !448
  %2 = load i8, i8* %arrayidx, align 1, !dbg !448
  %conv = zext i8 %2 to i32, !dbg !448
  %and = and i32 %conv, 31, !dbg !448
  switch i32 %and, label %sw.default [
    i32 16, label %sw.bb
    i32 18, label %sw.bb1
  ], !dbg !449

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %cmd, align 8, !dbg !450
  br label %sw.epilog, !dbg !452

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %cmd, align 8, !dbg !453
  br label %sw.epilog, !dbg !454

sw.default:                                       ; preds = %entry
  %3 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !455
  call void @trace_seq_puts(%struct.trace_seq* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !456
  br label %out, !dbg !457

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %4 = load i8*, i8** %cdb.addr, align 8, !dbg !458
  %arrayidx2 = getelementptr i8, i8* %4, i64 2, !dbg !458
  store i8* %arrayidx2, i8** %p.addr.i, align 8
  %5 = load i8*, i8** %p.addr.i, align 8, !dbg !459
  %6 = bitcast i8* %5 to i64*, !dbg !460
  store i64* %6, i64** %p.addr.i.i, align 8
  %7 = load i64*, i64** %p.addr.i.i, align 8, !dbg !461
  store i64* %7, i64** %p.addr.i.i.i, align 8
  %8 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !462
  %9 = load i64, i64* %8, align 8, !dbg !462
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #5, !dbg !462
  br i1 %10, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !462

cond.true.i.i.i:                                  ; preds = %sw.epilog
  %11 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !462
  %12 = load i64, i64* %11, align 8, !dbg !462
  %and.i.i.i = and i64 %12, 255, !dbg !462
  %shl.i.i.i = shl i64 %and.i.i.i, 56, !dbg !462
  %13 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !462
  %14 = load i64, i64* %13, align 8, !dbg !462
  %and1.i.i.i = and i64 %14, 65280, !dbg !462
  %shl2.i.i.i = shl i64 %and1.i.i.i, 40, !dbg !462
  %or.i.i.i = or i64 %shl.i.i.i, %shl2.i.i.i, !dbg !462
  %15 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !462
  %16 = load i64, i64* %15, align 8, !dbg !462
  %and3.i.i.i = and i64 %16, 16711680, !dbg !462
  %shl4.i.i.i = shl i64 %and3.i.i.i, 24, !dbg !462
  %or5.i.i.i = or i64 %or.i.i.i, %shl4.i.i.i, !dbg !462
  %17 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !462
  %18 = load i64, i64* %17, align 8, !dbg !462
  %and6.i.i.i = and i64 %18, 4278190080, !dbg !462
  %shl7.i.i.i = shl i64 %and6.i.i.i, 8, !dbg !462
  %or8.i.i.i = or i64 %or5.i.i.i, %shl7.i.i.i, !dbg !462
  %19 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !462
  %20 = load i64, i64* %19, align 8, !dbg !462
  %and9.i.i.i = and i64 %20, 1095216660480, !dbg !462
  %shr.i.i.i = lshr i64 %and9.i.i.i, 8, !dbg !462
  %or10.i.i.i = or i64 %or8.i.i.i, %shr.i.i.i, !dbg !462
  %21 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !462
  %22 = load i64, i64* %21, align 8, !dbg !462
  %and11.i.i.i = and i64 %22, 280375465082880, !dbg !462
  %shr12.i.i.i = lshr i64 %and11.i.i.i, 24, !dbg !462
  %or13.i.i.i = or i64 %or10.i.i.i, %shr12.i.i.i, !dbg !462
  %23 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !462
  %24 = load i64, i64* %23, align 8, !dbg !462
  %and14.i.i.i = and i64 %24, 71776119061217280, !dbg !462
  %shr15.i.i.i = lshr i64 %and14.i.i.i, 40, !dbg !462
  %or16.i.i.i = or i64 %or13.i.i.i, %shr15.i.i.i, !dbg !462
  %25 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !462
  %26 = load i64, i64* %25, align 8, !dbg !462
  %and17.i.i.i = and i64 %26, -72057594037927936, !dbg !462
  %shr18.i.i.i = lshr i64 %and17.i.i.i, 56, !dbg !462
  %or19.i.i.i = or i64 %or16.i.i.i, %shr18.i.i.i, !dbg !462
  br label %get_unaligned_be64.exit, !dbg !462

cond.false.i.i.i:                                 ; preds = %sw.epilog
  %27 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !462
  %28 = load i64, i64* %27, align 8, !dbg !462
  %call.i.i.i = call i64 @__fswab64(i64 %28) #6, !dbg !462
  br label %get_unaligned_be64.exit, !dbg !462

get_unaligned_be64.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i64 [ %or19.i.i.i, %cond.true.i.i.i ], [ %call.i.i.i, %cond.false.i.i.i ], !dbg !462
  store i64 %cond.i.i.i, i64* %lba, align 8, !dbg !463
  %29 = load i8*, i8** %cdb.addr, align 8, !dbg !464
  %arrayidx4 = getelementptr i8, i8* %29, i64 10, !dbg !464
  store i8* %arrayidx4, i8** %p.addr.i8, align 8
  %30 = load i8*, i8** %p.addr.i8, align 8, !dbg !465
  %31 = bitcast i8* %30 to i32*, !dbg !466
  store i32* %31, i32** %p.addr.i.i7, align 8
  %32 = load i32*, i32** %p.addr.i.i7, align 8, !dbg !467
  store i32* %32, i32** %p.addr.i.i.i6, align 8
  %33 = load i32*, i32** %p.addr.i.i.i6, align 8, !dbg !468
  %34 = load i32, i32* %33, align 4, !dbg !468
  %35 = call i1 @llvm.is.constant.i32(i32 %34) #5, !dbg !468
  br i1 %35, label %cond.true.i.i.i16, label %cond.false.i.i.i18, !dbg !468

cond.true.i.i.i16:                                ; preds = %get_unaligned_be64.exit
  %36 = load i32*, i32** %p.addr.i.i.i6, align 8, !dbg !468
  %37 = load i32, i32* %36, align 4, !dbg !468
  %and.i.i.i9 = and i32 %37, 255, !dbg !468
  %shl.i.i.i10 = shl i32 %and.i.i.i9, 24, !dbg !468
  %38 = load i32*, i32** %p.addr.i.i.i6, align 8, !dbg !468
  %39 = load i32, i32* %38, align 4, !dbg !468
  %and1.i.i.i11 = and i32 %39, 65280, !dbg !468
  %shl2.i.i.i12 = shl i32 %and1.i.i.i11, 8, !dbg !468
  %or.i.i.i13 = or i32 %shl.i.i.i10, %shl2.i.i.i12, !dbg !468
  %40 = load i32*, i32** %p.addr.i.i.i6, align 8, !dbg !468
  %41 = load i32, i32* %40, align 4, !dbg !468
  %and3.i.i.i14 = and i32 %41, 16711680, !dbg !468
  %shr.i.i.i15 = lshr i32 %and3.i.i.i14, 8, !dbg !468
  %or4.i.i.i = or i32 %or.i.i.i13, %shr.i.i.i15, !dbg !468
  %42 = load i32*, i32** %p.addr.i.i.i6, align 8, !dbg !468
  %43 = load i32, i32* %42, align 4, !dbg !468
  %and5.i.i.i = and i32 %43, -16777216, !dbg !468
  %shr6.i.i.i = lshr i32 %and5.i.i.i, 24, !dbg !468
  %or7.i.i.i = or i32 %or4.i.i.i, %shr6.i.i.i, !dbg !468
  br label %get_unaligned_be32.exit, !dbg !468

cond.false.i.i.i18:                               ; preds = %get_unaligned_be64.exit
  %44 = load i32*, i32** %p.addr.i.i.i6, align 8, !dbg !468
  %45 = load i32, i32* %44, align 4, !dbg !468
  %call.i.i.i17 = call i32 @__fswab32(i32 %45) #6, !dbg !468
  br label %get_unaligned_be32.exit, !dbg !468

get_unaligned_be32.exit:                          ; preds = %cond.true.i.i.i16, %cond.false.i.i.i18
  %cond.i.i.i19 = phi i32 [ %or7.i.i.i, %cond.true.i.i.i16 ], [ %call.i.i.i17, %cond.false.i.i.i18 ], !dbg !468
  store i32 %cond.i.i.i19, i32* %alloc_len, align 4, !dbg !469
  %46 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !470
  %47 = load i8*, i8** %cmd, align 8, !dbg !471
  %48 = load i64, i64* %lba, align 8, !dbg !472
  %49 = load i32, i32* %alloc_len, align 4, !dbg !473
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %47, i64 %48, i32 %49) #4, !dbg !474
  br label %out, !dbg !474

out:                                              ; preds = %get_unaligned_be32.exit, %sw.default
  call void @llvm.dbg.label(metadata !475), !dbg !476
  %50 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !477
  call void @trace_seq_putc(%struct.trace_seq* %50, i8 zeroext 0) #4, !dbg !478
  %51 = load i8*, i8** %ret, align 8, !dbg !479
  ret i8* %51, !dbg !480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_varlen(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !481 {
entry:
  %p.addr.i.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i.i, metadata !165, metadata !DIExpression()), !dbg !482
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !189, metadata !DIExpression()), !dbg !486
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !191, metadata !DIExpression()), !dbg !487
  %retval = alloca i8*, align 8
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !488, metadata !DIExpression()), !dbg !489
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !490, metadata !DIExpression()), !dbg !491
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !492, metadata !DIExpression()), !dbg !493
  %0 = load i8*, i8** %cdb.addr, align 8, !dbg !494
  %arrayidx = getelementptr i8, i8* %0, i64 8, !dbg !494
  store i8* %arrayidx, i8** %p.addr.i, align 8
  %1 = load i8*, i8** %p.addr.i, align 8, !dbg !495
  %2 = bitcast i8* %1 to i16*, !dbg !496
  store i16* %2, i16** %p.addr.i.i, align 8
  %3 = load i16*, i16** %p.addr.i.i, align 8, !dbg !497
  store i16* %3, i16** %p.addr.i.i.i, align 8
  %4 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !498
  %5 = load i16, i16* %4, align 2, !dbg !498
  %6 = call i1 @llvm.is.constant.i16(i16 %5) #5, !dbg !498
  br i1 %6, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !498

cond.true.i.i.i:                                  ; preds = %entry
  %7 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !498
  %8 = load i16, i16* %7, align 2, !dbg !498
  %conv.i.i.i = zext i16 %8 to i32, !dbg !498
  %and.i.i.i = and i32 %conv.i.i.i, 255, !dbg !498
  %shl.i.i.i = shl i32 %and.i.i.i, 8, !dbg !498
  %9 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !498
  %10 = load i16, i16* %9, align 2, !dbg !498
  %conv1.i.i.i = zext i16 %10 to i32, !dbg !498
  %and2.i.i.i = and i32 %conv1.i.i.i, 65280, !dbg !498
  %shr.i.i.i = ashr i32 %and2.i.i.i, 8, !dbg !498
  %or.i.i.i = or i32 %shl.i.i.i, %shr.i.i.i, !dbg !498
  %conv3.i.i.i = trunc i32 %or.i.i.i to i16, !dbg !498
  %conv4.i.i.i = zext i16 %conv3.i.i.i to i32, !dbg !498
  br label %get_unaligned_be16.exit, !dbg !498

cond.false.i.i.i:                                 ; preds = %entry
  %11 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !498
  %12 = load i16, i16* %11, align 2, !dbg !498
  %call.i.i.i = call zeroext i16 @__fswab16(i16 zeroext %12) #6, !dbg !498
  %conv5.i.i.i = zext i16 %call.i.i.i to i32, !dbg !498
  br label %get_unaligned_be16.exit, !dbg !498

get_unaligned_be16.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i ], [ %conv5.i.i.i, %cond.false.i.i.i ], !dbg !498
  %conv6.i.i.i = trunc i32 %cond.i.i.i to i16, !dbg !498
  %conv = zext i16 %conv6.i.i.i to i32, !dbg !494
  switch i32 %conv, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 13, label %sw.bb
  ], !dbg !499

sw.bb:                                            ; preds = %get_unaligned_be16.exit, %get_unaligned_be16.exit, %get_unaligned_be16.exit, %get_unaligned_be16.exit
  %13 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !500
  %14 = load i8*, i8** %cdb.addr, align 8, !dbg !502
  %15 = load i32, i32* %len.addr, align 4, !dbg !503
  %call1 = call i8* @scsi_trace_rw32(%struct.trace_seq* %13, i8* %14, i32 %15) #4, !dbg !504
  store i8* %call1, i8** %retval, align 8, !dbg !505
  br label %return, !dbg !505

sw.default:                                       ; preds = %get_unaligned_be16.exit
  %16 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !506
  %17 = load i8*, i8** %cdb.addr, align 8, !dbg !507
  %18 = load i32, i32* %len.addr, align 4, !dbg !508
  %call2 = call i8* @scsi_trace_misc(%struct.trace_seq* %16, i8* %17, i32 %18) #4, !dbg !509
  store i8* %call2, i8** %retval, align 8, !dbg !510
  br label %return, !dbg !510

return:                                           ; preds = %sw.default, %sw.bb
  %19 = load i8*, i8** %retval, align 8, !dbg !511
  ret i8* %19, !dbg !511
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_maintenance_in(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !512 {
entry:
  %p.addr.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i.i, metadata !193, metadata !DIExpression()), !dbg !513
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !211, metadata !DIExpression()), !dbg !517
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !213, metadata !DIExpression()), !dbg !518
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  %cmd = alloca i8*, align 8
  %alloc_len = alloca i32, align 4
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !519, metadata !DIExpression()), !dbg !520
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !521, metadata !DIExpression()), !dbg !522
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !525, metadata !DIExpression()), !dbg !526
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !527
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #4, !dbg !528
  store i8* %call, i8** %ret, align 8, !dbg !526
  call void @llvm.dbg.declare(metadata i8** %cmd, metadata !529, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.declare(metadata i32* %alloc_len, metadata !531, metadata !DIExpression()), !dbg !532
  %1 = load i8*, i8** %cdb.addr, align 8, !dbg !533
  %arrayidx = getelementptr i8, i8* %1, i64 1, !dbg !533
  %2 = load i8, i8* %arrayidx, align 1, !dbg !533
  %conv = zext i8 %2 to i32, !dbg !533
  %and = and i32 %conv, 31, !dbg !533
  switch i32 %and, label %sw.default [
    i32 5, label %sw.bb
    i32 10, label %sw.bb1
    i32 11, label %sw.bb2
    i32 12, label %sw.bb3
    i32 13, label %sw.bb4
    i32 14, label %sw.bb5
    i32 15, label %sw.bb6
    i32 16, label %sw.bb7
  ], !dbg !534

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8** %cmd, align 8, !dbg !535
  br label %sw.epilog, !dbg !537

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i8** %cmd, align 8, !dbg !538
  br label %sw.epilog, !dbg !539

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8** %cmd, align 8, !dbg !540
  br label %sw.epilog, !dbg !541

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8** %cmd, align 8, !dbg !542
  br label %sw.epilog, !dbg !543

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i8** %cmd, align 8, !dbg !544
  br label %sw.epilog, !dbg !545

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8** %cmd, align 8, !dbg !546
  br label %sw.epilog, !dbg !547

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8** %cmd, align 8, !dbg !548
  br label %sw.epilog, !dbg !549

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8** %cmd, align 8, !dbg !550
  br label %sw.epilog, !dbg !551

sw.default:                                       ; preds = %entry
  %3 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !552
  call void @trace_seq_puts(%struct.trace_seq* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !553
  br label %out, !dbg !554

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i8*, i8** %cdb.addr, align 8, !dbg !555
  %arrayidx8 = getelementptr i8, i8* %4, i64 6, !dbg !555
  store i8* %arrayidx8, i8** %p.addr.i, align 8
  %5 = load i8*, i8** %p.addr.i, align 8, !dbg !556
  %6 = bitcast i8* %5 to i32*, !dbg !557
  store i32* %6, i32** %p.addr.i.i, align 8
  %7 = load i32*, i32** %p.addr.i.i, align 8, !dbg !558
  store i32* %7, i32** %p.addr.i.i.i, align 8
  %8 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !559
  %9 = load i32, i32* %8, align 4, !dbg !559
  %10 = call i1 @llvm.is.constant.i32(i32 %9) #5, !dbg !559
  br i1 %10, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !559

cond.true.i.i.i:                                  ; preds = %sw.epilog
  %11 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !559
  %12 = load i32, i32* %11, align 4, !dbg !559
  %and.i.i.i = and i32 %12, 255, !dbg !559
  %shl.i.i.i = shl i32 %and.i.i.i, 24, !dbg !559
  %13 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !559
  %14 = load i32, i32* %13, align 4, !dbg !559
  %and1.i.i.i = and i32 %14, 65280, !dbg !559
  %shl2.i.i.i = shl i32 %and1.i.i.i, 8, !dbg !559
  %or.i.i.i = or i32 %shl.i.i.i, %shl2.i.i.i, !dbg !559
  %15 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !559
  %16 = load i32, i32* %15, align 4, !dbg !559
  %and3.i.i.i = and i32 %16, 16711680, !dbg !559
  %shr.i.i.i = lshr i32 %and3.i.i.i, 8, !dbg !559
  %or4.i.i.i = or i32 %or.i.i.i, %shr.i.i.i, !dbg !559
  %17 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !559
  %18 = load i32, i32* %17, align 4, !dbg !559
  %and5.i.i.i = and i32 %18, -16777216, !dbg !559
  %shr6.i.i.i = lshr i32 %and5.i.i.i, 24, !dbg !559
  %or7.i.i.i = or i32 %or4.i.i.i, %shr6.i.i.i, !dbg !559
  br label %get_unaligned_be32.exit, !dbg !559

cond.false.i.i.i:                                 ; preds = %sw.epilog
  %19 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !559
  %20 = load i32, i32* %19, align 4, !dbg !559
  %call.i.i.i = call i32 @__fswab32(i32 %20) #6, !dbg !559
  br label %get_unaligned_be32.exit, !dbg !559

get_unaligned_be32.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %or7.i.i.i, %cond.true.i.i.i ], [ %call.i.i.i, %cond.false.i.i.i ], !dbg !559
  store i32 %cond.i.i.i, i32* %alloc_len, align 4, !dbg !560
  %21 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !561
  %22 = load i8*, i8** %cmd, align 8, !dbg !562
  %23 = load i32, i32* %alloc_len, align 4, !dbg !563
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* %22, i32 %23) #4, !dbg !564
  br label %out, !dbg !564

out:                                              ; preds = %get_unaligned_be32.exit, %sw.default
  call void @llvm.dbg.label(metadata !565), !dbg !566
  %24 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !567
  call void @trace_seq_putc(%struct.trace_seq* %24, i8 zeroext 0) #4, !dbg !568
  %25 = load i8*, i8** %ret, align 8, !dbg !569
  ret i8* %25, !dbg !570
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_maintenance_out(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !571 {
entry:
  %p.addr.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i.i, metadata !193, metadata !DIExpression()), !dbg !572
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !211, metadata !DIExpression()), !dbg !576
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !213, metadata !DIExpression()), !dbg !577
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  %cmd = alloca i8*, align 8
  %alloc_len = alloca i32, align 4
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !578, metadata !DIExpression()), !dbg !579
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !580, metadata !DIExpression()), !dbg !581
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !584, metadata !DIExpression()), !dbg !585
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !586
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #4, !dbg !587
  store i8* %call, i8** %ret, align 8, !dbg !585
  call void @llvm.dbg.declare(metadata i8** %cmd, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.declare(metadata i32* %alloc_len, metadata !590, metadata !DIExpression()), !dbg !591
  %1 = load i8*, i8** %cdb.addr, align 8, !dbg !592
  %arrayidx = getelementptr i8, i8* %1, i64 1, !dbg !592
  %2 = load i8, i8* %arrayidx, align 1, !dbg !592
  %conv = zext i8 %2 to i32, !dbg !592
  %and = and i32 %conv, 31, !dbg !592
  switch i32 %and, label %sw.default [
    i32 6, label %sw.bb
    i32 10, label %sw.bb1
    i32 11, label %sw.bb2
    i32 14, label %sw.bb3
    i32 15, label %sw.bb4
    i32 16, label %sw.bb5
  ], !dbg !593

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8** %cmd, align 8, !dbg !594
  br label %sw.epilog, !dbg !596

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i8** %cmd, align 8, !dbg !597
  br label %sw.epilog, !dbg !598

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8** %cmd, align 8, !dbg !599
  br label %sw.epilog, !dbg !600

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8** %cmd, align 8, !dbg !601
  br label %sw.epilog, !dbg !602

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8** %cmd, align 8, !dbg !603
  br label %sw.epilog, !dbg !604

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i8** %cmd, align 8, !dbg !605
  br label %sw.epilog, !dbg !606

sw.default:                                       ; preds = %entry
  %3 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !607
  call void @trace_seq_puts(%struct.trace_seq* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !608
  br label %out, !dbg !609

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i8*, i8** %cdb.addr, align 8, !dbg !610
  %arrayidx6 = getelementptr i8, i8* %4, i64 6, !dbg !610
  store i8* %arrayidx6, i8** %p.addr.i, align 8
  %5 = load i8*, i8** %p.addr.i, align 8, !dbg !611
  %6 = bitcast i8* %5 to i32*, !dbg !612
  store i32* %6, i32** %p.addr.i.i, align 8
  %7 = load i32*, i32** %p.addr.i.i, align 8, !dbg !613
  store i32* %7, i32** %p.addr.i.i.i, align 8
  %8 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !614
  %9 = load i32, i32* %8, align 4, !dbg !614
  %10 = call i1 @llvm.is.constant.i32(i32 %9) #5, !dbg !614
  br i1 %10, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !614

cond.true.i.i.i:                                  ; preds = %sw.epilog
  %11 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !614
  %12 = load i32, i32* %11, align 4, !dbg !614
  %and.i.i.i = and i32 %12, 255, !dbg !614
  %shl.i.i.i = shl i32 %and.i.i.i, 24, !dbg !614
  %13 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !614
  %14 = load i32, i32* %13, align 4, !dbg !614
  %and1.i.i.i = and i32 %14, 65280, !dbg !614
  %shl2.i.i.i = shl i32 %and1.i.i.i, 8, !dbg !614
  %or.i.i.i = or i32 %shl.i.i.i, %shl2.i.i.i, !dbg !614
  %15 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !614
  %16 = load i32, i32* %15, align 4, !dbg !614
  %and3.i.i.i = and i32 %16, 16711680, !dbg !614
  %shr.i.i.i = lshr i32 %and3.i.i.i, 8, !dbg !614
  %or4.i.i.i = or i32 %or.i.i.i, %shr.i.i.i, !dbg !614
  %17 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !614
  %18 = load i32, i32* %17, align 4, !dbg !614
  %and5.i.i.i = and i32 %18, -16777216, !dbg !614
  %shr6.i.i.i = lshr i32 %and5.i.i.i, 24, !dbg !614
  %or7.i.i.i = or i32 %or4.i.i.i, %shr6.i.i.i, !dbg !614
  br label %get_unaligned_be32.exit, !dbg !614

cond.false.i.i.i:                                 ; preds = %sw.epilog
  %19 = load i32*, i32** %p.addr.i.i.i, align 8, !dbg !614
  %20 = load i32, i32* %19, align 4, !dbg !614
  %call.i.i.i = call i32 @__fswab32(i32 %20) #6, !dbg !614
  br label %get_unaligned_be32.exit, !dbg !614

get_unaligned_be32.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %or7.i.i.i, %cond.true.i.i.i ], [ %call.i.i.i, %cond.false.i.i.i ], !dbg !614
  store i32 %cond.i.i.i, i32* %alloc_len, align 4, !dbg !615
  %21 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !616
  %22 = load i8*, i8** %cmd, align 8, !dbg !617
  %23 = load i32, i32* %alloc_len, align 4, !dbg !618
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* %22, i32 %23) #4, !dbg !619
  br label %out, !dbg !619

out:                                              ; preds = %get_unaligned_be32.exit, %sw.default
  call void @llvm.dbg.label(metadata !620), !dbg !621
  %24 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !622
  call void @trace_seq_putc(%struct.trace_seq* %24, i8 zeroext 0) #4, !dbg !623
  %25 = load i8*, i8** %ret, align 8, !dbg !624
  ret i8* %25, !dbg !625
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_zbc_in(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !626 {
entry:
  %p.addr.i.i.i13 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i.i13, metadata !193, metadata !DIExpression()), !dbg !627
  %p.addr.i.i14 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i14, metadata !211, metadata !DIExpression()), !dbg !631
  %p.addr.i15 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i15, metadata !213, metadata !DIExpression()), !dbg !632
  %p.addr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i.i.i, metadata !317, metadata !DIExpression()), !dbg !633
  %p.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i.i, metadata !336, metadata !DIExpression()), !dbg !637
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !338, metadata !DIExpression()), !dbg !638
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  %cmd = alloca i8*, align 8
  %zone_id = alloca i64, align 8
  %alloc_len = alloca i32, align 4
  %options = alloca i8, align 1
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !639, metadata !DIExpression()), !dbg !640
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !641, metadata !DIExpression()), !dbg !642
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !643, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !645, metadata !DIExpression()), !dbg !646
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !647
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #4, !dbg !648
  store i8* %call, i8** %ret, align 8, !dbg !646
  call void @llvm.dbg.declare(metadata i8** %cmd, metadata !649, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.declare(metadata i64* %zone_id, metadata !651, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.declare(metadata i32* %alloc_len, metadata !653, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.declare(metadata i8* %options, metadata !655, metadata !DIExpression()), !dbg !658
  %1 = load i8*, i8** %cdb.addr, align 8, !dbg !659
  %arrayidx = getelementptr i8, i8* %1, i64 1, !dbg !659
  %2 = load i8, i8* %arrayidx, align 1, !dbg !659
  %conv = zext i8 %2 to i32, !dbg !659
  %and = and i32 %conv, 31, !dbg !659
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
  ], !dbg !660

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8** %cmd, align 8, !dbg !661
  br label %sw.epilog, !dbg !663

sw.default:                                       ; preds = %entry
  %3 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !664
  call void @trace_seq_puts(%struct.trace_seq* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !665
  br label %out, !dbg !666

sw.epilog:                                        ; preds = %sw.bb
  %4 = load i8*, i8** %cdb.addr, align 8, !dbg !667
  %arrayidx1 = getelementptr i8, i8* %4, i64 2, !dbg !667
  store i8* %arrayidx1, i8** %p.addr.i, align 8
  %5 = load i8*, i8** %p.addr.i, align 8, !dbg !668
  %6 = bitcast i8* %5 to i64*, !dbg !669
  store i64* %6, i64** %p.addr.i.i, align 8
  %7 = load i64*, i64** %p.addr.i.i, align 8, !dbg !670
  store i64* %7, i64** %p.addr.i.i.i, align 8
  %8 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !671
  %9 = load i64, i64* %8, align 8, !dbg !671
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #5, !dbg !671
  br i1 %10, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !671

cond.true.i.i.i:                                  ; preds = %sw.epilog
  %11 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !671
  %12 = load i64, i64* %11, align 8, !dbg !671
  %and.i.i.i = and i64 %12, 255, !dbg !671
  %shl.i.i.i = shl i64 %and.i.i.i, 56, !dbg !671
  %13 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !671
  %14 = load i64, i64* %13, align 8, !dbg !671
  %and1.i.i.i = and i64 %14, 65280, !dbg !671
  %shl2.i.i.i = shl i64 %and1.i.i.i, 40, !dbg !671
  %or.i.i.i = or i64 %shl.i.i.i, %shl2.i.i.i, !dbg !671
  %15 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !671
  %16 = load i64, i64* %15, align 8, !dbg !671
  %and3.i.i.i = and i64 %16, 16711680, !dbg !671
  %shl4.i.i.i = shl i64 %and3.i.i.i, 24, !dbg !671
  %or5.i.i.i = or i64 %or.i.i.i, %shl4.i.i.i, !dbg !671
  %17 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !671
  %18 = load i64, i64* %17, align 8, !dbg !671
  %and6.i.i.i = and i64 %18, 4278190080, !dbg !671
  %shl7.i.i.i = shl i64 %and6.i.i.i, 8, !dbg !671
  %or8.i.i.i = or i64 %or5.i.i.i, %shl7.i.i.i, !dbg !671
  %19 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !671
  %20 = load i64, i64* %19, align 8, !dbg !671
  %and9.i.i.i = and i64 %20, 1095216660480, !dbg !671
  %shr.i.i.i = lshr i64 %and9.i.i.i, 8, !dbg !671
  %or10.i.i.i = or i64 %or8.i.i.i, %shr.i.i.i, !dbg !671
  %21 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !671
  %22 = load i64, i64* %21, align 8, !dbg !671
  %and11.i.i.i = and i64 %22, 280375465082880, !dbg !671
  %shr12.i.i.i = lshr i64 %and11.i.i.i, 24, !dbg !671
  %or13.i.i.i = or i64 %or10.i.i.i, %shr12.i.i.i, !dbg !671
  %23 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !671
  %24 = load i64, i64* %23, align 8, !dbg !671
  %and14.i.i.i = and i64 %24, 71776119061217280, !dbg !671
  %shr15.i.i.i = lshr i64 %and14.i.i.i, 40, !dbg !671
  %or16.i.i.i = or i64 %or13.i.i.i, %shr15.i.i.i, !dbg !671
  %25 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !671
  %26 = load i64, i64* %25, align 8, !dbg !671
  %and17.i.i.i = and i64 %26, -72057594037927936, !dbg !671
  %shr18.i.i.i = lshr i64 %and17.i.i.i, 56, !dbg !671
  %or19.i.i.i = or i64 %or16.i.i.i, %shr18.i.i.i, !dbg !671
  br label %get_unaligned_be64.exit, !dbg !671

cond.false.i.i.i:                                 ; preds = %sw.epilog
  %27 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !671
  %28 = load i64, i64* %27, align 8, !dbg !671
  %call.i.i.i = call i64 @__fswab64(i64 %28) #6, !dbg !671
  br label %get_unaligned_be64.exit, !dbg !671

get_unaligned_be64.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i64 [ %or19.i.i.i, %cond.true.i.i.i ], [ %call.i.i.i, %cond.false.i.i.i ], !dbg !671
  store i64 %cond.i.i.i, i64* %zone_id, align 8, !dbg !672
  %29 = load i8*, i8** %cdb.addr, align 8, !dbg !673
  %arrayidx3 = getelementptr i8, i8* %29, i64 10, !dbg !673
  store i8* %arrayidx3, i8** %p.addr.i15, align 8
  %30 = load i8*, i8** %p.addr.i15, align 8, !dbg !674
  %31 = bitcast i8* %30 to i32*, !dbg !675
  store i32* %31, i32** %p.addr.i.i14, align 8
  %32 = load i32*, i32** %p.addr.i.i14, align 8, !dbg !676
  store i32* %32, i32** %p.addr.i.i.i13, align 8
  %33 = load i32*, i32** %p.addr.i.i.i13, align 8, !dbg !677
  %34 = load i32, i32* %33, align 4, !dbg !677
  %35 = call i1 @llvm.is.constant.i32(i32 %34) #5, !dbg !677
  br i1 %35, label %cond.true.i.i.i23, label %cond.false.i.i.i25, !dbg !677

cond.true.i.i.i23:                                ; preds = %get_unaligned_be64.exit
  %36 = load i32*, i32** %p.addr.i.i.i13, align 8, !dbg !677
  %37 = load i32, i32* %36, align 4, !dbg !677
  %and.i.i.i16 = and i32 %37, 255, !dbg !677
  %shl.i.i.i17 = shl i32 %and.i.i.i16, 24, !dbg !677
  %38 = load i32*, i32** %p.addr.i.i.i13, align 8, !dbg !677
  %39 = load i32, i32* %38, align 4, !dbg !677
  %and1.i.i.i18 = and i32 %39, 65280, !dbg !677
  %shl2.i.i.i19 = shl i32 %and1.i.i.i18, 8, !dbg !677
  %or.i.i.i20 = or i32 %shl.i.i.i17, %shl2.i.i.i19, !dbg !677
  %40 = load i32*, i32** %p.addr.i.i.i13, align 8, !dbg !677
  %41 = load i32, i32* %40, align 4, !dbg !677
  %and3.i.i.i21 = and i32 %41, 16711680, !dbg !677
  %shr.i.i.i22 = lshr i32 %and3.i.i.i21, 8, !dbg !677
  %or4.i.i.i = or i32 %or.i.i.i20, %shr.i.i.i22, !dbg !677
  %42 = load i32*, i32** %p.addr.i.i.i13, align 8, !dbg !677
  %43 = load i32, i32* %42, align 4, !dbg !677
  %and5.i.i.i = and i32 %43, -16777216, !dbg !677
  %shr6.i.i.i = lshr i32 %and5.i.i.i, 24, !dbg !677
  %or7.i.i.i = or i32 %or4.i.i.i, %shr6.i.i.i, !dbg !677
  br label %get_unaligned_be32.exit, !dbg !677

cond.false.i.i.i25:                               ; preds = %get_unaligned_be64.exit
  %44 = load i32*, i32** %p.addr.i.i.i13, align 8, !dbg !677
  %45 = load i32, i32* %44, align 4, !dbg !677
  %call.i.i.i24 = call i32 @__fswab32(i32 %45) #6, !dbg !677
  br label %get_unaligned_be32.exit, !dbg !677

get_unaligned_be32.exit:                          ; preds = %cond.true.i.i.i23, %cond.false.i.i.i25
  %cond.i.i.i26 = phi i32 [ %or7.i.i.i, %cond.true.i.i.i23 ], [ %call.i.i.i24, %cond.false.i.i.i25 ], !dbg !677
  store i32 %cond.i.i.i26, i32* %alloc_len, align 4, !dbg !678
  %46 = load i8*, i8** %cdb.addr, align 8, !dbg !679
  %arrayidx5 = getelementptr i8, i8* %46, i64 14, !dbg !679
  %47 = load i8, i8* %arrayidx5, align 1, !dbg !679
  %conv6 = zext i8 %47 to i32, !dbg !679
  %and7 = and i32 %conv6, 63, !dbg !680
  %conv8 = trunc i32 %and7 to i8, !dbg !679
  store i8 %conv8, i8* %options, align 1, !dbg !681
  %48 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !682
  %49 = load i8*, i8** %cmd, align 8, !dbg !683
  %50 = load i64, i64* %zone_id, align 8, !dbg !684
  %51 = load i32, i32* %alloc_len, align 4, !dbg !685
  %52 = load i8, i8* %options, align 1, !dbg !686
  %conv9 = zext i8 %52 to i32, !dbg !686
  %53 = load i8*, i8** %cdb.addr, align 8, !dbg !687
  %arrayidx10 = getelementptr i8, i8* %53, i64 14, !dbg !687
  %54 = load i8, i8* %arrayidx10, align 1, !dbg !687
  %conv11 = zext i8 %54 to i32, !dbg !687
  %shr = ashr i32 %conv11, 7, !dbg !688
  %and12 = and i32 %shr, 1, !dbg !689
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i64 0, i64 0), i8* %49, i64 %50, i32 %51, i32 %conv9, i32 %and12) #4, !dbg !690
  br label %out, !dbg !690

out:                                              ; preds = %get_unaligned_be32.exit, %sw.default
  call void @llvm.dbg.label(metadata !691), !dbg !692
  %55 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !693
  call void @trace_seq_putc(%struct.trace_seq* %55, i8 zeroext 0) #4, !dbg !694
  %56 = load i8*, i8** %ret, align 8, !dbg !695
  ret i8* %56, !dbg !696
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_zbc_out(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !697 {
entry:
  %p.addr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i.i.i, metadata !317, metadata !DIExpression()), !dbg !698
  %p.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i.i, metadata !336, metadata !DIExpression()), !dbg !702
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !338, metadata !DIExpression()), !dbg !703
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  %cmd = alloca i8*, align 8
  %zone_id = alloca i64, align 8
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !704, metadata !DIExpression()), !dbg !705
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !706, metadata !DIExpression()), !dbg !707
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !708, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !710, metadata !DIExpression()), !dbg !711
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !712
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #4, !dbg !713
  store i8* %call, i8** %ret, align 8, !dbg !711
  call void @llvm.dbg.declare(metadata i8** %cmd, metadata !714, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.declare(metadata i64* %zone_id, metadata !716, metadata !DIExpression()), !dbg !717
  %1 = load i8*, i8** %cdb.addr, align 8, !dbg !718
  %arrayidx = getelementptr i8, i8* %1, i64 1, !dbg !718
  %2 = load i8, i8* %arrayidx, align 1, !dbg !718
  %conv = zext i8 %2 to i32, !dbg !718
  %and = and i32 %conv, 31, !dbg !718
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
  ], !dbg !719

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8** %cmd, align 8, !dbg !720
  br label %sw.epilog, !dbg !722

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8** %cmd, align 8, !dbg !723
  br label %sw.epilog, !dbg !724

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8** %cmd, align 8, !dbg !725
  br label %sw.epilog, !dbg !726

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), i8** %cmd, align 8, !dbg !727
  br label %sw.epilog, !dbg !728

sw.default:                                       ; preds = %entry
  %3 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !729
  call void @trace_seq_puts(%struct.trace_seq* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !730
  br label %out, !dbg !731

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i8*, i8** %cdb.addr, align 8, !dbg !732
  %arrayidx4 = getelementptr i8, i8* %4, i64 2, !dbg !732
  store i8* %arrayidx4, i8** %p.addr.i, align 8
  %5 = load i8*, i8** %p.addr.i, align 8, !dbg !733
  %6 = bitcast i8* %5 to i64*, !dbg !734
  store i64* %6, i64** %p.addr.i.i, align 8
  %7 = load i64*, i64** %p.addr.i.i, align 8, !dbg !735
  store i64* %7, i64** %p.addr.i.i.i, align 8
  %8 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !736
  %9 = load i64, i64* %8, align 8, !dbg !736
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #5, !dbg !736
  br i1 %10, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !736

cond.true.i.i.i:                                  ; preds = %sw.epilog
  %11 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !736
  %12 = load i64, i64* %11, align 8, !dbg !736
  %and.i.i.i = and i64 %12, 255, !dbg !736
  %shl.i.i.i = shl i64 %and.i.i.i, 56, !dbg !736
  %13 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !736
  %14 = load i64, i64* %13, align 8, !dbg !736
  %and1.i.i.i = and i64 %14, 65280, !dbg !736
  %shl2.i.i.i = shl i64 %and1.i.i.i, 40, !dbg !736
  %or.i.i.i = or i64 %shl.i.i.i, %shl2.i.i.i, !dbg !736
  %15 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !736
  %16 = load i64, i64* %15, align 8, !dbg !736
  %and3.i.i.i = and i64 %16, 16711680, !dbg !736
  %shl4.i.i.i = shl i64 %and3.i.i.i, 24, !dbg !736
  %or5.i.i.i = or i64 %or.i.i.i, %shl4.i.i.i, !dbg !736
  %17 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !736
  %18 = load i64, i64* %17, align 8, !dbg !736
  %and6.i.i.i = and i64 %18, 4278190080, !dbg !736
  %shl7.i.i.i = shl i64 %and6.i.i.i, 8, !dbg !736
  %or8.i.i.i = or i64 %or5.i.i.i, %shl7.i.i.i, !dbg !736
  %19 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !736
  %20 = load i64, i64* %19, align 8, !dbg !736
  %and9.i.i.i = and i64 %20, 1095216660480, !dbg !736
  %shr.i.i.i = lshr i64 %and9.i.i.i, 8, !dbg !736
  %or10.i.i.i = or i64 %or8.i.i.i, %shr.i.i.i, !dbg !736
  %21 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !736
  %22 = load i64, i64* %21, align 8, !dbg !736
  %and11.i.i.i = and i64 %22, 280375465082880, !dbg !736
  %shr12.i.i.i = lshr i64 %and11.i.i.i, 24, !dbg !736
  %or13.i.i.i = or i64 %or10.i.i.i, %shr12.i.i.i, !dbg !736
  %23 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !736
  %24 = load i64, i64* %23, align 8, !dbg !736
  %and14.i.i.i = and i64 %24, 71776119061217280, !dbg !736
  %shr15.i.i.i = lshr i64 %and14.i.i.i, 40, !dbg !736
  %or16.i.i.i = or i64 %or13.i.i.i, %shr15.i.i.i, !dbg !736
  %25 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !736
  %26 = load i64, i64* %25, align 8, !dbg !736
  %and17.i.i.i = and i64 %26, -72057594037927936, !dbg !736
  %shr18.i.i.i = lshr i64 %and17.i.i.i, 56, !dbg !736
  %or19.i.i.i = or i64 %or16.i.i.i, %shr18.i.i.i, !dbg !736
  br label %get_unaligned_be64.exit, !dbg !736

cond.false.i.i.i:                                 ; preds = %sw.epilog
  %27 = load i64*, i64** %p.addr.i.i.i, align 8, !dbg !736
  %28 = load i64, i64* %27, align 8, !dbg !736
  %call.i.i.i = call i64 @__fswab64(i64 %28) #6, !dbg !736
  br label %get_unaligned_be64.exit, !dbg !736

get_unaligned_be64.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i64 [ %or19.i.i.i, %cond.true.i.i.i ], [ %call.i.i.i, %cond.false.i.i.i ], !dbg !736
  store i64 %cond.i.i.i, i64* %zone_id, align 8, !dbg !737
  %29 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !738
  %30 = load i8*, i8** %cmd, align 8, !dbg !739
  %31 = load i64, i64* %zone_id, align 8, !dbg !740
  %32 = load i8*, i8** %cdb.addr, align 8, !dbg !741
  %arrayidx6 = getelementptr i8, i8* %32, i64 14, !dbg !741
  %33 = load i8, i8* %arrayidx6, align 1, !dbg !741
  %conv7 = zext i8 %33 to i32, !dbg !741
  %and8 = and i32 %conv7, 1, !dbg !742
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i8* %30, i64 %31, i32 %and8) #4, !dbg !743
  br label %out, !dbg !743

out:                                              ; preds = %get_unaligned_be64.exit, %sw.default
  call void @llvm.dbg.label(metadata !744), !dbg !745
  %34 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !746
  call void @trace_seq_putc(%struct.trace_seq* %34, i8 zeroext 0) #4, !dbg !747
  %35 = load i8*, i8** %ret, align 8, !dbg !748
  ret i8* %35, !dbg !749
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_misc(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !750 {
entry:
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !751, metadata !DIExpression()), !dbg !752
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !753, metadata !DIExpression()), !dbg !754
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !755, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !757, metadata !DIExpression()), !dbg !758
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !759
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #4, !dbg !760
  store i8* %call, i8** %ret, align 8, !dbg !758
  %1 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !761
  call void @trace_seq_putc(%struct.trace_seq* %1, i8 zeroext 45) #4, !dbg !762
  %2 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !763
  call void @trace_seq_putc(%struct.trace_seq* %2, i8 zeroext 0) #4, !dbg !764
  %3 = load i8*, i8** %ret, align 8, !dbg !765
  ret i8* %3, !dbg !766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @trace_seq_buffer_ptr(%struct.trace_seq* %s) #0 !dbg !767 {
entry:
  %s.addr = alloca %struct.trace_seq*, align 8
  store %struct.trace_seq* %s, %struct.trace_seq** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %s.addr, metadata !770, metadata !DIExpression()), !dbg !771
  %0 = load %struct.trace_seq*, %struct.trace_seq** %s.addr, align 8, !dbg !772
  %buffer = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %0, i32 0, i32 0, !dbg !773
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 0, !dbg !772
  %1 = load %struct.trace_seq*, %struct.trace_seq** %s.addr, align 8, !dbg !774
  %seq = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %1, i32 0, i32 1, !dbg !775
  %call = call i32 @seq_buf_used(%struct.seq_buf* %seq) #4, !dbg !776
  %idx.ext = zext i32 %call to i64, !dbg !777
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %idx.ext, !dbg !777
  ret i8* %add.ptr, !dbg !778
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_unaligned_be24(i8* %p) #0 !dbg !779 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !781, metadata !DIExpression()), !dbg !782
  %0 = load i8*, i8** %p.addr, align 8, !dbg !783
  %call = call i32 @__get_unaligned_be24(i8* %0) #4, !dbg !784
  ret i32 %call, !dbg !785
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_seq_printf(%struct.trace_seq* %s, i8* %fmt, ...) #0 !dbg !786 {
entry:
  %s.addr = alloca %struct.trace_seq*, align 8
  %fmt.addr = alloca i8*, align 8
  store %struct.trace_seq* %s, %struct.trace_seq** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %s.addr, metadata !789, metadata !DIExpression()), !dbg !790
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !791, metadata !DIExpression()), !dbg !792
  ret void, !dbg !793
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_seq_putc(%struct.trace_seq* %s, i8 zeroext %c) #0 !dbg !794 {
entry:
  %s.addr = alloca %struct.trace_seq*, align 8
  %c.addr = alloca i8, align 1
  store %struct.trace_seq* %s, %struct.trace_seq** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %s.addr, metadata !797, metadata !DIExpression()), !dbg !798
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !799, metadata !DIExpression()), !dbg !800
  ret void, !dbg !801
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @seq_buf_used(%struct.seq_buf* %s) #0 !dbg !802 {
entry:
  %s.addr = alloca %struct.seq_buf*, align 8
  %__UNIQUE_ID___x189 = alloca i64, align 8
  %__UNIQUE_ID___y190 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.seq_buf* %s, %struct.seq_buf** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_buf** %s.addr, metadata !806, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x189, metadata !808, metadata !DIExpression()), !dbg !810
  %0 = load %struct.seq_buf*, %struct.seq_buf** %s.addr, align 8, !dbg !810
  %len = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %0, i32 0, i32 2, !dbg !810
  %1 = load i64, i64* %len, align 8, !dbg !810
  store i64 %1, i64* %__UNIQUE_ID___x189, align 8, !dbg !810
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y190, metadata !811, metadata !DIExpression()), !dbg !810
  %2 = load %struct.seq_buf*, %struct.seq_buf** %s.addr, align 8, !dbg !810
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %2, i32 0, i32 1, !dbg !810
  %3 = load i64, i64* %size, align 8, !dbg !810
  store i64 %3, i64* %__UNIQUE_ID___y190, align 8, !dbg !810
  %4 = load i64, i64* %__UNIQUE_ID___x189, align 8, !dbg !810
  %5 = load i64, i64* %__UNIQUE_ID___y190, align 8, !dbg !810
  %cmp = icmp ult i64 %4, %5, !dbg !810
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !810

cond.true:                                        ; preds = %entry
  %6 = load i64, i64* %__UNIQUE_ID___x189, align 8, !dbg !810
  br label %cond.end, !dbg !810

cond.false:                                       ; preds = %entry
  %7 = load i64, i64* %__UNIQUE_ID___y190, align 8, !dbg !810
  br label %cond.end, !dbg !810

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !810
  store i64 %cond, i64* %tmp, align 8, !dbg !810
  %8 = load i64, i64* %tmp, align 8, !dbg !810
  %conv = trunc i64 %8 to i32, !dbg !812
  ret i32 %conv, !dbg !813
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__get_unaligned_be24(i8* %p) #0 !dbg !814 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !819, metadata !DIExpression()), !dbg !820
  %0 = load i8*, i8** %p.addr, align 8, !dbg !821
  %arrayidx = getelementptr i8, i8* %0, i64 0, !dbg !821
  %1 = load i8, i8* %arrayidx, align 1, !dbg !821
  %conv = zext i8 %1 to i32, !dbg !821
  %shl = shl i32 %conv, 16, !dbg !822
  %2 = load i8*, i8** %p.addr, align 8, !dbg !823
  %arrayidx1 = getelementptr i8, i8* %2, i64 1, !dbg !823
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !823
  %conv2 = zext i8 %3 to i32, !dbg !823
  %shl3 = shl i32 %conv2, 8, !dbg !824
  %or = or i32 %shl, %shl3, !dbg !825
  %4 = load i8*, i8** %p.addr, align 8, !dbg !826
  %arrayidx4 = getelementptr i8, i8* %4, i64 2, !dbg !826
  %5 = load i8, i8* %arrayidx4, align 1, !dbg !826
  %conv5 = zext i8 %5 to i32, !dbg !826
  %or6 = or i32 %or, %conv5, !dbg !827
  ret i32 %or6, !dbg !828
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #2

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #3 !dbg !829 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !832, metadata !DIExpression()), !dbg !833
  %0 = load i32, i32* %val.addr, align 4, !dbg !834
  %call = call i32 @__arch_swab32(i32 %0) #6, !dbg !835
  ret i32 %call, !dbg !836
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #3 !dbg !837 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !839, metadata !DIExpression()), !dbg !840
  %0 = load i32, i32* %val.addr, align 4, !dbg !841
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #7, !dbg !842, !srcloc !843
  store i32 %1, i32* %val.addr, align 4, !dbg !842
  %2 = load i32, i32* %val.addr, align 4, !dbg !844
  ret i32 %2, !dbg !845
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #2

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #3 !dbg !846 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !849, metadata !DIExpression()), !dbg !850
  %0 = load i16, i16* %val.addr, align 2, !dbg !851
  %conv = zext i16 %0 to i32, !dbg !851
  %and = and i32 %conv, 255, !dbg !851
  %shl = shl i32 %and, 8, !dbg !851
  %1 = load i16, i16* %val.addr, align 2, !dbg !851
  %conv1 = zext i16 %1 to i32, !dbg !851
  %and2 = and i32 %conv1, 65280, !dbg !851
  %shr = ashr i32 %and2, 8, !dbg !851
  %or = or i32 %shl, %shr, !dbg !851
  %conv3 = trunc i32 %or to i16, !dbg !851
  ret i16 %conv3, !dbg !852
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #2

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i64 @__fswab64(i64 %val) #3 !dbg !853 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !856, metadata !DIExpression()), !dbg !857
  %0 = load i64, i64* %val.addr, align 8, !dbg !858
  %call = call i64 @__arch_swab64(i64 %0) #6, !dbg !859
  ret i64 %call, !dbg !860
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i64 @__arch_swab64(i64 %val) #3 !dbg !861 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !862, metadata !DIExpression()), !dbg !863
  %0 = load i64, i64* %val.addr, align 8, !dbg !864
  %1 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %0) #7, !dbg !865, !srcloc !866
  store i64 %1, i64* %val.addr, align 8, !dbg !865
  %2 = load i64, i64* %val.addr, align 8, !dbg !867
  ret i64 %2, !dbg !868
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_seq_puts(%struct.trace_seq* %s, i8* %str) #0 !dbg !869 {
entry:
  %s.addr = alloca %struct.trace_seq*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.trace_seq* %s, %struct.trace_seq** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %s.addr, metadata !872, metadata !DIExpression()), !dbg !873
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !874, metadata !DIExpression()), !dbg !875
  ret void, !dbg !876
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @scsi_trace_rw32(%struct.trace_seq* %p, i8* %cdb, i32 %len) #0 !dbg !877 {
entry:
  %p.addr.i.i.i64 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i.i64, metadata !165, metadata !DIExpression()), !dbg !878
  %p.addr.i.i65 = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i65, metadata !189, metadata !DIExpression()), !dbg !883
  %p.addr.i66 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i66, metadata !191, metadata !DIExpression()), !dbg !884
  %p.addr.i.i.i45 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i.i45, metadata !193, metadata !DIExpression()), !dbg !885
  %p.addr.i.i46 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i46, metadata !211, metadata !DIExpression()), !dbg !889
  %p.addr.i47 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i47, metadata !213, metadata !DIExpression()), !dbg !890
  %p.addr.i.i.i31 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i.i31, metadata !193, metadata !DIExpression()), !dbg !891
  %p.addr.i.i32 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i32, metadata !211, metadata !DIExpression()), !dbg !895
  %p.addr.i33 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i33, metadata !213, metadata !DIExpression()), !dbg !896
  %p.addr.i.i.i20 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i.i.i20, metadata !317, metadata !DIExpression()), !dbg !897
  %p.addr.i.i21 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i.i21, metadata !336, metadata !DIExpression()), !dbg !901
  %p.addr.i22 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i22, metadata !338, metadata !DIExpression()), !dbg !902
  %p.addr.i.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i.i, metadata !165, metadata !DIExpression()), !dbg !903
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !189, metadata !DIExpression()), !dbg !907
  %p.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr.i, metadata !191, metadata !DIExpression()), !dbg !908
  %p.addr = alloca %struct.trace_seq*, align 8
  %cdb.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  %cmd = alloca i8*, align 8
  %lba = alloca i64, align 8
  %ei_lbrt = alloca i32, align 4
  %txlen = alloca i32, align 4
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !909, metadata !DIExpression()), !dbg !910
  store i8* %cdb, i8** %cdb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cdb.addr, metadata !911, metadata !DIExpression()), !dbg !912
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !913, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !915, metadata !DIExpression()), !dbg !916
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !917
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #4, !dbg !918
  store i8* %call, i8** %ret, align 8, !dbg !916
  call void @llvm.dbg.declare(metadata i8** %cmd, metadata !919, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.declare(metadata i64* %lba, metadata !921, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.declare(metadata i32* %ei_lbrt, metadata !923, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.declare(metadata i32* %txlen, metadata !925, metadata !DIExpression()), !dbg !926
  %1 = load i8*, i8** %cdb.addr, align 8, !dbg !927
  %arrayidx = getelementptr i8, i8* %1, i64 8, !dbg !927
  store i8* %arrayidx, i8** %p.addr.i, align 8
  %2 = load i8*, i8** %p.addr.i, align 8, !dbg !928
  %3 = bitcast i8* %2 to i16*, !dbg !929
  store i16* %3, i16** %p.addr.i.i, align 8
  %4 = load i16*, i16** %p.addr.i.i, align 8, !dbg !930
  store i16* %4, i16** %p.addr.i.i.i, align 8
  %5 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !931
  %6 = load i16, i16* %5, align 2, !dbg !931
  %7 = call i1 @llvm.is.constant.i16(i16 %6) #5, !dbg !931
  br i1 %7, label %cond.true.i.i.i, label %cond.false.i.i.i, !dbg !931

cond.true.i.i.i:                                  ; preds = %entry
  %8 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !931
  %9 = load i16, i16* %8, align 2, !dbg !931
  %conv.i.i.i = zext i16 %9 to i32, !dbg !931
  %and.i.i.i = and i32 %conv.i.i.i, 255, !dbg !931
  %shl.i.i.i = shl i32 %and.i.i.i, 8, !dbg !931
  %10 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !931
  %11 = load i16, i16* %10, align 2, !dbg !931
  %conv1.i.i.i = zext i16 %11 to i32, !dbg !931
  %and2.i.i.i = and i32 %conv1.i.i.i, 65280, !dbg !931
  %shr.i.i.i = ashr i32 %and2.i.i.i, 8, !dbg !931
  %or.i.i.i = or i32 %shl.i.i.i, %shr.i.i.i, !dbg !931
  %conv3.i.i.i = trunc i32 %or.i.i.i to i16, !dbg !931
  %conv4.i.i.i = zext i16 %conv3.i.i.i to i32, !dbg !931
  br label %get_unaligned_be16.exit, !dbg !931

cond.false.i.i.i:                                 ; preds = %entry
  %12 = load i16*, i16** %p.addr.i.i.i, align 8, !dbg !931
  %13 = load i16, i16* %12, align 2, !dbg !931
  %call.i.i.i = call zeroext i16 @__fswab16(i16 zeroext %13) #6, !dbg !931
  %conv5.i.i.i = zext i16 %call.i.i.i to i32, !dbg !931
  br label %get_unaligned_be16.exit, !dbg !931

get_unaligned_be16.exit:                          ; preds = %cond.true.i.i.i, %cond.false.i.i.i
  %cond.i.i.i = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i ], [ %conv5.i.i.i, %cond.false.i.i.i ], !dbg !931
  %conv6.i.i.i = trunc i32 %cond.i.i.i to i16, !dbg !931
  %conv = zext i16 %conv6.i.i.i to i32, !dbg !927
  switch i32 %conv, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb2
    i32 11, label %sw.bb3
    i32 13, label %sw.bb4
  ], !dbg !932

sw.bb:                                            ; preds = %get_unaligned_be16.exit
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %cmd, align 8, !dbg !933
  br label %sw.epilog, !dbg !935

sw.bb2:                                           ; preds = %get_unaligned_be16.exit
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %cmd, align 8, !dbg !936
  br label %sw.epilog, !dbg !937

sw.bb3:                                           ; preds = %get_unaligned_be16.exit
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %cmd, align 8, !dbg !938
  br label %sw.epilog, !dbg !939

sw.bb4:                                           ; preds = %get_unaligned_be16.exit
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %cmd, align 8, !dbg !940
  br label %sw.epilog, !dbg !941

sw.default:                                       ; preds = %get_unaligned_be16.exit
  %14 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !942
  call void @trace_seq_puts(%struct.trace_seq* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !943
  br label %out, !dbg !944

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %15 = load i8*, i8** %cdb.addr, align 8, !dbg !945
  %arrayidx5 = getelementptr i8, i8* %15, i64 12, !dbg !945
  store i8* %arrayidx5, i8** %p.addr.i22, align 8
  %16 = load i8*, i8** %p.addr.i22, align 8, !dbg !946
  %17 = bitcast i8* %16 to i64*, !dbg !947
  store i64* %17, i64** %p.addr.i.i21, align 8
  %18 = load i64*, i64** %p.addr.i.i21, align 8, !dbg !948
  store i64* %18, i64** %p.addr.i.i.i20, align 8
  %19 = load i64*, i64** %p.addr.i.i.i20, align 8, !dbg !949
  %20 = load i64, i64* %19, align 8, !dbg !949
  %21 = call i1 @llvm.is.constant.i64(i64 %20) #5, !dbg !949
  br i1 %21, label %cond.true.i.i.i27, label %cond.false.i.i.i29, !dbg !949

cond.true.i.i.i27:                                ; preds = %sw.epilog
  %22 = load i64*, i64** %p.addr.i.i.i20, align 8, !dbg !949
  %23 = load i64, i64* %22, align 8, !dbg !949
  %and.i.i.i23 = and i64 %23, 255, !dbg !949
  %shl.i.i.i24 = shl i64 %and.i.i.i23, 56, !dbg !949
  %24 = load i64*, i64** %p.addr.i.i.i20, align 8, !dbg !949
  %25 = load i64, i64* %24, align 8, !dbg !949
  %and1.i.i.i = and i64 %25, 65280, !dbg !949
  %shl2.i.i.i = shl i64 %and1.i.i.i, 40, !dbg !949
  %or.i.i.i25 = or i64 %shl.i.i.i24, %shl2.i.i.i, !dbg !949
  %26 = load i64*, i64** %p.addr.i.i.i20, align 8, !dbg !949
  %27 = load i64, i64* %26, align 8, !dbg !949
  %and3.i.i.i = and i64 %27, 16711680, !dbg !949
  %shl4.i.i.i = shl i64 %and3.i.i.i, 24, !dbg !949
  %or5.i.i.i = or i64 %or.i.i.i25, %shl4.i.i.i, !dbg !949
  %28 = load i64*, i64** %p.addr.i.i.i20, align 8, !dbg !949
  %29 = load i64, i64* %28, align 8, !dbg !949
  %and6.i.i.i = and i64 %29, 4278190080, !dbg !949
  %shl7.i.i.i = shl i64 %and6.i.i.i, 8, !dbg !949
  %or8.i.i.i = or i64 %or5.i.i.i, %shl7.i.i.i, !dbg !949
  %30 = load i64*, i64** %p.addr.i.i.i20, align 8, !dbg !949
  %31 = load i64, i64* %30, align 8, !dbg !949
  %and9.i.i.i = and i64 %31, 1095216660480, !dbg !949
  %shr.i.i.i26 = lshr i64 %and9.i.i.i, 8, !dbg !949
  %or10.i.i.i = or i64 %or8.i.i.i, %shr.i.i.i26, !dbg !949
  %32 = load i64*, i64** %p.addr.i.i.i20, align 8, !dbg !949
  %33 = load i64, i64* %32, align 8, !dbg !949
  %and11.i.i.i = and i64 %33, 280375465082880, !dbg !949
  %shr12.i.i.i = lshr i64 %and11.i.i.i, 24, !dbg !949
  %or13.i.i.i = or i64 %or10.i.i.i, %shr12.i.i.i, !dbg !949
  %34 = load i64*, i64** %p.addr.i.i.i20, align 8, !dbg !949
  %35 = load i64, i64* %34, align 8, !dbg !949
  %and14.i.i.i = and i64 %35, 71776119061217280, !dbg !949
  %shr15.i.i.i = lshr i64 %and14.i.i.i, 40, !dbg !949
  %or16.i.i.i = or i64 %or13.i.i.i, %shr15.i.i.i, !dbg !949
  %36 = load i64*, i64** %p.addr.i.i.i20, align 8, !dbg !949
  %37 = load i64, i64* %36, align 8, !dbg !949
  %and17.i.i.i = and i64 %37, -72057594037927936, !dbg !949
  %shr18.i.i.i = lshr i64 %and17.i.i.i, 56, !dbg !949
  %or19.i.i.i = or i64 %or16.i.i.i, %shr18.i.i.i, !dbg !949
  br label %get_unaligned_be64.exit, !dbg !949

cond.false.i.i.i29:                               ; preds = %sw.epilog
  %38 = load i64*, i64** %p.addr.i.i.i20, align 8, !dbg !949
  %39 = load i64, i64* %38, align 8, !dbg !949
  %call.i.i.i28 = call i64 @__fswab64(i64 %39) #6, !dbg !949
  br label %get_unaligned_be64.exit, !dbg !949

get_unaligned_be64.exit:                          ; preds = %cond.true.i.i.i27, %cond.false.i.i.i29
  %cond.i.i.i30 = phi i64 [ %or19.i.i.i, %cond.true.i.i.i27 ], [ %call.i.i.i28, %cond.false.i.i.i29 ], !dbg !949
  store i64 %cond.i.i.i30, i64* %lba, align 8, !dbg !950
  %40 = load i8*, i8** %cdb.addr, align 8, !dbg !951
  %arrayidx7 = getelementptr i8, i8* %40, i64 20, !dbg !951
  store i8* %arrayidx7, i8** %p.addr.i33, align 8
  %41 = load i8*, i8** %p.addr.i33, align 8, !dbg !952
  %42 = bitcast i8* %41 to i32*, !dbg !953
  store i32* %42, i32** %p.addr.i.i32, align 8
  %43 = load i32*, i32** %p.addr.i.i32, align 8, !dbg !954
  store i32* %43, i32** %p.addr.i.i.i31, align 8
  %44 = load i32*, i32** %p.addr.i.i.i31, align 8, !dbg !955
  %45 = load i32, i32* %44, align 4, !dbg !955
  %46 = call i1 @llvm.is.constant.i32(i32 %45) #5, !dbg !955
  br i1 %46, label %cond.true.i.i.i41, label %cond.false.i.i.i43, !dbg !955

cond.true.i.i.i41:                                ; preds = %get_unaligned_be64.exit
  %47 = load i32*, i32** %p.addr.i.i.i31, align 8, !dbg !955
  %48 = load i32, i32* %47, align 4, !dbg !955
  %and.i.i.i34 = and i32 %48, 255, !dbg !955
  %shl.i.i.i35 = shl i32 %and.i.i.i34, 24, !dbg !955
  %49 = load i32*, i32** %p.addr.i.i.i31, align 8, !dbg !955
  %50 = load i32, i32* %49, align 4, !dbg !955
  %and1.i.i.i36 = and i32 %50, 65280, !dbg !955
  %shl2.i.i.i37 = shl i32 %and1.i.i.i36, 8, !dbg !955
  %or.i.i.i38 = or i32 %shl.i.i.i35, %shl2.i.i.i37, !dbg !955
  %51 = load i32*, i32** %p.addr.i.i.i31, align 8, !dbg !955
  %52 = load i32, i32* %51, align 4, !dbg !955
  %and3.i.i.i39 = and i32 %52, 16711680, !dbg !955
  %shr.i.i.i40 = lshr i32 %and3.i.i.i39, 8, !dbg !955
  %or4.i.i.i = or i32 %or.i.i.i38, %shr.i.i.i40, !dbg !955
  %53 = load i32*, i32** %p.addr.i.i.i31, align 8, !dbg !955
  %54 = load i32, i32* %53, align 4, !dbg !955
  %and5.i.i.i = and i32 %54, -16777216, !dbg !955
  %shr6.i.i.i = lshr i32 %and5.i.i.i, 24, !dbg !955
  %or7.i.i.i = or i32 %or4.i.i.i, %shr6.i.i.i, !dbg !955
  br label %get_unaligned_be32.exit, !dbg !955

cond.false.i.i.i43:                               ; preds = %get_unaligned_be64.exit
  %55 = load i32*, i32** %p.addr.i.i.i31, align 8, !dbg !955
  %56 = load i32, i32* %55, align 4, !dbg !955
  %call.i.i.i42 = call i32 @__fswab32(i32 %56) #6, !dbg !955
  br label %get_unaligned_be32.exit, !dbg !955

get_unaligned_be32.exit:                          ; preds = %cond.true.i.i.i41, %cond.false.i.i.i43
  %cond.i.i.i44 = phi i32 [ %or7.i.i.i, %cond.true.i.i.i41 ], [ %call.i.i.i42, %cond.false.i.i.i43 ], !dbg !955
  store i32 %cond.i.i.i44, i32* %ei_lbrt, align 4, !dbg !956
  %57 = load i8*, i8** %cdb.addr, align 8, !dbg !957
  %arrayidx9 = getelementptr i8, i8* %57, i64 28, !dbg !957
  store i8* %arrayidx9, i8** %p.addr.i47, align 8
  %58 = load i8*, i8** %p.addr.i47, align 8, !dbg !958
  %59 = bitcast i8* %58 to i32*, !dbg !959
  store i32* %59, i32** %p.addr.i.i46, align 8
  %60 = load i32*, i32** %p.addr.i.i46, align 8, !dbg !960
  store i32* %60, i32** %p.addr.i.i.i45, align 8
  %61 = load i32*, i32** %p.addr.i.i.i45, align 8, !dbg !961
  %62 = load i32, i32* %61, align 4, !dbg !961
  %63 = call i1 @llvm.is.constant.i32(i32 %62) #5, !dbg !961
  br i1 %63, label %cond.true.i.i.i59, label %cond.false.i.i.i61, !dbg !961

cond.true.i.i.i59:                                ; preds = %get_unaligned_be32.exit
  %64 = load i32*, i32** %p.addr.i.i.i45, align 8, !dbg !961
  %65 = load i32, i32* %64, align 4, !dbg !961
  %and.i.i.i48 = and i32 %65, 255, !dbg !961
  %shl.i.i.i49 = shl i32 %and.i.i.i48, 24, !dbg !961
  %66 = load i32*, i32** %p.addr.i.i.i45, align 8, !dbg !961
  %67 = load i32, i32* %66, align 4, !dbg !961
  %and1.i.i.i50 = and i32 %67, 65280, !dbg !961
  %shl2.i.i.i51 = shl i32 %and1.i.i.i50, 8, !dbg !961
  %or.i.i.i52 = or i32 %shl.i.i.i49, %shl2.i.i.i51, !dbg !961
  %68 = load i32*, i32** %p.addr.i.i.i45, align 8, !dbg !961
  %69 = load i32, i32* %68, align 4, !dbg !961
  %and3.i.i.i53 = and i32 %69, 16711680, !dbg !961
  %shr.i.i.i54 = lshr i32 %and3.i.i.i53, 8, !dbg !961
  %or4.i.i.i55 = or i32 %or.i.i.i52, %shr.i.i.i54, !dbg !961
  %70 = load i32*, i32** %p.addr.i.i.i45, align 8, !dbg !961
  %71 = load i32, i32* %70, align 4, !dbg !961
  %and5.i.i.i56 = and i32 %71, -16777216, !dbg !961
  %shr6.i.i.i57 = lshr i32 %and5.i.i.i56, 24, !dbg !961
  %or7.i.i.i58 = or i32 %or4.i.i.i55, %shr6.i.i.i57, !dbg !961
  br label %get_unaligned_be32.exit63, !dbg !961

cond.false.i.i.i61:                               ; preds = %get_unaligned_be32.exit
  %72 = load i32*, i32** %p.addr.i.i.i45, align 8, !dbg !961
  %73 = load i32, i32* %72, align 4, !dbg !961
  %call.i.i.i60 = call i32 @__fswab32(i32 %73) #6, !dbg !961
  br label %get_unaligned_be32.exit63, !dbg !961

get_unaligned_be32.exit63:                        ; preds = %cond.true.i.i.i59, %cond.false.i.i.i61
  %cond.i.i.i62 = phi i32 [ %or7.i.i.i58, %cond.true.i.i.i59 ], [ %call.i.i.i60, %cond.false.i.i.i61 ], !dbg !961
  store i32 %cond.i.i.i62, i32* %txlen, align 4, !dbg !962
  %74 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !963
  %75 = load i8*, i8** %cmd, align 8, !dbg !964
  %76 = load i64, i64* %lba, align 8, !dbg !965
  %77 = load i32, i32* %txlen, align 4, !dbg !966
  %78 = load i8*, i8** %cdb.addr, align 8, !dbg !967
  %arrayidx11 = getelementptr i8, i8* %78, i64 10, !dbg !967
  %79 = load i8, i8* %arrayidx11, align 1, !dbg !967
  %conv12 = zext i8 %79 to i32, !dbg !967
  %shr = ashr i32 %conv12, 5, !dbg !968
  %80 = load i32, i32* %ei_lbrt, align 4, !dbg !969
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i8* %75, i64 %76, i32 %77, i32 %shr, i32 %80) #4, !dbg !970
  %81 = load i8*, i8** %cdb.addr, align 8, !dbg !971
  %arrayidx13 = getelementptr i8, i8* %81, i64 8, !dbg !971
  store i8* %arrayidx13, i8** %p.addr.i66, align 8
  %82 = load i8*, i8** %p.addr.i66, align 8, !dbg !972
  %83 = bitcast i8* %82 to i16*, !dbg !973
  store i16* %83, i16** %p.addr.i.i65, align 8
  %84 = load i16*, i16** %p.addr.i.i65, align 8, !dbg !974
  store i16* %84, i16** %p.addr.i.i.i64, align 8
  %85 = load i16*, i16** %p.addr.i.i.i64, align 8, !dbg !975
  %86 = load i16, i16* %85, align 2, !dbg !975
  %87 = call i1 @llvm.is.constant.i16(i16 %86) #5, !dbg !975
  br i1 %87, label %cond.true.i.i.i76, label %cond.false.i.i.i79, !dbg !975

cond.true.i.i.i76:                                ; preds = %get_unaligned_be32.exit63
  %88 = load i16*, i16** %p.addr.i.i.i64, align 8, !dbg !975
  %89 = load i16, i16* %88, align 2, !dbg !975
  %conv.i.i.i67 = zext i16 %89 to i32, !dbg !975
  %and.i.i.i68 = and i32 %conv.i.i.i67, 255, !dbg !975
  %shl.i.i.i69 = shl i32 %and.i.i.i68, 8, !dbg !975
  %90 = load i16*, i16** %p.addr.i.i.i64, align 8, !dbg !975
  %91 = load i16, i16* %90, align 2, !dbg !975
  %conv1.i.i.i70 = zext i16 %91 to i32, !dbg !975
  %and2.i.i.i71 = and i32 %conv1.i.i.i70, 65280, !dbg !975
  %shr.i.i.i72 = ashr i32 %and2.i.i.i71, 8, !dbg !975
  %or.i.i.i73 = or i32 %shl.i.i.i69, %shr.i.i.i72, !dbg !975
  %conv3.i.i.i74 = trunc i32 %or.i.i.i73 to i16, !dbg !975
  %conv4.i.i.i75 = zext i16 %conv3.i.i.i74 to i32, !dbg !975
  br label %get_unaligned_be16.exit82, !dbg !975

cond.false.i.i.i79:                               ; preds = %get_unaligned_be32.exit63
  %92 = load i16*, i16** %p.addr.i.i.i64, align 8, !dbg !975
  %93 = load i16, i16* %92, align 2, !dbg !975
  %call.i.i.i77 = call zeroext i16 @__fswab16(i16 zeroext %93) #6, !dbg !975
  %conv5.i.i.i78 = zext i16 %call.i.i.i77 to i32, !dbg !975
  br label %get_unaligned_be16.exit82, !dbg !975

get_unaligned_be16.exit82:                        ; preds = %cond.true.i.i.i76, %cond.false.i.i.i79
  %cond.i.i.i80 = phi i32 [ %conv4.i.i.i75, %cond.true.i.i.i76 ], [ %conv5.i.i.i78, %cond.false.i.i.i79 ], !dbg !975
  %conv6.i.i.i81 = trunc i32 %cond.i.i.i80 to i16, !dbg !975
  %conv15 = zext i16 %conv6.i.i.i81 to i32, !dbg !971
  %cmp = icmp eq i32 %conv15, 13, !dbg !976
  br i1 %cmp, label %if.then, label %if.end, !dbg !977

if.then:                                          ; preds = %get_unaligned_be16.exit82
  %94 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !978
  %95 = load i8*, i8** %cdb.addr, align 8, !dbg !979
  %arrayidx17 = getelementptr i8, i8* %95, i64 10, !dbg !979
  %96 = load i8, i8* %arrayidx17, align 1, !dbg !979
  %conv18 = zext i8 %96 to i32, !dbg !979
  %shr19 = ashr i32 %conv18, 3, !dbg !980
  %and = and i32 %shr19, 1, !dbg !981
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %and) #4, !dbg !982
  br label %if.end, !dbg !982

if.end:                                           ; preds = %if.then, %get_unaligned_be16.exit82
  br label %out, !dbg !983

out:                                              ; preds = %if.end, %sw.default
  call void @llvm.dbg.label(metadata !984), !dbg !985
  %97 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !986
  call void @trace_seq_putc(%struct.trace_seq* %97, i8 zeroext 0) #4, !dbg !987
  %98 = load i8*, i8** %ret, align 8, !dbg !988
  ret i8* %98, !dbg !989
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }
attributes #3 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { nounwind }
attributes #6 = { noredzone nounwind readnone }
attributes #7 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/scsi/scsi_trace.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !10, !7, !11, !15, !13, !16, !20, !18, !19}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !6, line: 32, baseType: !7)
!6 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !6, line: 30, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !8, line: 24, baseType: !14)
!14 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !6, line: 34, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !8, line: 31, baseType: !19)
!19 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!21 = !{i32 7, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"Code Model", i32 2}
!25 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!26 = distinct !DISubprogram(name: "scsi_trace_parse_cdb", scope: !1, file: !1, line: 354, type: !27, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !32, !61, !60}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !34, line: 14, size: 33088, elements: !35)
!34 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/lizy2001/genbc/linux")
!35 = !{!36, !41, !59}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !33, file: !34, line: 15, baseType: !37, size: 32768)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32768, elements: !39)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!40}
!40 = !DISubrange(count: 4096)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !33, file: !34, line: 16, baseType: !42, size: 256, offset: 32768)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !43, line: 19, size: 256, elements: !44)
!43 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !47, !54, !55}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !42, file: !43, line: 20, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !42, file: !43, line: 21, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 55, baseType: !50)
!49 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !51, line: 72, baseType: !52)
!51 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !51, line: 16, baseType: !53)
!53 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !42, file: !43, line: 22, baseType: !48, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !42, file: !43, line: 23, baseType: !56, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !49, line: 46, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !51, line: 88, baseType: !58)
!58 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !33, file: !34, line: 17, baseType: !60, size: 32, offset: 33024)
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!62 = !DILocalVariable(name: "p", arg: 1, scope: !26, file: !1, line: 354, type: !32)
!63 = !DILocation(line: 354, column: 40, scope: !26)
!64 = !DILocalVariable(name: "cdb", arg: 2, scope: !26, file: !1, line: 354, type: !61)
!65 = !DILocation(line: 354, column: 58, scope: !26)
!66 = !DILocalVariable(name: "len", arg: 3, scope: !26, file: !1, line: 354, type: !60)
!67 = !DILocation(line: 354, column: 67, scope: !26)
!68 = !DILocation(line: 356, column: 10, scope: !26)
!69 = !DILocation(line: 356, column: 2, scope: !26)
!70 = !DILocation(line: 359, column: 25, scope: !71)
!71 = distinct !DILexicalBlock(scope: !26, file: !1, line: 356, column: 18)
!72 = !DILocation(line: 359, column: 28, scope: !71)
!73 = !DILocation(line: 359, column: 33, scope: !71)
!74 = !DILocation(line: 359, column: 10, scope: !71)
!75 = !DILocation(line: 359, column: 3, scope: !71)
!76 = !DILocation(line: 364, column: 26, scope: !71)
!77 = !DILocation(line: 364, column: 29, scope: !71)
!78 = !DILocation(line: 364, column: 34, scope: !71)
!79 = !DILocation(line: 364, column: 10, scope: !71)
!80 = !DILocation(line: 364, column: 3, scope: !71)
!81 = !DILocation(line: 368, column: 26, scope: !71)
!82 = !DILocation(line: 368, column: 29, scope: !71)
!83 = !DILocation(line: 368, column: 34, scope: !71)
!84 = !DILocation(line: 368, column: 10, scope: !71)
!85 = !DILocation(line: 368, column: 3, scope: !71)
!86 = !DILocation(line: 373, column: 26, scope: !71)
!87 = !DILocation(line: 373, column: 29, scope: !71)
!88 = !DILocation(line: 373, column: 34, scope: !71)
!89 = !DILocation(line: 373, column: 10, scope: !71)
!90 = !DILocation(line: 373, column: 3, scope: !71)
!91 = !DILocation(line: 375, column: 27, scope: !71)
!92 = !DILocation(line: 375, column: 30, scope: !71)
!93 = !DILocation(line: 375, column: 35, scope: !71)
!94 = !DILocation(line: 375, column: 10, scope: !71)
!95 = !DILocation(line: 375, column: 3, scope: !71)
!96 = !DILocation(line: 377, column: 39, scope: !71)
!97 = !DILocation(line: 377, column: 42, scope: !71)
!98 = !DILocation(line: 377, column: 47, scope: !71)
!99 = !DILocation(line: 377, column: 10, scope: !71)
!100 = !DILocation(line: 377, column: 3, scope: !71)
!101 = !DILocation(line: 379, column: 28, scope: !71)
!102 = !DILocation(line: 379, column: 31, scope: !71)
!103 = !DILocation(line: 379, column: 36, scope: !71)
!104 = !DILocation(line: 379, column: 10, scope: !71)
!105 = !DILocation(line: 379, column: 3, scope: !71)
!106 = !DILocation(line: 381, column: 36, scope: !71)
!107 = !DILocation(line: 381, column: 39, scope: !71)
!108 = !DILocation(line: 381, column: 44, scope: !71)
!109 = !DILocation(line: 381, column: 10, scope: !71)
!110 = !DILocation(line: 381, column: 3, scope: !71)
!111 = !DILocation(line: 383, column: 37, scope: !71)
!112 = !DILocation(line: 383, column: 40, scope: !71)
!113 = !DILocation(line: 383, column: 45, scope: !71)
!114 = !DILocation(line: 383, column: 10, scope: !71)
!115 = !DILocation(line: 383, column: 3, scope: !71)
!116 = !DILocation(line: 385, column: 28, scope: !71)
!117 = !DILocation(line: 385, column: 31, scope: !71)
!118 = !DILocation(line: 385, column: 36, scope: !71)
!119 = !DILocation(line: 385, column: 10, scope: !71)
!120 = !DILocation(line: 385, column: 3, scope: !71)
!121 = !DILocation(line: 387, column: 29, scope: !71)
!122 = !DILocation(line: 387, column: 32, scope: !71)
!123 = !DILocation(line: 387, column: 37, scope: !71)
!124 = !DILocation(line: 387, column: 10, scope: !71)
!125 = !DILocation(line: 387, column: 3, scope: !71)
!126 = !DILocation(line: 389, column: 26, scope: !71)
!127 = !DILocation(line: 389, column: 29, scope: !71)
!128 = !DILocation(line: 389, column: 34, scope: !71)
!129 = !DILocation(line: 389, column: 10, scope: !71)
!130 = !DILocation(line: 389, column: 3, scope: !71)
!131 = !DILocation(line: 391, column: 1, scope: !26)
!132 = distinct !DISubprogram(name: "scsi_trace_rw6", scope: !1, file: !1, line: 18, type: !27, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!133 = !DILocalVariable(name: "p", arg: 1, scope: !132, file: !1, line: 18, type: !32)
!134 = !DILocation(line: 18, column: 34, scope: !132)
!135 = !DILocalVariable(name: "cdb", arg: 2, scope: !132, file: !1, line: 18, type: !61)
!136 = !DILocation(line: 18, column: 52, scope: !132)
!137 = !DILocalVariable(name: "len", arg: 3, scope: !132, file: !1, line: 18, type: !60)
!138 = !DILocation(line: 18, column: 61, scope: !132)
!139 = !DILocalVariable(name: "ret", scope: !132, file: !1, line: 20, type: !29)
!140 = !DILocation(line: 20, column: 14, scope: !132)
!141 = !DILocation(line: 20, column: 41, scope: !132)
!142 = !DILocation(line: 20, column: 20, scope: !132)
!143 = !DILocalVariable(name: "lba", scope: !132, file: !1, line: 21, type: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !145, line: 21, baseType: !7)
!145 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!146 = !DILocation(line: 21, column: 6, scope: !132)
!147 = !DILocalVariable(name: "txlen", scope: !132, file: !1, line: 21, type: !144)
!148 = !DILocation(line: 21, column: 11, scope: !132)
!149 = !DILocation(line: 23, column: 28, scope: !132)
!150 = !DILocation(line: 23, column: 8, scope: !132)
!151 = !DILocation(line: 23, column: 36, scope: !132)
!152 = !DILocation(line: 23, column: 6, scope: !132)
!153 = !DILocation(line: 28, column: 10, scope: !132)
!154 = !DILocation(line: 28, column: 19, scope: !132)
!155 = !DILocation(line: 28, column: 8, scope: !132)
!156 = !DILocation(line: 30, column: 19, scope: !132)
!157 = !DILocation(line: 30, column: 41, scope: !132)
!158 = !DILocation(line: 30, column: 46, scope: !132)
!159 = !DILocation(line: 30, column: 2, scope: !132)
!160 = !DILocation(line: 31, column: 17, scope: !132)
!161 = !DILocation(line: 31, column: 2, scope: !132)
!162 = !DILocation(line: 33, column: 9, scope: !132)
!163 = !DILocation(line: 33, column: 2, scope: !132)
!164 = distinct !DISubprogram(name: "scsi_trace_rw10", scope: !1, file: !1, line: 37, type: !27, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!165 = !DILocalVariable(name: "p", arg: 1, scope: !166, file: !167, line: 171, type: !170)
!166 = distinct !DISubprogram(name: "__swab16p", scope: !167, file: !167, line: 171, type: !168, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!167 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!168 = !DISubroutineType(types: !169)
!169 = !{!13, !170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!172 = !DILocation(line: 171, column: 53, scope: !166, inlinedAt: !173)
!173 = distinct !DILocation(line: 90, column: 9, scope: !174, inlinedAt: !180)
!174 = distinct !DISubprogram(name: "__be16_to_cpup", scope: !175, file: !175, line: 88, type: !176, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!175 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!176 = !DISubroutineType(types: !177)
!177 = !{!13, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!180 = distinct !DILocation(line: 25, column: 9, scope: !181, inlinedAt: !188)
!181 = distinct !DISubprogram(name: "get_unaligned_be16", scope: !182, file: !182, line: 23, type: !183, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!182 = !DIFile(filename: "./include/linux/unaligned/access_ok.h", directory: "/home/lizy2001/genbc/linux")
!183 = !DISubroutineType(types: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !145, line: 19, baseType: !13)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!188 = distinct !DILocation(line: 43, column: 10, scope: !164)
!189 = !DILocalVariable(name: "p", arg: 1, scope: !174, file: !175, line: 88, type: !178)
!190 = !DILocation(line: 88, column: 59, scope: !174, inlinedAt: !180)
!191 = !DILocalVariable(name: "p", arg: 1, scope: !181, file: !182, line: 23, type: !186)
!192 = !DILocation(line: 23, column: 59, scope: !181, inlinedAt: !188)
!193 = !DILocalVariable(name: "p", arg: 1, scope: !194, file: !167, line: 184, type: !197)
!194 = distinct !DISubprogram(name: "__swab32p", scope: !167, file: !167, line: 184, type: !195, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!195 = !DISubroutineType(types: !196)
!196 = !{!7, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!199 = !DILocation(line: 184, column: 53, scope: !194, inlinedAt: !200)
!200 = distinct !DILocation(line: 82, column: 9, scope: !201, inlinedAt: !206)
!201 = distinct !DISubprogram(name: "__be32_to_cpup", scope: !175, file: !175, line: 80, type: !202, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!202 = !DISubroutineType(types: !203)
!203 = !{!7, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!206 = distinct !DILocation(line: 30, column: 9, scope: !207, inlinedAt: !210)
!207 = distinct !DISubprogram(name: "get_unaligned_be32", scope: !182, file: !182, line: 28, type: !208, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!208 = !DISubroutineType(types: !209)
!209 = !{!144, !186}
!210 = distinct !DILocation(line: 42, column: 8, scope: !164)
!211 = !DILocalVariable(name: "p", arg: 1, scope: !201, file: !175, line: 80, type: !204)
!212 = !DILocation(line: 80, column: 59, scope: !201, inlinedAt: !206)
!213 = !DILocalVariable(name: "p", arg: 1, scope: !207, file: !182, line: 28, type: !186)
!214 = !DILocation(line: 28, column: 59, scope: !207, inlinedAt: !210)
!215 = !DILocalVariable(name: "p", arg: 1, scope: !164, file: !1, line: 37, type: !32)
!216 = !DILocation(line: 37, column: 35, scope: !164)
!217 = !DILocalVariable(name: "cdb", arg: 2, scope: !164, file: !1, line: 37, type: !61)
!218 = !DILocation(line: 37, column: 53, scope: !164)
!219 = !DILocalVariable(name: "len", arg: 3, scope: !164, file: !1, line: 37, type: !60)
!220 = !DILocation(line: 37, column: 62, scope: !164)
!221 = !DILocalVariable(name: "ret", scope: !164, file: !1, line: 39, type: !29)
!222 = !DILocation(line: 39, column: 14, scope: !164)
!223 = !DILocation(line: 39, column: 41, scope: !164)
!224 = !DILocation(line: 39, column: 20, scope: !164)
!225 = !DILocalVariable(name: "lba", scope: !164, file: !1, line: 40, type: !144)
!226 = !DILocation(line: 40, column: 6, scope: !164)
!227 = !DILocalVariable(name: "txlen", scope: !164, file: !1, line: 40, type: !144)
!228 = !DILocation(line: 40, column: 11, scope: !164)
!229 = !DILocation(line: 42, column: 28, scope: !164)
!230 = !DILocation(line: 30, column: 32, scope: !207, inlinedAt: !210)
!231 = !DILocation(line: 30, column: 22, scope: !207, inlinedAt: !210)
!232 = !DILocation(line: 82, column: 28, scope: !201, inlinedAt: !206)
!233 = !DILocation(line: 189, column: 9, scope: !194, inlinedAt: !200)
!234 = !DILocation(line: 42, column: 6, scope: !164)
!235 = !DILocation(line: 43, column: 30, scope: !164)
!236 = !DILocation(line: 25, column: 32, scope: !181, inlinedAt: !188)
!237 = !DILocation(line: 25, column: 22, scope: !181, inlinedAt: !188)
!238 = !DILocation(line: 90, column: 28, scope: !174, inlinedAt: !180)
!239 = !DILocation(line: 176, column: 9, scope: !166, inlinedAt: !173)
!240 = !DILocation(line: 43, column: 10, scope: !164)
!241 = !DILocation(line: 43, column: 8, scope: !164)
!242 = !DILocation(line: 45, column: 19, scope: !164)
!243 = !DILocation(line: 45, column: 52, scope: !164)
!244 = !DILocation(line: 45, column: 57, scope: !164)
!245 = !DILocation(line: 46, column: 5, scope: !164)
!246 = !DILocation(line: 46, column: 12, scope: !164)
!247 = !DILocation(line: 45, column: 2, scope: !164)
!248 = !DILocation(line: 48, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !164, file: !1, line: 48, column: 6)
!250 = !DILocation(line: 48, column: 13, scope: !249)
!251 = !DILocation(line: 48, column: 6, scope: !164)
!252 = !DILocation(line: 49, column: 20, scope: !249)
!253 = !DILocation(line: 49, column: 36, scope: !249)
!254 = !DILocation(line: 49, column: 43, scope: !249)
!255 = !DILocation(line: 49, column: 48, scope: !249)
!256 = !DILocation(line: 49, column: 3, scope: !249)
!257 = !DILocation(line: 51, column: 17, scope: !164)
!258 = !DILocation(line: 51, column: 2, scope: !164)
!259 = !DILocation(line: 53, column: 9, scope: !164)
!260 = !DILocation(line: 53, column: 2, scope: !164)
!261 = distinct !DISubprogram(name: "scsi_trace_rw12", scope: !1, file: !1, line: 57, type: !27, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!262 = !DILocation(line: 184, column: 53, scope: !194, inlinedAt: !263)
!263 = distinct !DILocation(line: 82, column: 9, scope: !201, inlinedAt: !264)
!264 = distinct !DILocation(line: 30, column: 9, scope: !207, inlinedAt: !265)
!265 = distinct !DILocation(line: 63, column: 10, scope: !261)
!266 = !DILocation(line: 80, column: 59, scope: !201, inlinedAt: !264)
!267 = !DILocation(line: 28, column: 59, scope: !207, inlinedAt: !265)
!268 = !DILocation(line: 184, column: 53, scope: !194, inlinedAt: !269)
!269 = distinct !DILocation(line: 82, column: 9, scope: !201, inlinedAt: !270)
!270 = distinct !DILocation(line: 30, column: 9, scope: !207, inlinedAt: !271)
!271 = distinct !DILocation(line: 62, column: 8, scope: !261)
!272 = !DILocation(line: 80, column: 59, scope: !201, inlinedAt: !270)
!273 = !DILocation(line: 28, column: 59, scope: !207, inlinedAt: !271)
!274 = !DILocalVariable(name: "p", arg: 1, scope: !261, file: !1, line: 57, type: !32)
!275 = !DILocation(line: 57, column: 35, scope: !261)
!276 = !DILocalVariable(name: "cdb", arg: 2, scope: !261, file: !1, line: 57, type: !61)
!277 = !DILocation(line: 57, column: 53, scope: !261)
!278 = !DILocalVariable(name: "len", arg: 3, scope: !261, file: !1, line: 57, type: !60)
!279 = !DILocation(line: 57, column: 62, scope: !261)
!280 = !DILocalVariable(name: "ret", scope: !261, file: !1, line: 59, type: !29)
!281 = !DILocation(line: 59, column: 14, scope: !261)
!282 = !DILocation(line: 59, column: 41, scope: !261)
!283 = !DILocation(line: 59, column: 20, scope: !261)
!284 = !DILocalVariable(name: "lba", scope: !261, file: !1, line: 60, type: !144)
!285 = !DILocation(line: 60, column: 6, scope: !261)
!286 = !DILocalVariable(name: "txlen", scope: !261, file: !1, line: 60, type: !144)
!287 = !DILocation(line: 60, column: 11, scope: !261)
!288 = !DILocation(line: 62, column: 28, scope: !261)
!289 = !DILocation(line: 30, column: 32, scope: !207, inlinedAt: !271)
!290 = !DILocation(line: 30, column: 22, scope: !207, inlinedAt: !271)
!291 = !DILocation(line: 82, column: 28, scope: !201, inlinedAt: !270)
!292 = !DILocation(line: 189, column: 9, scope: !194, inlinedAt: !269)
!293 = !DILocation(line: 62, column: 6, scope: !261)
!294 = !DILocation(line: 63, column: 30, scope: !261)
!295 = !DILocation(line: 30, column: 32, scope: !207, inlinedAt: !265)
!296 = !DILocation(line: 30, column: 22, scope: !207, inlinedAt: !265)
!297 = !DILocation(line: 82, column: 28, scope: !201, inlinedAt: !264)
!298 = !DILocation(line: 189, column: 9, scope: !194, inlinedAt: !263)
!299 = !DILocation(line: 63, column: 8, scope: !261)
!300 = !DILocation(line: 65, column: 19, scope: !261)
!301 = !DILocation(line: 65, column: 52, scope: !261)
!302 = !DILocation(line: 65, column: 57, scope: !261)
!303 = !DILocation(line: 66, column: 5, scope: !261)
!304 = !DILocation(line: 66, column: 12, scope: !261)
!305 = !DILocation(line: 65, column: 2, scope: !261)
!306 = !DILocation(line: 67, column: 17, scope: !261)
!307 = !DILocation(line: 67, column: 2, scope: !261)
!308 = !DILocation(line: 69, column: 9, scope: !261)
!309 = !DILocation(line: 69, column: 2, scope: !261)
!310 = distinct !DISubprogram(name: "scsi_trace_rw16", scope: !1, file: !1, line: 73, type: !27, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!311 = !DILocation(line: 184, column: 53, scope: !194, inlinedAt: !312)
!312 = distinct !DILocation(line: 82, column: 9, scope: !201, inlinedAt: !313)
!313 = distinct !DILocation(line: 30, column: 9, scope: !207, inlinedAt: !314)
!314 = distinct !DILocation(line: 80, column: 10, scope: !310)
!315 = !DILocation(line: 80, column: 59, scope: !201, inlinedAt: !313)
!316 = !DILocation(line: 28, column: 59, scope: !207, inlinedAt: !314)
!317 = !DILocalVariable(name: "p", arg: 1, scope: !318, file: !167, line: 197, type: !321)
!318 = distinct !DISubprogram(name: "__swab64p", scope: !167, file: !167, line: 197, type: !319, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!319 = !DISubroutineType(types: !320)
!320 = !{!18, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!323 = !DILocation(line: 197, column: 53, scope: !318, inlinedAt: !324)
!324 = distinct !DILocation(line: 74, column: 9, scope: !325, inlinedAt: !330)
!325 = distinct !DISubprogram(name: "__be64_to_cpup", scope: !175, file: !175, line: 72, type: !326, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!326 = !DISubroutineType(types: !327)
!327 = !{!18, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!330 = distinct !DILocation(line: 35, column: 9, scope: !331, inlinedAt: !335)
!331 = distinct !DISubprogram(name: "get_unaligned_be64", scope: !182, file: !182, line: 33, type: !332, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !186}
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !145, line: 23, baseType: !18)
!335 = distinct !DILocation(line: 79, column: 8, scope: !310)
!336 = !DILocalVariable(name: "p", arg: 1, scope: !325, file: !175, line: 72, type: !328)
!337 = !DILocation(line: 72, column: 59, scope: !325, inlinedAt: !330)
!338 = !DILocalVariable(name: "p", arg: 1, scope: !331, file: !182, line: 33, type: !186)
!339 = !DILocation(line: 33, column: 59, scope: !331, inlinedAt: !335)
!340 = !DILocalVariable(name: "p", arg: 1, scope: !310, file: !1, line: 73, type: !32)
!341 = !DILocation(line: 73, column: 35, scope: !310)
!342 = !DILocalVariable(name: "cdb", arg: 2, scope: !310, file: !1, line: 73, type: !61)
!343 = !DILocation(line: 73, column: 53, scope: !310)
!344 = !DILocalVariable(name: "len", arg: 3, scope: !310, file: !1, line: 73, type: !60)
!345 = !DILocation(line: 73, column: 62, scope: !310)
!346 = !DILocalVariable(name: "ret", scope: !310, file: !1, line: 75, type: !29)
!347 = !DILocation(line: 75, column: 14, scope: !310)
!348 = !DILocation(line: 75, column: 41, scope: !310)
!349 = !DILocation(line: 75, column: 20, scope: !310)
!350 = !DILocalVariable(name: "lba", scope: !310, file: !1, line: 76, type: !334)
!351 = !DILocation(line: 76, column: 6, scope: !310)
!352 = !DILocalVariable(name: "txlen", scope: !310, file: !1, line: 77, type: !144)
!353 = !DILocation(line: 77, column: 6, scope: !310)
!354 = !DILocation(line: 79, column: 28, scope: !310)
!355 = !DILocation(line: 35, column: 32, scope: !331, inlinedAt: !335)
!356 = !DILocation(line: 35, column: 22, scope: !331, inlinedAt: !335)
!357 = !DILocation(line: 74, column: 28, scope: !325, inlinedAt: !330)
!358 = !DILocation(line: 202, column: 9, scope: !318, inlinedAt: !324)
!359 = !DILocation(line: 79, column: 6, scope: !310)
!360 = !DILocation(line: 80, column: 30, scope: !310)
!361 = !DILocation(line: 30, column: 32, scope: !207, inlinedAt: !314)
!362 = !DILocation(line: 30, column: 22, scope: !207, inlinedAt: !314)
!363 = !DILocation(line: 82, column: 28, scope: !201, inlinedAt: !313)
!364 = !DILocation(line: 189, column: 9, scope: !194, inlinedAt: !312)
!365 = !DILocation(line: 80, column: 8, scope: !310)
!366 = !DILocation(line: 82, column: 19, scope: !310)
!367 = !DILocation(line: 82, column: 54, scope: !310)
!368 = !DILocation(line: 82, column: 59, scope: !310)
!369 = !DILocation(line: 83, column: 5, scope: !310)
!370 = !DILocation(line: 83, column: 12, scope: !310)
!371 = !DILocation(line: 82, column: 2, scope: !310)
!372 = !DILocation(line: 85, column: 6, scope: !373)
!373 = distinct !DILexicalBlock(scope: !310, file: !1, line: 85, column: 6)
!374 = !DILocation(line: 85, column: 13, scope: !373)
!375 = !DILocation(line: 85, column: 6, scope: !310)
!376 = !DILocation(line: 86, column: 20, scope: !373)
!377 = !DILocation(line: 86, column: 36, scope: !373)
!378 = !DILocation(line: 86, column: 43, scope: !373)
!379 = !DILocation(line: 86, column: 48, scope: !373)
!380 = !DILocation(line: 86, column: 3, scope: !373)
!381 = !DILocation(line: 88, column: 17, scope: !310)
!382 = !DILocation(line: 88, column: 2, scope: !310)
!383 = !DILocation(line: 90, column: 9, scope: !310)
!384 = !DILocation(line: 90, column: 2, scope: !310)
!385 = distinct !DISubprogram(name: "scsi_trace_unmap", scope: !1, file: !1, line: 135, type: !27, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!386 = !DILocation(line: 171, column: 53, scope: !166, inlinedAt: !387)
!387 = distinct !DILocation(line: 90, column: 9, scope: !174, inlinedAt: !388)
!388 = distinct !DILocation(line: 25, column: 9, scope: !181, inlinedAt: !389)
!389 = distinct !DILocation(line: 138, column: 25, scope: !385)
!390 = !DILocation(line: 88, column: 59, scope: !174, inlinedAt: !388)
!391 = !DILocation(line: 23, column: 59, scope: !181, inlinedAt: !389)
!392 = !DILocalVariable(name: "p", arg: 1, scope: !385, file: !1, line: 135, type: !32)
!393 = !DILocation(line: 135, column: 36, scope: !385)
!394 = !DILocalVariable(name: "cdb", arg: 2, scope: !385, file: !1, line: 135, type: !61)
!395 = !DILocation(line: 135, column: 54, scope: !385)
!396 = !DILocalVariable(name: "len", arg: 3, scope: !385, file: !1, line: 135, type: !60)
!397 = !DILocation(line: 135, column: 63, scope: !385)
!398 = !DILocalVariable(name: "ret", scope: !385, file: !1, line: 137, type: !29)
!399 = !DILocation(line: 137, column: 14, scope: !385)
!400 = !DILocation(line: 137, column: 41, scope: !385)
!401 = !DILocation(line: 137, column: 20, scope: !385)
!402 = !DILocalVariable(name: "regions", scope: !385, file: !1, line: 138, type: !9)
!403 = !DILocation(line: 138, column: 15, scope: !385)
!404 = !DILocation(line: 138, column: 45, scope: !385)
!405 = !DILocation(line: 25, column: 32, scope: !181, inlinedAt: !389)
!406 = !DILocation(line: 25, column: 22, scope: !181, inlinedAt: !389)
!407 = !DILocation(line: 90, column: 28, scope: !174, inlinedAt: !388)
!408 = !DILocation(line: 176, column: 9, scope: !166, inlinedAt: !387)
!409 = !DILocation(line: 138, column: 25, scope: !385)
!410 = !DILocation(line: 140, column: 19, scope: !385)
!411 = !DILocation(line: 140, column: 37, scope: !385)
!412 = !DILocation(line: 140, column: 45, scope: !385)
!413 = !DILocation(line: 140, column: 50, scope: !385)
!414 = !DILocation(line: 140, column: 2, scope: !385)
!415 = !DILocation(line: 141, column: 17, scope: !385)
!416 = !DILocation(line: 141, column: 2, scope: !385)
!417 = !DILocation(line: 143, column: 9, scope: !385)
!418 = !DILocation(line: 143, column: 2, scope: !385)
!419 = distinct !DISubprogram(name: "scsi_trace_service_action_in", scope: !1, file: !1, line: 147, type: !27, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!420 = !DILocation(line: 184, column: 53, scope: !194, inlinedAt: !421)
!421 = distinct !DILocation(line: 82, column: 9, scope: !201, inlinedAt: !422)
!422 = distinct !DILocation(line: 30, column: 9, scope: !207, inlinedAt: !423)
!423 = distinct !DILocation(line: 166, column: 14, scope: !419)
!424 = !DILocation(line: 80, column: 59, scope: !201, inlinedAt: !422)
!425 = !DILocation(line: 28, column: 59, scope: !207, inlinedAt: !423)
!426 = !DILocation(line: 197, column: 53, scope: !318, inlinedAt: !427)
!427 = distinct !DILocation(line: 74, column: 9, scope: !325, inlinedAt: !428)
!428 = distinct !DILocation(line: 35, column: 9, scope: !331, inlinedAt: !429)
!429 = distinct !DILocation(line: 165, column: 8, scope: !419)
!430 = !DILocation(line: 72, column: 59, scope: !325, inlinedAt: !428)
!431 = !DILocation(line: 33, column: 59, scope: !331, inlinedAt: !429)
!432 = !DILocalVariable(name: "p", arg: 1, scope: !419, file: !1, line: 147, type: !32)
!433 = !DILocation(line: 147, column: 48, scope: !419)
!434 = !DILocalVariable(name: "cdb", arg: 2, scope: !419, file: !1, line: 147, type: !61)
!435 = !DILocation(line: 147, column: 66, scope: !419)
!436 = !DILocalVariable(name: "len", arg: 3, scope: !419, file: !1, line: 147, type: !60)
!437 = !DILocation(line: 147, column: 75, scope: !419)
!438 = !DILocalVariable(name: "ret", scope: !419, file: !1, line: 149, type: !29)
!439 = !DILocation(line: 149, column: 14, scope: !419)
!440 = !DILocation(line: 149, column: 41, scope: !419)
!441 = !DILocation(line: 149, column: 20, scope: !419)
!442 = !DILocalVariable(name: "cmd", scope: !419, file: !1, line: 149, type: !29)
!443 = !DILocation(line: 149, column: 46, scope: !419)
!444 = !DILocalVariable(name: "lba", scope: !419, file: !1, line: 150, type: !334)
!445 = !DILocation(line: 150, column: 6, scope: !419)
!446 = !DILocalVariable(name: "alloc_len", scope: !419, file: !1, line: 151, type: !144)
!447 = !DILocation(line: 151, column: 6, scope: !419)
!448 = !DILocation(line: 153, column: 10, scope: !419)
!449 = !DILocation(line: 153, column: 2, scope: !419)
!450 = !DILocation(line: 155, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !419, file: !1, line: 153, column: 33)
!452 = !DILocation(line: 156, column: 3, scope: !451)
!453 = !DILocation(line: 158, column: 7, scope: !451)
!454 = !DILocation(line: 159, column: 3, scope: !451)
!455 = !DILocation(line: 161, column: 18, scope: !451)
!456 = !DILocation(line: 161, column: 3, scope: !451)
!457 = !DILocation(line: 162, column: 3, scope: !451)
!458 = !DILocation(line: 165, column: 28, scope: !419)
!459 = !DILocation(line: 35, column: 32, scope: !331, inlinedAt: !429)
!460 = !DILocation(line: 35, column: 22, scope: !331, inlinedAt: !429)
!461 = !DILocation(line: 74, column: 28, scope: !325, inlinedAt: !428)
!462 = !DILocation(line: 202, column: 9, scope: !318, inlinedAt: !427)
!463 = !DILocation(line: 165, column: 6, scope: !419)
!464 = !DILocation(line: 166, column: 34, scope: !419)
!465 = !DILocation(line: 30, column: 32, scope: !207, inlinedAt: !423)
!466 = !DILocation(line: 30, column: 22, scope: !207, inlinedAt: !423)
!467 = !DILocation(line: 82, column: 28, scope: !201, inlinedAt: !422)
!468 = !DILocation(line: 189, column: 9, scope: !194, inlinedAt: !421)
!469 = !DILocation(line: 166, column: 12, scope: !419)
!470 = !DILocation(line: 168, column: 19, scope: !419)
!471 = !DILocation(line: 168, column: 50, scope: !419)
!472 = !DILocation(line: 168, column: 55, scope: !419)
!473 = !DILocation(line: 168, column: 60, scope: !419)
!474 = !DILocation(line: 168, column: 2, scope: !419)
!475 = !DILabel(scope: !419, name: "out", file: !1, line: 170)
!476 = !DILocation(line: 170, column: 1, scope: !419)
!477 = !DILocation(line: 171, column: 17, scope: !419)
!478 = !DILocation(line: 171, column: 2, scope: !419)
!479 = !DILocation(line: 173, column: 9, scope: !419)
!480 = !DILocation(line: 173, column: 2, scope: !419)
!481 = distinct !DISubprogram(name: "scsi_trace_varlen", scope: !1, file: !1, line: 329, type: !27, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!482 = !DILocation(line: 171, column: 53, scope: !166, inlinedAt: !483)
!483 = distinct !DILocation(line: 90, column: 9, scope: !174, inlinedAt: !484)
!484 = distinct !DILocation(line: 25, column: 9, scope: !181, inlinedAt: !485)
!485 = distinct !DILocation(line: 331, column: 10, scope: !481)
!486 = !DILocation(line: 88, column: 59, scope: !174, inlinedAt: !484)
!487 = !DILocation(line: 23, column: 59, scope: !181, inlinedAt: !485)
!488 = !DILocalVariable(name: "p", arg: 1, scope: !481, file: !1, line: 329, type: !32)
!489 = !DILocation(line: 329, column: 37, scope: !481)
!490 = !DILocalVariable(name: "cdb", arg: 2, scope: !481, file: !1, line: 329, type: !61)
!491 = !DILocation(line: 329, column: 55, scope: !481)
!492 = !DILocalVariable(name: "len", arg: 3, scope: !481, file: !1, line: 329, type: !60)
!493 = !DILocation(line: 329, column: 64, scope: !481)
!494 = !DILocation(line: 331, column: 10, scope: !481)
!495 = !DILocation(line: 25, column: 32, scope: !181, inlinedAt: !485)
!496 = !DILocation(line: 25, column: 22, scope: !181, inlinedAt: !485)
!497 = !DILocation(line: 90, column: 28, scope: !174, inlinedAt: !484)
!498 = !DILocation(line: 176, column: 9, scope: !166, inlinedAt: !483)
!499 = !DILocation(line: 331, column: 2, scope: !481)
!500 = !DILocation(line: 336, column: 26, scope: !501)
!501 = distinct !DILexicalBlock(scope: !481, file: !1, line: 331, column: 33)
!502 = !DILocation(line: 336, column: 29, scope: !501)
!503 = !DILocation(line: 336, column: 34, scope: !501)
!504 = !DILocation(line: 336, column: 10, scope: !501)
!505 = !DILocation(line: 336, column: 3, scope: !501)
!506 = !DILocation(line: 338, column: 26, scope: !501)
!507 = !DILocation(line: 338, column: 29, scope: !501)
!508 = !DILocation(line: 338, column: 34, scope: !501)
!509 = !DILocation(line: 338, column: 10, scope: !501)
!510 = !DILocation(line: 338, column: 3, scope: !501)
!511 = !DILocation(line: 340, column: 1, scope: !481)
!512 = distinct !DISubprogram(name: "scsi_trace_maintenance_in", scope: !1, file: !1, line: 177, type: !27, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!513 = !DILocation(line: 184, column: 53, scope: !194, inlinedAt: !514)
!514 = distinct !DILocation(line: 82, column: 9, scope: !201, inlinedAt: !515)
!515 = distinct !DILocation(line: 30, column: 9, scope: !207, inlinedAt: !516)
!516 = distinct !DILocation(line: 212, column: 14, scope: !512)
!517 = !DILocation(line: 80, column: 59, scope: !201, inlinedAt: !515)
!518 = !DILocation(line: 28, column: 59, scope: !207, inlinedAt: !516)
!519 = !DILocalVariable(name: "p", arg: 1, scope: !512, file: !1, line: 177, type: !32)
!520 = !DILocation(line: 177, column: 45, scope: !512)
!521 = !DILocalVariable(name: "cdb", arg: 2, scope: !512, file: !1, line: 177, type: !61)
!522 = !DILocation(line: 177, column: 63, scope: !512)
!523 = !DILocalVariable(name: "len", arg: 3, scope: !512, file: !1, line: 177, type: !60)
!524 = !DILocation(line: 177, column: 72, scope: !512)
!525 = !DILocalVariable(name: "ret", scope: !512, file: !1, line: 179, type: !29)
!526 = !DILocation(line: 179, column: 14, scope: !512)
!527 = !DILocation(line: 179, column: 41, scope: !512)
!528 = !DILocation(line: 179, column: 20, scope: !512)
!529 = !DILocalVariable(name: "cmd", scope: !512, file: !1, line: 179, type: !29)
!530 = !DILocation(line: 179, column: 46, scope: !512)
!531 = !DILocalVariable(name: "alloc_len", scope: !512, file: !1, line: 180, type: !144)
!532 = !DILocation(line: 180, column: 6, scope: !512)
!533 = !DILocation(line: 182, column: 10, scope: !512)
!534 = !DILocation(line: 182, column: 2, scope: !512)
!535 = !DILocation(line: 184, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !512, file: !1, line: 182, column: 33)
!537 = !DILocation(line: 185, column: 3, scope: !536)
!538 = !DILocation(line: 187, column: 7, scope: !536)
!539 = !DILocation(line: 188, column: 3, scope: !536)
!540 = !DILocation(line: 190, column: 7, scope: !536)
!541 = !DILocation(line: 191, column: 3, scope: !536)
!542 = !DILocation(line: 193, column: 7, scope: !536)
!543 = !DILocation(line: 194, column: 3, scope: !536)
!544 = !DILocation(line: 196, column: 7, scope: !536)
!545 = !DILocation(line: 197, column: 3, scope: !536)
!546 = !DILocation(line: 199, column: 7, scope: !536)
!547 = !DILocation(line: 200, column: 3, scope: !536)
!548 = !DILocation(line: 202, column: 7, scope: !536)
!549 = !DILocation(line: 203, column: 3, scope: !536)
!550 = !DILocation(line: 205, column: 7, scope: !536)
!551 = !DILocation(line: 206, column: 3, scope: !536)
!552 = !DILocation(line: 208, column: 18, scope: !536)
!553 = !DILocation(line: 208, column: 3, scope: !536)
!554 = !DILocation(line: 209, column: 3, scope: !536)
!555 = !DILocation(line: 212, column: 34, scope: !512)
!556 = !DILocation(line: 30, column: 32, scope: !207, inlinedAt: !516)
!557 = !DILocation(line: 30, column: 22, scope: !207, inlinedAt: !516)
!558 = !DILocation(line: 82, column: 28, scope: !201, inlinedAt: !515)
!559 = !DILocation(line: 189, column: 9, scope: !194, inlinedAt: !514)
!560 = !DILocation(line: 212, column: 12, scope: !512)
!561 = !DILocation(line: 214, column: 19, scope: !512)
!562 = !DILocation(line: 214, column: 41, scope: !512)
!563 = !DILocation(line: 214, column: 46, scope: !512)
!564 = !DILocation(line: 214, column: 2, scope: !512)
!565 = !DILabel(scope: !512, name: "out", file: !1, line: 216)
!566 = !DILocation(line: 216, column: 1, scope: !512)
!567 = !DILocation(line: 217, column: 17, scope: !512)
!568 = !DILocation(line: 217, column: 2, scope: !512)
!569 = !DILocation(line: 219, column: 9, scope: !512)
!570 = !DILocation(line: 219, column: 2, scope: !512)
!571 = distinct !DISubprogram(name: "scsi_trace_maintenance_out", scope: !1, file: !1, line: 223, type: !27, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!572 = !DILocation(line: 184, column: 53, scope: !194, inlinedAt: !573)
!573 = distinct !DILocation(line: 82, column: 9, scope: !201, inlinedAt: !574)
!574 = distinct !DILocation(line: 30, column: 9, scope: !207, inlinedAt: !575)
!575 = distinct !DILocation(line: 252, column: 14, scope: !571)
!576 = !DILocation(line: 80, column: 59, scope: !201, inlinedAt: !574)
!577 = !DILocation(line: 28, column: 59, scope: !207, inlinedAt: !575)
!578 = !DILocalVariable(name: "p", arg: 1, scope: !571, file: !1, line: 223, type: !32)
!579 = !DILocation(line: 223, column: 46, scope: !571)
!580 = !DILocalVariable(name: "cdb", arg: 2, scope: !571, file: !1, line: 223, type: !61)
!581 = !DILocation(line: 223, column: 64, scope: !571)
!582 = !DILocalVariable(name: "len", arg: 3, scope: !571, file: !1, line: 223, type: !60)
!583 = !DILocation(line: 223, column: 73, scope: !571)
!584 = !DILocalVariable(name: "ret", scope: !571, file: !1, line: 225, type: !29)
!585 = !DILocation(line: 225, column: 14, scope: !571)
!586 = !DILocation(line: 225, column: 41, scope: !571)
!587 = !DILocation(line: 225, column: 20, scope: !571)
!588 = !DILocalVariable(name: "cmd", scope: !571, file: !1, line: 225, type: !29)
!589 = !DILocation(line: 225, column: 46, scope: !571)
!590 = !DILocalVariable(name: "alloc_len", scope: !571, file: !1, line: 226, type: !144)
!591 = !DILocation(line: 226, column: 6, scope: !571)
!592 = !DILocation(line: 228, column: 10, scope: !571)
!593 = !DILocation(line: 228, column: 2, scope: !571)
!594 = !DILocation(line: 230, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !571, file: !1, line: 228, column: 33)
!596 = !DILocation(line: 231, column: 3, scope: !595)
!597 = !DILocation(line: 233, column: 7, scope: !595)
!598 = !DILocation(line: 234, column: 3, scope: !595)
!599 = !DILocation(line: 236, column: 7, scope: !595)
!600 = !DILocation(line: 237, column: 3, scope: !595)
!601 = !DILocation(line: 239, column: 7, scope: !595)
!602 = !DILocation(line: 240, column: 3, scope: !595)
!603 = !DILocation(line: 242, column: 7, scope: !595)
!604 = !DILocation(line: 243, column: 3, scope: !595)
!605 = !DILocation(line: 245, column: 7, scope: !595)
!606 = !DILocation(line: 246, column: 3, scope: !595)
!607 = !DILocation(line: 248, column: 18, scope: !595)
!608 = !DILocation(line: 248, column: 3, scope: !595)
!609 = !DILocation(line: 249, column: 3, scope: !595)
!610 = !DILocation(line: 252, column: 34, scope: !571)
!611 = !DILocation(line: 30, column: 32, scope: !207, inlinedAt: !575)
!612 = !DILocation(line: 30, column: 22, scope: !207, inlinedAt: !575)
!613 = !DILocation(line: 82, column: 28, scope: !201, inlinedAt: !574)
!614 = !DILocation(line: 189, column: 9, scope: !194, inlinedAt: !573)
!615 = !DILocation(line: 252, column: 12, scope: !571)
!616 = !DILocation(line: 254, column: 19, scope: !571)
!617 = !DILocation(line: 254, column: 41, scope: !571)
!618 = !DILocation(line: 254, column: 46, scope: !571)
!619 = !DILocation(line: 254, column: 2, scope: !571)
!620 = !DILabel(scope: !571, name: "out", file: !1, line: 256)
!621 = !DILocation(line: 256, column: 1, scope: !571)
!622 = !DILocation(line: 257, column: 17, scope: !571)
!623 = !DILocation(line: 257, column: 2, scope: !571)
!624 = !DILocation(line: 259, column: 9, scope: !571)
!625 = !DILocation(line: 259, column: 2, scope: !571)
!626 = distinct !DISubprogram(name: "scsi_trace_zbc_in", scope: !1, file: !1, line: 263, type: !27, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!627 = !DILocation(line: 184, column: 53, scope: !194, inlinedAt: !628)
!628 = distinct !DILocation(line: 82, column: 9, scope: !201, inlinedAt: !629)
!629 = distinct !DILocation(line: 30, column: 9, scope: !207, inlinedAt: !630)
!630 = distinct !DILocation(line: 280, column: 14, scope: !626)
!631 = !DILocation(line: 80, column: 59, scope: !201, inlinedAt: !629)
!632 = !DILocation(line: 28, column: 59, scope: !207, inlinedAt: !630)
!633 = !DILocation(line: 197, column: 53, scope: !318, inlinedAt: !634)
!634 = distinct !DILocation(line: 74, column: 9, scope: !325, inlinedAt: !635)
!635 = distinct !DILocation(line: 35, column: 9, scope: !331, inlinedAt: !636)
!636 = distinct !DILocation(line: 279, column: 12, scope: !626)
!637 = !DILocation(line: 72, column: 59, scope: !325, inlinedAt: !635)
!638 = !DILocation(line: 33, column: 59, scope: !331, inlinedAt: !636)
!639 = !DILocalVariable(name: "p", arg: 1, scope: !626, file: !1, line: 263, type: !32)
!640 = !DILocation(line: 263, column: 37, scope: !626)
!641 = !DILocalVariable(name: "cdb", arg: 2, scope: !626, file: !1, line: 263, type: !61)
!642 = !DILocation(line: 263, column: 55, scope: !626)
!643 = !DILocalVariable(name: "len", arg: 3, scope: !626, file: !1, line: 263, type: !60)
!644 = !DILocation(line: 263, column: 64, scope: !626)
!645 = !DILocalVariable(name: "ret", scope: !626, file: !1, line: 265, type: !29)
!646 = !DILocation(line: 265, column: 14, scope: !626)
!647 = !DILocation(line: 265, column: 41, scope: !626)
!648 = !DILocation(line: 265, column: 20, scope: !626)
!649 = !DILocalVariable(name: "cmd", scope: !626, file: !1, line: 265, type: !29)
!650 = !DILocation(line: 265, column: 46, scope: !626)
!651 = !DILocalVariable(name: "zone_id", scope: !626, file: !1, line: 266, type: !334)
!652 = !DILocation(line: 266, column: 6, scope: !626)
!653 = !DILocalVariable(name: "alloc_len", scope: !626, file: !1, line: 267, type: !144)
!654 = !DILocation(line: 267, column: 6, scope: !626)
!655 = !DILocalVariable(name: "options", scope: !626, file: !1, line: 268, type: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !145, line: 17, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !8, line: 21, baseType: !38)
!658 = !DILocation(line: 268, column: 5, scope: !626)
!659 = !DILocation(line: 270, column: 10, scope: !626)
!660 = !DILocation(line: 270, column: 2, scope: !626)
!661 = !DILocation(line: 272, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !626, file: !1, line: 270, column: 33)
!663 = !DILocation(line: 273, column: 3, scope: !662)
!664 = !DILocation(line: 275, column: 18, scope: !662)
!665 = !DILocation(line: 275, column: 3, scope: !662)
!666 = !DILocation(line: 276, column: 3, scope: !662)
!667 = !DILocation(line: 279, column: 32, scope: !626)
!668 = !DILocation(line: 35, column: 32, scope: !331, inlinedAt: !636)
!669 = !DILocation(line: 35, column: 22, scope: !331, inlinedAt: !636)
!670 = !DILocation(line: 74, column: 28, scope: !325, inlinedAt: !635)
!671 = !DILocation(line: 202, column: 9, scope: !318, inlinedAt: !634)
!672 = !DILocation(line: 279, column: 10, scope: !626)
!673 = !DILocation(line: 280, column: 34, scope: !626)
!674 = !DILocation(line: 30, column: 32, scope: !207, inlinedAt: !630)
!675 = !DILocation(line: 30, column: 22, scope: !207, inlinedAt: !630)
!676 = !DILocation(line: 82, column: 28, scope: !201, inlinedAt: !629)
!677 = !DILocation(line: 189, column: 9, scope: !194, inlinedAt: !628)
!678 = !DILocation(line: 280, column: 12, scope: !626)
!679 = !DILocation(line: 281, column: 12, scope: !626)
!680 = !DILocation(line: 281, column: 20, scope: !626)
!681 = !DILocation(line: 281, column: 10, scope: !626)
!682 = !DILocation(line: 283, column: 19, scope: !626)
!683 = !DILocation(line: 284, column: 5, scope: !626)
!684 = !DILocation(line: 284, column: 30, scope: !626)
!685 = !DILocation(line: 284, column: 39, scope: !626)
!686 = !DILocation(line: 285, column: 5, scope: !626)
!687 = !DILocation(line: 285, column: 15, scope: !626)
!688 = !DILocation(line: 285, column: 23, scope: !626)
!689 = !DILocation(line: 285, column: 29, scope: !626)
!690 = !DILocation(line: 283, column: 2, scope: !626)
!691 = !DILabel(scope: !626, name: "out", file: !1, line: 287)
!692 = !DILocation(line: 287, column: 1, scope: !626)
!693 = !DILocation(line: 288, column: 17, scope: !626)
!694 = !DILocation(line: 288, column: 2, scope: !626)
!695 = !DILocation(line: 290, column: 9, scope: !626)
!696 = !DILocation(line: 290, column: 2, scope: !626)
!697 = distinct !DISubprogram(name: "scsi_trace_zbc_out", scope: !1, file: !1, line: 294, type: !27, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!698 = !DILocation(line: 197, column: 53, scope: !318, inlinedAt: !699)
!699 = distinct !DILocation(line: 74, column: 9, scope: !325, inlinedAt: !700)
!700 = distinct !DILocation(line: 35, column: 9, scope: !331, inlinedAt: !701)
!701 = distinct !DILocation(line: 317, column: 12, scope: !697)
!702 = !DILocation(line: 72, column: 59, scope: !325, inlinedAt: !700)
!703 = !DILocation(line: 33, column: 59, scope: !331, inlinedAt: !701)
!704 = !DILocalVariable(name: "p", arg: 1, scope: !697, file: !1, line: 294, type: !32)
!705 = !DILocation(line: 294, column: 38, scope: !697)
!706 = !DILocalVariable(name: "cdb", arg: 2, scope: !697, file: !1, line: 294, type: !61)
!707 = !DILocation(line: 294, column: 56, scope: !697)
!708 = !DILocalVariable(name: "len", arg: 3, scope: !697, file: !1, line: 294, type: !60)
!709 = !DILocation(line: 294, column: 65, scope: !697)
!710 = !DILocalVariable(name: "ret", scope: !697, file: !1, line: 296, type: !29)
!711 = !DILocation(line: 296, column: 14, scope: !697)
!712 = !DILocation(line: 296, column: 41, scope: !697)
!713 = !DILocation(line: 296, column: 20, scope: !697)
!714 = !DILocalVariable(name: "cmd", scope: !697, file: !1, line: 296, type: !29)
!715 = !DILocation(line: 296, column: 46, scope: !697)
!716 = !DILocalVariable(name: "zone_id", scope: !697, file: !1, line: 297, type: !334)
!717 = !DILocation(line: 297, column: 6, scope: !697)
!718 = !DILocation(line: 299, column: 10, scope: !697)
!719 = !DILocation(line: 299, column: 2, scope: !697)
!720 = !DILocation(line: 301, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !697, file: !1, line: 299, column: 33)
!722 = !DILocation(line: 302, column: 3, scope: !721)
!723 = !DILocation(line: 304, column: 7, scope: !721)
!724 = !DILocation(line: 305, column: 3, scope: !721)
!725 = !DILocation(line: 307, column: 7, scope: !721)
!726 = !DILocation(line: 308, column: 3, scope: !721)
!727 = !DILocation(line: 310, column: 7, scope: !721)
!728 = !DILocation(line: 311, column: 3, scope: !721)
!729 = !DILocation(line: 313, column: 18, scope: !721)
!730 = !DILocation(line: 313, column: 3, scope: !721)
!731 = !DILocation(line: 314, column: 3, scope: !721)
!732 = !DILocation(line: 317, column: 32, scope: !697)
!733 = !DILocation(line: 35, column: 32, scope: !331, inlinedAt: !701)
!734 = !DILocation(line: 35, column: 22, scope: !331, inlinedAt: !701)
!735 = !DILocation(line: 74, column: 28, scope: !325, inlinedAt: !700)
!736 = !DILocation(line: 202, column: 9, scope: !318, inlinedAt: !699)
!737 = !DILocation(line: 317, column: 10, scope: !697)
!738 = !DILocation(line: 319, column: 19, scope: !697)
!739 = !DILocation(line: 319, column: 45, scope: !697)
!740 = !DILocation(line: 320, column: 25, scope: !697)
!741 = !DILocation(line: 320, column: 34, scope: !697)
!742 = !DILocation(line: 320, column: 42, scope: !697)
!743 = !DILocation(line: 319, column: 2, scope: !697)
!744 = !DILabel(scope: !697, name: "out", file: !1, line: 322)
!745 = !DILocation(line: 322, column: 1, scope: !697)
!746 = !DILocation(line: 323, column: 17, scope: !697)
!747 = !DILocation(line: 323, column: 2, scope: !697)
!748 = !DILocation(line: 325, column: 9, scope: !697)
!749 = !DILocation(line: 325, column: 2, scope: !697)
!750 = distinct !DISubprogram(name: "scsi_trace_misc", scope: !1, file: !1, line: 343, type: !27, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!751 = !DILocalVariable(name: "p", arg: 1, scope: !750, file: !1, line: 343, type: !32)
!752 = !DILocation(line: 343, column: 35, scope: !750)
!753 = !DILocalVariable(name: "cdb", arg: 2, scope: !750, file: !1, line: 343, type: !61)
!754 = !DILocation(line: 343, column: 53, scope: !750)
!755 = !DILocalVariable(name: "len", arg: 3, scope: !750, file: !1, line: 343, type: !60)
!756 = !DILocation(line: 343, column: 62, scope: !750)
!757 = !DILocalVariable(name: "ret", scope: !750, file: !1, line: 345, type: !29)
!758 = !DILocation(line: 345, column: 14, scope: !750)
!759 = !DILocation(line: 345, column: 41, scope: !750)
!760 = !DILocation(line: 345, column: 20, scope: !750)
!761 = !DILocation(line: 347, column: 17, scope: !750)
!762 = !DILocation(line: 347, column: 2, scope: !750)
!763 = !DILocation(line: 348, column: 17, scope: !750)
!764 = !DILocation(line: 348, column: 2, scope: !750)
!765 = !DILocation(line: 350, column: 9, scope: !750)
!766 = !DILocation(line: 350, column: 2, scope: !750)
!767 = distinct !DISubprogram(name: "trace_seq_buffer_ptr", scope: !34, file: !34, line: 55, type: !768, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!768 = !DISubroutineType(types: !769)
!769 = !{!61, !32}
!770 = !DILocalVariable(name: "s", arg: 1, scope: !767, file: !34, line: 55, type: !32)
!771 = !DILocation(line: 55, column: 40, scope: !767)
!772 = !DILocation(line: 57, column: 9, scope: !767)
!773 = !DILocation(line: 57, column: 12, scope: !767)
!774 = !DILocation(line: 57, column: 35, scope: !767)
!775 = !DILocation(line: 57, column: 38, scope: !767)
!776 = !DILocation(line: 57, column: 21, scope: !767)
!777 = !DILocation(line: 57, column: 19, scope: !767)
!778 = !DILocation(line: 57, column: 2, scope: !767)
!779 = distinct !DISubprogram(name: "get_unaligned_be24", scope: !780, file: !780, line: 76, type: !208, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!780 = !DIFile(filename: "./include/linux/unaligned/generic.h", directory: "/home/lizy2001/genbc/linux")
!781 = !DILocalVariable(name: "p", arg: 1, scope: !779, file: !780, line: 76, type: !186)
!782 = !DILocation(line: 76, column: 50, scope: !779)
!783 = !DILocation(line: 78, column: 30, scope: !779)
!784 = !DILocation(line: 78, column: 9, scope: !779)
!785 = !DILocation(line: 78, column: 2, scope: !779)
!786 = distinct !DISubprogram(name: "trace_seq_printf", scope: !34, file: !34, line: 100, type: !787, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !32, !29, null}
!789 = !DILocalVariable(name: "s", arg: 1, scope: !786, file: !34, line: 100, type: !32)
!790 = !DILocation(line: 100, column: 55, scope: !786)
!791 = !DILocalVariable(name: "fmt", arg: 2, scope: !786, file: !34, line: 100, type: !29)
!792 = !DILocation(line: 100, column: 70, scope: !786)
!793 = !DILocation(line: 102, column: 1, scope: !786)
!794 = distinct !DISubprogram(name: "trace_seq_putc", scope: !34, file: !34, line: 126, type: !795, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !32, !38}
!797 = !DILocalVariable(name: "s", arg: 1, scope: !794, file: !34, line: 126, type: !32)
!798 = !DILocation(line: 126, column: 53, scope: !794)
!799 = !DILocalVariable(name: "c", arg: 2, scope: !794, file: !34, line: 126, type: !38)
!800 = !DILocation(line: 126, column: 70, scope: !794)
!801 = !DILocation(line: 128, column: 1, scope: !794)
!802 = distinct !DISubprogram(name: "seq_buf_used", scope: !43, file: !43, line: 69, type: !803, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!803 = !DISubroutineType(types: !804)
!804 = !{!9, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!806 = !DILocalVariable(name: "s", arg: 1, scope: !802, file: !43, line: 69, type: !805)
!807 = !DILocation(line: 69, column: 57, scope: !802)
!808 = !DILocalVariable(name: "__UNIQUE_ID___x189", scope: !809, file: !43, line: 71, type: !48)
!809 = distinct !DILexicalBlock(scope: !802, file: !43, line: 71, column: 9)
!810 = !DILocation(line: 71, column: 9, scope: !809)
!811 = !DILocalVariable(name: "__UNIQUE_ID___y190", scope: !809, file: !43, line: 71, type: !48)
!812 = !DILocation(line: 71, column: 9, scope: !802)
!813 = !DILocation(line: 71, column: 2, scope: !802)
!814 = distinct !DISubprogram(name: "__get_unaligned_be24", scope: !780, file: !780, line: 71, type: !815, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!815 = !DISubroutineType(types: !816)
!816 = !{!144, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!819 = !DILocalVariable(name: "p", arg: 1, scope: !814, file: !780, line: 71, type: !817)
!820 = !DILocation(line: 71, column: 50, scope: !814)
!821 = !DILocation(line: 73, column: 9, scope: !814)
!822 = !DILocation(line: 73, column: 14, scope: !814)
!823 = !DILocation(line: 73, column: 22, scope: !814)
!824 = !DILocation(line: 73, column: 27, scope: !814)
!825 = !DILocation(line: 73, column: 20, scope: !814)
!826 = !DILocation(line: 73, column: 34, scope: !814)
!827 = !DILocation(line: 73, column: 32, scope: !814)
!828 = !DILocation(line: 73, column: 2, scope: !814)
!829 = distinct !DISubprogram(name: "__fswab32", scope: !167, file: !167, line: 57, type: !830, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!830 = !DISubroutineType(types: !831)
!831 = !{!7, !7}
!832 = !DILocalVariable(name: "val", arg: 1, scope: !829, file: !167, line: 57, type: !7)
!833 = !DILocation(line: 57, column: 57, scope: !829)
!834 = !DILocation(line: 60, column: 23, scope: !829)
!835 = !DILocation(line: 60, column: 9, scope: !829)
!836 = !DILocation(line: 60, column: 2, scope: !829)
!837 = distinct !DISubprogram(name: "__arch_swab32", scope: !838, file: !838, line: 8, type: !830, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!838 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!839 = !DILocalVariable(name: "val", arg: 1, scope: !837, file: !838, line: 8, type: !7)
!840 = !DILocation(line: 8, column: 61, scope: !837)
!841 = !DILocation(line: 10, column: 38, scope: !837)
!842 = !DILocation(line: 10, column: 2, scope: !837)
!843 = !{i32 367680}
!844 = !DILocation(line: 11, column: 9, scope: !837)
!845 = !DILocation(line: 11, column: 2, scope: !837)
!846 = distinct !DISubprogram(name: "__fswab16", scope: !167, file: !167, line: 48, type: !847, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!847 = !DISubroutineType(types: !848)
!848 = !{!13, !13}
!849 = !DILocalVariable(name: "val", arg: 1, scope: !846, file: !167, line: 48, type: !13)
!850 = !DILocation(line: 48, column: 57, scope: !846)
!851 = !DILocation(line: 53, column: 9, scope: !846)
!852 = !DILocation(line: 53, column: 2, scope: !846)
!853 = distinct !DISubprogram(name: "__fswab64", scope: !167, file: !167, line: 66, type: !854, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!854 = !DISubroutineType(types: !855)
!855 = !{!18, !18}
!856 = !DILocalVariable(name: "val", arg: 1, scope: !853, file: !167, line: 66, type: !18)
!857 = !DILocation(line: 66, column: 57, scope: !853)
!858 = !DILocation(line: 69, column: 23, scope: !853)
!859 = !DILocation(line: 69, column: 9, scope: !853)
!860 = !DILocation(line: 69, column: 2, scope: !853)
!861 = distinct !DISubprogram(name: "__arch_swab64", scope: !838, file: !838, line: 15, type: !854, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!862 = !DILocalVariable(name: "val", arg: 1, scope: !861, file: !838, line: 15, type: !18)
!863 = !DILocation(line: 15, column: 61, scope: !861)
!864 = !DILocation(line: 31, column: 38, scope: !861)
!865 = !DILocation(line: 31, column: 2, scope: !861)
!866 = !{i32 368084}
!867 = !DILocation(line: 32, column: 9, scope: !861)
!868 = !DILocation(line: 32, column: 2, scope: !861)
!869 = distinct !DISubprogram(name: "trace_seq_puts", scope: !34, file: !34, line: 123, type: !870, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !32, !29}
!872 = !DILocalVariable(name: "s", arg: 1, scope: !869, file: !34, line: 123, type: !32)
!873 = !DILocation(line: 123, column: 53, scope: !869)
!874 = !DILocalVariable(name: "str", arg: 2, scope: !869, file: !34, line: 123, type: !29)
!875 = !DILocation(line: 123, column: 68, scope: !869)
!876 = !DILocation(line: 125, column: 1, scope: !869)
!877 = distinct !DISubprogram(name: "scsi_trace_rw32", scope: !1, file: !1, line: 94, type: !27, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!878 = !DILocation(line: 171, column: 53, scope: !166, inlinedAt: !879)
!879 = distinct !DILocation(line: 90, column: 9, scope: !174, inlinedAt: !880)
!880 = distinct !DILocation(line: 25, column: 9, scope: !181, inlinedAt: !881)
!881 = distinct !DILocation(line: 125, column: 6, scope: !882)
!882 = distinct !DILexicalBlock(scope: !877, file: !1, line: 125, column: 6)
!883 = !DILocation(line: 88, column: 59, scope: !174, inlinedAt: !880)
!884 = !DILocation(line: 23, column: 59, scope: !181, inlinedAt: !881)
!885 = !DILocation(line: 184, column: 53, scope: !194, inlinedAt: !886)
!886 = distinct !DILocation(line: 82, column: 9, scope: !201, inlinedAt: !887)
!887 = distinct !DILocation(line: 30, column: 9, scope: !207, inlinedAt: !888)
!888 = distinct !DILocation(line: 120, column: 10, scope: !877)
!889 = !DILocation(line: 80, column: 59, scope: !201, inlinedAt: !887)
!890 = !DILocation(line: 28, column: 59, scope: !207, inlinedAt: !888)
!891 = !DILocation(line: 184, column: 53, scope: !194, inlinedAt: !892)
!892 = distinct !DILocation(line: 82, column: 9, scope: !201, inlinedAt: !893)
!893 = distinct !DILocation(line: 30, column: 9, scope: !207, inlinedAt: !894)
!894 = distinct !DILocation(line: 119, column: 12, scope: !877)
!895 = !DILocation(line: 80, column: 59, scope: !201, inlinedAt: !893)
!896 = !DILocation(line: 28, column: 59, scope: !207, inlinedAt: !894)
!897 = !DILocation(line: 197, column: 53, scope: !318, inlinedAt: !898)
!898 = distinct !DILocation(line: 74, column: 9, scope: !325, inlinedAt: !899)
!899 = distinct !DILocation(line: 35, column: 9, scope: !331, inlinedAt: !900)
!900 = distinct !DILocation(line: 118, column: 8, scope: !877)
!901 = !DILocation(line: 72, column: 59, scope: !325, inlinedAt: !899)
!902 = !DILocation(line: 33, column: 59, scope: !331, inlinedAt: !900)
!903 = !DILocation(line: 171, column: 53, scope: !166, inlinedAt: !904)
!904 = distinct !DILocation(line: 90, column: 9, scope: !174, inlinedAt: !905)
!905 = distinct !DILocation(line: 25, column: 9, scope: !181, inlinedAt: !906)
!906 = distinct !DILocation(line: 100, column: 10, scope: !877)
!907 = !DILocation(line: 88, column: 59, scope: !174, inlinedAt: !905)
!908 = !DILocation(line: 23, column: 59, scope: !181, inlinedAt: !906)
!909 = !DILocalVariable(name: "p", arg: 1, scope: !877, file: !1, line: 94, type: !32)
!910 = !DILocation(line: 94, column: 35, scope: !877)
!911 = !DILocalVariable(name: "cdb", arg: 2, scope: !877, file: !1, line: 94, type: !61)
!912 = !DILocation(line: 94, column: 53, scope: !877)
!913 = !DILocalVariable(name: "len", arg: 3, scope: !877, file: !1, line: 94, type: !60)
!914 = !DILocation(line: 94, column: 62, scope: !877)
!915 = !DILocalVariable(name: "ret", scope: !877, file: !1, line: 96, type: !29)
!916 = !DILocation(line: 96, column: 14, scope: !877)
!917 = !DILocation(line: 96, column: 41, scope: !877)
!918 = !DILocation(line: 96, column: 20, scope: !877)
!919 = !DILocalVariable(name: "cmd", scope: !877, file: !1, line: 96, type: !29)
!920 = !DILocation(line: 96, column: 46, scope: !877)
!921 = !DILocalVariable(name: "lba", scope: !877, file: !1, line: 97, type: !334)
!922 = !DILocation(line: 97, column: 6, scope: !877)
!923 = !DILocalVariable(name: "ei_lbrt", scope: !877, file: !1, line: 98, type: !144)
!924 = !DILocation(line: 98, column: 6, scope: !877)
!925 = !DILocalVariable(name: "txlen", scope: !877, file: !1, line: 98, type: !144)
!926 = !DILocation(line: 98, column: 15, scope: !877)
!927 = !DILocation(line: 100, column: 10, scope: !877)
!928 = !DILocation(line: 25, column: 32, scope: !181, inlinedAt: !906)
!929 = !DILocation(line: 25, column: 22, scope: !181, inlinedAt: !906)
!930 = !DILocation(line: 90, column: 28, scope: !174, inlinedAt: !905)
!931 = !DILocation(line: 176, column: 9, scope: !166, inlinedAt: !904)
!932 = !DILocation(line: 100, column: 2, scope: !877)
!933 = !DILocation(line: 102, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !877, file: !1, line: 100, column: 33)
!935 = !DILocation(line: 103, column: 3, scope: !934)
!936 = !DILocation(line: 105, column: 7, scope: !934)
!937 = !DILocation(line: 106, column: 3, scope: !934)
!938 = !DILocation(line: 108, column: 7, scope: !934)
!939 = !DILocation(line: 109, column: 3, scope: !934)
!940 = !DILocation(line: 111, column: 7, scope: !934)
!941 = !DILocation(line: 112, column: 3, scope: !934)
!942 = !DILocation(line: 114, column: 18, scope: !934)
!943 = !DILocation(line: 114, column: 3, scope: !934)
!944 = !DILocation(line: 115, column: 3, scope: !934)
!945 = !DILocation(line: 118, column: 28, scope: !877)
!946 = !DILocation(line: 35, column: 32, scope: !331, inlinedAt: !900)
!947 = !DILocation(line: 35, column: 22, scope: !331, inlinedAt: !900)
!948 = !DILocation(line: 74, column: 28, scope: !325, inlinedAt: !899)
!949 = !DILocation(line: 202, column: 9, scope: !318, inlinedAt: !898)
!950 = !DILocation(line: 118, column: 6, scope: !877)
!951 = !DILocation(line: 119, column: 32, scope: !877)
!952 = !DILocation(line: 30, column: 32, scope: !207, inlinedAt: !894)
!953 = !DILocation(line: 30, column: 22, scope: !207, inlinedAt: !894)
!954 = !DILocation(line: 82, column: 28, scope: !201, inlinedAt: !893)
!955 = !DILocation(line: 189, column: 9, scope: !194, inlinedAt: !892)
!956 = !DILocation(line: 119, column: 10, scope: !877)
!957 = !DILocation(line: 120, column: 30, scope: !877)
!958 = !DILocation(line: 30, column: 32, scope: !207, inlinedAt: !888)
!959 = !DILocation(line: 30, column: 22, scope: !207, inlinedAt: !888)
!960 = !DILocation(line: 82, column: 28, scope: !201, inlinedAt: !887)
!961 = !DILocation(line: 189, column: 9, scope: !194, inlinedAt: !886)
!962 = !DILocation(line: 120, column: 8, scope: !877)
!963 = !DILocation(line: 122, column: 19, scope: !877)
!964 = !DILocation(line: 123, column: 5, scope: !877)
!965 = !DILocation(line: 123, column: 10, scope: !877)
!966 = !DILocation(line: 123, column: 15, scope: !877)
!967 = !DILocation(line: 123, column: 22, scope: !877)
!968 = !DILocation(line: 123, column: 30, scope: !877)
!969 = !DILocation(line: 123, column: 36, scope: !877)
!970 = !DILocation(line: 122, column: 2, scope: !877)
!971 = !DILocation(line: 125, column: 6, scope: !882)
!972 = !DILocation(line: 25, column: 32, scope: !181, inlinedAt: !881)
!973 = !DILocation(line: 25, column: 22, scope: !181, inlinedAt: !881)
!974 = !DILocation(line: 90, column: 28, scope: !174, inlinedAt: !880)
!975 = !DILocation(line: 176, column: 9, scope: !166, inlinedAt: !879)
!976 = !DILocation(line: 125, column: 28, scope: !882)
!977 = !DILocation(line: 125, column: 6, scope: !877)
!978 = !DILocation(line: 126, column: 20, scope: !882)
!979 = !DILocation(line: 126, column: 36, scope: !882)
!980 = !DILocation(line: 126, column: 44, scope: !882)
!981 = !DILocation(line: 126, column: 49, scope: !882)
!982 = !DILocation(line: 126, column: 3, scope: !882)
!983 = !DILocation(line: 125, column: 31, scope: !882)
!984 = !DILabel(scope: !877, name: "out", file: !1, line: 128)
!985 = !DILocation(line: 128, column: 1, scope: !877)
!986 = !DILocation(line: 129, column: 17, scope: !877)
!987 = !DILocation(line: 129, column: 2, scope: !877)
!988 = !DILocation(line: 131, column: 9, scope: !877)
!989 = !DILocation(line: 131, column: 2, scope: !877)
