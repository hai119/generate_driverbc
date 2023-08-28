; ModuleID = '../bcout/drivers/acpi/acpica/rsxface.llvm.bc'
source_filename = "drivers/acpi/acpica/rsxface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_buffer = type { i64, i8* }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%union.acpi_name_union = type { i32 }
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor_typed, [40 x i8] }
%struct.acpi_resource_vendor_typed = type { i16, i8, [16 x i8], [1 x i8] }
%struct.acpi_resource_address64 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address64_attribute, %struct.acpi_resource_source }>
%union.acpi_resource_attribute = type { %struct.acpi_memory_attribute }
%struct.acpi_memory_attribute = type { i8, i8, i8, i8 }
%struct.acpi_address64_attribute = type { i64, i64, i64, i64, i64 }
%struct.acpi_resource_source = type <{ i8, i16, i8* }>
%struct.acpi_resource_address16 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address16_attribute, %struct.acpi_resource_source }>
%struct.acpi_address16_attribute = type { i16, i16, i16, i16, i16 }
%struct.acpi_resource_address32 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address32_attribute, %struct.acpi_resource_source }>
%struct.acpi_address32_attribute = type { i32, i32, i32, i32, i32 }
%struct.acpi_vendor_uuid = type { i8, [16 x i8] }
%struct.acpi_vendor_walk_info = type { %struct.acpi_vendor_uuid*, %struct.acpi_buffer*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_PRS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_AEI\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_DMA\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_irq_routing_table(i8* %device_handle, %struct.acpi_buffer* %ret_buffer) #0 !dbg !399 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca i8*, align 8
  %ret_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %device_handle, i8** %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device_handle.addr, metadata !408, metadata !DIExpression()), !dbg !409
  store %struct.acpi_buffer* %ret_buffer, %struct.acpi_buffer** %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %ret_buffer.addr, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata i32* %status, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !414, metadata !DIExpression()), !dbg !1169
  %0 = load i8*, i8** %device_handle.addr, align 8, !dbg !1170
  %1 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1171
  %call = call i32 @acpi_rs_validate_parameters(i8* %0, %struct.acpi_buffer* %1, %struct.acpi_namespace_node** %node) #4, !dbg !1172
  store i32 %call, i32* %status, align 4, !dbg !1173
  %2 = load i32, i32* %status, align 4, !dbg !1174
  %tobool = icmp ne i32 %2, 0, !dbg !1174
  br i1 %tobool, label %if.then, label %if.end, !dbg !1176

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !1177
  store i32 %3, i32* %retval, align 4, !dbg !1177
  br label %return, !dbg !1177

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1179
  %5 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1180
  %call1 = call i32 @acpi_rs_get_prt_method_data(%struct.acpi_namespace_node* %4, %struct.acpi_buffer* %5) #4, !dbg !1181
  store i32 %call1, i32* %status, align 4, !dbg !1182
  %6 = load i32, i32* %status, align 4, !dbg !1183
  store i32 %6, i32* %retval, align 4, !dbg !1183
  br label %return, !dbg !1183

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !1184
  ret i32 %7, !dbg !1184
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_rs_validate_parameters(i8* %device_handle, %struct.acpi_buffer* %buffer, %struct.acpi_namespace_node** %return_node) #0 !dbg !1185 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca i8*, align 8
  %buffer.addr = alloca %struct.acpi_buffer*, align 8
  %return_node.addr = alloca %struct.acpi_namespace_node**, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %device_handle, i8** %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device_handle.addr, metadata !1189, metadata !DIExpression()), !dbg !1190
  store %struct.acpi_buffer* %buffer, %struct.acpi_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %buffer.addr, metadata !1191, metadata !DIExpression()), !dbg !1192
  store %struct.acpi_namespace_node** %return_node, %struct.acpi_namespace_node*** %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node*** %return_node.addr, metadata !1193, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1195, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1197, metadata !DIExpression()), !dbg !1198
  %0 = load i8*, i8** %device_handle.addr, align 8, !dbg !1199
  %tobool = icmp ne i8* %0, null, !dbg !1199
  br i1 %tobool, label %if.end, label %if.then, !dbg !1201

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1202
  br label %return, !dbg !1202

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %device_handle.addr, align 8, !dbg !1204
  %call = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %1) #4, !dbg !1205
  store %struct.acpi_namespace_node* %call, %struct.acpi_namespace_node** %node, align 8, !dbg !1206
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1207
  %tobool1 = icmp ne %struct.acpi_namespace_node* %2, null, !dbg !1207
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1209

if.then2:                                         ; preds = %if.end
  store i32 4097, i32* %retval, align 4, !dbg !1210
  br label %return, !dbg !1210

if.end3:                                          ; preds = %if.end
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1212
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %3, i32 0, i32 2, !dbg !1214
  %4 = load i8, i8* %type, align 1, !dbg !1214
  %conv = zext i8 %4 to i32, !dbg !1212
  %cmp = icmp ne i32 %conv, 6, !dbg !1215
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1216

if.then5:                                         ; preds = %if.end3
  store i32 8, i32* %retval, align 4, !dbg !1217
  br label %return, !dbg !1217

if.end6:                                          ; preds = %if.end3
  %5 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !1219
  %call7 = call i32 @acpi_ut_validate_buffer(%struct.acpi_buffer* %5) #4, !dbg !1220
  store i32 %call7, i32* %status, align 4, !dbg !1221
  %6 = load i32, i32* %status, align 4, !dbg !1222
  %tobool8 = icmp ne i32 %6, 0, !dbg !1222
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1224

if.then9:                                         ; preds = %if.end6
  %7 = load i32, i32* %status, align 4, !dbg !1225
  store i32 %7, i32* %retval, align 4, !dbg !1225
  br label %return, !dbg !1225

if.end10:                                         ; preds = %if.end6
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1227
  %9 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !1228
  store %struct.acpi_namespace_node* %8, %struct.acpi_namespace_node** %9, align 8, !dbg !1229
  store i32 0, i32* %retval, align 4, !dbg !1230
  br label %return, !dbg !1230

return:                                           ; preds = %if.end10, %if.then9, %if.then5, %if.then2, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !1231
  ret i32 %10, !dbg !1231
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_get_prt_method_data(%struct.acpi_namespace_node*, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_current_resources(i8* %device_handle, %struct.acpi_buffer* %ret_buffer) #0 !dbg !1232 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca i8*, align 8
  %ret_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %device_handle, i8** %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device_handle.addr, metadata !1233, metadata !DIExpression()), !dbg !1234
  store %struct.acpi_buffer* %ret_buffer, %struct.acpi_buffer** %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %ret_buffer.addr, metadata !1235, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1237, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1239, metadata !DIExpression()), !dbg !1240
  %0 = load i8*, i8** %device_handle.addr, align 8, !dbg !1241
  %1 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1242
  %call = call i32 @acpi_rs_validate_parameters(i8* %0, %struct.acpi_buffer* %1, %struct.acpi_namespace_node** %node) #4, !dbg !1243
  store i32 %call, i32* %status, align 4, !dbg !1244
  %2 = load i32, i32* %status, align 4, !dbg !1245
  %tobool = icmp ne i32 %2, 0, !dbg !1245
  br i1 %tobool, label %if.then, label %if.end, !dbg !1247

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !1248
  store i32 %3, i32* %retval, align 4, !dbg !1248
  br label %return, !dbg !1248

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1250
  %5 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1251
  %call1 = call i32 @acpi_rs_get_crs_method_data(%struct.acpi_namespace_node* %4, %struct.acpi_buffer* %5) #4, !dbg !1252
  store i32 %call1, i32* %status, align 4, !dbg !1253
  %6 = load i32, i32* %status, align 4, !dbg !1254
  store i32 %6, i32* %retval, align 4, !dbg !1254
  br label %return, !dbg !1254

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !1255
  ret i32 %7, !dbg !1255
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_get_crs_method_data(%struct.acpi_namespace_node*, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_possible_resources(i8* %device_handle, %struct.acpi_buffer* %ret_buffer) #0 !dbg !1256 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca i8*, align 8
  %ret_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %device_handle, i8** %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device_handle.addr, metadata !1257, metadata !DIExpression()), !dbg !1258
  store %struct.acpi_buffer* %ret_buffer, %struct.acpi_buffer** %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %ret_buffer.addr, metadata !1259, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1261, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1263, metadata !DIExpression()), !dbg !1264
  %0 = load i8*, i8** %device_handle.addr, align 8, !dbg !1265
  %1 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1266
  %call = call i32 @acpi_rs_validate_parameters(i8* %0, %struct.acpi_buffer* %1, %struct.acpi_namespace_node** %node) #4, !dbg !1267
  store i32 %call, i32* %status, align 4, !dbg !1268
  %2 = load i32, i32* %status, align 4, !dbg !1269
  %tobool = icmp ne i32 %2, 0, !dbg !1269
  br i1 %tobool, label %if.then, label %if.end, !dbg !1271

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !1272
  store i32 %3, i32* %retval, align 4, !dbg !1272
  br label %return, !dbg !1272

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1274
  %5 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1275
  %call1 = call i32 @acpi_rs_get_prs_method_data(%struct.acpi_namespace_node* %4, %struct.acpi_buffer* %5) #4, !dbg !1276
  store i32 %call1, i32* %status, align 4, !dbg !1277
  %6 = load i32, i32* %status, align 4, !dbg !1278
  store i32 %6, i32* %retval, align 4, !dbg !1278
  br label %return, !dbg !1278

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !1279
  ret i32 %7, !dbg !1279
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_get_prs_method_data(%struct.acpi_namespace_node*, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_set_current_resources(i8* %device_handle, %struct.acpi_buffer* %in_buffer) #0 !dbg !1280 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca i8*, align 8
  %in_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %device_handle, i8** %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device_handle.addr, metadata !1281, metadata !DIExpression()), !dbg !1282
  store %struct.acpi_buffer* %in_buffer, %struct.acpi_buffer** %in_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %in_buffer.addr, metadata !1283, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1285, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1287, metadata !DIExpression()), !dbg !1288
  %0 = load %struct.acpi_buffer*, %struct.acpi_buffer** %in_buffer.addr, align 8, !dbg !1289
  %tobool = icmp ne %struct.acpi_buffer* %0, null, !dbg !1289
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1291

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_buffer*, %struct.acpi_buffer** %in_buffer.addr, align 8, !dbg !1292
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %1, i32 0, i32 1, !dbg !1293
  %2 = load i8*, i8** %pointer, align 8, !dbg !1293
  %tobool1 = icmp ne i8* %2, null, !dbg !1292
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1294

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.acpi_buffer*, %struct.acpi_buffer** %in_buffer.addr, align 8, !dbg !1295
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 0, !dbg !1296
  %4 = load i64, i64* %length, align 8, !dbg !1296
  %tobool3 = icmp ne i64 %4, 0, !dbg !1295
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1297

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1298
  br label %return, !dbg !1298

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load i8*, i8** %device_handle.addr, align 8, !dbg !1300
  %6 = load %struct.acpi_buffer*, %struct.acpi_buffer** %in_buffer.addr, align 8, !dbg !1301
  %call = call i32 @acpi_rs_validate_parameters(i8* %5, %struct.acpi_buffer* %6, %struct.acpi_namespace_node** %node) #4, !dbg !1302
  store i32 %call, i32* %status, align 4, !dbg !1303
  %7 = load i32, i32* %status, align 4, !dbg !1304
  %tobool4 = icmp ne i32 %7, 0, !dbg !1304
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1306

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %status, align 4, !dbg !1307
  store i32 %8, i32* %retval, align 4, !dbg !1307
  br label %return, !dbg !1307

if.end6:                                          ; preds = %if.end
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1309
  %10 = load %struct.acpi_buffer*, %struct.acpi_buffer** %in_buffer.addr, align 8, !dbg !1310
  %call7 = call i32 @acpi_rs_set_srs_method_data(%struct.acpi_namespace_node* %9, %struct.acpi_buffer* %10) #4, !dbg !1311
  store i32 %call7, i32* %status, align 4, !dbg !1312
  %11 = load i32, i32* %status, align 4, !dbg !1313
  store i32 %11, i32* %retval, align 4, !dbg !1313
  br label %return, !dbg !1313

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !1314
  ret i32 %12, !dbg !1314
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_set_srs_method_data(%struct.acpi_namespace_node*, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_event_resources(i8* %device_handle, %struct.acpi_buffer* %ret_buffer) #0 !dbg !1315 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca i8*, align 8
  %ret_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %device_handle, i8** %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device_handle.addr, metadata !1316, metadata !DIExpression()), !dbg !1317
  store %struct.acpi_buffer* %ret_buffer, %struct.acpi_buffer** %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %ret_buffer.addr, metadata !1318, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1320, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1322, metadata !DIExpression()), !dbg !1323
  %0 = load i8*, i8** %device_handle.addr, align 8, !dbg !1324
  %1 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1325
  %call = call i32 @acpi_rs_validate_parameters(i8* %0, %struct.acpi_buffer* %1, %struct.acpi_namespace_node** %node) #4, !dbg !1326
  store i32 %call, i32* %status, align 4, !dbg !1327
  %2 = load i32, i32* %status, align 4, !dbg !1328
  %tobool = icmp ne i32 %2, 0, !dbg !1328
  br i1 %tobool, label %if.then, label %if.end, !dbg !1330

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !1331
  store i32 %3, i32* %retval, align 4, !dbg !1331
  br label %return, !dbg !1331

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1333
  %5 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1334
  %call1 = call i32 @acpi_rs_get_aei_method_data(%struct.acpi_namespace_node* %4, %struct.acpi_buffer* %5) #4, !dbg !1335
  store i32 %call1, i32* %status, align 4, !dbg !1336
  %6 = load i32, i32* %status, align 4, !dbg !1337
  store i32 %6, i32* %retval, align 4, !dbg !1337
  br label %return, !dbg !1337

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !1338
  ret i32 %7, !dbg !1338
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_get_aei_method_data(%struct.acpi_namespace_node*, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_resource_to_address64(%struct.acpi_resource* %resource, %struct.acpi_resource_address64* %out) #0 !dbg !1339 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca %struct.acpi_resource*, align 8
  %out.addr = alloca %struct.acpi_resource_address64*, align 8
  %address16 = alloca %struct.acpi_resource_address16*, align 8
  %address32 = alloca %struct.acpi_resource_address32*, align 8
  store %struct.acpi_resource* %resource, %struct.acpi_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %resource.addr, metadata !1343, metadata !DIExpression()), !dbg !1344
  store %struct.acpi_resource_address64* %out, %struct.acpi_resource_address64** %out.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_address64** %out.addr, metadata !1345, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_address16** %address16, metadata !1347, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_address32** %address32, metadata !1349, metadata !DIExpression()), !dbg !1350
  %0 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1351
  %tobool = icmp ne %struct.acpi_resource* %0, null, !dbg !1351
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1353

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1354
  %tobool1 = icmp ne %struct.acpi_resource_address64* %1, null, !dbg !1354
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1355

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1356
  br label %return, !dbg !1356

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1358
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %2, i32 0, i32 0, !dbg !1359
  %3 = load i32, i32* %type, align 1, !dbg !1359
  switch i32 %3, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb28
    i32 13, label %sw.bb69
  ], !dbg !1360

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1361
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %4, i32 0, i32 2, !dbg !1361
  %5 = bitcast %union.acpi_resource_data* %data to i8*, !dbg !1361
  %6 = bitcast i8* %5 to %struct.acpi_resource_address16*, !dbg !1361
  store %struct.acpi_resource_address16* %6, %struct.acpi_resource_address16** %address16, align 8, !dbg !1363
  %7 = load %struct.acpi_resource_address16*, %struct.acpi_resource_address16** %address16, align 8, !dbg !1364
  %resource_type = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %7, i32 0, i32 0, !dbg !1364
  %8 = load i8, i8* %resource_type, align 1, !dbg !1364
  %9 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1364
  %resource_type2 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %9, i32 0, i32 0, !dbg !1364
  store i8 %8, i8* %resource_type2, align 1, !dbg !1364
  %10 = load %struct.acpi_resource_address16*, %struct.acpi_resource_address16** %address16, align 8, !dbg !1364
  %producer_consumer = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %10, i32 0, i32 1, !dbg !1364
  %11 = load i8, i8* %producer_consumer, align 1, !dbg !1364
  %12 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1364
  %producer_consumer3 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %12, i32 0, i32 1, !dbg !1364
  store i8 %11, i8* %producer_consumer3, align 1, !dbg !1364
  %13 = load %struct.acpi_resource_address16*, %struct.acpi_resource_address16** %address16, align 8, !dbg !1364
  %decode = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %13, i32 0, i32 2, !dbg !1364
  %14 = load i8, i8* %decode, align 1, !dbg !1364
  %15 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1364
  %decode4 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %15, i32 0, i32 2, !dbg !1364
  store i8 %14, i8* %decode4, align 1, !dbg !1364
  %16 = load %struct.acpi_resource_address16*, %struct.acpi_resource_address16** %address16, align 8, !dbg !1364
  %min_address_fixed = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %16, i32 0, i32 3, !dbg !1364
  %17 = load i8, i8* %min_address_fixed, align 1, !dbg !1364
  %18 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1364
  %min_address_fixed5 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %18, i32 0, i32 3, !dbg !1364
  store i8 %17, i8* %min_address_fixed5, align 1, !dbg !1364
  %19 = load %struct.acpi_resource_address16*, %struct.acpi_resource_address16** %address16, align 8, !dbg !1364
  %max_address_fixed = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %19, i32 0, i32 4, !dbg !1364
  %20 = load i8, i8* %max_address_fixed, align 1, !dbg !1364
  %21 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1364
  %max_address_fixed6 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %21, i32 0, i32 4, !dbg !1364
  store i8 %20, i8* %max_address_fixed6, align 1, !dbg !1364
  %22 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1364
  %info = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %22, i32 0, i32 5, !dbg !1364
  %23 = load %struct.acpi_resource_address16*, %struct.acpi_resource_address16** %address16, align 8, !dbg !1364
  %info7 = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %23, i32 0, i32 5, !dbg !1364
  %24 = bitcast %union.acpi_resource_attribute* %info to i8*, !dbg !1364
  %25 = bitcast %union.acpi_resource_attribute* %info7 to i8*, !dbg !1364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %25, i64 4, i1 false), !dbg !1364
  %26 = load %struct.acpi_resource_address16*, %struct.acpi_resource_address16** %address16, align 8, !dbg !1364
  %address = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %26, i32 0, i32 6, !dbg !1364
  %granularity = getelementptr inbounds %struct.acpi_address16_attribute, %struct.acpi_address16_attribute* %address, i32 0, i32 0, !dbg !1364
  %27 = load i16, i16* %granularity, align 1, !dbg !1364
  %conv = zext i16 %27 to i64, !dbg !1364
  %28 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1364
  %address8 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %28, i32 0, i32 6, !dbg !1364
  %granularity9 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %address8, i32 0, i32 0, !dbg !1364
  store i64 %conv, i64* %granularity9, align 1, !dbg !1364
  %29 = load %struct.acpi_resource_address16*, %struct.acpi_resource_address16** %address16, align 8, !dbg !1364
  %address10 = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %29, i32 0, i32 6, !dbg !1364
  %minimum = getelementptr inbounds %struct.acpi_address16_attribute, %struct.acpi_address16_attribute* %address10, i32 0, i32 1, !dbg !1364
  %30 = load i16, i16* %minimum, align 1, !dbg !1364
  %conv11 = zext i16 %30 to i64, !dbg !1364
  %31 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1364
  %address12 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %31, i32 0, i32 6, !dbg !1364
  %minimum13 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %address12, i32 0, i32 1, !dbg !1364
  store i64 %conv11, i64* %minimum13, align 1, !dbg !1364
  %32 = load %struct.acpi_resource_address16*, %struct.acpi_resource_address16** %address16, align 8, !dbg !1364
  %address14 = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %32, i32 0, i32 6, !dbg !1364
  %maximum = getelementptr inbounds %struct.acpi_address16_attribute, %struct.acpi_address16_attribute* %address14, i32 0, i32 2, !dbg !1364
  %33 = load i16, i16* %maximum, align 1, !dbg !1364
  %conv15 = zext i16 %33 to i64, !dbg !1364
  %34 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1364
  %address17 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %34, i32 0, i32 6, !dbg !1364
  %maximum18 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %address17, i32 0, i32 2, !dbg !1364
  store i64 %conv15, i64* %maximum18, align 1, !dbg !1364
  %35 = load %struct.acpi_resource_address16*, %struct.acpi_resource_address16** %address16, align 8, !dbg !1364
  %address19 = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %35, i32 0, i32 6, !dbg !1364
  %translation_offset = getelementptr inbounds %struct.acpi_address16_attribute, %struct.acpi_address16_attribute* %address19, i32 0, i32 3, !dbg !1364
  %36 = load i16, i16* %translation_offset, align 1, !dbg !1364
  %conv20 = zext i16 %36 to i64, !dbg !1364
  %37 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1364
  %address21 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %37, i32 0, i32 6, !dbg !1364
  %translation_offset22 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %address21, i32 0, i32 3, !dbg !1364
  store i64 %conv20, i64* %translation_offset22, align 1, !dbg !1364
  %38 = load %struct.acpi_resource_address16*, %struct.acpi_resource_address16** %address16, align 8, !dbg !1364
  %address23 = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %38, i32 0, i32 6, !dbg !1364
  %address_length = getelementptr inbounds %struct.acpi_address16_attribute, %struct.acpi_address16_attribute* %address23, i32 0, i32 4, !dbg !1364
  %39 = load i16, i16* %address_length, align 1, !dbg !1364
  %conv24 = zext i16 %39 to i64, !dbg !1364
  %40 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1364
  %address25 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %40, i32 0, i32 6, !dbg !1364
  %address_length26 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %address25, i32 0, i32 4, !dbg !1364
  store i64 %conv24, i64* %address_length26, align 1, !dbg !1364
  %41 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1364
  %resource_source = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %41, i32 0, i32 7, !dbg !1364
  %42 = load %struct.acpi_resource_address16*, %struct.acpi_resource_address16** %address16, align 8, !dbg !1364
  %resource_source27 = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %42, i32 0, i32 7, !dbg !1364
  %43 = bitcast %struct.acpi_resource_source* %resource_source to i8*, !dbg !1364
  %44 = bitcast %struct.acpi_resource_source* %resource_source27 to i8*, !dbg !1364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %44, i64 11, i1 false), !dbg !1364
  br label %sw.epilog, !dbg !1365

sw.bb28:                                          ; preds = %if.end
  %45 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1366
  %data29 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %45, i32 0, i32 2, !dbg !1366
  %46 = bitcast %union.acpi_resource_data* %data29 to i8*, !dbg !1366
  %47 = bitcast i8* %46 to %struct.acpi_resource_address32*, !dbg !1366
  store %struct.acpi_resource_address32* %47, %struct.acpi_resource_address32** %address32, align 8, !dbg !1367
  %48 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %address32, align 8, !dbg !1368
  %resource_type30 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %48, i32 0, i32 0, !dbg !1368
  %49 = load i8, i8* %resource_type30, align 1, !dbg !1368
  %50 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1368
  %resource_type31 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %50, i32 0, i32 0, !dbg !1368
  store i8 %49, i8* %resource_type31, align 1, !dbg !1368
  %51 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %address32, align 8, !dbg !1368
  %producer_consumer32 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %51, i32 0, i32 1, !dbg !1368
  %52 = load i8, i8* %producer_consumer32, align 1, !dbg !1368
  %53 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1368
  %producer_consumer33 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %53, i32 0, i32 1, !dbg !1368
  store i8 %52, i8* %producer_consumer33, align 1, !dbg !1368
  %54 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %address32, align 8, !dbg !1368
  %decode34 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %54, i32 0, i32 2, !dbg !1368
  %55 = load i8, i8* %decode34, align 1, !dbg !1368
  %56 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1368
  %decode35 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %56, i32 0, i32 2, !dbg !1368
  store i8 %55, i8* %decode35, align 1, !dbg !1368
  %57 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %address32, align 8, !dbg !1368
  %min_address_fixed36 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %57, i32 0, i32 3, !dbg !1368
  %58 = load i8, i8* %min_address_fixed36, align 1, !dbg !1368
  %59 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1368
  %min_address_fixed37 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %59, i32 0, i32 3, !dbg !1368
  store i8 %58, i8* %min_address_fixed37, align 1, !dbg !1368
  %60 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %address32, align 8, !dbg !1368
  %max_address_fixed38 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %60, i32 0, i32 4, !dbg !1368
  %61 = load i8, i8* %max_address_fixed38, align 1, !dbg !1368
  %62 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1368
  %max_address_fixed39 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %62, i32 0, i32 4, !dbg !1368
  store i8 %61, i8* %max_address_fixed39, align 1, !dbg !1368
  %63 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1368
  %info40 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %63, i32 0, i32 5, !dbg !1368
  %64 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %address32, align 8, !dbg !1368
  %info41 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %64, i32 0, i32 5, !dbg !1368
  %65 = bitcast %union.acpi_resource_attribute* %info40 to i8*, !dbg !1368
  %66 = bitcast %union.acpi_resource_attribute* %info41 to i8*, !dbg !1368
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %65, i8* align 1 %66, i64 4, i1 false), !dbg !1368
  %67 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %address32, align 8, !dbg !1368
  %address42 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %67, i32 0, i32 6, !dbg !1368
  %granularity43 = getelementptr inbounds %struct.acpi_address32_attribute, %struct.acpi_address32_attribute* %address42, i32 0, i32 0, !dbg !1368
  %68 = load i32, i32* %granularity43, align 1, !dbg !1368
  %conv44 = zext i32 %68 to i64, !dbg !1368
  %69 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1368
  %address45 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %69, i32 0, i32 6, !dbg !1368
  %granularity46 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %address45, i32 0, i32 0, !dbg !1368
  store i64 %conv44, i64* %granularity46, align 1, !dbg !1368
  %70 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %address32, align 8, !dbg !1368
  %address47 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %70, i32 0, i32 6, !dbg !1368
  %minimum48 = getelementptr inbounds %struct.acpi_address32_attribute, %struct.acpi_address32_attribute* %address47, i32 0, i32 1, !dbg !1368
  %71 = load i32, i32* %minimum48, align 1, !dbg !1368
  %conv49 = zext i32 %71 to i64, !dbg !1368
  %72 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1368
  %address50 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %72, i32 0, i32 6, !dbg !1368
  %minimum51 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %address50, i32 0, i32 1, !dbg !1368
  store i64 %conv49, i64* %minimum51, align 1, !dbg !1368
  %73 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %address32, align 8, !dbg !1368
  %address52 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %73, i32 0, i32 6, !dbg !1368
  %maximum53 = getelementptr inbounds %struct.acpi_address32_attribute, %struct.acpi_address32_attribute* %address52, i32 0, i32 2, !dbg !1368
  %74 = load i32, i32* %maximum53, align 1, !dbg !1368
  %conv54 = zext i32 %74 to i64, !dbg !1368
  %75 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1368
  %address55 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %75, i32 0, i32 6, !dbg !1368
  %maximum56 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %address55, i32 0, i32 2, !dbg !1368
  store i64 %conv54, i64* %maximum56, align 1, !dbg !1368
  %76 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %address32, align 8, !dbg !1368
  %address57 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %76, i32 0, i32 6, !dbg !1368
  %translation_offset58 = getelementptr inbounds %struct.acpi_address32_attribute, %struct.acpi_address32_attribute* %address57, i32 0, i32 3, !dbg !1368
  %77 = load i32, i32* %translation_offset58, align 1, !dbg !1368
  %conv59 = zext i32 %77 to i64, !dbg !1368
  %78 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1368
  %address60 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %78, i32 0, i32 6, !dbg !1368
  %translation_offset61 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %address60, i32 0, i32 3, !dbg !1368
  store i64 %conv59, i64* %translation_offset61, align 1, !dbg !1368
  %79 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %address32, align 8, !dbg !1368
  %address62 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %79, i32 0, i32 6, !dbg !1368
  %address_length63 = getelementptr inbounds %struct.acpi_address32_attribute, %struct.acpi_address32_attribute* %address62, i32 0, i32 4, !dbg !1368
  %80 = load i32, i32* %address_length63, align 1, !dbg !1368
  %conv64 = zext i32 %80 to i64, !dbg !1368
  %81 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1368
  %address65 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %81, i32 0, i32 6, !dbg !1368
  %address_length66 = getelementptr inbounds %struct.acpi_address64_attribute, %struct.acpi_address64_attribute* %address65, i32 0, i32 4, !dbg !1368
  store i64 %conv64, i64* %address_length66, align 1, !dbg !1368
  %82 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1368
  %resource_source67 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %82, i32 0, i32 7, !dbg !1368
  %83 = load %struct.acpi_resource_address32*, %struct.acpi_resource_address32** %address32, align 8, !dbg !1368
  %resource_source68 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %83, i32 0, i32 7, !dbg !1368
  %84 = bitcast %struct.acpi_resource_source* %resource_source67 to i8*, !dbg !1368
  %85 = bitcast %struct.acpi_resource_source* %resource_source68 to i8*, !dbg !1368
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %84, i8* align 1 %85, i64 11, i1 false), !dbg !1368
  br label %sw.epilog, !dbg !1369

sw.bb69:                                          ; preds = %if.end
  %86 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %out.addr, align 8, !dbg !1370
  %87 = bitcast %struct.acpi_resource_address64* %86 to i8*, !dbg !1371
  %88 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1372
  %data70 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %88, i32 0, i32 2, !dbg !1373
  %89 = bitcast %union.acpi_resource_data* %data70 to i8*, !dbg !1371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %87, i8* align 1 %89, i64 60, i1 false), !dbg !1371
  br label %sw.epilog, !dbg !1374

sw.default:                                       ; preds = %if.end
  store i32 4097, i32* %retval, align 4, !dbg !1375
  br label %return, !dbg !1375

sw.epilog:                                        ; preds = %sw.bb69, %sw.bb28, %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !1376
  br label %return, !dbg !1376

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %90 = load i32, i32* %retval, align 4, !dbg !1377
  ret i32 %90, !dbg !1377
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_vendor_resource(i8* %device_handle, i8* %name, %struct.acpi_vendor_uuid* %uuid, %struct.acpi_buffer* %ret_buffer) #0 !dbg !1378 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %uuid.addr = alloca %struct.acpi_vendor_uuid*, align 8
  %ret_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %info = alloca %struct.acpi_vendor_walk_info, align 8
  %status = alloca i32, align 4
  store i8* %device_handle, i8** %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device_handle.addr, metadata !1386, metadata !DIExpression()), !dbg !1387
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1388, metadata !DIExpression()), !dbg !1389
  store %struct.acpi_vendor_uuid* %uuid, %struct.acpi_vendor_uuid** %uuid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_vendor_uuid** %uuid.addr, metadata !1390, metadata !DIExpression()), !dbg !1391
  store %struct.acpi_buffer* %ret_buffer, %struct.acpi_buffer** %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %ret_buffer.addr, metadata !1392, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.declare(metadata %struct.acpi_vendor_walk_info* %info, metadata !1394, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1402, metadata !DIExpression()), !dbg !1403
  %0 = load %struct.acpi_vendor_uuid*, %struct.acpi_vendor_uuid** %uuid.addr, align 8, !dbg !1404
  %tobool = icmp ne %struct.acpi_vendor_uuid* %0, null, !dbg !1404
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1406

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1407
  %tobool1 = icmp ne %struct.acpi_buffer* %1, null, !dbg !1407
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1408

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1409
  br label %return, !dbg !1409

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.acpi_vendor_uuid*, %struct.acpi_vendor_uuid** %uuid.addr, align 8, !dbg !1411
  %uuid2 = getelementptr inbounds %struct.acpi_vendor_walk_info, %struct.acpi_vendor_walk_info* %info, i32 0, i32 0, !dbg !1412
  store %struct.acpi_vendor_uuid* %2, %struct.acpi_vendor_uuid** %uuid2, align 8, !dbg !1413
  %3 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1414
  %buffer = getelementptr inbounds %struct.acpi_vendor_walk_info, %struct.acpi_vendor_walk_info* %info, i32 0, i32 1, !dbg !1415
  store %struct.acpi_buffer* %3, %struct.acpi_buffer** %buffer, align 8, !dbg !1416
  %status3 = getelementptr inbounds %struct.acpi_vendor_walk_info, %struct.acpi_vendor_walk_info* %info, i32 0, i32 2, !dbg !1417
  store i32 6, i32* %status3, align 8, !dbg !1418
  %4 = load i8*, i8** %device_handle.addr, align 8, !dbg !1419
  %5 = load i8*, i8** %name.addr, align 8, !dbg !1420
  %6 = bitcast %struct.acpi_vendor_walk_info* %info to i8*, !dbg !1421
  %call = call i32 @acpi_walk_resources(i8* %4, i8* %5, i32 (%struct.acpi_resource*, i8*)* @acpi_rs_match_vendor_resource, i8* %6) #4, !dbg !1422
  store i32 %call, i32* %status, align 4, !dbg !1423
  %7 = load i32, i32* %status, align 4, !dbg !1424
  %tobool4 = icmp ne i32 %7, 0, !dbg !1424
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1426

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %status, align 4, !dbg !1427
  store i32 %8, i32* %retval, align 4, !dbg !1429
  br label %return, !dbg !1429

if.end6:                                          ; preds = %if.end
  %status7 = getelementptr inbounds %struct.acpi_vendor_walk_info, %struct.acpi_vendor_walk_info* %info, i32 0, i32 2, !dbg !1430
  %9 = load i32, i32* %status7, align 8, !dbg !1430
  store i32 %9, i32* %retval, align 4, !dbg !1431
  br label %return, !dbg !1431

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !1432
  ret i32 %10, !dbg !1432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_walk_resources(i8* %device_handle, i8* %name, i32 (%struct.acpi_resource*, i8*)* %user_function, i8* %context) #0 !dbg !1433 {
entry:
  %retval = alloca i32, align 4
  %device_handle.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %user_function.addr = alloca i32 (%struct.acpi_resource*, i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  store i8* %device_handle, i8** %device_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device_handle.addr, metadata !1441, metadata !DIExpression()), !dbg !1442
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1443, metadata !DIExpression()), !dbg !1444
  store i32 (%struct.acpi_resource*, i8*)* %user_function, i32 (%struct.acpi_resource*, i8*)** %user_function.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.acpi_resource*, i8*)** %user_function.addr, metadata !1445, metadata !DIExpression()), !dbg !1446
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1447, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1449, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !1451, metadata !DIExpression()), !dbg !1452
  %0 = load i8*, i8** %device_handle.addr, align 8, !dbg !1453
  %tobool = icmp ne i8* %0, null, !dbg !1453
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1455

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32 (%struct.acpi_resource*, i8*)*, i32 (%struct.acpi_resource*, i8*)** %user_function.addr, align 8, !dbg !1456
  %tobool1 = icmp ne i32 (%struct.acpi_resource*, i8*)* %1, null, !dbg !1456
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1457

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %name.addr, align 8, !dbg !1458
  %tobool3 = icmp ne i8* %2, null, !dbg !1458
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !1459

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i8*, i8** %name.addr, align 8, !dbg !1460
  %4 = bitcast i8* %3 to i32*, !dbg !1460
  %5 = load i32, i32* %4, align 4, !dbg !1460
  %6 = load i32, i32* bitcast ([5 x i8]* @.str to i32*), align 4, !dbg !1460
  %cmp = icmp eq i32 %5, %6, !dbg !1460
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !1461

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %7 = load i8*, i8** %name.addr, align 8, !dbg !1462
  %8 = bitcast i8* %7 to i32*, !dbg !1462
  %9 = load i32, i32* %8, align 4, !dbg !1462
  %10 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 4, !dbg !1462
  %cmp5 = icmp eq i32 %9, %10, !dbg !1462
  br i1 %cmp5, label %if.end, label %land.lhs.true6, !dbg !1463

land.lhs.true6:                                   ; preds = %land.lhs.true
  %11 = load i8*, i8** %name.addr, align 8, !dbg !1464
  %12 = bitcast i8* %11 to i32*, !dbg !1464
  %13 = load i32, i32* %12, align 4, !dbg !1464
  %14 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 4, !dbg !1464
  %cmp7 = icmp eq i32 %13, %14, !dbg !1464
  br i1 %cmp7, label %if.end, label %land.lhs.true8, !dbg !1465

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %15 = load i8*, i8** %name.addr, align 8, !dbg !1466
  %16 = bitcast i8* %15 to i32*, !dbg !1466
  %17 = load i32, i32* %16, align 4, !dbg !1466
  %18 = load i32, i32* bitcast ([5 x i8]* @.str.3 to i32*), align 4, !dbg !1466
  %cmp9 = icmp eq i32 %17, %18, !dbg !1466
  br i1 %cmp9, label %if.end, label %if.then, !dbg !1467

if.then:                                          ; preds = %land.lhs.true8, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1468
  br label %return, !dbg !1468

if.end:                                           ; preds = %land.lhs.true8, %land.lhs.true6, %land.lhs.true, %lor.lhs.false4
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !1470
  store i64 -2, i64* %length, align 8, !dbg !1471
  %19 = load i8*, i8** %device_handle.addr, align 8, !dbg !1472
  %20 = load i8*, i8** %name.addr, align 8, !dbg !1473
  %call = call i32 @acpi_rs_get_method_data(i8* %19, i8* %20, %struct.acpi_buffer* %buffer) #4, !dbg !1474
  store i32 %call, i32* %status, align 4, !dbg !1475
  %21 = load i32, i32* %status, align 4, !dbg !1476
  %tobool10 = icmp ne i32 %21, 0, !dbg !1476
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1478

if.then11:                                        ; preds = %if.end
  %22 = load i32, i32* %status, align 4, !dbg !1479
  store i32 %22, i32* %retval, align 4, !dbg !1479
  br label %return, !dbg !1479

if.end12:                                         ; preds = %if.end
  %23 = load i32 (%struct.acpi_resource*, i8*)*, i32 (%struct.acpi_resource*, i8*)** %user_function.addr, align 8, !dbg !1481
  %24 = load i8*, i8** %context.addr, align 8, !dbg !1482
  %call13 = call i32 @acpi_walk_resource_buffer(%struct.acpi_buffer* %buffer, i32 (%struct.acpi_resource*, i8*)* %23, i8* %24) #4, !dbg !1483
  store i32 %call13, i32* %status, align 4, !dbg !1484
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !1485
  %25 = load i8*, i8** %pointer, align 8, !dbg !1485
  call void @acpi_os_free(i8* %25) #4, !dbg !1485
  %26 = load i32, i32* %status, align 4, !dbg !1486
  store i32 %26, i32* %retval, align 4, !dbg !1486
  br label %return, !dbg !1486

return:                                           ; preds = %if.end12, %if.then11, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !1487
  ret i32 %27, !dbg !1487
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_rs_match_vendor_resource(%struct.acpi_resource* %resource, i8* %context) #0 !dbg !1488 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca %struct.acpi_resource*, align 8
  %context.addr = alloca i8*, align 8
  %info = alloca %struct.acpi_vendor_walk_info*, align 8
  %vendor = alloca %struct.acpi_resource_vendor_typed*, align 8
  %buffer = alloca %struct.acpi_buffer*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_resource* %resource, %struct.acpi_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %resource.addr, metadata !1489, metadata !DIExpression()), !dbg !1490
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1491, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.declare(metadata %struct.acpi_vendor_walk_info** %info, metadata !1493, metadata !DIExpression()), !dbg !1495
  %0 = load i8*, i8** %context.addr, align 8, !dbg !1496
  %1 = bitcast i8* %0 to %struct.acpi_vendor_walk_info*, !dbg !1496
  store %struct.acpi_vendor_walk_info* %1, %struct.acpi_vendor_walk_info** %info, align 8, !dbg !1495
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_vendor_typed** %vendor, metadata !1497, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %buffer, metadata !1500, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1502, metadata !DIExpression()), !dbg !1503
  %2 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1504
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %2, i32 0, i32 0, !dbg !1506
  %3 = load i32, i32* %type, align 1, !dbg !1506
  %cmp = icmp ne i32 %3, 6, !dbg !1507
  br i1 %cmp, label %if.then, label %if.end, !dbg !1508

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1509
  br label %return, !dbg !1509

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1511
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %4, i32 0, i32 2, !dbg !1512
  %vendor_typed = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_vendor_typed*, !dbg !1513
  store %struct.acpi_resource_vendor_typed* %vendor_typed, %struct.acpi_resource_vendor_typed** %vendor, align 8, !dbg !1514
  %5 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %vendor, align 8, !dbg !1515
  %byte_length = getelementptr inbounds %struct.acpi_resource_vendor_typed, %struct.acpi_resource_vendor_typed* %5, i32 0, i32 0, !dbg !1517
  %6 = load i16, i16* %byte_length, align 1, !dbg !1517
  %conv = zext i16 %6 to i32, !dbg !1515
  %cmp1 = icmp slt i32 %conv, 17, !dbg !1518
  br i1 %cmp1, label %if.then12, label %lor.lhs.false, !dbg !1519

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %vendor, align 8, !dbg !1520
  %uuid_subtype = getelementptr inbounds %struct.acpi_resource_vendor_typed, %struct.acpi_resource_vendor_typed* %7, i32 0, i32 1, !dbg !1521
  %8 = load i8, i8* %uuid_subtype, align 1, !dbg !1521
  %conv3 = zext i8 %8 to i32, !dbg !1520
  %9 = load %struct.acpi_vendor_walk_info*, %struct.acpi_vendor_walk_info** %info, align 8, !dbg !1522
  %uuid = getelementptr inbounds %struct.acpi_vendor_walk_info, %struct.acpi_vendor_walk_info* %9, i32 0, i32 0, !dbg !1523
  %10 = load %struct.acpi_vendor_uuid*, %struct.acpi_vendor_uuid** %uuid, align 8, !dbg !1523
  %subtype = getelementptr inbounds %struct.acpi_vendor_uuid, %struct.acpi_vendor_uuid* %10, i32 0, i32 0, !dbg !1524
  %11 = load i8, i8* %subtype, align 1, !dbg !1524
  %conv4 = zext i8 %11 to i32, !dbg !1522
  %cmp5 = icmp ne i32 %conv3, %conv4, !dbg !1525
  br i1 %cmp5, label %if.then12, label %lor.lhs.false7, !dbg !1526

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %12 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %vendor, align 8, !dbg !1527
  %uuid8 = getelementptr inbounds %struct.acpi_resource_vendor_typed, %struct.acpi_resource_vendor_typed* %12, i32 0, i32 2, !dbg !1528
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %uuid8, i64 0, i64 0, !dbg !1527
  %13 = load %struct.acpi_vendor_walk_info*, %struct.acpi_vendor_walk_info** %info, align 8, !dbg !1529
  %uuid9 = getelementptr inbounds %struct.acpi_vendor_walk_info, %struct.acpi_vendor_walk_info* %13, i32 0, i32 0, !dbg !1530
  %14 = load %struct.acpi_vendor_uuid*, %struct.acpi_vendor_uuid** %uuid9, align 8, !dbg !1530
  %data10 = getelementptr inbounds %struct.acpi_vendor_uuid, %struct.acpi_vendor_uuid* %14, i32 0, i32 1, !dbg !1531
  %arraydecay11 = getelementptr inbounds [16 x i8], [16 x i8]* %data10, i64 0, i64 0, !dbg !1529
  %call = call i32 @memcmp(i8* %arraydecay, i8* %arraydecay11, i64 16) #4, !dbg !1532
  %tobool = icmp ne i32 %call, 0, !dbg !1532
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !1533

if.then12:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  store i32 0, i32* %retval, align 4, !dbg !1534
  br label %return, !dbg !1534

if.end13:                                         ; preds = %lor.lhs.false7
  %15 = load %struct.acpi_vendor_walk_info*, %struct.acpi_vendor_walk_info** %info, align 8, !dbg !1536
  %buffer14 = getelementptr inbounds %struct.acpi_vendor_walk_info, %struct.acpi_vendor_walk_info* %15, i32 0, i32 1, !dbg !1537
  %16 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer14, align 8, !dbg !1537
  store %struct.acpi_buffer* %16, %struct.acpi_buffer** %buffer, align 8, !dbg !1538
  %17 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer, align 8, !dbg !1539
  %18 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1540
  %length = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %18, i32 0, i32 1, !dbg !1541
  %19 = load i32, i32* %length, align 1, !dbg !1541
  %conv15 = zext i32 %19 to i64, !dbg !1540
  %call16 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %17, i64 %conv15) #4, !dbg !1542
  store i32 %call16, i32* %status, align 4, !dbg !1543
  %20 = load i32, i32* %status, align 4, !dbg !1544
  %tobool17 = icmp ne i32 %20, 0, !dbg !1544
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1546

if.then18:                                        ; preds = %if.end13
  %21 = load i32, i32* %status, align 4, !dbg !1547
  store i32 %21, i32* %retval, align 4, !dbg !1549
  br label %return, !dbg !1549

if.end19:                                         ; preds = %if.end13
  %22 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer, align 8, !dbg !1550
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %22, i32 0, i32 1, !dbg !1551
  %23 = load i8*, i8** %pointer, align 8, !dbg !1551
  %24 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1552
  %25 = bitcast %struct.acpi_resource* %24 to i8*, !dbg !1553
  %26 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1554
  %length20 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %26, i32 0, i32 1, !dbg !1555
  %27 = load i32, i32* %length20, align 1, !dbg !1555
  %conv21 = zext i32 %27 to i64, !dbg !1554
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %25, i64 %conv21, i1 false), !dbg !1553
  %28 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !1556
  %length22 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %28, i32 0, i32 1, !dbg !1557
  %29 = load i32, i32* %length22, align 1, !dbg !1557
  %conv23 = zext i32 %29 to i64, !dbg !1556
  %30 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer, align 8, !dbg !1558
  %length24 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %30, i32 0, i32 0, !dbg !1559
  store i64 %conv23, i64* %length24, align 8, !dbg !1560
  %31 = load %struct.acpi_vendor_walk_info*, %struct.acpi_vendor_walk_info** %info, align 8, !dbg !1561
  %status25 = getelementptr inbounds %struct.acpi_vendor_walk_info, %struct.acpi_vendor_walk_info* %31, i32 0, i32 2, !dbg !1562
  store i32 0, i32* %status25, align 8, !dbg !1563
  store i32 16387, i32* %retval, align 4, !dbg !1564
  br label %return, !dbg !1564

return:                                           ; preds = %if.end19, %if.then18, %if.then12, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !1565
  ret i32 %32, !dbg !1565
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_walk_resource_buffer(%struct.acpi_buffer* %buffer, i32 (%struct.acpi_resource*, i8*)* %user_function, i8* %context) #0 !dbg !1566 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.acpi_buffer*, align 8
  %user_function.addr = alloca i32 (%struct.acpi_resource*, i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %resource = alloca %struct.acpi_resource*, align 8
  %resource_end = alloca %struct.acpi_resource*, align 8
  store %struct.acpi_buffer* %buffer, %struct.acpi_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %buffer.addr, metadata !1569, metadata !DIExpression()), !dbg !1570
  store i32 (%struct.acpi_resource*, i8*)* %user_function, i32 (%struct.acpi_resource*, i8*)** %user_function.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.acpi_resource*, i8*)** %user_function.addr, metadata !1571, metadata !DIExpression()), !dbg !1572
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1573, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1575, metadata !DIExpression()), !dbg !1576
  store i32 0, i32* %status, align 4, !dbg !1576
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %resource, metadata !1577, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %resource_end, metadata !1579, metadata !DIExpression()), !dbg !1580
  %0 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !1581
  %tobool = icmp ne %struct.acpi_buffer* %0, null, !dbg !1581
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1583

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !1584
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %1, i32 0, i32 1, !dbg !1585
  %2 = load i8*, i8** %pointer, align 8, !dbg !1585
  %tobool1 = icmp ne i8* %2, null, !dbg !1584
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1586

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32 (%struct.acpi_resource*, i8*)*, i32 (%struct.acpi_resource*, i8*)** %user_function.addr, align 8, !dbg !1587
  %tobool3 = icmp ne i32 (%struct.acpi_resource*, i8*)* %3, null, !dbg !1587
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1588

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1589
  br label %return, !dbg !1589

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !1591
  %pointer4 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1, !dbg !1591
  %5 = load i8*, i8** %pointer4, align 8, !dbg !1591
  %6 = bitcast i8* %5 to %struct.acpi_resource*, !dbg !1591
  store %struct.acpi_resource* %6, %struct.acpi_resource** %resource, align 8, !dbg !1592
  %7 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !1593
  %pointer5 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1, !dbg !1593
  %8 = load i8*, i8** %pointer5, align 8, !dbg !1593
  %9 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !1593
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0, !dbg !1593
  %10 = load i64, i64* %length, align 8, !dbg !1593
  %add.ptr = getelementptr i8, i8* %8, i64 %10, !dbg !1593
  %11 = bitcast i8* %add.ptr to %struct.acpi_resource*, !dbg !1593
  store %struct.acpi_resource* %11, %struct.acpi_resource** %resource_end, align 8, !dbg !1594
  br label %while.cond, !dbg !1595

while.cond:                                       ; preds = %if.end22, %if.end
  %12 = load %struct.acpi_resource*, %struct.acpi_resource** %resource, align 8, !dbg !1596
  %13 = load %struct.acpi_resource*, %struct.acpi_resource** %resource_end, align 8, !dbg !1597
  %cmp = icmp ult %struct.acpi_resource* %12, %13, !dbg !1598
  br i1 %cmp, label %while.body, label %while.end, !dbg !1595

while.body:                                       ; preds = %while.cond
  %14 = load %struct.acpi_resource*, %struct.acpi_resource** %resource, align 8, !dbg !1599
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %14, i32 0, i32 0, !dbg !1602
  %15 = load i32, i32* %type, align 1, !dbg !1602
  %cmp6 = icmp ugt i32 %15, 24, !dbg !1603
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1604

if.then7:                                         ; preds = %while.body
  store i32 12311, i32* %status, align 4, !dbg !1605
  br label %while.end, !dbg !1607

if.end8:                                          ; preds = %while.body
  %16 = load %struct.acpi_resource*, %struct.acpi_resource** %resource, align 8, !dbg !1608
  %length9 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %16, i32 0, i32 1, !dbg !1610
  %17 = load i32, i32* %length9, align 1, !dbg !1610
  %tobool10 = icmp ne i32 %17, 0, !dbg !1608
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1611

if.then11:                                        ; preds = %if.end8
  store i32 12319, i32* %retval, align 4, !dbg !1612
  br label %return, !dbg !1612

if.end12:                                         ; preds = %if.end8
  %18 = load i32 (%struct.acpi_resource*, i8*)*, i32 (%struct.acpi_resource*, i8*)** %user_function.addr, align 8, !dbg !1614
  %19 = load %struct.acpi_resource*, %struct.acpi_resource** %resource, align 8, !dbg !1615
  %20 = load i8*, i8** %context.addr, align 8, !dbg !1616
  %call = call i32 %18(%struct.acpi_resource* %19, i8* %20) #4, !dbg !1614
  store i32 %call, i32* %status, align 4, !dbg !1617
  %21 = load i32, i32* %status, align 4, !dbg !1618
  %tobool13 = icmp ne i32 %21, 0, !dbg !1618
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !1620

if.then14:                                        ; preds = %if.end12
  %22 = load i32, i32* %status, align 4, !dbg !1621
  %cmp15 = icmp eq i32 %22, 16387, !dbg !1624
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1625

if.then16:                                        ; preds = %if.then14
  store i32 0, i32* %status, align 4, !dbg !1626
  br label %if.end17, !dbg !1628

if.end17:                                         ; preds = %if.then16, %if.then14
  br label %while.end, !dbg !1629

if.end18:                                         ; preds = %if.end12
  %23 = load %struct.acpi_resource*, %struct.acpi_resource** %resource, align 8, !dbg !1630
  %type19 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %23, i32 0, i32 0, !dbg !1632
  %24 = load i32, i32* %type19, align 1, !dbg !1632
  %cmp20 = icmp eq i32 %24, 7, !dbg !1633
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !1634

if.then21:                                        ; preds = %if.end18
  br label %while.end, !dbg !1635

if.end22:                                         ; preds = %if.end18
  %25 = load %struct.acpi_resource*, %struct.acpi_resource** %resource, align 8, !dbg !1637
  %26 = bitcast %struct.acpi_resource* %25 to i8*, !dbg !1637
  %27 = load %struct.acpi_resource*, %struct.acpi_resource** %resource, align 8, !dbg !1637
  %length23 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %27, i32 0, i32 1, !dbg !1637
  %28 = load i32, i32* %length23, align 1, !dbg !1637
  %conv = zext i32 %28 to i64, !dbg !1637
  %add.ptr24 = getelementptr i8, i8* %26, i64 %conv, !dbg !1637
  %29 = bitcast i8* %add.ptr24 to %struct.acpi_resource*, !dbg !1637
  store %struct.acpi_resource* %29, %struct.acpi_resource** %resource, align 8, !dbg !1638
  br label %while.cond, !dbg !1595, !llvm.loop !1639

while.end:                                        ; preds = %if.then21, %if.end17, %if.then7, %while.cond
  %30 = load i32, i32* %status, align 4, !dbg !1641
  store i32 %30, i32* %retval, align 4, !dbg !1641
  br label %return, !dbg !1641

return:                                           ; preds = %while.end, %if.then11, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !1642
  ret i32 %31, !dbg !1642
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_get_method_data(i8*, i8*, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1643 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1647, metadata !DIExpression()), !dbg !1648
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1649
  call void @kfree(i8* %0) #4, !dbg !1650
  ret void, !dbg !1651
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_validate_buffer(%struct.acpi_buffer*) #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer*, i64) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!394, !395, !396, !397}
!llvm.ident = !{!398}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/rsxface.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !11, !60, !61, !79, !249, !392, !393}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !5, line: 421, baseType: !6)
!5 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !13, line: 306, size: 240, elements: !14)
!13 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !19, !20, !21, !22, !23, !41, !52}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !12, file: !13, line: 307, baseType: !16, size: 8)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !18)
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !12, file: !13, line: 307, baseType: !16, size: 8, offset: 8)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !12, file: !13, line: 307, baseType: !16, size: 8, offset: 16)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !12, file: !13, line: 307, baseType: !16, size: 8, offset: 24)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !12, file: !13, line: 307, baseType: !16, size: 8, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !12, file: !13, line: 307, baseType: !24, size: 32, offset: 40)
!24 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !13, line: 249, size: 32, elements: !25)
!25 = !{!26, !33, !40}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !24, file: !13, line: 250, baseType: !27, size: 32)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !13, line: 235, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !27, file: !13, line: 236, baseType: !16, size: 8)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !27, file: !13, line: 237, baseType: !16, size: 8, offset: 8)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !27, file: !13, line: 238, baseType: !16, size: 8, offset: 16)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !27, file: !13, line: 239, baseType: !16, size: 8, offset: 24)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !24, file: !13, line: 251, baseType: !34, size: 32)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !13, line: 242, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !34, file: !13, line: 243, baseType: !16, size: 8)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !34, file: !13, line: 244, baseType: !16, size: 8, offset: 8)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !34, file: !13, line: 245, baseType: !16, size: 8, offset: 16)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !34, file: !13, line: 246, baseType: !16, size: 8, offset: 24)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !24, file: !13, line: 255, baseType: !16, size: 8)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !12, file: !13, line: 307, baseType: !42, size: 80, offset: 72)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !13, line: 279, size: 80, elements: !43)
!43 = !{!44, !48, !49, !50, !51}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !42, file: !13, line: 280, baseType: !45, size: 16)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !42, file: !13, line: 281, baseType: !45, size: 16, offset: 16)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !42, file: !13, line: 282, baseType: !45, size: 16, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !42, file: !13, line: 283, baseType: !45, size: 16, offset: 48)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !42, file: !13, line: 284, baseType: !45, size: 16, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !12, file: !13, line: 308, baseType: !53, size: 88, offset: 152)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !13, line: 263, size: 88, elements: !54)
!54 = !{!55, !56, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !53, file: !13, line: 264, baseType: !16, size: 8)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !53, file: !13, line: 265, baseType: !45, size: 16, offset: 8)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !53, file: !13, line: 266, baseType: !58, size: 64, offset: 24)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !13, line: 311, size: 320, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69, !70, !78}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !62, file: !13, line: 312, baseType: !16, size: 8)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !62, file: !13, line: 312, baseType: !16, size: 8, offset: 8)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !62, file: !13, line: 312, baseType: !16, size: 8, offset: 16)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !62, file: !13, line: 312, baseType: !16, size: 8, offset: 24)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !62, file: !13, line: 312, baseType: !16, size: 8, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !62, file: !13, line: 312, baseType: !24, size: 32, offset: 40)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !62, file: !13, line: 312, baseType: !71, size: 160, offset: 72)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !13, line: 287, size: 160, elements: !72)
!72 = !{!73, !74, !75, !76, !77}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !71, file: !13, line: 288, baseType: !6, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !71, file: !13, line: 289, baseType: !6, size: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !71, file: !13, line: 290, baseType: !6, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !71, file: !13, line: 291, baseType: !6, size: 32, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !71, file: !13, line: 292, baseType: !6, size: 32, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !62, file: !13, line: 313, baseType: !53, size: 88, offset: 232)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !13, line: 651, size: 544, elements: !81)
!81 = !{!82, !83, !84}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !13, line: 652, baseType: !6, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !13, line: 653, baseType: !6, size: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !80, file: !13, line: 654, baseType: !85, size: 480, offset: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !13, line: 614, size: 480, elements: !86)
!86 = !{!87, !100, !108, !114, !122, !127, !133, !138, !148, !152, !160, !168, !174, !175, !176, !197, !209, !221, !229, !250, !266, !286, !308, !321, !333, !346, !360, !371, !383}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !85, file: !13, line: 615, baseType: !88, size: 56)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !13, line: 138, size: 56, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !96}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !88, file: !13, line: 139, baseType: !16, size: 8)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !88, file: !13, line: 140, baseType: !16, size: 8, offset: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !88, file: !13, line: 141, baseType: !16, size: 8, offset: 16)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !88, file: !13, line: 142, baseType: !16, size: 8, offset: 24)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !88, file: !13, line: 143, baseType: !16, size: 8, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !88, file: !13, line: 144, baseType: !16, size: 8, offset: 40)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !88, file: !13, line: 145, baseType: !97, size: 8, offset: 48)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 1)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !85, file: !13, line: 616, baseType: !101, size: 40)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !13, line: 148, size: 40, elements: !102)
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !13, line: 149, baseType: !16, size: 8)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !101, file: !13, line: 150, baseType: !16, size: 8, offset: 8)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !101, file: !13, line: 151, baseType: !16, size: 8, offset: 16)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !101, file: !13, line: 152, baseType: !16, size: 8, offset: 24)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !101, file: !13, line: 153, baseType: !97, size: 8, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !85, file: !13, line: 617, baseType: !109, size: 24)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !13, line: 156, size: 24, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !109, file: !13, line: 157, baseType: !16, size: 8)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !109, file: !13, line: 158, baseType: !16, size: 8, offset: 8)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !109, file: !13, line: 159, baseType: !16, size: 8, offset: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !85, file: !13, line: 618, baseType: !115, size: 56)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !13, line: 167, size: 56, elements: !116)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !115, file: !13, line: 168, baseType: !16, size: 8)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !115, file: !13, line: 169, baseType: !16, size: 8, offset: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !115, file: !13, line: 170, baseType: !16, size: 8, offset: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !115, file: !13, line: 171, baseType: !45, size: 16, offset: 24)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !115, file: !13, line: 172, baseType: !45, size: 16, offset: 40)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !85, file: !13, line: 619, baseType: !123, size: 24)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !13, line: 175, size: 24, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !123, file: !13, line: 176, baseType: !45, size: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !123, file: !13, line: 177, baseType: !16, size: 8, offset: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !85, file: !13, line: 620, baseType: !128, size: 40)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !13, line: 180, size: 40, elements: !129)
!129 = !{!130, !131, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !128, file: !13, line: 181, baseType: !45, size: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !128, file: !13, line: 182, baseType: !45, size: 16, offset: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !128, file: !13, line: 183, baseType: !16, size: 8, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !85, file: !13, line: 621, baseType: !134, size: 24)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !13, line: 195, size: 24, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !134, file: !13, line: 196, baseType: !45, size: 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !134, file: !13, line: 197, baseType: !97, size: 8, offset: 16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !85, file: !13, line: 622, baseType: !139, size: 160)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !13, line: 202, size: 160, elements: !140)
!140 = !{!141, !142, !143, !147}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !139, file: !13, line: 203, baseType: !45, size: 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !139, file: !13, line: 204, baseType: !16, size: 8, offset: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !139, file: !13, line: 205, baseType: !144, size: 128, offset: 24)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 16)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !139, file: !13, line: 206, baseType: !97, size: 8, offset: 152)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !85, file: !13, line: 623, baseType: !149, size: 8)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !13, line: 209, size: 8, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !149, file: !13, line: 210, baseType: !16, size: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !85, file: !13, line: 624, baseType: !153, size: 72)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !13, line: 213, size: 72, elements: !154)
!154 = !{!155, !156, !157, !158, !159}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !153, file: !13, line: 214, baseType: !16, size: 8)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !153, file: !13, line: 215, baseType: !45, size: 16, offset: 8)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !153, file: !13, line: 216, baseType: !45, size: 16, offset: 24)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !153, file: !13, line: 217, baseType: !45, size: 16, offset: 40)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !153, file: !13, line: 218, baseType: !45, size: 16, offset: 56)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !85, file: !13, line: 625, baseType: !161, size: 136)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !13, line: 221, size: 136, elements: !162)
!162 = !{!163, !164, !165, !166, !167}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !161, file: !13, line: 222, baseType: !16, size: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !161, file: !13, line: 223, baseType: !6, size: 32, offset: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !161, file: !13, line: 224, baseType: !6, size: 32, offset: 40)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !161, file: !13, line: 225, baseType: !6, size: 32, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !161, file: !13, line: 226, baseType: !6, size: 32, offset: 104)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !85, file: !13, line: 626, baseType: !169, size: 72)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !13, line: 229, size: 72, elements: !170)
!170 = !{!171, !172, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !169, file: !13, line: 230, baseType: !16, size: 8)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !169, file: !13, line: 231, baseType: !6, size: 32, offset: 8)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !169, file: !13, line: 232, baseType: !6, size: 32, offset: 40)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !85, file: !13, line: 627, baseType: !12, size: 240)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !85, file: !13, line: 628, baseType: !62, size: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !85, file: !13, line: 629, baseType: !177, size: 480)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !13, line: 316, size: 480, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !196}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !177, file: !13, line: 317, baseType: !16, size: 8)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !177, file: !13, line: 317, baseType: !16, size: 8, offset: 8)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !177, file: !13, line: 317, baseType: !16, size: 8, offset: 16)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !177, file: !13, line: 317, baseType: !16, size: 8, offset: 24)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !177, file: !13, line: 317, baseType: !16, size: 8, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !177, file: !13, line: 317, baseType: !24, size: 32, offset: 40)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !177, file: !13, line: 317, baseType: !186, size: 320, offset: 72)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !13, line: 295, size: 320, elements: !187)
!187 = !{!188, !192, !193, !194, !195}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !186, file: !13, line: 296, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !191)
!191 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !186, file: !13, line: 297, baseType: !189, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !186, file: !13, line: 298, baseType: !189, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !186, file: !13, line: 299, baseType: !189, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !186, file: !13, line: 300, baseType: !189, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !177, file: !13, line: 318, baseType: !53, size: 88, offset: 392)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !85, file: !13, line: 630, baseType: !198, size: 464)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !13, line: 321, size: 464, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !198, file: !13, line: 322, baseType: !16, size: 8)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !198, file: !13, line: 322, baseType: !16, size: 8, offset: 8)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !198, file: !13, line: 322, baseType: !16, size: 8, offset: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !198, file: !13, line: 322, baseType: !16, size: 8, offset: 24)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !198, file: !13, line: 322, baseType: !16, size: 8, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !198, file: !13, line: 322, baseType: !24, size: 32, offset: 40)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !198, file: !13, line: 322, baseType: !16, size: 8, offset: 72)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !198, file: !13, line: 323, baseType: !186, size: 320, offset: 80)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !198, file: !13, line: 324, baseType: !189, size: 64, offset: 400)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !85, file: !13, line: 631, baseType: !210, size: 168)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !13, line: 327, size: 168, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !210, file: !13, line: 328, baseType: !16, size: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !210, file: !13, line: 329, baseType: !16, size: 8, offset: 8)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !210, file: !13, line: 330, baseType: !16, size: 8, offset: 16)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !210, file: !13, line: 331, baseType: !16, size: 8, offset: 24)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !210, file: !13, line: 332, baseType: !16, size: 8, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !210, file: !13, line: 333, baseType: !16, size: 8, offset: 40)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !210, file: !13, line: 334, baseType: !53, size: 88, offset: 48)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !210, file: !13, line: 335, baseType: !220, size: 32, offset: 136)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, elements: !98)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !85, file: !13, line: 632, baseType: !222, size: 96)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !13, line: 338, size: 96, elements: !223)
!223 = !{!224, !225, !226, !227, !228}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !222, file: !13, line: 339, baseType: !16, size: 8)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !222, file: !13, line: 340, baseType: !16, size: 8, offset: 8)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !222, file: !13, line: 341, baseType: !16, size: 8, offset: 16)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !222, file: !13, line: 342, baseType: !16, size: 8, offset: 24)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !222, file: !13, line: 343, baseType: !189, size: 64, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !85, file: !13, line: 633, baseType: !230, size: 352)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !13, line: 346, size: 352, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !248}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !230, file: !13, line: 347, baseType: !16, size: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !230, file: !13, line: 348, baseType: !16, size: 8, offset: 8)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !230, file: !13, line: 349, baseType: !16, size: 8, offset: 16)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !230, file: !13, line: 350, baseType: !16, size: 8, offset: 24)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !230, file: !13, line: 351, baseType: !16, size: 8, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !230, file: !13, line: 352, baseType: !16, size: 8, offset: 40)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !230, file: !13, line: 353, baseType: !16, size: 8, offset: 48)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !230, file: !13, line: 354, baseType: !16, size: 8, offset: 56)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !230, file: !13, line: 355, baseType: !16, size: 8, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !230, file: !13, line: 356, baseType: !45, size: 16, offset: 72)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !230, file: !13, line: 357, baseType: !45, size: 16, offset: 88)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !230, file: !13, line: 358, baseType: !45, size: 16, offset: 104)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !230, file: !13, line: 359, baseType: !45, size: 16, offset: 120)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !230, file: !13, line: 360, baseType: !53, size: 88, offset: 136)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !230, file: !13, line: 361, baseType: !247, size: 64, offset: 224)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !230, file: !13, line: 362, baseType: !249, size: 64, offset: 288)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !85, file: !13, line: 634, baseType: !251, size: 288)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !13, line: 412, size: 288, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !251, file: !13, line: 413, baseType: !16, size: 8)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !251, file: !13, line: 413, baseType: !16, size: 8, offset: 8)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !251, file: !13, line: 413, baseType: !16, size: 8, offset: 16)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !251, file: !13, line: 413, baseType: !16, size: 8, offset: 24)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !251, file: !13, line: 413, baseType: !16, size: 8, offset: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !251, file: !13, line: 413, baseType: !16, size: 8, offset: 40)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !251, file: !13, line: 413, baseType: !45, size: 16, offset: 48)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !251, file: !13, line: 413, baseType: !45, size: 16, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !251, file: !13, line: 413, baseType: !53, size: 88, offset: 80)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !251, file: !13, line: 413, baseType: !249, size: 64, offset: 168)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !251, file: !13, line: 413, baseType: !16, size: 8, offset: 232)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !251, file: !13, line: 414, baseType: !45, size: 16, offset: 240)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !251, file: !13, line: 415, baseType: !6, size: 32, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !85, file: !13, line: 635, baseType: !267, size: 320)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !13, line: 423, size: 320, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !267, file: !13, line: 424, baseType: !16, size: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !267, file: !13, line: 424, baseType: !16, size: 8, offset: 8)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !267, file: !13, line: 424, baseType: !16, size: 8, offset: 16)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !267, file: !13, line: 424, baseType: !16, size: 8, offset: 24)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !267, file: !13, line: 424, baseType: !16, size: 8, offset: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !267, file: !13, line: 424, baseType: !16, size: 8, offset: 40)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !267, file: !13, line: 424, baseType: !45, size: 16, offset: 48)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !267, file: !13, line: 424, baseType: !45, size: 16, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !267, file: !13, line: 424, baseType: !53, size: 88, offset: 80)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !267, file: !13, line: 424, baseType: !249, size: 64, offset: 168)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !267, file: !13, line: 424, baseType: !16, size: 8, offset: 232)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !267, file: !13, line: 425, baseType: !16, size: 8, offset: 240)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !267, file: !13, line: 426, baseType: !16, size: 8, offset: 248)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !267, file: !13, line: 427, baseType: !16, size: 8, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !267, file: !13, line: 428, baseType: !16, size: 8, offset: 264)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !267, file: !13, line: 429, baseType: !45, size: 16, offset: 272)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !267, file: !13, line: 430, baseType: !6, size: 32, offset: 288)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !85, file: !13, line: 636, baseType: !287, size: 344)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !13, line: 453, size: 344, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !287, file: !13, line: 454, baseType: !16, size: 8)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !287, file: !13, line: 454, baseType: !16, size: 8, offset: 8)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !287, file: !13, line: 454, baseType: !16, size: 8, offset: 16)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !287, file: !13, line: 454, baseType: !16, size: 8, offset: 24)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !287, file: !13, line: 454, baseType: !16, size: 8, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !287, file: !13, line: 454, baseType: !16, size: 8, offset: 40)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !287, file: !13, line: 454, baseType: !45, size: 16, offset: 48)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !287, file: !13, line: 454, baseType: !45, size: 16, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !287, file: !13, line: 454, baseType: !53, size: 88, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !287, file: !13, line: 454, baseType: !249, size: 64, offset: 168)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !287, file: !13, line: 454, baseType: !16, size: 8, offset: 232)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !287, file: !13, line: 455, baseType: !16, size: 8, offset: 240)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !287, file: !13, line: 456, baseType: !16, size: 8, offset: 248)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !287, file: !13, line: 457, baseType: !16, size: 8, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !287, file: !13, line: 458, baseType: !16, size: 8, offset: 264)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !287, file: !13, line: 459, baseType: !16, size: 8, offset: 272)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !287, file: !13, line: 460, baseType: !45, size: 16, offset: 280)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !287, file: !13, line: 461, baseType: !45, size: 16, offset: 296)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !287, file: !13, line: 462, baseType: !6, size: 32, offset: 312)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !85, file: !13, line: 637, baseType: !309, size: 232)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !13, line: 398, size: 232, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !309, file: !13, line: 399, baseType: !16, size: 8)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !309, file: !13, line: 399, baseType: !16, size: 8, offset: 8)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !309, file: !13, line: 399, baseType: !16, size: 8, offset: 16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !309, file: !13, line: 399, baseType: !16, size: 8, offset: 24)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !309, file: !13, line: 399, baseType: !16, size: 8, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !309, file: !13, line: 399, baseType: !16, size: 8, offset: 40)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !309, file: !13, line: 399, baseType: !45, size: 16, offset: 48)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !309, file: !13, line: 399, baseType: !45, size: 16, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !309, file: !13, line: 399, baseType: !53, size: 88, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !309, file: !13, line: 399, baseType: !249, size: 64, offset: 168)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !85, file: !13, line: 638, baseType: !322, size: 288)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !13, line: 508, size: 288, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !322, file: !13, line: 509, baseType: !16, size: 8)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !322, file: !13, line: 510, baseType: !16, size: 8, offset: 8)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !322, file: !13, line: 511, baseType: !16, size: 8, offset: 16)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !322, file: !13, line: 512, baseType: !45, size: 16, offset: 24)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !322, file: !13, line: 513, baseType: !45, size: 16, offset: 40)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !322, file: !13, line: 514, baseType: !45, size: 16, offset: 56)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !322, file: !13, line: 515, baseType: !53, size: 88, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !322, file: !13, line: 516, baseType: !247, size: 64, offset: 160)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !322, file: !13, line: 517, baseType: !249, size: 64, offset: 224)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !85, file: !13, line: 639, baseType: !334, size: 312)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !13, line: 520, size: 312, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !334, file: !13, line: 521, baseType: !16, size: 8)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !334, file: !13, line: 522, baseType: !16, size: 8, offset: 8)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !334, file: !13, line: 523, baseType: !16, size: 8, offset: 16)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !334, file: !13, line: 524, baseType: !16, size: 8, offset: 24)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !334, file: !13, line: 525, baseType: !6, size: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !334, file: !13, line: 526, baseType: !45, size: 16, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !334, file: !13, line: 527, baseType: !45, size: 16, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !334, file: !13, line: 528, baseType: !53, size: 88, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !334, file: !13, line: 529, baseType: !247, size: 64, offset: 184)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !334, file: !13, line: 530, baseType: !249, size: 64, offset: 248)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !85, file: !13, line: 640, baseType: !347, size: 256)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !13, line: 550, size: 256, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !359}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !347, file: !13, line: 551, baseType: !16, size: 8)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !347, file: !13, line: 552, baseType: !16, size: 8, offset: 8)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !347, file: !13, line: 553, baseType: !45, size: 16, offset: 16)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !347, file: !13, line: 554, baseType: !45, size: 16, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !347, file: !13, line: 555, baseType: !247, size: 64, offset: 48)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !347, file: !13, line: 556, baseType: !355, size: 80, offset: 112)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !13, line: 258, size: 80, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !355, file: !13, line: 259, baseType: !45, size: 16)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !355, file: !13, line: 260, baseType: !58, size: 64, offset: 16)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !347, file: !13, line: 557, baseType: !249, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !85, file: !13, line: 641, baseType: !361, size: 288)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !13, line: 560, size: 288, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !361, file: !13, line: 561, baseType: !16, size: 8)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !361, file: !13, line: 562, baseType: !16, size: 8, offset: 8)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !361, file: !13, line: 563, baseType: !16, size: 8, offset: 16)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !361, file: !13, line: 564, baseType: !45, size: 16, offset: 24)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !361, file: !13, line: 565, baseType: !45, size: 16, offset: 40)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !361, file: !13, line: 566, baseType: !53, size: 88, offset: 56)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !361, file: !13, line: 567, baseType: !355, size: 80, offset: 144)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !361, file: !13, line: 568, baseType: !249, size: 64, offset: 224)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !85, file: !13, line: 642, baseType: !372, size: 312)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !13, line: 571, size: 312, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !372, file: !13, line: 572, baseType: !16, size: 8)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !372, file: !13, line: 573, baseType: !16, size: 8, offset: 8)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !372, file: !13, line: 574, baseType: !16, size: 8, offset: 16)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !372, file: !13, line: 575, baseType: !16, size: 8, offset: 24)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !372, file: !13, line: 576, baseType: !6, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !372, file: !13, line: 577, baseType: !45, size: 16, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !372, file: !13, line: 578, baseType: !53, size: 88, offset: 80)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !372, file: !13, line: 579, baseType: !355, size: 80, offset: 168)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !372, file: !13, line: 580, baseType: !249, size: 64, offset: 248)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !85, file: !13, line: 646, baseType: !384, size: 72)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !13, line: 303, size: 72, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !384, file: !13, line: 304, baseType: !16, size: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !384, file: !13, line: 304, baseType: !16, size: 8, offset: 8)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !384, file: !13, line: 304, baseType: !16, size: 8, offset: 16)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !384, file: !13, line: 304, baseType: !16, size: 8, offset: 24)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !384, file: !13, line: 304, baseType: !16, size: 8, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !384, file: !13, line: 304, baseType: !24, size: 32, offset: 40)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !5, line: 127, baseType: !189)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!394 = !{i32 7, !"Dwarf Version", i32 4}
!395 = !{i32 2, !"Debug Info Version", i32 3}
!396 = !{i32 1, !"wchar_size", i32 2}
!397 = !{i32 1, !"Code Model", i32 2}
!398 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!399 = distinct !DISubprogram(name: "acpi_get_irq_routing_table", scope: !1, file: !1, line: 122, type: !400, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!400 = !DISubroutineType(types: !401)
!401 = !{!4, !402, !403}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !5, line: 424, baseType: !60)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !5, line: 969, size: 128, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !404, file: !5, line: 970, baseType: !392, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !404, file: !5, line: 971, baseType: !60, size: 64, offset: 64)
!408 = !DILocalVariable(name: "device_handle", arg: 1, scope: !399, file: !1, line: 122, type: !402)
!409 = !DILocation(line: 122, column: 40, scope: !399)
!410 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !399, file: !1, line: 123, type: !403)
!411 = !DILocation(line: 123, column: 27, scope: !399)
!412 = !DILocalVariable(name: "status", scope: !399, file: !1, line: 125, type: !4)
!413 = !DILocation(line: 125, column: 14, scope: !399)
!414 = !DILocalVariable(name: "node", scope: !399, file: !1, line: 126, type: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !417, line: 133, size: 384, elements: !418)
!417 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !1156, !1157, !1158, !1159, !1165, !1166, !1167, !1168}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !416, file: !417, line: 134, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !422, line: 367, size: 576, elements: !423)
!422 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424, !432, !445, !455, !468, !482, !491, !807, !824, !839, !852, !930, !942, !956, !966, !984, !1006, !1025, !1044, !1063, !1076, !1102, !1119, !1132, !1146, !1155}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !421, file: !422, line: 368, baseType: !425, size: 128)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !422, line: 73, size: 128, elements: !426)
!426 = !{!427, !428, !429, !430, !431}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !425, file: !422, line: 74, baseType: !420, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !425, file: !422, line: 74, baseType: !16, size: 8, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !425, file: !422, line: 74, baseType: !16, size: 8, offset: 72)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !425, file: !422, line: 74, baseType: !45, size: 16, offset: 80)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !425, file: !422, line: 74, baseType: !16, size: 8, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !421, file: !422, line: 369, baseType: !433, size: 192)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !422, line: 76, size: 192, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !444}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !433, file: !422, line: 77, baseType: !420, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !433, file: !422, line: 77, baseType: !16, size: 8, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !433, file: !422, line: 77, baseType: !16, size: 8, offset: 72)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !433, file: !422, line: 77, baseType: !45, size: 16, offset: 80)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !422, line: 77, baseType: !16, size: 8, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !433, file: !422, line: 77, baseType: !441, size: 24, offset: 104)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 24, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 3)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !433, file: !422, line: 78, baseType: !189, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !421, file: !422, line: 370, baseType: !446, size: 256)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !422, line: 93, size: 256, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !446, file: !422, line: 94, baseType: !420, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !446, file: !422, line: 94, baseType: !16, size: 8, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !446, file: !422, line: 94, baseType: !16, size: 8, offset: 72)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !446, file: !422, line: 94, baseType: !45, size: 16, offset: 80)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !422, line: 94, baseType: !16, size: 8, offset: 96)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !446, file: !422, line: 94, baseType: !58, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !446, file: !422, line: 94, baseType: !6, size: 32, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !421, file: !422, line: 371, baseType: !456, size: 384)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !422, line: 97, size: 384, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !456, file: !422, line: 98, baseType: !420, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !456, file: !422, line: 98, baseType: !16, size: 8, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !456, file: !422, line: 98, baseType: !16, size: 8, offset: 72)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !456, file: !422, line: 98, baseType: !45, size: 16, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !422, line: 98, baseType: !16, size: 8, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !456, file: !422, line: 98, baseType: !249, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !456, file: !422, line: 98, baseType: !6, size: 32, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !456, file: !422, line: 99, baseType: !6, size: 32, offset: 224)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !456, file: !422, line: 100, baseType: !249, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !456, file: !422, line: 101, baseType: !415, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !421, file: !422, line: 372, baseType: !469, size: 384)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !422, line: 104, size: 384, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !479, !480, !481}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !422, line: 105, baseType: !420, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !422, line: 105, baseType: !16, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !422, line: 105, baseType: !16, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !422, line: 105, baseType: !45, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !422, line: 105, baseType: !16, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !469, file: !422, line: 105, baseType: !415, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !469, file: !422, line: 106, baseType: !478, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !469, file: !422, line: 107, baseType: !249, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !469, file: !422, line: 108, baseType: !6, size: 32, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !469, file: !422, line: 109, baseType: !6, size: 32, offset: 352)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !421, file: !422, line: 373, baseType: !483, size: 192)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !422, line: 118, size: 192, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !483, file: !422, line: 119, baseType: !420, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !483, file: !422, line: 119, baseType: !16, size: 8, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !422, line: 119, baseType: !16, size: 8, offset: 72)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !483, file: !422, line: 119, baseType: !45, size: 16, offset: 80)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !422, line: 119, baseType: !16, size: 8, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !483, file: !422, line: 119, baseType: !60, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !421, file: !422, line: 374, baseType: !492, size: 448)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !422, line: 143, size: 448, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !804, !805, !806}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !492, file: !422, line: 144, baseType: !420, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !492, file: !422, line: 144, baseType: !16, size: 8, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !492, file: !422, line: 144, baseType: !16, size: 8, offset: 72)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !492, file: !422, line: 144, baseType: !45, size: 16, offset: 80)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !492, file: !422, line: 144, baseType: !16, size: 8, offset: 96)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !492, file: !422, line: 144, baseType: !16, size: 8, offset: 104)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !492, file: !422, line: 145, baseType: !16, size: 8, offset: 112)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !492, file: !422, line: 146, baseType: !16, size: 8, offset: 120)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !492, file: !422, line: 147, baseType: !420, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !492, file: !422, line: 148, baseType: !420, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !492, file: !422, line: 149, baseType: !249, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !492, file: !422, line: 153, baseType: !506, size: 64, offset: 320)
!506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !492, file: !422, line: 150, size: 64, elements: !507)
!507 = !{!508, !803}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !506, file: !422, line: 151, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !417, line: 248, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!4, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !515, line: 37, size: 9024, elements: !516)
!515 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !749, !750, !751, !752, !753, !757, !759, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !786, !787, !788, !789, !790, !791, !792, !793, !795, !801}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !514, file: !515, line: 38, baseType: !513, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !514, file: !515, line: 39, baseType: !16, size: 8, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !514, file: !515, line: 40, baseType: !16, size: 8, offset: 72)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !514, file: !515, line: 41, baseType: !45, size: 16, offset: 80)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !514, file: !515, line: 42, baseType: !16, size: 8, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !514, file: !515, line: 43, baseType: !16, size: 8, offset: 104)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !514, file: !515, line: 44, baseType: !16, size: 8, offset: 112)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !514, file: !515, line: 45, baseType: !525, size: 16, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !5, line: 445, baseType: !45)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !514, file: !515, line: 46, baseType: !16, size: 8, offset: 144)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !514, file: !515, line: 47, baseType: !16, size: 8, offset: 152)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !514, file: !515, line: 48, baseType: !16, size: 8, offset: 160)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !514, file: !515, line: 49, baseType: !16, size: 8, offset: 168)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !514, file: !515, line: 50, baseType: !16, size: 8, offset: 176)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !514, file: !515, line: 51, baseType: !16, size: 8, offset: 184)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !514, file: !515, line: 52, baseType: !16, size: 8, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !514, file: !515, line: 53, baseType: !16, size: 8, offset: 200)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !514, file: !515, line: 54, baseType: !249, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !514, file: !515, line: 55, baseType: !6, size: 32, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !514, file: !515, line: 56, baseType: !6, size: 32, offset: 352)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !514, file: !515, line: 57, baseType: !6, size: 32, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !514, file: !515, line: 58, baseType: !6, size: 32, offset: 416)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !514, file: !515, line: 60, baseType: !540, size: 640, offset: 448)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !417, line: 893, size: 640, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !631, !632, !747, !748}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !540, file: !417, line: 894, baseType: !249, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !540, file: !417, line: 895, baseType: !249, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !540, file: !417, line: 896, baseType: !249, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !540, file: !417, line: 897, baseType: !249, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !540, file: !417, line: 898, baseType: !249, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !540, file: !417, line: 899, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !417, line: 875, size: 1600, elements: !550)
!550 = !{!551, !571, !587}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !549, file: !417, line: 876, baseType: !552, size: 448)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !417, line: 828, size: 448, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !570}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !552, file: !417, line: 829, baseType: !548, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !552, file: !417, line: 829, baseType: !16, size: 8, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !417, line: 829, baseType: !16, size: 8, offset: 72)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !552, file: !417, line: 829, baseType: !45, size: 16, offset: 80)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !552, file: !417, line: 829, baseType: !249, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !552, file: !417, line: 829, baseType: !548, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !552, file: !417, line: 829, baseType: !415, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !552, file: !417, line: 829, baseType: !562, size: 64, offset: 320)
!562 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !417, line: 716, size: 64, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !569}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !562, file: !417, line: 717, baseType: !189, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !562, file: !417, line: 718, baseType: !6, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !562, file: !417, line: 719, baseType: !58, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !562, file: !417, line: 720, baseType: !249, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !562, file: !417, line: 721, baseType: !58, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !562, file: !417, line: 722, baseType: !548, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !552, file: !417, line: 829, baseType: !16, size: 8, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !549, file: !417, line: 877, baseType: !572, size: 640)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !417, line: 835, size: 640, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !572, file: !417, line: 836, baseType: !548, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !572, file: !417, line: 836, baseType: !16, size: 8, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !417, line: 836, baseType: !16, size: 8, offset: 72)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !572, file: !417, line: 836, baseType: !45, size: 16, offset: 80)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !572, file: !417, line: 836, baseType: !249, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !572, file: !417, line: 836, baseType: !548, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !572, file: !417, line: 836, baseType: !415, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !572, file: !417, line: 836, baseType: !562, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !572, file: !417, line: 836, baseType: !16, size: 8, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !572, file: !417, line: 836, baseType: !58, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !572, file: !417, line: 837, baseType: !249, size: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !572, file: !417, line: 838, baseType: !6, size: 32, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !572, file: !417, line: 839, baseType: !6, size: 32, offset: 608)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !549, file: !417, line: 878, baseType: !588, size: 1600)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !417, line: 846, size: 1600, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !588, file: !417, line: 847, baseType: !548, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !417, line: 847, baseType: !16, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !417, line: 847, baseType: !16, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !588, file: !417, line: 847, baseType: !45, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !588, file: !417, line: 847, baseType: !249, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !417, line: 847, baseType: !548, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !588, file: !417, line: 847, baseType: !415, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !588, file: !417, line: 847, baseType: !562, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !588, file: !417, line: 847, baseType: !16, size: 8, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !588, file: !417, line: 847, baseType: !548, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !588, file: !417, line: 848, baseType: !548, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !588, file: !417, line: 849, baseType: !58, size: 64, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !588, file: !417, line: 850, baseType: !16, size: 8, offset: 640)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !588, file: !417, line: 851, baseType: !58, size: 64, offset: 704)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !588, file: !417, line: 852, baseType: !58, size: 64, offset: 768)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !588, file: !417, line: 853, baseType: !58, size: 64, offset: 832)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !588, file: !417, line: 854, baseType: !607, size: 32, offset: 896)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 4)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !588, file: !417, line: 855, baseType: !6, size: 32, offset: 928)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !588, file: !417, line: 856, baseType: !6, size: 32, offset: 960)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !588, file: !417, line: 857, baseType: !6, size: 32, offset: 992)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !588, file: !417, line: 858, baseType: !6, size: 32, offset: 1024)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !588, file: !417, line: 859, baseType: !6, size: 32, offset: 1056)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !588, file: !417, line: 860, baseType: !6, size: 32, offset: 1088)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !588, file: !417, line: 861, baseType: !6, size: 32, offset: 1120)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !588, file: !417, line: 862, baseType: !6, size: 32, offset: 1152)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !588, file: !417, line: 863, baseType: !6, size: 32, offset: 1184)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !588, file: !417, line: 864, baseType: !6, size: 32, offset: 1216)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !588, file: !417, line: 865, baseType: !6, size: 32, offset: 1248)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !588, file: !417, line: 866, baseType: !6, size: 32, offset: 1280)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !588, file: !417, line: 867, baseType: !6, size: 32, offset: 1312)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !588, file: !417, line: 868, baseType: !45, size: 16, offset: 1344)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !588, file: !417, line: 869, baseType: !16, size: 8, offset: 1360)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !588, file: !417, line: 870, baseType: !16, size: 8, offset: 1368)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !588, file: !417, line: 871, baseType: !16, size: 8, offset: 1376)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !588, file: !417, line: 872, baseType: !628, size: 160, offset: 1384)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 160, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 20)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !540, file: !417, line: 900, baseType: !415, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !540, file: !417, line: 901, baseType: !633, size: 64, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !417, line: 663, size: 640, elements: !635)
!635 = !{!636, !644, !657, !666, !675, !688, !702, !714, !726}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !634, file: !417, line: 664, baseType: !637, size: 128)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !417, line: 567, size: 128, elements: !638)
!638 = !{!639, !640, !641, !642, !643}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !637, file: !417, line: 568, baseType: !60, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !637, file: !417, line: 568, baseType: !16, size: 8, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !637, file: !417, line: 568, baseType: !16, size: 8, offset: 72)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !637, file: !417, line: 568, baseType: !45, size: 16, offset: 80)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !637, file: !417, line: 568, baseType: !45, size: 16, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !634, file: !417, line: 665, baseType: !645, size: 384)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !417, line: 593, size: 384, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !645, file: !417, line: 594, baseType: !60, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !417, line: 594, baseType: !16, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !417, line: 594, baseType: !16, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !645, file: !417, line: 594, baseType: !45, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !645, file: !417, line: 594, baseType: !45, size: 16, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !645, file: !417, line: 594, baseType: !45, size: 16, offset: 112)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !645, file: !417, line: 595, baseType: !548, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !645, file: !417, line: 596, baseType: !249, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !645, file: !417, line: 597, baseType: !249, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !645, file: !417, line: 598, baseType: !189, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !634, file: !417, line: 666, baseType: !658, size: 192)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !417, line: 573, size: 192, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !658, file: !417, line: 574, baseType: !60, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !417, line: 574, baseType: !16, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !417, line: 574, baseType: !16, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !417, line: 574, baseType: !45, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !658, file: !417, line: 574, baseType: !45, size: 16, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !658, file: !417, line: 574, baseType: !420, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !634, file: !417, line: 667, baseType: !667, size: 192)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !417, line: 604, size: 192, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !667, file: !417, line: 605, baseType: !60, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !667, file: !417, line: 605, baseType: !16, size: 8, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !417, line: 605, baseType: !16, size: 8, offset: 72)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !667, file: !417, line: 605, baseType: !45, size: 16, offset: 80)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !667, file: !417, line: 605, baseType: !45, size: 16, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !667, file: !417, line: 605, baseType: !415, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !634, file: !417, line: 668, baseType: !676, size: 448)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !417, line: 608, size: 448, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !417, line: 609, baseType: !60, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !417, line: 609, baseType: !16, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !417, line: 609, baseType: !16, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !676, file: !417, line: 609, baseType: !45, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !676, file: !417, line: 609, baseType: !45, size: 16, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !676, file: !417, line: 609, baseType: !6, size: 32, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !676, file: !417, line: 610, baseType: !548, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !676, file: !417, line: 611, baseType: !249, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !676, file: !417, line: 612, baseType: !249, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !676, file: !417, line: 613, baseType: !6, size: 32, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !634, file: !417, line: 669, baseType: !689, size: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !417, line: 580, size: 512, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !417, line: 581, baseType: !60, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !417, line: 581, baseType: !16, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !417, line: 581, baseType: !16, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !689, file: !417, line: 581, baseType: !45, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !689, file: !417, line: 581, baseType: !45, size: 16, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !689, file: !417, line: 581, baseType: !6, size: 32, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !689, file: !417, line: 582, baseType: !420, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !689, file: !417, line: 583, baseType: !420, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !689, file: !417, line: 584, baseType: !513, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !689, file: !417, line: 585, baseType: !60, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !689, file: !417, line: 586, baseType: !6, size: 32, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !634, file: !417, line: 670, baseType: !703, size: 320)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !417, line: 620, size: 320, elements: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !703, file: !417, line: 621, baseType: !60, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !703, file: !417, line: 621, baseType: !16, size: 8, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !417, line: 621, baseType: !16, size: 8, offset: 72)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !703, file: !417, line: 621, baseType: !45, size: 16, offset: 80)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !703, file: !417, line: 621, baseType: !45, size: 16, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !703, file: !417, line: 621, baseType: !16, size: 8, offset: 112)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !703, file: !417, line: 622, baseType: !513, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !703, file: !417, line: 623, baseType: !420, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !703, file: !417, line: 624, baseType: !189, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !634, file: !417, line: 671, baseType: !715, size: 640)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !417, line: 631, size: 640, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !715, file: !417, line: 632, baseType: !60, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !417, line: 632, baseType: !16, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !417, line: 632, baseType: !16, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !417, line: 632, baseType: !45, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !715, file: !417, line: 632, baseType: !45, size: 16, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !715, file: !417, line: 633, baseType: !723, size: 512, offset: 128)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 512, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 8)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !634, file: !417, line: 672, baseType: !727, size: 320)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !417, line: 654, size: 320, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !417, line: 655, baseType: !60, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !417, line: 655, baseType: !16, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !417, line: 655, baseType: !16, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !727, file: !417, line: 655, baseType: !45, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !727, file: !417, line: 655, baseType: !45, size: 16, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !727, file: !417, line: 655, baseType: !16, size: 8, offset: 112)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !417, line: 656, baseType: !415, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !727, file: !417, line: 657, baseType: !420, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !727, file: !417, line: 658, baseType: !738, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !417, line: 645, size: 128, elements: !740)
!740 = !{!741, !746}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !739, file: !417, line: 646, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !5, line: 1052, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !402, !6, !60}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !739, file: !417, line: 647, baseType: !60, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !540, file: !417, line: 902, baseType: !548, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !540, file: !417, line: 903, baseType: !6, size: 32, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !514, file: !515, line: 61, baseType: !6, size: 32, offset: 1088)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !514, file: !515, line: 62, baseType: !6, size: 32, offset: 1120)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !514, file: !515, line: 63, baseType: !45, size: 16, offset: 1152)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !514, file: !515, line: 64, baseType: !16, size: 8, offset: 1168)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !514, file: !515, line: 66, baseType: !754, size: 2688, offset: 1216)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 2688, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 7)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !514, file: !515, line: 67, baseType: !758, size: 3072, offset: 3904)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 3072, elements: !724)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !514, file: !515, line: 68, baseType: !760, size: 576, offset: 6976)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 576, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 9)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !514, file: !515, line: 69, baseType: !478, size: 64, offset: 7552)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !514, file: !515, line: 71, baseType: !249, size: 64, offset: 7616)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !514, file: !515, line: 72, baseType: !478, size: 64, offset: 7680)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !514, file: !515, line: 73, baseType: !633, size: 64, offset: 7744)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !514, file: !515, line: 74, baseType: !415, size: 64, offset: 7808)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !514, file: !515, line: 75, baseType: !420, size: 64, offset: 7872)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !514, file: !515, line: 76, baseType: !415, size: 64, offset: 7936)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !514, file: !515, line: 77, baseType: !548, size: 64, offset: 8000)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !514, file: !515, line: 78, baseType: !420, size: 64, offset: 8064)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !514, file: !515, line: 79, baseType: !415, size: 64, offset: 8128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !514, file: !515, line: 80, baseType: !58, size: 64, offset: 8192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !514, file: !515, line: 81, baseType: !548, size: 64, offset: 8256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !514, file: !515, line: 82, baseType: !776, size: 64, offset: 8320)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !417, line: 702, size: 128, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !778, file: !417, line: 706, baseType: !6, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !778, file: !417, line: 707, baseType: !6, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !417, line: 708, baseType: !45, size: 16, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !778, file: !417, line: 709, baseType: !16, size: 8, offset: 80)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !778, file: !417, line: 710, baseType: !16, size: 8, offset: 88)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !417, line: 711, baseType: !16, size: 8, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !514, file: !515, line: 83, baseType: !548, size: 64, offset: 8384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !514, file: !515, line: 84, baseType: !420, size: 64, offset: 8448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !514, file: !515, line: 85, baseType: !633, size: 64, offset: 8512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !514, file: !515, line: 86, baseType: !420, size: 64, offset: 8576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !514, file: !515, line: 87, baseType: !633, size: 64, offset: 8640)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !514, file: !515, line: 88, baseType: !548, size: 64, offset: 8704)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !514, file: !515, line: 89, baseType: !548, size: 64, offset: 8768)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !514, file: !515, line: 90, baseType: !794, size: 64, offset: 8832)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !514, file: !515, line: 91, baseType: !796, size: 64, offset: 8896)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !417, line: 637, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!4, !513, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !514, file: !515, line: 92, baseType: !802, size: 64, offset: 8960)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !417, line: 641, baseType: !510)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !506, file: !422, line: 152, baseType: !420, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !492, file: !422, line: 155, baseType: !6, size: 32, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !492, file: !422, line: 156, baseType: !525, size: 16, offset: 416)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !492, file: !422, line: 157, baseType: !16, size: 8, offset: 432)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !421, file: !422, line: 375, baseType: !808, size: 576)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !422, line: 122, size: 576, elements: !809)
!809 = !{!810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !808, file: !422, line: 123, baseType: !420, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !808, file: !422, line: 123, baseType: !16, size: 8, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !422, line: 123, baseType: !16, size: 8, offset: 72)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !808, file: !422, line: 123, baseType: !45, size: 16, offset: 80)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !808, file: !422, line: 123, baseType: !16, size: 8, offset: 96)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !808, file: !422, line: 123, baseType: !16, size: 8, offset: 104)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !808, file: !422, line: 124, baseType: !45, size: 16, offset: 112)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !808, file: !422, line: 125, baseType: !60, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !808, file: !422, line: 126, baseType: !189, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !808, file: !422, line: 127, baseType: !794, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !808, file: !422, line: 128, baseType: !420, size: 64, offset: 320)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !808, file: !422, line: 129, baseType: !420, size: 64, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !808, file: !422, line: 130, baseType: !415, size: 64, offset: 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !808, file: !422, line: 131, baseType: !16, size: 8, offset: 512)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !421, file: !422, line: 376, baseType: !825, size: 448)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !422, line: 134, size: 448, elements: !826)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !838}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !825, file: !422, line: 135, baseType: !420, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !825, file: !422, line: 135, baseType: !16, size: 8, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !825, file: !422, line: 135, baseType: !16, size: 8, offset: 72)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !825, file: !422, line: 135, baseType: !45, size: 16, offset: 80)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !825, file: !422, line: 135, baseType: !16, size: 8, offset: 96)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !825, file: !422, line: 135, baseType: !16, size: 8, offset: 104)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !825, file: !422, line: 136, baseType: !415, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !825, file: !422, line: 137, baseType: !420, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !825, file: !422, line: 138, baseType: !420, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !825, file: !422, line: 139, baseType: !837, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !5, line: 129, baseType: !189)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !825, file: !422, line: 140, baseType: !6, size: 32, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !421, file: !422, line: 377, baseType: !840, size: 320)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !422, line: 184, size: 320, elements: !841)
!841 = !{!842, !843, !844, !845, !846, !847, !851}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !840, file: !422, line: 185, baseType: !420, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !840, file: !422, line: 185, baseType: !16, size: 8, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !840, file: !422, line: 185, baseType: !16, size: 8, offset: 72)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !840, file: !422, line: 185, baseType: !45, size: 16, offset: 80)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !840, file: !422, line: 185, baseType: !16, size: 8, offset: 96)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !840, file: !422, line: 185, baseType: !848, size: 128, offset: 128)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 128, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 2)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !840, file: !422, line: 185, baseType: !420, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !421, file: !422, line: 378, baseType: !853, size: 384)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !422, line: 187, size: 384, elements: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !861, !862}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !853, file: !422, line: 188, baseType: !420, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !853, file: !422, line: 188, baseType: !16, size: 8, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !853, file: !422, line: 188, baseType: !16, size: 8, offset: 72)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !853, file: !422, line: 188, baseType: !45, size: 16, offset: 80)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !853, file: !422, line: 188, baseType: !16, size: 8, offset: 96)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !853, file: !422, line: 189, baseType: !848, size: 128, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !853, file: !422, line: 189, baseType: !420, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !853, file: !422, line: 189, baseType: !863, size: 64, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !417, line: 480, size: 576, elements: !865)
!865 = !{!866, !867, !868, !869, !877, !892, !924, !925, !926, !927, !928, !929}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !864, file: !417, line: 481, baseType: !415, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !864, file: !417, line: 482, baseType: !863, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !864, file: !417, line: 483, baseType: !863, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !864, file: !417, line: 484, baseType: !870, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !417, line: 497, size: 256, elements: !872)
!872 = !{!873, !874, !875, !876}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !871, file: !417, line: 498, baseType: !870, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !871, file: !417, line: 499, baseType: !870, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !871, file: !417, line: 500, baseType: !863, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !871, file: !417, line: 501, baseType: !6, size: 32, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !864, file: !417, line: 485, baseType: !878, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !417, line: 466, size: 320, elements: !880)
!880 = !{!881, !886, !887, !888, !889, !890, !891}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !879, file: !417, line: 467, baseType: !882, size: 128)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !417, line: 459, size: 128, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !882, file: !417, line: 460, baseType: !16, size: 8)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !882, file: !417, line: 461, baseType: !189, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !879, file: !417, line: 468, baseType: !882, size: 128, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !879, file: !417, line: 469, baseType: !45, size: 16, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !879, file: !417, line: 470, baseType: !16, size: 8, offset: 272)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !879, file: !417, line: 471, baseType: !16, size: 8, offset: 280)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !879, file: !417, line: 472, baseType: !16, size: 8, offset: 288)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !879, file: !417, line: 473, baseType: !16, size: 8, offset: 296)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !864, file: !417, line: 486, baseType: !893, size: 64, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !417, line: 448, size: 192, elements: !895)
!895 = !{!896, !919, !920, !921, !922, !923}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !894, file: !417, line: 449, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !417, line: 438, size: 64, elements: !898)
!898 = !{!899, !900, !913}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !897, file: !417, line: 439, baseType: !415, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !897, file: !417, line: 440, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !417, line: 419, size: 256, elements: !903)
!903 = !{!904, !909, !910, !911, !912}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !902, file: !417, line: 420, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !5, line: 1049, baseType: !906)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!6, !402, !6, !60}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !902, file: !417, line: 421, baseType: !60, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !902, file: !417, line: 422, baseType: !415, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !902, file: !417, line: 423, baseType: !16, size: 8, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !902, file: !417, line: 424, baseType: !16, size: 8, offset: 200)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !897, file: !417, line: 441, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !417, line: 429, size: 128, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !915, file: !417, line: 430, baseType: !415, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !915, file: !417, line: 431, baseType: !914, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !894, file: !417, line: 450, baseType: !878, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !894, file: !417, line: 451, baseType: !16, size: 8, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !894, file: !417, line: 452, baseType: !16, size: 8, offset: 136)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !894, file: !417, line: 453, baseType: !16, size: 8, offset: 144)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !894, file: !417, line: 454, baseType: !16, size: 8, offset: 152)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !864, file: !417, line: 487, baseType: !189, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !864, file: !417, line: 488, baseType: !6, size: 32, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !864, file: !417, line: 489, baseType: !45, size: 16, offset: 480)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !864, file: !417, line: 490, baseType: !45, size: 16, offset: 496)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !864, file: !417, line: 491, baseType: !16, size: 8, offset: 512)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !864, file: !417, line: 492, baseType: !16, size: 8, offset: 520)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !421, file: !422, line: 379, baseType: !931, size: 384)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !422, line: 192, size: 384, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938, !939, !940, !941}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !931, file: !422, line: 193, baseType: !420, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !931, file: !422, line: 193, baseType: !16, size: 8, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !931, file: !422, line: 193, baseType: !16, size: 8, offset: 72)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !931, file: !422, line: 193, baseType: !45, size: 16, offset: 80)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !931, file: !422, line: 193, baseType: !16, size: 8, offset: 96)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !931, file: !422, line: 193, baseType: !848, size: 128, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !931, file: !422, line: 193, baseType: !420, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !931, file: !422, line: 193, baseType: !6, size: 32, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !931, file: !422, line: 194, baseType: !6, size: 32, offset: 352)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !421, file: !422, line: 380, baseType: !943, size: 384)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !422, line: 197, size: 384, elements: !944)
!944 = !{!945, !946, !947, !948, !949, !950, !951, !952, !953, !954}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !943, file: !422, line: 198, baseType: !420, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !943, file: !422, line: 198, baseType: !16, size: 8, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !943, file: !422, line: 198, baseType: !16, size: 8, offset: 72)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !943, file: !422, line: 198, baseType: !45, size: 16, offset: 80)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !943, file: !422, line: 198, baseType: !16, size: 8, offset: 96)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !943, file: !422, line: 200, baseType: !16, size: 8, offset: 104)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !943, file: !422, line: 201, baseType: !16, size: 8, offset: 112)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !943, file: !422, line: 202, baseType: !848, size: 128, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !943, file: !422, line: 202, baseType: !420, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !943, file: !422, line: 202, baseType: !955, size: 64, offset: 320)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !5, line: 128, baseType: !189)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !421, file: !422, line: 381, baseType: !957, size: 320)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !422, line: 205, size: 320, elements: !958)
!958 = !{!959, !960, !961, !962, !963, !964, !965}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !957, file: !422, line: 206, baseType: !420, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !957, file: !422, line: 206, baseType: !16, size: 8, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !957, file: !422, line: 206, baseType: !16, size: 8, offset: 72)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !957, file: !422, line: 206, baseType: !45, size: 16, offset: 80)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !957, file: !422, line: 206, baseType: !16, size: 8, offset: 96)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !957, file: !422, line: 206, baseType: !848, size: 128, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !957, file: !422, line: 206, baseType: !420, size: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !421, file: !422, line: 382, baseType: !967, size: 384)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !422, line: 233, size: 384, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !967, file: !422, line: 234, baseType: !420, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !967, file: !422, line: 234, baseType: !16, size: 8, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !967, file: !422, line: 234, baseType: !16, size: 8, offset: 72)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !967, file: !422, line: 234, baseType: !45, size: 16, offset: 80)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !422, line: 234, baseType: !16, size: 8, offset: 96)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !967, file: !422, line: 234, baseType: !16, size: 8, offset: 104)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !967, file: !422, line: 234, baseType: !16, size: 8, offset: 112)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !967, file: !422, line: 234, baseType: !16, size: 8, offset: 120)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !967, file: !422, line: 234, baseType: !415, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !967, file: !422, line: 234, baseType: !6, size: 32, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !967, file: !422, line: 234, baseType: !6, size: 32, offset: 224)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !967, file: !422, line: 234, baseType: !6, size: 32, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !967, file: !422, line: 234, baseType: !16, size: 8, offset: 288)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !967, file: !422, line: 234, baseType: !16, size: 8, offset: 296)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !967, file: !422, line: 234, baseType: !420, size: 64, offset: 320)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !421, file: !422, line: 383, baseType: !985, size: 576)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !422, line: 237, size: 576, elements: !986)
!986 = !{!987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !985, file: !422, line: 238, baseType: !420, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !985, file: !422, line: 238, baseType: !16, size: 8, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !985, file: !422, line: 238, baseType: !16, size: 8, offset: 72)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !985, file: !422, line: 238, baseType: !45, size: 16, offset: 80)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !985, file: !422, line: 238, baseType: !16, size: 8, offset: 96)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !985, file: !422, line: 238, baseType: !16, size: 8, offset: 104)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !985, file: !422, line: 238, baseType: !16, size: 8, offset: 112)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !985, file: !422, line: 238, baseType: !16, size: 8, offset: 120)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !985, file: !422, line: 238, baseType: !415, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !985, file: !422, line: 238, baseType: !6, size: 32, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !985, file: !422, line: 238, baseType: !6, size: 32, offset: 224)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !985, file: !422, line: 238, baseType: !6, size: 32, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !985, file: !422, line: 238, baseType: !16, size: 8, offset: 288)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !985, file: !422, line: 238, baseType: !16, size: 8, offset: 296)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !985, file: !422, line: 238, baseType: !45, size: 16, offset: 304)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !985, file: !422, line: 239, baseType: !420, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !985, file: !422, line: 240, baseType: !249, size: 64, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !985, file: !422, line: 241, baseType: !45, size: 16, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !985, file: !422, line: 242, baseType: !249, size: 64, offset: 512)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !421, file: !422, line: 384, baseType: !1007, size: 384)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !422, line: 262, size: 384, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1007, file: !422, line: 263, baseType: !420, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1007, file: !422, line: 263, baseType: !16, size: 8, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1007, file: !422, line: 263, baseType: !16, size: 8, offset: 72)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1007, file: !422, line: 263, baseType: !45, size: 16, offset: 80)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1007, file: !422, line: 263, baseType: !16, size: 8, offset: 96)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1007, file: !422, line: 263, baseType: !16, size: 8, offset: 104)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1007, file: !422, line: 263, baseType: !16, size: 8, offset: 112)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1007, file: !422, line: 263, baseType: !16, size: 8, offset: 120)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1007, file: !422, line: 263, baseType: !415, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1007, file: !422, line: 263, baseType: !6, size: 32, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1007, file: !422, line: 263, baseType: !6, size: 32, offset: 224)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1007, file: !422, line: 263, baseType: !6, size: 32, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1007, file: !422, line: 263, baseType: !16, size: 8, offset: 288)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1007, file: !422, line: 263, baseType: !16, size: 8, offset: 296)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !1007, file: !422, line: 263, baseType: !16, size: 8, offset: 304)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !1007, file: !422, line: 264, baseType: !420, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !421, file: !422, line: 385, baseType: !1026, size: 448)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !422, line: 245, size: 448, elements: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1026, file: !422, line: 246, baseType: !420, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1026, file: !422, line: 246, baseType: !16, size: 8, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1026, file: !422, line: 246, baseType: !16, size: 8, offset: 72)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1026, file: !422, line: 246, baseType: !45, size: 16, offset: 80)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1026, file: !422, line: 246, baseType: !16, size: 8, offset: 96)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1026, file: !422, line: 246, baseType: !16, size: 8, offset: 104)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1026, file: !422, line: 246, baseType: !16, size: 8, offset: 112)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1026, file: !422, line: 246, baseType: !16, size: 8, offset: 120)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1026, file: !422, line: 246, baseType: !415, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1026, file: !422, line: 246, baseType: !6, size: 32, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1026, file: !422, line: 246, baseType: !6, size: 32, offset: 224)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1026, file: !422, line: 246, baseType: !6, size: 32, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1026, file: !422, line: 246, baseType: !16, size: 8, offset: 288)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1026, file: !422, line: 246, baseType: !16, size: 8, offset: 296)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1026, file: !422, line: 246, baseType: !420, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !1026, file: !422, line: 247, baseType: !420, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !421, file: !422, line: 386, baseType: !1045, size: 448)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !422, line: 250, size: 448, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1045, file: !422, line: 251, baseType: !420, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1045, file: !422, line: 251, baseType: !16, size: 8, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1045, file: !422, line: 251, baseType: !16, size: 8, offset: 72)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1045, file: !422, line: 251, baseType: !45, size: 16, offset: 80)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1045, file: !422, line: 251, baseType: !16, size: 8, offset: 96)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1045, file: !422, line: 251, baseType: !16, size: 8, offset: 104)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1045, file: !422, line: 251, baseType: !16, size: 8, offset: 112)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1045, file: !422, line: 251, baseType: !16, size: 8, offset: 120)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1045, file: !422, line: 251, baseType: !415, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1045, file: !422, line: 251, baseType: !6, size: 32, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1045, file: !422, line: 251, baseType: !6, size: 32, offset: 224)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1045, file: !422, line: 251, baseType: !6, size: 32, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1045, file: !422, line: 251, baseType: !16, size: 8, offset: 288)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1045, file: !422, line: 251, baseType: !16, size: 8, offset: 296)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !1045, file: !422, line: 256, baseType: !420, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !1045, file: !422, line: 257, baseType: !420, size: 64, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !421, file: !422, line: 387, baseType: !1064, size: 512)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !422, line: 273, size: 512, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1064, file: !422, line: 274, baseType: !420, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1064, file: !422, line: 274, baseType: !16, size: 8, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1064, file: !422, line: 274, baseType: !16, size: 8, offset: 72)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1064, file: !422, line: 274, baseType: !45, size: 16, offset: 80)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1064, file: !422, line: 274, baseType: !16, size: 8, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1064, file: !422, line: 274, baseType: !415, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !1064, file: !422, line: 275, baseType: !6, size: 32, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1064, file: !422, line: 276, baseType: !742, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1064, file: !422, line: 277, baseType: !60, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1064, file: !422, line: 278, baseType: !848, size: 128, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !421, file: !422, line: 388, baseType: !1077, size: 512)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !422, line: 281, size: 512, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1092, !1093, !1094, !1100, !1101}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1077, file: !422, line: 282, baseType: !420, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1077, file: !422, line: 282, baseType: !16, size: 8, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1077, file: !422, line: 282, baseType: !16, size: 8, offset: 72)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1077, file: !422, line: 282, baseType: !45, size: 16, offset: 80)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !422, line: 282, baseType: !16, size: 8, offset: 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1077, file: !422, line: 282, baseType: !16, size: 8, offset: 104)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !1077, file: !422, line: 283, baseType: !16, size: 8, offset: 112)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1077, file: !422, line: 284, baseType: !1087, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !5, line: 1084, baseType: !1088)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!4, !6, !837, !6, !1091, !60, !60}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1077, file: !422, line: 285, baseType: !415, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1077, file: !422, line: 286, baseType: !60, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1077, file: !422, line: 287, baseType: !1095, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !5, line: 1102, baseType: !1096)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!4, !402, !6, !60, !1099}
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !1077, file: !422, line: 288, baseType: !420, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1077, file: !422, line: 289, baseType: !420, size: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !421, file: !422, line: 389, baseType: !1103, size: 512)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !422, line: 307, size: 512, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1103, file: !422, line: 308, baseType: !420, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1103, file: !422, line: 308, baseType: !16, size: 8, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1103, file: !422, line: 308, baseType: !16, size: 8, offset: 72)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1103, file: !422, line: 308, baseType: !45, size: 16, offset: 80)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1103, file: !422, line: 308, baseType: !16, size: 8, offset: 96)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1103, file: !422, line: 308, baseType: !16, size: 8, offset: 104)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !1103, file: !422, line: 309, baseType: !16, size: 8, offset: 112)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !1103, file: !422, line: 310, baseType: !16, size: 8, offset: 120)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1103, file: !422, line: 311, baseType: !60, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1103, file: !422, line: 312, baseType: !415, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !1103, file: !422, line: 313, baseType: !478, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !1103, file: !422, line: 314, baseType: !249, size: 64, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1103, file: !422, line: 315, baseType: !249, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1103, file: !422, line: 316, baseType: !6, size: 32, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !421, file: !422, line: 390, baseType: !1120, size: 448)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !422, line: 340, size: 448, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1120, file: !422, line: 341, baseType: !420, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1120, file: !422, line: 341, baseType: !16, size: 8, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1120, file: !422, line: 341, baseType: !16, size: 8, offset: 72)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1120, file: !422, line: 341, baseType: !45, size: 16, offset: 80)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1120, file: !422, line: 341, baseType: !16, size: 8, offset: 96)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !1120, file: !422, line: 341, baseType: !415, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !1120, file: !422, line: 342, baseType: !415, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !1120, file: !422, line: 343, baseType: !60, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1120, file: !422, line: 344, baseType: !249, size: 64, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1120, file: !422, line: 345, baseType: !6, size: 32, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !421, file: !422, line: 391, baseType: !1133, size: 256)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !422, line: 350, size: 256, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140, !1145}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1133, file: !422, line: 351, baseType: !420, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1133, file: !422, line: 351, baseType: !16, size: 8, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1133, file: !422, line: 351, baseType: !16, size: 8, offset: 72)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1133, file: !422, line: 351, baseType: !45, size: 16, offset: 80)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !422, line: 351, baseType: !16, size: 8, offset: 96)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1133, file: !422, line: 351, baseType: !1141, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !5, line: 1055, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !402, !60}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1133, file: !422, line: 352, baseType: !60, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !421, file: !422, line: 392, baseType: !1147, size: 192)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !422, line: 357, size: 192, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1147, file: !422, line: 358, baseType: !420, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1147, file: !422, line: 358, baseType: !16, size: 8, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1147, file: !422, line: 358, baseType: !16, size: 8, offset: 72)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1147, file: !422, line: 358, baseType: !45, size: 16, offset: 80)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1147, file: !422, line: 358, baseType: !16, size: 8, offset: 96)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1147, file: !422, line: 358, baseType: !420, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !421, file: !422, line: 399, baseType: !416, size: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !416, file: !417, line: 135, baseType: !16, size: 8, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !416, file: !417, line: 136, baseType: !16, size: 8, offset: 72)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !417, line: 137, baseType: !45, size: 16, offset: 80)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !416, file: !417, line: 138, baseType: !1160, size: 32, offset: 96)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !1161, line: 327, size: 32, elements: !1162)
!1161 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1160, file: !1161, line: 328, baseType: !6, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !1160, file: !1161, line: 329, baseType: !607, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !416, file: !417, line: 139, baseType: !415, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !416, file: !417, line: 140, baseType: !415, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !416, file: !417, line: 141, baseType: !415, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !416, file: !417, line: 142, baseType: !525, size: 16, offset: 320)
!1169 = !DILocation(line: 126, column: 30, scope: !399)
!1170 = !DILocation(line: 132, column: 39, scope: !399)
!1171 = !DILocation(line: 132, column: 54, scope: !399)
!1172 = !DILocation(line: 132, column: 11, scope: !399)
!1173 = !DILocation(line: 132, column: 9, scope: !399)
!1174 = !DILocation(line: 133, column: 6, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !399, file: !1, line: 133, column: 6)
!1176 = !DILocation(line: 133, column: 6, scope: !399)
!1177 = !DILocation(line: 134, column: 3, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1175, file: !1, line: 133, column: 28)
!1179 = !DILocation(line: 137, column: 39, scope: !399)
!1180 = !DILocation(line: 137, column: 45, scope: !399)
!1181 = !DILocation(line: 137, column: 11, scope: !399)
!1182 = !DILocation(line: 137, column: 9, scope: !399)
!1183 = !DILocation(line: 138, column: 2, scope: !399)
!1184 = !DILocation(line: 139, column: 1, scope: !399)
!1185 = distinct !DISubprogram(name: "acpi_rs_validate_parameters", scope: !1, file: !1, line: 57, type: !1186, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!4, !402, !403, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!1189 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1185, file: !1, line: 57, type: !402)
!1190 = !DILocation(line: 57, column: 41, scope: !1185)
!1191 = !DILocalVariable(name: "buffer", arg: 2, scope: !1185, file: !1, line: 58, type: !403)
!1192 = !DILocation(line: 58, column: 28, scope: !1185)
!1193 = !DILocalVariable(name: "return_node", arg: 3, scope: !1185, file: !1, line: 59, type: !1188)
!1194 = !DILocation(line: 59, column: 37, scope: !1185)
!1195 = !DILocalVariable(name: "status", scope: !1185, file: !1, line: 61, type: !4)
!1196 = !DILocation(line: 61, column: 14, scope: !1185)
!1197 = !DILocalVariable(name: "node", scope: !1185, file: !1, line: 62, type: !415)
!1198 = !DILocation(line: 62, column: 30, scope: !1185)
!1199 = !DILocation(line: 69, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 69, column: 6)
!1201 = !DILocation(line: 69, column: 6, scope: !1185)
!1202 = !DILocation(line: 70, column: 3, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 69, column: 22)
!1204 = !DILocation(line: 73, column: 33, scope: !1185)
!1205 = !DILocation(line: 73, column: 9, scope: !1185)
!1206 = !DILocation(line: 73, column: 7, scope: !1185)
!1207 = !DILocation(line: 74, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 74, column: 6)
!1209 = !DILocation(line: 74, column: 6, scope: !1185)
!1210 = !DILocation(line: 75, column: 3, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 74, column: 13)
!1212 = !DILocation(line: 78, column: 6, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 78, column: 6)
!1214 = !DILocation(line: 78, column: 12, scope: !1213)
!1215 = !DILocation(line: 78, column: 17, scope: !1213)
!1216 = !DILocation(line: 78, column: 6, scope: !1185)
!1217 = !DILocation(line: 79, column: 3, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !1, line: 78, column: 38)
!1219 = !DILocation(line: 89, column: 35, scope: !1185)
!1220 = !DILocation(line: 89, column: 11, scope: !1185)
!1221 = !DILocation(line: 89, column: 9, scope: !1185)
!1222 = !DILocation(line: 90, column: 6, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 90, column: 6)
!1224 = !DILocation(line: 90, column: 6, scope: !1185)
!1225 = !DILocation(line: 91, column: 3, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 90, column: 28)
!1227 = !DILocation(line: 94, column: 17, scope: !1185)
!1228 = !DILocation(line: 94, column: 3, scope: !1185)
!1229 = !DILocation(line: 94, column: 15, scope: !1185)
!1230 = !DILocation(line: 95, column: 2, scope: !1185)
!1231 = !DILocation(line: 96, column: 1, scope: !1185)
!1232 = distinct !DISubprogram(name: "acpi_get_current_resources", scope: !1, file: !1, line: 167, type: !400, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1233 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1232, file: !1, line: 167, type: !402)
!1234 = !DILocation(line: 167, column: 40, scope: !1232)
!1235 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1232, file: !1, line: 168, type: !403)
!1236 = !DILocation(line: 168, column: 27, scope: !1232)
!1237 = !DILocalVariable(name: "status", scope: !1232, file: !1, line: 170, type: !4)
!1238 = !DILocation(line: 170, column: 14, scope: !1232)
!1239 = !DILocalVariable(name: "node", scope: !1232, file: !1, line: 171, type: !415)
!1240 = !DILocation(line: 171, column: 30, scope: !1232)
!1241 = !DILocation(line: 177, column: 39, scope: !1232)
!1242 = !DILocation(line: 177, column: 54, scope: !1232)
!1243 = !DILocation(line: 177, column: 11, scope: !1232)
!1244 = !DILocation(line: 177, column: 9, scope: !1232)
!1245 = !DILocation(line: 178, column: 6, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1232, file: !1, line: 178, column: 6)
!1247 = !DILocation(line: 178, column: 6, scope: !1232)
!1248 = !DILocation(line: 179, column: 3, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !1, line: 178, column: 28)
!1250 = !DILocation(line: 182, column: 39, scope: !1232)
!1251 = !DILocation(line: 182, column: 45, scope: !1232)
!1252 = !DILocation(line: 182, column: 11, scope: !1232)
!1253 = !DILocation(line: 182, column: 9, scope: !1232)
!1254 = !DILocation(line: 183, column: 2, scope: !1232)
!1255 = !DILocation(line: 184, column: 1, scope: !1232)
!1256 = distinct !DISubprogram(name: "acpi_get_possible_resources", scope: !1, file: !1, line: 209, type: !400, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1257 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1256, file: !1, line: 209, type: !402)
!1258 = !DILocation(line: 209, column: 41, scope: !1256)
!1259 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1256, file: !1, line: 210, type: !403)
!1260 = !DILocation(line: 210, column: 28, scope: !1256)
!1261 = !DILocalVariable(name: "status", scope: !1256, file: !1, line: 212, type: !4)
!1262 = !DILocation(line: 212, column: 14, scope: !1256)
!1263 = !DILocalVariable(name: "node", scope: !1256, file: !1, line: 213, type: !415)
!1264 = !DILocation(line: 213, column: 30, scope: !1256)
!1265 = !DILocation(line: 219, column: 39, scope: !1256)
!1266 = !DILocation(line: 219, column: 54, scope: !1256)
!1267 = !DILocation(line: 219, column: 11, scope: !1256)
!1268 = !DILocation(line: 219, column: 9, scope: !1256)
!1269 = !DILocation(line: 220, column: 6, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1256, file: !1, line: 220, column: 6)
!1271 = !DILocation(line: 220, column: 6, scope: !1256)
!1272 = !DILocation(line: 221, column: 3, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 220, column: 28)
!1274 = !DILocation(line: 224, column: 39, scope: !1256)
!1275 = !DILocation(line: 224, column: 45, scope: !1256)
!1276 = !DILocation(line: 224, column: 11, scope: !1256)
!1277 = !DILocation(line: 224, column: 9, scope: !1256)
!1278 = !DILocation(line: 225, column: 2, scope: !1256)
!1279 = !DILocation(line: 226, column: 1, scope: !1256)
!1280 = distinct !DISubprogram(name: "acpi_set_current_resources", scope: !1, file: !1, line: 248, type: !400, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1281 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1280, file: !1, line: 248, type: !402)
!1282 = !DILocation(line: 248, column: 40, scope: !1280)
!1283 = !DILocalVariable(name: "in_buffer", arg: 2, scope: !1280, file: !1, line: 249, type: !403)
!1284 = !DILocation(line: 249, column: 27, scope: !1280)
!1285 = !DILocalVariable(name: "status", scope: !1280, file: !1, line: 251, type: !4)
!1286 = !DILocation(line: 251, column: 14, scope: !1280)
!1287 = !DILocalVariable(name: "node", scope: !1280, file: !1, line: 252, type: !415)
!1288 = !DILocation(line: 252, column: 30, scope: !1280)
!1289 = !DILocation(line: 258, column: 8, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 258, column: 6)
!1291 = !DILocation(line: 258, column: 19, scope: !1290)
!1292 = !DILocation(line: 258, column: 24, scope: !1290)
!1293 = !DILocation(line: 258, column: 35, scope: !1290)
!1294 = !DILocation(line: 258, column: 44, scope: !1290)
!1295 = !DILocation(line: 258, column: 49, scope: !1290)
!1296 = !DILocation(line: 258, column: 60, scope: !1290)
!1297 = !DILocation(line: 258, column: 6, scope: !1280)
!1298 = !DILocation(line: 259, column: 3, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 258, column: 69)
!1300 = !DILocation(line: 264, column: 39, scope: !1280)
!1301 = !DILocation(line: 264, column: 54, scope: !1280)
!1302 = !DILocation(line: 264, column: 11, scope: !1280)
!1303 = !DILocation(line: 264, column: 9, scope: !1280)
!1304 = !DILocation(line: 265, column: 6, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 265, column: 6)
!1306 = !DILocation(line: 265, column: 6, scope: !1280)
!1307 = !DILocation(line: 266, column: 3, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 265, column: 28)
!1309 = !DILocation(line: 269, column: 39, scope: !1280)
!1310 = !DILocation(line: 269, column: 45, scope: !1280)
!1311 = !DILocation(line: 269, column: 11, scope: !1280)
!1312 = !DILocation(line: 269, column: 9, scope: !1280)
!1313 = !DILocation(line: 270, column: 2, scope: !1280)
!1314 = !DILocation(line: 271, column: 1, scope: !1280)
!1315 = distinct !DISubprogram(name: "acpi_get_event_resources", scope: !1, file: !1, line: 294, type: !400, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1316 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1315, file: !1, line: 294, type: !402)
!1317 = !DILocation(line: 294, column: 38, scope: !1315)
!1318 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1315, file: !1, line: 295, type: !403)
!1319 = !DILocation(line: 295, column: 25, scope: !1315)
!1320 = !DILocalVariable(name: "status", scope: !1315, file: !1, line: 297, type: !4)
!1321 = !DILocation(line: 297, column: 14, scope: !1315)
!1322 = !DILocalVariable(name: "node", scope: !1315, file: !1, line: 298, type: !415)
!1323 = !DILocation(line: 298, column: 30, scope: !1315)
!1324 = !DILocation(line: 304, column: 39, scope: !1315)
!1325 = !DILocation(line: 304, column: 54, scope: !1315)
!1326 = !DILocation(line: 304, column: 11, scope: !1315)
!1327 = !DILocation(line: 304, column: 9, scope: !1315)
!1328 = !DILocation(line: 305, column: 6, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 305, column: 6)
!1330 = !DILocation(line: 305, column: 6, scope: !1315)
!1331 = !DILocation(line: 306, column: 3, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !1, line: 305, column: 28)
!1333 = !DILocation(line: 309, column: 39, scope: !1315)
!1334 = !DILocation(line: 309, column: 45, scope: !1315)
!1335 = !DILocation(line: 309, column: 11, scope: !1315)
!1336 = !DILocation(line: 309, column: 9, scope: !1315)
!1337 = !DILocation(line: 310, column: 2, scope: !1315)
!1338 = !DILocation(line: 311, column: 1, scope: !1315)
!1339 = distinct !DISubprogram(name: "acpi_resource_to_address64", scope: !1, file: !1, line: 332, type: !1340, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!4, !79, !1342}
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1343 = !DILocalVariable(name: "resource", arg: 1, scope: !1339, file: !1, line: 332, type: !79)
!1344 = !DILocation(line: 332, column: 50, scope: !1339)
!1345 = !DILocalVariable(name: "out", arg: 2, scope: !1339, file: !1, line: 333, type: !1342)
!1346 = !DILocation(line: 333, column: 39, scope: !1339)
!1347 = !DILocalVariable(name: "address16", scope: !1339, file: !1, line: 335, type: !11)
!1348 = !DILocation(line: 335, column: 34, scope: !1339)
!1349 = !DILocalVariable(name: "address32", scope: !1339, file: !1, line: 336, type: !61)
!1350 = !DILocation(line: 336, column: 34, scope: !1339)
!1351 = !DILocation(line: 338, column: 7, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 338, column: 6)
!1353 = !DILocation(line: 338, column: 16, scope: !1352)
!1354 = !DILocation(line: 338, column: 20, scope: !1352)
!1355 = !DILocation(line: 338, column: 6, scope: !1339)
!1356 = !DILocation(line: 339, column: 3, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 338, column: 25)
!1358 = !DILocation(line: 344, column: 10, scope: !1339)
!1359 = !DILocation(line: 344, column: 20, scope: !1339)
!1360 = !DILocation(line: 344, column: 2, scope: !1339)
!1361 = !DILocation(line: 348, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 344, column: 26)
!1363 = !DILocation(line: 347, column: 13, scope: !1362)
!1364 = !DILocation(line: 350, column: 3, scope: !1362)
!1365 = !DILocation(line: 351, column: 3, scope: !1362)
!1366 = !DILocation(line: 356, column: 7, scope: !1362)
!1367 = !DILocation(line: 355, column: 13, scope: !1362)
!1368 = !DILocation(line: 358, column: 3, scope: !1362)
!1369 = !DILocation(line: 359, column: 3, scope: !1362)
!1370 = !DILocation(line: 365, column: 10, scope: !1362)
!1371 = !DILocation(line: 365, column: 3, scope: !1362)
!1372 = !DILocation(line: 365, column: 16, scope: !1362)
!1373 = !DILocation(line: 365, column: 26, scope: !1362)
!1374 = !DILocation(line: 367, column: 3, scope: !1362)
!1375 = !DILocation(line: 371, column: 3, scope: !1362)
!1376 = !DILocation(line: 374, column: 2, scope: !1339)
!1377 = !DILocation(line: 375, column: 1, scope: !1339)
!1378 = distinct !DISubprogram(name: "acpi_get_vendor_resource", scope: !1, file: !1, line: 398, type: !1379, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!4, !402, !58, !1381, !403}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_vendor_uuid", file: !13, line: 130, size: 136, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !1382, file: !13, line: 131, baseType: !16, size: 8)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1382, file: !13, line: 132, baseType: !144, size: 128, offset: 8)
!1386 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1378, file: !1, line: 398, type: !402)
!1387 = !DILocation(line: 398, column: 38, scope: !1378)
!1388 = !DILocalVariable(name: "name", arg: 2, scope: !1378, file: !1, line: 399, type: !58)
!1389 = !DILocation(line: 399, column: 11, scope: !1378)
!1390 = !DILocalVariable(name: "uuid", arg: 3, scope: !1378, file: !1, line: 400, type: !1381)
!1391 = !DILocation(line: 400, column: 30, scope: !1378)
!1392 = !DILocalVariable(name: "ret_buffer", arg: 4, scope: !1378, file: !1, line: 401, type: !403)
!1393 = !DILocation(line: 401, column: 25, scope: !1378)
!1394 = !DILocalVariable(name: "info", scope: !1378, file: !1, line: 403, type: !1395)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_vendor_walk_info", file: !1396, line: 142, size: 192, elements: !1397)
!1396 = !DIFile(filename: "drivers/acpi/acpica/acresrc.h", directory: "/home/lizy2001/genbc/linux")
!1397 = !{!1398, !1399, !1400}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !1395, file: !1396, line: 143, baseType: !1381, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1395, file: !1396, line: 144, baseType: !403, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1395, file: !1396, line: 145, baseType: !4, size: 32, offset: 128)
!1401 = !DILocation(line: 403, column: 31, scope: !1378)
!1402 = !DILocalVariable(name: "status", scope: !1378, file: !1, line: 404, type: !4)
!1403 = !DILocation(line: 404, column: 14, scope: !1378)
!1404 = !DILocation(line: 408, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 408, column: 6)
!1406 = !DILocation(line: 408, column: 12, scope: !1405)
!1407 = !DILocation(line: 408, column: 16, scope: !1405)
!1408 = !DILocation(line: 408, column: 6, scope: !1378)
!1409 = !DILocation(line: 409, column: 3, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1405, file: !1, line: 408, column: 28)
!1411 = !DILocation(line: 412, column: 14, scope: !1378)
!1412 = !DILocation(line: 412, column: 7, scope: !1378)
!1413 = !DILocation(line: 412, column: 12, scope: !1378)
!1414 = !DILocation(line: 413, column: 16, scope: !1378)
!1415 = !DILocation(line: 413, column: 7, scope: !1378)
!1416 = !DILocation(line: 413, column: 14, scope: !1378)
!1417 = !DILocation(line: 414, column: 7, scope: !1378)
!1418 = !DILocation(line: 414, column: 14, scope: !1378)
!1419 = !DILocation(line: 419, column: 26, scope: !1378)
!1420 = !DILocation(line: 419, column: 41, scope: !1378)
!1421 = !DILocation(line: 420, column: 36, scope: !1378)
!1422 = !DILocation(line: 419, column: 6, scope: !1378)
!1423 = !DILocation(line: 418, column: 9, scope: !1378)
!1424 = !DILocation(line: 421, column: 6, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 421, column: 6)
!1426 = !DILocation(line: 421, column: 6, scope: !1378)
!1427 = !DILocation(line: 422, column: 11, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 421, column: 28)
!1429 = !DILocation(line: 422, column: 3, scope: !1428)
!1430 = !DILocation(line: 425, column: 15, scope: !1378)
!1431 = !DILocation(line: 425, column: 2, scope: !1378)
!1432 = !DILocation(line: 426, column: 1, scope: !1378)
!1433 = distinct !DISubprogram(name: "acpi_walk_resources", scope: !1, file: !1, line: 594, type: !1434, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!4, !402, !58, !1436, !60}
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_resource_callback", file: !1437, line: 776, baseType: !1438)
!1437 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!4, !79, !60}
!1441 = !DILocalVariable(name: "device_handle", arg: 1, scope: !1433, file: !1, line: 594, type: !402)
!1442 = !DILocation(line: 594, column: 33, scope: !1433)
!1443 = !DILocalVariable(name: "name", arg: 2, scope: !1433, file: !1, line: 595, type: !58)
!1444 = !DILocation(line: 595, column: 13, scope: !1433)
!1445 = !DILocalVariable(name: "user_function", arg: 3, scope: !1433, file: !1, line: 596, type: !1436)
!1446 = !DILocation(line: 596, column: 35, scope: !1433)
!1447 = !DILocalVariable(name: "context", arg: 4, scope: !1433, file: !1, line: 596, type: !60)
!1448 = !DILocation(line: 596, column: 56, scope: !1433)
!1449 = !DILocalVariable(name: "status", scope: !1433, file: !1, line: 598, type: !4)
!1450 = !DILocation(line: 598, column: 14, scope: !1433)
!1451 = !DILocalVariable(name: "buffer", scope: !1433, file: !1, line: 599, type: !404)
!1452 = !DILocation(line: 599, column: 21, scope: !1433)
!1453 = !DILocation(line: 605, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 605, column: 6)
!1455 = !DILocation(line: 605, column: 21, scope: !1454)
!1456 = !DILocation(line: 605, column: 25, scope: !1454)
!1457 = !DILocation(line: 605, column: 39, scope: !1454)
!1458 = !DILocation(line: 605, column: 43, scope: !1454)
!1459 = !DILocation(line: 605, column: 48, scope: !1454)
!1460 = !DILocation(line: 606, column: 8, scope: !1454)
!1461 = !DILocation(line: 606, column: 53, scope: !1454)
!1462 = !DILocation(line: 607, column: 8, scope: !1454)
!1463 = !DILocation(line: 607, column: 53, scope: !1454)
!1464 = !DILocation(line: 608, column: 8, scope: !1454)
!1465 = !DILocation(line: 608, column: 53, scope: !1454)
!1466 = !DILocation(line: 609, column: 8, scope: !1454)
!1467 = !DILocation(line: 605, column: 6, scope: !1433)
!1468 = !DILocation(line: 610, column: 3, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 609, column: 55)
!1470 = !DILocation(line: 615, column: 9, scope: !1433)
!1471 = !DILocation(line: 615, column: 16, scope: !1433)
!1472 = !DILocation(line: 616, column: 35, scope: !1433)
!1473 = !DILocation(line: 616, column: 50, scope: !1433)
!1474 = !DILocation(line: 616, column: 11, scope: !1433)
!1475 = !DILocation(line: 616, column: 9, scope: !1433)
!1476 = !DILocation(line: 617, column: 6, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 617, column: 6)
!1478 = !DILocation(line: 617, column: 6, scope: !1433)
!1479 = !DILocation(line: 618, column: 3, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !1, line: 617, column: 28)
!1481 = !DILocation(line: 623, column: 46, scope: !1433)
!1482 = !DILocation(line: 623, column: 61, scope: !1433)
!1483 = !DILocation(line: 623, column: 11, scope: !1433)
!1484 = !DILocation(line: 623, column: 9, scope: !1433)
!1485 = !DILocation(line: 624, column: 2, scope: !1433)
!1486 = !DILocation(line: 625, column: 2, scope: !1433)
!1487 = !DILocation(line: 626, column: 1, scope: !1433)
!1488 = distinct !DISubprogram(name: "acpi_rs_match_vendor_resource", scope: !1, file: !1, line: 442, type: !1439, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1489 = !DILocalVariable(name: "resource", arg: 1, scope: !1488, file: !1, line: 442, type: !79)
!1490 = !DILocation(line: 442, column: 53, scope: !1488)
!1491 = !DILocalVariable(name: "context", arg: 2, scope: !1488, file: !1, line: 442, type: !60)
!1492 = !DILocation(line: 442, column: 69, scope: !1488)
!1493 = !DILocalVariable(name: "info", scope: !1488, file: !1, line: 444, type: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1495 = !DILocation(line: 444, column: 32, scope: !1488)
!1496 = !DILocation(line: 444, column: 39, scope: !1488)
!1497 = !DILocalVariable(name: "vendor", scope: !1488, file: !1, line: 445, type: !1498)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1499 = !DILocation(line: 445, column: 37, scope: !1488)
!1500 = !DILocalVariable(name: "buffer", scope: !1488, file: !1, line: 446, type: !403)
!1501 = !DILocation(line: 446, column: 22, scope: !1488)
!1502 = !DILocalVariable(name: "status", scope: !1488, file: !1, line: 447, type: !4)
!1503 = !DILocation(line: 447, column: 14, scope: !1488)
!1504 = !DILocation(line: 451, column: 6, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 451, column: 6)
!1506 = !DILocation(line: 451, column: 16, scope: !1505)
!1507 = !DILocation(line: 451, column: 21, scope: !1505)
!1508 = !DILocation(line: 451, column: 6, scope: !1488)
!1509 = !DILocation(line: 452, column: 3, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 451, column: 51)
!1511 = !DILocation(line: 455, column: 12, scope: !1488)
!1512 = !DILocation(line: 455, column: 22, scope: !1488)
!1513 = !DILocation(line: 455, column: 27, scope: !1488)
!1514 = !DILocation(line: 455, column: 9, scope: !1488)
!1515 = !DILocation(line: 464, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 464, column: 6)
!1517 = !DILocation(line: 464, column: 15, scope: !1516)
!1518 = !DILocation(line: 464, column: 27, scope: !1516)
!1519 = !DILocation(line: 464, column: 53, scope: !1516)
!1520 = !DILocation(line: 465, column: 7, scope: !1516)
!1521 = !DILocation(line: 465, column: 15, scope: !1516)
!1522 = !DILocation(line: 465, column: 31, scope: !1516)
!1523 = !DILocation(line: 465, column: 37, scope: !1516)
!1524 = !DILocation(line: 465, column: 43, scope: !1516)
!1525 = !DILocation(line: 465, column: 28, scope: !1516)
!1526 = !DILocation(line: 465, column: 52, scope: !1516)
!1527 = !DILocation(line: 466, column: 14, scope: !1516)
!1528 = !DILocation(line: 466, column: 22, scope: !1516)
!1529 = !DILocation(line: 466, column: 28, scope: !1516)
!1530 = !DILocation(line: 466, column: 34, scope: !1516)
!1531 = !DILocation(line: 466, column: 40, scope: !1516)
!1532 = !DILocation(line: 466, column: 7, scope: !1516)
!1533 = !DILocation(line: 464, column: 6, scope: !1488)
!1534 = !DILocation(line: 467, column: 3, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 466, column: 66)
!1536 = !DILocation(line: 472, column: 11, scope: !1488)
!1537 = !DILocation(line: 472, column: 17, scope: !1488)
!1538 = !DILocation(line: 472, column: 9, scope: !1488)
!1539 = !DILocation(line: 473, column: 37, scope: !1488)
!1540 = !DILocation(line: 473, column: 45, scope: !1488)
!1541 = !DILocation(line: 473, column: 55, scope: !1488)
!1542 = !DILocation(line: 473, column: 11, scope: !1488)
!1543 = !DILocation(line: 473, column: 9, scope: !1488)
!1544 = !DILocation(line: 474, column: 6, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 474, column: 6)
!1546 = !DILocation(line: 474, column: 6, scope: !1488)
!1547 = !DILocation(line: 475, column: 11, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !1, line: 474, column: 28)
!1549 = !DILocation(line: 475, column: 3, scope: !1548)
!1550 = !DILocation(line: 480, column: 9, scope: !1488)
!1551 = !DILocation(line: 480, column: 17, scope: !1488)
!1552 = !DILocation(line: 480, column: 26, scope: !1488)
!1553 = !DILocation(line: 480, column: 2, scope: !1488)
!1554 = !DILocation(line: 480, column: 36, scope: !1488)
!1555 = !DILocation(line: 480, column: 46, scope: !1488)
!1556 = !DILocation(line: 481, column: 19, scope: !1488)
!1557 = !DILocation(line: 481, column: 29, scope: !1488)
!1558 = !DILocation(line: 481, column: 2, scope: !1488)
!1559 = !DILocation(line: 481, column: 10, scope: !1488)
!1560 = !DILocation(line: 481, column: 17, scope: !1488)
!1561 = !DILocation(line: 485, column: 2, scope: !1488)
!1562 = !DILocation(line: 485, column: 8, scope: !1488)
!1563 = !DILocation(line: 485, column: 15, scope: !1488)
!1564 = !DILocation(line: 486, column: 2, scope: !1488)
!1565 = !DILocation(line: 487, column: 1, scope: !1488)
!1566 = distinct !DISubprogram(name: "acpi_walk_resource_buffer", scope: !1, file: !1, line: 506, type: !1567, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!4, !403, !1436, !60}
!1569 = !DILocalVariable(name: "buffer", arg: 1, scope: !1566, file: !1, line: 506, type: !403)
!1570 = !DILocation(line: 506, column: 47, scope: !1566)
!1571 = !DILocalVariable(name: "user_function", arg: 2, scope: !1566, file: !1, line: 507, type: !1436)
!1572 = !DILocation(line: 507, column: 34, scope: !1566)
!1573 = !DILocalVariable(name: "context", arg: 3, scope: !1566, file: !1, line: 508, type: !60)
!1574 = !DILocation(line: 508, column: 12, scope: !1566)
!1575 = !DILocalVariable(name: "status", scope: !1566, file: !1, line: 510, type: !4)
!1576 = !DILocation(line: 510, column: 14, scope: !1566)
!1577 = !DILocalVariable(name: "resource", scope: !1566, file: !1, line: 511, type: !79)
!1578 = !DILocation(line: 511, column: 24, scope: !1566)
!1579 = !DILocalVariable(name: "resource_end", scope: !1566, file: !1, line: 512, type: !79)
!1580 = !DILocation(line: 512, column: 24, scope: !1566)
!1581 = !DILocation(line: 518, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 518, column: 6)
!1583 = !DILocation(line: 518, column: 14, scope: !1582)
!1584 = !DILocation(line: 518, column: 18, scope: !1582)
!1585 = !DILocation(line: 518, column: 26, scope: !1582)
!1586 = !DILocation(line: 518, column: 34, scope: !1582)
!1587 = !DILocation(line: 518, column: 38, scope: !1582)
!1588 = !DILocation(line: 518, column: 6, scope: !1566)
!1589 = !DILocation(line: 519, column: 3, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1582, file: !1, line: 518, column: 53)
!1591 = !DILocation(line: 524, column: 13, scope: !1566)
!1592 = !DILocation(line: 524, column: 11, scope: !1566)
!1593 = !DILocation(line: 526, column: 6, scope: !1566)
!1594 = !DILocation(line: 525, column: 15, scope: !1566)
!1595 = !DILocation(line: 530, column: 2, scope: !1566)
!1596 = !DILocation(line: 530, column: 9, scope: !1566)
!1597 = !DILocation(line: 530, column: 20, scope: !1566)
!1598 = !DILocation(line: 530, column: 18, scope: !1566)
!1599 = !DILocation(line: 534, column: 7, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 534, column: 7)
!1601 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 530, column: 34)
!1602 = !DILocation(line: 534, column: 17, scope: !1600)
!1603 = !DILocation(line: 534, column: 22, scope: !1600)
!1604 = !DILocation(line: 534, column: 7, scope: !1601)
!1605 = !DILocation(line: 535, column: 11, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 534, column: 48)
!1607 = !DILocation(line: 536, column: 4, scope: !1606)
!1608 = !DILocation(line: 541, column: 8, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 541, column: 7)
!1610 = !DILocation(line: 541, column: 18, scope: !1609)
!1611 = !DILocation(line: 541, column: 7, scope: !1601)
!1612 = !DILocation(line: 542, column: 4, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !1, line: 541, column: 26)
!1614 = !DILocation(line: 547, column: 12, scope: !1601)
!1615 = !DILocation(line: 547, column: 26, scope: !1601)
!1616 = !DILocation(line: 547, column: 36, scope: !1601)
!1617 = !DILocation(line: 547, column: 10, scope: !1601)
!1618 = !DILocation(line: 548, column: 7, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 548, column: 7)
!1620 = !DILocation(line: 548, column: 7, scope: !1601)
!1621 = !DILocation(line: 549, column: 8, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 549, column: 8)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 548, column: 29)
!1624 = !DILocation(line: 549, column: 15, scope: !1622)
!1625 = !DILocation(line: 549, column: 8, scope: !1623)
!1626 = !DILocation(line: 553, column: 12, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 549, column: 37)
!1628 = !DILocation(line: 554, column: 4, scope: !1627)
!1629 = !DILocation(line: 555, column: 4, scope: !1623)
!1630 = !DILocation(line: 560, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 560, column: 7)
!1632 = !DILocation(line: 560, column: 17, scope: !1631)
!1633 = !DILocation(line: 560, column: 22, scope: !1631)
!1634 = !DILocation(line: 560, column: 7, scope: !1601)
!1635 = !DILocation(line: 561, column: 4, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 560, column: 53)
!1637 = !DILocation(line: 566, column: 14, scope: !1601)
!1638 = !DILocation(line: 566, column: 12, scope: !1601)
!1639 = distinct !{!1639, !1595, !1640}
!1640 = !DILocation(line: 567, column: 2, scope: !1566)
!1641 = !DILocation(line: 569, column: 2, scope: !1566)
!1642 = !DILocation(line: 570, column: 1, scope: !1566)
!1643 = distinct !DISubprogram(name: "acpi_os_free", scope: !1644, file: !1644, line: 60, type: !1645, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1644 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !60}
!1647 = !DILocalVariable(name: "memory", arg: 1, scope: !1643, file: !1644, line: 60, type: !60)
!1648 = !DILocation(line: 60, column: 39, scope: !1643)
!1649 = !DILocation(line: 62, column: 8, scope: !1643)
!1650 = !DILocation(line: 62, column: 2, scope: !1643)
!1651 = !DILocation(line: 63, column: 1, scope: !1643)
