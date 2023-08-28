; ModuleID = '../bcout/drivers/acpi/acpica/utresrc.llvm.bc'
source_filename = "drivers/acpi/acpica/utresrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%union.aml_resource = type { i32, [52 x i8] }
%struct.aml_resource_common_serialbus = type <{ i8, i16, i8, i8, i8, i8, i16, i8, i16 }>
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }

@acpi_gbl_resource_aml_sizes = dso_local constant [35 x i8] c"\00\00\00\00\03\02\01\00\07\03\05\00\00\00\00\01\00\09\0C\00\00\11\09\17\0D\06+5\14\0F\09\11\0B\0E\11", align 16, !dbg !0
@acpi_gbl_resource_aml_serial_bus_sizes = dso_local constant [4 x i8] c"\00\0F\12\13", align 1, !dbg !357
@__const.acpi_ut_walk_aml_resources.end_tag = private unnamed_addr constant [2 x i8] c"y\00", align 1
@acpi_gbl_resource_types = internal constant [35 x i8] c"\00\00\00\00\03\01\03\01\01\01\01\00\00\00\02\01\00\01\01\00\02\01\01\02\02\02\02\01\02\02\02\02\02\02\02", align 16, !dbg !363
@_acpi_module_name = internal constant [8 x i8] c"utresrc\00", align 1, !dbg !368
@.str = private unnamed_addr constant [67 x i8] c"Invalid/unsupported SerialBus resource descriptor: BusType 0x%2.2X\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Invalid/unsupported resource descriptor: Type 0x%2.2X\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"Invalid resource descriptor length: Type 0x%2.2X, Length 0x%4.4X, MinLength 0x%4.4X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_walk_aml_resources(%struct.acpi_walk_state* %walk_state, i8* %aml, i64 %aml_length, i32 (i8*, i32, i32, i8, i8**)* %user_function, i8** %context) #0 !dbg !380 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %aml.addr = alloca i8*, align 8
  %aml_length.addr = alloca i64, align 8
  %user_function.addr = alloca i32 (i8*, i32, i32, i8, i8**)*, align 8
  %context.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %end_aml = alloca i8*, align 8
  %resource_index = alloca i8, align 1
  %length = alloca i32, align 4
  %offset = alloca i32, align 4
  %end_tag = alloca [2 x i8], align 1
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1139, metadata !DIExpression()), !dbg !1140
  store i8* %aml, i8** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml.addr, metadata !1141, metadata !DIExpression()), !dbg !1142
  store i64 %aml_length, i64* %aml_length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %aml_length.addr, metadata !1143, metadata !DIExpression()), !dbg !1144
  store i32 (i8*, i32, i32, i8, i8**)* %user_function, i32 (i8*, i32, i32, i8, i8**)** %user_function.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i32, i8, i8**)** %user_function.addr, metadata !1145, metadata !DIExpression()), !dbg !1146
  store i8** %context, i8*** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %context.addr, metadata !1147, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1149, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.declare(metadata i8** %end_aml, metadata !1151, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.declare(metadata i8* %resource_index, metadata !1153, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.declare(metadata i32* %length, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !1157, metadata !DIExpression()), !dbg !1158
  store i32 0, i32* %offset, align 4, !dbg !1158
  call void @llvm.dbg.declare(metadata [2 x i8]* %end_tag, metadata !1159, metadata !DIExpression()), !dbg !1161
  %0 = bitcast [2 x i8]* %end_tag to i8*, !dbg !1161
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.acpi_ut_walk_aml_resources.end_tag, i32 0, i32 0), i64 2, i1 false), !dbg !1161
  %1 = load i64, i64* %aml_length.addr, align 8, !dbg !1162
  %cmp = icmp ult i64 %1, 2, !dbg !1164
  br i1 %cmp, label %if.then, label %if.end, !dbg !1165

if.then:                                          ; preds = %entry
  store i32 12316, i32* %retval, align 4, !dbg !1166
  br label %return, !dbg !1166

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %aml.addr, align 8, !dbg !1168
  %3 = load i64, i64* %aml_length.addr, align 8, !dbg !1169
  %add.ptr = getelementptr i8, i8* %2, i64 %3, !dbg !1170
  store i8* %add.ptr, i8** %end_aml, align 8, !dbg !1171
  br label %while.cond, !dbg !1172

while.cond:                                       ; preds = %if.end24, %if.end
  %4 = load i8*, i8** %aml.addr, align 8, !dbg !1173
  %5 = load i8*, i8** %end_aml, align 8, !dbg !1174
  %cmp1 = icmp ult i8* %4, %5, !dbg !1175
  br i1 %cmp1, label %while.body, label %while.end, !dbg !1172

while.body:                                       ; preds = %while.cond
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1176
  %7 = load i8*, i8** %aml.addr, align 8, !dbg !1178
  %call = call i32 @acpi_ut_validate_resource(%struct.acpi_walk_state* %6, i8* %7, i8* %resource_index) #4, !dbg !1179
  store i32 %call, i32* %status, align 4, !dbg !1180
  %8 = load i32, i32* %status, align 4, !dbg !1181
  %tobool = icmp ne i32 %8, 0, !dbg !1181
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !1183

if.then2:                                         ; preds = %while.body
  %9 = load i32, i32* %status, align 4, !dbg !1184
  store i32 %9, i32* %retval, align 4, !dbg !1184
  br label %return, !dbg !1184

if.end3:                                          ; preds = %while.body
  %10 = load i8*, i8** %aml.addr, align 8, !dbg !1186
  %call4 = call i32 @acpi_ut_get_descriptor_length(i8* %10) #4, !dbg !1187
  store i32 %call4, i32* %length, align 4, !dbg !1188
  %11 = load i32 (i8*, i32, i32, i8, i8**)*, i32 (i8*, i32, i32, i8, i8**)** %user_function.addr, align 8, !dbg !1189
  %tobool5 = icmp ne i32 (i8*, i32, i32, i8, i8**)* %11, null, !dbg !1189
  br i1 %tobool5, label %if.then6, label %if.end11, !dbg !1191

if.then6:                                         ; preds = %if.end3
  %12 = load i32 (i8*, i32, i32, i8, i8**)*, i32 (i8*, i32, i32, i8, i8**)** %user_function.addr, align 8, !dbg !1192
  %13 = load i8*, i8** %aml.addr, align 8, !dbg !1194
  %14 = load i32, i32* %length, align 4, !dbg !1195
  %15 = load i32, i32* %offset, align 4, !dbg !1196
  %16 = load i8, i8* %resource_index, align 1, !dbg !1197
  %17 = load i8**, i8*** %context.addr, align 8, !dbg !1198
  %call7 = call i32 %12(i8* %13, i32 %14, i32 %15, i8 zeroext %16, i8** %17) #4, !dbg !1192
  store i32 %call7, i32* %status, align 4, !dbg !1199
  %18 = load i32, i32* %status, align 4, !dbg !1200
  %tobool8 = icmp ne i32 %18, 0, !dbg !1200
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1202

if.then9:                                         ; preds = %if.then6
  %19 = load i32, i32* %status, align 4, !dbg !1203
  store i32 %19, i32* %retval, align 4, !dbg !1203
  br label %return, !dbg !1203

if.end10:                                         ; preds = %if.then6
  br label %if.end11, !dbg !1205

if.end11:                                         ; preds = %if.end10, %if.end3
  %20 = load i8*, i8** %aml.addr, align 8, !dbg !1206
  %call12 = call zeroext i8 @acpi_ut_get_resource_type(i8* %20) #4, !dbg !1208
  %conv = zext i8 %call12 to i32, !dbg !1208
  %cmp13 = icmp eq i32 %conv, 120, !dbg !1209
  br i1 %cmp13, label %if.then15, label %if.end24, !dbg !1210

if.then15:                                        ; preds = %if.end11
  %21 = load i8*, i8** %aml.addr, align 8, !dbg !1211
  %add.ptr16 = getelementptr i8, i8* %21, i64 1, !dbg !1214
  %22 = load i8*, i8** %end_aml, align 8, !dbg !1215
  %cmp17 = icmp uge i8* %add.ptr16, %22, !dbg !1216
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !1217

if.then19:                                        ; preds = %if.then15
  store i32 12316, i32* %retval, align 4, !dbg !1218
  br label %return, !dbg !1218

if.end20:                                         ; preds = %if.then15
  %23 = load i32 (i8*, i32, i32, i8, i8**)*, i32 (i8*, i32, i32, i8, i8**)** %user_function.addr, align 8, !dbg !1220
  %tobool21 = icmp ne i32 (i8*, i32, i32, i8, i8**)* %23, null, !dbg !1220
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !1222

if.then22:                                        ; preds = %if.end20
  %24 = load i8*, i8** %aml.addr, align 8, !dbg !1223
  %25 = load i8**, i8*** %context.addr, align 8, !dbg !1225
  store i8* %24, i8** %25, align 8, !dbg !1226
  br label %if.end23, !dbg !1227

if.end23:                                         ; preds = %if.then22, %if.end20
  store i32 0, i32* %retval, align 4, !dbg !1228
  br label %return, !dbg !1228

if.end24:                                         ; preds = %if.end11
  %26 = load i32, i32* %length, align 4, !dbg !1229
  %27 = load i8*, i8** %aml.addr, align 8, !dbg !1230
  %idx.ext = zext i32 %26 to i64, !dbg !1230
  %add.ptr25 = getelementptr i8, i8* %27, i64 %idx.ext, !dbg !1230
  store i8* %add.ptr25, i8** %aml.addr, align 8, !dbg !1230
  %28 = load i32, i32* %length, align 4, !dbg !1231
  %29 = load i32, i32* %offset, align 4, !dbg !1232
  %add = add i32 %29, %28, !dbg !1232
  store i32 %add, i32* %offset, align 4, !dbg !1232
  br label %while.cond, !dbg !1172, !llvm.loop !1233

while.end:                                        ; preds = %while.cond
  %30 = load i32 (i8*, i32, i32, i8, i8**)*, i32 (i8*, i32, i32, i8, i8**)** %user_function.addr, align 8, !dbg !1235
  %tobool26 = icmp ne i32 (i8*, i32, i32, i8, i8**)* %30, null, !dbg !1235
  br i1 %tobool26, label %if.then27, label %if.end34, !dbg !1237

if.then27:                                        ; preds = %while.end
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1238
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %end_tag, i64 0, i64 0, !dbg !1240
  %call28 = call i32 @acpi_ut_validate_resource(%struct.acpi_walk_state* %31, i8* %arraydecay, i8* %resource_index) #4, !dbg !1241
  %32 = load i32 (i8*, i32, i32, i8, i8**)*, i32 (i8*, i32, i32, i8, i8**)** %user_function.addr, align 8, !dbg !1242
  %arraydecay29 = getelementptr inbounds [2 x i8], [2 x i8]* %end_tag, i64 0, i64 0, !dbg !1243
  %33 = load i32, i32* %offset, align 4, !dbg !1244
  %34 = load i8, i8* %resource_index, align 1, !dbg !1245
  %35 = load i8**, i8*** %context.addr, align 8, !dbg !1246
  %call30 = call i32 %32(i8* %arraydecay29, i32 2, i32 %33, i8 zeroext %34, i8** %35) #4, !dbg !1242
  store i32 %call30, i32* %status, align 4, !dbg !1247
  %36 = load i32, i32* %status, align 4, !dbg !1248
  %tobool31 = icmp ne i32 %36, 0, !dbg !1248
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !1250

if.then32:                                        ; preds = %if.then27
  %37 = load i32, i32* %status, align 4, !dbg !1251
  store i32 %37, i32* %retval, align 4, !dbg !1251
  br label %return, !dbg !1251

if.end33:                                         ; preds = %if.then27
  br label %if.end34, !dbg !1253

if.end34:                                         ; preds = %if.end33, %while.end
  store i32 12316, i32* %retval, align 4, !dbg !1254
  br label %return, !dbg !1254

return:                                           ; preds = %if.end34, %if.then32, %if.end23, %if.then19, %if.then9, %if.then2, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !1255
  ret i32 %38, !dbg !1255
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_validate_resource(%struct.acpi_walk_state* %walk_state, i8* %aml, i8* %return_index) #0 !dbg !1256 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %aml.addr = alloca i8*, align 8
  %return_index.addr = alloca i8*, align 8
  %aml_resource = alloca %union.aml_resource*, align 8
  %resource_type = alloca i8, align 1
  %resource_index = alloca i8, align 1
  %resource_length = alloca i16, align 2
  %minimum_resource_length = alloca i16, align 2
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1259, metadata !DIExpression()), !dbg !1260
  store i8* %aml, i8** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml.addr, metadata !1261, metadata !DIExpression()), !dbg !1262
  store i8* %return_index, i8** %return_index.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %return_index.addr, metadata !1263, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.declare(metadata %union.aml_resource** %aml_resource, metadata !1265, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.declare(metadata i8* %resource_type, metadata !1267, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.declare(metadata i8* %resource_index, metadata !1269, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.declare(metadata i16* %resource_length, metadata !1271, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.declare(metadata i16* %minimum_resource_length, metadata !1275, metadata !DIExpression()), !dbg !1276
  %0 = load i8*, i8** %aml.addr, align 8, !dbg !1277
  %1 = load i8, i8* %0, align 1, !dbg !1277
  store i8 %1, i8* %resource_type, align 1, !dbg !1278
  %2 = load i8, i8* %resource_type, align 1, !dbg !1279
  %conv = zext i8 %2 to i32, !dbg !1279
  %and = and i32 %conv, 128, !dbg !1281
  %tobool = icmp ne i32 %and, 0, !dbg !1281
  br i1 %tobool, label %if.then, label %if.else, !dbg !1282

if.then:                                          ; preds = %entry
  %3 = load i8, i8* %resource_type, align 1, !dbg !1283
  %conv1 = zext i8 %3 to i32, !dbg !1283
  %cmp = icmp sgt i32 %conv1, 146, !dbg !1286
  br i1 %cmp, label %if.then3, label %if.end, !dbg !1287

if.then3:                                         ; preds = %if.then
  br label %invalid_resource, !dbg !1288

if.end:                                           ; preds = %if.then
  %4 = load i8, i8* %resource_type, align 1, !dbg !1290
  %conv4 = zext i8 %4 to i32, !dbg !1290
  %sub = sub i32 %conv4, 112, !dbg !1291
  %conv5 = trunc i32 %sub to i8, !dbg !1292
  store i8 %conv5, i8* %resource_index, align 1, !dbg !1293
  br label %if.end9, !dbg !1294

if.else:                                          ; preds = %entry
  %5 = load i8, i8* %resource_type, align 1, !dbg !1295
  %conv6 = zext i8 %5 to i32, !dbg !1295
  %and7 = and i32 %conv6, 120, !dbg !1297
  %shr = ashr i32 %and7, 3, !dbg !1298
  %conv8 = trunc i32 %shr to i8, !dbg !1299
  store i8 %conv8, i8* %resource_index, align 1, !dbg !1300
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %6 = load i8, i8* %resource_index, align 1, !dbg !1301
  %idxprom = zext i8 %6 to i64, !dbg !1303
  %arrayidx = getelementptr [35 x i8], [35 x i8]* @acpi_gbl_resource_types, i64 0, i64 %idxprom, !dbg !1303
  %7 = load i8, i8* %arrayidx, align 1, !dbg !1303
  %tobool10 = icmp ne i8 %7, 0, !dbg !1303
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1304

if.then11:                                        ; preds = %if.end9
  br label %invalid_resource, !dbg !1305

if.end12:                                         ; preds = %if.end9
  %8 = load i8*, i8** %aml.addr, align 8, !dbg !1307
  %call = call zeroext i16 @acpi_ut_get_resource_length(i8* %8) #4, !dbg !1308
  store i16 %call, i16* %resource_length, align 2, !dbg !1309
  %9 = load i8, i8* %resource_index, align 1, !dbg !1310
  %idxprom13 = zext i8 %9 to i64, !dbg !1311
  %arrayidx14 = getelementptr [35 x i8], [35 x i8]* @acpi_gbl_resource_aml_sizes, i64 0, i64 %idxprom13, !dbg !1311
  %10 = load i8, i8* %arrayidx14, align 1, !dbg !1311
  %conv15 = zext i8 %10 to i16, !dbg !1311
  store i16 %conv15, i16* %minimum_resource_length, align 2, !dbg !1312
  %11 = load i8, i8* %resource_index, align 1, !dbg !1313
  %idxprom16 = zext i8 %11 to i64, !dbg !1314
  %arrayidx17 = getelementptr [35 x i8], [35 x i8]* @acpi_gbl_resource_types, i64 0, i64 %idxprom16, !dbg !1314
  %12 = load i8, i8* %arrayidx17, align 1, !dbg !1314
  %conv18 = zext i8 %12 to i32, !dbg !1314
  switch i32 %conv18, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb25
    i32 3, label %sw.bb32
  ], !dbg !1315

sw.bb:                                            ; preds = %if.end12
  %13 = load i16, i16* %resource_length, align 2, !dbg !1316
  %conv19 = zext i16 %13 to i32, !dbg !1316
  %14 = load i16, i16* %minimum_resource_length, align 2, !dbg !1319
  %conv20 = zext i16 %14 to i32, !dbg !1319
  %cmp21 = icmp ne i32 %conv19, %conv20, !dbg !1320
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1321

if.then23:                                        ; preds = %sw.bb
  br label %bad_resource_length, !dbg !1322

if.end24:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !1324

sw.bb25:                                          ; preds = %if.end12
  %15 = load i16, i16* %resource_length, align 2, !dbg !1325
  %conv26 = zext i16 %15 to i32, !dbg !1325
  %16 = load i16, i16* %minimum_resource_length, align 2, !dbg !1327
  %conv27 = zext i16 %16 to i32, !dbg !1327
  %cmp28 = icmp slt i32 %conv26, %conv27, !dbg !1328
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !1329

if.then30:                                        ; preds = %sw.bb25
  br label %bad_resource_length, !dbg !1330

if.end31:                                         ; preds = %sw.bb25
  br label %sw.epilog, !dbg !1332

sw.bb32:                                          ; preds = %if.end12
  %17 = load i16, i16* %resource_length, align 2, !dbg !1333
  %conv33 = zext i16 %17 to i32, !dbg !1333
  %18 = load i16, i16* %minimum_resource_length, align 2, !dbg !1335
  %conv34 = zext i16 %18 to i32, !dbg !1335
  %cmp35 = icmp sgt i32 %conv33, %conv34, !dbg !1336
  br i1 %cmp35, label %if.then42, label %lor.lhs.false, !dbg !1337

lor.lhs.false:                                    ; preds = %sw.bb32
  %19 = load i16, i16* %resource_length, align 2, !dbg !1338
  %conv37 = zext i16 %19 to i32, !dbg !1338
  %20 = load i16, i16* %minimum_resource_length, align 2, !dbg !1339
  %conv38 = zext i16 %20 to i32, !dbg !1339
  %sub39 = sub i32 %conv38, 1, !dbg !1340
  %cmp40 = icmp slt i32 %conv37, %sub39, !dbg !1341
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !1342

if.then42:                                        ; preds = %lor.lhs.false, %sw.bb32
  br label %bad_resource_length, !dbg !1343

if.end43:                                         ; preds = %lor.lhs.false
  br label %sw.epilog, !dbg !1345

sw.default:                                       ; preds = %if.end12
  br label %invalid_resource, !dbg !1346

sw.epilog:                                        ; preds = %if.end43, %if.end31, %if.end24
  %21 = load i8*, i8** %aml.addr, align 8, !dbg !1347
  %22 = bitcast i8* %21 to %union.aml_resource*, !dbg !1347
  store %union.aml_resource* %22, %union.aml_resource** %aml_resource, align 8, !dbg !1348
  %23 = load i8, i8* %resource_type, align 1, !dbg !1349
  %conv44 = zext i8 %23 to i32, !dbg !1349
  %cmp45 = icmp eq i32 %conv44, 142, !dbg !1351
  br i1 %cmp45, label %if.then47, label %if.end65, !dbg !1352

if.then47:                                        ; preds = %sw.epilog
  %24 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1353
  %common_serial_bus = bitcast %union.aml_resource* %24 to %struct.aml_resource_common_serialbus*, !dbg !1356
  %type = getelementptr inbounds %struct.aml_resource_common_serialbus, %struct.aml_resource_common_serialbus* %common_serial_bus, i32 0, i32 4, !dbg !1357
  %25 = load i8, i8* %type, align 1, !dbg !1357
  %conv48 = zext i8 %25 to i32, !dbg !1353
  %cmp49 = icmp eq i32 %conv48, 0, !dbg !1358
  br i1 %cmp49, label %if.then57, label %lor.lhs.false51, !dbg !1359

lor.lhs.false51:                                  ; preds = %if.then47
  %26 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1360
  %common_serial_bus52 = bitcast %union.aml_resource* %26 to %struct.aml_resource_common_serialbus*, !dbg !1361
  %type53 = getelementptr inbounds %struct.aml_resource_common_serialbus, %struct.aml_resource_common_serialbus* %common_serial_bus52, i32 0, i32 4, !dbg !1362
  %27 = load i8, i8* %type53, align 1, !dbg !1362
  %conv54 = zext i8 %27 to i32, !dbg !1360
  %cmp55 = icmp sgt i32 %conv54, 3, !dbg !1363
  br i1 %cmp55, label %if.then57, label %if.end64, !dbg !1364

if.then57:                                        ; preds = %lor.lhs.false51, %if.then47
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1365
  %tobool58 = icmp ne %struct.acpi_walk_state* %28, null, !dbg !1365
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !1368

if.then59:                                        ; preds = %if.then57
  %29 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1369
  %common_serial_bus60 = bitcast %union.aml_resource* %29 to %struct.aml_resource_common_serialbus*, !dbg !1369
  %type61 = getelementptr inbounds %struct.aml_resource_common_serialbus, %struct.aml_resource_common_serialbus* %common_serial_bus60, i32 0, i32 4, !dbg !1369
  %30 = load i8, i8* %type61, align 1, !dbg !1369
  %conv62 = zext i8 %30 to i32, !dbg !1369
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 366, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %conv62) #4, !dbg !1369
  br label %if.end63, !dbg !1371

if.end63:                                         ; preds = %if.then59, %if.then57
  store i32 12311, i32* %retval, align 4, !dbg !1372
  br label %return, !dbg !1372

if.end64:                                         ; preds = %lor.lhs.false51
  br label %if.end65, !dbg !1373

if.end65:                                         ; preds = %if.end64, %sw.epilog
  %31 = load i8*, i8** %return_index.addr, align 8, !dbg !1374
  %tobool66 = icmp ne i8* %31, null, !dbg !1374
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !1376

if.then67:                                        ; preds = %if.end65
  %32 = load i8, i8* %resource_index, align 1, !dbg !1377
  %33 = load i8*, i8** %return_index.addr, align 8, !dbg !1379
  store i8 %32, i8* %33, align 1, !dbg !1380
  br label %if.end68, !dbg !1381

if.end68:                                         ; preds = %if.then67, %if.end65
  store i32 0, i32* %retval, align 4, !dbg !1382
  br label %return, !dbg !1382

invalid_resource:                                 ; preds = %sw.default, %if.then11, %if.then3
  call void @llvm.dbg.label(metadata !1383), !dbg !1384
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1385
  %tobool69 = icmp ne %struct.acpi_walk_state* %34, null, !dbg !1385
  br i1 %tobool69, label %if.then70, label %if.end72, !dbg !1387

if.then70:                                        ; preds = %invalid_resource
  %35 = load i8, i8* %resource_type, align 1, !dbg !1388
  %conv71 = zext i8 %35 to i32, !dbg !1388
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %conv71) #4, !dbg !1388
  br label %if.end72, !dbg !1390

if.end72:                                         ; preds = %if.then70, %invalid_resource
  store i32 12311, i32* %retval, align 4, !dbg !1391
  br label %return, !dbg !1391

bad_resource_length:                              ; preds = %if.then42, %if.then30, %if.then23
  call void @llvm.dbg.label(metadata !1392), !dbg !1393
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1394
  %tobool73 = icmp ne %struct.acpi_walk_state* %36, null, !dbg !1394
  br i1 %tobool73, label %if.then74, label %if.end78, !dbg !1396

if.then74:                                        ; preds = %bad_resource_length
  %37 = load i8, i8* %resource_type, align 1, !dbg !1397
  %conv75 = zext i8 %37 to i32, !dbg !1397
  %38 = load i16, i16* %resource_length, align 2, !dbg !1397
  %conv76 = zext i16 %38 to i32, !dbg !1397
  %39 = load i16, i16* %minimum_resource_length, align 2, !dbg !1397
  %conv77 = zext i16 %39 to i32, !dbg !1397
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 395, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %conv75, i32 %conv76, i32 %conv77) #4, !dbg !1397
  br label %if.end78, !dbg !1399

if.end78:                                         ; preds = %if.then74, %bad_resource_length
  store i32 12319, i32* %retval, align 4, !dbg !1400
  br label %return, !dbg !1400

return:                                           ; preds = %if.end78, %if.end72, %if.end68, %if.end63
  %40 = load i32, i32* %retval, align 4, !dbg !1401
  ret i32 %40, !dbg !1401
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_get_descriptor_length(i8* %aml) #0 !dbg !1402 {
entry:
  %aml.addr = alloca i8*, align 8
  store i8* %aml, i8** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml.addr, metadata !1405, metadata !DIExpression()), !dbg !1406
  %0 = load i8*, i8** %aml.addr, align 8, !dbg !1407
  %call = call zeroext i16 @acpi_ut_get_resource_length(i8* %0) #4, !dbg !1408
  %conv = zext i16 %call to i32, !dbg !1408
  %1 = load i8*, i8** %aml.addr, align 8, !dbg !1409
  %call1 = call zeroext i8 @acpi_ut_get_resource_header_length(i8* %1) #4, !dbg !1410
  %conv2 = zext i8 %call1 to i32, !dbg !1410
  %add = add i32 %conv, %conv2, !dbg !1411
  ret i32 %add, !dbg !1412
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ut_get_resource_type(i8* %aml) #0 !dbg !1413 {
entry:
  %retval = alloca i8, align 1
  %aml.addr = alloca i8*, align 8
  store i8* %aml, i8** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml.addr, metadata !1416, metadata !DIExpression()), !dbg !1417
  %0 = load i8*, i8** %aml.addr, align 8, !dbg !1418
  %1 = load i8, i8* %0, align 1, !dbg !1418
  %conv = zext i8 %1 to i32, !dbg !1418
  %and = and i32 %conv, 128, !dbg !1420
  %tobool = icmp ne i32 %and, 0, !dbg !1420
  br i1 %tobool, label %if.then, label %if.else, !dbg !1421

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %aml.addr, align 8, !dbg !1422
  %3 = load i8, i8* %2, align 1, !dbg !1422
  store i8 %3, i8* %retval, align 1, !dbg !1424
  br label %return, !dbg !1424

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %aml.addr, align 8, !dbg !1425
  %5 = load i8, i8* %4, align 1, !dbg !1425
  %conv1 = zext i8 %5 to i32, !dbg !1425
  %and2 = and i32 %conv1, 120, !dbg !1427
  %conv3 = trunc i32 %and2 to i8, !dbg !1428
  store i8 %conv3, i8* %retval, align 1, !dbg !1429
  br label %return, !dbg !1429

return:                                           ; preds = %if.else, %if.then
  %6 = load i8, i8* %retval, align 1, !dbg !1430
  ret i8 %6, !dbg !1430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i16 @acpi_ut_get_resource_length(i8* %aml) #0 !dbg !1431 {
entry:
  %aml.addr = alloca i8*, align 8
  %resource_length = alloca i16, align 2
  store i8* %aml, i8** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml.addr, metadata !1434, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.declare(metadata i16* %resource_length, metadata !1436, metadata !DIExpression()), !dbg !1437
  %0 = load i8*, i8** %aml.addr, align 8, !dbg !1438
  %1 = load i8, i8* %0, align 1, !dbg !1438
  %conv = zext i8 %1 to i32, !dbg !1438
  %and = and i32 %conv, 128, !dbg !1440
  %tobool = icmp ne i32 %and, 0, !dbg !1440
  br i1 %tobool, label %if.then, label %if.else, !dbg !1441

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %aml.addr, align 8, !dbg !1442
  %add.ptr = getelementptr i8, i8* %2, i64 1, !dbg !1442
  %3 = bitcast i8* %add.ptr to i16*, !dbg !1442
  %4 = load i16, i16* %3, align 2, !dbg !1442
  %5 = bitcast i16* %resource_length to i8*, !dbg !1442
  %6 = bitcast i8* %5 to i16*, !dbg !1442
  store i16 %4, i16* %6, align 2, !dbg !1442
  br label %if.end, !dbg !1444

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %aml.addr, align 8, !dbg !1445
  %8 = load i8, i8* %7, align 1, !dbg !1445
  %conv1 = zext i8 %8 to i32, !dbg !1445
  %and2 = and i32 %conv1, 7, !dbg !1447
  %conv3 = trunc i32 %and2 to i16, !dbg !1448
  store i16 %conv3, i16* %resource_length, align 2, !dbg !1449
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i16, i16* %resource_length, align 2, !dbg !1450
  ret i16 %9, !dbg !1451
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ut_get_resource_header_length(i8* %aml) #0 !dbg !1452 {
entry:
  %retval = alloca i8, align 1
  %aml.addr = alloca i8*, align 8
  store i8* %aml, i8** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml.addr, metadata !1453, metadata !DIExpression()), !dbg !1454
  %0 = load i8*, i8** %aml.addr, align 8, !dbg !1455
  %1 = load i8, i8* %0, align 1, !dbg !1455
  %conv = zext i8 %1 to i32, !dbg !1455
  %and = and i32 %conv, 128, !dbg !1457
  %tobool = icmp ne i32 %and, 0, !dbg !1457
  br i1 %tobool, label %if.then, label %if.else, !dbg !1458

if.then:                                          ; preds = %entry
  store i8 3, i8* %retval, align 1, !dbg !1459
  br label %return, !dbg !1459

if.else:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !1461
  br label %return, !dbg !1461

return:                                           ; preds = %if.else, %if.then
  %2 = load i8, i8* %retval, align 1, !dbg !1463
  ret i8 %2, !dbg !1463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_get_resource_end_tag(%union.acpi_operand_object* %obj_desc, i8** %end_tag) #0 !dbg !1464 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %end_tag.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1468, metadata !DIExpression()), !dbg !1469
  store i8** %end_tag, i8*** %end_tag.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %end_tag.addr, metadata !1470, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1472, metadata !DIExpression()), !dbg !1473
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1474
  %buffer = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_buffer*, !dbg !1476
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !1477
  %1 = load i32, i32* %length, align 8, !dbg !1477
  %tobool = icmp ne i32 %1, 0, !dbg !1474
  br i1 %tobool, label %if.end, label %if.then, !dbg !1478

if.then:                                          ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1479
  %buffer1 = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_buffer*, !dbg !1481
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer1, i32 0, i32 5, !dbg !1482
  %3 = load i8*, i8** %pointer, align 8, !dbg !1482
  %4 = load i8**, i8*** %end_tag.addr, align 8, !dbg !1483
  store i8* %3, i8** %4, align 8, !dbg !1484
  store i32 0, i32* %retval, align 4, !dbg !1485
  br label %return, !dbg !1485

if.end:                                           ; preds = %entry
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1486
  %buffer2 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_buffer*, !dbg !1487
  %pointer3 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer2, i32 0, i32 5, !dbg !1488
  %6 = load i8*, i8** %pointer3, align 8, !dbg !1488
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1489
  %buffer4 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_buffer*, !dbg !1490
  %length5 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer4, i32 0, i32 6, !dbg !1491
  %8 = load i32, i32* %length5, align 8, !dbg !1491
  %conv = zext i32 %8 to i64, !dbg !1489
  %9 = load i8**, i8*** %end_tag.addr, align 8, !dbg !1492
  %call = call i32 @acpi_ut_walk_aml_resources(%struct.acpi_walk_state* null, i8* %6, i64 %conv, i32 (i8*, i32, i32, i8, i8**)* null, i8** %9) #4, !dbg !1493
  store i32 %call, i32* %status, align 4, !dbg !1494
  %10 = load i32, i32* %status, align 4, !dbg !1495
  store i32 %10, i32* %retval, align 4, !dbg !1495
  br label %return, !dbg !1495

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !1496
  ret i32 %11, !dbg !1496
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!375, !376, !377, !378}
!llvm.ident = !{!379}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_resource_aml_sizes", scope: !2, file: !3, line: 19, type: !365, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !356, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utresrc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !17, !14, !18, !353, !354, !32, !355}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "aml_resource", file: !20, line: 478, size: 448, elements: !21)
!20 = !DIFile(filename: "drivers/acpi/acpica/amlresrc.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23, !27, !35, !41, !47, !52, !56, !65, !71, !78, !82, !87, !97, !110, !115, !125, !133, !146, !159, !172, !188, !199, !216, !230, !247, !264, !276, !290, !304, !315, !328, !342, !350, !351, !352}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !19, file: !20, line: 481, baseType: !14, size: 8)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "small_header", scope: !19, file: !20, line: 482, baseType: !24, size: 8)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_small_header", file: !20, line: 114, size: 8, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !24, file: !20, line: 115, baseType: !14, size: 8)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "large_header", scope: !19, file: !20, line: 483, baseType: !28, size: 24)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_large_header", file: !20, line: 174, size: 24, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !28, file: !20, line: 175, baseType: !14, size: 8)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !28, file: !20, line: 175, baseType: !32, size: 16, offset: 8)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !19, file: !20, line: 487, baseType: !36, size: 32)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_irq", file: !20, line: 117, size: 32, elements: !37)
!37 = !{!38, !39, !40}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !36, file: !20, line: 118, baseType: !14, size: 8)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !36, file: !20, line: 118, baseType: !32, size: 16, offset: 8)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !20, line: 119, baseType: !14, size: 8, offset: 24)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !19, file: !20, line: 488, baseType: !42, size: 24)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_dma", file: !20, line: 126, size: 24, elements: !43)
!43 = !{!44, !45, !46}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !42, file: !20, line: 127, baseType: !14, size: 8)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel_mask", scope: !42, file: !20, line: 127, baseType: !14, size: 8, offset: 8)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !20, line: 128, baseType: !14, size: 8, offset: 16)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !19, file: !20, line: 489, baseType: !48, size: 16)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_start_dependent", file: !20, line: 131, size: 16, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !48, file: !20, line: 132, baseType: !14, size: 8)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !48, file: !20, line: 132, baseType: !14, size: 8, offset: 8)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "end_dpf", scope: !19, file: !20, line: 490, baseType: !53, size: 8)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_dependent", file: !20, line: 138, size: 8, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !20, line: 139, baseType: !14, size: 8)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !19, file: !20, line: 491, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_io", file: !20, line: 141, size: 64, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !57, file: !20, line: 142, baseType: !14, size: 8)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !20, line: 142, baseType: !14, size: 8, offset: 8)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !57, file: !20, line: 143, baseType: !32, size: 16, offset: 16)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !57, file: !20, line: 144, baseType: !32, size: 16, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !57, file: !20, line: 145, baseType: !14, size: 8, offset: 48)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !57, file: !20, line: 146, baseType: !14, size: 8, offset: 56)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !19, file: !20, line: 492, baseType: !66, size: 32)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_io", file: !20, line: 149, size: 32, elements: !67)
!67 = !{!68, !69, !70}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !20, line: 150, baseType: !14, size: 8)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !66, file: !20, line: 150, baseType: !32, size: 16, offset: 8)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !66, file: !20, line: 151, baseType: !14, size: 8, offset: 24)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !19, file: !20, line: 493, baseType: !72, size: 48)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_dma", file: !20, line: 161, size: 48, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !72, file: !20, line: 162, baseType: !14, size: 8)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !72, file: !20, line: 162, baseType: !32, size: 16, offset: 8)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !72, file: !20, line: 163, baseType: !32, size: 16, offset: 24)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !72, file: !20, line: 164, baseType: !14, size: 8, offset: 40)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_small", scope: !19, file: !20, line: 494, baseType: !79, size: 8)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_small", file: !20, line: 154, size: 8, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !20, line: 155, baseType: !14, size: 8)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !19, file: !20, line: 495, baseType: !83, size: 16)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_tag", file: !20, line: 157, size: 16, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !20, line: 158, baseType: !14, size: 8)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !83, file: !20, line: 158, baseType: !14, size: 8, offset: 8)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !19, file: !20, line: 499, baseType: !88, size: 96)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory24", file: !20, line: 183, size: 96, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !96}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !88, file: !20, line: 184, baseType: !14, size: 8)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !88, file: !20, line: 184, baseType: !32, size: 16, offset: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !20, line: 184, baseType: !14, size: 8, offset: 24)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !88, file: !20, line: 185, baseType: !32, size: 16, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !88, file: !20, line: 186, baseType: !32, size: 16, offset: 48)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !88, file: !20, line: 187, baseType: !32, size: 16, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !88, file: !20, line: 188, baseType: !32, size: 16, offset: 80)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !19, file: !20, line: 500, baseType: !98, size: 120)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_generic_register", file: !20, line: 264, size: 120, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !98, file: !20, line: 265, baseType: !14, size: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !98, file: !20, line: 265, baseType: !32, size: 16, offset: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "address_space_id", scope: !98, file: !20, line: 265, baseType: !14, size: 8, offset: 24)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !98, file: !20, line: 266, baseType: !14, size: 8, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !98, file: !20, line: 267, baseType: !14, size: 8, offset: 40)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !98, file: !20, line: 268, baseType: !14, size: 8, offset: 48)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !98, file: !20, line: 269, baseType: !107, size: 64, offset: 56)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !109)
!109 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_large", scope: !19, file: !20, line: 501, baseType: !111, size: 24)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_large", file: !20, line: 191, size: 24, elements: !112)
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !20, line: 192, baseType: !14, size: 8)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !111, file: !20, line: 192, baseType: !32, size: 16, offset: 8)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !19, file: !20, line: 502, baseType: !116, size: 160)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory32", file: !20, line: 194, size: 160, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !20, line: 195, baseType: !14, size: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !116, file: !20, line: 195, baseType: !32, size: 16, offset: 8)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !20, line: 195, baseType: !14, size: 8, offset: 24)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !116, file: !20, line: 196, baseType: !8, size: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !116, file: !20, line: 197, baseType: !8, size: 32, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !116, file: !20, line: 198, baseType: !8, size: 32, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !116, file: !20, line: 199, baseType: !8, size: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !19, file: !20, line: 503, baseType: !126, size: 96)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_memory32", file: !20, line: 202, size: 96, elements: !127)
!127 = !{!128, !129, !130, !131, !132}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !20, line: 203, baseType: !14, size: 8)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !126, file: !20, line: 203, baseType: !32, size: 16, offset: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !20, line: 203, baseType: !14, size: 8, offset: 24)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !126, file: !20, line: 204, baseType: !8, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !126, file: !20, line: 205, baseType: !8, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !19, file: !20, line: 504, baseType: !134, size: 128)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address16", file: !20, line: 248, size: 128, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !20, line: 249, baseType: !14, size: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !134, file: !20, line: 249, baseType: !32, size: 16, offset: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !134, file: !20, line: 250, baseType: !14, size: 8, offset: 24)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !20, line: 250, baseType: !14, size: 8, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !134, file: !20, line: 250, baseType: !14, size: 8, offset: 40)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !134, file: !20, line: 250, baseType: !32, size: 16, offset: 48)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !134, file: !20, line: 251, baseType: !32, size: 16, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !134, file: !20, line: 252, baseType: !32, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !134, file: !20, line: 253, baseType: !32, size: 16, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !134, file: !20, line: 254, baseType: !32, size: 16, offset: 112)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !19, file: !20, line: 505, baseType: !147, size: 208)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address32", file: !20, line: 239, size: 208, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !20, line: 240, baseType: !14, size: 8)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !147, file: !20, line: 240, baseType: !32, size: 16, offset: 8)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !147, file: !20, line: 241, baseType: !14, size: 8, offset: 24)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !20, line: 241, baseType: !14, size: 8, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !147, file: !20, line: 241, baseType: !14, size: 8, offset: 40)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !147, file: !20, line: 241, baseType: !8, size: 32, offset: 48)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !147, file: !20, line: 242, baseType: !8, size: 32, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !147, file: !20, line: 243, baseType: !8, size: 32, offset: 112)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !147, file: !20, line: 244, baseType: !8, size: 32, offset: 144)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !147, file: !20, line: 245, baseType: !8, size: 32, offset: 176)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !19, file: !20, line: 506, baseType: !160, size: 368)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address64", file: !20, line: 230, size: 368, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !160, file: !20, line: 231, baseType: !14, size: 8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !160, file: !20, line: 231, baseType: !32, size: 16, offset: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !160, file: !20, line: 232, baseType: !14, size: 8, offset: 24)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !160, file: !20, line: 232, baseType: !14, size: 8, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !160, file: !20, line: 232, baseType: !14, size: 8, offset: 40)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !160, file: !20, line: 232, baseType: !107, size: 64, offset: 48)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !160, file: !20, line: 233, baseType: !107, size: 64, offset: 112)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !160, file: !20, line: 234, baseType: !107, size: 64, offset: 176)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !160, file: !20, line: 235, baseType: !107, size: 64, offset: 240)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !160, file: !20, line: 236, baseType: !107, size: 64, offset: 304)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !19, file: !20, line: 507, baseType: !173, size: 448)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_address64", file: !20, line: 216, size: 448, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !173, file: !20, line: 217, baseType: !14, size: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !173, file: !20, line: 217, baseType: !32, size: 16, offset: 8)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !173, file: !20, line: 218, baseType: !14, size: 8, offset: 24)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !173, file: !20, line: 218, baseType: !14, size: 8, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !173, file: !20, line: 218, baseType: !14, size: 8, offset: 40)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !173, file: !20, line: 218, baseType: !14, size: 8, offset: 48)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !173, file: !20, line: 219, baseType: !14, size: 8, offset: 56)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !173, file: !20, line: 220, baseType: !107, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !173, file: !20, line: 221, baseType: !107, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !173, file: !20, line: 222, baseType: !107, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !173, file: !20, line: 223, baseType: !107, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !173, file: !20, line: 224, baseType: !107, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !173, file: !20, line: 225, baseType: !107, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !19, file: !20, line: 508, baseType: !189, size: 72)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_irq", file: !20, line: 257, size: 72, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !189, file: !20, line: 258, baseType: !14, size: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !189, file: !20, line: 258, baseType: !32, size: 16, offset: 8)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !20, line: 258, baseType: !14, size: 8, offset: 24)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !189, file: !20, line: 259, baseType: !14, size: 8, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !189, file: !20, line: 260, baseType: !196, size: 32, offset: 40)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 1)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !19, file: !20, line: 509, baseType: !200, size: 184)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_gpio", file: !20, line: 274, size: 184, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !200, file: !20, line: 275, baseType: !14, size: 8)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !200, file: !20, line: 275, baseType: !32, size: 16, offset: 8)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !200, file: !20, line: 275, baseType: !14, size: 8, offset: 24)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !200, file: !20, line: 276, baseType: !14, size: 8, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !20, line: 277, baseType: !32, size: 16, offset: 40)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "int_flags", scope: !200, file: !20, line: 278, baseType: !32, size: 16, offset: 56)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !200, file: !20, line: 279, baseType: !14, size: 8, offset: 72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !200, file: !20, line: 280, baseType: !32, size: 16, offset: 80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !200, file: !20, line: 281, baseType: !32, size: 16, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !200, file: !20, line: 282, baseType: !32, size: 16, offset: 112)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !200, file: !20, line: 283, baseType: !14, size: 8, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !200, file: !20, line: 284, baseType: !32, size: 16, offset: 136)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !200, file: !20, line: 285, baseType: !32, size: 16, offset: 152)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !200, file: !20, line: 286, baseType: !32, size: 16, offset: 168)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !19, file: !20, line: 510, baseType: !217, size: 144)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_i2c_serialbus", file: !20, line: 325, size: 144, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !217, file: !20, line: 326, baseType: !14, size: 8)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !217, file: !20, line: 326, baseType: !32, size: 16, offset: 8)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !217, file: !20, line: 327, baseType: !14, size: 8, offset: 24)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !217, file: !20, line: 327, baseType: !14, size: 8, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !217, file: !20, line: 327, baseType: !14, size: 8, offset: 40)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !217, file: !20, line: 327, baseType: !14, size: 8, offset: 48)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !217, file: !20, line: 327, baseType: !32, size: 16, offset: 56)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !217, file: !20, line: 327, baseType: !14, size: 8, offset: 72)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !217, file: !20, line: 327, baseType: !32, size: 16, offset: 80)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !217, file: !20, line: 327, baseType: !8, size: 32, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !217, file: !20, line: 328, baseType: !32, size: 16, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !19, file: !20, line: 511, baseType: !231, size: 168)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_spi_serialbus", file: !20, line: 340, size: 168, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !231, file: !20, line: 341, baseType: !14, size: 8)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !231, file: !20, line: 341, baseType: !32, size: 16, offset: 8)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !231, file: !20, line: 342, baseType: !14, size: 8, offset: 24)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !231, file: !20, line: 342, baseType: !14, size: 8, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !231, file: !20, line: 342, baseType: !14, size: 8, offset: 40)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !231, file: !20, line: 342, baseType: !14, size: 8, offset: 48)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !231, file: !20, line: 342, baseType: !32, size: 16, offset: 56)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !231, file: !20, line: 342, baseType: !14, size: 8, offset: 72)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !231, file: !20, line: 342, baseType: !32, size: 16, offset: 80)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !231, file: !20, line: 342, baseType: !8, size: 32, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !231, file: !20, line: 343, baseType: !14, size: 8, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !231, file: !20, line: 344, baseType: !14, size: 8, offset: 136)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !231, file: !20, line: 345, baseType: !14, size: 8, offset: 144)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !231, file: !20, line: 346, baseType: !32, size: 16, offset: 152)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !19, file: !20, line: 512, baseType: !248, size: 176)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_uart_serialbus", file: !20, line: 358, size: 176, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !248, file: !20, line: 359, baseType: !14, size: 8)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !248, file: !20, line: 359, baseType: !32, size: 16, offset: 8)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !248, file: !20, line: 360, baseType: !14, size: 8, offset: 24)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !248, file: !20, line: 360, baseType: !14, size: 8, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !248, file: !20, line: 360, baseType: !14, size: 8, offset: 40)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !20, line: 360, baseType: !14, size: 8, offset: 48)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !248, file: !20, line: 360, baseType: !32, size: 16, offset: 56)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !248, file: !20, line: 360, baseType: !14, size: 8, offset: 72)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !248, file: !20, line: 360, baseType: !32, size: 16, offset: 80)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !248, file: !20, line: 360, baseType: !8, size: 32, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !248, file: !20, line: 361, baseType: !32, size: 16, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !248, file: !20, line: 362, baseType: !32, size: 16, offset: 144)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !248, file: !20, line: 363, baseType: !14, size: 8, offset: 160)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !248, file: !20, line: 364, baseType: !14, size: 8, offset: 168)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !19, file: !20, line: 513, baseType: !265, size: 96)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_common_serialbus", file: !20, line: 322, size: 96, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !265, file: !20, line: 323, baseType: !14, size: 8)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !265, file: !20, line: 323, baseType: !32, size: 16, offset: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !265, file: !20, line: 323, baseType: !14, size: 8, offset: 24)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !265, file: !20, line: 323, baseType: !14, size: 8, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !265, file: !20, line: 323, baseType: !14, size: 8, offset: 40)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !20, line: 323, baseType: !14, size: 8, offset: 48)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !265, file: !20, line: 323, baseType: !32, size: 16, offset: 56)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !265, file: !20, line: 323, baseType: !14, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !265, file: !20, line: 323, baseType: !32, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !19, file: !20, line: 514, baseType: !277, size: 144)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_function", file: !20, line: 376, size: 144, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !277, file: !20, line: 377, baseType: !14, size: 8)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !277, file: !20, line: 377, baseType: !32, size: 16, offset: 8)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !277, file: !20, line: 377, baseType: !14, size: 8, offset: 24)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !20, line: 378, baseType: !32, size: 16, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !277, file: !20, line: 379, baseType: !14, size: 8, offset: 48)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !277, file: !20, line: 380, baseType: !32, size: 16, offset: 56)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !277, file: !20, line: 381, baseType: !32, size: 16, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !277, file: !20, line: 382, baseType: !14, size: 8, offset: 88)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !277, file: !20, line: 383, baseType: !32, size: 16, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !277, file: !20, line: 384, baseType: !32, size: 16, offset: 112)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !277, file: !20, line: 385, baseType: !32, size: 16, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !19, file: !20, line: 515, baseType: !291, size: 160)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_config", file: !20, line: 396, size: 160, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !20, line: 397, baseType: !14, size: 8)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !291, file: !20, line: 397, baseType: !32, size: 16, offset: 8)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !291, file: !20, line: 397, baseType: !14, size: 8, offset: 24)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !20, line: 398, baseType: !32, size: 16, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !291, file: !20, line: 399, baseType: !14, size: 8, offset: 48)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !291, file: !20, line: 400, baseType: !8, size: 32, offset: 56)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !291, file: !20, line: 401, baseType: !32, size: 16, offset: 88)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !291, file: !20, line: 402, baseType: !14, size: 8, offset: 104)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !291, file: !20, line: 403, baseType: !32, size: 16, offset: 112)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !291, file: !20, line: 404, baseType: !32, size: 16, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !291, file: !20, line: 405, baseType: !32, size: 16, offset: 144)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !19, file: !20, line: 516, baseType: !305, size: 112)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group", file: !20, line: 416, size: 112, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !20, line: 417, baseType: !14, size: 8)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !305, file: !20, line: 417, baseType: !32, size: 16, offset: 8)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !305, file: !20, line: 417, baseType: !14, size: 8, offset: 24)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !20, line: 418, baseType: !32, size: 16, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !305, file: !20, line: 419, baseType: !32, size: 16, offset: 48)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "label_offset", scope: !305, file: !20, line: 420, baseType: !32, size: 16, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !305, file: !20, line: 421, baseType: !32, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !305, file: !20, line: 422, baseType: !32, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !19, file: !20, line: 517, baseType: !316, size: 136)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_function", file: !20, line: 433, size: 136, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !316, file: !20, line: 434, baseType: !14, size: 8)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !316, file: !20, line: 434, baseType: !32, size: 16, offset: 8)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !316, file: !20, line: 434, baseType: !14, size: 8, offset: 24)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !20, line: 435, baseType: !32, size: 16, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !316, file: !20, line: 436, baseType: !32, size: 16, offset: 48)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !316, file: !20, line: 437, baseType: !14, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !316, file: !20, line: 438, baseType: !32, size: 16, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !316, file: !20, line: 439, baseType: !32, size: 16, offset: 88)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !316, file: !20, line: 440, baseType: !32, size: 16, offset: 104)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !316, file: !20, line: 441, baseType: !32, size: 16, offset: 120)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !19, file: !20, line: 518, baseType: !329, size: 160)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_config", file: !20, line: 452, size: 160, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !329, file: !20, line: 453, baseType: !14, size: 8)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !329, file: !20, line: 453, baseType: !32, size: 16, offset: 8)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !329, file: !20, line: 453, baseType: !14, size: 8, offset: 24)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !20, line: 454, baseType: !32, size: 16, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !329, file: !20, line: 455, baseType: !14, size: 8, offset: 48)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !329, file: !20, line: 456, baseType: !8, size: 32, offset: 56)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !329, file: !20, line: 457, baseType: !14, size: 8, offset: 88)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !329, file: !20, line: 458, baseType: !32, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !329, file: !20, line: 459, baseType: !32, size: 16, offset: 112)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !329, file: !20, line: 460, baseType: !32, size: 16, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !329, file: !20, line: 461, baseType: !32, size: 16, offset: 144)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !19, file: !20, line: 522, baseType: !343, size: 48)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address", file: !20, line: 213, size: 48, elements: !344)
!344 = !{!345, !346, !347, !348, !349}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !343, file: !20, line: 214, baseType: !14, size: 8)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !343, file: !20, line: 214, baseType: !32, size: 16, offset: 8)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !343, file: !20, line: 214, baseType: !14, size: 8, offset: 24)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !20, line: 214, baseType: !14, size: 8, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !343, file: !20, line: 214, baseType: !14, size: 8, offset: 40)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "dword_item", scope: !19, file: !20, line: 523, baseType: !8, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "word_item", scope: !19, file: !20, line: 524, baseType: !32, size: 16)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "byte_item", scope: !19, file: !20, line: 525, baseType: !14, size: 8)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !107)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!356 = !{!0, !357, !363, !368}
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(name: "acpi_gbl_resource_aml_serial_bus_sizes", scope: !2, file: !3, line: 62, type: !359, isLocal: false, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 32, elements: !361)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!361 = !{!362}
!362 = !DISubrange(count: 4)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "acpi_gbl_resource_types", scope: !2, file: !3, line: 75, type: !365, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 280, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 35)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 13, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 64, elements: !373)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!373 = !{!374}
!374 = !DISubrange(count: 8)
!375 = !{i32 7, !"Dwarf Version", i32 4}
!376 = !{i32 2, !"Debug Info Version", i32 3}
!377 = !{i32 1, !"wchar_size", i32 2}
!378 = !{i32 1, !"Code Model", i32 2}
!379 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!380 = distinct !DISubprogram(name: "acpi_ut_walk_aml_resources", scope: !3, file: !3, line: 137, type: !381, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!381 = !DISubroutineType(types: !382)
!382 = !{!6, !383, !13, !354, !1134, !355}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !385, line: 37, size: 9024, elements: !386)
!385 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !1081, !1082, !1083, !1084, !1085, !1089, !1091, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1132}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !385, line: 38, baseType: !383, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !384, file: !385, line: 39, baseType: !14, size: 8, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !384, file: !385, line: 40, baseType: !14, size: 8, offset: 72)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !384, file: !385, line: 41, baseType: !32, size: 16, offset: 80)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !384, file: !385, line: 42, baseType: !14, size: 8, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !384, file: !385, line: 43, baseType: !14, size: 8, offset: 104)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !384, file: !385, line: 44, baseType: !14, size: 8, offset: 112)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !384, file: !385, line: 45, baseType: !395, size: 16, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !384, file: !385, line: 46, baseType: !14, size: 8, offset: 144)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !384, file: !385, line: 47, baseType: !14, size: 8, offset: 152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !384, file: !385, line: 48, baseType: !14, size: 8, offset: 160)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !384, file: !385, line: 49, baseType: !14, size: 8, offset: 168)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !384, file: !385, line: 50, baseType: !14, size: 8, offset: 176)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !384, file: !385, line: 51, baseType: !14, size: 8, offset: 184)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !384, file: !385, line: 52, baseType: !14, size: 8, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !384, file: !385, line: 53, baseType: !14, size: 8, offset: 200)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !384, file: !385, line: 54, baseType: !13, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !384, file: !385, line: 55, baseType: !8, size: 32, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !384, file: !385, line: 56, baseType: !8, size: 32, offset: 352)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !384, file: !385, line: 57, baseType: !8, size: 32, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !384, file: !385, line: 58, baseType: !8, size: 32, offset: 416)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !384, file: !385, line: 60, baseType: !410, size: 640, offset: 448)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !411, line: 893, size: 640, elements: !412)
!411 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!412 = !{!413, !414, !415, !416, !417, !418, !980, !981, !1079, !1080}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !410, file: !411, line: 894, baseType: !13, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !410, file: !411, line: 895, baseType: !13, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !410, file: !411, line: 896, baseType: !13, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !410, file: !411, line: 897, baseType: !13, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !410, file: !411, line: 898, baseType: !13, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !410, file: !411, line: 899, baseType: !419, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !411, line: 875, size: 1600, elements: !421)
!421 = !{!422, !923, !939}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !420, file: !411, line: 876, baseType: !423, size: 448)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !411, line: 828, size: 448, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !913, !922}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !423, file: !411, line: 829, baseType: !419, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !423, file: !411, line: 829, baseType: !14, size: 8, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !411, line: 829, baseType: !14, size: 8, offset: 72)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !423, file: !411, line: 829, baseType: !32, size: 16, offset: 80)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !423, file: !411, line: 829, baseType: !13, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !411, line: 829, baseType: !419, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !423, file: !411, line: 829, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !411, line: 133, size: 384, elements: !434)
!434 = !{!435, !899, !900, !901, !902, !909, !910, !911, !912}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !433, file: !411, line: 134, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !438, line: 367, size: 576, elements: !439)
!438 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!439 = !{!440, !448, !461, !472, !485, !499, !508, !534, !563, !578, !591, !670, !682, !696, !706, !724, !746, !765, !784, !803, !820, !845, !862, !875, !889, !898}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !437, file: !438, line: 368, baseType: !441, size: 128)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !438, line: 73, size: 128, elements: !442)
!442 = !{!443, !444, !445, !446, !447}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !441, file: !438, line: 74, baseType: !436, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !441, file: !438, line: 74, baseType: !14, size: 8, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !438, line: 74, baseType: !14, size: 8, offset: 72)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !441, file: !438, line: 74, baseType: !32, size: 16, offset: 80)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !438, line: 74, baseType: !14, size: 8, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !437, file: !438, line: 369, baseType: !449, size: 192)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !438, line: 76, size: 192, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !460}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !449, file: !438, line: 77, baseType: !436, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !449, file: !438, line: 77, baseType: !14, size: 8, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !449, file: !438, line: 77, baseType: !14, size: 8, offset: 72)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !449, file: !438, line: 77, baseType: !32, size: 16, offset: 80)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !438, line: 77, baseType: !14, size: 8, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !449, file: !438, line: 77, baseType: !457, size: 24, offset: 104)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 3)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !449, file: !438, line: 78, baseType: !107, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !437, file: !438, line: 370, baseType: !462, size: 256)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !438, line: 93, size: 256, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !471}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !462, file: !438, line: 94, baseType: !436, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !462, file: !438, line: 94, baseType: !14, size: 8, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !462, file: !438, line: 94, baseType: !14, size: 8, offset: 72)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !462, file: !438, line: 94, baseType: !32, size: 16, offset: 80)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !462, file: !438, line: 94, baseType: !14, size: 8, offset: 96)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !462, file: !438, line: 94, baseType: !470, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !462, file: !438, line: 94, baseType: !8, size: 32, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !437, file: !438, line: 371, baseType: !473, size: 384)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !438, line: 97, size: 384, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !473, file: !438, line: 98, baseType: !436, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !473, file: !438, line: 98, baseType: !14, size: 8, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !438, line: 98, baseType: !14, size: 8, offset: 72)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !473, file: !438, line: 98, baseType: !32, size: 16, offset: 80)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !438, line: 98, baseType: !14, size: 8, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !473, file: !438, line: 98, baseType: !13, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !473, file: !438, line: 98, baseType: !8, size: 32, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !473, file: !438, line: 99, baseType: !8, size: 32, offset: 224)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !473, file: !438, line: 100, baseType: !13, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !473, file: !438, line: 101, baseType: !432, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !437, file: !438, line: 372, baseType: !486, size: 384)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !438, line: 104, size: 384, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !496, !497, !498}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !486, file: !438, line: 105, baseType: !436, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !486, file: !438, line: 105, baseType: !14, size: 8, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !438, line: 105, baseType: !14, size: 8, offset: 72)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !486, file: !438, line: 105, baseType: !32, size: 16, offset: 80)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !438, line: 105, baseType: !14, size: 8, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !486, file: !438, line: 105, baseType: !432, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !486, file: !438, line: 106, baseType: !495, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !486, file: !438, line: 107, baseType: !13, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !486, file: !438, line: 108, baseType: !8, size: 32, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !486, file: !438, line: 109, baseType: !8, size: 32, offset: 352)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !437, file: !438, line: 373, baseType: !500, size: 192)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !438, line: 118, size: 192, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !500, file: !438, line: 119, baseType: !436, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !500, file: !438, line: 119, baseType: !14, size: 8, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !438, line: 119, baseType: !14, size: 8, offset: 72)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !500, file: !438, line: 119, baseType: !32, size: 16, offset: 80)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !438, line: 119, baseType: !14, size: 8, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !500, file: !438, line: 119, baseType: !17, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !437, file: !438, line: 374, baseType: !509, size: 448)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !438, line: 143, size: 448, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !531, !532, !533}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !509, file: !438, line: 144, baseType: !436, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !509, file: !438, line: 144, baseType: !14, size: 8, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !509, file: !438, line: 144, baseType: !14, size: 8, offset: 72)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !509, file: !438, line: 144, baseType: !32, size: 16, offset: 80)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !509, file: !438, line: 144, baseType: !14, size: 8, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !509, file: !438, line: 144, baseType: !14, size: 8, offset: 104)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !509, file: !438, line: 145, baseType: !14, size: 8, offset: 112)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !509, file: !438, line: 146, baseType: !14, size: 8, offset: 120)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !509, file: !438, line: 147, baseType: !436, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !509, file: !438, line: 148, baseType: !436, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !509, file: !438, line: 149, baseType: !13, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !509, file: !438, line: 153, baseType: !523, size: 64, offset: 320)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !438, line: 150, size: 64, elements: !524)
!524 = !{!525, !530}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !523, file: !438, line: 151, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !411, line: 248, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!6, !383}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !523, file: !438, line: 152, baseType: !436, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !509, file: !438, line: 155, baseType: !8, size: 32, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !509, file: !438, line: 156, baseType: !395, size: 16, offset: 416)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !509, file: !438, line: 157, baseType: !14, size: 8, offset: 432)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !437, file: !438, line: 375, baseType: !535, size: 576)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !438, line: 122, size: 576, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !559, !560, !561, !562}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !535, file: !438, line: 123, baseType: !436, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !535, file: !438, line: 123, baseType: !14, size: 8, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !535, file: !438, line: 123, baseType: !14, size: 8, offset: 72)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !535, file: !438, line: 123, baseType: !32, size: 16, offset: 80)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !438, line: 123, baseType: !14, size: 8, offset: 96)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !535, file: !438, line: 123, baseType: !14, size: 8, offset: 104)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !535, file: !438, line: 124, baseType: !32, size: 16, offset: 112)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !535, file: !438, line: 125, baseType: !17, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !535, file: !438, line: 126, baseType: !107, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !535, file: !438, line: 127, baseType: !547, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !411, line: 620, size: 320, elements: !549)
!549 = !{!550, !551, !552, !553, !554, !555, !556, !557, !558}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !411, line: 621, baseType: !17, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !548, file: !411, line: 621, baseType: !14, size: 8, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !548, file: !411, line: 621, baseType: !14, size: 8, offset: 72)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !548, file: !411, line: 621, baseType: !32, size: 16, offset: 80)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !548, file: !411, line: 621, baseType: !32, size: 16, offset: 96)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !548, file: !411, line: 621, baseType: !14, size: 8, offset: 112)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !548, file: !411, line: 622, baseType: !383, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !548, file: !411, line: 623, baseType: !436, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !548, file: !411, line: 624, baseType: !107, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !535, file: !438, line: 128, baseType: !436, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !438, line: 129, baseType: !436, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !535, file: !438, line: 130, baseType: !432, size: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !535, file: !438, line: 131, baseType: !14, size: 8, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !437, file: !438, line: 376, baseType: !564, size: 448)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !438, line: 134, size: 448, elements: !565)
!565 = !{!566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !577}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !564, file: !438, line: 135, baseType: !436, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !564, file: !438, line: 135, baseType: !14, size: 8, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !564, file: !438, line: 135, baseType: !14, size: 8, offset: 72)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !564, file: !438, line: 135, baseType: !32, size: 16, offset: 80)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !438, line: 135, baseType: !14, size: 8, offset: 96)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !564, file: !438, line: 135, baseType: !14, size: 8, offset: 104)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !564, file: !438, line: 136, baseType: !432, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !564, file: !438, line: 137, baseType: !436, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !564, file: !438, line: 138, baseType: !436, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !564, file: !438, line: 139, baseType: !576, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !107)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !564, file: !438, line: 140, baseType: !8, size: 32, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !437, file: !438, line: 377, baseType: !579, size: 320)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !438, line: 184, size: 320, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !590}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !438, line: 185, baseType: !436, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !438, line: 185, baseType: !14, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !438, line: 185, baseType: !14, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !438, line: 185, baseType: !32, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !438, line: 185, baseType: !14, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !579, file: !438, line: 185, baseType: !587, size: 128, offset: 128)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 128, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 2)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !579, file: !438, line: 185, baseType: !436, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !437, file: !438, line: 378, baseType: !592, size: 384)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !438, line: 187, size: 384, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !592, file: !438, line: 188, baseType: !436, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !438, line: 188, baseType: !14, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !438, line: 188, baseType: !14, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !592, file: !438, line: 188, baseType: !32, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !438, line: 188, baseType: !14, size: 8, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !592, file: !438, line: 189, baseType: !587, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !592, file: !438, line: 189, baseType: !436, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !592, file: !438, line: 189, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !411, line: 480, size: 576, elements: !604)
!604 = !{!605, !606, !607, !608, !616, !631, !664, !665, !666, !667, !668, !669}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !603, file: !411, line: 481, baseType: !432, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !603, file: !411, line: 482, baseType: !602, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !603, file: !411, line: 483, baseType: !602, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !603, file: !411, line: 484, baseType: !609, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !411, line: 497, size: 256, elements: !611)
!611 = !{!612, !613, !614, !615}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !610, file: !411, line: 498, baseType: !609, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !411, line: 499, baseType: !609, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !610, file: !411, line: 500, baseType: !602, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !610, file: !411, line: 501, baseType: !8, size: 32, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !603, file: !411, line: 485, baseType: !617, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !411, line: 466, size: 320, elements: !619)
!619 = !{!620, !625, !626, !627, !628, !629, !630}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !618, file: !411, line: 467, baseType: !621, size: 128)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !411, line: 459, size: 128, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !621, file: !411, line: 460, baseType: !14, size: 8)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !621, file: !411, line: 461, baseType: !107, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !618, file: !411, line: 468, baseType: !621, size: 128, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !618, file: !411, line: 469, baseType: !32, size: 16, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !618, file: !411, line: 470, baseType: !14, size: 8, offset: 272)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !618, file: !411, line: 471, baseType: !14, size: 8, offset: 280)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !618, file: !411, line: 472, baseType: !14, size: 8, offset: 288)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !618, file: !411, line: 473, baseType: !14, size: 8, offset: 296)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !603, file: !411, line: 486, baseType: !632, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !411, line: 448, size: 192, elements: !634)
!634 = !{!635, !659, !660, !661, !662, !663}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !633, file: !411, line: 449, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !411, line: 438, size: 64, elements: !637)
!637 = !{!638, !639, !653}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !636, file: !411, line: 439, baseType: !432, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !636, file: !411, line: 440, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !411, line: 419, size: 256, elements: !642)
!642 = !{!643, !649, !650, !651, !652}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !641, file: !411, line: 420, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!8, !648, !8, !17}
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !17)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !641, file: !411, line: 421, baseType: !17, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !641, file: !411, line: 422, baseType: !432, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !641, file: !411, line: 423, baseType: !14, size: 8, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !641, file: !411, line: 424, baseType: !14, size: 8, offset: 200)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !636, file: !411, line: 441, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !411, line: 429, size: 128, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !655, file: !411, line: 430, baseType: !432, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !655, file: !411, line: 431, baseType: !654, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !633, file: !411, line: 450, baseType: !617, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !411, line: 451, baseType: !14, size: 8, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !633, file: !411, line: 452, baseType: !14, size: 8, offset: 136)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !633, file: !411, line: 453, baseType: !14, size: 8, offset: 144)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !633, file: !411, line: 454, baseType: !14, size: 8, offset: 152)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !603, file: !411, line: 487, baseType: !107, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !603, file: !411, line: 488, baseType: !8, size: 32, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !603, file: !411, line: 489, baseType: !32, size: 16, offset: 480)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !603, file: !411, line: 490, baseType: !32, size: 16, offset: 496)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !603, file: !411, line: 491, baseType: !14, size: 8, offset: 512)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !603, file: !411, line: 492, baseType: !14, size: 8, offset: 520)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !437, file: !438, line: 379, baseType: !671, size: 384)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !438, line: 192, size: 384, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !438, line: 193, baseType: !436, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !438, line: 193, baseType: !14, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !438, line: 193, baseType: !14, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !438, line: 193, baseType: !32, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !438, line: 193, baseType: !14, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !671, file: !438, line: 193, baseType: !587, size: 128, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !671, file: !438, line: 193, baseType: !436, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !671, file: !438, line: 193, baseType: !8, size: 32, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !671, file: !438, line: 194, baseType: !8, size: 32, offset: 352)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !437, file: !438, line: 380, baseType: !683, size: 384)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !438, line: 197, size: 384, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !683, file: !438, line: 198, baseType: !436, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !683, file: !438, line: 198, baseType: !14, size: 8, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !683, file: !438, line: 198, baseType: !14, size: 8, offset: 72)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !683, file: !438, line: 198, baseType: !32, size: 16, offset: 80)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !438, line: 198, baseType: !14, size: 8, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !683, file: !438, line: 200, baseType: !14, size: 8, offset: 104)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !683, file: !438, line: 201, baseType: !14, size: 8, offset: 112)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !683, file: !438, line: 202, baseType: !587, size: 128, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !683, file: !438, line: 202, baseType: !436, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !683, file: !438, line: 202, baseType: !695, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !107)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !437, file: !438, line: 381, baseType: !697, size: 320)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !438, line: 205, size: 320, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !697, file: !438, line: 206, baseType: !436, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !697, file: !438, line: 206, baseType: !14, size: 8, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !697, file: !438, line: 206, baseType: !14, size: 8, offset: 72)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !697, file: !438, line: 206, baseType: !32, size: 16, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !438, line: 206, baseType: !14, size: 8, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !697, file: !438, line: 206, baseType: !587, size: 128, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !697, file: !438, line: 206, baseType: !436, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !437, file: !438, line: 382, baseType: !707, size: 384)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !438, line: 233, size: 384, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !707, file: !438, line: 234, baseType: !436, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !707, file: !438, line: 234, baseType: !14, size: 8, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !438, line: 234, baseType: !14, size: 8, offset: 72)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !707, file: !438, line: 234, baseType: !32, size: 16, offset: 80)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !438, line: 234, baseType: !14, size: 8, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !707, file: !438, line: 234, baseType: !14, size: 8, offset: 104)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !707, file: !438, line: 234, baseType: !14, size: 8, offset: 112)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !707, file: !438, line: 234, baseType: !14, size: 8, offset: 120)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !707, file: !438, line: 234, baseType: !432, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !707, file: !438, line: 234, baseType: !8, size: 32, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !707, file: !438, line: 234, baseType: !8, size: 32, offset: 224)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !707, file: !438, line: 234, baseType: !8, size: 32, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !707, file: !438, line: 234, baseType: !14, size: 8, offset: 288)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !707, file: !438, line: 234, baseType: !14, size: 8, offset: 296)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !707, file: !438, line: 234, baseType: !436, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !437, file: !438, line: 383, baseType: !725, size: 576)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !438, line: 237, size: 576, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !725, file: !438, line: 238, baseType: !436, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !725, file: !438, line: 238, baseType: !14, size: 8, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !725, file: !438, line: 238, baseType: !14, size: 8, offset: 72)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !725, file: !438, line: 238, baseType: !32, size: 16, offset: 80)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !725, file: !438, line: 238, baseType: !14, size: 8, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !725, file: !438, line: 238, baseType: !14, size: 8, offset: 104)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !725, file: !438, line: 238, baseType: !14, size: 8, offset: 112)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !725, file: !438, line: 238, baseType: !14, size: 8, offset: 120)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !725, file: !438, line: 238, baseType: !432, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !725, file: !438, line: 238, baseType: !8, size: 32, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !725, file: !438, line: 238, baseType: !8, size: 32, offset: 224)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !725, file: !438, line: 238, baseType: !8, size: 32, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !725, file: !438, line: 238, baseType: !14, size: 8, offset: 288)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !725, file: !438, line: 238, baseType: !14, size: 8, offset: 296)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !725, file: !438, line: 238, baseType: !32, size: 16, offset: 304)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !725, file: !438, line: 239, baseType: !436, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !725, file: !438, line: 240, baseType: !13, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !725, file: !438, line: 241, baseType: !32, size: 16, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !725, file: !438, line: 242, baseType: !13, size: 64, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !437, file: !438, line: 384, baseType: !747, size: 384)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !438, line: 262, size: 384, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !438, line: 263, baseType: !436, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !438, line: 263, baseType: !14, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !438, line: 263, baseType: !14, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !438, line: 263, baseType: !32, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !438, line: 263, baseType: !14, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !747, file: !438, line: 263, baseType: !14, size: 8, offset: 104)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !747, file: !438, line: 263, baseType: !14, size: 8, offset: 112)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !747, file: !438, line: 263, baseType: !14, size: 8, offset: 120)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !747, file: !438, line: 263, baseType: !432, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !747, file: !438, line: 263, baseType: !8, size: 32, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !747, file: !438, line: 263, baseType: !8, size: 32, offset: 224)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !747, file: !438, line: 263, baseType: !8, size: 32, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !747, file: !438, line: 263, baseType: !14, size: 8, offset: 288)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !747, file: !438, line: 263, baseType: !14, size: 8, offset: 296)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !747, file: !438, line: 263, baseType: !14, size: 8, offset: 304)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !747, file: !438, line: 264, baseType: !436, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !437, file: !438, line: 385, baseType: !766, size: 448)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !438, line: 245, size: 448, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !438, line: 246, baseType: !436, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !438, line: 246, baseType: !14, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !438, line: 246, baseType: !14, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !438, line: 246, baseType: !32, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !438, line: 246, baseType: !14, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !766, file: !438, line: 246, baseType: !14, size: 8, offset: 104)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !766, file: !438, line: 246, baseType: !14, size: 8, offset: 112)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !766, file: !438, line: 246, baseType: !14, size: 8, offset: 120)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !766, file: !438, line: 246, baseType: !432, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !766, file: !438, line: 246, baseType: !8, size: 32, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !766, file: !438, line: 246, baseType: !8, size: 32, offset: 224)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !766, file: !438, line: 246, baseType: !8, size: 32, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !766, file: !438, line: 246, baseType: !14, size: 8, offset: 288)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !766, file: !438, line: 246, baseType: !14, size: 8, offset: 296)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !766, file: !438, line: 246, baseType: !436, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !766, file: !438, line: 247, baseType: !436, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !437, file: !438, line: 386, baseType: !785, size: 448)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !438, line: 250, size: 448, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !785, file: !438, line: 251, baseType: !436, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !785, file: !438, line: 251, baseType: !14, size: 8, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !785, file: !438, line: 251, baseType: !14, size: 8, offset: 72)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !785, file: !438, line: 251, baseType: !32, size: 16, offset: 80)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !438, line: 251, baseType: !14, size: 8, offset: 96)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !785, file: !438, line: 251, baseType: !14, size: 8, offset: 104)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !785, file: !438, line: 251, baseType: !14, size: 8, offset: 112)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !785, file: !438, line: 251, baseType: !14, size: 8, offset: 120)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !785, file: !438, line: 251, baseType: !432, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !785, file: !438, line: 251, baseType: !8, size: 32, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !785, file: !438, line: 251, baseType: !8, size: 32, offset: 224)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !785, file: !438, line: 251, baseType: !8, size: 32, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !785, file: !438, line: 251, baseType: !14, size: 8, offset: 288)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !785, file: !438, line: 251, baseType: !14, size: 8, offset: 296)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !785, file: !438, line: 256, baseType: !436, size: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !785, file: !438, line: 257, baseType: !436, size: 64, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !437, file: !438, line: 387, baseType: !804, size: 512)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !438, line: 273, size: 512, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !818, !819}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !804, file: !438, line: 274, baseType: !436, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !804, file: !438, line: 274, baseType: !14, size: 8, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !804, file: !438, line: 274, baseType: !14, size: 8, offset: 72)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !804, file: !438, line: 274, baseType: !32, size: 16, offset: 80)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !438, line: 274, baseType: !14, size: 8, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !804, file: !438, line: 274, baseType: !432, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !804, file: !438, line: 275, baseType: !8, size: 32, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !804, file: !438, line: 276, baseType: !814, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !648, !8, !17}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !804, file: !438, line: 277, baseType: !17, size: 64, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !804, file: !438, line: 278, baseType: !587, size: 128, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !437, file: !438, line: 388, baseType: !821, size: 512)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !438, line: 281, size: 512, elements: !822)
!822 = !{!823, !824, !825, !826, !827, !828, !829, !830, !836, !837, !838, !843, !844}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !821, file: !438, line: 282, baseType: !436, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !821, file: !438, line: 282, baseType: !14, size: 8, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !821, file: !438, line: 282, baseType: !14, size: 8, offset: 72)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !821, file: !438, line: 282, baseType: !32, size: 16, offset: 80)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !821, file: !438, line: 282, baseType: !14, size: 8, offset: 96)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !821, file: !438, line: 282, baseType: !14, size: 8, offset: 104)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !821, file: !438, line: 283, baseType: !14, size: 8, offset: 112)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !821, file: !438, line: 284, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!6, !8, !576, !8, !835, !17, !17}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !821, file: !438, line: 285, baseType: !432, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !821, file: !438, line: 286, baseType: !17, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !821, file: !438, line: 287, baseType: !839, size: 64, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!6, !648, !8, !17, !355}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !821, file: !438, line: 288, baseType: !436, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !821, file: !438, line: 289, baseType: !436, size: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !437, file: !438, line: 389, baseType: !846, size: 512)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !438, line: 307, size: 512, elements: !847)
!847 = !{!848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !846, file: !438, line: 308, baseType: !436, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !846, file: !438, line: 308, baseType: !14, size: 8, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !846, file: !438, line: 308, baseType: !14, size: 8, offset: 72)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !846, file: !438, line: 308, baseType: !32, size: 16, offset: 80)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !846, file: !438, line: 308, baseType: !14, size: 8, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !846, file: !438, line: 308, baseType: !14, size: 8, offset: 104)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !846, file: !438, line: 309, baseType: !14, size: 8, offset: 112)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !846, file: !438, line: 310, baseType: !14, size: 8, offset: 120)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !846, file: !438, line: 311, baseType: !17, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !846, file: !438, line: 312, baseType: !432, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !846, file: !438, line: 313, baseType: !495, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !846, file: !438, line: 314, baseType: !13, size: 64, offset: 320)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !846, file: !438, line: 315, baseType: !13, size: 64, offset: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !846, file: !438, line: 316, baseType: !8, size: 32, offset: 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !437, file: !438, line: 390, baseType: !863, size: 448)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !438, line: 340, size: 448, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !870, !871, !872, !873, !874}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !863, file: !438, line: 341, baseType: !436, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !863, file: !438, line: 341, baseType: !14, size: 8, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !863, file: !438, line: 341, baseType: !14, size: 8, offset: 72)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !863, file: !438, line: 341, baseType: !32, size: 16, offset: 80)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !863, file: !438, line: 341, baseType: !14, size: 8, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !863, file: !438, line: 341, baseType: !432, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !863, file: !438, line: 342, baseType: !432, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !863, file: !438, line: 343, baseType: !17, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !863, file: !438, line: 344, baseType: !13, size: 64, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !863, file: !438, line: 345, baseType: !8, size: 32, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !437, file: !438, line: 391, baseType: !876, size: 256)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !438, line: 350, size: 256, elements: !877)
!877 = !{!878, !879, !880, !881, !882, !883, !888}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !876, file: !438, line: 351, baseType: !436, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !876, file: !438, line: 351, baseType: !14, size: 8, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !876, file: !438, line: 351, baseType: !14, size: 8, offset: 72)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !876, file: !438, line: 351, baseType: !32, size: 16, offset: 80)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !438, line: 351, baseType: !14, size: 8, offset: 96)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !876, file: !438, line: 351, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !648, !17}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !876, file: !438, line: 352, baseType: !17, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !437, file: !438, line: 392, baseType: !890, size: 192)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !438, line: 357, size: 192, elements: !891)
!891 = !{!892, !893, !894, !895, !896, !897}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !890, file: !438, line: 358, baseType: !436, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !890, file: !438, line: 358, baseType: !14, size: 8, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !890, file: !438, line: 358, baseType: !14, size: 8, offset: 72)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !890, file: !438, line: 358, baseType: !32, size: 16, offset: 80)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !890, file: !438, line: 358, baseType: !14, size: 8, offset: 96)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !890, file: !438, line: 358, baseType: !436, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !437, file: !438, line: 399, baseType: !433, size: 384)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !433, file: !411, line: 135, baseType: !14, size: 8, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !433, file: !411, line: 136, baseType: !14, size: 8, offset: 72)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !411, line: 137, baseType: !32, size: 16, offset: 80)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !411, line: 138, baseType: !903, size: 32, offset: 96)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !904, line: 327, size: 32, elements: !905)
!904 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !903, file: !904, line: 328, baseType: !8, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !903, file: !904, line: 329, baseType: !908, size: 32)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 32, elements: !361)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !433, file: !411, line: 139, baseType: !432, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !433, file: !411, line: 140, baseType: !432, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !433, file: !411, line: 141, baseType: !432, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !433, file: !411, line: 142, baseType: !395, size: 16, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !423, file: !411, line: 829, baseType: !914, size: 64, offset: 320)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !411, line: 716, size: 64, elements: !915)
!915 = !{!916, !917, !918, !919, !920, !921}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !914, file: !411, line: 717, baseType: !107, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !914, file: !411, line: 718, baseType: !8, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !914, file: !411, line: 719, baseType: !470, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !914, file: !411, line: 720, baseType: !13, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !914, file: !411, line: 721, baseType: !470, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !914, file: !411, line: 722, baseType: !419, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !423, file: !411, line: 829, baseType: !14, size: 8, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !420, file: !411, line: 877, baseType: !924, size: 640)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !411, line: 835, size: 640, elements: !925)
!925 = !{!926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !924, file: !411, line: 836, baseType: !419, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !924, file: !411, line: 836, baseType: !14, size: 8, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !924, file: !411, line: 836, baseType: !14, size: 8, offset: 72)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !924, file: !411, line: 836, baseType: !32, size: 16, offset: 80)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !924, file: !411, line: 836, baseType: !13, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !411, line: 836, baseType: !419, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !924, file: !411, line: 836, baseType: !432, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !924, file: !411, line: 836, baseType: !914, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !924, file: !411, line: 836, baseType: !14, size: 8, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !924, file: !411, line: 836, baseType: !470, size: 64, offset: 448)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !924, file: !411, line: 837, baseType: !13, size: 64, offset: 512)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !924, file: !411, line: 838, baseType: !8, size: 32, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !924, file: !411, line: 839, baseType: !8, size: 32, offset: 608)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !420, file: !411, line: 878, baseType: !940, size: 1600)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !411, line: 846, size: 1600, elements: !941)
!941 = !{!942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !940, file: !411, line: 847, baseType: !419, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !940, file: !411, line: 847, baseType: !14, size: 8, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !940, file: !411, line: 847, baseType: !14, size: 8, offset: 72)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !940, file: !411, line: 847, baseType: !32, size: 16, offset: 80)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !940, file: !411, line: 847, baseType: !13, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !940, file: !411, line: 847, baseType: !419, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !940, file: !411, line: 847, baseType: !432, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !940, file: !411, line: 847, baseType: !914, size: 64, offset: 320)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !940, file: !411, line: 847, baseType: !14, size: 8, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !940, file: !411, line: 847, baseType: !419, size: 64, offset: 448)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !940, file: !411, line: 848, baseType: !419, size: 64, offset: 512)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !940, file: !411, line: 849, baseType: !470, size: 64, offset: 576)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !940, file: !411, line: 850, baseType: !14, size: 8, offset: 640)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !940, file: !411, line: 851, baseType: !470, size: 64, offset: 704)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !940, file: !411, line: 852, baseType: !470, size: 64, offset: 768)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !940, file: !411, line: 853, baseType: !470, size: 64, offset: 832)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !940, file: !411, line: 854, baseType: !908, size: 32, offset: 896)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !940, file: !411, line: 855, baseType: !8, size: 32, offset: 928)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !940, file: !411, line: 856, baseType: !8, size: 32, offset: 960)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !940, file: !411, line: 857, baseType: !8, size: 32, offset: 992)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !940, file: !411, line: 858, baseType: !8, size: 32, offset: 1024)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !940, file: !411, line: 859, baseType: !8, size: 32, offset: 1056)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !940, file: !411, line: 860, baseType: !8, size: 32, offset: 1088)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !940, file: !411, line: 861, baseType: !8, size: 32, offset: 1120)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !940, file: !411, line: 862, baseType: !8, size: 32, offset: 1152)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !940, file: !411, line: 863, baseType: !8, size: 32, offset: 1184)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !940, file: !411, line: 864, baseType: !8, size: 32, offset: 1216)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !940, file: !411, line: 865, baseType: !8, size: 32, offset: 1248)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !940, file: !411, line: 866, baseType: !8, size: 32, offset: 1280)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !940, file: !411, line: 867, baseType: !8, size: 32, offset: 1312)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !940, file: !411, line: 868, baseType: !32, size: 16, offset: 1344)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !940, file: !411, line: 869, baseType: !14, size: 8, offset: 1360)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !940, file: !411, line: 870, baseType: !14, size: 8, offset: 1368)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !940, file: !411, line: 871, baseType: !14, size: 8, offset: 1376)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !940, file: !411, line: 872, baseType: !977, size: 160, offset: 1384)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 160, elements: !978)
!978 = !{!979}
!979 = !DISubrange(count: 20)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !410, file: !411, line: 900, baseType: !432, size: 64, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !410, file: !411, line: 901, baseType: !982, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !411, line: 663, size: 640, elements: !984)
!984 = !{!985, !993, !1006, !1015, !1024, !1037, !1051, !1052, !1062}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !983, file: !411, line: 664, baseType: !986, size: 128)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !411, line: 567, size: 128, elements: !987)
!987 = !{!988, !989, !990, !991, !992}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !986, file: !411, line: 568, baseType: !17, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !986, file: !411, line: 568, baseType: !14, size: 8, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !986, file: !411, line: 568, baseType: !14, size: 8, offset: 72)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !986, file: !411, line: 568, baseType: !32, size: 16, offset: 80)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !986, file: !411, line: 568, baseType: !32, size: 16, offset: 96)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !983, file: !411, line: 665, baseType: !994, size: 384)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !411, line: 593, size: 384, elements: !995)
!995 = !{!996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !994, file: !411, line: 594, baseType: !17, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !994, file: !411, line: 594, baseType: !14, size: 8, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !411, line: 594, baseType: !14, size: 8, offset: 72)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !994, file: !411, line: 594, baseType: !32, size: 16, offset: 80)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !994, file: !411, line: 594, baseType: !32, size: 16, offset: 96)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !994, file: !411, line: 594, baseType: !32, size: 16, offset: 112)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !994, file: !411, line: 595, baseType: !419, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !994, file: !411, line: 596, baseType: !13, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !994, file: !411, line: 597, baseType: !13, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !994, file: !411, line: 598, baseType: !107, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !983, file: !411, line: 666, baseType: !1007, size: 192)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !411, line: 573, size: 192, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1007, file: !411, line: 574, baseType: !17, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1007, file: !411, line: 574, baseType: !14, size: 8, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !411, line: 574, baseType: !14, size: 8, offset: 72)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1007, file: !411, line: 574, baseType: !32, size: 16, offset: 80)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1007, file: !411, line: 574, baseType: !32, size: 16, offset: 96)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1007, file: !411, line: 574, baseType: !436, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !983, file: !411, line: 667, baseType: !1016, size: 192)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !411, line: 604, size: 192, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1016, file: !411, line: 605, baseType: !17, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1016, file: !411, line: 605, baseType: !14, size: 8, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !411, line: 605, baseType: !14, size: 8, offset: 72)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1016, file: !411, line: 605, baseType: !32, size: 16, offset: 80)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1016, file: !411, line: 605, baseType: !32, size: 16, offset: 96)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1016, file: !411, line: 605, baseType: !432, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !983, file: !411, line: 668, baseType: !1025, size: 448)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !411, line: 608, size: 448, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1025, file: !411, line: 609, baseType: !17, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1025, file: !411, line: 609, baseType: !14, size: 8, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1025, file: !411, line: 609, baseType: !14, size: 8, offset: 72)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1025, file: !411, line: 609, baseType: !32, size: 16, offset: 80)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1025, file: !411, line: 609, baseType: !32, size: 16, offset: 96)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !1025, file: !411, line: 609, baseType: !8, size: 32, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1025, file: !411, line: 610, baseType: !419, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1025, file: !411, line: 611, baseType: !13, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !1025, file: !411, line: 612, baseType: !13, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !1025, file: !411, line: 613, baseType: !8, size: 32, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !983, file: !411, line: 669, baseType: !1038, size: 512)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !411, line: 580, size: 512, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1038, file: !411, line: 581, baseType: !17, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1038, file: !411, line: 581, baseType: !14, size: 8, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !411, line: 581, baseType: !14, size: 8, offset: 72)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1038, file: !411, line: 581, baseType: !32, size: 16, offset: 80)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1038, file: !411, line: 581, baseType: !32, size: 16, offset: 96)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1038, file: !411, line: 581, baseType: !8, size: 32, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !1038, file: !411, line: 582, baseType: !436, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !1038, file: !411, line: 583, baseType: !436, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !1038, file: !411, line: 584, baseType: !383, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !1038, file: !411, line: 585, baseType: !17, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !1038, file: !411, line: 586, baseType: !8, size: 32, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !983, file: !411, line: 670, baseType: !548, size: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !983, file: !411, line: 671, baseType: !1053, size: 640)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !411, line: 631, size: 640, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1053, file: !411, line: 632, baseType: !17, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1053, file: !411, line: 632, baseType: !14, size: 8, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !411, line: 632, baseType: !14, size: 8, offset: 72)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1053, file: !411, line: 632, baseType: !32, size: 16, offset: 80)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1053, file: !411, line: 632, baseType: !32, size: 16, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1053, file: !411, line: 633, baseType: !1061, size: 512, offset: 128)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 512, elements: !373)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !983, file: !411, line: 672, baseType: !1063, size: 320)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !411, line: 654, size: 320, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1063, file: !411, line: 655, baseType: !17, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1063, file: !411, line: 655, baseType: !14, size: 8, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1063, file: !411, line: 655, baseType: !14, size: 8, offset: 72)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1063, file: !411, line: 655, baseType: !32, size: 16, offset: 80)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1063, file: !411, line: 655, baseType: !32, size: 16, offset: 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !1063, file: !411, line: 655, baseType: !14, size: 8, offset: 112)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1063, file: !411, line: 656, baseType: !432, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !1063, file: !411, line: 657, baseType: !436, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1063, file: !411, line: 658, baseType: !1074, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !411, line: 645, size: 128, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1075, file: !411, line: 646, baseType: !814, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1075, file: !411, line: 647, baseType: !17, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !410, file: !411, line: 902, baseType: !419, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !410, file: !411, line: 903, baseType: !8, size: 32, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !384, file: !385, line: 61, baseType: !8, size: 32, offset: 1088)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !384, file: !385, line: 62, baseType: !8, size: 32, offset: 1120)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !384, file: !385, line: 63, baseType: !32, size: 16, offset: 1152)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !384, file: !385, line: 64, baseType: !14, size: 8, offset: 1168)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !384, file: !385, line: 66, baseType: !1086, size: 2688, offset: 1216)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 2688, elements: !1087)
!1087 = !{!1088}
!1088 = !DISubrange(count: 7)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !384, file: !385, line: 67, baseType: !1090, size: 3072, offset: 3904)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 3072, elements: !373)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !384, file: !385, line: 68, baseType: !1092, size: 576, offset: 6976)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 576, elements: !1093)
!1093 = !{!1094}
!1094 = !DISubrange(count: 9)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !384, file: !385, line: 69, baseType: !495, size: 64, offset: 7552)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !384, file: !385, line: 71, baseType: !13, size: 64, offset: 7616)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !384, file: !385, line: 72, baseType: !495, size: 64, offset: 7680)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !384, file: !385, line: 73, baseType: !982, size: 64, offset: 7744)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !384, file: !385, line: 74, baseType: !432, size: 64, offset: 7808)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !384, file: !385, line: 75, baseType: !436, size: 64, offset: 7872)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !384, file: !385, line: 76, baseType: !432, size: 64, offset: 7936)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !384, file: !385, line: 77, baseType: !419, size: 64, offset: 8000)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !384, file: !385, line: 78, baseType: !436, size: 64, offset: 8064)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !384, file: !385, line: 79, baseType: !432, size: 64, offset: 8128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !384, file: !385, line: 80, baseType: !470, size: 64, offset: 8192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !384, file: !385, line: 81, baseType: !419, size: 64, offset: 8256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !384, file: !385, line: 82, baseType: !1108, size: 64, offset: 8320)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !411, line: 702, size: 128, elements: !1111)
!1111 = !{!1112, !1113, !1114, !1115, !1116, !1117}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !1110, file: !411, line: 706, baseType: !8, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !1110, file: !411, line: 707, baseType: !8, size: 32, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1110, file: !411, line: 708, baseType: !32, size: 16, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1110, file: !411, line: 709, baseType: !14, size: 8, offset: 80)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1110, file: !411, line: 710, baseType: !14, size: 8, offset: 88)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1110, file: !411, line: 711, baseType: !14, size: 8, offset: 96)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !384, file: !385, line: 83, baseType: !419, size: 64, offset: 8384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !384, file: !385, line: 84, baseType: !436, size: 64, offset: 8448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !384, file: !385, line: 85, baseType: !982, size: 64, offset: 8512)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !384, file: !385, line: 86, baseType: !436, size: 64, offset: 8576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !384, file: !385, line: 87, baseType: !982, size: 64, offset: 8640)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !384, file: !385, line: 88, baseType: !419, size: 64, offset: 8704)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !384, file: !385, line: 89, baseType: !419, size: 64, offset: 8768)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !384, file: !385, line: 90, baseType: !547, size: 64, offset: 8832)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !384, file: !385, line: 91, baseType: !1127, size: 64, offset: 8896)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !411, line: 637, baseType: !1128)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!6, !383, !1131}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !384, file: !385, line: 92, baseType: !1133, size: 64, offset: 8960)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !411, line: 641, baseType: !527)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_aml_callback", file: !1135, line: 120, baseType: !1136)
!1135 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/lizy2001/genbc/linux")
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!6, !13, !8, !8, !14, !355}
!1139 = !DILocalVariable(name: "walk_state", arg: 1, scope: !380, file: !3, line: 137, type: !383)
!1140 = !DILocation(line: 137, column: 52, scope: !380)
!1141 = !DILocalVariable(name: "aml", arg: 2, scope: !380, file: !3, line: 138, type: !13)
!1142 = !DILocation(line: 138, column: 11, scope: !380)
!1143 = !DILocalVariable(name: "aml_length", arg: 3, scope: !380, file: !3, line: 139, type: !354)
!1144 = !DILocation(line: 139, column: 17, scope: !380)
!1145 = !DILocalVariable(name: "user_function", arg: 4, scope: !380, file: !3, line: 140, type: !1134)
!1146 = !DILocation(line: 140, column: 30, scope: !380)
!1147 = !DILocalVariable(name: "context", arg: 5, scope: !380, file: !3, line: 140, type: !355)
!1148 = !DILocation(line: 140, column: 52, scope: !380)
!1149 = !DILocalVariable(name: "status", scope: !380, file: !3, line: 142, type: !6)
!1150 = !DILocation(line: 142, column: 14, scope: !380)
!1151 = !DILocalVariable(name: "end_aml", scope: !380, file: !3, line: 143, type: !13)
!1152 = !DILocation(line: 143, column: 6, scope: !380)
!1153 = !DILocalVariable(name: "resource_index", scope: !380, file: !3, line: 144, type: !14)
!1154 = !DILocation(line: 144, column: 5, scope: !380)
!1155 = !DILocalVariable(name: "length", scope: !380, file: !3, line: 145, type: !8)
!1156 = !DILocation(line: 145, column: 6, scope: !380)
!1157 = !DILocalVariable(name: "offset", scope: !380, file: !3, line: 146, type: !8)
!1158 = !DILocation(line: 146, column: 6, scope: !380)
!1159 = !DILocalVariable(name: "end_tag", scope: !380, file: !3, line: 147, type: !1160)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 16, elements: !588)
!1161 = !DILocation(line: 147, column: 5, scope: !380)
!1162 = !DILocation(line: 153, column: 6, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !380, file: !3, line: 153, column: 6)
!1164 = !DILocation(line: 153, column: 17, scope: !1163)
!1165 = !DILocation(line: 153, column: 6, scope: !380)
!1166 = !DILocation(line: 154, column: 3, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 153, column: 56)
!1168 = !DILocation(line: 159, column: 12, scope: !380)
!1169 = !DILocation(line: 159, column: 18, scope: !380)
!1170 = !DILocation(line: 159, column: 16, scope: !380)
!1171 = !DILocation(line: 159, column: 10, scope: !380)
!1172 = !DILocation(line: 163, column: 2, scope: !380)
!1173 = !DILocation(line: 163, column: 9, scope: !380)
!1174 = !DILocation(line: 163, column: 15, scope: !380)
!1175 = !DILocation(line: 163, column: 13, scope: !380)
!1176 = !DILocation(line: 168, column: 33, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !380, file: !3, line: 163, column: 24)
!1178 = !DILocation(line: 168, column: 45, scope: !1177)
!1179 = !DILocation(line: 168, column: 7, scope: !1177)
!1180 = !DILocation(line: 167, column: 10, scope: !1177)
!1181 = !DILocation(line: 169, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 169, column: 7)
!1183 = !DILocation(line: 169, column: 7, scope: !1177)
!1184 = !DILocation(line: 174, column: 4, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 169, column: 29)
!1186 = !DILocation(line: 179, column: 42, scope: !1177)
!1187 = !DILocation(line: 179, column: 12, scope: !1177)
!1188 = !DILocation(line: 179, column: 10, scope: !1177)
!1189 = !DILocation(line: 183, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 183, column: 7)
!1191 = !DILocation(line: 183, column: 7, scope: !1177)
!1192 = !DILocation(line: 185, column: 8, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 183, column: 22)
!1194 = !DILocation(line: 185, column: 22, scope: !1193)
!1195 = !DILocation(line: 185, column: 27, scope: !1193)
!1196 = !DILocation(line: 185, column: 35, scope: !1193)
!1197 = !DILocation(line: 185, column: 43, scope: !1193)
!1198 = !DILocation(line: 186, column: 8, scope: !1193)
!1199 = !DILocation(line: 184, column: 11, scope: !1193)
!1200 = !DILocation(line: 187, column: 8, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 187, column: 8)
!1202 = !DILocation(line: 187, column: 8, scope: !1193)
!1203 = !DILocation(line: 188, column: 5, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 187, column: 30)
!1205 = !DILocation(line: 190, column: 3, scope: !1193)
!1206 = !DILocation(line: 194, column: 33, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 194, column: 7)
!1208 = !DILocation(line: 194, column: 7, scope: !1207)
!1209 = !DILocation(line: 194, column: 38, scope: !1207)
!1210 = !DILocation(line: 194, column: 7, scope: !1177)
!1211 = !DILocation(line: 200, column: 9, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 200, column: 8)
!1213 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 195, column: 35)
!1214 = !DILocation(line: 200, column: 13, scope: !1212)
!1215 = !DILocation(line: 200, column: 21, scope: !1212)
!1216 = !DILocation(line: 200, column: 18, scope: !1212)
!1217 = !DILocation(line: 200, column: 8, scope: !1213)
!1218 = !DILocation(line: 201, column: 5, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 200, column: 30)
!1220 = !DILocation(line: 213, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 213, column: 8)
!1222 = !DILocation(line: 213, column: 8, scope: !1213)
!1223 = !DILocation(line: 214, column: 16, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 213, column: 24)
!1225 = !DILocation(line: 214, column: 6, scope: !1224)
!1226 = !DILocation(line: 214, column: 14, scope: !1224)
!1227 = !DILocation(line: 215, column: 4, scope: !1224)
!1228 = !DILocation(line: 219, column: 4, scope: !1213)
!1229 = !DILocation(line: 222, column: 10, scope: !1177)
!1230 = !DILocation(line: 222, column: 7, scope: !1177)
!1231 = !DILocation(line: 223, column: 13, scope: !1177)
!1232 = !DILocation(line: 223, column: 10, scope: !1177)
!1233 = distinct !{!1233, !1172, !1234}
!1234 = !DILocation(line: 224, column: 2, scope: !380)
!1235 = !DILocation(line: 228, column: 6, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !380, file: !3, line: 228, column: 6)
!1237 = !DILocation(line: 228, column: 6, scope: !380)
!1238 = !DILocation(line: 232, column: 35, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 228, column: 21)
!1240 = !DILocation(line: 232, column: 47, scope: !1239)
!1241 = !DILocation(line: 232, column: 9, scope: !1239)
!1242 = !DILocation(line: 235, column: 7, scope: !1239)
!1243 = !DILocation(line: 235, column: 21, scope: !1239)
!1244 = !DILocation(line: 235, column: 33, scope: !1239)
!1245 = !DILocation(line: 235, column: 41, scope: !1239)
!1246 = !DILocation(line: 235, column: 57, scope: !1239)
!1247 = !DILocation(line: 234, column: 10, scope: !1239)
!1248 = !DILocation(line: 236, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 236, column: 7)
!1250 = !DILocation(line: 236, column: 7, scope: !1239)
!1251 = !DILocation(line: 237, column: 4, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 236, column: 29)
!1253 = !DILocation(line: 239, column: 2, scope: !1239)
!1254 = !DILocation(line: 241, column: 2, scope: !380)
!1255 = !DILocation(line: 242, column: 1, scope: !380)
!1256 = distinct !DISubprogram(name: "acpi_ut_validate_resource", scope: !3, file: !3, line: 262, type: !1257, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!6, !383, !17, !13}
!1259 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1256, file: !3, line: 262, type: !383)
!1260 = !DILocation(line: 262, column: 51, scope: !1256)
!1261 = !DILocalVariable(name: "aml", arg: 2, scope: !1256, file: !3, line: 263, type: !17)
!1262 = !DILocation(line: 263, column: 12, scope: !1256)
!1263 = !DILocalVariable(name: "return_index", arg: 3, scope: !1256, file: !3, line: 263, type: !13)
!1264 = !DILocation(line: 263, column: 21, scope: !1256)
!1265 = !DILocalVariable(name: "aml_resource", scope: !1256, file: !3, line: 265, type: !18)
!1266 = !DILocation(line: 265, column: 22, scope: !1256)
!1267 = !DILocalVariable(name: "resource_type", scope: !1256, file: !3, line: 266, type: !14)
!1268 = !DILocation(line: 266, column: 5, scope: !1256)
!1269 = !DILocalVariable(name: "resource_index", scope: !1256, file: !3, line: 267, type: !14)
!1270 = !DILocation(line: 267, column: 5, scope: !1256)
!1271 = !DILocalVariable(name: "resource_length", scope: !1256, file: !3, line: 268, type: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_rs_length", file: !1273, line: 16, baseType: !32)
!1273 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!1274 = !DILocation(line: 268, column: 17, scope: !1256)
!1275 = !DILocalVariable(name: "minimum_resource_length", scope: !1256, file: !3, line: 269, type: !1272)
!1276 = !DILocation(line: 269, column: 17, scope: !1256)
!1277 = !DILocation(line: 276, column: 18, scope: !1256)
!1278 = !DILocation(line: 276, column: 16, scope: !1256)
!1279 = !DILocation(line: 282, column: 6, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 282, column: 6)
!1281 = !DILocation(line: 282, column: 20, scope: !1280)
!1282 = !DILocation(line: 282, column: 6, scope: !1256)
!1283 = !DILocation(line: 286, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 286, column: 7)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 282, column: 48)
!1286 = !DILocation(line: 286, column: 21, scope: !1284)
!1287 = !DILocation(line: 286, column: 7, scope: !1285)
!1288 = !DILocation(line: 287, column: 4, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 286, column: 53)
!1290 = !DILocation(line: 294, column: 26, scope: !1285)
!1291 = !DILocation(line: 294, column: 40, scope: !1285)
!1292 = !DILocation(line: 294, column: 20, scope: !1285)
!1293 = !DILocation(line: 294, column: 18, scope: !1285)
!1294 = !DILocation(line: 295, column: 2, scope: !1285)
!1295 = !DILocation(line: 301, column: 9, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 295, column: 9)
!1297 = !DILocation(line: 301, column: 23, scope: !1296)
!1298 = !DILocation(line: 301, column: 56, scope: !1296)
!1299 = !DILocation(line: 300, column: 20, scope: !1296)
!1300 = !DILocation(line: 300, column: 18, scope: !1296)
!1301 = !DILocation(line: 308, column: 31, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 308, column: 6)
!1303 = !DILocation(line: 308, column: 7, scope: !1302)
!1304 = !DILocation(line: 308, column: 6, scope: !1256)
!1305 = !DILocation(line: 309, column: 3, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 308, column: 48)
!1307 = !DILocation(line: 316, column: 48, scope: !1256)
!1308 = !DILocation(line: 316, column: 20, scope: !1256)
!1309 = !DILocation(line: 316, column: 18, scope: !1256)
!1310 = !DILocation(line: 317, column: 56, scope: !1256)
!1311 = !DILocation(line: 317, column: 28, scope: !1256)
!1312 = !DILocation(line: 317, column: 26, scope: !1256)
!1313 = !DILocation(line: 321, column: 34, scope: !1256)
!1314 = !DILocation(line: 321, column: 10, scope: !1256)
!1315 = !DILocation(line: 321, column: 2, scope: !1256)
!1316 = !DILocation(line: 326, column: 7, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 326, column: 7)
!1318 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 321, column: 51)
!1319 = !DILocation(line: 326, column: 26, scope: !1317)
!1320 = !DILocation(line: 326, column: 23, scope: !1317)
!1321 = !DILocation(line: 326, column: 7, scope: !1318)
!1322 = !DILocation(line: 327, column: 4, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 326, column: 51)
!1324 = !DILocation(line: 329, column: 3, scope: !1318)
!1325 = !DILocation(line: 335, column: 7, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 335, column: 7)
!1327 = !DILocation(line: 335, column: 25, scope: !1326)
!1328 = !DILocation(line: 335, column: 23, scope: !1326)
!1329 = !DILocation(line: 335, column: 7, scope: !1318)
!1330 = !DILocation(line: 336, column: 4, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 335, column: 50)
!1332 = !DILocation(line: 338, column: 3, scope: !1318)
!1333 = !DILocation(line: 344, column: 8, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 344, column: 7)
!1335 = !DILocation(line: 344, column: 26, scope: !1334)
!1336 = !DILocation(line: 344, column: 24, scope: !1334)
!1337 = !DILocation(line: 344, column: 51, scope: !1334)
!1338 = !DILocation(line: 345, column: 8, scope: !1334)
!1339 = !DILocation(line: 345, column: 27, scope: !1334)
!1340 = !DILocation(line: 345, column: 51, scope: !1334)
!1341 = !DILocation(line: 345, column: 24, scope: !1334)
!1342 = !DILocation(line: 344, column: 7, scope: !1318)
!1343 = !DILocation(line: 346, column: 4, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 345, column: 58)
!1345 = !DILocation(line: 348, column: 3, scope: !1318)
!1346 = !DILocation(line: 354, column: 3, scope: !1318)
!1347 = !DILocation(line: 357, column: 17, scope: !1256)
!1348 = !DILocation(line: 357, column: 15, scope: !1256)
!1349 = !DILocation(line: 358, column: 6, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 358, column: 6)
!1351 = !DILocation(line: 358, column: 20, scope: !1350)
!1352 = !DILocation(line: 358, column: 6, scope: !1256)
!1353 = !DILocation(line: 362, column: 8, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 362, column: 7)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 358, column: 54)
!1356 = !DILocation(line: 362, column: 22, scope: !1354)
!1357 = !DILocation(line: 362, column: 40, scope: !1354)
!1358 = !DILocation(line: 362, column: 45, scope: !1354)
!1359 = !DILocation(line: 362, column: 51, scope: !1354)
!1360 = !DILocation(line: 363, column: 8, scope: !1354)
!1361 = !DILocation(line: 363, column: 22, scope: !1354)
!1362 = !DILocation(line: 363, column: 40, scope: !1354)
!1363 = !DILocation(line: 363, column: 45, scope: !1354)
!1364 = !DILocation(line: 362, column: 7, scope: !1355)
!1365 = !DILocation(line: 365, column: 8, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 365, column: 8)
!1367 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 364, column: 41)
!1368 = !DILocation(line: 365, column: 8, scope: !1367)
!1369 = !DILocation(line: 366, column: 5, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 365, column: 20)
!1371 = !DILocation(line: 370, column: 4, scope: !1370)
!1372 = !DILocation(line: 371, column: 4, scope: !1367)
!1373 = !DILocation(line: 373, column: 2, scope: !1355)
!1374 = !DILocation(line: 377, column: 6, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 377, column: 6)
!1376 = !DILocation(line: 377, column: 6, scope: !1256)
!1377 = !DILocation(line: 378, column: 19, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 377, column: 20)
!1379 = !DILocation(line: 378, column: 4, scope: !1378)
!1380 = !DILocation(line: 378, column: 17, scope: !1378)
!1381 = !DILocation(line: 379, column: 2, scope: !1378)
!1382 = !DILocation(line: 381, column: 2, scope: !1256)
!1383 = !DILabel(scope: !1256, name: "invalid_resource", file: !3, line: 383)
!1384 = !DILocation(line: 383, column: 1, scope: !1256)
!1385 = !DILocation(line: 385, column: 6, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 385, column: 6)
!1387 = !DILocation(line: 385, column: 6, scope: !1256)
!1388 = !DILocation(line: 386, column: 3, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 385, column: 18)
!1390 = !DILocation(line: 389, column: 2, scope: !1389)
!1391 = !DILocation(line: 390, column: 2, scope: !1256)
!1392 = !DILabel(scope: !1256, name: "bad_resource_length", file: !3, line: 392)
!1393 = !DILocation(line: 392, column: 1, scope: !1256)
!1394 = !DILocation(line: 394, column: 6, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 394, column: 6)
!1396 = !DILocation(line: 394, column: 6, scope: !1256)
!1397 = !DILocation(line: 395, column: 3, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 394, column: 18)
!1399 = !DILocation(line: 400, column: 2, scope: !1398)
!1400 = !DILocation(line: 401, column: 2, scope: !1256)
!1401 = !DILocation(line: 402, column: 1, scope: !1256)
!1402 = distinct !DISubprogram(name: "acpi_ut_get_descriptor_length", scope: !3, file: !3, line: 517, type: !1403, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!8, !17}
!1405 = !DILocalVariable(name: "aml", arg: 1, scope: !1402, file: !3, line: 517, type: !17)
!1406 = !DILocation(line: 517, column: 41, scope: !1402)
!1407 = !DILocation(line: 525, column: 38, scope: !1402)
!1408 = !DILocation(line: 525, column: 10, scope: !1402)
!1409 = !DILocation(line: 526, column: 38, scope: !1402)
!1410 = !DILocation(line: 526, column: 3, scope: !1402)
!1411 = !DILocation(line: 525, column: 43, scope: !1402)
!1412 = !DILocation(line: 525, column: 2, scope: !1402)
!1413 = distinct !DISubprogram(name: "acpi_ut_get_resource_type", scope: !3, file: !3, line: 418, type: !1414, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!14, !17}
!1416 = !DILocalVariable(name: "aml", arg: 1, scope: !1413, file: !3, line: 418, type: !17)
!1417 = !DILocation(line: 418, column: 36, scope: !1413)
!1418 = !DILocation(line: 426, column: 6, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 426, column: 6)
!1420 = !DILocation(line: 426, column: 21, scope: !1419)
!1421 = !DILocation(line: 426, column: 6, scope: !1413)
!1422 = !DILocation(line: 430, column: 11, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 426, column: 49)
!1424 = !DILocation(line: 430, column: 3, scope: !1423)
!1425 = !DILocation(line: 434, column: 17, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 431, column: 9)
!1427 = !DILocation(line: 434, column: 32, scope: !1426)
!1428 = !DILocation(line: 434, column: 11, scope: !1426)
!1429 = !DILocation(line: 434, column: 3, scope: !1426)
!1430 = !DILocation(line: 436, column: 1, scope: !1413)
!1431 = distinct !DISubprogram(name: "acpi_ut_get_resource_length", scope: !3, file: !3, line: 452, type: !1432, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!32, !17}
!1434 = !DILocalVariable(name: "aml", arg: 1, scope: !1431, file: !3, line: 452, type: !17)
!1435 = !DILocation(line: 452, column: 39, scope: !1431)
!1436 = !DILocalVariable(name: "resource_length", scope: !1431, file: !3, line: 454, type: !1272)
!1437 = !DILocation(line: 454, column: 17, scope: !1431)
!1438 = !DILocation(line: 462, column: 6, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 462, column: 6)
!1440 = !DILocation(line: 462, column: 21, scope: !1439)
!1441 = !DILocation(line: 462, column: 6, scope: !1431)
!1442 = !DILocation(line: 466, column: 3, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 462, column: 49)
!1444 = !DILocation(line: 468, column: 2, scope: !1443)
!1445 = !DILocation(line: 471, column: 28, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 468, column: 9)
!1447 = !DILocation(line: 471, column: 43, scope: !1446)
!1448 = !DILocation(line: 471, column: 21, scope: !1446)
!1449 = !DILocation(line: 471, column: 19, scope: !1446)
!1450 = !DILocation(line: 475, column: 10, scope: !1431)
!1451 = !DILocation(line: 475, column: 2, scope: !1431)
!1452 = distinct !DISubprogram(name: "acpi_ut_get_resource_header_length", scope: !3, file: !3, line: 490, type: !1414, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1453 = !DILocalVariable(name: "aml", arg: 1, scope: !1452, file: !3, line: 490, type: !17)
!1454 = !DILocation(line: 490, column: 45, scope: !1452)
!1455 = !DILocation(line: 496, column: 6, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 496, column: 6)
!1457 = !DILocation(line: 496, column: 21, scope: !1456)
!1458 = !DILocation(line: 496, column: 6, scope: !1452)
!1459 = !DILocation(line: 497, column: 3, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 496, column: 49)
!1461 = !DILocation(line: 499, column: 3, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 498, column: 9)
!1463 = !DILocation(line: 501, column: 1, scope: !1452)
!1464 = distinct !DISubprogram(name: "acpi_ut_get_resource_end_tag", scope: !3, file: !3, line: 544, type: !1465, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!6, !436, !1467}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1468 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1464, file: !3, line: 544, type: !436)
!1469 = !DILocation(line: 544, column: 57, scope: !1464)
!1470 = !DILocalVariable(name: "end_tag", arg: 2, scope: !1464, file: !3, line: 544, type: !1467)
!1471 = !DILocation(line: 544, column: 72, scope: !1464)
!1472 = !DILocalVariable(name: "status", scope: !1464, file: !3, line: 546, type: !6)
!1473 = !DILocation(line: 546, column: 14, scope: !1464)
!1474 = !DILocation(line: 552, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 552, column: 6)
!1476 = !DILocation(line: 552, column: 17, scope: !1475)
!1477 = !DILocation(line: 552, column: 24, scope: !1475)
!1478 = !DILocation(line: 552, column: 6, scope: !1464)
!1479 = !DILocation(line: 553, column: 14, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 552, column: 32)
!1481 = !DILocation(line: 553, column: 24, scope: !1480)
!1482 = !DILocation(line: 553, column: 31, scope: !1480)
!1483 = !DILocation(line: 553, column: 4, scope: !1480)
!1484 = !DILocation(line: 553, column: 12, scope: !1480)
!1485 = !DILocation(line: 554, column: 3, scope: !1480)
!1486 = !DILocation(line: 559, column: 44, scope: !1464)
!1487 = !DILocation(line: 559, column: 54, scope: !1464)
!1488 = !DILocation(line: 559, column: 61, scope: !1464)
!1489 = !DILocation(line: 560, column: 10, scope: !1464)
!1490 = !DILocation(line: 560, column: 20, scope: !1464)
!1491 = !DILocation(line: 560, column: 27, scope: !1464)
!1492 = !DILocation(line: 561, column: 19, scope: !1464)
!1493 = !DILocation(line: 559, column: 11, scope: !1464)
!1494 = !DILocation(line: 559, column: 9, scope: !1464)
!1495 = !DILocation(line: 563, column: 2, scope: !1464)
!1496 = !DILocation(line: 564, column: 1, scope: !1464)
