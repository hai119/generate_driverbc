; ModuleID = '../bcout/drivers/soc/qcom/qmi_encdec.llvm.bc'
source_filename = "drivers/soc/qcom/qmi_encdec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.qmi_elem_info = type { i32, i32, i32, i32, i8, i32, %struct.qmi_elem_info* }
%struct.kmem_cache = type opaque
%struct.qmi_header = type <{ i8, i16, i16, i16 }>

@.str = private unnamed_addr constant [44 x i8] c"\013%s: Calc. len %d != 0, but NULL c_struct\0A\00", align 1
@__func__.qmi_encode_message = private unnamed_addr constant [19 x i8] c"qmi_encode_message\00", align 1
@qmi_response_type_v01_ei = dso_local global [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 7, i32 1, i32 2, i32 0, i8 0, i32 0, %struct.qmi_elem_info* null }, %struct.qmi_elem_info { i32 7, i32 1, i32 2, i32 0, i8 0, i32 2, %struct.qmi_elem_info* null }, %struct.qmi_elem_info zeroinitializer], align 16, !dbg !0
@__UNIQUE_ID_description166 = internal constant [51 x i8] c"qmi_helpers.description=QMI encoder/decoder helper\00", section ".modinfo", align 1, !dbg !45
@__UNIQUE_ID_file167 = internal constant [46 x i8] c"qmi_helpers.file=drivers/soc/qcom/qmi_helpers\00", section ".modinfo", align 1, !dbg !51
@__UNIQUE_ID_license168 = internal constant [27 x i8] c"qmi_helpers.license=GPL v2\00", section ".modinfo", align 1, !dbg !56
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\013%s: Invalid data length\0A\00", align 1
@__func__.qmi_encode = private unnamed_addr constant [11 x i8] c"qmi_encode\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\013%s: Too Small Buffer @DATA_LEN\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\013%s: Too Small Buffer @data_type:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\013%s: Unrecognized data type\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\013%s: STRUCT Encode failure\0A\00", align 1
@__func__.qmi_encode_struct_elem = private unnamed_addr constant [23 x i8] c"qmi_encode_struct_elem\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"\013%s: String to be encoded is longer - %d > %d\0A\00", align 1
@__func__.qmi_encode_string_elem = private unnamed_addr constant [23 x i8] c"qmi_encode_string_elem\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\013%s: Output len %d > Out Buf len %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\013%s: Inval element info\0A\00", align 1
@__func__.qmi_decode = private unnamed_addr constant [11 x i8] c"qmi_decode\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\013%s: Data len %d > max spec %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"\013%s: Fault in decoding: dl(%d), db(%d), tl(%d), i(%d), el(%d)\0A\00", align 1
@__func__.qmi_decode_struct_elem = private unnamed_addr constant [23 x i8] c"qmi_decode_struct_elem\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"\013%s: String len %d > Max Len %d\0A\00", align 1
@__func__.qmi_decode_string_elem = private unnamed_addr constant [23 x i8] c"qmi_decode_string_elem\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"\013%s: String len %d > Input Buffer Len %d\0A\00", align 1
@llvm.used = appending global [3 x i8*] [i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_description166, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_file167, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license168, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @qmi_encode_message(i32 %type, i32 %msg_id, i64* %len, i32 %txn_id, %struct.qmi_elem_info* %ei, i8* %c_struct) #0 !dbg !81 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %msg_id.addr = alloca i32, align 4
  %len.addr = alloca i64*, align 8
  %txn_id.addr = alloca i32, align 4
  %ei.addr = alloca %struct.qmi_elem_info*, align 8
  %c_struct.addr = alloca i8*, align 8
  %hdr = alloca %struct.qmi_header*, align 8
  %msglen = alloca i64, align 8
  %msg = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !94, metadata !DIExpression()), !dbg !95
  store i32 %msg_id, i32* %msg_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msg_id.addr, metadata !96, metadata !DIExpression()), !dbg !97
  store i64* %len, i64** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %len.addr, metadata !98, metadata !DIExpression()), !dbg !99
  store i32 %txn_id, i32* %txn_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %txn_id.addr, metadata !100, metadata !DIExpression()), !dbg !101
  store %struct.qmi_elem_info* %ei, %struct.qmi_elem_info** %ei.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %ei.addr, metadata !102, metadata !DIExpression()), !dbg !103
  store i8* %c_struct, i8** %c_struct.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %c_struct.addr, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata %struct.qmi_header** %hdr, metadata !106, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i64* %msglen, metadata !118, metadata !DIExpression()), !dbg !123
  store i64 0, i64* %msglen, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata i8** %msg, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !126, metadata !DIExpression()), !dbg !127
  %0 = load i8*, i8** %c_struct.addr, align 8, !dbg !128
  %tobool = icmp ne i8* %0, null, !dbg !128
  br i1 %tobool, label %if.end5, label %if.then, !dbg !130

if.then:                                          ; preds = %entry
  %1 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei.addr, align 8, !dbg !131
  %call = call i32 @qmi_calc_min_msg_len(%struct.qmi_elem_info* %1, i32 1) #8, !dbg !133
  store i32 %call, i32* %ret, align 4, !dbg !134
  %2 = load i32, i32* %ret, align 4, !dbg !135
  %tobool1 = icmp ne i32 %2, 0, !dbg !135
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !137

if.then2:                                         ; preds = %if.then
  %3 = load i32, i32* %ret, align 4, !dbg !138
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.qmi_encode_message, i64 0, i64 0), i32 %3) #9, !dbg !138
  %call4 = call i8* @ERR_PTR(i64 -22) #8, !dbg !140
  store i8* %call4, i8** %retval, align 8, !dbg !141
  br label %return, !dbg !141

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !142

if.end5:                                          ; preds = %if.end, %entry
  %4 = load i64*, i64** %len.addr, align 8, !dbg !143
  %5 = load i64, i64* %4, align 8, !dbg !144
  %add = add i64 7, %5, !dbg !145
  %call6 = call i8* @kzalloc(i64 %add, i32 3264) #8, !dbg !146
  store i8* %call6, i8** %msg, align 8, !dbg !147
  %6 = load i8*, i8** %msg, align 8, !dbg !148
  %tobool7 = icmp ne i8* %6, null, !dbg !148
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !150

if.then8:                                         ; preds = %if.end5
  %call9 = call i8* @ERR_PTR(i64 -12) #8, !dbg !151
  store i8* %call9, i8** %retval, align 8, !dbg !152
  br label %return, !dbg !152

if.end10:                                         ; preds = %if.end5
  %7 = load i8*, i8** %c_struct.addr, align 8, !dbg !153
  %tobool11 = icmp ne i8* %7, null, !dbg !153
  br i1 %tobool11, label %if.then12, label %if.end19, !dbg !155

if.then12:                                        ; preds = %if.end10
  %8 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei.addr, align 8, !dbg !156
  %9 = load i8*, i8** %msg, align 8, !dbg !158
  %add.ptr = getelementptr i8, i8* %9, i64 7, !dbg !159
  %10 = load i8*, i8** %c_struct.addr, align 8, !dbg !160
  %11 = load i64*, i64** %len.addr, align 8, !dbg !161
  %12 = load i64, i64* %11, align 8, !dbg !162
  %conv = trunc i64 %12 to i32, !dbg !162
  %call13 = call i32 @qmi_encode(%struct.qmi_elem_info* %8, i8* %add.ptr, i8* %10, i32 %conv, i32 1) #8, !dbg !163
  %conv14 = sext i32 %call13 to i64, !dbg !163
  store i64 %conv14, i64* %msglen, align 8, !dbg !164
  %13 = load i64, i64* %msglen, align 8, !dbg !165
  %cmp = icmp slt i64 %13, 0, !dbg !167
  br i1 %cmp, label %if.then16, label %if.end18, !dbg !168

if.then16:                                        ; preds = %if.then12
  %14 = load i8*, i8** %msg, align 8, !dbg !169
  call void @kfree(i8* %14) #8, !dbg !171
  %15 = load i64, i64* %msglen, align 8, !dbg !172
  %call17 = call i8* @ERR_PTR(i64 %15) #8, !dbg !173
  store i8* %call17, i8** %retval, align 8, !dbg !174
  br label %return, !dbg !174

if.end18:                                         ; preds = %if.then12
  br label %if.end19, !dbg !175

if.end19:                                         ; preds = %if.end18, %if.end10
  %16 = load i8*, i8** %msg, align 8, !dbg !176
  %17 = bitcast i8* %16 to %struct.qmi_header*, !dbg !176
  store %struct.qmi_header* %17, %struct.qmi_header** %hdr, align 8, !dbg !177
  %18 = load i32, i32* %type.addr, align 4, !dbg !178
  %conv20 = trunc i32 %18 to i8, !dbg !178
  %19 = load %struct.qmi_header*, %struct.qmi_header** %hdr, align 8, !dbg !179
  %type21 = getelementptr inbounds %struct.qmi_header, %struct.qmi_header* %19, i32 0, i32 0, !dbg !180
  store i8 %conv20, i8* %type21, align 1, !dbg !181
  %20 = load i32, i32* %txn_id.addr, align 4, !dbg !182
  %conv22 = trunc i32 %20 to i16, !dbg !182
  %21 = load %struct.qmi_header*, %struct.qmi_header** %hdr, align 8, !dbg !183
  %txn_id23 = getelementptr inbounds %struct.qmi_header, %struct.qmi_header* %21, i32 0, i32 1, !dbg !184
  store i16 %conv22, i16* %txn_id23, align 1, !dbg !185
  %22 = load i32, i32* %msg_id.addr, align 4, !dbg !186
  %conv24 = trunc i32 %22 to i16, !dbg !186
  %23 = load %struct.qmi_header*, %struct.qmi_header** %hdr, align 8, !dbg !187
  %msg_id25 = getelementptr inbounds %struct.qmi_header, %struct.qmi_header* %23, i32 0, i32 2, !dbg !188
  store i16 %conv24, i16* %msg_id25, align 1, !dbg !189
  %24 = load i64, i64* %msglen, align 8, !dbg !190
  %conv26 = trunc i64 %24 to i16, !dbg !190
  %25 = load %struct.qmi_header*, %struct.qmi_header** %hdr, align 8, !dbg !191
  %msg_len = getelementptr inbounds %struct.qmi_header, %struct.qmi_header* %25, i32 0, i32 3, !dbg !192
  store i16 %conv26, i16* %msg_len, align 1, !dbg !193
  %26 = load i64, i64* %msglen, align 8, !dbg !194
  %add27 = add i64 7, %26, !dbg !195
  %27 = load i64*, i64** %len.addr, align 8, !dbg !196
  store i64 %add27, i64* %27, align 8, !dbg !197
  %28 = load i8*, i8** %msg, align 8, !dbg !198
  store i8* %28, i8** %retval, align 8, !dbg !199
  br label %return, !dbg !199

return:                                           ; preds = %if.end19, %if.then16, %if.then8, %if.then2
  %29 = load i8*, i8** %retval, align 8, !dbg !200
  ret i8* %29, !dbg !200
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @qmi_calc_min_msg_len(%struct.qmi_elem_info* %ei_array, i32 %level) #0 !dbg !201 {
entry:
  %retval = alloca i32, align 4
  %ei_array.addr = alloca %struct.qmi_elem_info*, align 8
  %level.addr = alloca i32, align 4
  %min_msg_len = alloca i32, align 4
  %temp_ei = alloca %struct.qmi_elem_info*, align 8
  store %struct.qmi_elem_info* %ei_array, %struct.qmi_elem_info** %ei_array.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %ei_array.addr, metadata !204, metadata !DIExpression()), !dbg !205
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata i32* %min_msg_len, metadata !208, metadata !DIExpression()), !dbg !209
  store i32 0, i32* %min_msg_len, align 4, !dbg !209
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %temp_ei, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array.addr, align 8, !dbg !212
  store %struct.qmi_elem_info* %0, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !211
  %1 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array.addr, align 8, !dbg !213
  %tobool = icmp ne %struct.qmi_elem_info* %1, null, !dbg !213
  br i1 %tobool, label %if.end, label %if.then, !dbg !215

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %min_msg_len, align 4, !dbg !216
  store i32 %2, i32* %retval, align 4, !dbg !217
  br label %return, !dbg !217

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !218

while.cond:                                       ; preds = %if.end55, %if.then7, %if.then3, %if.end
  %3 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !219
  %data_type = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %3, i32 0, i32 0, !dbg !220
  %4 = load i32, i32* %data_type, align 8, !dbg !220
  %cmp = icmp ne i32 %4, 0, !dbg !221
  br i1 %cmp, label %while.body, label %while.end, !dbg !218

while.body:                                       ; preds = %while.cond
  %5 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !222
  %data_type1 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %5, i32 0, i32 0, !dbg !225
  %6 = load i32, i32* %data_type1, align 8, !dbg !225
  %cmp2 = icmp eq i32 %6, 1, !dbg !226
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !227

if.then3:                                         ; preds = %while.body
  %7 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !228
  %8 = load i32, i32* %level.addr, align 4, !dbg !230
  %call = call %struct.qmi_elem_info* @skip_to_next_elem(%struct.qmi_elem_info* %7, i32 %8) #8, !dbg !231
  store %struct.qmi_elem_info* %call, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !232
  br label %while.cond, !dbg !233, !llvm.loop !234

if.end4:                                          ; preds = %while.body
  %9 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !236
  %data_type5 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %9, i32 0, i32 0, !dbg !238
  %10 = load i32, i32* %data_type5, align 8, !dbg !238
  %cmp6 = icmp eq i32 %10, 2, !dbg !239
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !240

if.then7:                                         ; preds = %if.end4
  %11 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !241
  %elem_size = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %11, i32 0, i32 2, !dbg !243
  %12 = load i32, i32* %elem_size, align 8, !dbg !243
  %conv = zext i32 %12 to i64, !dbg !241
  %cmp8 = icmp eq i64 %conv, 1, !dbg !244
  %13 = zext i1 %cmp8 to i64, !dbg !241
  %cond = select i1 %cmp8, i64 1, i64 2, !dbg !241
  %14 = load i32, i32* %min_msg_len, align 4, !dbg !245
  %conv10 = sext i32 %14 to i64, !dbg !245
  %add = add i64 %conv10, %cond, !dbg !245
  %conv11 = trunc i64 %add to i32, !dbg !245
  store i32 %conv11, i32* %min_msg_len, align 4, !dbg !245
  %15 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !246
  %incdec.ptr = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %15, i32 1, !dbg !246
  store %struct.qmi_elem_info* %incdec.ptr, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !246
  br label %while.cond, !dbg !247, !llvm.loop !234

if.else:                                          ; preds = %if.end4
  %16 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !248
  %data_type12 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %16, i32 0, i32 0, !dbg !250
  %17 = load i32, i32* %data_type12, align 8, !dbg !250
  %cmp13 = icmp eq i32 %17, 9, !dbg !251
  br i1 %cmp13, label %if.then15, label %if.else21, !dbg !252

if.then15:                                        ; preds = %if.else
  %18 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !253
  %ei_array16 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %18, i32 0, i32 6, !dbg !255
  %19 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array16, align 8, !dbg !255
  %20 = load i32, i32* %level.addr, align 4, !dbg !256
  %add17 = add i32 %20, 1, !dbg !257
  %call18 = call i32 @qmi_calc_min_msg_len(%struct.qmi_elem_info* %19, i32 %add17) #8, !dbg !258
  %21 = load i32, i32* %min_msg_len, align 4, !dbg !259
  %add19 = add i32 %21, %call18, !dbg !259
  store i32 %add19, i32* %min_msg_len, align 4, !dbg !259
  %22 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !260
  %incdec.ptr20 = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %22, i32 1, !dbg !260
  store %struct.qmi_elem_info* %incdec.ptr20, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !260
  br label %if.end47, !dbg !261

if.else21:                                        ; preds = %if.else
  %23 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !262
  %data_type22 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %23, i32 0, i32 0, !dbg !264
  %24 = load i32, i32* %data_type22, align 8, !dbg !264
  %cmp23 = icmp eq i32 %24, 10, !dbg !265
  br i1 %cmp23, label %if.then25, label %if.else40, !dbg !266

if.then25:                                        ; preds = %if.else21
  %25 = load i32, i32* %level.addr, align 4, !dbg !267
  %cmp26 = icmp sgt i32 %25, 1, !dbg !270
  br i1 %cmp26, label %if.then28, label %if.end35, !dbg !271

if.then28:                                        ; preds = %if.then25
  %26 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !272
  %elem_len = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %26, i32 0, i32 1, !dbg !273
  %27 = load i32, i32* %elem_len, align 4, !dbg !273
  %cmp29 = icmp ule i32 %27, 255, !dbg !274
  %28 = zext i1 %cmp29 to i64, !dbg !272
  %cond31 = select i1 %cmp29, i64 1, i64 2, !dbg !272
  %29 = load i32, i32* %min_msg_len, align 4, !dbg !275
  %conv32 = sext i32 %29 to i64, !dbg !275
  %add33 = add i64 %conv32, %cond31, !dbg !275
  %conv34 = trunc i64 %add33 to i32, !dbg !275
  store i32 %conv34, i32* %min_msg_len, align 4, !dbg !275
  br label %if.end35, !dbg !276

if.end35:                                         ; preds = %if.then28, %if.then25
  %30 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !277
  %elem_len36 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %30, i32 0, i32 1, !dbg !278
  %31 = load i32, i32* %elem_len36, align 4, !dbg !278
  %32 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !279
  %elem_size37 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %32, i32 0, i32 2, !dbg !280
  %33 = load i32, i32* %elem_size37, align 8, !dbg !280
  %mul = mul i32 %31, %33, !dbg !281
  %34 = load i32, i32* %min_msg_len, align 4, !dbg !282
  %add38 = add i32 %34, %mul, !dbg !282
  store i32 %add38, i32* %min_msg_len, align 4, !dbg !282
  %35 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !283
  %incdec.ptr39 = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %35, i32 1, !dbg !283
  store %struct.qmi_elem_info* %incdec.ptr39, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !283
  br label %if.end46, !dbg !284

if.else40:                                        ; preds = %if.else21
  %36 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !285
  %elem_len41 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %36, i32 0, i32 1, !dbg !287
  %37 = load i32, i32* %elem_len41, align 4, !dbg !287
  %38 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !288
  %elem_size42 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %38, i32 0, i32 2, !dbg !289
  %39 = load i32, i32* %elem_size42, align 8, !dbg !289
  %mul43 = mul i32 %37, %39, !dbg !290
  %40 = load i32, i32* %min_msg_len, align 4, !dbg !291
  %add44 = add i32 %40, %mul43, !dbg !291
  store i32 %add44, i32* %min_msg_len, align 4, !dbg !291
  %41 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !292
  %incdec.ptr45 = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %41, i32 1, !dbg !292
  store %struct.qmi_elem_info* %incdec.ptr45, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !292
  br label %if.end46

if.end46:                                         ; preds = %if.else40, %if.end35
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then15
  br label %if.end48

if.end48:                                         ; preds = %if.end47
  %42 = load i32, i32* %level.addr, align 4, !dbg !293
  %cmp49 = icmp eq i32 %42, 1, !dbg !295
  br i1 %cmp49, label %if.then51, label %if.end55, !dbg !296

if.then51:                                        ; preds = %if.end48
  %43 = load i32, i32* %min_msg_len, align 4, !dbg !297
  %conv52 = sext i32 %43 to i64, !dbg !297
  %add53 = add i64 %conv52, 3, !dbg !297
  %conv54 = trunc i64 %add53 to i32, !dbg !297
  store i32 %conv54, i32* %min_msg_len, align 4, !dbg !297
  br label %if.end55, !dbg !298

if.end55:                                         ; preds = %if.then51, %if.end48
  br label %while.cond, !dbg !218, !llvm.loop !234

while.end:                                        ; preds = %while.cond
  %44 = load i32, i32* %min_msg_len, align 4, !dbg !299
  store i32 %44, i32* %retval, align 4, !dbg !300
  br label %return, !dbg !300

return:                                           ; preds = %while.end, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !301
  ret i32 %45, !dbg !301
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !302 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load i64, i64* %error.addr, align 8, !dbg !308
  %1 = inttoptr i64 %0 to i8*, !dbg !309
  ret i8* %1, !dbg !310
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !311 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !314, metadata !DIExpression()), !dbg !321
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !327, metadata !DIExpression()), !dbg !328
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !329, metadata !DIExpression()), !dbg !330
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !331, metadata !DIExpression()), !dbg !332
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !333, metadata !DIExpression()), !dbg !337
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !339, metadata !DIExpression()), !dbg !343
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !345, metadata !DIExpression()), !dbg !349
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !354, metadata !DIExpression()), !dbg !355
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !356, metadata !DIExpression()), !dbg !357
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !358, metadata !DIExpression()), !dbg !359
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !360, metadata !DIExpression()), !dbg !361
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !362, metadata !DIExpression()), !dbg !363
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !364, metadata !DIExpression()), !dbg !365
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !366, metadata !DIExpression()), !dbg !367
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !368, metadata !DIExpression()), !dbg !369
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !370, metadata !DIExpression()), !dbg !371
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i64, i64* %size.addr, align 8, !dbg !374
  %1 = load i32, i32* %flags.addr, align 4, !dbg !375
  %or = or i32 %1, 256, !dbg !376
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !377
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !378
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !379

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !380
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !381
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !382

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !383
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !384
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !385
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !386
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !363
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !387
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !388
  %10 = load i32, i32* %order.i.i, align 4, !dbg !389
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !390
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !391
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !392
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !393
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !393
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !393
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !393
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !393
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !394
  br label %kmalloc.exit, !dbg !394

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !395
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !396
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !396
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !398

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !399
  br label %kmalloc_index.exit.i, !dbg !399

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !400
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !402
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !403

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !404
  br label %kmalloc_index.exit.i, !dbg !404

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !405
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !407
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !408

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !409
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !410
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !411

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !412
  br label %kmalloc_index.exit.i, !dbg !412

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !413
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !415
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !416

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !417
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !418
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !419

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !420
  br label %kmalloc_index.exit.i, !dbg !420

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !421
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !423
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !424

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !425
  br label %kmalloc_index.exit.i, !dbg !425

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !426
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !428
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !429

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !430
  br label %kmalloc_index.exit.i, !dbg !430

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !431
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !433
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !434

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !435
  br label %kmalloc_index.exit.i, !dbg !435

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !436
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !438
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !439

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !440
  br label %kmalloc_index.exit.i, !dbg !440

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !441
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !443
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !444

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !445
  br label %kmalloc_index.exit.i, !dbg !445

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !446
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !448
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !449

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !450
  br label %kmalloc_index.exit.i, !dbg !450

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !451
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !453
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !454

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !455
  br label %kmalloc_index.exit.i, !dbg !455

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !456
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !458
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !459

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !460
  br label %kmalloc_index.exit.i, !dbg !460

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !461
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !463
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !464

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !465
  br label %kmalloc_index.exit.i, !dbg !465

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !466
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !468
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !469

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !470
  br label %kmalloc_index.exit.i, !dbg !470

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !471
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !473
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !474

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !475
  br label %kmalloc_index.exit.i, !dbg !475

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !476
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !478
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !479

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !480
  br label %kmalloc_index.exit.i, !dbg !480

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !481
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !483
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !484

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !485
  br label %kmalloc_index.exit.i, !dbg !485

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !486
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !488
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !489

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !490
  br label %kmalloc_index.exit.i, !dbg !490

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !491
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !493
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !494

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !495
  br label %kmalloc_index.exit.i, !dbg !495

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !496
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !498
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !499

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !500
  br label %kmalloc_index.exit.i, !dbg !500

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !501
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !503
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !504

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !505
  br label %kmalloc_index.exit.i, !dbg !505

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !506
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !508
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !509

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !510
  br label %kmalloc_index.exit.i, !dbg !510

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !511
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !513
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !514

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !515
  br label %kmalloc_index.exit.i, !dbg !515

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !516
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !518
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !519

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !520
  br label %kmalloc_index.exit.i, !dbg !520

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !521
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !523
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !524

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !525
  br label %kmalloc_index.exit.i, !dbg !525

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !526
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !528
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !529

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !530
  br label %kmalloc_index.exit.i, !dbg !530

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !531
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !533
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !534

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !535
  br label %kmalloc_index.exit.i, !dbg !535

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !536
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !538
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !539

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !540
  br label %kmalloc_index.exit.i, !dbg !540

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !541, !srcloc !544
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !545, !srcloc !548
  unreachable, !dbg !549

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !550
  store i32 %45, i32* %index.i, align 4, !dbg !551
  %46 = load i32, i32* %index.i, align 4, !dbg !552
  %tobool.i = icmp ne i32 %46, 0, !dbg !552
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !554

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !555
  br label %kmalloc.exit, !dbg !555

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !556
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !557
  %and.i.i = and i32 %48, 17, !dbg !557
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !557
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !557
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !557
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !557
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !559

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !560
  br label %kmalloc_type.exit.i, !dbg !560

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !561
  %and2.i.i = and i32 %49, 1, !dbg !562
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !561
  %50 = zext i1 %tobool3.i.i to i64, !dbg !561
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !561
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !563
  br label %kmalloc_type.exit.i, !dbg !563

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !564
  %idxprom.i = zext i32 %51 to i64, !dbg !565
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !565
  %52 = load i32, i32* %index.i, align 4, !dbg !566
  %idxprom6.i = zext i32 %52 to i64, !dbg !565
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !565
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !565
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !567
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !568
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !569
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !570
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !571
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !571
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !571
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !571
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !571
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !332
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !572
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !573
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !574
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !575
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !576
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !577
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !578
  store i8* %62, i8** %retval.i, align 8, !dbg !579
  br label %kmalloc.exit, !dbg !579

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !580
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !581
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !582
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !582
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !582
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !582
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !582
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !583
  br label %kmalloc.exit, !dbg !583

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !584
  ret i8* %65, !dbg !585
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @qmi_encode(%struct.qmi_elem_info* %ei_array, i8* %out_buf, i8* %in_c_struct, i32 %out_buf_len, i32 %enc_level) #0 !dbg !586 {
entry:
  %retval = alloca i32, align 4
  %ei_array.addr = alloca %struct.qmi_elem_info*, align 8
  %out_buf.addr = alloca i8*, align 8
  %in_c_struct.addr = alloca i8*, align 8
  %out_buf_len.addr = alloca i32, align 4
  %enc_level.addr = alloca i32, align 4
  %temp_ei = alloca %struct.qmi_elem_info*, align 8
  %opt_flag_value = alloca i8, align 1
  %data_len_value = alloca i32, align 4
  %data_len_sz = alloca i32, align 4
  %buf_dst = alloca i8*, align 8
  %tlv_pointer = alloca i8*, align 8
  %tlv_len = alloca i32, align 4
  %tlv_type = alloca i8, align 1
  %encoded_bytes = alloca i32, align 4
  %buf_src = alloca i8*, align 8
  %encode_tlv = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.qmi_elem_info* %ei_array, %struct.qmi_elem_info** %ei_array.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %ei_array.addr, metadata !589, metadata !DIExpression()), !dbg !590
  store i8* %out_buf, i8** %out_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %out_buf.addr, metadata !591, metadata !DIExpression()), !dbg !592
  store i8* %in_c_struct, i8** %in_c_struct.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %in_c_struct.addr, metadata !593, metadata !DIExpression()), !dbg !594
  store i32 %out_buf_len, i32* %out_buf_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %out_buf_len.addr, metadata !595, metadata !DIExpression()), !dbg !596
  store i32 %enc_level, i32* %enc_level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enc_level.addr, metadata !597, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %temp_ei, metadata !599, metadata !DIExpression()), !dbg !600
  %0 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array.addr, align 8, !dbg !601
  store %struct.qmi_elem_info* %0, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !600
  call void @llvm.dbg.declare(metadata i8* %opt_flag_value, metadata !602, metadata !DIExpression()), !dbg !603
  store i8 0, i8* %opt_flag_value, align 1, !dbg !603
  call void @llvm.dbg.declare(metadata i32* %data_len_value, metadata !604, metadata !DIExpression()), !dbg !605
  store i32 0, i32* %data_len_value, align 4, !dbg !605
  call void @llvm.dbg.declare(metadata i32* %data_len_sz, metadata !606, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.declare(metadata i8** %buf_dst, metadata !608, metadata !DIExpression()), !dbg !609
  %1 = load i8*, i8** %out_buf.addr, align 8, !dbg !610
  store i8* %1, i8** %buf_dst, align 8, !dbg !609
  call void @llvm.dbg.declare(metadata i8** %tlv_pointer, metadata !611, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.declare(metadata i32* %tlv_len, metadata !613, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.declare(metadata i8* %tlv_type, metadata !615, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.declare(metadata i32* %encoded_bytes, metadata !617, metadata !DIExpression()), !dbg !618
  store i32 0, i32* %encoded_bytes, align 4, !dbg !618
  call void @llvm.dbg.declare(metadata i8** %buf_src, metadata !619, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.declare(metadata i32* %encode_tlv, metadata !621, metadata !DIExpression()), !dbg !622
  store i32 0, i32* %encode_tlv, align 4, !dbg !622
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !623, metadata !DIExpression()), !dbg !624
  %2 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array.addr, align 8, !dbg !625
  %tobool = icmp ne %struct.qmi_elem_info* %2, null, !dbg !625
  br i1 %tobool, label %if.end, label %if.then, !dbg !627

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !628
  br label %return, !dbg !628

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %buf_dst, align 8, !dbg !629
  store i8* %3, i8** %tlv_pointer, align 8, !dbg !630
  store i32 0, i32* %tlv_len, align 4, !dbg !631
  %4 = load i32, i32* %enc_level.addr, align 4, !dbg !632
  %cmp = icmp eq i32 %4, 1, !dbg !634
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !635

if.then1:                                         ; preds = %if.end
  %5 = load i8*, i8** %buf_dst, align 8, !dbg !636
  %add.ptr = getelementptr i8, i8* %5, i64 3, !dbg !637
  store i8* %add.ptr, i8** %buf_dst, align 8, !dbg !638
  br label %if.end2, !dbg !639

if.end2:                                          ; preds = %if.then1, %if.end
  br label %while.cond, !dbg !640

while.cond:                                       ; preds = %if.end120, %if.end2
  %6 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !641
  %data_type = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %6, i32 0, i32 0, !dbg !642
  %7 = load i32, i32* %data_type, align 8, !dbg !642
  %cmp3 = icmp ne i32 %7, 0, !dbg !643
  br i1 %cmp3, label %while.body, label %while.end, !dbg !640

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %in_c_struct.addr, align 8, !dbg !644
  %9 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !646
  %offset = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %9, i32 0, i32 5, !dbg !647
  %10 = load i32, i32* %offset, align 4, !dbg !647
  %idx.ext = zext i32 %10 to i64, !dbg !648
  %add.ptr4 = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !648
  store i8* %add.ptr4, i8** %buf_src, align 8, !dbg !649
  %11 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !650
  %tlv_type5 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %11, i32 0, i32 4, !dbg !651
  %12 = load i8, i8* %tlv_type5, align 8, !dbg !651
  store i8 %12, i8* %tlv_type, align 1, !dbg !652
  %13 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !653
  %array_type = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %13, i32 0, i32 3, !dbg !655
  %14 = load i32, i32* %array_type, align 4, !dbg !655
  %cmp6 = icmp eq i32 %14, 0, !dbg !656
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !657

if.then7:                                         ; preds = %while.body
  store i32 1, i32* %data_len_value, align 4, !dbg !658
  br label %if.end18, !dbg !660

if.else:                                          ; preds = %while.body
  %15 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !661
  %array_type8 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %15, i32 0, i32 3, !dbg !663
  %16 = load i32, i32* %array_type8, align 4, !dbg !663
  %cmp9 = icmp eq i32 %16, 1, !dbg !664
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !665

if.then10:                                        ; preds = %if.else
  %17 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !666
  %elem_len = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %17, i32 0, i32 1, !dbg !668
  %18 = load i32, i32* %elem_len, align 4, !dbg !668
  store i32 %18, i32* %data_len_value, align 4, !dbg !669
  br label %if.end17, !dbg !670

if.else11:                                        ; preds = %if.else
  %19 = load i32, i32* %data_len_value, align 4, !dbg !671
  %cmp12 = icmp ule i32 %19, 0, !dbg !673
  br i1 %cmp12, label %if.then15, label %lor.lhs.false, !dbg !674

lor.lhs.false:                                    ; preds = %if.else11
  %20 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !675
  %elem_len13 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %20, i32 0, i32 1, !dbg !676
  %21 = load i32, i32* %elem_len13, align 4, !dbg !676
  %22 = load i32, i32* %data_len_value, align 4, !dbg !677
  %cmp14 = icmp ult i32 %21, %22, !dbg !678
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !679

if.then15:                                        ; preds = %lor.lhs.false, %if.else11
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.qmi_encode, i64 0, i64 0)) #9, !dbg !680
  store i32 -22, i32* %retval, align 4, !dbg !682
  br label %return, !dbg !682

if.end16:                                         ; preds = %lor.lhs.false
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then10
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then7
  %23 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !683
  %data_type19 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %23, i32 0, i32 0, !dbg !684
  %24 = load i32, i32* %data_type19, align 8, !dbg !684
  switch i32 %24, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb27
    i32 3, label %sw.bb53
    i32 4, label %sw.bb53
    i32 5, label %sw.bb53
    i32 6, label %sw.bb53
    i32 7, label %sw.bb53
    i32 8, label %sw.bb53
    i32 9, label %sw.bb75
    i32 10, label %sw.bb89
  ], !dbg !685

sw.bb:                                            ; preds = %if.end18
  %25 = load i8*, i8** %buf_src, align 8, !dbg !686
  %call20 = call i32 @qmi_encode_basic_elem(i8* %opt_flag_value, i8* %25, i32 1, i32 1) #8, !dbg !688
  store i32 %call20, i32* %rc, align 4, !dbg !689
  %26 = load i8, i8* %opt_flag_value, align 1, !dbg !690
  %tobool21 = icmp ne i8 %26, 0, !dbg !690
  br i1 %tobool21, label %if.then22, label %if.else24, !dbg !692

if.then22:                                        ; preds = %sw.bb
  %27 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !693
  %add.ptr23 = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %27, i64 1, !dbg !694
  store %struct.qmi_elem_info* %add.ptr23, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !695
  br label %if.end26, !dbg !696

if.else24:                                        ; preds = %sw.bb
  %28 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !697
  %29 = load i32, i32* %enc_level.addr, align 4, !dbg !698
  %call25 = call %struct.qmi_elem_info* @skip_to_next_elem(%struct.qmi_elem_info* %28, i32 %29) #8, !dbg !699
  store %struct.qmi_elem_info* %call25, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !700
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then22
  br label %sw.epilog, !dbg !701

sw.bb27:                                          ; preds = %if.end18
  %30 = bitcast i32* %data_len_value to i8*, !dbg !702
  %31 = load i8*, i8** %buf_src, align 8, !dbg !703
  %32 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !704
  %elem_size = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %32, i32 0, i32 2, !dbg !705
  %33 = load i32, i32* %elem_size, align 8, !dbg !705
  %conv = zext i32 %33 to i64, !dbg !704
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 1 %31, i64 %conv, i1 false), !dbg !702
  %34 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !706
  %elem_size28 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %34, i32 0, i32 2, !dbg !707
  %35 = load i32, i32* %elem_size28, align 8, !dbg !707
  %conv29 = zext i32 %35 to i64, !dbg !706
  %cmp30 = icmp eq i64 %conv29, 1, !dbg !708
  %36 = zext i1 %cmp30 to i64, !dbg !706
  %cond = select i1 %cmp30, i64 1, i64 2, !dbg !706
  %conv32 = trunc i64 %cond to i32, !dbg !706
  store i32 %conv32, i32* %data_len_sz, align 4, !dbg !709
  %37 = load i32, i32* %data_len_sz, align 4, !dbg !710
  %38 = load i32, i32* %encoded_bytes, align 4, !dbg !712
  %add = add i32 %37, %38, !dbg !713
  %conv33 = zext i32 %add to i64, !dbg !710
  %add34 = add i64 %conv33, 2, !dbg !714
  %add35 = add i64 %add34, 1, !dbg !715
  %39 = load i32, i32* %out_buf_len.addr, align 4, !dbg !716
  %conv36 = zext i32 %39 to i64, !dbg !716
  %cmp37 = icmp ugt i64 %add35, %conv36, !dbg !717
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !718

if.then39:                                        ; preds = %sw.bb27
  %call40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.qmi_encode, i64 0, i64 0)) #9, !dbg !719
  store i32 -525, i32* %retval, align 4, !dbg !721
  br label %return, !dbg !721

if.end41:                                         ; preds = %sw.bb27
  %40 = load i8*, i8** %buf_dst, align 8, !dbg !722
  %41 = bitcast i32* %data_len_value to i8*, !dbg !723
  %42 = load i32, i32* %data_len_sz, align 4, !dbg !724
  %call42 = call i32 @qmi_encode_basic_elem(i8* %40, i8* %41, i32 1, i32 %42) #8, !dbg !725
  store i32 %call42, i32* %rc, align 4, !dbg !726
  br label %do.body, !dbg !727

do.body:                                          ; preds = %if.end41
  %43 = load i8*, i8** %buf_dst, align 8, !dbg !728
  %44 = load i32, i32* %rc, align 4, !dbg !728
  %idx.ext43 = sext i32 %44 to i64, !dbg !728
  %add.ptr44 = getelementptr i8, i8* %43, i64 %idx.ext43, !dbg !728
  store i8* %add.ptr44, i8** %buf_dst, align 8, !dbg !728
  %45 = load i32, i32* %rc, align 4, !dbg !728
  %46 = load i32, i32* %encoded_bytes, align 4, !dbg !728
  %add45 = add i32 %46, %45, !dbg !728
  store i32 %add45, i32* %encoded_bytes, align 4, !dbg !728
  %47 = load i32, i32* %rc, align 4, !dbg !728
  %48 = load i32, i32* %tlv_len, align 4, !dbg !728
  %add46 = add i32 %48, %47, !dbg !728
  store i32 %add46, i32* %tlv_len, align 4, !dbg !728
  %49 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !728
  %add.ptr47 = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %49, i64 1, !dbg !728
  store %struct.qmi_elem_info* %add.ptr47, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !728
  store i32 1, i32* %encode_tlv, align 4, !dbg !728
  br label %do.end, !dbg !728

do.end:                                           ; preds = %do.body
  %50 = load i32, i32* %data_len_value, align 4, !dbg !730
  %tobool48 = icmp ne i32 %50, 0, !dbg !730
  br i1 %tobool48, label %if.else51, label %if.then49, !dbg !732

if.then49:                                        ; preds = %do.end
  %51 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !733
  %52 = load i32, i32* %enc_level.addr, align 4, !dbg !734
  %call50 = call %struct.qmi_elem_info* @skip_to_next_elem(%struct.qmi_elem_info* %51, i32 %52) #8, !dbg !735
  store %struct.qmi_elem_info* %call50, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !736
  br label %if.end52, !dbg !737

if.else51:                                        ; preds = %do.end
  store i32 0, i32* %encode_tlv, align 4, !dbg !738
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then49
  br label %sw.epilog, !dbg !739

sw.bb53:                                          ; preds = %if.end18, %if.end18, %if.end18, %if.end18, %if.end18, %if.end18
  %53 = load i32, i32* %data_len_value, align 4, !dbg !740
  %54 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !742
  %elem_size54 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %54, i32 0, i32 2, !dbg !743
  %55 = load i32, i32* %elem_size54, align 8, !dbg !743
  %mul = mul i32 %53, %55, !dbg !744
  %56 = load i32, i32* %encoded_bytes, align 4, !dbg !745
  %add55 = add i32 %mul, %56, !dbg !746
  %conv56 = zext i32 %add55 to i64, !dbg !747
  %add57 = add i64 %conv56, 2, !dbg !748
  %add58 = add i64 %add57, 1, !dbg !749
  %57 = load i32, i32* %out_buf_len.addr, align 4, !dbg !750
  %conv59 = zext i32 %57 to i64, !dbg !750
  %cmp60 = icmp ugt i64 %add58, %conv59, !dbg !751
  br i1 %cmp60, label %if.then62, label %if.end65, !dbg !752

if.then62:                                        ; preds = %sw.bb53
  %58 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !753
  %data_type63 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %58, i32 0, i32 0, !dbg !753
  %59 = load i32, i32* %data_type63, align 8, !dbg !753
  %call64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.qmi_encode, i64 0, i64 0), i32 %59) #9, !dbg !753
  store i32 -525, i32* %retval, align 4, !dbg !755
  br label %return, !dbg !755

if.end65:                                         ; preds = %sw.bb53
  %60 = load i8*, i8** %buf_dst, align 8, !dbg !756
  %61 = load i8*, i8** %buf_src, align 8, !dbg !757
  %62 = load i32, i32* %data_len_value, align 4, !dbg !758
  %63 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !759
  %elem_size66 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %63, i32 0, i32 2, !dbg !760
  %64 = load i32, i32* %elem_size66, align 8, !dbg !760
  %call67 = call i32 @qmi_encode_basic_elem(i8* %60, i8* %61, i32 %62, i32 %64) #8, !dbg !761
  store i32 %call67, i32* %rc, align 4, !dbg !762
  br label %do.body68, !dbg !763

do.body68:                                        ; preds = %if.end65
  %65 = load i8*, i8** %buf_dst, align 8, !dbg !764
  %66 = load i32, i32* %rc, align 4, !dbg !764
  %idx.ext69 = sext i32 %66 to i64, !dbg !764
  %add.ptr70 = getelementptr i8, i8* %65, i64 %idx.ext69, !dbg !764
  store i8* %add.ptr70, i8** %buf_dst, align 8, !dbg !764
  %67 = load i32, i32* %rc, align 4, !dbg !764
  %68 = load i32, i32* %encoded_bytes, align 4, !dbg !764
  %add71 = add i32 %68, %67, !dbg !764
  store i32 %add71, i32* %encoded_bytes, align 4, !dbg !764
  %69 = load i32, i32* %rc, align 4, !dbg !764
  %70 = load i32, i32* %tlv_len, align 4, !dbg !764
  %add72 = add i32 %70, %69, !dbg !764
  store i32 %add72, i32* %tlv_len, align 4, !dbg !764
  %71 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !764
  %add.ptr73 = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %71, i64 1, !dbg !764
  store %struct.qmi_elem_info* %add.ptr73, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !764
  store i32 1, i32* %encode_tlv, align 4, !dbg !764
  br label %do.end74, !dbg !764

do.end74:                                         ; preds = %do.body68
  br label %sw.epilog, !dbg !766

sw.bb75:                                          ; preds = %if.end18
  %72 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !767
  %73 = load i8*, i8** %buf_dst, align 8, !dbg !768
  %74 = load i8*, i8** %buf_src, align 8, !dbg !769
  %75 = load i32, i32* %data_len_value, align 4, !dbg !770
  %76 = load i32, i32* %out_buf_len.addr, align 4, !dbg !771
  %77 = load i32, i32* %encoded_bytes, align 4, !dbg !772
  %sub = sub i32 %76, %77, !dbg !773
  %78 = load i32, i32* %enc_level.addr, align 4, !dbg !774
  %add76 = add i32 %78, 1, !dbg !775
  %call77 = call i32 @qmi_encode_struct_elem(%struct.qmi_elem_info* %72, i8* %73, i8* %74, i32 %75, i32 %sub, i32 %add76) #8, !dbg !776
  store i32 %call77, i32* %rc, align 4, !dbg !777
  %79 = load i32, i32* %rc, align 4, !dbg !778
  %cmp78 = icmp slt i32 %79, 0, !dbg !780
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !781

if.then80:                                        ; preds = %sw.bb75
  %80 = load i32, i32* %rc, align 4, !dbg !782
  store i32 %80, i32* %retval, align 4, !dbg !783
  br label %return, !dbg !783

if.end81:                                         ; preds = %sw.bb75
  br label %do.body82, !dbg !784

do.body82:                                        ; preds = %if.end81
  %81 = load i8*, i8** %buf_dst, align 8, !dbg !785
  %82 = load i32, i32* %rc, align 4, !dbg !785
  %idx.ext83 = sext i32 %82 to i64, !dbg !785
  %add.ptr84 = getelementptr i8, i8* %81, i64 %idx.ext83, !dbg !785
  store i8* %add.ptr84, i8** %buf_dst, align 8, !dbg !785
  %83 = load i32, i32* %rc, align 4, !dbg !785
  %84 = load i32, i32* %encoded_bytes, align 4, !dbg !785
  %add85 = add i32 %84, %83, !dbg !785
  store i32 %add85, i32* %encoded_bytes, align 4, !dbg !785
  %85 = load i32, i32* %rc, align 4, !dbg !785
  %86 = load i32, i32* %tlv_len, align 4, !dbg !785
  %add86 = add i32 %86, %85, !dbg !785
  store i32 %add86, i32* %tlv_len, align 4, !dbg !785
  %87 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !785
  %add.ptr87 = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %87, i64 1, !dbg !785
  store %struct.qmi_elem_info* %add.ptr87, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !785
  store i32 1, i32* %encode_tlv, align 4, !dbg !785
  br label %do.end88, !dbg !785

do.end88:                                         ; preds = %do.body82
  br label %sw.epilog, !dbg !787

sw.bb89:                                          ; preds = %if.end18
  %88 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !788
  %89 = load i8*, i8** %buf_dst, align 8, !dbg !789
  %90 = load i8*, i8** %buf_src, align 8, !dbg !790
  %91 = load i32, i32* %out_buf_len.addr, align 4, !dbg !791
  %92 = load i32, i32* %encoded_bytes, align 4, !dbg !792
  %sub90 = sub i32 %91, %92, !dbg !793
  %93 = load i32, i32* %enc_level.addr, align 4, !dbg !794
  %call91 = call i32 @qmi_encode_string_elem(%struct.qmi_elem_info* %88, i8* %89, i8* %90, i32 %sub90, i32 %93) #8, !dbg !795
  store i32 %call91, i32* %rc, align 4, !dbg !796
  %94 = load i32, i32* %rc, align 4, !dbg !797
  %cmp92 = icmp slt i32 %94, 0, !dbg !799
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !800

if.then94:                                        ; preds = %sw.bb89
  %95 = load i32, i32* %rc, align 4, !dbg !801
  store i32 %95, i32* %retval, align 4, !dbg !802
  br label %return, !dbg !802

if.end95:                                         ; preds = %sw.bb89
  br label %do.body96, !dbg !803

do.body96:                                        ; preds = %if.end95
  %96 = load i8*, i8** %buf_dst, align 8, !dbg !804
  %97 = load i32, i32* %rc, align 4, !dbg !804
  %idx.ext97 = sext i32 %97 to i64, !dbg !804
  %add.ptr98 = getelementptr i8, i8* %96, i64 %idx.ext97, !dbg !804
  store i8* %add.ptr98, i8** %buf_dst, align 8, !dbg !804
  %98 = load i32, i32* %rc, align 4, !dbg !804
  %99 = load i32, i32* %encoded_bytes, align 4, !dbg !804
  %add99 = add i32 %99, %98, !dbg !804
  store i32 %add99, i32* %encoded_bytes, align 4, !dbg !804
  %100 = load i32, i32* %rc, align 4, !dbg !804
  %101 = load i32, i32* %tlv_len, align 4, !dbg !804
  %add100 = add i32 %101, %100, !dbg !804
  store i32 %add100, i32* %tlv_len, align 4, !dbg !804
  %102 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !804
  %add.ptr101 = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %102, i64 1, !dbg !804
  store %struct.qmi_elem_info* %add.ptr101, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !804
  store i32 1, i32* %encode_tlv, align 4, !dbg !804
  br label %do.end102, !dbg !804

do.end102:                                        ; preds = %do.body96
  br label %sw.epilog, !dbg !806

sw.default:                                       ; preds = %if.end18
  %call103 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.qmi_encode, i64 0, i64 0)) #9, !dbg !807
  store i32 -22, i32* %retval, align 4, !dbg !808
  br label %return, !dbg !808

sw.epilog:                                        ; preds = %do.end102, %do.end88, %do.end74, %if.end52, %if.end26
  %103 = load i32, i32* %encode_tlv, align 4, !dbg !809
  %tobool104 = icmp ne i32 %103, 0, !dbg !809
  br i1 %tobool104, label %land.lhs.true, label %if.end120, !dbg !811

land.lhs.true:                                    ; preds = %sw.epilog
  %104 = load i32, i32* %enc_level.addr, align 4, !dbg !812
  %cmp105 = icmp eq i32 %104, 1, !dbg !813
  br i1 %cmp105, label %if.then107, label %if.end120, !dbg !814

if.then107:                                       ; preds = %land.lhs.true
  br label %do.body108, !dbg !815

do.body108:                                       ; preds = %if.then107
  %105 = load i8, i8* %tlv_type, align 1, !dbg !817
  %106 = load i8*, i8** %tlv_pointer, align 8, !dbg !817
  %incdec.ptr = getelementptr i8, i8* %106, i32 1, !dbg !817
  store i8* %incdec.ptr, i8** %tlv_pointer, align 8, !dbg !817
  store i8 %105, i8* %106, align 1, !dbg !817
  %107 = load i32, i32* %tlv_len, align 4, !dbg !817
  %and = and i32 %107, 255, !dbg !817
  %conv109 = trunc i32 %and to i8, !dbg !817
  %108 = load i8*, i8** %tlv_pointer, align 8, !dbg !817
  %incdec.ptr110 = getelementptr i8, i8* %108, i32 1, !dbg !817
  store i8* %incdec.ptr110, i8** %tlv_pointer, align 8, !dbg !817
  store i8 %conv109, i8* %108, align 1, !dbg !817
  %109 = load i32, i32* %tlv_len, align 4, !dbg !817
  %shr = lshr i32 %109, 8, !dbg !817
  %and111 = and i32 %shr, 255, !dbg !817
  %conv112 = trunc i32 %and111 to i8, !dbg !817
  %110 = load i8*, i8** %tlv_pointer, align 8, !dbg !817
  %incdec.ptr113 = getelementptr i8, i8* %110, i32 1, !dbg !817
  store i8* %incdec.ptr113, i8** %tlv_pointer, align 8, !dbg !817
  store i8 %conv112, i8* %110, align 1, !dbg !817
  br label %do.end114, !dbg !817

do.end114:                                        ; preds = %do.body108
  %111 = load i32, i32* %encoded_bytes, align 4, !dbg !819
  %conv115 = zext i32 %111 to i64, !dbg !819
  %add116 = add i64 %conv115, 3, !dbg !819
  %conv117 = trunc i64 %add116 to i32, !dbg !819
  store i32 %conv117, i32* %encoded_bytes, align 4, !dbg !819
  %112 = load i8*, i8** %buf_dst, align 8, !dbg !820
  store i8* %112, i8** %tlv_pointer, align 8, !dbg !821
  store i32 0, i32* %tlv_len, align 4, !dbg !822
  %113 = load i8*, i8** %buf_dst, align 8, !dbg !823
  %add.ptr118 = getelementptr i8, i8* %113, i64 2, !dbg !824
  %add.ptr119 = getelementptr i8, i8* %add.ptr118, i64 1, !dbg !825
  store i8* %add.ptr119, i8** %buf_dst, align 8, !dbg !826
  store i32 0, i32* %encode_tlv, align 4, !dbg !827
  br label %if.end120, !dbg !828

if.end120:                                        ; preds = %do.end114, %land.lhs.true, %sw.epilog
  br label %while.cond, !dbg !640, !llvm.loop !829

while.end:                                        ; preds = %while.cond
  %114 = load i32, i32* %encoded_bytes, align 4, !dbg !831
  store i32 %114, i32* %retval, align 4, !dbg !832
  br label %return, !dbg !832

return:                                           ; preds = %while.end, %sw.default, %if.then94, %if.then80, %if.then62, %if.then39, %if.then15, %if.then
  %115 = load i32, i32* %retval, align 4, !dbg !833
  ret i32 %115, !dbg !833
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @qmi_decode_message(i8* %buf, i64 %len, %struct.qmi_elem_info* %ei, i8* %c_struct) #0 !dbg !834 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ei.addr = alloca %struct.qmi_elem_info*, align 8
  %c_struct.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !837, metadata !DIExpression()), !dbg !838
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !839, metadata !DIExpression()), !dbg !840
  store %struct.qmi_elem_info* %ei, %struct.qmi_elem_info** %ei.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %ei.addr, metadata !841, metadata !DIExpression()), !dbg !842
  store i8* %c_struct, i8** %c_struct.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %c_struct.addr, metadata !843, metadata !DIExpression()), !dbg !844
  %0 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei.addr, align 8, !dbg !845
  %tobool = icmp ne %struct.qmi_elem_info* %0, null, !dbg !845
  br i1 %tobool, label %if.end, label %if.then, !dbg !847

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !848
  br label %return, !dbg !848

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %c_struct.addr, align 8, !dbg !849
  %tobool1 = icmp ne i8* %1, null, !dbg !849
  br i1 %tobool1, label %lor.lhs.false, label %if.then5, !dbg !851

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !852
  %tobool2 = icmp ne i8* %2, null, !dbg !852
  br i1 %tobool2, label %lor.lhs.false3, label %if.then5, !dbg !853

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* %len.addr, align 8, !dbg !854
  %tobool4 = icmp ne i64 %3, 0, !dbg !854
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !855

if.then5:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !856
  br label %return, !dbg !856

if.end6:                                          ; preds = %lor.lhs.false3
  %4 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei.addr, align 8, !dbg !857
  %5 = load i8*, i8** %c_struct.addr, align 8, !dbg !858
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !859
  %add.ptr = getelementptr i8, i8* %6, i64 7, !dbg !860
  %7 = load i64, i64* %len.addr, align 8, !dbg !861
  %sub = sub i64 %7, 7, !dbg !862
  %conv = trunc i64 %sub to i32, !dbg !861
  %call = call i32 @qmi_decode(%struct.qmi_elem_info* %4, i8* %5, i8* %add.ptr, i32 %conv, i32 1) #8, !dbg !863
  store i32 %call, i32* %retval, align 4, !dbg !864
  br label %return, !dbg !864

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !865
  ret i32 %8, !dbg !865
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @qmi_decode(%struct.qmi_elem_info* %ei_array, i8* %out_c_struct, i8* %in_buf, i32 %in_buf_len, i32 %dec_level) #0 !dbg !866 {
entry:
  %retval = alloca i32, align 4
  %ei_array.addr = alloca %struct.qmi_elem_info*, align 8
  %out_c_struct.addr = alloca i8*, align 8
  %in_buf.addr = alloca i8*, align 8
  %in_buf_len.addr = alloca i32, align 4
  %dec_level.addr = alloca i32, align 4
  %temp_ei = alloca %struct.qmi_elem_info*, align 8
  %opt_flag_value = alloca i8, align 1
  %data_len_value = alloca i32, align 4
  %data_len_sz = alloca i32, align 4
  %buf_dst = alloca i8*, align 8
  %tlv_pointer = alloca i8*, align 8
  %tlv_len = alloca i32, align 4
  %tlv_type = alloca i32, align 4
  %decoded_bytes = alloca i32, align 4
  %buf_src = alloca i8*, align 8
  %rc = alloca i32, align 4
  store %struct.qmi_elem_info* %ei_array, %struct.qmi_elem_info** %ei_array.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %ei_array.addr, metadata !867, metadata !DIExpression()), !dbg !868
  store i8* %out_c_struct, i8** %out_c_struct.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %out_c_struct.addr, metadata !869, metadata !DIExpression()), !dbg !870
  store i8* %in_buf, i8** %in_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %in_buf.addr, metadata !871, metadata !DIExpression()), !dbg !872
  store i32 %in_buf_len, i32* %in_buf_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %in_buf_len.addr, metadata !873, metadata !DIExpression()), !dbg !874
  store i32 %dec_level, i32* %dec_level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dec_level.addr, metadata !875, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %temp_ei, metadata !877, metadata !DIExpression()), !dbg !878
  %0 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array.addr, align 8, !dbg !879
  store %struct.qmi_elem_info* %0, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !878
  call void @llvm.dbg.declare(metadata i8* %opt_flag_value, metadata !880, metadata !DIExpression()), !dbg !881
  store i8 1, i8* %opt_flag_value, align 1, !dbg !881
  call void @llvm.dbg.declare(metadata i32* %data_len_value, metadata !882, metadata !DIExpression()), !dbg !883
  store i32 0, i32* %data_len_value, align 4, !dbg !883
  call void @llvm.dbg.declare(metadata i32* %data_len_sz, metadata !884, metadata !DIExpression()), !dbg !885
  store i32 0, i32* %data_len_sz, align 4, !dbg !885
  call void @llvm.dbg.declare(metadata i8** %buf_dst, metadata !886, metadata !DIExpression()), !dbg !887
  %1 = load i8*, i8** %out_c_struct.addr, align 8, !dbg !888
  store i8* %1, i8** %buf_dst, align 8, !dbg !887
  call void @llvm.dbg.declare(metadata i8** %tlv_pointer, metadata !889, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.declare(metadata i32* %tlv_len, metadata !893, metadata !DIExpression()), !dbg !894
  store i32 0, i32* %tlv_len, align 4, !dbg !894
  call void @llvm.dbg.declare(metadata i32* %tlv_type, metadata !895, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.declare(metadata i32* %decoded_bytes, metadata !897, metadata !DIExpression()), !dbg !898
  store i32 0, i32* %decoded_bytes, align 4, !dbg !898
  call void @llvm.dbg.declare(metadata i8** %buf_src, metadata !899, metadata !DIExpression()), !dbg !900
  %2 = load i8*, i8** %in_buf.addr, align 8, !dbg !901
  store i8* %2, i8** %buf_src, align 8, !dbg !900
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !902, metadata !DIExpression()), !dbg !903
  br label %while.cond, !dbg !904

while.cond:                                       ; preds = %sw.epilog, %do.end20, %entry
  %3 = load i32, i32* %decoded_bytes, align 4, !dbg !905
  %4 = load i32, i32* %in_buf_len.addr, align 4, !dbg !906
  %cmp = icmp ult i32 %3, %4, !dbg !907
  br i1 %cmp, label %while.body, label %while.end, !dbg !904

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %dec_level.addr, align 4, !dbg !908
  %cmp1 = icmp sge i32 %5, 2, !dbg !911
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !912

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !913
  %data_type = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %6, i32 0, i32 0, !dbg !914
  %7 = load i32, i32* %data_type, align 8, !dbg !914
  %cmp2 = icmp eq i32 %7, 0, !dbg !915
  br i1 %cmp2, label %if.then, label %if.end, !dbg !916

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* %decoded_bytes, align 4, !dbg !917
  store i32 %8, i32* %retval, align 4, !dbg !918
  br label %return, !dbg !918

if.end:                                           ; preds = %land.lhs.true, %while.body
  %9 = load i32, i32* %dec_level.addr, align 4, !dbg !919
  %cmp3 = icmp eq i32 %9, 1, !dbg !921
  br i1 %cmp3, label %if.then4, label %if.else23, !dbg !922

if.then4:                                         ; preds = %if.end
  %10 = load i8*, i8** %buf_src, align 8, !dbg !923
  store i8* %10, i8** %tlv_pointer, align 8, !dbg !925
  br label %do.body, !dbg !926

do.body:                                          ; preds = %if.then4
  %11 = load i8*, i8** %tlv_pointer, align 8, !dbg !927
  %incdec.ptr = getelementptr i8, i8* %11, i32 1, !dbg !927
  store i8* %incdec.ptr, i8** %tlv_pointer, align 8, !dbg !927
  %12 = load i8, i8* %11, align 1, !dbg !927
  %conv = zext i8 %12 to i32, !dbg !927
  store i32 %conv, i32* %tlv_type, align 4, !dbg !927
  %13 = load i8*, i8** %tlv_pointer, align 8, !dbg !927
  %incdec.ptr5 = getelementptr i8, i8* %13, i32 1, !dbg !927
  store i8* %incdec.ptr5, i8** %tlv_pointer, align 8, !dbg !927
  %14 = load i8, i8* %13, align 1, !dbg !927
  %conv6 = zext i8 %14 to i32, !dbg !927
  store i32 %conv6, i32* %tlv_len, align 4, !dbg !927
  %15 = load i8*, i8** %tlv_pointer, align 8, !dbg !927
  %16 = load i8, i8* %15, align 1, !dbg !927
  %conv7 = zext i8 %16 to i32, !dbg !927
  %shl = shl i32 %conv7, 8, !dbg !927
  %17 = load i32, i32* %tlv_len, align 4, !dbg !927
  %or = or i32 %17, %shl, !dbg !927
  store i32 %or, i32* %tlv_len, align 4, !dbg !927
  br label %do.end, !dbg !927

do.end:                                           ; preds = %do.body
  %18 = load i8*, i8** %buf_src, align 8, !dbg !929
  %add.ptr = getelementptr i8, i8* %18, i64 3, !dbg !929
  store i8* %add.ptr, i8** %buf_src, align 8, !dbg !929
  %19 = load i32, i32* %decoded_bytes, align 4, !dbg !930
  %conv8 = zext i32 %19 to i64, !dbg !930
  %add = add i64 %conv8, 3, !dbg !930
  %conv9 = trunc i64 %add to i32, !dbg !930
  store i32 %conv9, i32* %decoded_bytes, align 4, !dbg !930
  %20 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array.addr, align 8, !dbg !931
  %21 = load i32, i32* %tlv_type, align 4, !dbg !932
  %call = call %struct.qmi_elem_info* @find_ei(%struct.qmi_elem_info* %20, i32 %21) #8, !dbg !933
  store %struct.qmi_elem_info* %call, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !934
  %22 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !935
  %tobool = icmp ne %struct.qmi_elem_info* %22, null, !dbg !935
  br i1 %tobool, label %if.else, label %land.lhs.true10, !dbg !937

land.lhs.true10:                                  ; preds = %do.end
  %23 = load i32, i32* %tlv_type, align 4, !dbg !938
  %cmp11 = icmp ult i32 %23, 16, !dbg !939
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !940

if.then13:                                        ; preds = %land.lhs.true10
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.qmi_decode, i64 0, i64 0)) #9, !dbg !941
  store i32 -22, i32* %retval, align 4, !dbg !943
  br label %return, !dbg !943

if.else:                                          ; preds = %land.lhs.true10, %do.end
  %24 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !944
  %tobool15 = icmp ne %struct.qmi_elem_info* %24, null, !dbg !944
  br i1 %tobool15, label %if.end21, label %if.then16, !dbg !946

if.then16:                                        ; preds = %if.else
  br label %do.body17, !dbg !947

do.body17:                                        ; preds = %if.then16
  %25 = load i8*, i8** %buf_src, align 8, !dbg !949
  %26 = load i32, i32* %tlv_len, align 4, !dbg !949
  %idx.ext = zext i32 %26 to i64, !dbg !949
  %add.ptr18 = getelementptr i8, i8* %25, i64 %idx.ext, !dbg !949
  store i8* %add.ptr18, i8** %buf_src, align 8, !dbg !949
  %27 = load i32, i32* %tlv_len, align 4, !dbg !949
  %28 = load i32, i32* %decoded_bytes, align 4, !dbg !949
  %add19 = add i32 %28, %27, !dbg !949
  store i32 %add19, i32* %decoded_bytes, align 4, !dbg !949
  br label %do.end20, !dbg !949

do.end20:                                         ; preds = %do.body17
  br label %while.cond, !dbg !951, !llvm.loop !952

if.end21:                                         ; preds = %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  br label %if.end24, !dbg !954

if.else23:                                        ; preds = %if.end
  %29 = load i32, i32* %in_buf_len.addr, align 4, !dbg !955
  %30 = load i32, i32* %decoded_bytes, align 4, !dbg !957
  %sub = sub i32 %29, %30, !dbg !958
  store i32 %sub, i32* %tlv_len, align 4, !dbg !959
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.end22
  %31 = load i8*, i8** %out_c_struct.addr, align 8, !dbg !960
  %32 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !961
  %offset = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %32, i32 0, i32 5, !dbg !962
  %33 = load i32, i32* %offset, align 4, !dbg !962
  %idx.ext25 = zext i32 %33 to i64, !dbg !963
  %add.ptr26 = getelementptr i8, i8* %31, i64 %idx.ext25, !dbg !963
  store i8* %add.ptr26, i8** %buf_dst, align 8, !dbg !964
  %34 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !965
  %data_type27 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %34, i32 0, i32 0, !dbg !967
  %35 = load i32, i32* %data_type27, align 8, !dbg !967
  %cmp28 = icmp eq i32 %35, 1, !dbg !968
  br i1 %cmp28, label %if.then30, label %if.end35, !dbg !969

if.then30:                                        ; preds = %if.end24
  %36 = load i8*, i8** %buf_dst, align 8, !dbg !970
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %opt_flag_value, i64 1, i1 false), !dbg !972
  %37 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !973
  %add.ptr31 = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %37, i64 1, !dbg !974
  store %struct.qmi_elem_info* %add.ptr31, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !975
  %38 = load i8*, i8** %out_c_struct.addr, align 8, !dbg !976
  %39 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !977
  %offset32 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %39, i32 0, i32 5, !dbg !978
  %40 = load i32, i32* %offset32, align 4, !dbg !978
  %idx.ext33 = zext i32 %40 to i64, !dbg !979
  %add.ptr34 = getelementptr i8, i8* %38, i64 %idx.ext33, !dbg !979
  store i8* %add.ptr34, i8** %buf_dst, align 8, !dbg !980
  br label %if.end35, !dbg !981

if.end35:                                         ; preds = %if.then30, %if.end24
  %41 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !982
  %data_type36 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %41, i32 0, i32 0, !dbg !984
  %42 = load i32, i32* %data_type36, align 8, !dbg !984
  %cmp37 = icmp eq i32 %42, 2, !dbg !985
  br i1 %cmp37, label %if.then39, label %if.end55, !dbg !986

if.then39:                                        ; preds = %if.end35
  %43 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !987
  %elem_size = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %43, i32 0, i32 2, !dbg !989
  %44 = load i32, i32* %elem_size, align 8, !dbg !989
  %conv40 = zext i32 %44 to i64, !dbg !987
  %cmp41 = icmp eq i64 %conv40, 1, !dbg !990
  %45 = zext i1 %cmp41 to i64, !dbg !987
  %cond = select i1 %cmp41, i64 1, i64 2, !dbg !987
  %conv43 = trunc i64 %cond to i32, !dbg !987
  store i32 %conv43, i32* %data_len_sz, align 4, !dbg !991
  %46 = bitcast i32* %data_len_value to i8*, !dbg !992
  %47 = load i8*, i8** %buf_src, align 8, !dbg !993
  %48 = load i32, i32* %data_len_sz, align 4, !dbg !994
  %call44 = call i32 @qmi_decode_basic_elem(i8* %46, i8* %47, i32 1, i32 %48) #8, !dbg !995
  store i32 %call44, i32* %rc, align 4, !dbg !996
  %49 = load i8*, i8** %buf_dst, align 8, !dbg !997
  %50 = bitcast i32* %data_len_value to i8*, !dbg !998
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 4 %50, i64 4, i1 false), !dbg !998
  %51 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !999
  %add.ptr45 = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %51, i64 1, !dbg !1000
  store %struct.qmi_elem_info* %add.ptr45, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1001
  %52 = load i8*, i8** %out_c_struct.addr, align 8, !dbg !1002
  %53 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1003
  %offset46 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %53, i32 0, i32 5, !dbg !1004
  %54 = load i32, i32* %offset46, align 4, !dbg !1004
  %idx.ext47 = zext i32 %54 to i64, !dbg !1005
  %add.ptr48 = getelementptr i8, i8* %52, i64 %idx.ext47, !dbg !1005
  store i8* %add.ptr48, i8** %buf_dst, align 8, !dbg !1006
  %55 = load i32, i32* %data_len_sz, align 4, !dbg !1007
  %56 = load i32, i32* %tlv_len, align 4, !dbg !1008
  %sub49 = sub i32 %56, %55, !dbg !1008
  store i32 %sub49, i32* %tlv_len, align 4, !dbg !1008
  br label %do.body50, !dbg !1009

do.body50:                                        ; preds = %if.then39
  %57 = load i8*, i8** %buf_src, align 8, !dbg !1010
  %58 = load i32, i32* %rc, align 4, !dbg !1010
  %idx.ext51 = sext i32 %58 to i64, !dbg !1010
  %add.ptr52 = getelementptr i8, i8* %57, i64 %idx.ext51, !dbg !1010
  store i8* %add.ptr52, i8** %buf_src, align 8, !dbg !1010
  %59 = load i32, i32* %rc, align 4, !dbg !1010
  %60 = load i32, i32* %decoded_bytes, align 4, !dbg !1010
  %add53 = add i32 %60, %59, !dbg !1010
  store i32 %add53, i32* %decoded_bytes, align 4, !dbg !1010
  br label %do.end54, !dbg !1010

do.end54:                                         ; preds = %do.body50
  br label %if.end55, !dbg !1012

if.end55:                                         ; preds = %do.end54, %if.end35
  %61 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1013
  %array_type = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %61, i32 0, i32 3, !dbg !1015
  %62 = load i32, i32* %array_type, align 4, !dbg !1015
  %cmp56 = icmp eq i32 %62, 0, !dbg !1016
  br i1 %cmp56, label %if.then58, label %if.else59, !dbg !1017

if.then58:                                        ; preds = %if.end55
  store i32 1, i32* %data_len_value, align 4, !dbg !1018
  br label %if.end73, !dbg !1020

if.else59:                                        ; preds = %if.end55
  %63 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1021
  %array_type60 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %63, i32 0, i32 3, !dbg !1023
  %64 = load i32, i32* %array_type60, align 4, !dbg !1023
  %cmp61 = icmp eq i32 %64, 1, !dbg !1024
  br i1 %cmp61, label %if.then63, label %if.else64, !dbg !1025

if.then63:                                        ; preds = %if.else59
  %65 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1026
  %elem_len = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %65, i32 0, i32 1, !dbg !1028
  %66 = load i32, i32* %elem_len, align 4, !dbg !1028
  store i32 %66, i32* %data_len_value, align 4, !dbg !1029
  br label %if.end72, !dbg !1030

if.else64:                                        ; preds = %if.else59
  %67 = load i32, i32* %data_len_value, align 4, !dbg !1031
  %68 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1033
  %elem_len65 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %68, i32 0, i32 1, !dbg !1034
  %69 = load i32, i32* %elem_len65, align 4, !dbg !1034
  %cmp66 = icmp ugt i32 %67, %69, !dbg !1035
  br i1 %cmp66, label %if.then68, label %if.end71, !dbg !1036

if.then68:                                        ; preds = %if.else64
  %70 = load i32, i32* %data_len_value, align 4, !dbg !1037
  %71 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1037
  %elem_len69 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %71, i32 0, i32 1, !dbg !1037
  %72 = load i32, i32* %elem_len69, align 4, !dbg !1037
  %call70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.qmi_decode, i64 0, i64 0), i32 %70, i32 %72) #9, !dbg !1037
  store i32 -525, i32* %retval, align 4, !dbg !1039
  br label %return, !dbg !1039

if.end71:                                         ; preds = %if.else64
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then63
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then58
  %73 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1040
  %data_type74 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %73, i32 0, i32 0, !dbg !1041
  %74 = load i32, i32* %data_type74, align 8, !dbg !1041
  switch i32 %74, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb82
    i32 10, label %sw.bb94
  ], !dbg !1042

sw.bb:                                            ; preds = %if.end73, %if.end73, %if.end73, %if.end73, %if.end73, %if.end73
  %75 = load i8*, i8** %buf_dst, align 8, !dbg !1043
  %76 = load i8*, i8** %buf_src, align 8, !dbg !1045
  %77 = load i32, i32* %data_len_value, align 4, !dbg !1046
  %78 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1047
  %elem_size75 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %78, i32 0, i32 2, !dbg !1048
  %79 = load i32, i32* %elem_size75, align 8, !dbg !1048
  %call76 = call i32 @qmi_decode_basic_elem(i8* %75, i8* %76, i32 %77, i32 %79) #8, !dbg !1049
  store i32 %call76, i32* %rc, align 4, !dbg !1050
  br label %do.body77, !dbg !1051

do.body77:                                        ; preds = %sw.bb
  %80 = load i8*, i8** %buf_src, align 8, !dbg !1052
  %81 = load i32, i32* %rc, align 4, !dbg !1052
  %idx.ext78 = sext i32 %81 to i64, !dbg !1052
  %add.ptr79 = getelementptr i8, i8* %80, i64 %idx.ext78, !dbg !1052
  store i8* %add.ptr79, i8** %buf_src, align 8, !dbg !1052
  %82 = load i32, i32* %rc, align 4, !dbg !1052
  %83 = load i32, i32* %decoded_bytes, align 4, !dbg !1052
  %add80 = add i32 %83, %82, !dbg !1052
  store i32 %add80, i32* %decoded_bytes, align 4, !dbg !1052
  br label %do.end81, !dbg !1052

do.end81:                                         ; preds = %do.body77
  br label %sw.epilog, !dbg !1054

sw.bb82:                                          ; preds = %if.end73
  %84 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1055
  %85 = load i8*, i8** %buf_dst, align 8, !dbg !1056
  %86 = load i8*, i8** %buf_src, align 8, !dbg !1057
  %87 = load i32, i32* %data_len_value, align 4, !dbg !1058
  %88 = load i32, i32* %tlv_len, align 4, !dbg !1059
  %89 = load i32, i32* %dec_level.addr, align 4, !dbg !1060
  %add83 = add i32 %89, 1, !dbg !1061
  %call84 = call i32 @qmi_decode_struct_elem(%struct.qmi_elem_info* %84, i8* %85, i8* %86, i32 %87, i32 %88, i32 %add83) #8, !dbg !1062
  store i32 %call84, i32* %rc, align 4, !dbg !1063
  %90 = load i32, i32* %rc, align 4, !dbg !1064
  %cmp85 = icmp slt i32 %90, 0, !dbg !1066
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !1067

if.then87:                                        ; preds = %sw.bb82
  %91 = load i32, i32* %rc, align 4, !dbg !1068
  store i32 %91, i32* %retval, align 4, !dbg !1069
  br label %return, !dbg !1069

if.end88:                                         ; preds = %sw.bb82
  br label %do.body89, !dbg !1070

do.body89:                                        ; preds = %if.end88
  %92 = load i8*, i8** %buf_src, align 8, !dbg !1071
  %93 = load i32, i32* %rc, align 4, !dbg !1071
  %idx.ext90 = sext i32 %93 to i64, !dbg !1071
  %add.ptr91 = getelementptr i8, i8* %92, i64 %idx.ext90, !dbg !1071
  store i8* %add.ptr91, i8** %buf_src, align 8, !dbg !1071
  %94 = load i32, i32* %rc, align 4, !dbg !1071
  %95 = load i32, i32* %decoded_bytes, align 4, !dbg !1071
  %add92 = add i32 %95, %94, !dbg !1071
  store i32 %add92, i32* %decoded_bytes, align 4, !dbg !1071
  br label %do.end93, !dbg !1071

do.end93:                                         ; preds = %do.body89
  br label %sw.epilog, !dbg !1073

sw.bb94:                                          ; preds = %if.end73
  %96 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1074
  %97 = load i8*, i8** %buf_dst, align 8, !dbg !1075
  %98 = load i8*, i8** %buf_src, align 8, !dbg !1076
  %99 = load i32, i32* %tlv_len, align 4, !dbg !1077
  %100 = load i32, i32* %dec_level.addr, align 4, !dbg !1078
  %call95 = call i32 @qmi_decode_string_elem(%struct.qmi_elem_info* %96, i8* %97, i8* %98, i32 %99, i32 %100) #8, !dbg !1079
  store i32 %call95, i32* %rc, align 4, !dbg !1080
  %101 = load i32, i32* %rc, align 4, !dbg !1081
  %cmp96 = icmp slt i32 %101, 0, !dbg !1083
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !1084

if.then98:                                        ; preds = %sw.bb94
  %102 = load i32, i32* %rc, align 4, !dbg !1085
  store i32 %102, i32* %retval, align 4, !dbg !1086
  br label %return, !dbg !1086

if.end99:                                         ; preds = %sw.bb94
  br label %do.body100, !dbg !1087

do.body100:                                       ; preds = %if.end99
  %103 = load i8*, i8** %buf_src, align 8, !dbg !1088
  %104 = load i32, i32* %rc, align 4, !dbg !1088
  %idx.ext101 = sext i32 %104 to i64, !dbg !1088
  %add.ptr102 = getelementptr i8, i8* %103, i64 %idx.ext101, !dbg !1088
  store i8* %add.ptr102, i8** %buf_src, align 8, !dbg !1088
  %105 = load i32, i32* %rc, align 4, !dbg !1088
  %106 = load i32, i32* %decoded_bytes, align 4, !dbg !1088
  %add103 = add i32 %106, %105, !dbg !1088
  store i32 %add103, i32* %decoded_bytes, align 4, !dbg !1088
  br label %do.end104, !dbg !1088

do.end104:                                        ; preds = %do.body100
  br label %sw.epilog, !dbg !1090

sw.default:                                       ; preds = %if.end73
  %call105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.qmi_decode, i64 0, i64 0)) #9, !dbg !1091
  store i32 -22, i32* %retval, align 4, !dbg !1092
  br label %return, !dbg !1092

sw.epilog:                                        ; preds = %do.end104, %do.end93, %do.end81
  %107 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1093
  %add.ptr106 = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %107, i64 1, !dbg !1094
  store %struct.qmi_elem_info* %add.ptr106, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1095
  br label %while.cond, !dbg !904, !llvm.loop !952

while.end:                                        ; preds = %while.cond
  %108 = load i32, i32* %decoded_bytes, align 4, !dbg !1096
  store i32 %108, i32* %retval, align 4, !dbg !1097
  br label %return, !dbg !1097

return:                                           ; preds = %while.end, %sw.default, %if.then98, %if.then87, %if.then68, %if.then13, %if.then
  %109 = load i32, i32* %retval, align 4, !dbg !1098
  ret i32 %109, !dbg !1098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.qmi_elem_info* @skip_to_next_elem(%struct.qmi_elem_info* %ei_array, i32 %level) #0 !dbg !1099 {
entry:
  %ei_array.addr = alloca %struct.qmi_elem_info*, align 8
  %level.addr = alloca i32, align 4
  %temp_ei = alloca %struct.qmi_elem_info*, align 8
  %tlv_type = alloca i8, align 1
  store %struct.qmi_elem_info* %ei_array, %struct.qmi_elem_info** %ei_array.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %ei_array.addr, metadata !1102, metadata !DIExpression()), !dbg !1103
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %temp_ei, metadata !1106, metadata !DIExpression()), !dbg !1107
  %0 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array.addr, align 8, !dbg !1108
  store %struct.qmi_elem_info* %0, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1107
  call void @llvm.dbg.declare(metadata i8* %tlv_type, metadata !1109, metadata !DIExpression()), !dbg !1110
  %1 = load i32, i32* %level.addr, align 4, !dbg !1111
  %cmp = icmp sgt i32 %1, 1, !dbg !1113
  br i1 %cmp, label %if.then, label %if.else, !dbg !1114

if.then:                                          ; preds = %entry
  %2 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1115
  %add.ptr = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %2, i64 1, !dbg !1117
  store %struct.qmi_elem_info* %add.ptr, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1118
  br label %if.end, !dbg !1119

if.else:                                          ; preds = %entry
  br label %do.body, !dbg !1120

do.body:                                          ; preds = %do.cond, %if.else
  %3 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1122
  %tlv_type1 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %3, i32 0, i32 4, !dbg !1124
  %4 = load i8, i8* %tlv_type1, align 8, !dbg !1124
  store i8 %4, i8* %tlv_type, align 1, !dbg !1125
  %5 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1126
  %add.ptr2 = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %5, i64 1, !dbg !1127
  store %struct.qmi_elem_info* %add.ptr2, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1128
  br label %do.cond, !dbg !1129

do.cond:                                          ; preds = %do.body
  %6 = load i8, i8* %tlv_type, align 1, !dbg !1130
  %conv = zext i8 %6 to i32, !dbg !1130
  %7 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1131
  %tlv_type3 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %7, i32 0, i32 4, !dbg !1132
  %8 = load i8, i8* %tlv_type3, align 8, !dbg !1132
  %conv4 = zext i8 %8 to i32, !dbg !1131
  %cmp5 = icmp eq i32 %conv, %conv4, !dbg !1133
  br i1 %cmp5, label %do.body, label %do.end, !dbg !1129, !llvm.loop !1134

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %9 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1136
  ret %struct.qmi_elem_info* %9, !dbg !1137
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1138 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1142, metadata !DIExpression()), !dbg !1149
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1151, metadata !DIExpression()), !dbg !1152
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1153, metadata !DIExpression()), !dbg !1154
  %0 = load i64, i64* %size.addr, align 8, !dbg !1155
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1157
  br i1 %1, label %if.then, label %if.end447, !dbg !1158

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1159
  %tobool = icmp ne i64 %2, 0, !dbg !1159
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1162

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1163
  br label %return, !dbg !1163

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1164
  %cmp = icmp ult i64 %3, 4096, !dbg !1166
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1167

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1168
  br label %return, !dbg !1168

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub = sub i64 %4, 1, !dbg !1169
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1169
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1169

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub4 = sub i64 %6, 1, !dbg !1169
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1169
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1169

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub6 = sub i64 %8, 1, !dbg !1169
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1169
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1169

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1169

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub9 = sub i64 %9, 1, !dbg !1169
  %and = and i64 %sub9, -9223372036854775808, !dbg !1169
  %tobool10 = icmp ne i64 %and, 0, !dbg !1169
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1169

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1169

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub13 = sub i64 %10, 1, !dbg !1169
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1169
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1169
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1169

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1169

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub18 = sub i64 %11, 1, !dbg !1169
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1169
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1169
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1169

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1169

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub23 = sub i64 %12, 1, !dbg !1169
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1169
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1169
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1169

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1169

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub28 = sub i64 %13, 1, !dbg !1169
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1169
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1169
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1169

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1169

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub33 = sub i64 %14, 1, !dbg !1169
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1169
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1169
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1169

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1169

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub38 = sub i64 %15, 1, !dbg !1169
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1169
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1169
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1169

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1169

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub43 = sub i64 %16, 1, !dbg !1169
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1169
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1169
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1169

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1169

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub48 = sub i64 %17, 1, !dbg !1169
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1169
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1169
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1169

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1169

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub53 = sub i64 %18, 1, !dbg !1169
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1169
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1169
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1169

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1169

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub58 = sub i64 %19, 1, !dbg !1169
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1169
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1169
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1169

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1169

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub63 = sub i64 %20, 1, !dbg !1169
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1169
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1169
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1169

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1169

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub68 = sub i64 %21, 1, !dbg !1169
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1169
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1169
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1169

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1169

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub73 = sub i64 %22, 1, !dbg !1169
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1169
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1169
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1169

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1169

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub78 = sub i64 %23, 1, !dbg !1169
  %and79 = and i64 %sub78, 562949953421312, !dbg !1169
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1169
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1169

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1169

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub83 = sub i64 %24, 1, !dbg !1169
  %and84 = and i64 %sub83, 281474976710656, !dbg !1169
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1169
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1169

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1169

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub88 = sub i64 %25, 1, !dbg !1169
  %and89 = and i64 %sub88, 140737488355328, !dbg !1169
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1169
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1169

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1169

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub93 = sub i64 %26, 1, !dbg !1169
  %and94 = and i64 %sub93, 70368744177664, !dbg !1169
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1169
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1169

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1169

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub98 = sub i64 %27, 1, !dbg !1169
  %and99 = and i64 %sub98, 35184372088832, !dbg !1169
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1169
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1169

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1169

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub103 = sub i64 %28, 1, !dbg !1169
  %and104 = and i64 %sub103, 17592186044416, !dbg !1169
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1169
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1169

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1169

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub108 = sub i64 %29, 1, !dbg !1169
  %and109 = and i64 %sub108, 8796093022208, !dbg !1169
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1169
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1169

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1169

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub113 = sub i64 %30, 1, !dbg !1169
  %and114 = and i64 %sub113, 4398046511104, !dbg !1169
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1169
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1169

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1169

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub118 = sub i64 %31, 1, !dbg !1169
  %and119 = and i64 %sub118, 2199023255552, !dbg !1169
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1169
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1169

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1169

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub123 = sub i64 %32, 1, !dbg !1169
  %and124 = and i64 %sub123, 1099511627776, !dbg !1169
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1169
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1169

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1169

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub128 = sub i64 %33, 1, !dbg !1169
  %and129 = and i64 %sub128, 549755813888, !dbg !1169
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1169
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1169

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1169

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub133 = sub i64 %34, 1, !dbg !1169
  %and134 = and i64 %sub133, 274877906944, !dbg !1169
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1169
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1169

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1169

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub138 = sub i64 %35, 1, !dbg !1169
  %and139 = and i64 %sub138, 137438953472, !dbg !1169
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1169
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1169

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1169

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub143 = sub i64 %36, 1, !dbg !1169
  %and144 = and i64 %sub143, 68719476736, !dbg !1169
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1169
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1169

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1169

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub148 = sub i64 %37, 1, !dbg !1169
  %and149 = and i64 %sub148, 34359738368, !dbg !1169
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1169
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1169

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1169

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub153 = sub i64 %38, 1, !dbg !1169
  %and154 = and i64 %sub153, 17179869184, !dbg !1169
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1169
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1169

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1169

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub158 = sub i64 %39, 1, !dbg !1169
  %and159 = and i64 %sub158, 8589934592, !dbg !1169
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1169
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1169

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1169

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub163 = sub i64 %40, 1, !dbg !1169
  %and164 = and i64 %sub163, 4294967296, !dbg !1169
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1169
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1169

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1169

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub168 = sub i64 %41, 1, !dbg !1169
  %and169 = and i64 %sub168, 2147483648, !dbg !1169
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1169
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1169

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1169

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub173 = sub i64 %42, 1, !dbg !1169
  %and174 = and i64 %sub173, 1073741824, !dbg !1169
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1169
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1169

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1169

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub178 = sub i64 %43, 1, !dbg !1169
  %and179 = and i64 %sub178, 536870912, !dbg !1169
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1169
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1169

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1169

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub183 = sub i64 %44, 1, !dbg !1169
  %and184 = and i64 %sub183, 268435456, !dbg !1169
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1169
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1169

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1169

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub188 = sub i64 %45, 1, !dbg !1169
  %and189 = and i64 %sub188, 134217728, !dbg !1169
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1169
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1169

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1169

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub193 = sub i64 %46, 1, !dbg !1169
  %and194 = and i64 %sub193, 67108864, !dbg !1169
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1169
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1169

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1169

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub198 = sub i64 %47, 1, !dbg !1169
  %and199 = and i64 %sub198, 33554432, !dbg !1169
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1169
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1169

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1169

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub203 = sub i64 %48, 1, !dbg !1169
  %and204 = and i64 %sub203, 16777216, !dbg !1169
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1169
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1169

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1169

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub208 = sub i64 %49, 1, !dbg !1169
  %and209 = and i64 %sub208, 8388608, !dbg !1169
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1169
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1169

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1169

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub213 = sub i64 %50, 1, !dbg !1169
  %and214 = and i64 %sub213, 4194304, !dbg !1169
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1169
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1169

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1169

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub218 = sub i64 %51, 1, !dbg !1169
  %and219 = and i64 %sub218, 2097152, !dbg !1169
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1169
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1169

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1169

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub223 = sub i64 %52, 1, !dbg !1169
  %and224 = and i64 %sub223, 1048576, !dbg !1169
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1169
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1169

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1169

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub228 = sub i64 %53, 1, !dbg !1169
  %and229 = and i64 %sub228, 524288, !dbg !1169
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1169
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1169

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1169

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub233 = sub i64 %54, 1, !dbg !1169
  %and234 = and i64 %sub233, 262144, !dbg !1169
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1169
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1169

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1169

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub238 = sub i64 %55, 1, !dbg !1169
  %and239 = and i64 %sub238, 131072, !dbg !1169
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1169
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1169

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1169

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub243 = sub i64 %56, 1, !dbg !1169
  %and244 = and i64 %sub243, 65536, !dbg !1169
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1169
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1169

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1169

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub248 = sub i64 %57, 1, !dbg !1169
  %and249 = and i64 %sub248, 32768, !dbg !1169
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1169
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1169

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1169

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub253 = sub i64 %58, 1, !dbg !1169
  %and254 = and i64 %sub253, 16384, !dbg !1169
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1169
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1169

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1169

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub258 = sub i64 %59, 1, !dbg !1169
  %and259 = and i64 %sub258, 8192, !dbg !1169
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1169
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1169

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1169

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub263 = sub i64 %60, 1, !dbg !1169
  %and264 = and i64 %sub263, 4096, !dbg !1169
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1169
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1169

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1169

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub268 = sub i64 %61, 1, !dbg !1169
  %and269 = and i64 %sub268, 2048, !dbg !1169
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1169
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1169

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1169

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub273 = sub i64 %62, 1, !dbg !1169
  %and274 = and i64 %sub273, 1024, !dbg !1169
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1169
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1169

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1169

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub278 = sub i64 %63, 1, !dbg !1169
  %and279 = and i64 %sub278, 512, !dbg !1169
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1169
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1169

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1169

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub283 = sub i64 %64, 1, !dbg !1169
  %and284 = and i64 %sub283, 256, !dbg !1169
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1169
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1169

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1169

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub288 = sub i64 %65, 1, !dbg !1169
  %and289 = and i64 %sub288, 128, !dbg !1169
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1169
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1169

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1169

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub293 = sub i64 %66, 1, !dbg !1169
  %and294 = and i64 %sub293, 64, !dbg !1169
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1169
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1169

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1169

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub298 = sub i64 %67, 1, !dbg !1169
  %and299 = and i64 %sub298, 32, !dbg !1169
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1169
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1169

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1169

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub303 = sub i64 %68, 1, !dbg !1169
  %and304 = and i64 %sub303, 16, !dbg !1169
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1169
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1169

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1169

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub308 = sub i64 %69, 1, !dbg !1169
  %and309 = and i64 %sub308, 8, !dbg !1169
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1169
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1169

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1169

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub313 = sub i64 %70, 1, !dbg !1169
  %and314 = and i64 %sub313, 4, !dbg !1169
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1169
  %71 = zext i1 %tobool315 to i64, !dbg !1169
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1169
  br label %cond.end, !dbg !1169

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1169
  br label %cond.end317, !dbg !1169

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1169
  br label %cond.end319, !dbg !1169

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1169
  br label %cond.end321, !dbg !1169

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1169
  br label %cond.end323, !dbg !1169

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1169
  br label %cond.end325, !dbg !1169

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1169
  br label %cond.end327, !dbg !1169

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1169
  br label %cond.end329, !dbg !1169

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1169
  br label %cond.end331, !dbg !1169

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1169
  br label %cond.end333, !dbg !1169

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1169
  br label %cond.end335, !dbg !1169

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1169
  br label %cond.end337, !dbg !1169

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1169
  br label %cond.end339, !dbg !1169

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1169
  br label %cond.end341, !dbg !1169

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1169
  br label %cond.end343, !dbg !1169

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1169
  br label %cond.end345, !dbg !1169

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1169
  br label %cond.end347, !dbg !1169

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1169
  br label %cond.end349, !dbg !1169

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1169
  br label %cond.end351, !dbg !1169

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1169
  br label %cond.end353, !dbg !1169

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1169
  br label %cond.end355, !dbg !1169

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1169
  br label %cond.end357, !dbg !1169

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1169
  br label %cond.end359, !dbg !1169

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1169
  br label %cond.end361, !dbg !1169

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1169
  br label %cond.end363, !dbg !1169

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1169
  br label %cond.end365, !dbg !1169

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1169
  br label %cond.end367, !dbg !1169

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1169
  br label %cond.end369, !dbg !1169

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1169
  br label %cond.end371, !dbg !1169

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1169
  br label %cond.end373, !dbg !1169

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1169
  br label %cond.end375, !dbg !1169

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1169
  br label %cond.end377, !dbg !1169

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1169
  br label %cond.end379, !dbg !1169

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1169
  br label %cond.end381, !dbg !1169

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1169
  br label %cond.end383, !dbg !1169

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1169
  br label %cond.end385, !dbg !1169

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1169
  br label %cond.end387, !dbg !1169

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1169
  br label %cond.end389, !dbg !1169

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1169
  br label %cond.end391, !dbg !1169

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1169
  br label %cond.end393, !dbg !1169

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1169
  br label %cond.end395, !dbg !1169

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1169
  br label %cond.end397, !dbg !1169

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1169
  br label %cond.end399, !dbg !1169

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1169
  br label %cond.end401, !dbg !1169

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1169
  br label %cond.end403, !dbg !1169

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1169
  br label %cond.end405, !dbg !1169

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1169
  br label %cond.end407, !dbg !1169

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1169
  br label %cond.end409, !dbg !1169

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1169
  br label %cond.end411, !dbg !1169

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1169
  br label %cond.end413, !dbg !1169

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1169
  br label %cond.end415, !dbg !1169

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1169
  br label %cond.end417, !dbg !1169

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1169
  br label %cond.end419, !dbg !1169

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1169
  br label %cond.end421, !dbg !1169

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1169
  br label %cond.end423, !dbg !1169

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1169
  br label %cond.end425, !dbg !1169

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1169
  br label %cond.end427, !dbg !1169

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1169
  br label %cond.end429, !dbg !1169

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1169
  br label %cond.end431, !dbg !1169

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1169
  br label %cond.end433, !dbg !1169

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1169
  br label %cond.end435, !dbg !1169

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1169
  br label %cond.end437, !dbg !1169

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1169
  br label %cond.end440, !dbg !1169

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1169

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1169
  br label %cond.end444, !dbg !1169

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1169
  %sub443 = sub i64 %72, 1, !dbg !1169
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !1169
  br label %cond.end444, !dbg !1169

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1169
  %sub446 = sub i32 %cond445, 12, !dbg !1170
  %add = add i32 %sub446, 1, !dbg !1171
  store i32 %add, i32* %retval, align 4, !dbg !1172
  br label %return, !dbg !1172

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1173
  %dec = add i64 %73, -1, !dbg !1173
  store i64 %dec, i64* %size.addr, align 8, !dbg !1173
  %74 = load i64, i64* %size.addr, align 8, !dbg !1174
  %shr = lshr i64 %74, 12, !dbg !1174
  store i64 %shr, i64* %size.addr, align 8, !dbg !1174
  %75 = load i64, i64* %size.addr, align 8, !dbg !1175
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1152
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1176
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1177
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !1176, !srcloc !1178
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1176
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1179
  %add.i = add i32 %79, 1, !dbg !1180
  store i32 %add.i, i32* %retval, align 4, !dbg !1181
  br label %return, !dbg !1181

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1182
  ret i32 %80, !dbg !1182
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1183 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1142, metadata !DIExpression()), !dbg !1188
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1151, metadata !DIExpression()), !dbg !1190
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1191, metadata !DIExpression()), !dbg !1192
  %0 = load i64, i64* %n.addr, align 8, !dbg !1193
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1190
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1194
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1195
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !1194, !srcloc !1178
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1194
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1196
  %add.i = add i32 %4, 1, !dbg !1197
  %sub = sub i32 %add.i, 1, !dbg !1198
  ret i32 %sub, !dbg !1199
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1200 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1204, metadata !DIExpression()), !dbg !1205
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1206, metadata !DIExpression()), !dbg !1207
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1208, metadata !DIExpression()), !dbg !1209
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1210, metadata !DIExpression()), !dbg !1211
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1212
  ret i8* %0, !dbg !1213
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @qmi_encode_basic_elem(i8* %buf_dst, i8* %buf_src, i32 %elem_len, i32 %elem_size) #0 !dbg !1214 {
entry:
  %buf_dst.addr = alloca i8*, align 8
  %buf_src.addr = alloca i8*, align 8
  %elem_len.addr = alloca i32, align 4
  %elem_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store i8* %buf_dst, i8** %buf_dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_dst.addr, metadata !1217, metadata !DIExpression()), !dbg !1218
  store i8* %buf_src, i8** %buf_src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_src.addr, metadata !1219, metadata !DIExpression()), !dbg !1220
  store i32 %elem_len, i32* %elem_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elem_len.addr, metadata !1221, metadata !DIExpression()), !dbg !1222
  store i32 %elem_size, i32* %elem_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elem_size.addr, metadata !1223, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1225, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1227, metadata !DIExpression()), !dbg !1228
  store i32 0, i32* %rc, align 4, !dbg !1228
  store i32 0, i32* %i, align 4, !dbg !1229
  br label %for.cond, !dbg !1231

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1232
  %1 = load i32, i32* %elem_len.addr, align 4, !dbg !1234
  %cmp = icmp ult i32 %0, %1, !dbg !1235
  br i1 %cmp, label %for.body, label %for.end, !dbg !1236

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !1237

do.body:                                          ; preds = %for.body
  %2 = load i8*, i8** %buf_dst.addr, align 8, !dbg !1239
  %3 = load i8*, i8** %buf_src.addr, align 8, !dbg !1239
  %4 = load i32, i32* %elem_size.addr, align 4, !dbg !1239
  %conv = zext i32 %4 to i64, !dbg !1239
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 %conv, i1 false), !dbg !1239
  %5 = load i8*, i8** %buf_dst.addr, align 8, !dbg !1239
  %6 = load i32, i32* %elem_size.addr, align 4, !dbg !1239
  %idx.ext = zext i32 %6 to i64, !dbg !1239
  %add.ptr = getelementptr i8, i8* %5, i64 %idx.ext, !dbg !1239
  store i8* %add.ptr, i8** %buf_dst.addr, align 8, !dbg !1239
  %7 = load i8*, i8** %buf_src.addr, align 8, !dbg !1239
  %8 = load i32, i32* %elem_size.addr, align 4, !dbg !1239
  %idx.ext1 = zext i32 %8 to i64, !dbg !1239
  %add.ptr2 = getelementptr i8, i8* %7, i64 %idx.ext1, !dbg !1239
  store i8* %add.ptr2, i8** %buf_src.addr, align 8, !dbg !1239
  br label %do.end, !dbg !1239

do.end:                                           ; preds = %do.body
  %9 = load i32, i32* %elem_size.addr, align 4, !dbg !1241
  %10 = load i32, i32* %rc, align 4, !dbg !1242
  %add = add i32 %10, %9, !dbg !1242
  store i32 %add, i32* %rc, align 4, !dbg !1242
  br label %for.inc, !dbg !1243

for.inc:                                          ; preds = %do.end
  %11 = load i32, i32* %i, align 4, !dbg !1244
  %inc = add i32 %11, 1, !dbg !1244
  store i32 %inc, i32* %i, align 4, !dbg !1244
  br label %for.cond, !dbg !1245, !llvm.loop !1246

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %rc, align 4, !dbg !1248
  ret i32 %12, !dbg !1249
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @qmi_encode_struct_elem(%struct.qmi_elem_info* %ei_array, i8* %buf_dst, i8* %buf_src, i32 %elem_len, i32 %out_buf_len, i32 %enc_level) #0 !dbg !1250 {
entry:
  %retval = alloca i32, align 4
  %ei_array.addr = alloca %struct.qmi_elem_info*, align 8
  %buf_dst.addr = alloca i8*, align 8
  %buf_src.addr = alloca i8*, align 8
  %elem_len.addr = alloca i32, align 4
  %out_buf_len.addr = alloca i32, align 4
  %enc_level.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %encoded_bytes = alloca i32, align 4
  %temp_ei = alloca %struct.qmi_elem_info*, align 8
  store %struct.qmi_elem_info* %ei_array, %struct.qmi_elem_info** %ei_array.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %ei_array.addr, metadata !1253, metadata !DIExpression()), !dbg !1254
  store i8* %buf_dst, i8** %buf_dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_dst.addr, metadata !1255, metadata !DIExpression()), !dbg !1256
  store i8* %buf_src, i8** %buf_src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_src.addr, metadata !1257, metadata !DIExpression()), !dbg !1258
  store i32 %elem_len, i32* %elem_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elem_len.addr, metadata !1259, metadata !DIExpression()), !dbg !1260
  store i32 %out_buf_len, i32* %out_buf_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %out_buf_len.addr, metadata !1261, metadata !DIExpression()), !dbg !1262
  store i32 %enc_level, i32* %enc_level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enc_level.addr, metadata !1263, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1265, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1267, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.declare(metadata i32* %encoded_bytes, metadata !1269, metadata !DIExpression()), !dbg !1270
  store i32 0, i32* %encoded_bytes, align 4, !dbg !1270
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %temp_ei, metadata !1271, metadata !DIExpression()), !dbg !1272
  %0 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array.addr, align 8, !dbg !1273
  store %struct.qmi_elem_info* %0, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1272
  store i32 0, i32* %i, align 4, !dbg !1274
  br label %for.cond, !dbg !1276

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !1277
  %2 = load i32, i32* %elem_len.addr, align 4, !dbg !1279
  %cmp = icmp ult i32 %1, %2, !dbg !1280
  br i1 %cmp, label %for.body, label %for.end, !dbg !1281

for.body:                                         ; preds = %for.cond
  %3 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1282
  %ei_array1 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %3, i32 0, i32 6, !dbg !1284
  %4 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array1, align 8, !dbg !1284
  %5 = load i8*, i8** %buf_dst.addr, align 8, !dbg !1285
  %6 = load i8*, i8** %buf_src.addr, align 8, !dbg !1286
  %7 = load i32, i32* %out_buf_len.addr, align 4, !dbg !1287
  %8 = load i32, i32* %encoded_bytes, align 4, !dbg !1288
  %sub = sub i32 %7, %8, !dbg !1289
  %9 = load i32, i32* %enc_level.addr, align 4, !dbg !1290
  %call = call i32 @qmi_encode(%struct.qmi_elem_info* %4, i8* %5, i8* %6, i32 %sub, i32 %9) #8, !dbg !1291
  store i32 %call, i32* %rc, align 4, !dbg !1292
  %10 = load i32, i32* %rc, align 4, !dbg !1293
  %cmp2 = icmp slt i32 %10, 0, !dbg !1295
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1296

if.then:                                          ; preds = %for.body
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.qmi_encode_struct_elem, i64 0, i64 0)) #9, !dbg !1297
  %11 = load i32, i32* %rc, align 4, !dbg !1299
  store i32 %11, i32* %retval, align 4, !dbg !1300
  br label %return, !dbg !1300

if.end:                                           ; preds = %for.body
  %12 = load i8*, i8** %buf_dst.addr, align 8, !dbg !1301
  %13 = load i32, i32* %rc, align 4, !dbg !1302
  %idx.ext = sext i32 %13 to i64, !dbg !1303
  %add.ptr = getelementptr i8, i8* %12, i64 %idx.ext, !dbg !1303
  store i8* %add.ptr, i8** %buf_dst.addr, align 8, !dbg !1304
  %14 = load i8*, i8** %buf_src.addr, align 8, !dbg !1305
  %15 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1306
  %elem_size = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %15, i32 0, i32 2, !dbg !1307
  %16 = load i32, i32* %elem_size, align 8, !dbg !1307
  %idx.ext4 = zext i32 %16 to i64, !dbg !1308
  %add.ptr5 = getelementptr i8, i8* %14, i64 %idx.ext4, !dbg !1308
  store i8* %add.ptr5, i8** %buf_src.addr, align 8, !dbg !1309
  %17 = load i32, i32* %rc, align 4, !dbg !1310
  %18 = load i32, i32* %encoded_bytes, align 4, !dbg !1311
  %add = add i32 %18, %17, !dbg !1311
  store i32 %add, i32* %encoded_bytes, align 4, !dbg !1311
  br label %for.inc, !dbg !1312

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !dbg !1313
  %inc = add i32 %19, 1, !dbg !1313
  store i32 %inc, i32* %i, align 4, !dbg !1313
  br label %for.cond, !dbg !1314, !llvm.loop !1315

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %encoded_bytes, align 4, !dbg !1317
  store i32 %20, i32* %retval, align 4, !dbg !1318
  br label %return, !dbg !1318

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !1319
  ret i32 %21, !dbg !1319
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @qmi_encode_string_elem(%struct.qmi_elem_info* %ei_array, i8* %buf_dst, i8* %buf_src, i32 %out_buf_len, i32 %enc_level) #0 !dbg !1320 {
entry:
  %retval = alloca i32, align 4
  %ei_array.addr = alloca %struct.qmi_elem_info*, align 8
  %buf_dst.addr = alloca i8*, align 8
  %buf_src.addr = alloca i8*, align 8
  %out_buf_len.addr = alloca i32, align 4
  %enc_level.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %encoded_bytes = alloca i32, align 4
  %temp_ei = alloca %struct.qmi_elem_info*, align 8
  %string_len = alloca i32, align 4
  %string_len_sz = alloca i32, align 4
  store %struct.qmi_elem_info* %ei_array, %struct.qmi_elem_info** %ei_array.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %ei_array.addr, metadata !1321, metadata !DIExpression()), !dbg !1322
  store i8* %buf_dst, i8** %buf_dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_dst.addr, metadata !1323, metadata !DIExpression()), !dbg !1324
  store i8* %buf_src, i8** %buf_src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_src.addr, metadata !1325, metadata !DIExpression()), !dbg !1326
  store i32 %out_buf_len, i32* %out_buf_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %out_buf_len.addr, metadata !1327, metadata !DIExpression()), !dbg !1328
  store i32 %enc_level, i32* %enc_level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enc_level.addr, metadata !1329, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1331, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.declare(metadata i32* %encoded_bytes, metadata !1333, metadata !DIExpression()), !dbg !1334
  store i32 0, i32* %encoded_bytes, align 4, !dbg !1334
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %temp_ei, metadata !1335, metadata !DIExpression()), !dbg !1336
  %0 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array.addr, align 8, !dbg !1337
  store %struct.qmi_elem_info* %0, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1336
  call void @llvm.dbg.declare(metadata i32* %string_len, metadata !1338, metadata !DIExpression()), !dbg !1339
  store i32 0, i32* %string_len, align 4, !dbg !1339
  call void @llvm.dbg.declare(metadata i32* %string_len_sz, metadata !1340, metadata !DIExpression()), !dbg !1341
  store i32 0, i32* %string_len_sz, align 4, !dbg !1341
  %1 = load i8*, i8** %buf_src.addr, align 8, !dbg !1342
  %call = call i64 @strlen(i8* %1) #8, !dbg !1343
  %conv = trunc i64 %call to i32, !dbg !1343
  store i32 %conv, i32* %string_len, align 4, !dbg !1344
  %2 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1345
  %elem_len = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %2, i32 0, i32 1, !dbg !1346
  %3 = load i32, i32* %elem_len, align 4, !dbg !1346
  %cmp = icmp ule i32 %3, 255, !dbg !1347
  %4 = zext i1 %cmp to i64, !dbg !1345
  %cond = select i1 %cmp, i64 1, i64 2, !dbg !1345
  %conv2 = trunc i64 %cond to i32, !dbg !1345
  store i32 %conv2, i32* %string_len_sz, align 4, !dbg !1348
  %5 = load i32, i32* %string_len, align 4, !dbg !1349
  %6 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1351
  %elem_len3 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %6, i32 0, i32 1, !dbg !1352
  %7 = load i32, i32* %elem_len3, align 4, !dbg !1352
  %cmp4 = icmp ugt i32 %5, %7, !dbg !1353
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1354

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %string_len, align 4, !dbg !1355
  %9 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1355
  %elem_len6 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %9, i32 0, i32 1, !dbg !1355
  %10 = load i32, i32* %elem_len6, align 4, !dbg !1355
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.qmi_encode_string_elem, i64 0, i64 0), i32 %8, i32 %10) #9, !dbg !1355
  store i32 -22, i32* %retval, align 4, !dbg !1357
  br label %return, !dbg !1357

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %enc_level.addr, align 4, !dbg !1358
  %cmp8 = icmp eq i32 %11, 1, !dbg !1360
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !1361

if.then10:                                        ; preds = %if.end
  %12 = load i32, i32* %string_len, align 4, !dbg !1362
  %conv11 = zext i32 %12 to i64, !dbg !1362
  %add = add i64 %conv11, 2, !dbg !1365
  %add12 = add i64 %add, 1, !dbg !1366
  %13 = load i32, i32* %out_buf_len.addr, align 4, !dbg !1367
  %conv13 = zext i32 %13 to i64, !dbg !1367
  %cmp14 = icmp ugt i64 %add12, %conv13, !dbg !1368
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !1369

if.then16:                                        ; preds = %if.then10
  %14 = load i32, i32* %string_len, align 4, !dbg !1370
  %15 = load i32, i32* %out_buf_len.addr, align 4, !dbg !1370
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.qmi_encode_string_elem, i64 0, i64 0), i32 %14, i32 %15) #9, !dbg !1370
  store i32 -525, i32* %retval, align 4, !dbg !1372
  br label %return, !dbg !1372

if.end18:                                         ; preds = %if.then10
  br label %if.end27, !dbg !1373

if.else:                                          ; preds = %if.end
  %16 = load i32, i32* %string_len, align 4, !dbg !1374
  %17 = load i32, i32* %string_len_sz, align 4, !dbg !1377
  %add19 = add i32 %16, %17, !dbg !1378
  %18 = load i32, i32* %out_buf_len.addr, align 4, !dbg !1379
  %cmp20 = icmp ugt i32 %add19, %18, !dbg !1380
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !1381

if.then22:                                        ; preds = %if.else
  %19 = load i32, i32* %string_len, align 4, !dbg !1382
  %20 = load i32, i32* %out_buf_len.addr, align 4, !dbg !1382
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.qmi_encode_string_elem, i64 0, i64 0), i32 %19, i32 %20) #9, !dbg !1382
  store i32 -525, i32* %retval, align 4, !dbg !1384
  br label %return, !dbg !1384

if.end24:                                         ; preds = %if.else
  %21 = load i8*, i8** %buf_dst.addr, align 8, !dbg !1385
  %22 = bitcast i32* %string_len to i8*, !dbg !1386
  %23 = load i32, i32* %string_len_sz, align 4, !dbg !1387
  %call25 = call i32 @qmi_encode_basic_elem(i8* %21, i8* %22, i32 1, i32 %23) #8, !dbg !1388
  store i32 %call25, i32* %rc, align 4, !dbg !1389
  %24 = load i32, i32* %rc, align 4, !dbg !1390
  %25 = load i32, i32* %encoded_bytes, align 4, !dbg !1391
  %add26 = add i32 %25, %24, !dbg !1391
  store i32 %add26, i32* %encoded_bytes, align 4, !dbg !1391
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.end18
  %26 = load i8*, i8** %buf_dst.addr, align 8, !dbg !1392
  %27 = load i32, i32* %encoded_bytes, align 4, !dbg !1393
  %idx.ext = sext i32 %27 to i64, !dbg !1394
  %add.ptr = getelementptr i8, i8* %26, i64 %idx.ext, !dbg !1394
  %28 = load i8*, i8** %buf_src.addr, align 8, !dbg !1395
  %29 = load i32, i32* %string_len, align 4, !dbg !1396
  %30 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1397
  %elem_size = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %30, i32 0, i32 2, !dbg !1398
  %31 = load i32, i32* %elem_size, align 8, !dbg !1398
  %call28 = call i32 @qmi_encode_basic_elem(i8* %add.ptr, i8* %28, i32 %29, i32 %31) #8, !dbg !1399
  store i32 %call28, i32* %rc, align 4, !dbg !1400
  %32 = load i32, i32* %rc, align 4, !dbg !1401
  %33 = load i32, i32* %encoded_bytes, align 4, !dbg !1402
  %add29 = add i32 %33, %32, !dbg !1402
  store i32 %add29, i32* %encoded_bytes, align 4, !dbg !1402
  %34 = load i32, i32* %encoded_bytes, align 4, !dbg !1403
  store i32 %34, i32* %retval, align 4, !dbg !1404
  br label %return, !dbg !1404

return:                                           ; preds = %if.end27, %if.then22, %if.then16, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !1405
  ret i32 %35, !dbg !1405
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.qmi_elem_info* @find_ei(%struct.qmi_elem_info* %ei_array, i32 %type) #0 !dbg !1406 {
entry:
  %retval = alloca %struct.qmi_elem_info*, align 8
  %ei_array.addr = alloca %struct.qmi_elem_info*, align 8
  %type.addr = alloca i32, align 4
  %temp_ei = alloca %struct.qmi_elem_info*, align 8
  store %struct.qmi_elem_info* %ei_array, %struct.qmi_elem_info** %ei_array.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %ei_array.addr, metadata !1409, metadata !DIExpression()), !dbg !1410
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %temp_ei, metadata !1413, metadata !DIExpression()), !dbg !1414
  %0 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array.addr, align 8, !dbg !1415
  store %struct.qmi_elem_info* %0, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1414
  br label %while.cond, !dbg !1416

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1417
  %data_type = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %1, i32 0, i32 0, !dbg !1418
  %2 = load i32, i32* %data_type, align 8, !dbg !1418
  %cmp = icmp ne i32 %2, 0, !dbg !1419
  br i1 %cmp, label %while.body, label %while.end, !dbg !1416

while.body:                                       ; preds = %while.cond
  %3 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1420
  %tlv_type = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %3, i32 0, i32 4, !dbg !1423
  %4 = load i8, i8* %tlv_type, align 8, !dbg !1423
  %conv = zext i8 %4 to i32, !dbg !1420
  %5 = load i32, i32* %type.addr, align 4, !dbg !1424
  %conv1 = trunc i32 %5 to i8, !dbg !1425
  %conv2 = zext i8 %conv1 to i32, !dbg !1425
  %cmp3 = icmp eq i32 %conv, %conv2, !dbg !1426
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1427

if.then:                                          ; preds = %while.body
  %6 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1428
  store %struct.qmi_elem_info* %6, %struct.qmi_elem_info** %retval, align 8, !dbg !1429
  br label %return, !dbg !1429

if.end:                                           ; preds = %while.body
  %7 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1430
  %add.ptr = getelementptr %struct.qmi_elem_info, %struct.qmi_elem_info* %7, i64 1, !dbg !1431
  store %struct.qmi_elem_info* %add.ptr, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1432
  br label %while.cond, !dbg !1416, !llvm.loop !1433

while.end:                                        ; preds = %while.cond
  store %struct.qmi_elem_info* null, %struct.qmi_elem_info** %retval, align 8, !dbg !1435
  br label %return, !dbg !1435

return:                                           ; preds = %while.end, %if.then
  %8 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %retval, align 8, !dbg !1436
  ret %struct.qmi_elem_info* %8, !dbg !1436
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @qmi_decode_basic_elem(i8* %buf_dst, i8* %buf_src, i32 %elem_len, i32 %elem_size) #0 !dbg !1437 {
entry:
  %buf_dst.addr = alloca i8*, align 8
  %buf_src.addr = alloca i8*, align 8
  %elem_len.addr = alloca i32, align 4
  %elem_size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store i8* %buf_dst, i8** %buf_dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_dst.addr, metadata !1438, metadata !DIExpression()), !dbg !1439
  store i8* %buf_src, i8** %buf_src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_src.addr, metadata !1440, metadata !DIExpression()), !dbg !1441
  store i32 %elem_len, i32* %elem_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elem_len.addr, metadata !1442, metadata !DIExpression()), !dbg !1443
  store i32 %elem_size, i32* %elem_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elem_size.addr, metadata !1444, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1446, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1448, metadata !DIExpression()), !dbg !1449
  store i32 0, i32* %rc, align 4, !dbg !1449
  store i32 0, i32* %i, align 4, !dbg !1450
  br label %for.cond, !dbg !1452

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1453
  %1 = load i32, i32* %elem_len.addr, align 4, !dbg !1455
  %cmp = icmp ult i32 %0, %1, !dbg !1456
  br i1 %cmp, label %for.body, label %for.end, !dbg !1457

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !1458

do.body:                                          ; preds = %for.body
  %2 = load i8*, i8** %buf_dst.addr, align 8, !dbg !1460
  %3 = load i8*, i8** %buf_src.addr, align 8, !dbg !1460
  %4 = load i32, i32* %elem_size.addr, align 4, !dbg !1460
  %conv = zext i32 %4 to i64, !dbg !1460
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 %conv, i1 false), !dbg !1460
  %5 = load i8*, i8** %buf_dst.addr, align 8, !dbg !1460
  %6 = load i32, i32* %elem_size.addr, align 4, !dbg !1460
  %idx.ext = zext i32 %6 to i64, !dbg !1460
  %add.ptr = getelementptr i8, i8* %5, i64 %idx.ext, !dbg !1460
  store i8* %add.ptr, i8** %buf_dst.addr, align 8, !dbg !1460
  %7 = load i8*, i8** %buf_src.addr, align 8, !dbg !1460
  %8 = load i32, i32* %elem_size.addr, align 4, !dbg !1460
  %idx.ext1 = zext i32 %8 to i64, !dbg !1460
  %add.ptr2 = getelementptr i8, i8* %7, i64 %idx.ext1, !dbg !1460
  store i8* %add.ptr2, i8** %buf_src.addr, align 8, !dbg !1460
  br label %do.end, !dbg !1460

do.end:                                           ; preds = %do.body
  %9 = load i32, i32* %elem_size.addr, align 4, !dbg !1462
  %10 = load i32, i32* %rc, align 4, !dbg !1463
  %add = add i32 %10, %9, !dbg !1463
  store i32 %add, i32* %rc, align 4, !dbg !1463
  br label %for.inc, !dbg !1464

for.inc:                                          ; preds = %do.end
  %11 = load i32, i32* %i, align 4, !dbg !1465
  %inc = add i32 %11, 1, !dbg !1465
  store i32 %inc, i32* %i, align 4, !dbg !1465
  br label %for.cond, !dbg !1466, !llvm.loop !1467

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %rc, align 4, !dbg !1469
  ret i32 %12, !dbg !1470
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @qmi_decode_struct_elem(%struct.qmi_elem_info* %ei_array, i8* %buf_dst, i8* %buf_src, i32 %elem_len, i32 %tlv_len, i32 %dec_level) #0 !dbg !1471 {
entry:
  %retval = alloca i32, align 4
  %ei_array.addr = alloca %struct.qmi_elem_info*, align 8
  %buf_dst.addr = alloca i8*, align 8
  %buf_src.addr = alloca i8*, align 8
  %elem_len.addr = alloca i32, align 4
  %tlv_len.addr = alloca i32, align 4
  %dec_level.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %decoded_bytes = alloca i32, align 4
  %temp_ei = alloca %struct.qmi_elem_info*, align 8
  store %struct.qmi_elem_info* %ei_array, %struct.qmi_elem_info** %ei_array.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %ei_array.addr, metadata !1472, metadata !DIExpression()), !dbg !1473
  store i8* %buf_dst, i8** %buf_dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_dst.addr, metadata !1474, metadata !DIExpression()), !dbg !1475
  store i8* %buf_src, i8** %buf_src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_src.addr, metadata !1476, metadata !DIExpression()), !dbg !1477
  store i32 %elem_len, i32* %elem_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elem_len.addr, metadata !1478, metadata !DIExpression()), !dbg !1479
  store i32 %tlv_len, i32* %tlv_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tlv_len.addr, metadata !1480, metadata !DIExpression()), !dbg !1481
  store i32 %dec_level, i32* %dec_level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dec_level.addr, metadata !1482, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1484, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1486, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.declare(metadata i32* %decoded_bytes, metadata !1488, metadata !DIExpression()), !dbg !1489
  store i32 0, i32* %decoded_bytes, align 4, !dbg !1489
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %temp_ei, metadata !1490, metadata !DIExpression()), !dbg !1491
  %0 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array.addr, align 8, !dbg !1492
  store %struct.qmi_elem_info* %0, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1491
  store i32 0, i32* %i, align 4, !dbg !1493
  br label %for.cond, !dbg !1495

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !1496
  %2 = load i32, i32* %elem_len.addr, align 4, !dbg !1498
  %cmp = icmp ult i32 %1, %2, !dbg !1499
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1500

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %decoded_bytes, align 4, !dbg !1501
  %4 = load i32, i32* %tlv_len.addr, align 4, !dbg !1502
  %cmp1 = icmp ult i32 %3, %4, !dbg !1503
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ], !dbg !1504
  br i1 %5, label %for.body, label %for.end, !dbg !1505

for.body:                                         ; preds = %land.end
  %6 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1506
  %ei_array2 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %6, i32 0, i32 6, !dbg !1508
  %7 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array2, align 8, !dbg !1508
  %8 = load i8*, i8** %buf_dst.addr, align 8, !dbg !1509
  %9 = load i8*, i8** %buf_src.addr, align 8, !dbg !1510
  %10 = load i32, i32* %tlv_len.addr, align 4, !dbg !1511
  %11 = load i32, i32* %decoded_bytes, align 4, !dbg !1512
  %sub = sub i32 %10, %11, !dbg !1513
  %12 = load i32, i32* %dec_level.addr, align 4, !dbg !1514
  %call = call i32 @qmi_decode(%struct.qmi_elem_info* %7, i8* %8, i8* %9, i32 %sub, i32 %12) #8, !dbg !1515
  store i32 %call, i32* %rc, align 4, !dbg !1516
  %13 = load i32, i32* %rc, align 4, !dbg !1517
  %cmp3 = icmp slt i32 %13, 0, !dbg !1519
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1520

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %rc, align 4, !dbg !1521
  store i32 %14, i32* %retval, align 4, !dbg !1522
  br label %return, !dbg !1522

if.end:                                           ; preds = %for.body
  %15 = load i8*, i8** %buf_src.addr, align 8, !dbg !1523
  %16 = load i32, i32* %rc, align 4, !dbg !1524
  %idx.ext = sext i32 %16 to i64, !dbg !1525
  %add.ptr = getelementptr i8, i8* %15, i64 %idx.ext, !dbg !1525
  store i8* %add.ptr, i8** %buf_src.addr, align 8, !dbg !1526
  %17 = load i8*, i8** %buf_dst.addr, align 8, !dbg !1527
  %18 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1528
  %elem_size = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %18, i32 0, i32 2, !dbg !1529
  %19 = load i32, i32* %elem_size, align 8, !dbg !1529
  %idx.ext4 = zext i32 %19 to i64, !dbg !1530
  %add.ptr5 = getelementptr i8, i8* %17, i64 %idx.ext4, !dbg !1530
  store i8* %add.ptr5, i8** %buf_dst.addr, align 8, !dbg !1531
  %20 = load i32, i32* %rc, align 4, !dbg !1532
  %21 = load i32, i32* %decoded_bytes, align 4, !dbg !1533
  %add = add i32 %21, %20, !dbg !1533
  store i32 %add, i32* %decoded_bytes, align 4, !dbg !1533
  br label %for.inc, !dbg !1534

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4, !dbg !1535
  %inc = add i32 %22, 1, !dbg !1535
  store i32 %inc, i32* %i, align 4, !dbg !1535
  br label %for.cond, !dbg !1536, !llvm.loop !1537

for.end:                                          ; preds = %land.end
  %23 = load i32, i32* %dec_level.addr, align 4, !dbg !1539
  %cmp6 = icmp sle i32 %23, 2, !dbg !1541
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false, !dbg !1542

land.lhs.true:                                    ; preds = %for.end
  %24 = load i32, i32* %decoded_bytes, align 4, !dbg !1543
  %25 = load i32, i32* %tlv_len.addr, align 4, !dbg !1544
  %cmp7 = icmp ne i32 %24, %25, !dbg !1545
  br i1 %cmp7, label %if.then13, label %lor.lhs.false, !dbg !1546

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.end
  %26 = load i32, i32* %dec_level.addr, align 4, !dbg !1547
  %cmp8 = icmp sgt i32 %26, 2, !dbg !1548
  br i1 %cmp8, label %land.lhs.true9, label %if.end15, !dbg !1549

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %27 = load i32, i32* %i, align 4, !dbg !1550
  %28 = load i32, i32* %elem_len.addr, align 4, !dbg !1551
  %cmp10 = icmp ult i32 %27, %28, !dbg !1552
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11, !dbg !1553

lor.lhs.false11:                                  ; preds = %land.lhs.true9
  %29 = load i32, i32* %decoded_bytes, align 4, !dbg !1554
  %30 = load i32, i32* %tlv_len.addr, align 4, !dbg !1555
  %cmp12 = icmp ugt i32 %29, %30, !dbg !1556
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !1557

if.then13:                                        ; preds = %lor.lhs.false11, %land.lhs.true9, %land.lhs.true
  %31 = load i32, i32* %dec_level.addr, align 4, !dbg !1558
  %32 = load i32, i32* %decoded_bytes, align 4, !dbg !1558
  %33 = load i32, i32* %tlv_len.addr, align 4, !dbg !1558
  %34 = load i32, i32* %i, align 4, !dbg !1558
  %35 = load i32, i32* %elem_len.addr, align 4, !dbg !1558
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.qmi_decode_struct_elem, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34, i32 %35) #9, !dbg !1558
  store i32 -14, i32* %retval, align 4, !dbg !1560
  br label %return, !dbg !1560

if.end15:                                         ; preds = %lor.lhs.false11, %lor.lhs.false
  %36 = load i32, i32* %decoded_bytes, align 4, !dbg !1561
  store i32 %36, i32* %retval, align 4, !dbg !1562
  br label %return, !dbg !1562

return:                                           ; preds = %if.end15, %if.then13, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !1563
  ret i32 %37, !dbg !1563
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @qmi_decode_string_elem(%struct.qmi_elem_info* %ei_array, i8* %buf_dst, i8* %buf_src, i32 %tlv_len, i32 %dec_level) #0 !dbg !1564 {
entry:
  %retval = alloca i32, align 4
  %ei_array.addr = alloca %struct.qmi_elem_info*, align 8
  %buf_dst.addr = alloca i8*, align 8
  %buf_src.addr = alloca i8*, align 8
  %tlv_len.addr = alloca i32, align 4
  %dec_level.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %decoded_bytes = alloca i32, align 4
  %string_len = alloca i32, align 4
  %string_len_sz = alloca i32, align 4
  %temp_ei = alloca %struct.qmi_elem_info*, align 8
  store %struct.qmi_elem_info* %ei_array, %struct.qmi_elem_info** %ei_array.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %ei_array.addr, metadata !1565, metadata !DIExpression()), !dbg !1566
  store i8* %buf_dst, i8** %buf_dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_dst.addr, metadata !1567, metadata !DIExpression()), !dbg !1568
  store i8* %buf_src, i8** %buf_src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf_src.addr, metadata !1569, metadata !DIExpression()), !dbg !1570
  store i32 %tlv_len, i32* %tlv_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tlv_len.addr, metadata !1571, metadata !DIExpression()), !dbg !1572
  store i32 %dec_level, i32* %dec_level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dec_level.addr, metadata !1573, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1575, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.declare(metadata i32* %decoded_bytes, metadata !1577, metadata !DIExpression()), !dbg !1578
  store i32 0, i32* %decoded_bytes, align 4, !dbg !1578
  call void @llvm.dbg.declare(metadata i32* %string_len, metadata !1579, metadata !DIExpression()), !dbg !1580
  store i32 0, i32* %string_len, align 4, !dbg !1580
  call void @llvm.dbg.declare(metadata i32* %string_len_sz, metadata !1581, metadata !DIExpression()), !dbg !1582
  store i32 0, i32* %string_len_sz, align 4, !dbg !1582
  call void @llvm.dbg.declare(metadata %struct.qmi_elem_info** %temp_ei, metadata !1583, metadata !DIExpression()), !dbg !1584
  %0 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %ei_array.addr, align 8, !dbg !1585
  store %struct.qmi_elem_info* %0, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1584
  %1 = load i32, i32* %dec_level.addr, align 4, !dbg !1586
  %cmp = icmp eq i32 %1, 1, !dbg !1588
  br i1 %cmp, label %if.then, label %if.else, !dbg !1589

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %tlv_len.addr, align 4, !dbg !1590
  store i32 %2, i32* %string_len, align 4, !dbg !1592
  br label %if.end, !dbg !1593

if.else:                                          ; preds = %entry
  %3 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1594
  %elem_len = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %3, i32 0, i32 1, !dbg !1596
  %4 = load i32, i32* %elem_len, align 4, !dbg !1596
  %cmp1 = icmp ule i32 %4, 255, !dbg !1597
  %5 = zext i1 %cmp1 to i64, !dbg !1594
  %cond = select i1 %cmp1, i64 1, i64 2, !dbg !1594
  %conv = trunc i64 %cond to i32, !dbg !1594
  store i32 %conv, i32* %string_len_sz, align 4, !dbg !1598
  %6 = bitcast i32* %string_len to i8*, !dbg !1599
  %7 = load i8*, i8** %buf_src.addr, align 8, !dbg !1600
  %8 = load i32, i32* %string_len_sz, align 4, !dbg !1601
  %call = call i32 @qmi_decode_basic_elem(i8* %6, i8* %7, i32 1, i32 %8) #8, !dbg !1602
  store i32 %call, i32* %rc, align 4, !dbg !1603
  %9 = load i32, i32* %rc, align 4, !dbg !1604
  %10 = load i32, i32* %decoded_bytes, align 4, !dbg !1605
  %add = add i32 %10, %9, !dbg !1605
  store i32 %add, i32* %decoded_bytes, align 4, !dbg !1605
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %string_len, align 4, !dbg !1606
  %12 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1608
  %elem_len2 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %12, i32 0, i32 1, !dbg !1609
  %13 = load i32, i32* %elem_len2, align 4, !dbg !1609
  %cmp3 = icmp ugt i32 %11, %13, !dbg !1610
  br i1 %cmp3, label %if.then5, label %if.else8, !dbg !1611

if.then5:                                         ; preds = %if.end
  %14 = load i32, i32* %string_len, align 4, !dbg !1612
  %15 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1612
  %elem_len6 = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %15, i32 0, i32 1, !dbg !1612
  %16 = load i32, i32* %elem_len6, align 4, !dbg !1612
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.qmi_decode_string_elem, i64 0, i64 0), i32 %14, i32 %16) #9, !dbg !1612
  store i32 -525, i32* %retval, align 4, !dbg !1614
  br label %return, !dbg !1614

if.else8:                                         ; preds = %if.end
  %17 = load i32, i32* %string_len, align 4, !dbg !1615
  %18 = load i32, i32* %tlv_len.addr, align 4, !dbg !1617
  %cmp9 = icmp ugt i32 %17, %18, !dbg !1618
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !1619

if.then11:                                        ; preds = %if.else8
  %19 = load i32, i32* %string_len, align 4, !dbg !1620
  %20 = load i32, i32* %tlv_len.addr, align 4, !dbg !1620
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.qmi_decode_string_elem, i64 0, i64 0), i32 %19, i32 %20) #9, !dbg !1620
  store i32 -14, i32* %retval, align 4, !dbg !1622
  br label %return, !dbg !1622

if.end13:                                         ; preds = %if.else8
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  %21 = load i8*, i8** %buf_dst.addr, align 8, !dbg !1623
  %22 = load i8*, i8** %buf_src.addr, align 8, !dbg !1624
  %23 = load i32, i32* %decoded_bytes, align 4, !dbg !1625
  %idx.ext = sext i32 %23 to i64, !dbg !1626
  %add.ptr = getelementptr i8, i8* %22, i64 %idx.ext, !dbg !1626
  %24 = load i32, i32* %string_len, align 4, !dbg !1627
  %25 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %temp_ei, align 8, !dbg !1628
  %elem_size = getelementptr inbounds %struct.qmi_elem_info, %struct.qmi_elem_info* %25, i32 0, i32 2, !dbg !1629
  %26 = load i32, i32* %elem_size, align 8, !dbg !1629
  %call15 = call i32 @qmi_decode_basic_elem(i8* %21, i8* %add.ptr, i32 %24, i32 %26) #8, !dbg !1630
  store i32 %call15, i32* %rc, align 4, !dbg !1631
  %27 = load i8*, i8** %buf_dst.addr, align 8, !dbg !1632
  %28 = load i32, i32* %string_len, align 4, !dbg !1633
  %idx.ext16 = zext i32 %28 to i64, !dbg !1634
  %add.ptr17 = getelementptr i8, i8* %27, i64 %idx.ext16, !dbg !1634
  store i8 0, i8* %add.ptr17, align 1, !dbg !1635
  %29 = load i32, i32* %rc, align 4, !dbg !1636
  %30 = load i32, i32* %decoded_bytes, align 4, !dbg !1637
  %add18 = add i32 %30, %29, !dbg !1637
  store i32 %add18, i32* %decoded_bytes, align 4, !dbg !1637
  %31 = load i32, i32* %decoded_bytes, align 4, !dbg !1638
  store i32 %31, i32* %retval, align 4, !dbg !1639
  br label %return, !dbg !1639

return:                                           ; preds = %if.end14, %if.then11, %if.then5
  %32 = load i32, i32* %retval, align 4, !dbg !1640
  ret i32 %32, !dbg !1640
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "qmi_response_type_v01_ei", scope: !2, file: !3, line: 784, type: !61, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !32, globals: !44, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/soc/qcom/qmi_encdec.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !20, !25}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "qmi_elem_type", file: !6, line: 38, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/soc/qcom/qmi.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "QMI_EOTI", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "QMI_OPT_FLAG", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "QMI_DATA_LEN", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "QMI_UNSIGNED_1_BYTE", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "QMI_UNSIGNED_2_BYTE", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "QMI_UNSIGNED_4_BYTE", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "QMI_UNSIGNED_8_BYTE", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "QMI_SIGNED_2_BYTE_ENUM", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "QMI_SIGNED_4_BYTE_ENUM", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "QMI_STRUCT", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "QMI_STRING", value: 10, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "qmi_array_type", file: !6, line: 52, baseType: !7, size: 32, elements: !21)
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "NO_ARRAY", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "STATIC_ARRAY", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "VAR_LEN_ARRAY", value: 2, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !26, line: 305, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!31 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!32 = !{!33, !35, !40, !41, !42}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !34, line: 148, baseType: !7)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !36, line: 17, baseType: !37)
!36 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !38, line: 21, baseType: !39)
!38 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !{!0, !45, !51, !56}
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description166", scope: !2, file: !3, line: 815, type: !47, isLocal: true, isDefinition: true, align: 8)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 408, elements: !49)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!49 = !{!50}
!50 = !DISubrange(count: 51)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file167", scope: !2, file: !3, line: 816, type: !53, isLocal: true, isDefinition: true, align: 8)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 368, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 46)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license168", scope: !2, file: !3, line: 816, type: !58, isLocal: true, isDefinition: true, align: 8)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 216, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 27)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 768, elements: !74)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qmi_elem_info", file: !6, line: 71, size: 256, elements: !63)
!63 = !{!64, !65, !68, !69, !70, !71, !72}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !62, file: !6, line: 72, baseType: !5, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "elem_len", scope: !62, file: !6, line: 73, baseType: !66, size: 32, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !36, line: 21, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !38, line: 27, baseType: !7)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !62, file: !6, line: 74, baseType: !66, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "array_type", scope: !62, file: !6, line: 75, baseType: !20, size: 32, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "tlv_type", scope: !62, file: !6, line: 76, baseType: !35, size: 8, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !62, file: !6, line: 77, baseType: !66, size: 32, offset: 160)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ei_array", scope: !62, file: !6, line: 78, baseType: !73, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!74 = !{!75}
!75 = !DISubrange(count: 3)
!76 = !{i32 7, !"Dwarf Version", i32 4}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"Code Model", i32 2}
!80 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!81 = distinct !DISubprogram(name: "qmi_encode_message", scope: !3, file: !3, line: 715, type: !82, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !93)
!82 = !DISubroutineType(types: !83)
!83 = !{!40, !84, !7, !85, !7, !73, !91}
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 55, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !88, line: 72, baseType: !89)
!88 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !88, line: 16, baseType: !90)
!90 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!93 = !{}
!94 = !DILocalVariable(name: "type", arg: 1, scope: !81, file: !3, line: 715, type: !84)
!95 = !DILocation(line: 715, column: 30, scope: !81)
!96 = !DILocalVariable(name: "msg_id", arg: 2, scope: !81, file: !3, line: 715, type: !7)
!97 = !DILocation(line: 715, column: 49, scope: !81)
!98 = !DILocalVariable(name: "len", arg: 3, scope: !81, file: !3, line: 715, type: !85)
!99 = !DILocation(line: 715, column: 65, scope: !81)
!100 = !DILocalVariable(name: "txn_id", arg: 4, scope: !81, file: !3, line: 716, type: !7)
!101 = !DILocation(line: 716, column: 18, scope: !81)
!102 = !DILocalVariable(name: "ei", arg: 5, scope: !81, file: !3, line: 716, type: !73)
!103 = !DILocation(line: 716, column: 48, scope: !81)
!104 = !DILocalVariable(name: "c_struct", arg: 6, scope: !81, file: !3, line: 717, type: !91)
!105 = !DILocation(line: 717, column: 17, scope: !81)
!106 = !DILocalVariable(name: "hdr", scope: !81, file: !3, line: 719, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qmi_header", file: !6, line: 25, size: 56, elements: !109)
!109 = !{!110, !111, !115, !116}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !6, line: 26, baseType: !35, size: 8)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "txn_id", scope: !108, file: !6, line: 27, baseType: !112, size: 16, offset: 8)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !36, line: 19, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !38, line: 24, baseType: !114)
!114 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "msg_id", scope: !108, file: !6, line: 28, baseType: !112, size: 16, offset: 24)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !108, file: !6, line: 29, baseType: !112, size: 16, offset: 40)
!117 = !DILocation(line: 719, column: 21, scope: !81)
!118 = !DILocalVariable(name: "msglen", scope: !81, file: !3, line: 720, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !34, line: 60, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !88, line: 73, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !88, line: 15, baseType: !122)
!122 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!123 = !DILocation(line: 720, column: 10, scope: !81)
!124 = !DILocalVariable(name: "msg", scope: !81, file: !3, line: 721, type: !40)
!125 = !DILocation(line: 721, column: 8, scope: !81)
!126 = !DILocalVariable(name: "ret", scope: !81, file: !3, line: 722, type: !84)
!127 = !DILocation(line: 722, column: 6, scope: !81)
!128 = !DILocation(line: 725, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !81, file: !3, line: 725, column: 6)
!130 = !DILocation(line: 725, column: 6, scope: !81)
!131 = !DILocation(line: 726, column: 30, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !3, line: 725, column: 17)
!133 = !DILocation(line: 726, column: 9, scope: !132)
!134 = !DILocation(line: 726, column: 7, scope: !132)
!135 = !DILocation(line: 727, column: 7, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !3, line: 727, column: 7)
!137 = !DILocation(line: 727, column: 7, scope: !132)
!138 = !DILocation(line: 728, column: 4, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !3, line: 727, column: 12)
!140 = !DILocation(line: 730, column: 11, scope: !139)
!141 = !DILocation(line: 730, column: 4, scope: !139)
!142 = !DILocation(line: 732, column: 2, scope: !132)
!143 = !DILocation(line: 734, column: 32, scope: !81)
!144 = !DILocation(line: 734, column: 31, scope: !81)
!145 = !DILocation(line: 734, column: 29, scope: !81)
!146 = !DILocation(line: 734, column: 8, scope: !81)
!147 = !DILocation(line: 734, column: 6, scope: !81)
!148 = !DILocation(line: 735, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !81, file: !3, line: 735, column: 6)
!150 = !DILocation(line: 735, column: 6, scope: !81)
!151 = !DILocation(line: 736, column: 10, scope: !149)
!152 = !DILocation(line: 736, column: 3, scope: !149)
!153 = !DILocation(line: 739, column: 6, scope: !154)
!154 = distinct !DILexicalBlock(scope: !81, file: !3, line: 739, column: 6)
!155 = !DILocation(line: 739, column: 6, scope: !81)
!156 = !DILocation(line: 740, column: 23, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !3, line: 739, column: 16)
!158 = !DILocation(line: 740, column: 27, scope: !157)
!159 = !DILocation(line: 740, column: 31, scope: !157)
!160 = !DILocation(line: 740, column: 47, scope: !157)
!161 = !DILocation(line: 740, column: 58, scope: !157)
!162 = !DILocation(line: 740, column: 57, scope: !157)
!163 = !DILocation(line: 740, column: 12, scope: !157)
!164 = !DILocation(line: 740, column: 10, scope: !157)
!165 = !DILocation(line: 741, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !157, file: !3, line: 741, column: 7)
!167 = !DILocation(line: 741, column: 14, scope: !166)
!168 = !DILocation(line: 741, column: 7, scope: !157)
!169 = !DILocation(line: 742, column: 10, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !3, line: 741, column: 19)
!171 = !DILocation(line: 742, column: 4, scope: !170)
!172 = !DILocation(line: 743, column: 19, scope: !170)
!173 = !DILocation(line: 743, column: 11, scope: !170)
!174 = !DILocation(line: 743, column: 4, scope: !170)
!175 = !DILocation(line: 745, column: 2, scope: !157)
!176 = !DILocation(line: 747, column: 8, scope: !81)
!177 = !DILocation(line: 747, column: 6, scope: !81)
!178 = !DILocation(line: 748, column: 14, scope: !81)
!179 = !DILocation(line: 748, column: 2, scope: !81)
!180 = !DILocation(line: 748, column: 7, scope: !81)
!181 = !DILocation(line: 748, column: 12, scope: !81)
!182 = !DILocation(line: 749, column: 16, scope: !81)
!183 = !DILocation(line: 749, column: 2, scope: !81)
!184 = !DILocation(line: 749, column: 7, scope: !81)
!185 = !DILocation(line: 749, column: 14, scope: !81)
!186 = !DILocation(line: 750, column: 16, scope: !81)
!187 = !DILocation(line: 750, column: 2, scope: !81)
!188 = !DILocation(line: 750, column: 7, scope: !81)
!189 = !DILocation(line: 750, column: 14, scope: !81)
!190 = !DILocation(line: 751, column: 17, scope: !81)
!191 = !DILocation(line: 751, column: 2, scope: !81)
!192 = !DILocation(line: 751, column: 7, scope: !81)
!193 = !DILocation(line: 751, column: 15, scope: !81)
!194 = !DILocation(line: 753, column: 24, scope: !81)
!195 = !DILocation(line: 753, column: 22, scope: !81)
!196 = !DILocation(line: 753, column: 3, scope: !81)
!197 = !DILocation(line: 753, column: 7, scope: !81)
!198 = !DILocation(line: 755, column: 9, scope: !81)
!199 = !DILocation(line: 755, column: 2, scope: !81)
!200 = !DILocation(line: 756, column: 1, scope: !81)
!201 = distinct !DISubprogram(name: "qmi_calc_min_msg_len", scope: !3, file: !3, line: 104, type: !202, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!202 = !DISubroutineType(types: !203)
!203 = !{!84, !73, !84}
!204 = !DILocalVariable(name: "ei_array", arg: 1, scope: !201, file: !3, line: 104, type: !73)
!205 = !DILocation(line: 104, column: 55, scope: !201)
!206 = !DILocalVariable(name: "level", arg: 2, scope: !201, file: !3, line: 105, type: !84)
!207 = !DILocation(line: 105, column: 9, scope: !201)
!208 = !DILocalVariable(name: "min_msg_len", scope: !201, file: !3, line: 107, type: !84)
!209 = !DILocation(line: 107, column: 6, scope: !201)
!210 = !DILocalVariable(name: "temp_ei", scope: !201, file: !3, line: 108, type: !73)
!211 = !DILocation(line: 108, column: 24, scope: !201)
!212 = !DILocation(line: 108, column: 34, scope: !201)
!213 = !DILocation(line: 110, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !201, file: !3, line: 110, column: 6)
!215 = !DILocation(line: 110, column: 6, scope: !201)
!216 = !DILocation(line: 111, column: 10, scope: !214)
!217 = !DILocation(line: 111, column: 3, scope: !214)
!218 = !DILocation(line: 113, column: 2, scope: !201)
!219 = !DILocation(line: 113, column: 9, scope: !201)
!220 = !DILocation(line: 113, column: 18, scope: !201)
!221 = !DILocation(line: 113, column: 28, scope: !201)
!222 = !DILocation(line: 115, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 115, column: 7)
!224 = distinct !DILexicalBlock(scope: !201, file: !3, line: 113, column: 41)
!225 = !DILocation(line: 115, column: 16, scope: !223)
!226 = !DILocation(line: 115, column: 26, scope: !223)
!227 = !DILocation(line: 115, column: 7, scope: !224)
!228 = !DILocation(line: 116, column: 32, scope: !229)
!229 = distinct !DILexicalBlock(scope: !223, file: !3, line: 115, column: 43)
!230 = !DILocation(line: 116, column: 41, scope: !229)
!231 = !DILocation(line: 116, column: 14, scope: !229)
!232 = !DILocation(line: 116, column: 12, scope: !229)
!233 = !DILocation(line: 117, column: 4, scope: !229)
!234 = distinct !{!234, !218, !235}
!235 = !DILocation(line: 146, column: 2, scope: !201)
!236 = !DILocation(line: 120, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !224, file: !3, line: 120, column: 7)
!238 = !DILocation(line: 120, column: 16, scope: !237)
!239 = !DILocation(line: 120, column: 26, scope: !237)
!240 = !DILocation(line: 120, column: 7, scope: !224)
!241 = !DILocation(line: 121, column: 20, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !3, line: 120, column: 43)
!243 = !DILocation(line: 121, column: 29, scope: !242)
!244 = !DILocation(line: 121, column: 39, scope: !242)
!245 = !DILocation(line: 121, column: 16, scope: !242)
!246 = !DILocation(line: 123, column: 11, scope: !242)
!247 = !DILocation(line: 124, column: 4, scope: !242)
!248 = !DILocation(line: 125, column: 14, scope: !249)
!249 = distinct !DILexicalBlock(scope: !237, file: !3, line: 125, column: 14)
!250 = !DILocation(line: 125, column: 23, scope: !249)
!251 = !DILocation(line: 125, column: 33, scope: !249)
!252 = !DILocation(line: 125, column: 14, scope: !237)
!253 = !DILocation(line: 126, column: 40, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !3, line: 125, column: 48)
!255 = !DILocation(line: 126, column: 49, scope: !254)
!256 = !DILocation(line: 127, column: 13, scope: !254)
!257 = !DILocation(line: 127, column: 19, scope: !254)
!258 = !DILocation(line: 126, column: 19, scope: !254)
!259 = !DILocation(line: 126, column: 16, scope: !254)
!260 = !DILocation(line: 128, column: 11, scope: !254)
!261 = !DILocation(line: 129, column: 3, scope: !254)
!262 = !DILocation(line: 129, column: 14, scope: !263)
!263 = distinct !DILexicalBlock(scope: !249, file: !3, line: 129, column: 14)
!264 = !DILocation(line: 129, column: 23, scope: !263)
!265 = !DILocation(line: 129, column: 33, scope: !263)
!266 = !DILocation(line: 129, column: 14, scope: !249)
!267 = !DILocation(line: 130, column: 8, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !3, line: 130, column: 8)
!269 = distinct !DILexicalBlock(scope: !263, file: !3, line: 129, column: 48)
!270 = !DILocation(line: 130, column: 14, scope: !268)
!271 = !DILocation(line: 130, column: 8, scope: !269)
!272 = !DILocation(line: 131, column: 20, scope: !268)
!273 = !DILocation(line: 131, column: 29, scope: !268)
!274 = !DILocation(line: 131, column: 38, scope: !268)
!275 = !DILocation(line: 131, column: 17, scope: !268)
!276 = !DILocation(line: 131, column: 5, scope: !268)
!277 = !DILocation(line: 133, column: 19, scope: !269)
!278 = !DILocation(line: 133, column: 28, scope: !269)
!279 = !DILocation(line: 133, column: 39, scope: !269)
!280 = !DILocation(line: 133, column: 48, scope: !269)
!281 = !DILocation(line: 133, column: 37, scope: !269)
!282 = !DILocation(line: 133, column: 16, scope: !269)
!283 = !DILocation(line: 134, column: 11, scope: !269)
!284 = !DILocation(line: 135, column: 3, scope: !269)
!285 = !DILocation(line: 136, column: 20, scope: !286)
!286 = distinct !DILexicalBlock(scope: !263, file: !3, line: 135, column: 10)
!287 = !DILocation(line: 136, column: 29, scope: !286)
!288 = !DILocation(line: 136, column: 40, scope: !286)
!289 = !DILocation(line: 136, column: 49, scope: !286)
!290 = !DILocation(line: 136, column: 38, scope: !286)
!291 = !DILocation(line: 136, column: 16, scope: !286)
!292 = !DILocation(line: 137, column: 11, scope: !286)
!293 = !DILocation(line: 144, column: 7, scope: !294)
!294 = distinct !DILexicalBlock(scope: !224, file: !3, line: 144, column: 7)
!295 = !DILocation(line: 144, column: 13, scope: !294)
!296 = !DILocation(line: 144, column: 7, scope: !224)
!297 = !DILocation(line: 145, column: 16, scope: !294)
!298 = !DILocation(line: 145, column: 4, scope: !294)
!299 = !DILocation(line: 148, column: 9, scope: !201)
!300 = !DILocation(line: 148, column: 2, scope: !201)
!301 = !DILocation(line: 149, column: 1, scope: !201)
!302 = distinct !DISubprogram(name: "ERR_PTR", scope: !303, file: !303, line: 24, type: !304, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!303 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!304 = !DISubroutineType(types: !305)
!305 = !{!40, !122}
!306 = !DILocalVariable(name: "error", arg: 1, scope: !302, file: !303, line: 24, type: !122)
!307 = !DILocation(line: 24, column: 48, scope: !302)
!308 = !DILocation(line: 26, column: 18, scope: !302)
!309 = !DILocation(line: 26, column: 9, scope: !302)
!310 = !DILocation(line: 26, column: 2, scope: !302)
!311 = distinct !DISubprogram(name: "kzalloc", scope: !26, file: !26, line: 662, type: !312, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!312 = !DISubroutineType(types: !313)
!313 = !{!40, !86, !33}
!314 = !DILocalVariable(name: "s", arg: 1, scope: !315, file: !26, line: 445, type: !318)
!315 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !26, file: !26, line: 445, type: !316, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!316 = !DISubroutineType(types: !317)
!317 = !{!40, !318, !33, !86}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !320, line: 117, flags: DIFlagFwdDecl)
!320 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!321 = !DILocation(line: 445, column: 72, scope: !315, inlinedAt: !322)
!322 = distinct !DILocation(line: 552, column: 10, scope: !323, inlinedAt: !326)
!323 = distinct !DILexicalBlock(scope: !324, file: !26, line: 540, column: 34)
!324 = distinct !DILexicalBlock(scope: !325, file: !26, line: 540, column: 6)
!325 = distinct !DISubprogram(name: "kmalloc", scope: !26, file: !26, line: 538, type: !312, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!326 = distinct !DILocation(line: 664, column: 9, scope: !311)
!327 = !DILocalVariable(name: "flags", arg: 2, scope: !315, file: !26, line: 446, type: !33)
!328 = !DILocation(line: 446, column: 9, scope: !315, inlinedAt: !322)
!329 = !DILocalVariable(name: "size", arg: 3, scope: !315, file: !26, line: 446, type: !86)
!330 = !DILocation(line: 446, column: 23, scope: !315, inlinedAt: !322)
!331 = !DILocalVariable(name: "ret", scope: !315, file: !26, line: 448, type: !40)
!332 = !DILocation(line: 448, column: 8, scope: !315, inlinedAt: !322)
!333 = !DILocalVariable(name: "flags", arg: 1, scope: !334, file: !26, line: 318, type: !33)
!334 = distinct !DISubprogram(name: "kmalloc_type", scope: !26, file: !26, line: 318, type: !335, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!335 = !DISubroutineType(types: !336)
!336 = !{!25, !33}
!337 = !DILocation(line: 318, column: 67, scope: !334, inlinedAt: !338)
!338 = distinct !DILocation(line: 553, column: 20, scope: !323, inlinedAt: !326)
!339 = !DILocalVariable(name: "size", arg: 1, scope: !340, file: !26, line: 346, type: !86)
!340 = distinct !DISubprogram(name: "kmalloc_index", scope: !26, file: !26, line: 346, type: !341, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!341 = !DISubroutineType(types: !342)
!342 = !{!7, !86}
!343 = !DILocation(line: 346, column: 58, scope: !340, inlinedAt: !344)
!344 = distinct !DILocation(line: 547, column: 11, scope: !323, inlinedAt: !326)
!345 = !DILocalVariable(name: "size", arg: 1, scope: !346, file: !26, line: 472, type: !86)
!346 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !26, file: !26, line: 472, type: !347, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!347 = !DISubroutineType(types: !348)
!348 = !{!40, !86, !33, !7}
!349 = !DILocation(line: 472, column: 28, scope: !346, inlinedAt: !350)
!350 = distinct !DILocation(line: 481, column: 9, scope: !351, inlinedAt: !352)
!351 = distinct !DISubprogram(name: "kmalloc_large", scope: !26, file: !26, line: 478, type: !312, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!352 = distinct !DILocation(line: 545, column: 11, scope: !353, inlinedAt: !326)
!353 = distinct !DILexicalBlock(scope: !323, file: !26, line: 544, column: 7)
!354 = !DILocalVariable(name: "flags", arg: 2, scope: !346, file: !26, line: 472, type: !33)
!355 = !DILocation(line: 472, column: 40, scope: !346, inlinedAt: !350)
!356 = !DILocalVariable(name: "order", arg: 3, scope: !346, file: !26, line: 472, type: !7)
!357 = !DILocation(line: 472, column: 60, scope: !346, inlinedAt: !350)
!358 = !DILocalVariable(name: "size", arg: 1, scope: !351, file: !26, line: 478, type: !86)
!359 = !DILocation(line: 478, column: 51, scope: !351, inlinedAt: !352)
!360 = !DILocalVariable(name: "flags", arg: 2, scope: !351, file: !26, line: 478, type: !33)
!361 = !DILocation(line: 478, column: 63, scope: !351, inlinedAt: !352)
!362 = !DILocalVariable(name: "order", scope: !351, file: !26, line: 480, type: !7)
!363 = !DILocation(line: 480, column: 15, scope: !351, inlinedAt: !352)
!364 = !DILocalVariable(name: "size", arg: 1, scope: !325, file: !26, line: 538, type: !86)
!365 = !DILocation(line: 538, column: 45, scope: !325, inlinedAt: !326)
!366 = !DILocalVariable(name: "flags", arg: 2, scope: !325, file: !26, line: 538, type: !33)
!367 = !DILocation(line: 538, column: 57, scope: !325, inlinedAt: !326)
!368 = !DILocalVariable(name: "index", scope: !323, file: !26, line: 542, type: !7)
!369 = !DILocation(line: 542, column: 16, scope: !323, inlinedAt: !326)
!370 = !DILocalVariable(name: "size", arg: 1, scope: !311, file: !26, line: 662, type: !86)
!371 = !DILocation(line: 662, column: 36, scope: !311)
!372 = !DILocalVariable(name: "flags", arg: 2, scope: !311, file: !26, line: 662, type: !33)
!373 = !DILocation(line: 662, column: 48, scope: !311)
!374 = !DILocation(line: 664, column: 17, scope: !311)
!375 = !DILocation(line: 664, column: 23, scope: !311)
!376 = !DILocation(line: 664, column: 29, scope: !311)
!377 = !DILocation(line: 540, column: 27, scope: !324, inlinedAt: !326)
!378 = !DILocation(line: 540, column: 6, scope: !324, inlinedAt: !326)
!379 = !DILocation(line: 540, column: 6, scope: !325, inlinedAt: !326)
!380 = !DILocation(line: 544, column: 7, scope: !353, inlinedAt: !326)
!381 = !DILocation(line: 544, column: 12, scope: !353, inlinedAt: !326)
!382 = !DILocation(line: 544, column: 7, scope: !323, inlinedAt: !326)
!383 = !DILocation(line: 545, column: 25, scope: !353, inlinedAt: !326)
!384 = !DILocation(line: 545, column: 31, scope: !353, inlinedAt: !326)
!385 = !DILocation(line: 480, column: 33, scope: !351, inlinedAt: !352)
!386 = !DILocation(line: 480, column: 23, scope: !351, inlinedAt: !352)
!387 = !DILocation(line: 481, column: 29, scope: !351, inlinedAt: !352)
!388 = !DILocation(line: 481, column: 35, scope: !351, inlinedAt: !352)
!389 = !DILocation(line: 481, column: 42, scope: !351, inlinedAt: !352)
!390 = !DILocation(line: 474, column: 23, scope: !346, inlinedAt: !350)
!391 = !DILocation(line: 474, column: 29, scope: !346, inlinedAt: !350)
!392 = !DILocation(line: 474, column: 36, scope: !346, inlinedAt: !350)
!393 = !DILocation(line: 474, column: 9, scope: !346, inlinedAt: !350)
!394 = !DILocation(line: 545, column: 4, scope: !353, inlinedAt: !326)
!395 = !DILocation(line: 547, column: 25, scope: !323, inlinedAt: !326)
!396 = !DILocation(line: 348, column: 7, scope: !397, inlinedAt: !344)
!397 = distinct !DILexicalBlock(scope: !340, file: !26, line: 348, column: 6)
!398 = !DILocation(line: 348, column: 6, scope: !340, inlinedAt: !344)
!399 = !DILocation(line: 349, column: 3, scope: !397, inlinedAt: !344)
!400 = !DILocation(line: 351, column: 6, scope: !401, inlinedAt: !344)
!401 = distinct !DILexicalBlock(scope: !340, file: !26, line: 351, column: 6)
!402 = !DILocation(line: 351, column: 11, scope: !401, inlinedAt: !344)
!403 = !DILocation(line: 351, column: 6, scope: !340, inlinedAt: !344)
!404 = !DILocation(line: 352, column: 3, scope: !401, inlinedAt: !344)
!405 = !DILocation(line: 354, column: 32, scope: !406, inlinedAt: !344)
!406 = distinct !DILexicalBlock(scope: !340, file: !26, line: 354, column: 6)
!407 = !DILocation(line: 354, column: 37, scope: !406, inlinedAt: !344)
!408 = !DILocation(line: 354, column: 42, scope: !406, inlinedAt: !344)
!409 = !DILocation(line: 354, column: 45, scope: !406, inlinedAt: !344)
!410 = !DILocation(line: 354, column: 50, scope: !406, inlinedAt: !344)
!411 = !DILocation(line: 354, column: 6, scope: !340, inlinedAt: !344)
!412 = !DILocation(line: 355, column: 3, scope: !406, inlinedAt: !344)
!413 = !DILocation(line: 356, column: 32, scope: !414, inlinedAt: !344)
!414 = distinct !DILexicalBlock(scope: !340, file: !26, line: 356, column: 6)
!415 = !DILocation(line: 356, column: 37, scope: !414, inlinedAt: !344)
!416 = !DILocation(line: 356, column: 43, scope: !414, inlinedAt: !344)
!417 = !DILocation(line: 356, column: 46, scope: !414, inlinedAt: !344)
!418 = !DILocation(line: 356, column: 51, scope: !414, inlinedAt: !344)
!419 = !DILocation(line: 356, column: 6, scope: !340, inlinedAt: !344)
!420 = !DILocation(line: 357, column: 3, scope: !414, inlinedAt: !344)
!421 = !DILocation(line: 358, column: 6, scope: !422, inlinedAt: !344)
!422 = distinct !DILexicalBlock(scope: !340, file: !26, line: 358, column: 6)
!423 = !DILocation(line: 358, column: 11, scope: !422, inlinedAt: !344)
!424 = !DILocation(line: 358, column: 6, scope: !340, inlinedAt: !344)
!425 = !DILocation(line: 358, column: 26, scope: !422, inlinedAt: !344)
!426 = !DILocation(line: 359, column: 6, scope: !427, inlinedAt: !344)
!427 = distinct !DILexicalBlock(scope: !340, file: !26, line: 359, column: 6)
!428 = !DILocation(line: 359, column: 11, scope: !427, inlinedAt: !344)
!429 = !DILocation(line: 359, column: 6, scope: !340, inlinedAt: !344)
!430 = !DILocation(line: 359, column: 26, scope: !427, inlinedAt: !344)
!431 = !DILocation(line: 360, column: 6, scope: !432, inlinedAt: !344)
!432 = distinct !DILexicalBlock(scope: !340, file: !26, line: 360, column: 6)
!433 = !DILocation(line: 360, column: 11, scope: !432, inlinedAt: !344)
!434 = !DILocation(line: 360, column: 6, scope: !340, inlinedAt: !344)
!435 = !DILocation(line: 360, column: 26, scope: !432, inlinedAt: !344)
!436 = !DILocation(line: 361, column: 6, scope: !437, inlinedAt: !344)
!437 = distinct !DILexicalBlock(scope: !340, file: !26, line: 361, column: 6)
!438 = !DILocation(line: 361, column: 11, scope: !437, inlinedAt: !344)
!439 = !DILocation(line: 361, column: 6, scope: !340, inlinedAt: !344)
!440 = !DILocation(line: 361, column: 26, scope: !437, inlinedAt: !344)
!441 = !DILocation(line: 362, column: 6, scope: !442, inlinedAt: !344)
!442 = distinct !DILexicalBlock(scope: !340, file: !26, line: 362, column: 6)
!443 = !DILocation(line: 362, column: 11, scope: !442, inlinedAt: !344)
!444 = !DILocation(line: 362, column: 6, scope: !340, inlinedAt: !344)
!445 = !DILocation(line: 362, column: 26, scope: !442, inlinedAt: !344)
!446 = !DILocation(line: 363, column: 6, scope: !447, inlinedAt: !344)
!447 = distinct !DILexicalBlock(scope: !340, file: !26, line: 363, column: 6)
!448 = !DILocation(line: 363, column: 11, scope: !447, inlinedAt: !344)
!449 = !DILocation(line: 363, column: 6, scope: !340, inlinedAt: !344)
!450 = !DILocation(line: 363, column: 26, scope: !447, inlinedAt: !344)
!451 = !DILocation(line: 364, column: 6, scope: !452, inlinedAt: !344)
!452 = distinct !DILexicalBlock(scope: !340, file: !26, line: 364, column: 6)
!453 = !DILocation(line: 364, column: 11, scope: !452, inlinedAt: !344)
!454 = !DILocation(line: 364, column: 6, scope: !340, inlinedAt: !344)
!455 = !DILocation(line: 364, column: 26, scope: !452, inlinedAt: !344)
!456 = !DILocation(line: 365, column: 6, scope: !457, inlinedAt: !344)
!457 = distinct !DILexicalBlock(scope: !340, file: !26, line: 365, column: 6)
!458 = !DILocation(line: 365, column: 11, scope: !457, inlinedAt: !344)
!459 = !DILocation(line: 365, column: 6, scope: !340, inlinedAt: !344)
!460 = !DILocation(line: 365, column: 26, scope: !457, inlinedAt: !344)
!461 = !DILocation(line: 366, column: 6, scope: !462, inlinedAt: !344)
!462 = distinct !DILexicalBlock(scope: !340, file: !26, line: 366, column: 6)
!463 = !DILocation(line: 366, column: 11, scope: !462, inlinedAt: !344)
!464 = !DILocation(line: 366, column: 6, scope: !340, inlinedAt: !344)
!465 = !DILocation(line: 366, column: 26, scope: !462, inlinedAt: !344)
!466 = !DILocation(line: 367, column: 6, scope: !467, inlinedAt: !344)
!467 = distinct !DILexicalBlock(scope: !340, file: !26, line: 367, column: 6)
!468 = !DILocation(line: 367, column: 11, scope: !467, inlinedAt: !344)
!469 = !DILocation(line: 367, column: 6, scope: !340, inlinedAt: !344)
!470 = !DILocation(line: 367, column: 26, scope: !467, inlinedAt: !344)
!471 = !DILocation(line: 368, column: 6, scope: !472, inlinedAt: !344)
!472 = distinct !DILexicalBlock(scope: !340, file: !26, line: 368, column: 6)
!473 = !DILocation(line: 368, column: 11, scope: !472, inlinedAt: !344)
!474 = !DILocation(line: 368, column: 6, scope: !340, inlinedAt: !344)
!475 = !DILocation(line: 368, column: 26, scope: !472, inlinedAt: !344)
!476 = !DILocation(line: 369, column: 6, scope: !477, inlinedAt: !344)
!477 = distinct !DILexicalBlock(scope: !340, file: !26, line: 369, column: 6)
!478 = !DILocation(line: 369, column: 11, scope: !477, inlinedAt: !344)
!479 = !DILocation(line: 369, column: 6, scope: !340, inlinedAt: !344)
!480 = !DILocation(line: 369, column: 26, scope: !477, inlinedAt: !344)
!481 = !DILocation(line: 370, column: 6, scope: !482, inlinedAt: !344)
!482 = distinct !DILexicalBlock(scope: !340, file: !26, line: 370, column: 6)
!483 = !DILocation(line: 370, column: 11, scope: !482, inlinedAt: !344)
!484 = !DILocation(line: 370, column: 6, scope: !340, inlinedAt: !344)
!485 = !DILocation(line: 370, column: 26, scope: !482, inlinedAt: !344)
!486 = !DILocation(line: 371, column: 6, scope: !487, inlinedAt: !344)
!487 = distinct !DILexicalBlock(scope: !340, file: !26, line: 371, column: 6)
!488 = !DILocation(line: 371, column: 11, scope: !487, inlinedAt: !344)
!489 = !DILocation(line: 371, column: 6, scope: !340, inlinedAt: !344)
!490 = !DILocation(line: 371, column: 26, scope: !487, inlinedAt: !344)
!491 = !DILocation(line: 372, column: 6, scope: !492, inlinedAt: !344)
!492 = distinct !DILexicalBlock(scope: !340, file: !26, line: 372, column: 6)
!493 = !DILocation(line: 372, column: 11, scope: !492, inlinedAt: !344)
!494 = !DILocation(line: 372, column: 6, scope: !340, inlinedAt: !344)
!495 = !DILocation(line: 372, column: 26, scope: !492, inlinedAt: !344)
!496 = !DILocation(line: 373, column: 6, scope: !497, inlinedAt: !344)
!497 = distinct !DILexicalBlock(scope: !340, file: !26, line: 373, column: 6)
!498 = !DILocation(line: 373, column: 11, scope: !497, inlinedAt: !344)
!499 = !DILocation(line: 373, column: 6, scope: !340, inlinedAt: !344)
!500 = !DILocation(line: 373, column: 26, scope: !497, inlinedAt: !344)
!501 = !DILocation(line: 374, column: 6, scope: !502, inlinedAt: !344)
!502 = distinct !DILexicalBlock(scope: !340, file: !26, line: 374, column: 6)
!503 = !DILocation(line: 374, column: 11, scope: !502, inlinedAt: !344)
!504 = !DILocation(line: 374, column: 6, scope: !340, inlinedAt: !344)
!505 = !DILocation(line: 374, column: 26, scope: !502, inlinedAt: !344)
!506 = !DILocation(line: 375, column: 6, scope: !507, inlinedAt: !344)
!507 = distinct !DILexicalBlock(scope: !340, file: !26, line: 375, column: 6)
!508 = !DILocation(line: 375, column: 11, scope: !507, inlinedAt: !344)
!509 = !DILocation(line: 375, column: 6, scope: !340, inlinedAt: !344)
!510 = !DILocation(line: 375, column: 27, scope: !507, inlinedAt: !344)
!511 = !DILocation(line: 376, column: 6, scope: !512, inlinedAt: !344)
!512 = distinct !DILexicalBlock(scope: !340, file: !26, line: 376, column: 6)
!513 = !DILocation(line: 376, column: 11, scope: !512, inlinedAt: !344)
!514 = !DILocation(line: 376, column: 6, scope: !340, inlinedAt: !344)
!515 = !DILocation(line: 376, column: 32, scope: !512, inlinedAt: !344)
!516 = !DILocation(line: 377, column: 6, scope: !517, inlinedAt: !344)
!517 = distinct !DILexicalBlock(scope: !340, file: !26, line: 377, column: 6)
!518 = !DILocation(line: 377, column: 11, scope: !517, inlinedAt: !344)
!519 = !DILocation(line: 377, column: 6, scope: !340, inlinedAt: !344)
!520 = !DILocation(line: 377, column: 32, scope: !517, inlinedAt: !344)
!521 = !DILocation(line: 378, column: 6, scope: !522, inlinedAt: !344)
!522 = distinct !DILexicalBlock(scope: !340, file: !26, line: 378, column: 6)
!523 = !DILocation(line: 378, column: 11, scope: !522, inlinedAt: !344)
!524 = !DILocation(line: 378, column: 6, scope: !340, inlinedAt: !344)
!525 = !DILocation(line: 378, column: 32, scope: !522, inlinedAt: !344)
!526 = !DILocation(line: 379, column: 6, scope: !527, inlinedAt: !344)
!527 = distinct !DILexicalBlock(scope: !340, file: !26, line: 379, column: 6)
!528 = !DILocation(line: 379, column: 11, scope: !527, inlinedAt: !344)
!529 = !DILocation(line: 379, column: 6, scope: !340, inlinedAt: !344)
!530 = !DILocation(line: 379, column: 33, scope: !527, inlinedAt: !344)
!531 = !DILocation(line: 380, column: 6, scope: !532, inlinedAt: !344)
!532 = distinct !DILexicalBlock(scope: !340, file: !26, line: 380, column: 6)
!533 = !DILocation(line: 380, column: 11, scope: !532, inlinedAt: !344)
!534 = !DILocation(line: 380, column: 6, scope: !340, inlinedAt: !344)
!535 = !DILocation(line: 380, column: 33, scope: !532, inlinedAt: !344)
!536 = !DILocation(line: 381, column: 6, scope: !537, inlinedAt: !344)
!537 = distinct !DILexicalBlock(scope: !340, file: !26, line: 381, column: 6)
!538 = !DILocation(line: 381, column: 11, scope: !537, inlinedAt: !344)
!539 = !DILocation(line: 381, column: 6, scope: !340, inlinedAt: !344)
!540 = !DILocation(line: 381, column: 33, scope: !537, inlinedAt: !344)
!541 = !DILocation(line: 382, column: 2, scope: !542, inlinedAt: !344)
!542 = distinct !DILexicalBlock(scope: !543, file: !26, line: 382, column: 2)
!543 = distinct !DILexicalBlock(scope: !340, file: !26, line: 382, column: 2)
!544 = !{i32 -2144630819, i32 -2144630790, i32 -2144630744, i32 -2144630686, i32 -2144630632, i32 -2144630578, i32 -2144630523, i32 -2144630492}
!545 = !DILocation(line: 382, column: 2, scope: !546, inlinedAt: !344)
!546 = distinct !DILexicalBlock(scope: !547, file: !26, line: 382, column: 2)
!547 = distinct !DILexicalBlock(scope: !543, file: !26, line: 382, column: 2)
!548 = !{i32 -2144630049, i32 -2144630042, i32 -2144629988, i32 -2144629957, i32 -2144629927}
!549 = !DILocation(line: 382, column: 2, scope: !547, inlinedAt: !344)
!550 = !DILocation(line: 386, column: 1, scope: !340, inlinedAt: !344)
!551 = !DILocation(line: 547, column: 9, scope: !323, inlinedAt: !326)
!552 = !DILocation(line: 549, column: 8, scope: !553, inlinedAt: !326)
!553 = distinct !DILexicalBlock(scope: !323, file: !26, line: 549, column: 7)
!554 = !DILocation(line: 549, column: 7, scope: !323, inlinedAt: !326)
!555 = !DILocation(line: 550, column: 4, scope: !553, inlinedAt: !326)
!556 = !DILocation(line: 553, column: 33, scope: !323, inlinedAt: !326)
!557 = !DILocation(line: 325, column: 6, scope: !558, inlinedAt: !338)
!558 = distinct !DILexicalBlock(scope: !334, file: !26, line: 325, column: 6)
!559 = !DILocation(line: 325, column: 6, scope: !334, inlinedAt: !338)
!560 = !DILocation(line: 326, column: 3, scope: !558, inlinedAt: !338)
!561 = !DILocation(line: 332, column: 9, scope: !334, inlinedAt: !338)
!562 = !DILocation(line: 332, column: 15, scope: !334, inlinedAt: !338)
!563 = !DILocation(line: 332, column: 2, scope: !334, inlinedAt: !338)
!564 = !DILocation(line: 336, column: 1, scope: !334, inlinedAt: !338)
!565 = !DILocation(line: 553, column: 5, scope: !323, inlinedAt: !326)
!566 = !DILocation(line: 553, column: 41, scope: !323, inlinedAt: !326)
!567 = !DILocation(line: 554, column: 5, scope: !323, inlinedAt: !326)
!568 = !DILocation(line: 554, column: 12, scope: !323, inlinedAt: !326)
!569 = !DILocation(line: 448, column: 31, scope: !315, inlinedAt: !322)
!570 = !DILocation(line: 448, column: 34, scope: !315, inlinedAt: !322)
!571 = !DILocation(line: 448, column: 14, scope: !315, inlinedAt: !322)
!572 = !DILocation(line: 450, column: 22, scope: !315, inlinedAt: !322)
!573 = !DILocation(line: 450, column: 25, scope: !315, inlinedAt: !322)
!574 = !DILocation(line: 450, column: 30, scope: !315, inlinedAt: !322)
!575 = !DILocation(line: 450, column: 36, scope: !315, inlinedAt: !322)
!576 = !DILocation(line: 450, column: 8, scope: !315, inlinedAt: !322)
!577 = !DILocation(line: 450, column: 6, scope: !315, inlinedAt: !322)
!578 = !DILocation(line: 451, column: 9, scope: !315, inlinedAt: !322)
!579 = !DILocation(line: 552, column: 3, scope: !323, inlinedAt: !326)
!580 = !DILocation(line: 557, column: 19, scope: !325, inlinedAt: !326)
!581 = !DILocation(line: 557, column: 25, scope: !325, inlinedAt: !326)
!582 = !DILocation(line: 557, column: 9, scope: !325, inlinedAt: !326)
!583 = !DILocation(line: 557, column: 2, scope: !325, inlinedAt: !326)
!584 = !DILocation(line: 558, column: 1, scope: !325, inlinedAt: !326)
!585 = !DILocation(line: 664, column: 2, scope: !311)
!586 = distinct !DISubprogram(name: "qmi_encode", scope: !3, file: !3, line: 292, type: !587, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!587 = !DISubroutineType(types: !588)
!588 = !{!84, !73, !40, !91, !66, !84}
!589 = !DILocalVariable(name: "ei_array", arg: 1, scope: !586, file: !3, line: 292, type: !73)
!590 = !DILocation(line: 292, column: 45, scope: !586)
!591 = !DILocalVariable(name: "out_buf", arg: 2, scope: !586, file: !3, line: 292, type: !40)
!592 = !DILocation(line: 292, column: 61, scope: !586)
!593 = !DILocalVariable(name: "in_c_struct", arg: 3, scope: !586, file: !3, line: 293, type: !91)
!594 = !DILocation(line: 293, column: 21, scope: !586)
!595 = !DILocalVariable(name: "out_buf_len", arg: 4, scope: !586, file: !3, line: 293, type: !66)
!596 = !DILocation(line: 293, column: 38, scope: !586)
!597 = !DILocalVariable(name: "enc_level", arg: 5, scope: !586, file: !3, line: 294, type: !84)
!598 = !DILocation(line: 294, column: 13, scope: !586)
!599 = !DILocalVariable(name: "temp_ei", scope: !586, file: !3, line: 296, type: !73)
!600 = !DILocation(line: 296, column: 24, scope: !586)
!601 = !DILocation(line: 296, column: 34, scope: !586)
!602 = !DILocalVariable(name: "opt_flag_value", scope: !586, file: !3, line: 297, type: !35)
!603 = !DILocation(line: 297, column: 5, scope: !586)
!604 = !DILocalVariable(name: "data_len_value", scope: !586, file: !3, line: 298, type: !66)
!605 = !DILocation(line: 298, column: 6, scope: !586)
!606 = !DILocalVariable(name: "data_len_sz", scope: !586, file: !3, line: 298, type: !66)
!607 = !DILocation(line: 298, column: 26, scope: !586)
!608 = !DILocalVariable(name: "buf_dst", scope: !586, file: !3, line: 299, type: !41)
!609 = !DILocation(line: 299, column: 6, scope: !586)
!610 = !DILocation(line: 299, column: 22, scope: !586)
!611 = !DILocalVariable(name: "tlv_pointer", scope: !586, file: !3, line: 300, type: !41)
!612 = !DILocation(line: 300, column: 6, scope: !586)
!613 = !DILocalVariable(name: "tlv_len", scope: !586, file: !3, line: 301, type: !66)
!614 = !DILocation(line: 301, column: 6, scope: !586)
!615 = !DILocalVariable(name: "tlv_type", scope: !586, file: !3, line: 302, type: !35)
!616 = !DILocation(line: 302, column: 5, scope: !586)
!617 = !DILocalVariable(name: "encoded_bytes", scope: !586, file: !3, line: 303, type: !66)
!618 = !DILocation(line: 303, column: 6, scope: !586)
!619 = !DILocalVariable(name: "buf_src", scope: !586, file: !3, line: 304, type: !91)
!620 = !DILocation(line: 304, column: 14, scope: !586)
!621 = !DILocalVariable(name: "encode_tlv", scope: !586, file: !3, line: 305, type: !84)
!622 = !DILocation(line: 305, column: 6, scope: !586)
!623 = !DILocalVariable(name: "rc", scope: !586, file: !3, line: 306, type: !84)
!624 = !DILocation(line: 306, column: 6, scope: !586)
!625 = !DILocation(line: 308, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !586, file: !3, line: 308, column: 6)
!627 = !DILocation(line: 308, column: 6, scope: !586)
!628 = !DILocation(line: 309, column: 3, scope: !626)
!629 = !DILocation(line: 311, column: 16, scope: !586)
!630 = !DILocation(line: 311, column: 14, scope: !586)
!631 = !DILocation(line: 312, column: 10, scope: !586)
!632 = !DILocation(line: 313, column: 6, scope: !633)
!633 = distinct !DILexicalBlock(scope: !586, file: !3, line: 313, column: 6)
!634 = !DILocation(line: 313, column: 16, scope: !633)
!635 = !DILocation(line: 313, column: 6, scope: !586)
!636 = !DILocation(line: 314, column: 13, scope: !633)
!637 = !DILocation(line: 314, column: 21, scope: !633)
!638 = !DILocation(line: 314, column: 11, scope: !633)
!639 = !DILocation(line: 314, column: 3, scope: !633)
!640 = !DILocation(line: 316, column: 2, scope: !586)
!641 = !DILocation(line: 316, column: 9, scope: !586)
!642 = !DILocation(line: 316, column: 18, scope: !586)
!643 = !DILocation(line: 316, column: 28, scope: !586)
!644 = !DILocation(line: 317, column: 13, scope: !645)
!645 = distinct !DILexicalBlock(scope: !586, file: !3, line: 316, column: 41)
!646 = !DILocation(line: 317, column: 27, scope: !645)
!647 = !DILocation(line: 317, column: 36, scope: !645)
!648 = !DILocation(line: 317, column: 25, scope: !645)
!649 = !DILocation(line: 317, column: 11, scope: !645)
!650 = !DILocation(line: 318, column: 14, scope: !645)
!651 = !DILocation(line: 318, column: 23, scope: !645)
!652 = !DILocation(line: 318, column: 12, scope: !645)
!653 = !DILocation(line: 320, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !645, file: !3, line: 320, column: 7)
!655 = !DILocation(line: 320, column: 16, scope: !654)
!656 = !DILocation(line: 320, column: 27, scope: !654)
!657 = !DILocation(line: 320, column: 7, scope: !645)
!658 = !DILocation(line: 321, column: 19, scope: !659)
!659 = distinct !DILexicalBlock(scope: !654, file: !3, line: 320, column: 40)
!660 = !DILocation(line: 322, column: 3, scope: !659)
!661 = !DILocation(line: 322, column: 14, scope: !662)
!662 = distinct !DILexicalBlock(scope: !654, file: !3, line: 322, column: 14)
!663 = !DILocation(line: 322, column: 23, scope: !662)
!664 = !DILocation(line: 322, column: 34, scope: !662)
!665 = !DILocation(line: 322, column: 14, scope: !654)
!666 = !DILocation(line: 323, column: 21, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !3, line: 322, column: 51)
!668 = !DILocation(line: 323, column: 30, scope: !667)
!669 = !DILocation(line: 323, column: 19, scope: !667)
!670 = !DILocation(line: 324, column: 3, scope: !667)
!671 = !DILocation(line: 324, column: 14, scope: !672)
!672 = distinct !DILexicalBlock(scope: !662, file: !3, line: 324, column: 14)
!673 = !DILocation(line: 324, column: 29, scope: !672)
!674 = !DILocation(line: 324, column: 34, scope: !672)
!675 = !DILocation(line: 325, column: 8, scope: !672)
!676 = !DILocation(line: 325, column: 17, scope: !672)
!677 = !DILocation(line: 325, column: 28, scope: !672)
!678 = !DILocation(line: 325, column: 26, scope: !672)
!679 = !DILocation(line: 324, column: 14, scope: !662)
!680 = !DILocation(line: 326, column: 4, scope: !681)
!681 = distinct !DILexicalBlock(scope: !672, file: !3, line: 325, column: 44)
!682 = !DILocation(line: 327, column: 4, scope: !681)
!683 = !DILocation(line: 330, column: 11, scope: !645)
!684 = !DILocation(line: 330, column: 20, scope: !645)
!685 = !DILocation(line: 330, column: 3, scope: !645)
!686 = !DILocation(line: 332, column: 48, scope: !687)
!687 = distinct !DILexicalBlock(scope: !645, file: !3, line: 330, column: 31)
!688 = !DILocation(line: 332, column: 9, scope: !687)
!689 = !DILocation(line: 332, column: 7, scope: !687)
!690 = !DILocation(line: 334, column: 8, scope: !691)
!691 = distinct !DILexicalBlock(scope: !687, file: !3, line: 334, column: 8)
!692 = !DILocation(line: 334, column: 8, scope: !687)
!693 = !DILocation(line: 335, column: 15, scope: !691)
!694 = !DILocation(line: 335, column: 23, scope: !691)
!695 = !DILocation(line: 335, column: 13, scope: !691)
!696 = !DILocation(line: 335, column: 5, scope: !691)
!697 = !DILocation(line: 337, column: 33, scope: !691)
!698 = !DILocation(line: 337, column: 42, scope: !691)
!699 = !DILocation(line: 337, column: 15, scope: !691)
!700 = !DILocation(line: 337, column: 13, scope: !691)
!701 = !DILocation(line: 338, column: 4, scope: !687)
!702 = !DILocation(line: 341, column: 4, scope: !687)
!703 = !DILocation(line: 341, column: 28, scope: !687)
!704 = !DILocation(line: 341, column: 37, scope: !687)
!705 = !DILocation(line: 341, column: 46, scope: !687)
!706 = !DILocation(line: 342, column: 18, scope: !687)
!707 = !DILocation(line: 342, column: 27, scope: !687)
!708 = !DILocation(line: 342, column: 37, scope: !687)
!709 = !DILocation(line: 342, column: 16, scope: !687)
!710 = !DILocation(line: 345, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !687, file: !3, line: 345, column: 8)
!712 = !DILocation(line: 345, column: 23, scope: !711)
!713 = !DILocation(line: 345, column: 21, scope: !711)
!714 = !DILocation(line: 345, column: 37, scope: !711)
!715 = !DILocation(line: 345, column: 52, scope: !711)
!716 = !DILocation(line: 346, column: 25, scope: !711)
!717 = !DILocation(line: 346, column: 23, scope: !711)
!718 = !DILocation(line: 345, column: 8, scope: !687)
!719 = !DILocation(line: 347, column: 5, scope: !720)
!720 = distinct !DILexicalBlock(scope: !711, file: !3, line: 346, column: 38)
!721 = !DILocation(line: 349, column: 5, scope: !720)
!722 = !DILocation(line: 351, column: 31, scope: !687)
!723 = !DILocation(line: 351, column: 40, scope: !687)
!724 = !DILocation(line: 352, column: 13, scope: !687)
!725 = !DILocation(line: 351, column: 9, scope: !687)
!726 = !DILocation(line: 351, column: 7, scope: !687)
!727 = !DILocation(line: 353, column: 4, scope: !687)
!728 = !DILocation(line: 353, column: 4, scope: !729)
!729 = distinct !DILexicalBlock(scope: !687, file: !3, line: 353, column: 4)
!730 = !DILocation(line: 356, column: 9, scope: !731)
!731 = distinct !DILexicalBlock(scope: !687, file: !3, line: 356, column: 8)
!732 = !DILocation(line: 356, column: 8, scope: !687)
!733 = !DILocation(line: 357, column: 33, scope: !731)
!734 = !DILocation(line: 357, column: 42, scope: !731)
!735 = !DILocation(line: 357, column: 15, scope: !731)
!736 = !DILocation(line: 357, column: 13, scope: !731)
!737 = !DILocation(line: 357, column: 5, scope: !731)
!738 = !DILocation(line: 359, column: 16, scope: !731)
!739 = !DILocation(line: 360, column: 4, scope: !687)
!740 = !DILocation(line: 369, column: 10, scope: !741)
!741 = distinct !DILexicalBlock(scope: !687, file: !3, line: 369, column: 8)
!742 = !DILocation(line: 369, column: 27, scope: !741)
!743 = !DILocation(line: 369, column: 36, scope: !741)
!744 = !DILocation(line: 369, column: 25, scope: !741)
!745 = !DILocation(line: 370, column: 8, scope: !741)
!746 = !DILocation(line: 369, column: 47, scope: !741)
!747 = !DILocation(line: 369, column: 9, scope: !741)
!748 = !DILocation(line: 370, column: 22, scope: !741)
!749 = !DILocation(line: 370, column: 37, scope: !741)
!750 = !DILocation(line: 371, column: 8, scope: !741)
!751 = !DILocation(line: 370, column: 54, scope: !741)
!752 = !DILocation(line: 369, column: 8, scope: !687)
!753 = !DILocation(line: 372, column: 5, scope: !754)
!754 = distinct !DILexicalBlock(scope: !741, file: !3, line: 371, column: 21)
!755 = !DILocation(line: 374, column: 5, scope: !754)
!756 = !DILocation(line: 376, column: 31, scope: !687)
!757 = !DILocation(line: 376, column: 40, scope: !687)
!758 = !DILocation(line: 377, column: 10, scope: !687)
!759 = !DILocation(line: 378, column: 10, scope: !687)
!760 = !DILocation(line: 378, column: 19, scope: !687)
!761 = !DILocation(line: 376, column: 9, scope: !687)
!762 = !DILocation(line: 376, column: 7, scope: !687)
!763 = !DILocation(line: 379, column: 4, scope: !687)
!764 = !DILocation(line: 379, column: 4, scope: !765)
!765 = distinct !DILexicalBlock(scope: !687, file: !3, line: 379, column: 4)
!766 = !DILocation(line: 382, column: 4, scope: !687)
!767 = !DILocation(line: 385, column: 32, scope: !687)
!768 = !DILocation(line: 385, column: 41, scope: !687)
!769 = !DILocation(line: 385, column: 50, scope: !687)
!770 = !DILocation(line: 386, column: 11, scope: !687)
!771 = !DILocation(line: 387, column: 11, scope: !687)
!772 = !DILocation(line: 387, column: 25, scope: !687)
!773 = !DILocation(line: 387, column: 23, scope: !687)
!774 = !DILocation(line: 388, column: 11, scope: !687)
!775 = !DILocation(line: 388, column: 21, scope: !687)
!776 = !DILocation(line: 385, column: 9, scope: !687)
!777 = !DILocation(line: 385, column: 7, scope: !687)
!778 = !DILocation(line: 389, column: 8, scope: !779)
!779 = distinct !DILexicalBlock(scope: !687, file: !3, line: 389, column: 8)
!780 = !DILocation(line: 389, column: 11, scope: !779)
!781 = !DILocation(line: 389, column: 8, scope: !687)
!782 = !DILocation(line: 390, column: 12, scope: !779)
!783 = !DILocation(line: 390, column: 5, scope: !779)
!784 = !DILocation(line: 391, column: 4, scope: !687)
!785 = !DILocation(line: 391, column: 4, scope: !786)
!786 = distinct !DILexicalBlock(scope: !687, file: !3, line: 391, column: 4)
!787 = !DILocation(line: 394, column: 4, scope: !687)
!788 = !DILocation(line: 397, column: 32, scope: !687)
!789 = !DILocation(line: 397, column: 41, scope: !687)
!790 = !DILocation(line: 397, column: 50, scope: !687)
!791 = !DILocation(line: 398, column: 11, scope: !687)
!792 = !DILocation(line: 398, column: 25, scope: !687)
!793 = !DILocation(line: 398, column: 23, scope: !687)
!794 = !DILocation(line: 399, column: 11, scope: !687)
!795 = !DILocation(line: 397, column: 9, scope: !687)
!796 = !DILocation(line: 397, column: 7, scope: !687)
!797 = !DILocation(line: 400, column: 8, scope: !798)
!798 = distinct !DILexicalBlock(scope: !687, file: !3, line: 400, column: 8)
!799 = !DILocation(line: 400, column: 11, scope: !798)
!800 = !DILocation(line: 400, column: 8, scope: !687)
!801 = !DILocation(line: 401, column: 12, scope: !798)
!802 = !DILocation(line: 401, column: 5, scope: !798)
!803 = !DILocation(line: 402, column: 4, scope: !687)
!804 = !DILocation(line: 402, column: 4, scope: !805)
!805 = distinct !DILexicalBlock(scope: !687, file: !3, line: 402, column: 4)
!806 = !DILocation(line: 405, column: 4, scope: !687)
!807 = !DILocation(line: 407, column: 4, scope: !687)
!808 = !DILocation(line: 408, column: 4, scope: !687)
!809 = !DILocation(line: 411, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !645, file: !3, line: 411, column: 7)
!811 = !DILocation(line: 411, column: 18, scope: !810)
!812 = !DILocation(line: 411, column: 21, scope: !810)
!813 = !DILocation(line: 411, column: 31, scope: !810)
!814 = !DILocation(line: 411, column: 7, scope: !645)
!815 = !DILocation(line: 412, column: 4, scope: !816)
!816 = distinct !DILexicalBlock(scope: !810, file: !3, line: 411, column: 37)
!817 = !DILocation(line: 412, column: 4, scope: !818)
!818 = distinct !DILexicalBlock(scope: !816, file: !3, line: 412, column: 4)
!819 = !DILocation(line: 413, column: 18, scope: !816)
!820 = !DILocation(line: 414, column: 18, scope: !816)
!821 = !DILocation(line: 414, column: 16, scope: !816)
!822 = !DILocation(line: 415, column: 12, scope: !816)
!823 = !DILocation(line: 416, column: 14, scope: !816)
!824 = !DILocation(line: 416, column: 22, scope: !816)
!825 = !DILocation(line: 416, column: 37, scope: !816)
!826 = !DILocation(line: 416, column: 12, scope: !816)
!827 = !DILocation(line: 417, column: 15, scope: !816)
!828 = !DILocation(line: 418, column: 3, scope: !816)
!829 = distinct !{!829, !640, !830}
!830 = !DILocation(line: 419, column: 2, scope: !586)
!831 = !DILocation(line: 421, column: 9, scope: !586)
!832 = !DILocation(line: 421, column: 2, scope: !586)
!833 = !DILocation(line: 422, column: 1, scope: !586)
!834 = distinct !DISubprogram(name: "qmi_decode_message", scope: !3, file: !3, line: 769, type: !835, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !93)
!835 = !DISubroutineType(types: !836)
!836 = !{!84, !91, !86, !73, !40}
!837 = !DILocalVariable(name: "buf", arg: 1, scope: !834, file: !3, line: 769, type: !91)
!838 = !DILocation(line: 769, column: 36, scope: !834)
!839 = !DILocalVariable(name: "len", arg: 2, scope: !834, file: !3, line: 769, type: !86)
!840 = !DILocation(line: 769, column: 48, scope: !834)
!841 = !DILocalVariable(name: "ei", arg: 3, scope: !834, file: !3, line: 770, type: !73)
!842 = !DILocation(line: 770, column: 32, scope: !834)
!843 = !DILocalVariable(name: "c_struct", arg: 4, scope: !834, file: !3, line: 770, type: !40)
!844 = !DILocation(line: 770, column: 42, scope: !834)
!845 = !DILocation(line: 772, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !834, file: !3, line: 772, column: 6)
!847 = !DILocation(line: 772, column: 6, scope: !834)
!848 = !DILocation(line: 773, column: 3, scope: !846)
!849 = !DILocation(line: 775, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !834, file: !3, line: 775, column: 6)
!851 = !DILocation(line: 775, column: 16, scope: !850)
!852 = !DILocation(line: 775, column: 20, scope: !850)
!853 = !DILocation(line: 775, column: 24, scope: !850)
!854 = !DILocation(line: 775, column: 28, scope: !850)
!855 = !DILocation(line: 775, column: 6, scope: !834)
!856 = !DILocation(line: 776, column: 3, scope: !850)
!857 = !DILocation(line: 778, column: 20, scope: !834)
!858 = !DILocation(line: 778, column: 24, scope: !834)
!859 = !DILocation(line: 778, column: 34, scope: !834)
!860 = !DILocation(line: 778, column: 38, scope: !834)
!861 = !DILocation(line: 779, column: 6, scope: !834)
!862 = !DILocation(line: 779, column: 10, scope: !834)
!863 = !DILocation(line: 778, column: 9, scope: !834)
!864 = !DILocation(line: 778, column: 2, scope: !834)
!865 = !DILocation(line: 780, column: 1, scope: !834)
!866 = distinct !DISubprogram(name: "qmi_decode", scope: !3, file: !3, line: 593, type: !587, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!867 = !DILocalVariable(name: "ei_array", arg: 1, scope: !866, file: !3, line: 593, type: !73)
!868 = !DILocation(line: 593, column: 45, scope: !866)
!869 = !DILocalVariable(name: "out_c_struct", arg: 2, scope: !866, file: !3, line: 593, type: !40)
!870 = !DILocation(line: 593, column: 61, scope: !866)
!871 = !DILocalVariable(name: "in_buf", arg: 3, scope: !866, file: !3, line: 594, type: !91)
!872 = !DILocation(line: 594, column: 21, scope: !866)
!873 = !DILocalVariable(name: "in_buf_len", arg: 4, scope: !866, file: !3, line: 594, type: !66)
!874 = !DILocation(line: 594, column: 33, scope: !866)
!875 = !DILocalVariable(name: "dec_level", arg: 5, scope: !866, file: !3, line: 595, type: !84)
!876 = !DILocation(line: 595, column: 13, scope: !866)
!877 = !DILocalVariable(name: "temp_ei", scope: !866, file: !3, line: 597, type: !73)
!878 = !DILocation(line: 597, column: 24, scope: !866)
!879 = !DILocation(line: 597, column: 34, scope: !866)
!880 = !DILocalVariable(name: "opt_flag_value", scope: !866, file: !3, line: 598, type: !35)
!881 = !DILocation(line: 598, column: 5, scope: !866)
!882 = !DILocalVariable(name: "data_len_value", scope: !866, file: !3, line: 599, type: !66)
!883 = !DILocation(line: 599, column: 6, scope: !866)
!884 = !DILocalVariable(name: "data_len_sz", scope: !866, file: !3, line: 599, type: !66)
!885 = !DILocation(line: 599, column: 26, scope: !866)
!886 = !DILocalVariable(name: "buf_dst", scope: !866, file: !3, line: 600, type: !41)
!887 = !DILocation(line: 600, column: 6, scope: !866)
!888 = !DILocation(line: 600, column: 16, scope: !866)
!889 = !DILocalVariable(name: "tlv_pointer", scope: !866, file: !3, line: 601, type: !890)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!892 = !DILocation(line: 601, column: 12, scope: !866)
!893 = !DILocalVariable(name: "tlv_len", scope: !866, file: !3, line: 602, type: !66)
!894 = !DILocation(line: 602, column: 6, scope: !866)
!895 = !DILocalVariable(name: "tlv_type", scope: !866, file: !3, line: 603, type: !66)
!896 = !DILocation(line: 603, column: 6, scope: !866)
!897 = !DILocalVariable(name: "decoded_bytes", scope: !866, file: !3, line: 604, type: !66)
!898 = !DILocation(line: 604, column: 6, scope: !866)
!899 = !DILocalVariable(name: "buf_src", scope: !866, file: !3, line: 605, type: !91)
!900 = !DILocation(line: 605, column: 14, scope: !866)
!901 = !DILocation(line: 605, column: 24, scope: !866)
!902 = !DILocalVariable(name: "rc", scope: !866, file: !3, line: 606, type: !84)
!903 = !DILocation(line: 606, column: 6, scope: !866)
!904 = !DILocation(line: 608, column: 2, scope: !866)
!905 = !DILocation(line: 608, column: 9, scope: !866)
!906 = !DILocation(line: 608, column: 25, scope: !866)
!907 = !DILocation(line: 608, column: 23, scope: !866)
!908 = !DILocation(line: 609, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 609, column: 7)
!910 = distinct !DILexicalBlock(scope: !866, file: !3, line: 608, column: 37)
!911 = !DILocation(line: 609, column: 17, scope: !909)
!912 = !DILocation(line: 609, column: 22, scope: !909)
!913 = !DILocation(line: 609, column: 25, scope: !909)
!914 = !DILocation(line: 609, column: 34, scope: !909)
!915 = !DILocation(line: 609, column: 44, scope: !909)
!916 = !DILocation(line: 609, column: 7, scope: !910)
!917 = !DILocation(line: 610, column: 11, scope: !909)
!918 = !DILocation(line: 610, column: 4, scope: !909)
!919 = !DILocation(line: 612, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !910, file: !3, line: 612, column: 7)
!921 = !DILocation(line: 612, column: 17, scope: !920)
!922 = !DILocation(line: 612, column: 7, scope: !910)
!923 = !DILocation(line: 613, column: 18, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !3, line: 612, column: 23)
!925 = !DILocation(line: 613, column: 16, scope: !924)
!926 = !DILocation(line: 614, column: 4, scope: !924)
!927 = !DILocation(line: 614, column: 4, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !3, line: 614, column: 4)
!929 = !DILocation(line: 616, column: 12, scope: !924)
!930 = !DILocation(line: 617, column: 18, scope: !924)
!931 = !DILocation(line: 618, column: 22, scope: !924)
!932 = !DILocation(line: 618, column: 32, scope: !924)
!933 = !DILocation(line: 618, column: 14, scope: !924)
!934 = !DILocation(line: 618, column: 12, scope: !924)
!935 = !DILocation(line: 619, column: 9, scope: !936)
!936 = distinct !DILexicalBlock(scope: !924, file: !3, line: 619, column: 8)
!937 = !DILocation(line: 619, column: 17, scope: !936)
!938 = !DILocation(line: 619, column: 20, scope: !936)
!939 = !DILocation(line: 619, column: 29, scope: !936)
!940 = !DILocation(line: 619, column: 8, scope: !924)
!941 = !DILocation(line: 620, column: 5, scope: !942)
!942 = distinct !DILexicalBlock(scope: !936, file: !3, line: 619, column: 56)
!943 = !DILocation(line: 621, column: 5, scope: !942)
!944 = !DILocation(line: 622, column: 16, scope: !945)
!945 = distinct !DILexicalBlock(scope: !936, file: !3, line: 622, column: 15)
!946 = !DILocation(line: 622, column: 15, scope: !936)
!947 = !DILocation(line: 623, column: 5, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 622, column: 25)
!949 = !DILocation(line: 623, column: 5, scope: !950)
!950 = distinct !DILexicalBlock(scope: !948, file: !3, line: 623, column: 5)
!951 = !DILocation(line: 625, column: 5, scope: !948)
!952 = distinct !{!952, !904, !953}
!953 = !DILocation(line: 699, column: 2, scope: !866)
!954 = !DILocation(line: 627, column: 3, scope: !924)
!955 = !DILocation(line: 632, column: 14, scope: !956)
!956 = distinct !DILexicalBlock(scope: !920, file: !3, line: 627, column: 10)
!957 = !DILocation(line: 632, column: 27, scope: !956)
!958 = !DILocation(line: 632, column: 25, scope: !956)
!959 = !DILocation(line: 632, column: 12, scope: !956)
!960 = !DILocation(line: 635, column: 13, scope: !910)
!961 = !DILocation(line: 635, column: 28, scope: !910)
!962 = !DILocation(line: 635, column: 37, scope: !910)
!963 = !DILocation(line: 635, column: 26, scope: !910)
!964 = !DILocation(line: 635, column: 11, scope: !910)
!965 = !DILocation(line: 636, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !910, file: !3, line: 636, column: 7)
!967 = !DILocation(line: 636, column: 16, scope: !966)
!968 = !DILocation(line: 636, column: 26, scope: !966)
!969 = !DILocation(line: 636, column: 7, scope: !910)
!970 = !DILocation(line: 637, column: 11, scope: !971)
!971 = distinct !DILexicalBlock(scope: !966, file: !3, line: 636, column: 43)
!972 = !DILocation(line: 637, column: 4, scope: !971)
!973 = !DILocation(line: 638, column: 14, scope: !971)
!974 = !DILocation(line: 638, column: 22, scope: !971)
!975 = !DILocation(line: 638, column: 12, scope: !971)
!976 = !DILocation(line: 639, column: 14, scope: !971)
!977 = !DILocation(line: 639, column: 29, scope: !971)
!978 = !DILocation(line: 639, column: 38, scope: !971)
!979 = !DILocation(line: 639, column: 27, scope: !971)
!980 = !DILocation(line: 639, column: 12, scope: !971)
!981 = !DILocation(line: 640, column: 3, scope: !971)
!982 = !DILocation(line: 642, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !910, file: !3, line: 642, column: 7)
!984 = !DILocation(line: 642, column: 16, scope: !983)
!985 = !DILocation(line: 642, column: 26, scope: !983)
!986 = !DILocation(line: 642, column: 7, scope: !910)
!987 = !DILocation(line: 643, column: 18, scope: !988)
!988 = distinct !DILexicalBlock(scope: !983, file: !3, line: 642, column: 43)
!989 = !DILocation(line: 643, column: 27, scope: !988)
!990 = !DILocation(line: 643, column: 37, scope: !988)
!991 = !DILocation(line: 643, column: 16, scope: !988)
!992 = !DILocation(line: 645, column: 31, scope: !988)
!993 = !DILocation(line: 645, column: 48, scope: !988)
!994 = !DILocation(line: 646, column: 13, scope: !988)
!995 = !DILocation(line: 645, column: 9, scope: !988)
!996 = !DILocation(line: 645, column: 7, scope: !988)
!997 = !DILocation(line: 647, column: 11, scope: !988)
!998 = !DILocation(line: 647, column: 4, scope: !988)
!999 = !DILocation(line: 648, column: 14, scope: !988)
!1000 = !DILocation(line: 648, column: 22, scope: !988)
!1001 = !DILocation(line: 648, column: 12, scope: !988)
!1002 = !DILocation(line: 649, column: 14, scope: !988)
!1003 = !DILocation(line: 649, column: 29, scope: !988)
!1004 = !DILocation(line: 649, column: 38, scope: !988)
!1005 = !DILocation(line: 649, column: 27, scope: !988)
!1006 = !DILocation(line: 649, column: 12, scope: !988)
!1007 = !DILocation(line: 650, column: 15, scope: !988)
!1008 = !DILocation(line: 650, column: 12, scope: !988)
!1009 = !DILocation(line: 651, column: 4, scope: !988)
!1010 = !DILocation(line: 651, column: 4, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !988, file: !3, line: 651, column: 4)
!1012 = !DILocation(line: 652, column: 3, scope: !988)
!1013 = !DILocation(line: 654, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !910, file: !3, line: 654, column: 7)
!1015 = !DILocation(line: 654, column: 16, scope: !1014)
!1016 = !DILocation(line: 654, column: 27, scope: !1014)
!1017 = !DILocation(line: 654, column: 7, scope: !910)
!1018 = !DILocation(line: 655, column: 19, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 654, column: 40)
!1020 = !DILocation(line: 656, column: 3, scope: !1019)
!1021 = !DILocation(line: 656, column: 14, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 656, column: 14)
!1023 = !DILocation(line: 656, column: 23, scope: !1022)
!1024 = !DILocation(line: 656, column: 34, scope: !1022)
!1025 = !DILocation(line: 656, column: 14, scope: !1014)
!1026 = !DILocation(line: 657, column: 21, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 656, column: 51)
!1028 = !DILocation(line: 657, column: 30, scope: !1027)
!1029 = !DILocation(line: 657, column: 19, scope: !1027)
!1030 = !DILocation(line: 658, column: 3, scope: !1027)
!1031 = !DILocation(line: 658, column: 14, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 658, column: 14)
!1033 = !DILocation(line: 658, column: 31, scope: !1032)
!1034 = !DILocation(line: 658, column: 40, scope: !1032)
!1035 = !DILocation(line: 658, column: 29, scope: !1032)
!1036 = !DILocation(line: 658, column: 14, scope: !1022)
!1037 = !DILocation(line: 659, column: 4, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 658, column: 50)
!1039 = !DILocation(line: 661, column: 4, scope: !1038)
!1040 = !DILocation(line: 664, column: 11, scope: !910)
!1041 = !DILocation(line: 664, column: 20, scope: !910)
!1042 = !DILocation(line: 664, column: 3, scope: !910)
!1043 = !DILocation(line: 671, column: 31, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !910, file: !3, line: 664, column: 31)
!1045 = !DILocation(line: 671, column: 40, scope: !1044)
!1046 = !DILocation(line: 672, column: 10, scope: !1044)
!1047 = !DILocation(line: 673, column: 10, scope: !1044)
!1048 = !DILocation(line: 673, column: 19, scope: !1044)
!1049 = !DILocation(line: 671, column: 9, scope: !1044)
!1050 = !DILocation(line: 671, column: 7, scope: !1044)
!1051 = !DILocation(line: 674, column: 4, scope: !1044)
!1052 = !DILocation(line: 674, column: 4, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 674, column: 4)
!1054 = !DILocation(line: 675, column: 4, scope: !1044)
!1055 = !DILocation(line: 678, column: 32, scope: !1044)
!1056 = !DILocation(line: 678, column: 41, scope: !1044)
!1057 = !DILocation(line: 678, column: 50, scope: !1044)
!1058 = !DILocation(line: 679, column: 11, scope: !1044)
!1059 = !DILocation(line: 679, column: 27, scope: !1044)
!1060 = !DILocation(line: 680, column: 11, scope: !1044)
!1061 = !DILocation(line: 680, column: 21, scope: !1044)
!1062 = !DILocation(line: 678, column: 9, scope: !1044)
!1063 = !DILocation(line: 678, column: 7, scope: !1044)
!1064 = !DILocation(line: 681, column: 8, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 681, column: 8)
!1066 = !DILocation(line: 681, column: 11, scope: !1065)
!1067 = !DILocation(line: 681, column: 8, scope: !1044)
!1068 = !DILocation(line: 682, column: 12, scope: !1065)
!1069 = !DILocation(line: 682, column: 5, scope: !1065)
!1070 = !DILocation(line: 683, column: 4, scope: !1044)
!1071 = !DILocation(line: 683, column: 4, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 683, column: 4)
!1073 = !DILocation(line: 684, column: 4, scope: !1044)
!1074 = !DILocation(line: 687, column: 32, scope: !1044)
!1075 = !DILocation(line: 687, column: 41, scope: !1044)
!1076 = !DILocation(line: 687, column: 50, scope: !1044)
!1077 = !DILocation(line: 688, column: 11, scope: !1044)
!1078 = !DILocation(line: 688, column: 20, scope: !1044)
!1079 = !DILocation(line: 687, column: 9, scope: !1044)
!1080 = !DILocation(line: 687, column: 7, scope: !1044)
!1081 = !DILocation(line: 689, column: 8, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 689, column: 8)
!1083 = !DILocation(line: 689, column: 11, scope: !1082)
!1084 = !DILocation(line: 689, column: 8, scope: !1044)
!1085 = !DILocation(line: 690, column: 12, scope: !1082)
!1086 = !DILocation(line: 690, column: 5, scope: !1082)
!1087 = !DILocation(line: 691, column: 4, scope: !1044)
!1088 = !DILocation(line: 691, column: 4, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 691, column: 4)
!1090 = !DILocation(line: 692, column: 4, scope: !1044)
!1091 = !DILocation(line: 695, column: 4, scope: !1044)
!1092 = !DILocation(line: 696, column: 4, scope: !1044)
!1093 = !DILocation(line: 698, column: 13, scope: !910)
!1094 = !DILocation(line: 698, column: 21, scope: !910)
!1095 = !DILocation(line: 698, column: 11, scope: !910)
!1096 = !DILocation(line: 701, column: 9, scope: !866)
!1097 = !DILocation(line: 701, column: 2, scope: !866)
!1098 = !DILocation(line: 702, column: 1, scope: !866)
!1099 = distinct !DISubprogram(name: "skip_to_next_elem", scope: !3, file: !3, line: 79, type: !1100, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!73, !73, !84}
!1102 = !DILocalVariable(name: "ei_array", arg: 1, scope: !1099, file: !3, line: 79, type: !73)
!1103 = !DILocation(line: 79, column: 70, scope: !1099)
!1104 = !DILocalVariable(name: "level", arg: 2, scope: !1099, file: !3, line: 80, type: !84)
!1105 = !DILocation(line: 80, column: 17, scope: !1099)
!1106 = !DILocalVariable(name: "temp_ei", scope: !1099, file: !3, line: 82, type: !73)
!1107 = !DILocation(line: 82, column: 24, scope: !1099)
!1108 = !DILocation(line: 82, column: 34, scope: !1099)
!1109 = !DILocalVariable(name: "tlv_type", scope: !1099, file: !3, line: 83, type: !35)
!1110 = !DILocation(line: 83, column: 5, scope: !1099)
!1111 = !DILocation(line: 85, column: 6, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 85, column: 6)
!1113 = !DILocation(line: 85, column: 12, scope: !1112)
!1114 = !DILocation(line: 85, column: 6, scope: !1099)
!1115 = !DILocation(line: 86, column: 13, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 85, column: 17)
!1117 = !DILocation(line: 86, column: 21, scope: !1116)
!1118 = !DILocation(line: 86, column: 11, scope: !1116)
!1119 = !DILocation(line: 87, column: 2, scope: !1116)
!1120 = !DILocation(line: 88, column: 3, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 87, column: 9)
!1122 = !DILocation(line: 89, column: 15, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 88, column: 6)
!1124 = !DILocation(line: 89, column: 24, scope: !1123)
!1125 = !DILocation(line: 89, column: 13, scope: !1123)
!1126 = !DILocation(line: 90, column: 14, scope: !1123)
!1127 = !DILocation(line: 90, column: 22, scope: !1123)
!1128 = !DILocation(line: 90, column: 12, scope: !1123)
!1129 = !DILocation(line: 91, column: 3, scope: !1123)
!1130 = !DILocation(line: 91, column: 12, scope: !1121)
!1131 = !DILocation(line: 91, column: 24, scope: !1121)
!1132 = !DILocation(line: 91, column: 33, scope: !1121)
!1133 = !DILocation(line: 91, column: 21, scope: !1121)
!1134 = distinct !{!1134, !1120, !1135}
!1135 = !DILocation(line: 91, column: 41, scope: !1121)
!1136 = !DILocation(line: 94, column: 9, scope: !1099)
!1137 = !DILocation(line: 94, column: 2, scope: !1099)
!1138 = distinct !DISubprogram(name: "get_order", scope: !1139, file: !1139, line: 29, type: !1140, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!1139 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!84, !90}
!1142 = !DILocalVariable(name: "x", arg: 1, scope: !1143, file: !1144, line: 366, type: !1147)
!1143 = distinct !DISubprogram(name: "fls64", scope: !1144, file: !1144, line: 366, type: !1145, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!1144 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!84, !1147}
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !38, line: 31, baseType: !1148)
!1148 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1149 = !DILocation(line: 366, column: 40, scope: !1143, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 46, column: 9, scope: !1138)
!1151 = !DILocalVariable(name: "bitpos", scope: !1143, file: !1144, line: 368, type: !84)
!1152 = !DILocation(line: 368, column: 6, scope: !1143, inlinedAt: !1150)
!1153 = !DILocalVariable(name: "size", arg: 1, scope: !1138, file: !1139, line: 29, type: !90)
!1154 = !DILocation(line: 29, column: 63, scope: !1138)
!1155 = !DILocation(line: 31, column: 27, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1138, file: !1139, line: 31, column: 6)
!1157 = !DILocation(line: 31, column: 6, scope: !1156)
!1158 = !DILocation(line: 31, column: 6, scope: !1138)
!1159 = !DILocation(line: 32, column: 8, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !1139, line: 32, column: 7)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !1139, line: 31, column: 34)
!1162 = !DILocation(line: 32, column: 7, scope: !1161)
!1163 = !DILocation(line: 33, column: 4, scope: !1160)
!1164 = !DILocation(line: 35, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !1139, line: 35, column: 7)
!1166 = !DILocation(line: 35, column: 12, scope: !1165)
!1167 = !DILocation(line: 35, column: 7, scope: !1161)
!1168 = !DILocation(line: 36, column: 4, scope: !1165)
!1169 = !DILocation(line: 38, column: 10, scope: !1161)
!1170 = !DILocation(line: 38, column: 28, scope: !1161)
!1171 = !DILocation(line: 38, column: 41, scope: !1161)
!1172 = !DILocation(line: 38, column: 3, scope: !1161)
!1173 = !DILocation(line: 41, column: 6, scope: !1138)
!1174 = !DILocation(line: 42, column: 7, scope: !1138)
!1175 = !DILocation(line: 46, column: 15, scope: !1138)
!1176 = !DILocation(line: 374, column: 2, scope: !1143, inlinedAt: !1150)
!1177 = !DILocation(line: 376, column: 14, scope: !1143, inlinedAt: !1150)
!1178 = !{i32 324493}
!1179 = !DILocation(line: 377, column: 9, scope: !1143, inlinedAt: !1150)
!1180 = !DILocation(line: 377, column: 16, scope: !1143, inlinedAt: !1150)
!1181 = !DILocation(line: 46, column: 2, scope: !1138)
!1182 = !DILocation(line: 48, column: 1, scope: !1138)
!1183 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1184, file: !1184, line: 30, type: !1185, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!1184 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!84, !1187}
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !36, line: 23, baseType: !1147)
!1188 = !DILocation(line: 366, column: 40, scope: !1143, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 32, column: 9, scope: !1183)
!1190 = !DILocation(line: 368, column: 6, scope: !1143, inlinedAt: !1189)
!1191 = !DILocalVariable(name: "n", arg: 1, scope: !1183, file: !1184, line: 30, type: !1187)
!1192 = !DILocation(line: 30, column: 21, scope: !1183)
!1193 = !DILocation(line: 32, column: 15, scope: !1183)
!1194 = !DILocation(line: 374, column: 2, scope: !1143, inlinedAt: !1189)
!1195 = !DILocation(line: 376, column: 14, scope: !1143, inlinedAt: !1189)
!1196 = !DILocation(line: 377, column: 9, scope: !1143, inlinedAt: !1189)
!1197 = !DILocation(line: 377, column: 16, scope: !1143, inlinedAt: !1189)
!1198 = !DILocation(line: 32, column: 18, scope: !1183)
!1199 = !DILocation(line: 32, column: 2, scope: !1183)
!1200 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1201, file: !1201, line: 137, type: !1202, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!1201 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!40, !318, !91, !86, !33}
!1204 = !DILocalVariable(name: "s", arg: 1, scope: !1200, file: !1201, line: 137, type: !318)
!1205 = !DILocation(line: 137, column: 54, scope: !1200)
!1206 = !DILocalVariable(name: "object", arg: 2, scope: !1200, file: !1201, line: 137, type: !91)
!1207 = !DILocation(line: 137, column: 69, scope: !1200)
!1208 = !DILocalVariable(name: "size", arg: 3, scope: !1200, file: !1201, line: 138, type: !86)
!1209 = !DILocation(line: 138, column: 12, scope: !1200)
!1210 = !DILocalVariable(name: "flags", arg: 4, scope: !1200, file: !1201, line: 138, type: !33)
!1211 = !DILocation(line: 138, column: 24, scope: !1200)
!1212 = !DILocation(line: 140, column: 17, scope: !1200)
!1213 = !DILocation(line: 140, column: 2, scope: !1200)
!1214 = distinct !DISubprogram(name: "qmi_encode_basic_elem", scope: !3, file: !3, line: 166, type: !1215, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!84, !40, !91, !66, !66}
!1217 = !DILocalVariable(name: "buf_dst", arg: 1, scope: !1214, file: !3, line: 166, type: !40)
!1218 = !DILocation(line: 166, column: 40, scope: !1214)
!1219 = !DILocalVariable(name: "buf_src", arg: 2, scope: !1214, file: !3, line: 166, type: !91)
!1220 = !DILocation(line: 166, column: 61, scope: !1214)
!1221 = !DILocalVariable(name: "elem_len", arg: 3, scope: !1214, file: !3, line: 167, type: !66)
!1222 = !DILocation(line: 167, column: 10, scope: !1214)
!1223 = !DILocalVariable(name: "elem_size", arg: 4, scope: !1214, file: !3, line: 167, type: !66)
!1224 = !DILocation(line: 167, column: 24, scope: !1214)
!1225 = !DILocalVariable(name: "i", scope: !1214, file: !3, line: 169, type: !66)
!1226 = !DILocation(line: 169, column: 6, scope: !1214)
!1227 = !DILocalVariable(name: "rc", scope: !1214, file: !3, line: 169, type: !66)
!1228 = !DILocation(line: 169, column: 9, scope: !1214)
!1229 = !DILocation(line: 171, column: 9, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 171, column: 2)
!1231 = !DILocation(line: 171, column: 7, scope: !1230)
!1232 = !DILocation(line: 171, column: 14, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 171, column: 2)
!1234 = !DILocation(line: 171, column: 18, scope: !1233)
!1235 = !DILocation(line: 171, column: 16, scope: !1233)
!1236 = !DILocation(line: 171, column: 2, scope: !1230)
!1237 = !DILocation(line: 172, column: 3, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 171, column: 33)
!1239 = !DILocation(line: 172, column: 3, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 172, column: 3)
!1241 = !DILocation(line: 173, column: 9, scope: !1238)
!1242 = !DILocation(line: 173, column: 6, scope: !1238)
!1243 = !DILocation(line: 174, column: 2, scope: !1238)
!1244 = !DILocation(line: 171, column: 29, scope: !1233)
!1245 = !DILocation(line: 171, column: 2, scope: !1233)
!1246 = distinct !{!1246, !1236, !1247}
!1247 = !DILocation(line: 174, column: 2, scope: !1230)
!1248 = !DILocation(line: 176, column: 9, scope: !1214)
!1249 = !DILocation(line: 176, column: 2, scope: !1214)
!1250 = distinct !DISubprogram(name: "qmi_encode_struct_elem", scope: !3, file: !3, line: 197, type: !1251, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!84, !73, !40, !91, !66, !66, !84}
!1253 = !DILocalVariable(name: "ei_array", arg: 1, scope: !1250, file: !3, line: 197, type: !73)
!1254 = !DILocation(line: 197, column: 57, scope: !1250)
!1255 = !DILocalVariable(name: "buf_dst", arg: 2, scope: !1250, file: !3, line: 198, type: !40)
!1256 = !DILocation(line: 198, column: 13, scope: !1250)
!1257 = !DILocalVariable(name: "buf_src", arg: 3, scope: !1250, file: !3, line: 198, type: !91)
!1258 = !DILocation(line: 198, column: 34, scope: !1250)
!1259 = !DILocalVariable(name: "elem_len", arg: 4, scope: !1250, file: !3, line: 199, type: !66)
!1260 = !DILocation(line: 199, column: 11, scope: !1250)
!1261 = !DILocalVariable(name: "out_buf_len", arg: 5, scope: !1250, file: !3, line: 199, type: !66)
!1262 = !DILocation(line: 199, column: 25, scope: !1250)
!1263 = !DILocalVariable(name: "enc_level", arg: 6, scope: !1250, file: !3, line: 200, type: !84)
!1264 = !DILocation(line: 200, column: 11, scope: !1250)
!1265 = !DILocalVariable(name: "i", scope: !1250, file: !3, line: 202, type: !84)
!1266 = !DILocation(line: 202, column: 6, scope: !1250)
!1267 = !DILocalVariable(name: "rc", scope: !1250, file: !3, line: 202, type: !84)
!1268 = !DILocation(line: 202, column: 9, scope: !1250)
!1269 = !DILocalVariable(name: "encoded_bytes", scope: !1250, file: !3, line: 202, type: !84)
!1270 = !DILocation(line: 202, column: 13, scope: !1250)
!1271 = !DILocalVariable(name: "temp_ei", scope: !1250, file: !3, line: 203, type: !73)
!1272 = !DILocation(line: 203, column: 24, scope: !1250)
!1273 = !DILocation(line: 203, column: 34, scope: !1250)
!1274 = !DILocation(line: 205, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 205, column: 2)
!1276 = !DILocation(line: 205, column: 7, scope: !1275)
!1277 = !DILocation(line: 205, column: 14, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 205, column: 2)
!1279 = !DILocation(line: 205, column: 18, scope: !1278)
!1280 = !DILocation(line: 205, column: 16, scope: !1278)
!1281 = !DILocation(line: 205, column: 2, scope: !1275)
!1282 = !DILocation(line: 206, column: 19, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 205, column: 33)
!1284 = !DILocation(line: 206, column: 28, scope: !1283)
!1285 = !DILocation(line: 206, column: 38, scope: !1283)
!1286 = !DILocation(line: 206, column: 47, scope: !1283)
!1287 = !DILocation(line: 207, column: 5, scope: !1283)
!1288 = !DILocation(line: 207, column: 19, scope: !1283)
!1289 = !DILocation(line: 207, column: 17, scope: !1283)
!1290 = !DILocation(line: 207, column: 34, scope: !1283)
!1291 = !DILocation(line: 206, column: 8, scope: !1283)
!1292 = !DILocation(line: 206, column: 6, scope: !1283)
!1293 = !DILocation(line: 208, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 208, column: 7)
!1295 = !DILocation(line: 208, column: 10, scope: !1294)
!1296 = !DILocation(line: 208, column: 7, scope: !1283)
!1297 = !DILocation(line: 209, column: 4, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 208, column: 15)
!1299 = !DILocation(line: 210, column: 11, scope: !1298)
!1300 = !DILocation(line: 210, column: 4, scope: !1298)
!1301 = !DILocation(line: 212, column: 13, scope: !1283)
!1302 = !DILocation(line: 212, column: 23, scope: !1283)
!1303 = !DILocation(line: 212, column: 21, scope: !1283)
!1304 = !DILocation(line: 212, column: 11, scope: !1283)
!1305 = !DILocation(line: 213, column: 13, scope: !1283)
!1306 = !DILocation(line: 213, column: 23, scope: !1283)
!1307 = !DILocation(line: 213, column: 32, scope: !1283)
!1308 = !DILocation(line: 213, column: 21, scope: !1283)
!1309 = !DILocation(line: 213, column: 11, scope: !1283)
!1310 = !DILocation(line: 214, column: 20, scope: !1283)
!1311 = !DILocation(line: 214, column: 17, scope: !1283)
!1312 = !DILocation(line: 215, column: 2, scope: !1283)
!1313 = !DILocation(line: 205, column: 29, scope: !1278)
!1314 = !DILocation(line: 205, column: 2, scope: !1278)
!1315 = distinct !{!1315, !1281, !1316}
!1316 = !DILocation(line: 215, column: 2, scope: !1275)
!1317 = !DILocation(line: 217, column: 9, scope: !1250)
!1318 = !DILocation(line: 217, column: 2, scope: !1250)
!1319 = !DILocation(line: 218, column: 1, scope: !1250)
!1320 = distinct !DISubprogram(name: "qmi_encode_string_elem", scope: !3, file: !3, line: 236, type: !587, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!1321 = !DILocalVariable(name: "ei_array", arg: 1, scope: !1320, file: !3, line: 236, type: !73)
!1322 = !DILocation(line: 236, column: 57, scope: !1320)
!1323 = !DILocalVariable(name: "buf_dst", arg: 2, scope: !1320, file: !3, line: 237, type: !40)
!1324 = !DILocation(line: 237, column: 13, scope: !1320)
!1325 = !DILocalVariable(name: "buf_src", arg: 3, scope: !1320, file: !3, line: 237, type: !91)
!1326 = !DILocation(line: 237, column: 34, scope: !1320)
!1327 = !DILocalVariable(name: "out_buf_len", arg: 4, scope: !1320, file: !3, line: 238, type: !66)
!1328 = !DILocation(line: 238, column: 11, scope: !1320)
!1329 = !DILocalVariable(name: "enc_level", arg: 5, scope: !1320, file: !3, line: 238, type: !84)
!1330 = !DILocation(line: 238, column: 28, scope: !1320)
!1331 = !DILocalVariable(name: "rc", scope: !1320, file: !3, line: 240, type: !84)
!1332 = !DILocation(line: 240, column: 6, scope: !1320)
!1333 = !DILocalVariable(name: "encoded_bytes", scope: !1320, file: !3, line: 241, type: !84)
!1334 = !DILocation(line: 241, column: 6, scope: !1320)
!1335 = !DILocalVariable(name: "temp_ei", scope: !1320, file: !3, line: 242, type: !73)
!1336 = !DILocation(line: 242, column: 24, scope: !1320)
!1337 = !DILocation(line: 242, column: 34, scope: !1320)
!1338 = !DILocalVariable(name: "string_len", scope: !1320, file: !3, line: 243, type: !66)
!1339 = !DILocation(line: 243, column: 6, scope: !1320)
!1340 = !DILocalVariable(name: "string_len_sz", scope: !1320, file: !3, line: 244, type: !66)
!1341 = !DILocation(line: 244, column: 6, scope: !1320)
!1342 = !DILocation(line: 246, column: 22, scope: !1320)
!1343 = !DILocation(line: 246, column: 15, scope: !1320)
!1344 = !DILocation(line: 246, column: 13, scope: !1320)
!1345 = !DILocation(line: 247, column: 18, scope: !1320)
!1346 = !DILocation(line: 247, column: 27, scope: !1320)
!1347 = !DILocation(line: 247, column: 36, scope: !1320)
!1348 = !DILocation(line: 247, column: 16, scope: !1320)
!1349 = !DILocation(line: 249, column: 6, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 249, column: 6)
!1351 = !DILocation(line: 249, column: 19, scope: !1350)
!1352 = !DILocation(line: 249, column: 28, scope: !1350)
!1353 = !DILocation(line: 249, column: 17, scope: !1350)
!1354 = !DILocation(line: 249, column: 6, scope: !1320)
!1355 = !DILocation(line: 250, column: 3, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 249, column: 38)
!1357 = !DILocation(line: 252, column: 3, scope: !1356)
!1358 = !DILocation(line: 255, column: 6, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 255, column: 6)
!1360 = !DILocation(line: 255, column: 16, scope: !1359)
!1361 = !DILocation(line: 255, column: 6, scope: !1320)
!1362 = !DILocation(line: 256, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 256, column: 7)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 255, column: 22)
!1365 = !DILocation(line: 256, column: 18, scope: !1363)
!1366 = !DILocation(line: 256, column: 33, scope: !1363)
!1367 = !DILocation(line: 257, column: 7, scope: !1363)
!1368 = !DILocation(line: 256, column: 49, scope: !1363)
!1369 = !DILocation(line: 256, column: 7, scope: !1364)
!1370 = !DILocation(line: 258, column: 4, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 257, column: 20)
!1372 = !DILocation(line: 260, column: 4, scope: !1371)
!1373 = !DILocation(line: 262, column: 2, scope: !1364)
!1374 = !DILocation(line: 263, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 263, column: 7)
!1376 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 262, column: 9)
!1377 = !DILocation(line: 263, column: 20, scope: !1375)
!1378 = !DILocation(line: 263, column: 18, scope: !1375)
!1379 = !DILocation(line: 263, column: 36, scope: !1375)
!1380 = !DILocation(line: 263, column: 34, scope: !1375)
!1381 = !DILocation(line: 263, column: 7, scope: !1376)
!1382 = !DILocation(line: 264, column: 4, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 263, column: 49)
!1384 = !DILocation(line: 266, column: 4, scope: !1383)
!1385 = !DILocation(line: 268, column: 30, scope: !1376)
!1386 = !DILocation(line: 268, column: 39, scope: !1376)
!1387 = !DILocation(line: 269, column: 12, scope: !1376)
!1388 = !DILocation(line: 268, column: 8, scope: !1376)
!1389 = !DILocation(line: 268, column: 6, scope: !1376)
!1390 = !DILocation(line: 270, column: 20, scope: !1376)
!1391 = !DILocation(line: 270, column: 17, scope: !1376)
!1392 = !DILocation(line: 273, column: 29, scope: !1320)
!1393 = !DILocation(line: 273, column: 39, scope: !1320)
!1394 = !DILocation(line: 273, column: 37, scope: !1320)
!1395 = !DILocation(line: 273, column: 54, scope: !1320)
!1396 = !DILocation(line: 274, column: 8, scope: !1320)
!1397 = !DILocation(line: 274, column: 20, scope: !1320)
!1398 = !DILocation(line: 274, column: 29, scope: !1320)
!1399 = !DILocation(line: 273, column: 7, scope: !1320)
!1400 = !DILocation(line: 273, column: 5, scope: !1320)
!1401 = !DILocation(line: 275, column: 19, scope: !1320)
!1402 = !DILocation(line: 275, column: 16, scope: !1320)
!1403 = !DILocation(line: 277, column: 9, scope: !1320)
!1404 = !DILocation(line: 277, column: 2, scope: !1320)
!1405 = !DILocation(line: 278, column: 1, scope: !1320)
!1406 = distinct !DISubprogram(name: "find_ei", scope: !3, file: !3, line: 567, type: !1407, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!73, !73, !66}
!1409 = !DILocalVariable(name: "ei_array", arg: 1, scope: !1406, file: !3, line: 567, type: !73)
!1410 = !DILocation(line: 567, column: 60, scope: !1406)
!1411 = !DILocalVariable(name: "type", arg: 2, scope: !1406, file: !3, line: 568, type: !66)
!1412 = !DILocation(line: 568, column: 14, scope: !1406)
!1413 = !DILocalVariable(name: "temp_ei", scope: !1406, file: !3, line: 570, type: !73)
!1414 = !DILocation(line: 570, column: 24, scope: !1406)
!1415 = !DILocation(line: 570, column: 34, scope: !1406)
!1416 = !DILocation(line: 572, column: 2, scope: !1406)
!1417 = !DILocation(line: 572, column: 9, scope: !1406)
!1418 = !DILocation(line: 572, column: 18, scope: !1406)
!1419 = !DILocation(line: 572, column: 28, scope: !1406)
!1420 = !DILocation(line: 573, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 573, column: 7)
!1422 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 572, column: 41)
!1423 = !DILocation(line: 573, column: 16, scope: !1421)
!1424 = !DILocation(line: 573, column: 32, scope: !1421)
!1425 = !DILocation(line: 573, column: 28, scope: !1421)
!1426 = !DILocation(line: 573, column: 25, scope: !1421)
!1427 = !DILocation(line: 573, column: 7, scope: !1422)
!1428 = !DILocation(line: 574, column: 11, scope: !1421)
!1429 = !DILocation(line: 574, column: 4, scope: !1421)
!1430 = !DILocation(line: 575, column: 13, scope: !1422)
!1431 = !DILocation(line: 575, column: 21, scope: !1422)
!1432 = !DILocation(line: 575, column: 11, scope: !1422)
!1433 = distinct !{!1433, !1416, !1434}
!1434 = !DILocation(line: 576, column: 2, scope: !1406)
!1435 = !DILocation(line: 578, column: 2, scope: !1406)
!1436 = !DILocation(line: 579, column: 1, scope: !1406)
!1437 = distinct !DISubprogram(name: "qmi_decode_basic_elem", scope: !3, file: !3, line: 439, type: !1215, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!1438 = !DILocalVariable(name: "buf_dst", arg: 1, scope: !1437, file: !3, line: 439, type: !40)
!1439 = !DILocation(line: 439, column: 40, scope: !1437)
!1440 = !DILocalVariable(name: "buf_src", arg: 2, scope: !1437, file: !3, line: 439, type: !91)
!1441 = !DILocation(line: 439, column: 61, scope: !1437)
!1442 = !DILocalVariable(name: "elem_len", arg: 3, scope: !1437, file: !3, line: 440, type: !66)
!1443 = !DILocation(line: 440, column: 10, scope: !1437)
!1444 = !DILocalVariable(name: "elem_size", arg: 4, scope: !1437, file: !3, line: 440, type: !66)
!1445 = !DILocation(line: 440, column: 24, scope: !1437)
!1446 = !DILocalVariable(name: "i", scope: !1437, file: !3, line: 442, type: !66)
!1447 = !DILocation(line: 442, column: 6, scope: !1437)
!1448 = !DILocalVariable(name: "rc", scope: !1437, file: !3, line: 442, type: !66)
!1449 = !DILocation(line: 442, column: 9, scope: !1437)
!1450 = !DILocation(line: 444, column: 9, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 444, column: 2)
!1452 = !DILocation(line: 444, column: 7, scope: !1451)
!1453 = !DILocation(line: 444, column: 14, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 444, column: 2)
!1455 = !DILocation(line: 444, column: 18, scope: !1454)
!1456 = !DILocation(line: 444, column: 16, scope: !1454)
!1457 = !DILocation(line: 444, column: 2, scope: !1451)
!1458 = !DILocation(line: 445, column: 3, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 444, column: 33)
!1460 = !DILocation(line: 445, column: 3, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 445, column: 3)
!1462 = !DILocation(line: 446, column: 9, scope: !1459)
!1463 = !DILocation(line: 446, column: 6, scope: !1459)
!1464 = !DILocation(line: 447, column: 2, scope: !1459)
!1465 = !DILocation(line: 444, column: 29, scope: !1454)
!1466 = !DILocation(line: 444, column: 2, scope: !1454)
!1467 = distinct !{!1467, !1457, !1468}
!1468 = !DILocation(line: 447, column: 2, scope: !1451)
!1469 = !DILocation(line: 449, column: 9, scope: !1437)
!1470 = !DILocation(line: 449, column: 2, scope: !1437)
!1471 = distinct !DISubprogram(name: "qmi_decode_struct_elem", scope: !3, file: !3, line: 471, type: !1251, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!1472 = !DILocalVariable(name: "ei_array", arg: 1, scope: !1471, file: !3, line: 471, type: !73)
!1473 = !DILocation(line: 471, column: 57, scope: !1471)
!1474 = !DILocalVariable(name: "buf_dst", arg: 2, scope: !1471, file: !3, line: 472, type: !40)
!1475 = !DILocation(line: 472, column: 13, scope: !1471)
!1476 = !DILocalVariable(name: "buf_src", arg: 3, scope: !1471, file: !3, line: 472, type: !91)
!1477 = !DILocation(line: 472, column: 34, scope: !1471)
!1478 = !DILocalVariable(name: "elem_len", arg: 4, scope: !1471, file: !3, line: 473, type: !66)
!1479 = !DILocation(line: 473, column: 11, scope: !1471)
!1480 = !DILocalVariable(name: "tlv_len", arg: 5, scope: !1471, file: !3, line: 473, type: !66)
!1481 = !DILocation(line: 473, column: 25, scope: !1471)
!1482 = !DILocalVariable(name: "dec_level", arg: 6, scope: !1471, file: !3, line: 474, type: !84)
!1483 = !DILocation(line: 474, column: 11, scope: !1471)
!1484 = !DILocalVariable(name: "i", scope: !1471, file: !3, line: 476, type: !84)
!1485 = !DILocation(line: 476, column: 6, scope: !1471)
!1486 = !DILocalVariable(name: "rc", scope: !1471, file: !3, line: 476, type: !84)
!1487 = !DILocation(line: 476, column: 9, scope: !1471)
!1488 = !DILocalVariable(name: "decoded_bytes", scope: !1471, file: !3, line: 476, type: !84)
!1489 = !DILocation(line: 476, column: 13, scope: !1471)
!1490 = !DILocalVariable(name: "temp_ei", scope: !1471, file: !3, line: 477, type: !73)
!1491 = !DILocation(line: 477, column: 24, scope: !1471)
!1492 = !DILocation(line: 477, column: 34, scope: !1471)
!1493 = !DILocation(line: 479, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 479, column: 2)
!1495 = !DILocation(line: 479, column: 7, scope: !1494)
!1496 = !DILocation(line: 479, column: 14, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 479, column: 2)
!1498 = !DILocation(line: 479, column: 18, scope: !1497)
!1499 = !DILocation(line: 479, column: 16, scope: !1497)
!1500 = !DILocation(line: 479, column: 27, scope: !1497)
!1501 = !DILocation(line: 479, column: 30, scope: !1497)
!1502 = !DILocation(line: 479, column: 46, scope: !1497)
!1503 = !DILocation(line: 479, column: 44, scope: !1497)
!1504 = !DILocation(line: 0, scope: !1497)
!1505 = !DILocation(line: 479, column: 2, scope: !1494)
!1506 = !DILocation(line: 480, column: 19, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 479, column: 60)
!1508 = !DILocation(line: 480, column: 28, scope: !1507)
!1509 = !DILocation(line: 480, column: 38, scope: !1507)
!1510 = !DILocation(line: 480, column: 47, scope: !1507)
!1511 = !DILocation(line: 481, column: 5, scope: !1507)
!1512 = !DILocation(line: 481, column: 15, scope: !1507)
!1513 = !DILocation(line: 481, column: 13, scope: !1507)
!1514 = !DILocation(line: 481, column: 30, scope: !1507)
!1515 = !DILocation(line: 480, column: 8, scope: !1507)
!1516 = !DILocation(line: 480, column: 6, scope: !1507)
!1517 = !DILocation(line: 482, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 482, column: 7)
!1519 = !DILocation(line: 482, column: 10, scope: !1518)
!1520 = !DILocation(line: 482, column: 7, scope: !1507)
!1521 = !DILocation(line: 483, column: 11, scope: !1518)
!1522 = !DILocation(line: 483, column: 4, scope: !1518)
!1523 = !DILocation(line: 484, column: 13, scope: !1507)
!1524 = !DILocation(line: 484, column: 23, scope: !1507)
!1525 = !DILocation(line: 484, column: 21, scope: !1507)
!1526 = !DILocation(line: 484, column: 11, scope: !1507)
!1527 = !DILocation(line: 485, column: 13, scope: !1507)
!1528 = !DILocation(line: 485, column: 23, scope: !1507)
!1529 = !DILocation(line: 485, column: 32, scope: !1507)
!1530 = !DILocation(line: 485, column: 21, scope: !1507)
!1531 = !DILocation(line: 485, column: 11, scope: !1507)
!1532 = !DILocation(line: 486, column: 20, scope: !1507)
!1533 = !DILocation(line: 486, column: 17, scope: !1507)
!1534 = !DILocation(line: 487, column: 2, scope: !1507)
!1535 = !DILocation(line: 479, column: 56, scope: !1497)
!1536 = !DILocation(line: 479, column: 2, scope: !1497)
!1537 = distinct !{!1537, !1505, !1538}
!1538 = !DILocation(line: 487, column: 2, scope: !1494)
!1539 = !DILocation(line: 489, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 489, column: 6)
!1541 = !DILocation(line: 489, column: 17, scope: !1540)
!1542 = !DILocation(line: 489, column: 22, scope: !1540)
!1543 = !DILocation(line: 489, column: 25, scope: !1540)
!1544 = !DILocation(line: 489, column: 42, scope: !1540)
!1545 = !DILocation(line: 489, column: 39, scope: !1540)
!1546 = !DILocation(line: 489, column: 51, scope: !1540)
!1547 = !DILocation(line: 490, column: 7, scope: !1540)
!1548 = !DILocation(line: 490, column: 17, scope: !1540)
!1549 = !DILocation(line: 490, column: 21, scope: !1540)
!1550 = !DILocation(line: 490, column: 25, scope: !1540)
!1551 = !DILocation(line: 490, column: 29, scope: !1540)
!1552 = !DILocation(line: 490, column: 27, scope: !1540)
!1553 = !DILocation(line: 490, column: 38, scope: !1540)
!1554 = !DILocation(line: 490, column: 41, scope: !1540)
!1555 = !DILocation(line: 490, column: 57, scope: !1540)
!1556 = !DILocation(line: 490, column: 55, scope: !1540)
!1557 = !DILocation(line: 489, column: 6, scope: !1471)
!1558 = !DILocation(line: 491, column: 3, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 490, column: 68)
!1560 = !DILocation(line: 494, column: 3, scope: !1559)
!1561 = !DILocation(line: 497, column: 9, scope: !1471)
!1562 = !DILocation(line: 497, column: 2, scope: !1471)
!1563 = !DILocation(line: 498, column: 1, scope: !1471)
!1564 = distinct !DISubprogram(name: "qmi_decode_string_elem", scope: !3, file: !3, line: 517, type: !587, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !93)
!1565 = !DILocalVariable(name: "ei_array", arg: 1, scope: !1564, file: !3, line: 517, type: !73)
!1566 = !DILocation(line: 517, column: 57, scope: !1564)
!1567 = !DILocalVariable(name: "buf_dst", arg: 2, scope: !1564, file: !3, line: 518, type: !40)
!1568 = !DILocation(line: 518, column: 13, scope: !1564)
!1569 = !DILocalVariable(name: "buf_src", arg: 3, scope: !1564, file: !3, line: 518, type: !91)
!1570 = !DILocation(line: 518, column: 34, scope: !1564)
!1571 = !DILocalVariable(name: "tlv_len", arg: 4, scope: !1564, file: !3, line: 519, type: !66)
!1572 = !DILocation(line: 519, column: 11, scope: !1564)
!1573 = !DILocalVariable(name: "dec_level", arg: 5, scope: !1564, file: !3, line: 519, type: !84)
!1574 = !DILocation(line: 519, column: 24, scope: !1564)
!1575 = !DILocalVariable(name: "rc", scope: !1564, file: !3, line: 521, type: !84)
!1576 = !DILocation(line: 521, column: 6, scope: !1564)
!1577 = !DILocalVariable(name: "decoded_bytes", scope: !1564, file: !3, line: 522, type: !84)
!1578 = !DILocation(line: 522, column: 6, scope: !1564)
!1579 = !DILocalVariable(name: "string_len", scope: !1564, file: !3, line: 523, type: !66)
!1580 = !DILocation(line: 523, column: 6, scope: !1564)
!1581 = !DILocalVariable(name: "string_len_sz", scope: !1564, file: !3, line: 524, type: !66)
!1582 = !DILocation(line: 524, column: 6, scope: !1564)
!1583 = !DILocalVariable(name: "temp_ei", scope: !1564, file: !3, line: 525, type: !73)
!1584 = !DILocation(line: 525, column: 24, scope: !1564)
!1585 = !DILocation(line: 525, column: 34, scope: !1564)
!1586 = !DILocation(line: 527, column: 6, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 527, column: 6)
!1588 = !DILocation(line: 527, column: 16, scope: !1587)
!1589 = !DILocation(line: 527, column: 6, scope: !1564)
!1590 = !DILocation(line: 528, column: 16, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 527, column: 22)
!1592 = !DILocation(line: 528, column: 14, scope: !1591)
!1593 = !DILocation(line: 529, column: 2, scope: !1591)
!1594 = !DILocation(line: 530, column: 19, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 529, column: 9)
!1596 = !DILocation(line: 530, column: 28, scope: !1595)
!1597 = !DILocation(line: 530, column: 37, scope: !1595)
!1598 = !DILocation(line: 530, column: 17, scope: !1595)
!1599 = !DILocation(line: 532, column: 30, scope: !1595)
!1600 = !DILocation(line: 532, column: 43, scope: !1595)
!1601 = !DILocation(line: 533, column: 12, scope: !1595)
!1602 = !DILocation(line: 532, column: 8, scope: !1595)
!1603 = !DILocation(line: 532, column: 6, scope: !1595)
!1604 = !DILocation(line: 534, column: 20, scope: !1595)
!1605 = !DILocation(line: 534, column: 17, scope: !1595)
!1606 = !DILocation(line: 537, column: 6, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 537, column: 6)
!1608 = !DILocation(line: 537, column: 19, scope: !1607)
!1609 = !DILocation(line: 537, column: 28, scope: !1607)
!1610 = !DILocation(line: 537, column: 17, scope: !1607)
!1611 = !DILocation(line: 537, column: 6, scope: !1564)
!1612 = !DILocation(line: 538, column: 3, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 537, column: 38)
!1614 = !DILocation(line: 540, column: 3, scope: !1613)
!1615 = !DILocation(line: 541, column: 13, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 541, column: 13)
!1617 = !DILocation(line: 541, column: 26, scope: !1616)
!1618 = !DILocation(line: 541, column: 24, scope: !1616)
!1619 = !DILocation(line: 541, column: 13, scope: !1607)
!1620 = !DILocation(line: 542, column: 3, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 541, column: 35)
!1622 = !DILocation(line: 544, column: 3, scope: !1621)
!1623 = !DILocation(line: 547, column: 29, scope: !1564)
!1624 = !DILocation(line: 547, column: 38, scope: !1564)
!1625 = !DILocation(line: 547, column: 48, scope: !1564)
!1626 = !DILocation(line: 547, column: 46, scope: !1564)
!1627 = !DILocation(line: 548, column: 8, scope: !1564)
!1628 = !DILocation(line: 548, column: 20, scope: !1564)
!1629 = !DILocation(line: 548, column: 29, scope: !1564)
!1630 = !DILocation(line: 547, column: 7, scope: !1564)
!1631 = !DILocation(line: 547, column: 5, scope: !1564)
!1632 = !DILocation(line: 549, column: 12, scope: !1564)
!1633 = !DILocation(line: 549, column: 22, scope: !1564)
!1634 = !DILocation(line: 549, column: 20, scope: !1564)
!1635 = !DILocation(line: 549, column: 34, scope: !1564)
!1636 = !DILocation(line: 550, column: 19, scope: !1564)
!1637 = !DILocation(line: 550, column: 16, scope: !1564)
!1638 = !DILocation(line: 552, column: 9, scope: !1564)
!1639 = !DILocation(line: 552, column: 2, scope: !1564)
!1640 = !DILocation(line: 553, column: 1, scope: !1564)
