; ModuleID = '../bcout/drivers/gpu/drm/drm_dsc.llvm.bc'
source_filename = "drivers/gpu/drm/drm_dsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.dp_sdp_header = type { i8, i8, i8, i8 }
%struct.drm_dsc_picture_parameter_set = type <{ i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, [14 x i8], [15 x i16], i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i16 }>
%struct.drm_dsc_config = type { i8, i8, i8, i8, i16, i16, i8, i16, i16, i8, i8, i16, i8, i8, i8, i16, i16, i8, i8, i16, [14 x i16], [15 x %struct.drm_dsc_rc_range_parameters], i16, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i8, i16, i16 }
%struct.drm_dsc_rc_range_parameters = type { i8, i8, i8 }

@.str = private unnamed_addr constant [49 x i8] c"FinalOfs < RcModelSze for this InitialXmitDelay\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_dsc_dp_pps_header_init(%struct.dp_sdp_header* %pps_header) #0 !dbg !28 {
entry:
  %pps_header.addr = alloca %struct.dp_sdp_header*, align 8
  store %struct.dp_sdp_header* %pps_header, %struct.dp_sdp_header** %pps_header.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dp_sdp_header** %pps_header.addr, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = load %struct.dp_sdp_header*, %struct.dp_sdp_header** %pps_header.addr, align 8, !dbg !46
  %1 = bitcast %struct.dp_sdp_header* %0 to i8*, !dbg !47
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 4, i1 false), !dbg !47
  %2 = load %struct.dp_sdp_header*, %struct.dp_sdp_header** %pps_header.addr, align 8, !dbg !48
  %HB1 = getelementptr inbounds %struct.dp_sdp_header, %struct.dp_sdp_header* %2, i32 0, i32 1, !dbg !49
  store i8 16, i8* %HB1, align 1, !dbg !50
  %3 = load %struct.dp_sdp_header*, %struct.dp_sdp_header** %pps_header.addr, align 8, !dbg !51
  %HB2 = getelementptr inbounds %struct.dp_sdp_header, %struct.dp_sdp_header* %3, i32 0, i32 2, !dbg !52
  store i8 127, i8* %HB2, align 1, !dbg !53
  ret void, !dbg !54
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @drm_dsc_pps_payload_pack(%struct.drm_dsc_picture_parameter_set* %pps_payload, %struct.drm_dsc_config* %dsc_cfg) #0 !dbg !55 {
entry:
  %pps_payload.addr = alloca %struct.drm_dsc_picture_parameter_set*, align 8
  %dsc_cfg.addr = alloca %struct.drm_dsc_config*, align 8
  %i = alloca i32, align 4
  store %struct.drm_dsc_picture_parameter_set* %pps_payload, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, metadata !174, metadata !DIExpression()), !dbg !175
  store %struct.drm_dsc_config* %dsc_cfg, %struct.drm_dsc_config** %dsc_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_dsc_config** %dsc_cfg.addr, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i32* %i, metadata !178, metadata !DIExpression()), !dbg !180
  br label %do.body, !dbg !181

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !182

do.end:                                           ; preds = %do.body
  %0 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !184
  %1 = bitcast %struct.drm_dsc_picture_parameter_set* %0 to i8*, !dbg !185
  call void @llvm.memset.p0i8.i64(i8* align 1 %1, i8 0, i64 128, i1 false), !dbg !185
  %2 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !186
  %dsc_version_minor = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %2, i32 0, i32 35, !dbg !187
  %3 = load i8, i8* %dsc_version_minor, align 2, !dbg !187
  %conv = zext i8 %3 to i32, !dbg !186
  %4 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !188
  %dsc_version_major = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %4, i32 0, i32 36, !dbg !189
  %5 = load i8, i8* %dsc_version_major, align 1, !dbg !189
  %conv1 = zext i8 %5 to i32, !dbg !188
  %shl = shl i32 %conv1, 4, !dbg !190
  %or = or i32 %conv, %shl, !dbg !191
  %conv2 = trunc i32 %or to i8, !dbg !186
  %6 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !192
  %dsc_version = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %6, i32 0, i32 0, !dbg !193
  store i8 %conv2, i8* %dsc_version, align 1, !dbg !194
  %7 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !195
  %line_buf_depth = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %7, i32 0, i32 0, !dbg !196
  %8 = load i8, i8* %line_buf_depth, align 2, !dbg !196
  %conv3 = zext i8 %8 to i32, !dbg !195
  %9 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !197
  %bits_per_component = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %9, i32 0, i32 1, !dbg !198
  %10 = load i8, i8* %bits_per_component, align 1, !dbg !198
  %conv4 = zext i8 %10 to i32, !dbg !197
  %shl5 = shl i32 %conv4, 4, !dbg !199
  %or6 = or i32 %conv3, %shl5, !dbg !200
  %conv7 = trunc i32 %or6 to i8, !dbg !195
  %11 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !201
  %pps_3 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %11, i32 0, i32 3, !dbg !202
  store i8 %conv7, i8* %pps_3, align 1, !dbg !203
  %12 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !204
  %bits_per_pixel = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %12, i32 0, i32 11, !dbg !205
  %13 = load i16, i16* %bits_per_pixel, align 2, !dbg !205
  %conv8 = zext i16 %13 to i32, !dbg !204
  %and = and i32 %conv8, 768, !dbg !206
  %shr = ashr i32 %and, 8, !dbg !207
  %14 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !208
  %vbr_enable = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %14, i32 0, i32 31, !dbg !209
  %15 = load i8, i8* %vbr_enable, align 2, !dbg !209
  %tobool = trunc i8 %15 to i1, !dbg !209
  %conv9 = zext i1 %tobool to i32, !dbg !208
  %shl10 = shl i32 %conv9, 2, !dbg !210
  %or11 = or i32 %shr, %shl10, !dbg !211
  %16 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !212
  %simple_422 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %16, i32 0, i32 6, !dbg !213
  %17 = load i8, i8* %simple_422, align 2, !dbg !213
  %tobool12 = trunc i8 %17 to i1, !dbg !213
  %conv13 = zext i1 %tobool12 to i32, !dbg !212
  %shl14 = shl i32 %conv13, 3, !dbg !214
  %or15 = or i32 %or11, %shl14, !dbg !215
  %18 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !216
  %convert_rgb = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %18, i32 0, i32 2, !dbg !217
  %19 = load i8, i8* %convert_rgb, align 2, !dbg !217
  %tobool16 = trunc i8 %19 to i1, !dbg !217
  %conv17 = zext i1 %tobool16 to i32, !dbg !216
  %shl18 = shl i32 %conv17, 4, !dbg !218
  %or19 = or i32 %or15, %shl18, !dbg !219
  %20 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !220
  %block_pred_enable = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %20, i32 0, i32 17, !dbg !221
  %21 = load i8, i8* %block_pred_enable, align 2, !dbg !221
  %tobool20 = trunc i8 %21 to i1, !dbg !221
  %conv21 = zext i1 %tobool20 to i32, !dbg !220
  %shl22 = shl i32 %conv21, 5, !dbg !222
  %or23 = or i32 %or19, %shl22, !dbg !223
  %conv24 = trunc i32 %or23 to i8, !dbg !224
  %22 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !225
  %pps_4 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %22, i32 0, i32 4, !dbg !226
  store i8 %conv24, i8* %pps_4, align 1, !dbg !227
  %23 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !228
  %bits_per_pixel25 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %23, i32 0, i32 11, !dbg !229
  %24 = load i16, i16* %bits_per_pixel25, align 2, !dbg !229
  %conv26 = zext i16 %24 to i32, !dbg !228
  %and27 = and i32 %conv26, 255, !dbg !230
  %conv28 = trunc i32 %and27 to i8, !dbg !231
  %25 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !232
  %bits_per_pixel_low = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %25, i32 0, i32 5, !dbg !233
  store i8 %conv28, i8* %bits_per_pixel_low, align 1, !dbg !234
  %26 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !235
  %pic_height = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %26, i32 0, i32 8, !dbg !235
  %27 = load i16, i16* %pic_height, align 2, !dbg !235
  %28 = call i1 @llvm.is.constant.i16(i16 %27), !dbg !235
  br i1 %28, label %cond.true, label %cond.false, !dbg !235

cond.true:                                        ; preds = %do.end
  %29 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !235
  %pic_height29 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %29, i32 0, i32 8, !dbg !235
  %30 = load i16, i16* %pic_height29, align 2, !dbg !235
  %conv30 = zext i16 %30 to i32, !dbg !235
  %and31 = and i32 %conv30, 255, !dbg !235
  %shl32 = shl i32 %and31, 8, !dbg !235
  %31 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !235
  %pic_height33 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %31, i32 0, i32 8, !dbg !235
  %32 = load i16, i16* %pic_height33, align 2, !dbg !235
  %conv34 = zext i16 %32 to i32, !dbg !235
  %and35 = and i32 %conv34, 65280, !dbg !235
  %shr36 = ashr i32 %and35, 8, !dbg !235
  %or37 = or i32 %shl32, %shr36, !dbg !235
  %conv38 = trunc i32 %or37 to i16, !dbg !235
  %conv39 = zext i16 %conv38 to i32, !dbg !235
  br label %cond.end, !dbg !235

cond.false:                                       ; preds = %do.end
  %33 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !235
  %pic_height40 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %33, i32 0, i32 8, !dbg !235
  %34 = load i16, i16* %pic_height40, align 2, !dbg !235
  %call = call zeroext i16 @__fswab16(i16 zeroext %34) #6, !dbg !235
  %conv41 = zext i16 %call to i32, !dbg !235
  br label %cond.end, !dbg !235

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv39, %cond.true ], [ %conv41, %cond.false ], !dbg !235
  %conv42 = trunc i32 %cond to i16, !dbg !235
  %35 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !236
  %pic_height43 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %35, i32 0, i32 6, !dbg !237
  store i16 %conv42, i16* %pic_height43, align 1, !dbg !238
  %36 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !239
  %pic_width = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %36, i32 0, i32 7, !dbg !239
  %37 = load i16, i16* %pic_width, align 2, !dbg !239
  %38 = call i1 @llvm.is.constant.i16(i16 %37), !dbg !239
  br i1 %38, label %cond.true44, label %cond.false56, !dbg !239

cond.true44:                                      ; preds = %cond.end
  %39 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !239
  %pic_width45 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %39, i32 0, i32 7, !dbg !239
  %40 = load i16, i16* %pic_width45, align 2, !dbg !239
  %conv46 = zext i16 %40 to i32, !dbg !239
  %and47 = and i32 %conv46, 255, !dbg !239
  %shl48 = shl i32 %and47, 8, !dbg !239
  %41 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !239
  %pic_width49 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %41, i32 0, i32 7, !dbg !239
  %42 = load i16, i16* %pic_width49, align 2, !dbg !239
  %conv50 = zext i16 %42 to i32, !dbg !239
  %and51 = and i32 %conv50, 65280, !dbg !239
  %shr52 = ashr i32 %and51, 8, !dbg !239
  %or53 = or i32 %shl48, %shr52, !dbg !239
  %conv54 = trunc i32 %or53 to i16, !dbg !239
  %conv55 = zext i16 %conv54 to i32, !dbg !239
  br label %cond.end60, !dbg !239

cond.false56:                                     ; preds = %cond.end
  %43 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !239
  %pic_width57 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %43, i32 0, i32 7, !dbg !239
  %44 = load i16, i16* %pic_width57, align 2, !dbg !239
  %call58 = call zeroext i16 @__fswab16(i16 zeroext %44) #6, !dbg !239
  %conv59 = zext i16 %call58 to i32, !dbg !239
  br label %cond.end60, !dbg !239

cond.end60:                                       ; preds = %cond.false56, %cond.true44
  %cond61 = phi i32 [ %conv55, %cond.true44 ], [ %conv59, %cond.false56 ], !dbg !239
  %conv62 = trunc i32 %cond61 to i16, !dbg !239
  %45 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !240
  %pic_width63 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %45, i32 0, i32 7, !dbg !241
  store i16 %conv62, i16* %pic_width63, align 1, !dbg !242
  %46 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !243
  %slice_height = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %46, i32 0, i32 5, !dbg !243
  %47 = load i16, i16* %slice_height, align 2, !dbg !243
  %48 = call i1 @llvm.is.constant.i16(i16 %47), !dbg !243
  br i1 %48, label %cond.true64, label %cond.false76, !dbg !243

cond.true64:                                      ; preds = %cond.end60
  %49 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !243
  %slice_height65 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %49, i32 0, i32 5, !dbg !243
  %50 = load i16, i16* %slice_height65, align 2, !dbg !243
  %conv66 = zext i16 %50 to i32, !dbg !243
  %and67 = and i32 %conv66, 255, !dbg !243
  %shl68 = shl i32 %and67, 8, !dbg !243
  %51 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !243
  %slice_height69 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %51, i32 0, i32 5, !dbg !243
  %52 = load i16, i16* %slice_height69, align 2, !dbg !243
  %conv70 = zext i16 %52 to i32, !dbg !243
  %and71 = and i32 %conv70, 65280, !dbg !243
  %shr72 = ashr i32 %and71, 8, !dbg !243
  %or73 = or i32 %shl68, %shr72, !dbg !243
  %conv74 = trunc i32 %or73 to i16, !dbg !243
  %conv75 = zext i16 %conv74 to i32, !dbg !243
  br label %cond.end80, !dbg !243

cond.false76:                                     ; preds = %cond.end60
  %53 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !243
  %slice_height77 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %53, i32 0, i32 5, !dbg !243
  %54 = load i16, i16* %slice_height77, align 2, !dbg !243
  %call78 = call zeroext i16 @__fswab16(i16 zeroext %54) #6, !dbg !243
  %conv79 = zext i16 %call78 to i32, !dbg !243
  br label %cond.end80, !dbg !243

cond.end80:                                       ; preds = %cond.false76, %cond.true64
  %cond81 = phi i32 [ %conv75, %cond.true64 ], [ %conv79, %cond.false76 ], !dbg !243
  %conv82 = trunc i32 %cond81 to i16, !dbg !243
  %55 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !244
  %slice_height83 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %55, i32 0, i32 8, !dbg !245
  store i16 %conv82, i16* %slice_height83, align 1, !dbg !246
  %56 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !247
  %slice_width = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %56, i32 0, i32 4, !dbg !247
  %57 = load i16, i16* %slice_width, align 2, !dbg !247
  %58 = call i1 @llvm.is.constant.i16(i16 %57), !dbg !247
  br i1 %58, label %cond.true84, label %cond.false96, !dbg !247

cond.true84:                                      ; preds = %cond.end80
  %59 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !247
  %slice_width85 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %59, i32 0, i32 4, !dbg !247
  %60 = load i16, i16* %slice_width85, align 2, !dbg !247
  %conv86 = zext i16 %60 to i32, !dbg !247
  %and87 = and i32 %conv86, 255, !dbg !247
  %shl88 = shl i32 %and87, 8, !dbg !247
  %61 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !247
  %slice_width89 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %61, i32 0, i32 4, !dbg !247
  %62 = load i16, i16* %slice_width89, align 2, !dbg !247
  %conv90 = zext i16 %62 to i32, !dbg !247
  %and91 = and i32 %conv90, 65280, !dbg !247
  %shr92 = ashr i32 %and91, 8, !dbg !247
  %or93 = or i32 %shl88, %shr92, !dbg !247
  %conv94 = trunc i32 %or93 to i16, !dbg !247
  %conv95 = zext i16 %conv94 to i32, !dbg !247
  br label %cond.end100, !dbg !247

cond.false96:                                     ; preds = %cond.end80
  %63 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !247
  %slice_width97 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %63, i32 0, i32 4, !dbg !247
  %64 = load i16, i16* %slice_width97, align 2, !dbg !247
  %call98 = call zeroext i16 @__fswab16(i16 zeroext %64) #6, !dbg !247
  %conv99 = zext i16 %call98 to i32, !dbg !247
  br label %cond.end100, !dbg !247

cond.end100:                                      ; preds = %cond.false96, %cond.true84
  %cond101 = phi i32 [ %conv95, %cond.true84 ], [ %conv99, %cond.false96 ], !dbg !247
  %conv102 = trunc i32 %cond101 to i16, !dbg !247
  %65 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !248
  %slice_width103 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %65, i32 0, i32 9, !dbg !249
  store i16 %conv102, i16* %slice_width103, align 1, !dbg !250
  %66 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !251
  %slice_chunk_size = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %66, i32 0, i32 33, !dbg !251
  %67 = load i16, i16* %slice_chunk_size, align 2, !dbg !251
  %68 = call i1 @llvm.is.constant.i16(i16 %67), !dbg !251
  br i1 %68, label %cond.true104, label %cond.false116, !dbg !251

cond.true104:                                     ; preds = %cond.end100
  %69 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !251
  %slice_chunk_size105 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %69, i32 0, i32 33, !dbg !251
  %70 = load i16, i16* %slice_chunk_size105, align 2, !dbg !251
  %conv106 = zext i16 %70 to i32, !dbg !251
  %and107 = and i32 %conv106, 255, !dbg !251
  %shl108 = shl i32 %and107, 8, !dbg !251
  %71 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !251
  %slice_chunk_size109 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %71, i32 0, i32 33, !dbg !251
  %72 = load i16, i16* %slice_chunk_size109, align 2, !dbg !251
  %conv110 = zext i16 %72 to i32, !dbg !251
  %and111 = and i32 %conv110, 65280, !dbg !251
  %shr112 = ashr i32 %and111, 8, !dbg !251
  %or113 = or i32 %shl108, %shr112, !dbg !251
  %conv114 = trunc i32 %or113 to i16, !dbg !251
  %conv115 = zext i16 %conv114 to i32, !dbg !251
  br label %cond.end120, !dbg !251

cond.false116:                                    ; preds = %cond.end100
  %73 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !251
  %slice_chunk_size117 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %73, i32 0, i32 33, !dbg !251
  %74 = load i16, i16* %slice_chunk_size117, align 2, !dbg !251
  %call118 = call zeroext i16 @__fswab16(i16 zeroext %74) #6, !dbg !251
  %conv119 = zext i16 %call118 to i32, !dbg !251
  br label %cond.end120, !dbg !251

cond.end120:                                      ; preds = %cond.false116, %cond.true104
  %cond121 = phi i32 [ %conv115, %cond.true104 ], [ %conv119, %cond.false116 ], !dbg !251
  %conv122 = trunc i32 %cond121 to i16, !dbg !251
  %75 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !252
  %chunk_size = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %75, i32 0, i32 10, !dbg !253
  store i16 %conv122, i16* %chunk_size, align 1, !dbg !254
  %76 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !255
  %initial_xmit_delay = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %76, i32 0, i32 15, !dbg !256
  %77 = load i16, i16* %initial_xmit_delay, align 2, !dbg !256
  %conv123 = zext i16 %77 to i32, !dbg !255
  %and124 = and i32 %conv123, 768, !dbg !257
  %shr125 = ashr i32 %and124, 8, !dbg !258
  %conv126 = trunc i32 %shr125 to i8, !dbg !259
  %78 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !260
  %initial_xmit_delay_high = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %78, i32 0, i32 11, !dbg !261
  store i8 %conv126, i8* %initial_xmit_delay_high, align 1, !dbg !262
  %79 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !263
  %initial_xmit_delay127 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %79, i32 0, i32 15, !dbg !264
  %80 = load i16, i16* %initial_xmit_delay127, align 2, !dbg !264
  %conv128 = zext i16 %80 to i32, !dbg !263
  %and129 = and i32 %conv128, 255, !dbg !265
  %conv130 = trunc i32 %and129 to i8, !dbg !266
  %81 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !267
  %initial_xmit_delay_low = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %81, i32 0, i32 12, !dbg !268
  store i8 %conv130, i8* %initial_xmit_delay_low, align 1, !dbg !269
  %82 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !270
  %initial_dec_delay = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %82, i32 0, i32 16, !dbg !270
  %83 = load i16, i16* %initial_dec_delay, align 2, !dbg !270
  %84 = call i1 @llvm.is.constant.i16(i16 %83), !dbg !270
  br i1 %84, label %cond.true131, label %cond.false143, !dbg !270

cond.true131:                                     ; preds = %cond.end120
  %85 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !270
  %initial_dec_delay132 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %85, i32 0, i32 16, !dbg !270
  %86 = load i16, i16* %initial_dec_delay132, align 2, !dbg !270
  %conv133 = zext i16 %86 to i32, !dbg !270
  %and134 = and i32 %conv133, 255, !dbg !270
  %shl135 = shl i32 %and134, 8, !dbg !270
  %87 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !270
  %initial_dec_delay136 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %87, i32 0, i32 16, !dbg !270
  %88 = load i16, i16* %initial_dec_delay136, align 2, !dbg !270
  %conv137 = zext i16 %88 to i32, !dbg !270
  %and138 = and i32 %conv137, 65280, !dbg !270
  %shr139 = ashr i32 %and138, 8, !dbg !270
  %or140 = or i32 %shl135, %shr139, !dbg !270
  %conv141 = trunc i32 %or140 to i16, !dbg !270
  %conv142 = zext i16 %conv141 to i32, !dbg !270
  br label %cond.end147, !dbg !270

cond.false143:                                    ; preds = %cond.end120
  %89 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !270
  %initial_dec_delay144 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %89, i32 0, i32 16, !dbg !270
  %90 = load i16, i16* %initial_dec_delay144, align 2, !dbg !270
  %call145 = call zeroext i16 @__fswab16(i16 zeroext %90) #6, !dbg !270
  %conv146 = zext i16 %call145 to i32, !dbg !270
  br label %cond.end147, !dbg !270

cond.end147:                                      ; preds = %cond.false143, %cond.true131
  %cond148 = phi i32 [ %conv142, %cond.true131 ], [ %conv146, %cond.false143 ], !dbg !270
  %conv149 = trunc i32 %cond148 to i16, !dbg !270
  %91 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !271
  %initial_dec_delay150 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %91, i32 0, i32 13, !dbg !272
  store i16 %conv149, i16* %initial_dec_delay150, align 1, !dbg !273
  %92 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !274
  %initial_scale_value = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %92, i32 0, i32 25, !dbg !275
  %93 = load i8, i8* %initial_scale_value, align 2, !dbg !275
  %94 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !276
  %initial_scale_value151 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %94, i32 0, i32 15, !dbg !277
  store i8 %93, i8* %initial_scale_value151, align 1, !dbg !278
  %95 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !279
  %scale_increment_interval = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %95, i32 0, i32 27, !dbg !279
  %96 = load i16, i16* %scale_increment_interval, align 2, !dbg !279
  %97 = call i1 @llvm.is.constant.i16(i16 %96), !dbg !279
  br i1 %97, label %cond.true152, label %cond.false164, !dbg !279

cond.true152:                                     ; preds = %cond.end147
  %98 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !279
  %scale_increment_interval153 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %98, i32 0, i32 27, !dbg !279
  %99 = load i16, i16* %scale_increment_interval153, align 2, !dbg !279
  %conv154 = zext i16 %99 to i32, !dbg !279
  %and155 = and i32 %conv154, 255, !dbg !279
  %shl156 = shl i32 %and155, 8, !dbg !279
  %100 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !279
  %scale_increment_interval157 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %100, i32 0, i32 27, !dbg !279
  %101 = load i16, i16* %scale_increment_interval157, align 2, !dbg !279
  %conv158 = zext i16 %101 to i32, !dbg !279
  %and159 = and i32 %conv158, 65280, !dbg !279
  %shr160 = ashr i32 %and159, 8, !dbg !279
  %or161 = or i32 %shl156, %shr160, !dbg !279
  %conv162 = trunc i32 %or161 to i16, !dbg !279
  %conv163 = zext i16 %conv162 to i32, !dbg !279
  br label %cond.end168, !dbg !279

cond.false164:                                    ; preds = %cond.end147
  %102 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !279
  %scale_increment_interval165 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %102, i32 0, i32 27, !dbg !279
  %103 = load i16, i16* %scale_increment_interval165, align 2, !dbg !279
  %call166 = call zeroext i16 @__fswab16(i16 zeroext %103) #6, !dbg !279
  %conv167 = zext i16 %call166 to i32, !dbg !279
  br label %cond.end168, !dbg !279

cond.end168:                                      ; preds = %cond.false164, %cond.true152
  %cond169 = phi i32 [ %conv163, %cond.true152 ], [ %conv167, %cond.false164 ], !dbg !279
  %conv170 = trunc i32 %cond169 to i16, !dbg !279
  %104 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !280
  %scale_increment_interval171 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %104, i32 0, i32 16, !dbg !281
  store i16 %conv170, i16* %scale_increment_interval171, align 1, !dbg !282
  %105 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !283
  %scale_decrement_interval = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %105, i32 0, i32 26, !dbg !284
  %106 = load i16, i16* %scale_decrement_interval, align 2, !dbg !284
  %conv172 = zext i16 %106 to i32, !dbg !283
  %and173 = and i32 %conv172, 3840, !dbg !285
  %shr174 = ashr i32 %and173, 8, !dbg !286
  %conv175 = trunc i32 %shr174 to i8, !dbg !287
  %107 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !288
  %scale_decrement_interval_high = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %107, i32 0, i32 17, !dbg !289
  store i8 %conv175, i8* %scale_decrement_interval_high, align 1, !dbg !290
  %108 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !291
  %scale_decrement_interval176 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %108, i32 0, i32 26, !dbg !292
  %109 = load i16, i16* %scale_decrement_interval176, align 2, !dbg !292
  %conv177 = zext i16 %109 to i32, !dbg !291
  %and178 = and i32 %conv177, 255, !dbg !293
  %conv179 = trunc i32 %and178 to i8, !dbg !294
  %110 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !295
  %scale_decrement_interval_low = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %110, i32 0, i32 18, !dbg !296
  store i8 %conv179, i8* %scale_decrement_interval_low, align 1, !dbg !297
  %111 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !298
  %first_line_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %111, i32 0, i32 18, !dbg !299
  %112 = load i8, i8* %first_line_bpg_offset, align 1, !dbg !299
  %113 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !300
  %first_line_bpg_offset180 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %113, i32 0, i32 20, !dbg !301
  store i8 %112, i8* %first_line_bpg_offset180, align 1, !dbg !302
  %114 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !303
  %nfl_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %114, i32 0, i32 28, !dbg !303
  %115 = load i16, i16* %nfl_bpg_offset, align 2, !dbg !303
  %116 = call i1 @llvm.is.constant.i16(i16 %115), !dbg !303
  br i1 %116, label %cond.true181, label %cond.false193, !dbg !303

cond.true181:                                     ; preds = %cond.end168
  %117 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !303
  %nfl_bpg_offset182 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %117, i32 0, i32 28, !dbg !303
  %118 = load i16, i16* %nfl_bpg_offset182, align 2, !dbg !303
  %conv183 = zext i16 %118 to i32, !dbg !303
  %and184 = and i32 %conv183, 255, !dbg !303
  %shl185 = shl i32 %and184, 8, !dbg !303
  %119 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !303
  %nfl_bpg_offset186 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %119, i32 0, i32 28, !dbg !303
  %120 = load i16, i16* %nfl_bpg_offset186, align 2, !dbg !303
  %conv187 = zext i16 %120 to i32, !dbg !303
  %and188 = and i32 %conv187, 65280, !dbg !303
  %shr189 = ashr i32 %and188, 8, !dbg !303
  %or190 = or i32 %shl185, %shr189, !dbg !303
  %conv191 = trunc i32 %or190 to i16, !dbg !303
  %conv192 = zext i16 %conv191 to i32, !dbg !303
  br label %cond.end197, !dbg !303

cond.false193:                                    ; preds = %cond.end168
  %121 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !303
  %nfl_bpg_offset194 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %121, i32 0, i32 28, !dbg !303
  %122 = load i16, i16* %nfl_bpg_offset194, align 2, !dbg !303
  %call195 = call zeroext i16 @__fswab16(i16 zeroext %122) #6, !dbg !303
  %conv196 = zext i16 %call195 to i32, !dbg !303
  br label %cond.end197, !dbg !303

cond.end197:                                      ; preds = %cond.false193, %cond.true181
  %cond198 = phi i32 [ %conv192, %cond.true181 ], [ %conv196, %cond.false193 ], !dbg !303
  %conv199 = trunc i32 %cond198 to i16, !dbg !303
  %123 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !304
  %nfl_bpg_offset200 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %123, i32 0, i32 21, !dbg !305
  store i16 %conv199, i16* %nfl_bpg_offset200, align 1, !dbg !306
  %124 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !307
  %slice_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %124, i32 0, i32 29, !dbg !307
  %125 = load i16, i16* %slice_bpg_offset, align 2, !dbg !307
  %126 = call i1 @llvm.is.constant.i16(i16 %125), !dbg !307
  br i1 %126, label %cond.true201, label %cond.false213, !dbg !307

cond.true201:                                     ; preds = %cond.end197
  %127 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !307
  %slice_bpg_offset202 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %127, i32 0, i32 29, !dbg !307
  %128 = load i16, i16* %slice_bpg_offset202, align 2, !dbg !307
  %conv203 = zext i16 %128 to i32, !dbg !307
  %and204 = and i32 %conv203, 255, !dbg !307
  %shl205 = shl i32 %and204, 8, !dbg !307
  %129 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !307
  %slice_bpg_offset206 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %129, i32 0, i32 29, !dbg !307
  %130 = load i16, i16* %slice_bpg_offset206, align 2, !dbg !307
  %conv207 = zext i16 %130 to i32, !dbg !307
  %and208 = and i32 %conv207, 65280, !dbg !307
  %shr209 = ashr i32 %and208, 8, !dbg !307
  %or210 = or i32 %shl205, %shr209, !dbg !307
  %conv211 = trunc i32 %or210 to i16, !dbg !307
  %conv212 = zext i16 %conv211 to i32, !dbg !307
  br label %cond.end217, !dbg !307

cond.false213:                                    ; preds = %cond.end197
  %131 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !307
  %slice_bpg_offset214 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %131, i32 0, i32 29, !dbg !307
  %132 = load i16, i16* %slice_bpg_offset214, align 2, !dbg !307
  %call215 = call zeroext i16 @__fswab16(i16 zeroext %132) #6, !dbg !307
  %conv216 = zext i16 %call215 to i32, !dbg !307
  br label %cond.end217, !dbg !307

cond.end217:                                      ; preds = %cond.false213, %cond.true201
  %cond218 = phi i32 [ %conv212, %cond.true201 ], [ %conv216, %cond.false213 ], !dbg !307
  %conv219 = trunc i32 %cond218 to i16, !dbg !307
  %133 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !308
  %slice_bpg_offset220 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %133, i32 0, i32 22, !dbg !309
  store i16 %conv219, i16* %slice_bpg_offset220, align 1, !dbg !310
  %134 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !311
  %initial_offset = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %134, i32 0, i32 19, !dbg !311
  %135 = load i16, i16* %initial_offset, align 2, !dbg !311
  %136 = call i1 @llvm.is.constant.i16(i16 %135), !dbg !311
  br i1 %136, label %cond.true221, label %cond.false233, !dbg !311

cond.true221:                                     ; preds = %cond.end217
  %137 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !311
  %initial_offset222 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %137, i32 0, i32 19, !dbg !311
  %138 = load i16, i16* %initial_offset222, align 2, !dbg !311
  %conv223 = zext i16 %138 to i32, !dbg !311
  %and224 = and i32 %conv223, 255, !dbg !311
  %shl225 = shl i32 %and224, 8, !dbg !311
  %139 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !311
  %initial_offset226 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %139, i32 0, i32 19, !dbg !311
  %140 = load i16, i16* %initial_offset226, align 2, !dbg !311
  %conv227 = zext i16 %140 to i32, !dbg !311
  %and228 = and i32 %conv227, 65280, !dbg !311
  %shr229 = ashr i32 %and228, 8, !dbg !311
  %or230 = or i32 %shl225, %shr229, !dbg !311
  %conv231 = trunc i32 %or230 to i16, !dbg !311
  %conv232 = zext i16 %conv231 to i32, !dbg !311
  br label %cond.end237, !dbg !311

cond.false233:                                    ; preds = %cond.end217
  %141 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !311
  %initial_offset234 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %141, i32 0, i32 19, !dbg !311
  %142 = load i16, i16* %initial_offset234, align 2, !dbg !311
  %call235 = call zeroext i16 @__fswab16(i16 zeroext %142) #6, !dbg !311
  %conv236 = zext i16 %call235 to i32, !dbg !311
  br label %cond.end237, !dbg !311

cond.end237:                                      ; preds = %cond.false233, %cond.true221
  %cond238 = phi i32 [ %conv232, %cond.true221 ], [ %conv236, %cond.false233 ], !dbg !311
  %conv239 = trunc i32 %cond238 to i16, !dbg !311
  %143 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !312
  %initial_offset240 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %143, i32 0, i32 23, !dbg !313
  store i16 %conv239, i16* %initial_offset240, align 1, !dbg !314
  %144 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !315
  %final_offset = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %144, i32 0, i32 30, !dbg !315
  %145 = load i16, i16* %final_offset, align 2, !dbg !315
  %146 = call i1 @llvm.is.constant.i16(i16 %145), !dbg !315
  br i1 %146, label %cond.true241, label %cond.false253, !dbg !315

cond.true241:                                     ; preds = %cond.end237
  %147 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !315
  %final_offset242 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %147, i32 0, i32 30, !dbg !315
  %148 = load i16, i16* %final_offset242, align 2, !dbg !315
  %conv243 = zext i16 %148 to i32, !dbg !315
  %and244 = and i32 %conv243, 255, !dbg !315
  %shl245 = shl i32 %and244, 8, !dbg !315
  %149 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !315
  %final_offset246 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %149, i32 0, i32 30, !dbg !315
  %150 = load i16, i16* %final_offset246, align 2, !dbg !315
  %conv247 = zext i16 %150 to i32, !dbg !315
  %and248 = and i32 %conv247, 65280, !dbg !315
  %shr249 = ashr i32 %and248, 8, !dbg !315
  %or250 = or i32 %shl245, %shr249, !dbg !315
  %conv251 = trunc i32 %or250 to i16, !dbg !315
  %conv252 = zext i16 %conv251 to i32, !dbg !315
  br label %cond.end257, !dbg !315

cond.false253:                                    ; preds = %cond.end237
  %151 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !315
  %final_offset254 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %151, i32 0, i32 30, !dbg !315
  %152 = load i16, i16* %final_offset254, align 2, !dbg !315
  %call255 = call zeroext i16 @__fswab16(i16 zeroext %152) #6, !dbg !315
  %conv256 = zext i16 %call255 to i32, !dbg !315
  br label %cond.end257, !dbg !315

cond.end257:                                      ; preds = %cond.false253, %cond.true241
  %cond258 = phi i32 [ %conv252, %cond.true241 ], [ %conv256, %cond.false253 ], !dbg !315
  %conv259 = trunc i32 %cond258 to i16, !dbg !315
  %153 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !316
  %final_offset260 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %153, i32 0, i32 24, !dbg !317
  store i16 %conv259, i16* %final_offset260, align 1, !dbg !318
  %154 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !319
  %flatness_min_qp = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %154, i32 0, i32 23, !dbg !320
  %155 = load i8, i8* %flatness_min_qp, align 2, !dbg !320
  %156 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !321
  %flatness_min_qp261 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %156, i32 0, i32 25, !dbg !322
  store i8 %155, i8* %flatness_min_qp261, align 1, !dbg !323
  %157 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !324
  %flatness_max_qp = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %157, i32 0, i32 24, !dbg !325
  %158 = load i8, i8* %flatness_max_qp, align 1, !dbg !325
  %159 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !326
  %flatness_max_qp262 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %159, i32 0, i32 26, !dbg !327
  store i8 %158, i8* %flatness_max_qp262, align 1, !dbg !328
  %160 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !329
  %rc_model_size = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %160, i32 0, i32 27, !dbg !330
  store i16 32, i16* %rc_model_size, align 1, !dbg !331
  %161 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !332
  %rc_edge_factor = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %161, i32 0, i32 28, !dbg !333
  store i8 6, i8* %rc_edge_factor, align 1, !dbg !334
  %162 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !335
  %rc_quant_incr_limit0 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %162, i32 0, i32 14, !dbg !336
  %163 = load i8, i8* %rc_quant_incr_limit0, align 2, !dbg !336
  %164 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !337
  %rc_quant_incr_limit0263 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %164, i32 0, i32 29, !dbg !338
  store i8 %163, i8* %rc_quant_incr_limit0263, align 1, !dbg !339
  %165 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !340
  %rc_quant_incr_limit1 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %165, i32 0, i32 13, !dbg !341
  %166 = load i8, i8* %rc_quant_incr_limit1, align 1, !dbg !341
  %167 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !342
  %rc_quant_incr_limit1264 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %167, i32 0, i32 30, !dbg !343
  store i8 %166, i8* %rc_quant_incr_limit1264, align 1, !dbg !344
  %168 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !345
  %rc_tgt_offset = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %168, i32 0, i32 31, !dbg !346
  store i8 51, i8* %rc_tgt_offset, align 1, !dbg !347
  store i32 0, i32* %i, align 4, !dbg !348
  br label %for.cond, !dbg !350

for.cond:                                         ; preds = %for.inc, %cond.end257
  %169 = load i32, i32* %i, align 4, !dbg !351
  %cmp = icmp slt i32 %169, 14, !dbg !353
  br i1 %cmp, label %for.body, label %for.end, !dbg !354

for.body:                                         ; preds = %for.cond
  %170 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !355
  %rc_buf_thresh = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %170, i32 0, i32 20, !dbg !356
  %171 = load i32, i32* %i, align 4, !dbg !357
  %idxprom = sext i32 %171 to i64, !dbg !355
  %arrayidx = getelementptr [14 x i16], [14 x i16]* %rc_buf_thresh, i64 0, i64 %idxprom, !dbg !355
  %172 = load i16, i16* %arrayidx, align 2, !dbg !355
  %conv266 = trunc i16 %172 to i8, !dbg !355
  %173 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !358
  %rc_buf_thresh267 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %173, i32 0, i32 32, !dbg !359
  %174 = load i32, i32* %i, align 4, !dbg !360
  %idxprom268 = sext i32 %174 to i64, !dbg !358
  %arrayidx269 = getelementptr [14 x i8], [14 x i8]* %rc_buf_thresh267, i64 0, i64 %idxprom268, !dbg !358
  store i8 %conv266, i8* %arrayidx269, align 1, !dbg !361
  br label %for.inc, !dbg !358

for.inc:                                          ; preds = %for.body
  %175 = load i32, i32* %i, align 4, !dbg !362
  %inc = add i32 %175, 1, !dbg !362
  store i32 %inc, i32* %i, align 4, !dbg !362
  br label %for.cond, !dbg !363, !llvm.loop !364

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !366
  br label %for.cond270, !dbg !368

for.cond270:                                      ; preds = %for.inc368, %for.end
  %176 = load i32, i32* %i, align 4, !dbg !369
  %cmp271 = icmp slt i32 %176, 15, !dbg !371
  br i1 %cmp271, label %for.body273, label %for.end370, !dbg !372

for.body273:                                      ; preds = %for.cond270
  %177 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !373
  %rc_range_params = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %177, i32 0, i32 21, !dbg !373
  %178 = load i32, i32* %i, align 4, !dbg !373
  %idxprom274 = sext i32 %178 to i64, !dbg !373
  %arrayidx275 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], [15 x %struct.drm_dsc_rc_range_parameters]* %rc_range_params, i64 0, i64 %idxprom274, !dbg !373
  %range_min_qp = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, %struct.drm_dsc_rc_range_parameters* %arrayidx275, i32 0, i32 0, !dbg !373
  %179 = load i8, i8* %range_min_qp, align 1, !dbg !373
  %conv276 = zext i8 %179 to i32, !dbg !373
  %shl277 = shl i32 %conv276, 11, !dbg !373
  %180 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !373
  %rc_range_params278 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %180, i32 0, i32 21, !dbg !373
  %181 = load i32, i32* %i, align 4, !dbg !373
  %idxprom279 = sext i32 %181 to i64, !dbg !373
  %arrayidx280 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], [15 x %struct.drm_dsc_rc_range_parameters]* %rc_range_params278, i64 0, i64 %idxprom279, !dbg !373
  %range_max_qp = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, %struct.drm_dsc_rc_range_parameters* %arrayidx280, i32 0, i32 1, !dbg !373
  %182 = load i8, i8* %range_max_qp, align 1, !dbg !373
  %conv281 = zext i8 %182 to i32, !dbg !373
  %shl282 = shl i32 %conv281, 6, !dbg !373
  %or283 = or i32 %shl277, %shl282, !dbg !373
  %183 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !373
  %rc_range_params284 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %183, i32 0, i32 21, !dbg !373
  %184 = load i32, i32* %i, align 4, !dbg !373
  %idxprom285 = sext i32 %184 to i64, !dbg !373
  %arrayidx286 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], [15 x %struct.drm_dsc_rc_range_parameters]* %rc_range_params284, i64 0, i64 %idxprom285, !dbg !373
  %range_bpg_offset = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, %struct.drm_dsc_rc_range_parameters* %arrayidx286, i32 0, i32 2, !dbg !373
  %185 = load i8, i8* %range_bpg_offset, align 1, !dbg !373
  %conv287 = zext i8 %185 to i32, !dbg !373
  %or288 = or i32 %or283, %conv287, !dbg !373
  %conv289 = trunc i32 %or288 to i16, !dbg !373
  %186 = call i1 @llvm.is.constant.i16(i16 %conv289), !dbg !373
  br i1 %186, label %cond.true290, label %cond.false340, !dbg !373

cond.true290:                                     ; preds = %for.body273
  %187 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !373
  %rc_range_params291 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %187, i32 0, i32 21, !dbg !373
  %188 = load i32, i32* %i, align 4, !dbg !373
  %idxprom292 = sext i32 %188 to i64, !dbg !373
  %arrayidx293 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], [15 x %struct.drm_dsc_rc_range_parameters]* %rc_range_params291, i64 0, i64 %idxprom292, !dbg !373
  %range_min_qp294 = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, %struct.drm_dsc_rc_range_parameters* %arrayidx293, i32 0, i32 0, !dbg !373
  %189 = load i8, i8* %range_min_qp294, align 1, !dbg !373
  %conv295 = zext i8 %189 to i32, !dbg !373
  %shl296 = shl i32 %conv295, 11, !dbg !373
  %190 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !373
  %rc_range_params297 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %190, i32 0, i32 21, !dbg !373
  %191 = load i32, i32* %i, align 4, !dbg !373
  %idxprom298 = sext i32 %191 to i64, !dbg !373
  %arrayidx299 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], [15 x %struct.drm_dsc_rc_range_parameters]* %rc_range_params297, i64 0, i64 %idxprom298, !dbg !373
  %range_max_qp300 = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, %struct.drm_dsc_rc_range_parameters* %arrayidx299, i32 0, i32 1, !dbg !373
  %192 = load i8, i8* %range_max_qp300, align 1, !dbg !373
  %conv301 = zext i8 %192 to i32, !dbg !373
  %shl302 = shl i32 %conv301, 6, !dbg !373
  %or303 = or i32 %shl296, %shl302, !dbg !373
  %193 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !373
  %rc_range_params304 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %193, i32 0, i32 21, !dbg !373
  %194 = load i32, i32* %i, align 4, !dbg !373
  %idxprom305 = sext i32 %194 to i64, !dbg !373
  %arrayidx306 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], [15 x %struct.drm_dsc_rc_range_parameters]* %rc_range_params304, i64 0, i64 %idxprom305, !dbg !373
  %range_bpg_offset307 = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, %struct.drm_dsc_rc_range_parameters* %arrayidx306, i32 0, i32 2, !dbg !373
  %195 = load i8, i8* %range_bpg_offset307, align 1, !dbg !373
  %conv308 = zext i8 %195 to i32, !dbg !373
  %or309 = or i32 %or303, %conv308, !dbg !373
  %conv310 = trunc i32 %or309 to i16, !dbg !373
  %conv311 = zext i16 %conv310 to i32, !dbg !373
  %and312 = and i32 %conv311, 255, !dbg !373
  %shl313 = shl i32 %and312, 8, !dbg !373
  %196 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !373
  %rc_range_params314 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %196, i32 0, i32 21, !dbg !373
  %197 = load i32, i32* %i, align 4, !dbg !373
  %idxprom315 = sext i32 %197 to i64, !dbg !373
  %arrayidx316 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], [15 x %struct.drm_dsc_rc_range_parameters]* %rc_range_params314, i64 0, i64 %idxprom315, !dbg !373
  %range_min_qp317 = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, %struct.drm_dsc_rc_range_parameters* %arrayidx316, i32 0, i32 0, !dbg !373
  %198 = load i8, i8* %range_min_qp317, align 1, !dbg !373
  %conv318 = zext i8 %198 to i32, !dbg !373
  %shl319 = shl i32 %conv318, 11, !dbg !373
  %199 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !373
  %rc_range_params320 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %199, i32 0, i32 21, !dbg !373
  %200 = load i32, i32* %i, align 4, !dbg !373
  %idxprom321 = sext i32 %200 to i64, !dbg !373
  %arrayidx322 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], [15 x %struct.drm_dsc_rc_range_parameters]* %rc_range_params320, i64 0, i64 %idxprom321, !dbg !373
  %range_max_qp323 = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, %struct.drm_dsc_rc_range_parameters* %arrayidx322, i32 0, i32 1, !dbg !373
  %201 = load i8, i8* %range_max_qp323, align 1, !dbg !373
  %conv324 = zext i8 %201 to i32, !dbg !373
  %shl325 = shl i32 %conv324, 6, !dbg !373
  %or326 = or i32 %shl319, %shl325, !dbg !373
  %202 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !373
  %rc_range_params327 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %202, i32 0, i32 21, !dbg !373
  %203 = load i32, i32* %i, align 4, !dbg !373
  %idxprom328 = sext i32 %203 to i64, !dbg !373
  %arrayidx329 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], [15 x %struct.drm_dsc_rc_range_parameters]* %rc_range_params327, i64 0, i64 %idxprom328, !dbg !373
  %range_bpg_offset330 = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, %struct.drm_dsc_rc_range_parameters* %arrayidx329, i32 0, i32 2, !dbg !373
  %204 = load i8, i8* %range_bpg_offset330, align 1, !dbg !373
  %conv331 = zext i8 %204 to i32, !dbg !373
  %or332 = or i32 %or326, %conv331, !dbg !373
  %conv333 = trunc i32 %or332 to i16, !dbg !373
  %conv334 = zext i16 %conv333 to i32, !dbg !373
  %and335 = and i32 %conv334, 65280, !dbg !373
  %shr336 = ashr i32 %and335, 8, !dbg !373
  %or337 = or i32 %shl313, %shr336, !dbg !373
  %conv338 = trunc i32 %or337 to i16, !dbg !373
  %conv339 = zext i16 %conv338 to i32, !dbg !373
  br label %cond.end363, !dbg !373

cond.false340:                                    ; preds = %for.body273
  %205 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !373
  %rc_range_params341 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %205, i32 0, i32 21, !dbg !373
  %206 = load i32, i32* %i, align 4, !dbg !373
  %idxprom342 = sext i32 %206 to i64, !dbg !373
  %arrayidx343 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], [15 x %struct.drm_dsc_rc_range_parameters]* %rc_range_params341, i64 0, i64 %idxprom342, !dbg !373
  %range_min_qp344 = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, %struct.drm_dsc_rc_range_parameters* %arrayidx343, i32 0, i32 0, !dbg !373
  %207 = load i8, i8* %range_min_qp344, align 1, !dbg !373
  %conv345 = zext i8 %207 to i32, !dbg !373
  %shl346 = shl i32 %conv345, 11, !dbg !373
  %208 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !373
  %rc_range_params347 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %208, i32 0, i32 21, !dbg !373
  %209 = load i32, i32* %i, align 4, !dbg !373
  %idxprom348 = sext i32 %209 to i64, !dbg !373
  %arrayidx349 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], [15 x %struct.drm_dsc_rc_range_parameters]* %rc_range_params347, i64 0, i64 %idxprom348, !dbg !373
  %range_max_qp350 = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, %struct.drm_dsc_rc_range_parameters* %arrayidx349, i32 0, i32 1, !dbg !373
  %210 = load i8, i8* %range_max_qp350, align 1, !dbg !373
  %conv351 = zext i8 %210 to i32, !dbg !373
  %shl352 = shl i32 %conv351, 6, !dbg !373
  %or353 = or i32 %shl346, %shl352, !dbg !373
  %211 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !373
  %rc_range_params354 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %211, i32 0, i32 21, !dbg !373
  %212 = load i32, i32* %i, align 4, !dbg !373
  %idxprom355 = sext i32 %212 to i64, !dbg !373
  %arrayidx356 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], [15 x %struct.drm_dsc_rc_range_parameters]* %rc_range_params354, i64 0, i64 %idxprom355, !dbg !373
  %range_bpg_offset357 = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, %struct.drm_dsc_rc_range_parameters* %arrayidx356, i32 0, i32 2, !dbg !373
  %213 = load i8, i8* %range_bpg_offset357, align 1, !dbg !373
  %conv358 = zext i8 %213 to i32, !dbg !373
  %or359 = or i32 %or353, %conv358, !dbg !373
  %conv360 = trunc i32 %or359 to i16, !dbg !373
  %call361 = call zeroext i16 @__fswab16(i16 zeroext %conv360) #6, !dbg !373
  %conv362 = zext i16 %call361 to i32, !dbg !373
  br label %cond.end363, !dbg !373

cond.end363:                                      ; preds = %cond.false340, %cond.true290
  %cond364 = phi i32 [ %conv339, %cond.true290 ], [ %conv362, %cond.false340 ], !dbg !373
  %conv365 = trunc i32 %cond364 to i16, !dbg !373
  %214 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !375
  %rc_range_parameters = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %214, i32 0, i32 33, !dbg !376
  %215 = load i32, i32* %i, align 4, !dbg !377
  %idxprom366 = sext i32 %215 to i64, !dbg !375
  %arrayidx367 = getelementptr [15 x i16], [15 x i16]* %rc_range_parameters, i64 0, i64 %idxprom366, !dbg !375
  store i16 %conv365, i16* %arrayidx367, align 1, !dbg !378
  br label %for.inc368, !dbg !379

for.inc368:                                       ; preds = %cond.end363
  %216 = load i32, i32* %i, align 4, !dbg !380
  %inc369 = add i32 %216, 1, !dbg !380
  store i32 %inc369, i32* %i, align 4, !dbg !380
  br label %for.cond270, !dbg !381, !llvm.loop !382

for.end370:                                       ; preds = %for.cond270
  %217 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !384
  %native_422 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %217, i32 0, i32 37, !dbg !385
  %218 = load i8, i8* %native_422, align 2, !dbg !385
  %tobool371 = trunc i8 %218 to i1, !dbg !385
  %conv372 = zext i1 %tobool371 to i32, !dbg !384
  %219 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !386
  %native_420 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %219, i32 0, i32 38, !dbg !387
  %220 = load i8, i8* %native_420, align 1, !dbg !387
  %tobool373 = trunc i8 %220 to i1, !dbg !387
  %conv374 = zext i1 %tobool373 to i32, !dbg !386
  %shl375 = shl i32 %conv374, 1, !dbg !388
  %or376 = or i32 %conv372, %shl375, !dbg !389
  %conv377 = trunc i32 %or376 to i8, !dbg !384
  %221 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !390
  %native_422_420 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %221, i32 0, i32 34, !dbg !391
  store i8 %conv377, i8* %native_422_420, align 1, !dbg !392
  %222 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !393
  %second_line_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %222, i32 0, i32 39, !dbg !394
  %223 = load i8, i8* %second_line_bpg_offset, align 2, !dbg !394
  %224 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !395
  %second_line_bpg_offset378 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %224, i32 0, i32 35, !dbg !396
  store i8 %223, i8* %second_line_bpg_offset378, align 1, !dbg !397
  %225 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !398
  %nsl_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %225, i32 0, i32 40, !dbg !398
  %226 = load i16, i16* %nsl_bpg_offset, align 2, !dbg !398
  %227 = call i1 @llvm.is.constant.i16(i16 %226), !dbg !398
  br i1 %227, label %cond.true379, label %cond.false391, !dbg !398

cond.true379:                                     ; preds = %for.end370
  %228 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !398
  %nsl_bpg_offset380 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %228, i32 0, i32 40, !dbg !398
  %229 = load i16, i16* %nsl_bpg_offset380, align 2, !dbg !398
  %conv381 = zext i16 %229 to i32, !dbg !398
  %and382 = and i32 %conv381, 255, !dbg !398
  %shl383 = shl i32 %and382, 8, !dbg !398
  %230 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !398
  %nsl_bpg_offset384 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %230, i32 0, i32 40, !dbg !398
  %231 = load i16, i16* %nsl_bpg_offset384, align 2, !dbg !398
  %conv385 = zext i16 %231 to i32, !dbg !398
  %and386 = and i32 %conv385, 65280, !dbg !398
  %shr387 = ashr i32 %and386, 8, !dbg !398
  %or388 = or i32 %shl383, %shr387, !dbg !398
  %conv389 = trunc i32 %or388 to i16, !dbg !398
  %conv390 = zext i16 %conv389 to i32, !dbg !398
  br label %cond.end395, !dbg !398

cond.false391:                                    ; preds = %for.end370
  %232 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !398
  %nsl_bpg_offset392 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %232, i32 0, i32 40, !dbg !398
  %233 = load i16, i16* %nsl_bpg_offset392, align 2, !dbg !398
  %call393 = call zeroext i16 @__fswab16(i16 zeroext %233) #6, !dbg !398
  %conv394 = zext i16 %call393 to i32, !dbg !398
  br label %cond.end395, !dbg !398

cond.end395:                                      ; preds = %cond.false391, %cond.true379
  %cond396 = phi i32 [ %conv390, %cond.true379 ], [ %conv394, %cond.false391 ], !dbg !398
  %conv397 = trunc i32 %cond396 to i16, !dbg !398
  %234 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !399
  %nsl_bpg_offset398 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %234, i32 0, i32 36, !dbg !400
  store i16 %conv397, i16* %nsl_bpg_offset398, align 1, !dbg !401
  %235 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !402
  %second_line_offset_adj = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %235, i32 0, i32 41, !dbg !402
  %236 = load i16, i16* %second_line_offset_adj, align 2, !dbg !402
  %237 = call i1 @llvm.is.constant.i16(i16 %236), !dbg !402
  br i1 %237, label %cond.true399, label %cond.false411, !dbg !402

cond.true399:                                     ; preds = %cond.end395
  %238 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !402
  %second_line_offset_adj400 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %238, i32 0, i32 41, !dbg !402
  %239 = load i16, i16* %second_line_offset_adj400, align 2, !dbg !402
  %conv401 = zext i16 %239 to i32, !dbg !402
  %and402 = and i32 %conv401, 255, !dbg !402
  %shl403 = shl i32 %and402, 8, !dbg !402
  %240 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !402
  %second_line_offset_adj404 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %240, i32 0, i32 41, !dbg !402
  %241 = load i16, i16* %second_line_offset_adj404, align 2, !dbg !402
  %conv405 = zext i16 %241 to i32, !dbg !402
  %and406 = and i32 %conv405, 65280, !dbg !402
  %shr407 = ashr i32 %and406, 8, !dbg !402
  %or408 = or i32 %shl403, %shr407, !dbg !402
  %conv409 = trunc i32 %or408 to i16, !dbg !402
  %conv410 = zext i16 %conv409 to i32, !dbg !402
  br label %cond.end415, !dbg !402

cond.false411:                                    ; preds = %cond.end395
  %242 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %dsc_cfg.addr, align 8, !dbg !402
  %second_line_offset_adj412 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %242, i32 0, i32 41, !dbg !402
  %243 = load i16, i16* %second_line_offset_adj412, align 2, !dbg !402
  %call413 = call zeroext i16 @__fswab16(i16 zeroext %243) #6, !dbg !402
  %conv414 = zext i16 %call413 to i32, !dbg !402
  br label %cond.end415, !dbg !402

cond.end415:                                      ; preds = %cond.false411, %cond.true399
  %cond416 = phi i32 [ %conv410, %cond.true399 ], [ %conv414, %cond.false411 ], !dbg !402
  %conv417 = trunc i32 %cond416 to i16, !dbg !402
  %244 = load %struct.drm_dsc_picture_parameter_set*, %struct.drm_dsc_picture_parameter_set** %pps_payload.addr, align 8, !dbg !403
  %second_line_offset_adj418 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, %struct.drm_dsc_picture_parameter_set* %244, i32 0, i32 37, !dbg !404
  store i16 %conv417, i16* %second_line_offset_adj418, align 1, !dbg !405
  ret void, !dbg !406
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #3

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #4 !dbg !407 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load i16, i16* %val.addr, align 2, !dbg !413
  %conv = zext i16 %0 to i32, !dbg !413
  %and = and i32 %conv, 255, !dbg !413
  %shl = shl i32 %and, 8, !dbg !413
  %1 = load i16, i16* %val.addr, align 2, !dbg !413
  %conv1 = zext i16 %1 to i32, !dbg !413
  %and2 = and i32 %conv1, 65280, !dbg !413
  %shr = ashr i32 %and2, 8, !dbg !413
  %or = or i32 %shl, %shr, !dbg !413
  %conv3 = trunc i32 %or to i16, !dbg !413
  ret i16 %conv3, !dbg !414
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_dsc_compute_rc_parameters(%struct.drm_dsc_config* %vdsc_cfg) #0 !dbg !415 {
entry:
  %retval = alloca i32, align 4
  %vdsc_cfg.addr = alloca %struct.drm_dsc_config*, align 8
  %groups_per_line = alloca i64, align 8
  %groups_total = alloca i64, align 8
  %num_extra_mux_bits = alloca i64, align 8
  %slice_bits = alloca i64, align 8
  %hrd_delay = alloca i64, align 8
  %final_scale = alloca i64, align 8
  %rbs_min = alloca i64, align 8
  store %struct.drm_dsc_config* %vdsc_cfg, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.drm_dsc_config** %vdsc_cfg.addr, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata i64* %groups_per_line, metadata !421, metadata !DIExpression()), !dbg !423
  store i64 0, i64* %groups_per_line, align 8, !dbg !423
  call void @llvm.dbg.declare(metadata i64* %groups_total, metadata !424, metadata !DIExpression()), !dbg !425
  store i64 0, i64* %groups_total, align 8, !dbg !425
  call void @llvm.dbg.declare(metadata i64* %num_extra_mux_bits, metadata !426, metadata !DIExpression()), !dbg !427
  store i64 0, i64* %num_extra_mux_bits, align 8, !dbg !427
  call void @llvm.dbg.declare(metadata i64* %slice_bits, metadata !428, metadata !DIExpression()), !dbg !429
  store i64 0, i64* %slice_bits, align 8, !dbg !429
  call void @llvm.dbg.declare(metadata i64* %hrd_delay, metadata !430, metadata !DIExpression()), !dbg !431
  store i64 0, i64* %hrd_delay, align 8, !dbg !431
  call void @llvm.dbg.declare(metadata i64* %final_scale, metadata !432, metadata !DIExpression()), !dbg !433
  store i64 0, i64* %final_scale, align 8, !dbg !433
  call void @llvm.dbg.declare(metadata i64* %rbs_min, metadata !434, metadata !DIExpression()), !dbg !435
  store i64 0, i64* %rbs_min, align 8, !dbg !435
  %0 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !436
  %native_420 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %0, i32 0, i32 38, !dbg !438
  %1 = load i8, i8* %native_420, align 1, !dbg !438
  %tobool = trunc i8 %1 to i1, !dbg !438
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !439

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !440
  %native_422 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %2, i32 0, i32 37, !dbg !441
  %3 = load i8, i8* %native_422, align 2, !dbg !441
  %tobool1 = trunc i8 %3 to i1, !dbg !441
  br i1 %tobool1, label %if.then, label %if.else, !dbg !442

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !443
  %slice_width = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %4, i32 0, i32 4, !dbg !443
  %5 = load i16, i16* %slice_width, align 2, !dbg !443
  %conv = zext i16 %5 to i32, !dbg !443
  %div = sdiv i32 %conv, 2, !dbg !443
  %add = add i32 %div, 3, !dbg !443
  %sub = sub i32 %add, 1, !dbg !443
  %div2 = sdiv i32 %sub, 3, !dbg !443
  %conv3 = sext i32 %div2 to i64, !dbg !443
  store i64 %conv3, i64* %groups_per_line, align 8, !dbg !445
  %6 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !446
  %slice_width4 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %6, i32 0, i32 4, !dbg !446
  %7 = load i16, i16* %slice_width4, align 2, !dbg !446
  %conv5 = zext i16 %7 to i32, !dbg !446
  %div6 = sdiv i32 %conv5, 2, !dbg !446
  %8 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !446
  %bits_per_pixel = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %8, i32 0, i32 11, !dbg !446
  %9 = load i16, i16* %bits_per_pixel, align 2, !dbg !446
  %conv7 = zext i16 %9 to i32, !dbg !446
  %mul = mul i32 %div6, %conv7, !dbg !446
  %add8 = add i32 %mul, 128, !dbg !446
  %sub9 = sub i32 %add8, 1, !dbg !446
  %div10 = sdiv i32 %sub9, 128, !dbg !446
  %conv11 = trunc i32 %div10 to i16, !dbg !446
  %10 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !447
  %slice_chunk_size = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %10, i32 0, i32 33, !dbg !448
  store i16 %conv11, i16* %slice_chunk_size, align 2, !dbg !449
  br label %if.end, !dbg !450

if.else:                                          ; preds = %lor.lhs.false
  %11 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !451
  %slice_width12 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %11, i32 0, i32 4, !dbg !451
  %12 = load i16, i16* %slice_width12, align 2, !dbg !451
  %conv13 = zext i16 %12 to i32, !dbg !451
  %add14 = add i32 %conv13, 3, !dbg !451
  %sub15 = sub i32 %add14, 1, !dbg !451
  %div16 = sdiv i32 %sub15, 3, !dbg !451
  %conv17 = sext i32 %div16 to i64, !dbg !451
  store i64 %conv17, i64* %groups_per_line, align 8, !dbg !453
  %13 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !454
  %slice_width18 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %13, i32 0, i32 4, !dbg !454
  %14 = load i16, i16* %slice_width18, align 2, !dbg !454
  %conv19 = zext i16 %14 to i32, !dbg !454
  %15 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !454
  %bits_per_pixel20 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %15, i32 0, i32 11, !dbg !454
  %16 = load i16, i16* %bits_per_pixel20, align 2, !dbg !454
  %conv21 = zext i16 %16 to i32, !dbg !454
  %mul22 = mul i32 %conv19, %conv21, !dbg !454
  %add23 = add i32 %mul22, 128, !dbg !454
  %sub24 = sub i32 %add23, 1, !dbg !454
  %div25 = sdiv i32 %sub24, 128, !dbg !454
  %conv26 = trunc i32 %div25 to i16, !dbg !454
  %17 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !455
  %slice_chunk_size27 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %17, i32 0, i32 33, !dbg !456
  store i16 %conv26, i16* %slice_chunk_size27, align 2, !dbg !457
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !458
  %convert_rgb = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %18, i32 0, i32 2, !dbg !460
  %19 = load i8, i8* %convert_rgb, align 2, !dbg !460
  %tobool28 = trunc i8 %19 to i1, !dbg !460
  br i1 %tobool28, label %if.then29, label %if.else38, !dbg !461

if.then29:                                        ; preds = %if.end
  %20 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !462
  %mux_word_size = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %20, i32 0, i32 32, !dbg !463
  %21 = load i8, i8* %mux_word_size, align 1, !dbg !463
  %conv30 = zext i8 %21 to i32, !dbg !462
  %22 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !464
  %bits_per_component = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %22, i32 0, i32 1, !dbg !465
  %23 = load i8, i8* %bits_per_component, align 1, !dbg !465
  %conv31 = zext i8 %23 to i32, !dbg !464
  %mul32 = mul i32 4, %conv31, !dbg !466
  %add33 = add i32 %mul32, 4, !dbg !467
  %add34 = add i32 %conv30, %add33, !dbg !468
  %sub35 = sub i32 %add34, 2, !dbg !469
  %mul36 = mul i32 3, %sub35, !dbg !470
  %conv37 = sext i32 %mul36 to i64, !dbg !471
  store i64 %conv37, i64* %num_extra_mux_bits, align 8, !dbg !472
  br label %if.end74, !dbg !473

if.else38:                                        ; preds = %if.end
  %24 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !474
  %native_42239 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %24, i32 0, i32 37, !dbg !476
  %25 = load i8, i8* %native_42239, align 2, !dbg !476
  %tobool40 = trunc i8 %25 to i1, !dbg !476
  br i1 %tobool40, label %if.then41, label %if.else57, !dbg !477

if.then41:                                        ; preds = %if.else38
  %26 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !478
  %mux_word_size42 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %26, i32 0, i32 32, !dbg !479
  %27 = load i8, i8* %mux_word_size42, align 1, !dbg !479
  %conv43 = zext i8 %27 to i32, !dbg !478
  %mul44 = mul i32 4, %conv43, !dbg !480
  %28 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !481
  %bits_per_component45 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %28, i32 0, i32 1, !dbg !482
  %29 = load i8, i8* %bits_per_component45, align 1, !dbg !482
  %conv46 = zext i8 %29 to i32, !dbg !481
  %mul47 = mul i32 4, %conv46, !dbg !483
  %add48 = add i32 %mul47, 4, !dbg !484
  %add49 = add i32 %mul44, %add48, !dbg !485
  %30 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !486
  %bits_per_component50 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %30, i32 0, i32 1, !dbg !487
  %31 = load i8, i8* %bits_per_component50, align 1, !dbg !487
  %conv51 = zext i8 %31 to i32, !dbg !486
  %mul52 = mul i32 4, %conv51, !dbg !488
  %mul53 = mul i32 3, %mul52, !dbg !489
  %add54 = add i32 %add49, %mul53, !dbg !490
  %sub55 = sub i32 %add54, 2, !dbg !491
  %conv56 = sext i32 %sub55 to i64, !dbg !492
  store i64 %conv56, i64* %num_extra_mux_bits, align 8, !dbg !493
  br label %if.end73, !dbg !494

if.else57:                                        ; preds = %if.else38
  %32 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !495
  %mux_word_size58 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %32, i32 0, i32 32, !dbg !496
  %33 = load i8, i8* %mux_word_size58, align 1, !dbg !496
  %conv59 = zext i8 %33 to i32, !dbg !495
  %mul60 = mul i32 3, %conv59, !dbg !497
  %34 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !498
  %bits_per_component61 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %34, i32 0, i32 1, !dbg !499
  %35 = load i8, i8* %bits_per_component61, align 1, !dbg !499
  %conv62 = zext i8 %35 to i32, !dbg !498
  %mul63 = mul i32 4, %conv62, !dbg !500
  %add64 = add i32 %mul63, 4, !dbg !501
  %add65 = add i32 %mul60, %add64, !dbg !502
  %36 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !503
  %bits_per_component66 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %36, i32 0, i32 1, !dbg !504
  %37 = load i8, i8* %bits_per_component66, align 1, !dbg !504
  %conv67 = zext i8 %37 to i32, !dbg !503
  %mul68 = mul i32 4, %conv67, !dbg !505
  %mul69 = mul i32 2, %mul68, !dbg !506
  %add70 = add i32 %add65, %mul69, !dbg !507
  %sub71 = sub i32 %add70, 2, !dbg !508
  %conv72 = sext i32 %sub71 to i64, !dbg !509
  store i64 %conv72, i64* %num_extra_mux_bits, align 8, !dbg !510
  br label %if.end73

if.end73:                                         ; preds = %if.else57, %if.then41
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then29
  %38 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !511
  %slice_chunk_size75 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %38, i32 0, i32 33, !dbg !512
  %39 = load i16, i16* %slice_chunk_size75, align 2, !dbg !512
  %conv76 = zext i16 %39 to i32, !dbg !511
  %mul77 = mul i32 8, %conv76, !dbg !513
  %40 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !514
  %slice_height = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %40, i32 0, i32 5, !dbg !515
  %41 = load i16, i16* %slice_height, align 2, !dbg !515
  %conv78 = zext i16 %41 to i32, !dbg !514
  %mul79 = mul i32 %mul77, %conv78, !dbg !516
  %conv80 = sext i32 %mul79 to i64, !dbg !517
  store i64 %conv80, i64* %slice_bits, align 8, !dbg !518
  br label %while.cond, !dbg !519

while.cond:                                       ; preds = %while.body, %if.end74
  %42 = load i64, i64* %num_extra_mux_bits, align 8, !dbg !520
  %cmp = icmp ugt i64 %42, 0, !dbg !521
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !522

land.rhs:                                         ; preds = %while.cond
  %43 = load i64, i64* %slice_bits, align 8, !dbg !523
  %44 = load i64, i64* %num_extra_mux_bits, align 8, !dbg !524
  %sub82 = sub i64 %43, %44, !dbg !525
  %45 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !526
  %mux_word_size83 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %45, i32 0, i32 32, !dbg !527
  %46 = load i8, i8* %mux_word_size83, align 1, !dbg !527
  %conv84 = zext i8 %46 to i64, !dbg !526
  %rem = urem i64 %sub82, %conv84, !dbg !528
  %tobool85 = icmp ne i64 %rem, 0, !dbg !522
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %47 = phi i1 [ false, %while.cond ], [ %tobool85, %land.rhs ], !dbg !529
  br i1 %47, label %while.body, label %while.end, !dbg !519

while.body:                                       ; preds = %land.end
  %48 = load i64, i64* %num_extra_mux_bits, align 8, !dbg !530
  %dec = add i64 %48, -1, !dbg !530
  store i64 %dec, i64* %num_extra_mux_bits, align 8, !dbg !530
  br label %while.cond, !dbg !519, !llvm.loop !531

while.end:                                        ; preds = %land.end
  %49 = load i64, i64* %groups_per_line, align 8, !dbg !532
  %50 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !534
  %initial_scale_value = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %50, i32 0, i32 25, !dbg !535
  %51 = load i8, i8* %initial_scale_value, align 2, !dbg !535
  %conv86 = zext i8 %51 to i32, !dbg !534
  %sub87 = sub i32 %conv86, 8, !dbg !536
  %conv88 = sext i32 %sub87 to i64, !dbg !534
  %cmp89 = icmp ult i64 %49, %conv88, !dbg !537
  br i1 %cmp89, label %if.then91, label %if.end95, !dbg !538

if.then91:                                        ; preds = %while.end
  %52 = load i64, i64* %groups_per_line, align 8, !dbg !539
  %add92 = add i64 %52, 8, !dbg !540
  %conv93 = trunc i64 %add92 to i8, !dbg !539
  %53 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !541
  %initial_scale_value94 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %53, i32 0, i32 25, !dbg !542
  store i8 %conv93, i8* %initial_scale_value94, align 2, !dbg !543
  br label %if.end95, !dbg !541

if.end95:                                         ; preds = %if.then91, %while.end
  %54 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !544
  %initial_scale_value96 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %54, i32 0, i32 25, !dbg !546
  %55 = load i8, i8* %initial_scale_value96, align 2, !dbg !546
  %conv97 = zext i8 %55 to i32, !dbg !544
  %cmp98 = icmp sgt i32 %conv97, 8, !dbg !547
  br i1 %cmp98, label %if.then100, label %if.else107, !dbg !548

if.then100:                                       ; preds = %if.end95
  %56 = load i64, i64* %groups_per_line, align 8, !dbg !549
  %57 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !550
  %initial_scale_value101 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %57, i32 0, i32 25, !dbg !551
  %58 = load i8, i8* %initial_scale_value101, align 2, !dbg !551
  %conv102 = zext i8 %58 to i32, !dbg !550
  %sub103 = sub i32 %conv102, 8, !dbg !552
  %conv104 = sext i32 %sub103 to i64, !dbg !553
  %div105 = udiv i64 %56, %conv104, !dbg !554
  %conv106 = trunc i64 %div105 to i16, !dbg !549
  %59 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !555
  %scale_decrement_interval = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %59, i32 0, i32 26, !dbg !556
  store i16 %conv106, i16* %scale_decrement_interval, align 2, !dbg !557
  br label %if.end109, !dbg !555

if.else107:                                       ; preds = %if.end95
  %60 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !558
  %scale_decrement_interval108 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %60, i32 0, i32 26, !dbg !559
  store i16 4095, i16* %scale_decrement_interval108, align 2, !dbg !560
  br label %if.end109

if.end109:                                        ; preds = %if.else107, %if.then100
  %61 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !561
  %rc_model_size = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %61, i32 0, i32 22, !dbg !562
  %62 = load i16, i16* %rc_model_size, align 2, !dbg !562
  %conv110 = zext i16 %62 to i32, !dbg !561
  %63 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !563
  %initial_xmit_delay = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %63, i32 0, i32 15, !dbg !564
  %64 = load i16, i16* %initial_xmit_delay, align 2, !dbg !564
  %conv111 = zext i16 %64 to i32, !dbg !563
  %65 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !565
  %bits_per_pixel112 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %65, i32 0, i32 11, !dbg !566
  %66 = load i16, i16* %bits_per_pixel112, align 2, !dbg !566
  %conv113 = zext i16 %66 to i32, !dbg !565
  %mul114 = mul i32 %conv111, %conv113, !dbg !567
  %add115 = add i32 %mul114, 8, !dbg !568
  %div116 = sdiv i32 %add115, 16, !dbg !569
  %sub117 = sub i32 %conv110, %div116, !dbg !570
  %conv118 = sext i32 %sub117 to i64, !dbg !561
  %67 = load i64, i64* %num_extra_mux_bits, align 8, !dbg !571
  %add119 = add i64 %conv118, %67, !dbg !572
  %conv120 = trunc i64 %add119 to i16, !dbg !561
  %68 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !573
  %final_offset = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %68, i32 0, i32 30, !dbg !574
  store i16 %conv120, i16* %final_offset, align 2, !dbg !575
  %69 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !576
  %final_offset121 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %69, i32 0, i32 30, !dbg !578
  %70 = load i16, i16* %final_offset121, align 2, !dbg !578
  %conv122 = zext i16 %70 to i32, !dbg !576
  %71 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !579
  %rc_model_size123 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %71, i32 0, i32 22, !dbg !580
  %72 = load i16, i16* %rc_model_size123, align 2, !dbg !580
  %conv124 = zext i16 %72 to i32, !dbg !579
  %cmp125 = icmp sge i32 %conv122, %conv124, !dbg !581
  br i1 %cmp125, label %if.then127, label %if.end128, !dbg !582

if.then127:                                       ; preds = %if.end109
  call void (i32, i8*, ...) @__drm_dbg(i32 4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0)) #7, !dbg !583
  store i32 -34, i32* %retval, align 4, !dbg !585
  br label %return, !dbg !585

if.end128:                                        ; preds = %if.end109
  %73 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !586
  %rc_model_size129 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %73, i32 0, i32 22, !dbg !587
  %74 = load i16, i16* %rc_model_size129, align 2, !dbg !587
  %conv130 = zext i16 %74 to i32, !dbg !586
  %mul131 = mul i32 %conv130, 8, !dbg !588
  %75 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !589
  %rc_model_size132 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %75, i32 0, i32 22, !dbg !590
  %76 = load i16, i16* %rc_model_size132, align 2, !dbg !590
  %conv133 = zext i16 %76 to i32, !dbg !589
  %77 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !591
  %final_offset134 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %77, i32 0, i32 30, !dbg !592
  %78 = load i16, i16* %final_offset134, align 2, !dbg !592
  %conv135 = zext i16 %78 to i32, !dbg !591
  %sub136 = sub i32 %conv133, %conv135, !dbg !593
  %div137 = sdiv i32 %mul131, %sub136, !dbg !594
  %conv138 = sext i32 %div137 to i64, !dbg !595
  store i64 %conv138, i64* %final_scale, align 8, !dbg !596
  %79 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !597
  %slice_height139 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %79, i32 0, i32 5, !dbg !599
  %80 = load i16, i16* %slice_height139, align 2, !dbg !599
  %conv140 = zext i16 %80 to i32, !dbg !597
  %cmp141 = icmp sgt i32 %conv140, 1, !dbg !600
  br i1 %cmp141, label %if.then143, label %if.else155, !dbg !601

if.then143:                                       ; preds = %if.end128
  %81 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !602
  %first_line_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %81, i32 0, i32 18, !dbg !602
  %82 = load i8, i8* %first_line_bpg_offset, align 1, !dbg !602
  %conv144 = zext i8 %82 to i32, !dbg !602
  %shl = shl i32 %conv144, 11, !dbg !602
  %83 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !602
  %slice_height145 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %83, i32 0, i32 5, !dbg !602
  %84 = load i16, i16* %slice_height145, align 2, !dbg !602
  %conv146 = zext i16 %84 to i32, !dbg !602
  %sub147 = sub i32 %conv146, 1, !dbg !602
  %add148 = add i32 %shl, %sub147, !dbg !602
  %sub149 = sub i32 %add148, 1, !dbg !602
  %85 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !602
  %slice_height150 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %85, i32 0, i32 5, !dbg !602
  %86 = load i16, i16* %slice_height150, align 2, !dbg !602
  %conv151 = zext i16 %86 to i32, !dbg !602
  %sub152 = sub i32 %conv151, 1, !dbg !602
  %div153 = sdiv i32 %sub149, %sub152, !dbg !602
  %conv154 = trunc i32 %div153 to i16, !dbg !602
  %87 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !603
  %nfl_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %87, i32 0, i32 28, !dbg !604
  store i16 %conv154, i16* %nfl_bpg_offset, align 2, !dbg !605
  br label %if.end157, !dbg !603

if.else155:                                       ; preds = %if.end128
  %88 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !606
  %nfl_bpg_offset156 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %88, i32 0, i32 28, !dbg !607
  store i16 0, i16* %nfl_bpg_offset156, align 2, !dbg !608
  br label %if.end157

if.end157:                                        ; preds = %if.else155, %if.then143
  %89 = load i64, i64* %groups_per_line, align 8, !dbg !609
  %90 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !610
  %slice_height158 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %90, i32 0, i32 5, !dbg !611
  %91 = load i16, i16* %slice_height158, align 2, !dbg !611
  %conv159 = zext i16 %91 to i64, !dbg !610
  %mul160 = mul i64 %89, %conv159, !dbg !612
  store i64 %mul160, i64* %groups_total, align 8, !dbg !613
  %92 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !614
  %rc_model_size161 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %92, i32 0, i32 22, !dbg !614
  %93 = load i16, i16* %rc_model_size161, align 2, !dbg !614
  %conv162 = zext i16 %93 to i32, !dbg !614
  %94 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !614
  %initial_offset = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %94, i32 0, i32 19, !dbg !614
  %95 = load i16, i16* %initial_offset, align 2, !dbg !614
  %conv163 = zext i16 %95 to i32, !dbg !614
  %sub164 = sub i32 %conv162, %conv163, !dbg !614
  %conv165 = sext i32 %sub164 to i64, !dbg !614
  %96 = load i64, i64* %num_extra_mux_bits, align 8, !dbg !614
  %add166 = add i64 %conv165, %96, !dbg !614
  %shl167 = shl i64 %add166, 11, !dbg !614
  %97 = load i64, i64* %groups_total, align 8, !dbg !614
  %add168 = add i64 %shl167, %97, !dbg !614
  %sub169 = sub i64 %add168, 1, !dbg !614
  %98 = load i64, i64* %groups_total, align 8, !dbg !614
  %div170 = udiv i64 %sub169, %98, !dbg !614
  %conv171 = trunc i64 %div170 to i16, !dbg !614
  %99 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !615
  %slice_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %99, i32 0, i32 29, !dbg !616
  store i16 %conv171, i16* %slice_bpg_offset, align 2, !dbg !617
  %100 = load i64, i64* %final_scale, align 8, !dbg !618
  %cmp172 = icmp ugt i64 %100, 9, !dbg !620
  br i1 %cmp172, label %if.then174, label %if.else189, !dbg !621

if.then174:                                       ; preds = %if.end157
  %101 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !622
  %final_offset175 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %101, i32 0, i32 30, !dbg !624
  %102 = load i16, i16* %final_offset175, align 2, !dbg !624
  %conv176 = zext i16 %102 to i32, !dbg !622
  %mul177 = mul i32 %conv176, 2048, !dbg !625
  %conv178 = sext i32 %mul177 to i64, !dbg !626
  %103 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !627
  %nfl_bpg_offset179 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %103, i32 0, i32 28, !dbg !628
  %104 = load i16, i16* %nfl_bpg_offset179, align 2, !dbg !628
  %conv180 = zext i16 %104 to i32, !dbg !627
  %105 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !629
  %slice_bpg_offset181 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %105, i32 0, i32 29, !dbg !630
  %106 = load i16, i16* %slice_bpg_offset181, align 2, !dbg !630
  %conv182 = zext i16 %106 to i32, !dbg !629
  %add183 = add i32 %conv180, %conv182, !dbg !631
  %conv184 = sext i32 %add183 to i64, !dbg !632
  %107 = load i64, i64* %final_scale, align 8, !dbg !633
  %sub185 = sub i64 %107, 9, !dbg !634
  %mul186 = mul i64 %conv184, %sub185, !dbg !635
  %div187 = udiv i64 %conv178, %mul186, !dbg !636
  %conv188 = trunc i64 %div187 to i16, !dbg !626
  %108 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !637
  %scale_increment_interval = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %108, i32 0, i32 27, !dbg !638
  store i16 %conv188, i16* %scale_increment_interval, align 2, !dbg !639
  br label %if.end191, !dbg !640

if.else189:                                       ; preds = %if.end157
  %109 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !641
  %scale_increment_interval190 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %109, i32 0, i32 27, !dbg !643
  store i16 0, i16* %scale_increment_interval190, align 2, !dbg !644
  br label %if.end191

if.end191:                                        ; preds = %if.else189, %if.then174
  %110 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !645
  %rc_model_size192 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %110, i32 0, i32 22, !dbg !646
  %111 = load i16, i16* %rc_model_size192, align 2, !dbg !646
  %conv193 = zext i16 %111 to i32, !dbg !645
  %112 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !647
  %initial_offset194 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %112, i32 0, i32 19, !dbg !648
  %113 = load i16, i16* %initial_offset194, align 2, !dbg !648
  %conv195 = zext i16 %113 to i32, !dbg !647
  %sub196 = sub i32 %conv193, %conv195, !dbg !649
  %114 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !650
  %initial_xmit_delay197 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %114, i32 0, i32 15, !dbg !650
  %115 = load i16, i16* %initial_xmit_delay197, align 2, !dbg !650
  %conv198 = zext i16 %115 to i32, !dbg !650
  %116 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !650
  %bits_per_pixel199 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %116, i32 0, i32 11, !dbg !650
  %117 = load i16, i16* %bits_per_pixel199, align 2, !dbg !650
  %conv200 = zext i16 %117 to i32, !dbg !650
  %mul201 = mul i32 %conv198, %conv200, !dbg !650
  %add202 = add i32 %mul201, 16, !dbg !650
  %sub203 = sub i32 %add202, 1, !dbg !650
  %div204 = sdiv i32 %sub203, 16, !dbg !650
  %add205 = add i32 %sub196, %div204, !dbg !651
  %conv206 = sext i32 %add205 to i64, !dbg !645
  %118 = load i64, i64* %groups_per_line, align 8, !dbg !652
  %119 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !653
  %first_line_bpg_offset207 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %119, i32 0, i32 18, !dbg !654
  %120 = load i8, i8* %first_line_bpg_offset207, align 1, !dbg !654
  %conv208 = zext i8 %120 to i64, !dbg !653
  %mul209 = mul i64 %118, %conv208, !dbg !655
  %add210 = add i64 %conv206, %mul209, !dbg !656
  store i64 %add210, i64* %rbs_min, align 8, !dbg !657
  %121 = load i64, i64* %rbs_min, align 8, !dbg !658
  %mul211 = mul i64 %121, 16, !dbg !658
  %122 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !658
  %bits_per_pixel212 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %122, i32 0, i32 11, !dbg !658
  %123 = load i16, i16* %bits_per_pixel212, align 2, !dbg !658
  %conv213 = zext i16 %123 to i64, !dbg !658
  %add214 = add i64 %mul211, %conv213, !dbg !658
  %sub215 = sub i64 %add214, 1, !dbg !658
  %124 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !658
  %bits_per_pixel216 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %124, i32 0, i32 11, !dbg !658
  %125 = load i16, i16* %bits_per_pixel216, align 2, !dbg !658
  %conv217 = zext i16 %125 to i64, !dbg !658
  %div218 = udiv i64 %sub215, %conv217, !dbg !658
  store i64 %div218, i64* %hrd_delay, align 8, !dbg !659
  %126 = load i64, i64* %hrd_delay, align 8, !dbg !660
  %127 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !661
  %bits_per_pixel219 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %127, i32 0, i32 11, !dbg !662
  %128 = load i16, i16* %bits_per_pixel219, align 2, !dbg !662
  %conv220 = zext i16 %128 to i64, !dbg !661
  %mul221 = mul i64 %126, %conv220, !dbg !663
  %div222 = udiv i64 %mul221, 16, !dbg !664
  %conv223 = trunc i64 %div222 to i16, !dbg !665
  %129 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !666
  %rc_bits = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %129, i32 0, i32 34, !dbg !667
  store i16 %conv223, i16* %rc_bits, align 2, !dbg !668
  %130 = load i64, i64* %hrd_delay, align 8, !dbg !669
  %131 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !670
  %initial_xmit_delay224 = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %131, i32 0, i32 15, !dbg !671
  %132 = load i16, i16* %initial_xmit_delay224, align 2, !dbg !671
  %conv225 = zext i16 %132 to i64, !dbg !670
  %sub226 = sub i64 %130, %conv225, !dbg !672
  %conv227 = trunc i64 %sub226 to i16, !dbg !669
  %133 = load %struct.drm_dsc_config*, %struct.drm_dsc_config** %vdsc_cfg.addr, align 8, !dbg !673
  %initial_dec_delay = getelementptr inbounds %struct.drm_dsc_config, %struct.drm_dsc_config* %133, i32 0, i32 16, !dbg !674
  store i16 %conv227, i16* %initial_dec_delay, align 2, !dbg !675
  store i32 0, i32* %retval, align 4, !dbg !676
  br label %return, !dbg !676

return:                                           ; preds = %if.end191, %if.then127
  %134 = load i32, i32* %retval, align 4, !dbg !677
  ret i32 %134, !dbg !677
}

; Function Attrs: noredzone
declare dso_local void @__drm_dbg(i32, i8*, ...) #5

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind readnone }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !17, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/drm_dsc.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !4, line: 277, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!7 = !DIEnumerator(name: "DRM_UT_CORE", value: 1, isUnsigned: true)
!8 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 2, isUnsigned: true)
!9 = !DIEnumerator(name: "DRM_UT_KMS", value: 4, isUnsigned: true)
!10 = !DIEnumerator(name: "DRM_UT_PRIME", value: 8, isUnsigned: true)
!11 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 16, isUnsigned: true)
!12 = !DIEnumerator(name: "DRM_UT_VBL", value: 32, isUnsigned: true)
!13 = !DIEnumerator(name: "DRM_UT_STATE", value: 64, isUnsigned: true)
!14 = !DIEnumerator(name: "DRM_UT_LEASE", value: 128, isUnsigned: true)
!15 = !DIEnumerator(name: "DRM_UT_DP", value: 256, isUnsigned: true)
!16 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 512, isUnsigned: true)
!17 = !{!18, !20}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !19, line: 30, baseType: !20)
!19 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"Code Model", i32 2}
!27 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!28 = distinct !DISubprogram(name: "drm_dsc_dp_pps_header_init", scope: !1, file: !1, line: 43, type: !29, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dp_sdp_header", file: !33, line: 1214, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/drm/drm_dp_helper.h", directory: "/home/lizy2001/genbc/linux")
!34 = !{!35, !40, !41, !42}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "HB0", scope: !32, file: !33, line: 1215, baseType: !36, size: 8)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !37, line: 17, baseType: !38)
!37 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "HB1", scope: !32, file: !33, line: 1216, baseType: !36, size: 8, offset: 8)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "HB2", scope: !32, file: !33, line: 1217, baseType: !36, size: 8, offset: 16)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "HB3", scope: !32, file: !33, line: 1218, baseType: !36, size: 8, offset: 24)
!43 = !{}
!44 = !DILocalVariable(name: "pps_header", arg: 1, scope: !28, file: !1, line: 43, type: !31)
!45 = !DILocation(line: 43, column: 55, scope: !28)
!46 = !DILocation(line: 45, column: 9, scope: !28)
!47 = !DILocation(line: 45, column: 2, scope: !28)
!48 = !DILocation(line: 47, column: 2, scope: !28)
!49 = !DILocation(line: 47, column: 14, scope: !28)
!50 = !DILocation(line: 47, column: 18, scope: !28)
!51 = !DILocation(line: 48, column: 2, scope: !28)
!52 = !DILocation(line: 48, column: 14, scope: !28)
!53 = !DILocation(line: 48, column: 18, scope: !28)
!54 = !DILocation(line: 49, column: 1, scope: !28)
!55 = distinct !DISubprogram(name: "drm_dsc_pps_payload_pack", scope: !1, file: !1, line: 69, type: !56, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58, !117}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_dsc_picture_parameter_set", file: !60, line: 285, size: 1024, elements: !61)
!60 = !DIFile(filename: "./include/drm/drm_dsc.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !98, !102, !103, !104, !105, !106, !109, !110, !111, !112, !113, !114, !115, !116}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_version", scope: !59, file: !60, line: 291, baseType: !36, size: 8)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "pps_identifier", scope: !59, file: !60, line: 297, baseType: !36, size: 8, offset: 8)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pps_reserved", scope: !59, file: !60, line: 302, baseType: !36, size: 8, offset: 16)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pps_3", scope: !59, file: !60, line: 315, baseType: !36, size: 8, offset: 24)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pps_4", scope: !59, file: !60, line: 329, baseType: !36, size: 8, offset: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel_low", scope: !59, file: !60, line: 335, baseType: !36, size: 8, offset: 40)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height", scope: !59, file: !60, line: 341, baseType: !18, size: 16, offset: 48)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width", scope: !59, file: !60, line: 347, baseType: !18, size: 16, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "slice_height", scope: !59, file: !60, line: 352, baseType: !18, size: 16, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "slice_width", scope: !59, file: !60, line: 357, baseType: !18, size: 16, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !59, file: !60, line: 363, baseType: !18, size: 16, offset: 112)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "initial_xmit_delay_high", scope: !59, file: !60, line: 371, baseType: !36, size: 8, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "initial_xmit_delay_low", scope: !59, file: !60, line: 376, baseType: !36, size: 8, offset: 136)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "initial_dec_delay", scope: !59, file: !60, line: 384, baseType: !18, size: 16, offset: 144)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pps20_reserved", scope: !59, file: !60, line: 390, baseType: !36, size: 8, offset: 160)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "initial_scale_value", scope: !59, file: !60, line: 397, baseType: !36, size: 8, offset: 168)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "scale_increment_interval", scope: !59, file: !60, line: 403, baseType: !18, size: 16, offset: 176)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "scale_decrement_interval_high", scope: !59, file: !60, line: 410, baseType: !36, size: 8, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "scale_decrement_interval_low", scope: !59, file: !60, line: 415, baseType: !36, size: 8, offset: 200)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pps26_reserved", scope: !59, file: !60, line: 420, baseType: !36, size: 8, offset: 208)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "first_line_bpg_offset", scope: !59, file: !60, line: 427, baseType: !36, size: 8, offset: 216)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "nfl_bpg_offset", scope: !59, file: !60, line: 433, baseType: !18, size: 16, offset: 224)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "slice_bpg_offset", scope: !59, file: !60, line: 439, baseType: !18, size: 16, offset: 240)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "initial_offset", scope: !59, file: !60, line: 444, baseType: !18, size: 16, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "final_offset", scope: !59, file: !60, line: 449, baseType: !18, size: 16, offset: 272)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flatness_min_qp", scope: !59, file: !60, line: 456, baseType: !36, size: 8, offset: 288)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flatness_max_qp", scope: !59, file: !60, line: 463, baseType: !36, size: 8, offset: 296)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "rc_model_size", scope: !59, file: !60, line: 468, baseType: !18, size: 16, offset: 304)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rc_edge_factor", scope: !59, file: !60, line: 475, baseType: !36, size: 8, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "rc_quant_incr_limit0", scope: !59, file: !60, line: 481, baseType: !36, size: 8, offset: 328)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rc_quant_incr_limit1", scope: !59, file: !60, line: 487, baseType: !36, size: 8, offset: 336)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "rc_tgt_offset", scope: !59, file: !60, line: 495, baseType: !36, size: 8, offset: 344)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "rc_buf_thresh", scope: !59, file: !60, line: 501, baseType: !95, size: 112, offset: 352)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 112, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 14)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "rc_range_parameters", scope: !59, file: !60, line: 507, baseType: !99, size: 240, offset: 464)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 240, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 15)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "native_422_420", scope: !59, file: !60, line: 516, baseType: !36, size: 8, offset: 704)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "second_line_bpg_offset", scope: !59, file: !60, line: 524, baseType: !36, size: 8, offset: 712)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "nsl_bpg_offset", scope: !59, file: !60, line: 530, baseType: !18, size: 16, offset: 720)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "second_line_offset_adj", scope: !59, file: !60, line: 536, baseType: !18, size: 16, offset: 736)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_94_reserved", scope: !59, file: !60, line: 541, baseType: !107, size: 32, offset: 752)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !37, line: 21, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !5)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_98_reserved", scope: !59, file: !60, line: 546, baseType: !107, size: 32, offset: 784)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_102_reserved", scope: !59, file: !60, line: 551, baseType: !107, size: 32, offset: 816)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_106_reserved", scope: !59, file: !60, line: 556, baseType: !107, size: 32, offset: 848)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_110_reserved", scope: !59, file: !60, line: 561, baseType: !107, size: 32, offset: 880)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_114_reserved", scope: !59, file: !60, line: 566, baseType: !107, size: 32, offset: 912)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_118_reserved", scope: !59, file: !60, line: 571, baseType: !107, size: 32, offset: 944)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_122_reserved", scope: !59, file: !60, line: 576, baseType: !107, size: 32, offset: 976)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "pps_short_126_reserved", scope: !59, file: !60, line: 581, baseType: !18, size: 16, offset: 1008)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_dsc_config", file: !60, line: 75, size: 1088, elements: !120)
!120 = !{!121, !122, !123, !127, !128, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !147, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "line_buf_depth", scope: !119, file: !60, line: 80, baseType: !36, size: 8)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_component", scope: !119, file: !60, line: 84, baseType: !36, size: 8, offset: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "convert_rgb", scope: !119, file: !60, line: 90, baseType: !124, size: 8, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !125, line: 30, baseType: !126)
!125 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!126 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "slice_count", scope: !119, file: !60, line: 94, baseType: !36, size: 8, offset: 24)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "slice_width", scope: !119, file: !60, line: 98, baseType: !129, size: 16, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !37, line: 19, baseType: !20)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "slice_height", scope: !119, file: !60, line: 102, baseType: !129, size: 16, offset: 48)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "simple_422", scope: !119, file: !60, line: 106, baseType: !124, size: 8, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width", scope: !119, file: !60, line: 110, baseType: !129, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height", scope: !119, file: !60, line: 114, baseType: !129, size: 16, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rc_tgt_offset_high", scope: !119, file: !60, line: 119, baseType: !36, size: 8, offset: 112)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "rc_tgt_offset_low", scope: !119, file: !60, line: 124, baseType: !36, size: 8, offset: 120)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !119, file: !60, line: 129, baseType: !129, size: 16, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "rc_edge_factor", scope: !119, file: !60, line: 134, baseType: !36, size: 8, offset: 144)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "rc_quant_incr_limit1", scope: !119, file: !60, line: 139, baseType: !36, size: 8, offset: 152)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rc_quant_incr_limit0", scope: !119, file: !60, line: 144, baseType: !36, size: 8, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "initial_xmit_delay", scope: !119, file: !60, line: 149, baseType: !129, size: 16, offset: 176)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "initial_dec_delay", scope: !119, file: !60, line: 156, baseType: !129, size: 16, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "block_pred_enable", scope: !119, file: !60, line: 162, baseType: !124, size: 8, offset: 208)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "first_line_bpg_offset", scope: !119, file: !60, line: 168, baseType: !36, size: 8, offset: 216)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "initial_offset", scope: !119, file: !60, line: 172, baseType: !129, size: 16, offset: 224)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rc_buf_thresh", scope: !119, file: !60, line: 176, baseType: !146, size: 224, offset: 240)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 224, elements: !96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rc_range_params", scope: !119, file: !60, line: 182, baseType: !148, size: 360, offset: 464)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 360, elements: !100)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_dsc_rc_range_parameters", file: !60, line: 53, size: 24, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "range_min_qp", scope: !149, file: !60, line: 57, baseType: !36, size: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "range_max_qp", scope: !149, file: !60, line: 61, baseType: !36, size: 8, offset: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "range_bpg_offset", scope: !149, file: !60, line: 66, baseType: !36, size: 8, offset: 16)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rc_model_size", scope: !119, file: !60, line: 186, baseType: !129, size: 16, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flatness_min_qp", scope: !119, file: !60, line: 190, baseType: !36, size: 8, offset: 848)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flatness_max_qp", scope: !119, file: !60, line: 194, baseType: !36, size: 8, offset: 856)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "initial_scale_value", scope: !119, file: !60, line: 198, baseType: !36, size: 8, offset: 864)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "scale_decrement_interval", scope: !119, file: !60, line: 204, baseType: !129, size: 16, offset: 880)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "scale_increment_interval", scope: !119, file: !60, line: 210, baseType: !129, size: 16, offset: 896)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nfl_bpg_offset", scope: !119, file: !60, line: 214, baseType: !129, size: 16, offset: 912)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "slice_bpg_offset", scope: !119, file: !60, line: 218, baseType: !129, size: 16, offset: 928)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "final_offset", scope: !119, file: !60, line: 222, baseType: !129, size: 16, offset: 944)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_enable", scope: !119, file: !60, line: 226, baseType: !124, size: 8, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mux_word_size", scope: !119, file: !60, line: 230, baseType: !36, size: 8, offset: 968)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "slice_chunk_size", scope: !119, file: !60, line: 236, baseType: !129, size: 16, offset: 976)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "rc_bits", scope: !119, file: !60, line: 240, baseType: !129, size: 16, offset: 992)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_version_minor", scope: !119, file: !60, line: 244, baseType: !36, size: 8, offset: 1008)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_version_major", scope: !119, file: !60, line: 248, baseType: !36, size: 8, offset: 1016)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "native_422", scope: !119, file: !60, line: 252, baseType: !124, size: 8, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !119, file: !60, line: 256, baseType: !124, size: 8, offset: 1032)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "second_line_bpg_offset", scope: !119, file: !60, line: 261, baseType: !36, size: 8, offset: 1040)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nsl_bpg_offset", scope: !119, file: !60, line: 267, baseType: !129, size: 16, offset: 1056)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "second_line_offset_adj", scope: !119, file: !60, line: 272, baseType: !129, size: 16, offset: 1072)
!174 = !DILocalVariable(name: "pps_payload", arg: 1, scope: !55, file: !1, line: 69, type: !58)
!175 = !DILocation(line: 69, column: 69, scope: !55)
!176 = !DILocalVariable(name: "dsc_cfg", arg: 2, scope: !55, file: !1, line: 70, type: !117)
!177 = !DILocation(line: 70, column: 34, scope: !55)
!178 = !DILocalVariable(name: "i", scope: !55, file: !1, line: 72, type: !179)
!179 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!180 = !DILocation(line: 72, column: 6, scope: !55)
!181 = !DILocation(line: 75, column: 2, scope: !55)
!182 = !DILocation(line: 75, column: 2, scope: !183)
!183 = distinct !DILexicalBlock(scope: !55, file: !1, line: 75, column: 2)
!184 = !DILocation(line: 78, column: 9, scope: !55)
!185 = !DILocation(line: 78, column: 2, scope: !55)
!186 = !DILocation(line: 82, column: 3, scope: !55)
!187 = !DILocation(line: 82, column: 12, scope: !55)
!188 = !DILocation(line: 83, column: 3, scope: !55)
!189 = !DILocation(line: 83, column: 12, scope: !55)
!190 = !DILocation(line: 83, column: 30, scope: !55)
!191 = !DILocation(line: 82, column: 30, scope: !55)
!192 = !DILocation(line: 81, column: 2, scope: !55)
!193 = !DILocation(line: 81, column: 15, scope: !55)
!194 = !DILocation(line: 81, column: 27, scope: !55)
!195 = !DILocation(line: 89, column: 3, scope: !55)
!196 = !DILocation(line: 89, column: 12, scope: !55)
!197 = !DILocation(line: 90, column: 3, scope: !55)
!198 = !DILocation(line: 90, column: 12, scope: !55)
!199 = !DILocation(line: 90, column: 31, scope: !55)
!200 = !DILocation(line: 89, column: 27, scope: !55)
!201 = !DILocation(line: 88, column: 2, scope: !55)
!202 = !DILocation(line: 88, column: 15, scope: !55)
!203 = !DILocation(line: 88, column: 21, scope: !55)
!204 = !DILocation(line: 94, column: 5, scope: !55)
!205 = !DILocation(line: 94, column: 14, scope: !55)
!206 = !DILocation(line: 94, column: 29, scope: !55)
!207 = !DILocation(line: 94, column: 54, scope: !55)
!208 = !DILocation(line: 96, column: 3, scope: !55)
!209 = !DILocation(line: 96, column: 12, scope: !55)
!210 = !DILocation(line: 96, column: 23, scope: !55)
!211 = !DILocation(line: 95, column: 23, scope: !55)
!212 = !DILocation(line: 97, column: 3, scope: !55)
!213 = !DILocation(line: 97, column: 12, scope: !55)
!214 = !DILocation(line: 97, column: 23, scope: !55)
!215 = !DILocation(line: 96, column: 47, scope: !55)
!216 = !DILocation(line: 98, column: 3, scope: !55)
!217 = !DILocation(line: 98, column: 12, scope: !55)
!218 = !DILocation(line: 98, column: 24, scope: !55)
!219 = !DILocation(line: 97, column: 50, scope: !55)
!220 = !DILocation(line: 99, column: 3, scope: !55)
!221 = !DILocation(line: 99, column: 12, scope: !55)
!222 = !DILocation(line: 99, column: 30, scope: !55)
!223 = !DILocation(line: 98, column: 53, scope: !55)
!224 = !DILocation(line: 94, column: 3, scope: !55)
!225 = !DILocation(line: 93, column: 2, scope: !55)
!226 = !DILocation(line: 93, column: 15, scope: !55)
!227 = !DILocation(line: 93, column: 21, scope: !55)
!228 = !DILocation(line: 103, column: 4, scope: !55)
!229 = !DILocation(line: 103, column: 13, scope: !55)
!230 = !DILocation(line: 103, column: 28, scope: !55)
!231 = !DILocation(line: 103, column: 3, scope: !55)
!232 = !DILocation(line: 102, column: 2, scope: !55)
!233 = !DILocation(line: 102, column: 15, scope: !55)
!234 = !DILocation(line: 102, column: 34, scope: !55)
!235 = !DILocation(line: 113, column: 28, scope: !55)
!236 = !DILocation(line: 113, column: 2, scope: !55)
!237 = !DILocation(line: 113, column: 15, scope: !55)
!238 = !DILocation(line: 113, column: 26, scope: !55)
!239 = !DILocation(line: 116, column: 27, scope: !55)
!240 = !DILocation(line: 116, column: 2, scope: !55)
!241 = !DILocation(line: 116, column: 15, scope: !55)
!242 = !DILocation(line: 116, column: 25, scope: !55)
!243 = !DILocation(line: 119, column: 30, scope: !55)
!244 = !DILocation(line: 119, column: 2, scope: !55)
!245 = !DILocation(line: 119, column: 15, scope: !55)
!246 = !DILocation(line: 119, column: 28, scope: !55)
!247 = !DILocation(line: 122, column: 29, scope: !55)
!248 = !DILocation(line: 122, column: 2, scope: !55)
!249 = !DILocation(line: 122, column: 15, scope: !55)
!250 = !DILocation(line: 122, column: 27, scope: !55)
!251 = !DILocation(line: 125, column: 28, scope: !55)
!252 = !DILocation(line: 125, column: 2, scope: !55)
!253 = !DILocation(line: 125, column: 15, scope: !55)
!254 = !DILocation(line: 125, column: 26, scope: !55)
!255 = !DILocation(line: 129, column: 5, scope: !55)
!256 = !DILocation(line: 129, column: 14, scope: !55)
!257 = !DILocation(line: 129, column: 33, scope: !55)
!258 = !DILocation(line: 130, column: 40, scope: !55)
!259 = !DILocation(line: 129, column: 3, scope: !55)
!260 = !DILocation(line: 128, column: 2, scope: !55)
!261 = !DILocation(line: 128, column: 15, scope: !55)
!262 = !DILocation(line: 128, column: 39, scope: !55)
!263 = !DILocation(line: 135, column: 4, scope: !55)
!264 = !DILocation(line: 135, column: 13, scope: !55)
!265 = !DILocation(line: 135, column: 32, scope: !55)
!266 = !DILocation(line: 135, column: 3, scope: !55)
!267 = !DILocation(line: 134, column: 2, scope: !55)
!268 = !DILocation(line: 134, column: 15, scope: !55)
!269 = !DILocation(line: 134, column: 38, scope: !55)
!270 = !DILocation(line: 139, column: 3, scope: !55)
!271 = !DILocation(line: 138, column: 2, scope: !55)
!272 = !DILocation(line: 138, column: 15, scope: !55)
!273 = !DILocation(line: 138, column: 33, scope: !55)
!274 = !DILocation(line: 145, column: 3, scope: !55)
!275 = !DILocation(line: 145, column: 12, scope: !55)
!276 = !DILocation(line: 144, column: 2, scope: !55)
!277 = !DILocation(line: 144, column: 15, scope: !55)
!278 = !DILocation(line: 144, column: 35, scope: !55)
!279 = !DILocation(line: 149, column: 3, scope: !55)
!280 = !DILocation(line: 148, column: 2, scope: !55)
!281 = !DILocation(line: 148, column: 15, scope: !55)
!282 = !DILocation(line: 148, column: 40, scope: !55)
!283 = !DILocation(line: 153, column: 5, scope: !55)
!284 = !DILocation(line: 153, column: 14, scope: !55)
!285 = !DILocation(line: 153, column: 39, scope: !55)
!286 = !DILocation(line: 154, column: 38, scope: !55)
!287 = !DILocation(line: 153, column: 3, scope: !55)
!288 = !DILocation(line: 152, column: 2, scope: !55)
!289 = !DILocation(line: 152, column: 15, scope: !55)
!290 = !DILocation(line: 152, column: 45, scope: !55)
!291 = !DILocation(line: 159, column: 4, scope: !55)
!292 = !DILocation(line: 159, column: 13, scope: !55)
!293 = !DILocation(line: 159, column: 38, scope: !55)
!294 = !DILocation(line: 159, column: 3, scope: !55)
!295 = !DILocation(line: 158, column: 2, scope: !55)
!296 = !DILocation(line: 158, column: 15, scope: !55)
!297 = !DILocation(line: 158, column: 44, scope: !55)
!298 = !DILocation(line: 165, column: 3, scope: !55)
!299 = !DILocation(line: 165, column: 12, scope: !55)
!300 = !DILocation(line: 164, column: 2, scope: !55)
!301 = !DILocation(line: 164, column: 15, scope: !55)
!302 = !DILocation(line: 164, column: 37, scope: !55)
!303 = !DILocation(line: 169, column: 3, scope: !55)
!304 = !DILocation(line: 168, column: 2, scope: !55)
!305 = !DILocation(line: 168, column: 15, scope: !55)
!306 = !DILocation(line: 168, column: 30, scope: !55)
!307 = !DILocation(line: 173, column: 3, scope: !55)
!308 = !DILocation(line: 172, column: 2, scope: !55)
!309 = !DILocation(line: 172, column: 15, scope: !55)
!310 = !DILocation(line: 172, column: 32, scope: !55)
!311 = !DILocation(line: 177, column: 3, scope: !55)
!312 = !DILocation(line: 176, column: 2, scope: !55)
!313 = !DILocation(line: 176, column: 15, scope: !55)
!314 = !DILocation(line: 176, column: 30, scope: !55)
!315 = !DILocation(line: 180, column: 30, scope: !55)
!316 = !DILocation(line: 180, column: 2, scope: !55)
!317 = !DILocation(line: 180, column: 15, scope: !55)
!318 = !DILocation(line: 180, column: 28, scope: !55)
!319 = !DILocation(line: 183, column: 33, scope: !55)
!320 = !DILocation(line: 183, column: 42, scope: !55)
!321 = !DILocation(line: 183, column: 2, scope: !55)
!322 = !DILocation(line: 183, column: 15, scope: !55)
!323 = !DILocation(line: 183, column: 31, scope: !55)
!324 = !DILocation(line: 186, column: 33, scope: !55)
!325 = !DILocation(line: 186, column: 42, scope: !55)
!326 = !DILocation(line: 186, column: 2, scope: !55)
!327 = !DILocation(line: 186, column: 15, scope: !55)
!328 = !DILocation(line: 186, column: 31, scope: !55)
!329 = !DILocation(line: 189, column: 2, scope: !55)
!330 = !DILocation(line: 189, column: 15, scope: !55)
!331 = !DILocation(line: 189, column: 29, scope: !55)
!332 = !DILocation(line: 193, column: 2, scope: !55)
!333 = !DILocation(line: 193, column: 15, scope: !55)
!334 = !DILocation(line: 193, column: 30, scope: !55)
!335 = !DILocation(line: 197, column: 3, scope: !55)
!336 = !DILocation(line: 197, column: 12, scope: !55)
!337 = !DILocation(line: 196, column: 2, scope: !55)
!338 = !DILocation(line: 196, column: 15, scope: !55)
!339 = !DILocation(line: 196, column: 36, scope: !55)
!340 = !DILocation(line: 201, column: 3, scope: !55)
!341 = !DILocation(line: 201, column: 12, scope: !55)
!342 = !DILocation(line: 200, column: 2, scope: !55)
!343 = !DILocation(line: 200, column: 15, scope: !55)
!344 = !DILocation(line: 200, column: 36, scope: !55)
!345 = !DILocation(line: 204, column: 2, scope: !55)
!346 = !DILocation(line: 204, column: 15, scope: !55)
!347 = !DILocation(line: 204, column: 29, scope: !55)
!348 = !DILocation(line: 208, column: 9, scope: !349)
!349 = distinct !DILexicalBlock(scope: !55, file: !1, line: 208, column: 2)
!350 = !DILocation(line: 208, column: 7, scope: !349)
!351 = !DILocation(line: 208, column: 14, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !1, line: 208, column: 2)
!353 = !DILocation(line: 208, column: 16, scope: !352)
!354 = !DILocation(line: 208, column: 2, scope: !349)
!355 = !DILocation(line: 210, column: 4, scope: !352)
!356 = !DILocation(line: 210, column: 13, scope: !352)
!357 = !DILocation(line: 210, column: 27, scope: !352)
!358 = !DILocation(line: 209, column: 3, scope: !352)
!359 = !DILocation(line: 209, column: 16, scope: !352)
!360 = !DILocation(line: 209, column: 30, scope: !352)
!361 = !DILocation(line: 209, column: 33, scope: !352)
!362 = !DILocation(line: 208, column: 43, scope: !352)
!363 = !DILocation(line: 208, column: 2, scope: !352)
!364 = distinct !{!364, !354, !365}
!365 = !DILocation(line: 210, column: 28, scope: !349)
!366 = !DILocation(line: 217, column: 9, scope: !367)
!367 = distinct !DILexicalBlock(scope: !55, file: !1, line: 217, column: 2)
!368 = !DILocation(line: 217, column: 7, scope: !367)
!369 = !DILocation(line: 217, column: 14, scope: !370)
!370 = distinct !DILexicalBlock(scope: !367, file: !1, line: 217, column: 2)
!371 = !DILocation(line: 217, column: 16, scope: !370)
!372 = !DILocation(line: 217, column: 2, scope: !367)
!373 = !DILocation(line: 219, column: 4, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !1, line: 217, column: 43)
!375 = !DILocation(line: 218, column: 3, scope: !374)
!376 = !DILocation(line: 218, column: 16, scope: !374)
!377 = !DILocation(line: 218, column: 36, scope: !374)
!378 = !DILocation(line: 218, column: 39, scope: !374)
!379 = !DILocation(line: 224, column: 2, scope: !374)
!380 = !DILocation(line: 217, column: 39, scope: !370)
!381 = !DILocation(line: 217, column: 2, scope: !370)
!382 = distinct !{!382, !372, !383}
!383 = !DILocation(line: 224, column: 2, scope: !367)
!384 = !DILocation(line: 227, column: 32, scope: !55)
!385 = !DILocation(line: 227, column: 41, scope: !55)
!386 = !DILocation(line: 228, column: 3, scope: !55)
!387 = !DILocation(line: 228, column: 12, scope: !55)
!388 = !DILocation(line: 228, column: 23, scope: !55)
!389 = !DILocation(line: 227, column: 52, scope: !55)
!390 = !DILocation(line: 227, column: 2, scope: !55)
!391 = !DILocation(line: 227, column: 15, scope: !55)
!392 = !DILocation(line: 227, column: 30, scope: !55)
!393 = !DILocation(line: 232, column: 3, scope: !55)
!394 = !DILocation(line: 232, column: 12, scope: !55)
!395 = !DILocation(line: 231, column: 2, scope: !55)
!396 = !DILocation(line: 231, column: 15, scope: !55)
!397 = !DILocation(line: 231, column: 38, scope: !55)
!398 = !DILocation(line: 236, column: 3, scope: !55)
!399 = !DILocation(line: 235, column: 2, scope: !55)
!400 = !DILocation(line: 235, column: 15, scope: !55)
!401 = !DILocation(line: 235, column: 30, scope: !55)
!402 = !DILocation(line: 240, column: 3, scope: !55)
!403 = !DILocation(line: 239, column: 2, scope: !55)
!404 = !DILocation(line: 239, column: 15, scope: !55)
!405 = !DILocation(line: 239, column: 38, scope: !55)
!406 = !DILocation(line: 243, column: 1, scope: !55)
!407 = distinct !DISubprogram(name: "__fswab16", scope: !408, file: !408, line: 48, type: !409, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !43)
!408 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!409 = !DISubroutineType(types: !410)
!410 = !{!20, !20}
!411 = !DILocalVariable(name: "val", arg: 1, scope: !407, file: !408, line: 48, type: !20)
!412 = !DILocation(line: 48, column: 57, scope: !407)
!413 = !DILocation(line: 53, column: 9, scope: !407)
!414 = !DILocation(line: 53, column: 2, scope: !407)
!415 = distinct !DISubprogram(name: "drm_dsc_compute_rc_parameters", scope: !1, file: !1, line: 256, type: !416, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !43)
!416 = !DISubroutineType(types: !417)
!417 = !{!179, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!419 = !DILocalVariable(name: "vdsc_cfg", arg: 1, scope: !415, file: !1, line: 256, type: !418)
!420 = !DILocation(line: 256, column: 58, scope: !415)
!421 = !DILocalVariable(name: "groups_per_line", scope: !415, file: !1, line: 258, type: !422)
!422 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!423 = !DILocation(line: 258, column: 16, scope: !415)
!424 = !DILocalVariable(name: "groups_total", scope: !415, file: !1, line: 259, type: !422)
!425 = !DILocation(line: 259, column: 16, scope: !415)
!426 = !DILocalVariable(name: "num_extra_mux_bits", scope: !415, file: !1, line: 260, type: !422)
!427 = !DILocation(line: 260, column: 16, scope: !415)
!428 = !DILocalVariable(name: "slice_bits", scope: !415, file: !1, line: 261, type: !422)
!429 = !DILocation(line: 261, column: 16, scope: !415)
!430 = !DILocalVariable(name: "hrd_delay", scope: !415, file: !1, line: 262, type: !422)
!431 = !DILocation(line: 262, column: 16, scope: !415)
!432 = !DILocalVariable(name: "final_scale", scope: !415, file: !1, line: 263, type: !422)
!433 = !DILocation(line: 263, column: 16, scope: !415)
!434 = !DILocalVariable(name: "rbs_min", scope: !415, file: !1, line: 264, type: !422)
!435 = !DILocation(line: 264, column: 16, scope: !415)
!436 = !DILocation(line: 266, column: 6, scope: !437)
!437 = distinct !DILexicalBlock(scope: !415, file: !1, line: 266, column: 6)
!438 = !DILocation(line: 266, column: 16, scope: !437)
!439 = !DILocation(line: 266, column: 27, scope: !437)
!440 = !DILocation(line: 266, column: 30, scope: !437)
!441 = !DILocation(line: 266, column: 40, scope: !437)
!442 = !DILocation(line: 266, column: 6, scope: !415)
!443 = !DILocation(line: 268, column: 21, scope: !444)
!444 = distinct !DILexicalBlock(scope: !437, file: !1, line: 266, column: 52)
!445 = !DILocation(line: 268, column: 19, scope: !444)
!446 = !DILocation(line: 272, column: 32, scope: !444)
!447 = !DILocation(line: 272, column: 3, scope: !444)
!448 = !DILocation(line: 272, column: 13, scope: !444)
!449 = !DILocation(line: 272, column: 30, scope: !444)
!450 = !DILocation(line: 275, column: 2, scope: !444)
!451 = !DILocation(line: 277, column: 21, scope: !452)
!452 = distinct !DILexicalBlock(scope: !437, file: !1, line: 275, column: 9)
!453 = !DILocation(line: 277, column: 19, scope: !452)
!454 = !DILocation(line: 281, column: 32, scope: !452)
!455 = !DILocation(line: 281, column: 3, scope: !452)
!456 = !DILocation(line: 281, column: 13, scope: !452)
!457 = !DILocation(line: 281, column: 30, scope: !452)
!458 = !DILocation(line: 286, column: 6, scope: !459)
!459 = distinct !DILexicalBlock(scope: !415, file: !1, line: 286, column: 6)
!460 = !DILocation(line: 286, column: 16, scope: !459)
!461 = !DILocation(line: 286, column: 6, scope: !415)
!462 = !DILocation(line: 287, column: 29, scope: !459)
!463 = !DILocation(line: 287, column: 39, scope: !459)
!464 = !DILocation(line: 288, column: 13, scope: !459)
!465 = !DILocation(line: 288, column: 23, scope: !459)
!466 = !DILocation(line: 288, column: 11, scope: !459)
!467 = !DILocation(line: 288, column: 42, scope: !459)
!468 = !DILocation(line: 287, column: 53, scope: !459)
!469 = !DILocation(line: 289, column: 8, scope: !459)
!470 = !DILocation(line: 287, column: 26, scope: !459)
!471 = !DILocation(line: 287, column: 24, scope: !459)
!472 = !DILocation(line: 287, column: 22, scope: !459)
!473 = !DILocation(line: 287, column: 3, scope: !459)
!474 = !DILocation(line: 290, column: 11, scope: !475)
!475 = distinct !DILexicalBlock(scope: !459, file: !1, line: 290, column: 11)
!476 = !DILocation(line: 290, column: 21, scope: !475)
!477 = !DILocation(line: 290, column: 11, scope: !459)
!478 = !DILocation(line: 291, column: 28, scope: !475)
!479 = !DILocation(line: 291, column: 38, scope: !475)
!480 = !DILocation(line: 291, column: 26, scope: !475)
!481 = !DILocation(line: 292, column: 9, scope: !475)
!482 = !DILocation(line: 292, column: 19, scope: !475)
!483 = !DILocation(line: 292, column: 7, scope: !475)
!484 = !DILocation(line: 292, column: 38, scope: !475)
!485 = !DILocation(line: 291, column: 52, scope: !475)
!486 = !DILocation(line: 293, column: 13, scope: !475)
!487 = !DILocation(line: 293, column: 23, scope: !475)
!488 = !DILocation(line: 293, column: 11, scope: !475)
!489 = !DILocation(line: 293, column: 6, scope: !475)
!490 = !DILocation(line: 292, column: 43, scope: !475)
!491 = !DILocation(line: 293, column: 43, scope: !475)
!492 = !DILocation(line: 291, column: 24, scope: !475)
!493 = !DILocation(line: 291, column: 22, scope: !475)
!494 = !DILocation(line: 291, column: 3, scope: !475)
!495 = !DILocation(line: 295, column: 28, scope: !475)
!496 = !DILocation(line: 295, column: 38, scope: !475)
!497 = !DILocation(line: 295, column: 26, scope: !475)
!498 = !DILocation(line: 296, column: 9, scope: !475)
!499 = !DILocation(line: 296, column: 19, scope: !475)
!500 = !DILocation(line: 296, column: 7, scope: !475)
!501 = !DILocation(line: 296, column: 38, scope: !475)
!502 = !DILocation(line: 295, column: 52, scope: !475)
!503 = !DILocation(line: 297, column: 13, scope: !475)
!504 = !DILocation(line: 297, column: 23, scope: !475)
!505 = !DILocation(line: 297, column: 11, scope: !475)
!506 = !DILocation(line: 297, column: 6, scope: !475)
!507 = !DILocation(line: 296, column: 43, scope: !475)
!508 = !DILocation(line: 297, column: 43, scope: !475)
!509 = !DILocation(line: 295, column: 24, scope: !475)
!510 = !DILocation(line: 295, column: 22, scope: !475)
!511 = !DILocation(line: 299, column: 19, scope: !415)
!512 = !DILocation(line: 299, column: 29, scope: !415)
!513 = !DILocation(line: 299, column: 17, scope: !415)
!514 = !DILocation(line: 299, column: 48, scope: !415)
!515 = !DILocation(line: 299, column: 58, scope: !415)
!516 = !DILocation(line: 299, column: 46, scope: !415)
!517 = !DILocation(line: 299, column: 15, scope: !415)
!518 = !DILocation(line: 299, column: 13, scope: !415)
!519 = !DILocation(line: 301, column: 2, scope: !415)
!520 = !DILocation(line: 301, column: 10, scope: !415)
!521 = !DILocation(line: 301, column: 29, scope: !415)
!522 = !DILocation(line: 301, column: 34, scope: !415)
!523 = !DILocation(line: 302, column: 11, scope: !415)
!524 = !DILocation(line: 302, column: 24, scope: !415)
!525 = !DILocation(line: 302, column: 22, scope: !415)
!526 = !DILocation(line: 302, column: 46, scope: !415)
!527 = !DILocation(line: 302, column: 56, scope: !415)
!528 = !DILocation(line: 302, column: 44, scope: !415)
!529 = !DILocation(line: 0, scope: !415)
!530 = !DILocation(line: 303, column: 21, scope: !415)
!531 = distinct !{!531, !519, !530}
!532 = !DILocation(line: 305, column: 6, scope: !533)
!533 = distinct !DILexicalBlock(scope: !415, file: !1, line: 305, column: 6)
!534 = !DILocation(line: 305, column: 24, scope: !533)
!535 = !DILocation(line: 305, column: 34, scope: !533)
!536 = !DILocation(line: 305, column: 54, scope: !533)
!537 = !DILocation(line: 305, column: 22, scope: !533)
!538 = !DILocation(line: 305, column: 6, scope: !415)
!539 = !DILocation(line: 306, column: 35, scope: !533)
!540 = !DILocation(line: 306, column: 51, scope: !533)
!541 = !DILocation(line: 306, column: 3, scope: !533)
!542 = !DILocation(line: 306, column: 13, scope: !533)
!543 = !DILocation(line: 306, column: 33, scope: !533)
!544 = !DILocation(line: 309, column: 6, scope: !545)
!545 = distinct !DILexicalBlock(scope: !415, file: !1, line: 309, column: 6)
!546 = !DILocation(line: 309, column: 16, scope: !545)
!547 = !DILocation(line: 309, column: 36, scope: !545)
!548 = !DILocation(line: 309, column: 6, scope: !415)
!549 = !DILocation(line: 310, column: 40, scope: !545)
!550 = !DILocation(line: 311, column: 5, scope: !545)
!551 = !DILocation(line: 311, column: 15, scope: !545)
!552 = !DILocation(line: 311, column: 35, scope: !545)
!553 = !DILocation(line: 311, column: 4, scope: !545)
!554 = !DILocation(line: 310, column: 56, scope: !545)
!555 = !DILocation(line: 310, column: 3, scope: !545)
!556 = !DILocation(line: 310, column: 13, scope: !545)
!557 = !DILocation(line: 310, column: 38, scope: !545)
!558 = !DILocation(line: 313, column: 3, scope: !545)
!559 = !DILocation(line: 313, column: 13, scope: !545)
!560 = !DILocation(line: 313, column: 38, scope: !545)
!561 = !DILocation(line: 315, column: 27, scope: !415)
!562 = !DILocation(line: 315, column: 37, scope: !415)
!563 = !DILocation(line: 316, column: 4, scope: !415)
!564 = !DILocation(line: 316, column: 14, scope: !415)
!565 = !DILocation(line: 317, column: 4, scope: !415)
!566 = !DILocation(line: 317, column: 14, scope: !415)
!567 = !DILocation(line: 316, column: 33, scope: !415)
!568 = !DILocation(line: 317, column: 29, scope: !415)
!569 = !DILocation(line: 317, column: 34, scope: !415)
!570 = !DILocation(line: 315, column: 51, scope: !415)
!571 = !DILocation(line: 317, column: 41, scope: !415)
!572 = !DILocation(line: 317, column: 39, scope: !415)
!573 = !DILocation(line: 315, column: 2, scope: !415)
!574 = !DILocation(line: 315, column: 12, scope: !415)
!575 = !DILocation(line: 315, column: 25, scope: !415)
!576 = !DILocation(line: 319, column: 6, scope: !577)
!577 = distinct !DILexicalBlock(scope: !415, file: !1, line: 319, column: 6)
!578 = !DILocation(line: 319, column: 16, scope: !577)
!579 = !DILocation(line: 319, column: 32, scope: !577)
!580 = !DILocation(line: 319, column: 42, scope: !577)
!581 = !DILocation(line: 319, column: 29, scope: !577)
!582 = !DILocation(line: 319, column: 6, scope: !415)
!583 = !DILocation(line: 320, column: 3, scope: !584)
!584 = distinct !DILexicalBlock(scope: !577, file: !1, line: 319, column: 57)
!585 = !DILocation(line: 321, column: 3, scope: !584)
!586 = !DILocation(line: 324, column: 17, scope: !415)
!587 = !DILocation(line: 324, column: 27, scope: !415)
!588 = !DILocation(line: 324, column: 41, scope: !415)
!589 = !DILocation(line: 325, column: 4, scope: !415)
!590 = !DILocation(line: 325, column: 14, scope: !415)
!591 = !DILocation(line: 325, column: 30, scope: !415)
!592 = !DILocation(line: 325, column: 40, scope: !415)
!593 = !DILocation(line: 325, column: 28, scope: !415)
!594 = !DILocation(line: 324, column: 46, scope: !415)
!595 = !DILocation(line: 324, column: 16, scope: !415)
!596 = !DILocation(line: 324, column: 14, scope: !415)
!597 = !DILocation(line: 326, column: 6, scope: !598)
!598 = distinct !DILexicalBlock(scope: !415, file: !1, line: 326, column: 6)
!599 = !DILocation(line: 326, column: 16, scope: !598)
!600 = !DILocation(line: 326, column: 29, scope: !598)
!601 = !DILocation(line: 326, column: 6, scope: !415)
!602 = !DILocation(line: 332, column: 30, scope: !598)
!603 = !DILocation(line: 332, column: 3, scope: !598)
!604 = !DILocation(line: 332, column: 13, scope: !598)
!605 = !DILocation(line: 332, column: 28, scope: !598)
!606 = !DILocation(line: 335, column: 3, scope: !598)
!607 = !DILocation(line: 335, column: 13, scope: !598)
!608 = !DILocation(line: 335, column: 28, scope: !598)
!609 = !DILocation(line: 338, column: 17, scope: !415)
!610 = !DILocation(line: 338, column: 35, scope: !415)
!611 = !DILocation(line: 338, column: 45, scope: !415)
!612 = !DILocation(line: 338, column: 33, scope: !415)
!613 = !DILocation(line: 338, column: 15, scope: !415)
!614 = !DILocation(line: 341, column: 31, scope: !415)
!615 = !DILocation(line: 341, column: 2, scope: !415)
!616 = !DILocation(line: 341, column: 12, scope: !415)
!617 = !DILocation(line: 341, column: 29, scope: !415)
!618 = !DILocation(line: 346, column: 6, scope: !619)
!619 = distinct !DILexicalBlock(scope: !415, file: !1, line: 346, column: 6)
!620 = !DILocation(line: 346, column: 18, scope: !619)
!621 = !DILocation(line: 346, column: 6, scope: !415)
!622 = !DILocation(line: 354, column: 6, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !1, line: 346, column: 23)
!624 = !DILocation(line: 354, column: 16, scope: !623)
!625 = !DILocation(line: 354, column: 29, scope: !623)
!626 = !DILocation(line: 354, column: 5, scope: !623)
!627 = !DILocation(line: 355, column: 7, scope: !623)
!628 = !DILocation(line: 355, column: 17, scope: !623)
!629 = !DILocation(line: 356, column: 5, scope: !623)
!630 = !DILocation(line: 356, column: 15, scope: !623)
!631 = !DILocation(line: 355, column: 32, scope: !623)
!632 = !DILocation(line: 355, column: 6, scope: !623)
!633 = !DILocation(line: 357, column: 6, scope: !623)
!634 = !DILocation(line: 357, column: 18, scope: !623)
!635 = !DILocation(line: 356, column: 33, scope: !623)
!636 = !DILocation(line: 354, column: 42, scope: !623)
!637 = !DILocation(line: 353, column: 3, scope: !623)
!638 = !DILocation(line: 353, column: 13, scope: !623)
!639 = !DILocation(line: 353, column: 38, scope: !623)
!640 = !DILocation(line: 358, column: 2, scope: !623)
!641 = !DILocation(line: 363, column: 3, scope: !642)
!642 = distinct !DILexicalBlock(scope: !619, file: !1, line: 358, column: 9)
!643 = !DILocation(line: 363, column: 13, scope: !642)
!644 = !DILocation(line: 363, column: 38, scope: !642)
!645 = !DILocation(line: 371, column: 12, scope: !415)
!646 = !DILocation(line: 371, column: 22, scope: !415)
!647 = !DILocation(line: 371, column: 38, scope: !415)
!648 = !DILocation(line: 371, column: 48, scope: !415)
!649 = !DILocation(line: 371, column: 36, scope: !415)
!650 = !DILocation(line: 372, column: 3, scope: !415)
!651 = !DILocation(line: 371, column: 63, scope: !415)
!652 = !DILocation(line: 374, column: 3, scope: !415)
!653 = !DILocation(line: 374, column: 21, scope: !415)
!654 = !DILocation(line: 374, column: 31, scope: !415)
!655 = !DILocation(line: 374, column: 19, scope: !415)
!656 = !DILocation(line: 373, column: 39, scope: !415)
!657 = !DILocation(line: 371, column: 10, scope: !415)
!658 = !DILocation(line: 376, column: 14, scope: !415)
!659 = !DILocation(line: 376, column: 12, scope: !415)
!660 = !DILocation(line: 377, column: 23, scope: !415)
!661 = !DILocation(line: 377, column: 35, scope: !415)
!662 = !DILocation(line: 377, column: 45, scope: !415)
!663 = !DILocation(line: 377, column: 33, scope: !415)
!664 = !DILocation(line: 377, column: 61, scope: !415)
!665 = !DILocation(line: 377, column: 22, scope: !415)
!666 = !DILocation(line: 377, column: 2, scope: !415)
!667 = !DILocation(line: 377, column: 12, scope: !415)
!668 = !DILocation(line: 377, column: 20, scope: !415)
!669 = !DILocation(line: 378, column: 32, scope: !415)
!670 = !DILocation(line: 378, column: 44, scope: !415)
!671 = !DILocation(line: 378, column: 54, scope: !415)
!672 = !DILocation(line: 378, column: 42, scope: !415)
!673 = !DILocation(line: 378, column: 2, scope: !415)
!674 = !DILocation(line: 378, column: 12, scope: !415)
!675 = !DILocation(line: 378, column: 30, scope: !415)
!676 = !DILocation(line: 380, column: 2, scope: !415)
!677 = !DILocation(line: 381, column: 1, scope: !415)
