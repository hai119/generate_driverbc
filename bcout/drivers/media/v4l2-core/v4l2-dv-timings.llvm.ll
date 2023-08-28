; ModuleID = '../bcout/drivers/media/v4l2-core/v4l2-dv-timings.llvm.bc'
source_filename = "drivers/media/v4l2-core/v4l2-dv-timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon }
%union.anon = type { [32 x i32] }
%struct.v4l2_hdmi_colorimetry = type { i32, i32, i32, i32 }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.0 }
%union.anon.0 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.hdmi_vendor_infoframe = type { i32, i8, i8, i32, i8, i32, i32 }

@__UNIQUE_ID_author230 = internal constant [36 x i8] c"v4l2_dv_timings.author=Hans Verkuil\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description231 = internal constant [61 x i8] c"v4l2_dv_timings.description=V4L2 DV Timings Helper Functions\00", section ".modinfo", align 1, !dbg !154
@__UNIQUE_ID_file232 = internal constant [61 x i8] c"v4l2_dv_timings.file=drivers/media/v4l2-core/v4l2-dv-timings\00", section ".modinfo", align 1, !dbg !161
@__UNIQUE_ID_license233 = internal constant [28 x i8] c"v4l2_dv_timings.license=GPL\00", section ".modinfo", align 1, !dbg !163
@v4l2_dv_timings_presets = dso_local constant <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }> <{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 25175000, i32 16, i32 96, i32 48, i32 10, i32 2, i32 33, i32 0, i32 0, i32 0, i32 3, i32 128, %struct.v4l2_fract zeroinitializer, i8 1, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 480, i32 1, i32 0, i64 13500000, i32 19, i32 62, i32 57, i32 4, i32 3, i32 15, i32 4, i32 3, i32 16, i32 1, i32 216, %struct.v4l2_fract { i32 4, i32 3 }, i8 6, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 480, i32 0, i32 0, i64 27000000, i32 16, i32 62, i32 60, i32 9, i32 6, i32 30, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 2, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 1, i32 0, i64 13500000, i32 12, i32 63, i32 69, i32 2, i32 3, i32 19, i32 2, i32 3, i32 20, i32 1, i32 216, %struct.v4l2_fract { i32 4, i32 3 }, i8 21, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 576, i32 0, i32 0, i64 27000000, i32 12, i32 64, i32 68, i32 5, i32 5, i32 39, i32 0, i32 0, i32 0, i32 1, i32 208, %struct.v4l2_fract { i32 4, i32 3 }, i8 17, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 59400000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 3, i32 130, %struct.v4l2_fract zeroinitializer, i8 60, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 2420, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 61, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 1760, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 62, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 440, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 19, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 720, i32 0, i32 3, i64 74250000, i32 110, i32 40, i32 220, i32 5, i32 5, i32 20, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 4, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 638, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 32, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 33, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 34, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 1, i32 3, i64 74250000, i32 528, i32 44, i32 148, i32 2, i32 5, i32 15, i32 2, i32 5, i32 16, i32 1, i32 152, %struct.v4l2_fract zeroinitializer, i8 20, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 528, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 31, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 1, i32 3, i64 74250000, i32 88, i32 44, i32 148, i32 2, i32 5, i32 15, i32 2, i32 5, i32 16, i32 1, i32 154, %struct.v4l2_fract zeroinitializer, i8 5, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 3, i32 146, %struct.v4l2_fract zeroinitializer, i8 16, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 350, i32 0, i32 2, i64 31500000, i32 32, i32 64, i32 96, i32 32, i32 3, i32 60, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 400, i32 0, i32 1, i64 31500000, i32 32, i32 64, i32 96, i32 1, i32 3, i32 41, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 720, i32 400, i32 0, i32 1, i64 35500000, i32 36, i32 72, i32 108, i32 1, i32 3, i32 42, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 31500000, i32 24, i32 40, i32 128, i32 9, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 31500000, i32 16, i32 64, i32 120, i32 1, i32 3, i32 16, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 640, i32 480, i32 0, i32 0, i64 36000000, i32 56, i32 56, i32 80, i32 1, i32 3, i32 25, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 36000000, i32 24, i32 72, i32 128, i32 1, i32 2, i32 22, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 40000000, i32 40, i32 128, i32 88, i32 1, i32 4, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 50000000, i32 56, i32 120, i32 64, i32 37, i32 6, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 49500000, i32 16, i32 80, i32 160, i32 1, i32 3, i32 21, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 3, i64 56250000, i32 32, i32 64, i32 152, i32 1, i32 3, i32 27, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 800, i32 600, i32 0, i32 2, i64 73250000, i32 48, i32 32, i32 80, i32 3, i32 4, i32 29, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 848, i32 480, i32 0, i32 3, i64 33750000, i32 16, i32 112, i32 112, i32 6, i32 8, i32 23, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 1, i32 3, i64 44900000, i32 8, i32 176, i32 56, i32 0, i32 4, i32 20, i32 0, i32 4, i32 21, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 0, i64 65000000, i32 24, i32 136, i32 160, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 0, i64 75000000, i32 24, i32 136, i32 144, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 3, i64 78750000, i32 16, i32 96, i32 176, i32 1, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 3, i64 94500000, i32 48, i32 96, i32 208, i32 1, i32 3, i32 36, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1024, i32 768, i32 0, i32 2, i64 115500000, i32 48, i32 32, i32 80, i32 3, i32 4, i32 38, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1152, i32 864, i32 0, i32 3, i64 108000000, i32 64, i32 128, i32 256, i32 1, i32 3, i32 32, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 768, i32 0, i32 2, i64 68250000, i32 48, i32 32, i32 80, i32 3, i32 7, i32 12, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 768, i32 0, i32 1, i64 79500000, i32 64, i32 128, i32 192, i32 3, i32 7, i32 20, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 768, i32 0, i32 1, i64 102250000, i32 80, i32 128, i32 208, i32 3, i32 7, i32 27, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 768, i32 0, i32 1, i64 117500000, i32 80, i32 136, i32 216, i32 3, i32 7, i32 31, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 768, i32 0, i32 2, i64 140250000, i32 48, i32 32, i32 80, i32 3, i32 7, i32 35, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 800, i32 0, i32 2, i64 71000000, i32 48, i32 32, i32 80, i32 3, i32 6, i32 14, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 800, i32 0, i32 1, i64 83500000, i32 72, i32 128, i32 200, i32 3, i32 6, i32 22, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 800, i32 0, i32 1, i64 106500000, i32 80, i32 128, i32 208, i32 3, i32 6, i32 29, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 800, i32 0, i32 1, i64 122500000, i32 80, i32 136, i32 216, i32 3, i32 6, i32 34, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 800, i32 0, i32 2, i64 146250000, i32 48, i32 32, i32 80, i32 3, i32 6, i32 38, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 960, i32 0, i32 3, i64 108000000, i32 96, i32 112, i32 312, i32 1, i32 3, i32 36, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 960, i32 0, i32 3, i64 148500000, i32 64, i32 160, i32 224, i32 1, i32 3, i32 47, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 960, i32 0, i32 2, i64 175500000, i32 48, i32 32, i32 80, i32 3, i32 4, i32 50, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 108000000, i32 48, i32 112, i32 248, i32 1, i32 3, i32 38, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 135000000, i32 16, i32 144, i32 248, i32 1, i32 3, i32 38, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 3, i64 157500000, i32 64, i32 160, i32 224, i32 1, i32 3, i32 44, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1280, i32 1024, i32 0, i32 2, i64 187250000, i32 48, i32 32, i32 80, i32 3, i32 7, i32 50, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1360, i32 768, i32 0, i32 3, i64 85500000, i32 64, i32 112, i32 256, i32 3, i32 6, i32 18, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1360, i32 768, i32 0, i32 2, i64 148250000, i32 48, i32 32, i32 80, i32 3, i32 5, i32 37, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1366, i32 768, i32 0, i32 3, i64 85500000, i32 70, i32 143, i32 213, i32 3, i32 3, i32 24, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1366, i32 768, i32 0, i32 3, i64 72000000, i32 14, i32 56, i32 64, i32 1, i32 3, i32 28, i32 0, i32 0, i32 0, i32 2, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1400, i32 1050, i32 0, i32 2, i64 101000000, i32 48, i32 32, i32 80, i32 3, i32 4, i32 23, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1400, i32 1050, i32 0, i32 1, i64 121750000, i32 88, i32 144, i32 232, i32 3, i32 4, i32 32, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1400, i32 1050, i32 0, i32 1, i64 156000000, i32 104, i32 144, i32 248, i32 3, i32 4, i32 42, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1400, i32 1050, i32 0, i32 1, i64 179500000, i32 104, i32 152, i32 256, i32 3, i32 4, i32 48, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1400, i32 1050, i32 0, i32 2, i64 208000000, i32 48, i32 32, i32 80, i32 3, i32 4, i32 55, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1440, i32 900, i32 0, i32 2, i64 88750000, i32 48, i32 32, i32 80, i32 3, i32 6, i32 17, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1440, i32 900, i32 0, i32 1, i64 106500000, i32 80, i32 152, i32 232, i32 3, i32 6, i32 25, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1440, i32 900, i32 0, i32 1, i64 136750000, i32 96, i32 152, i32 248, i32 3, i32 6, i32 33, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1440, i32 900, i32 0, i32 1, i64 157000000, i32 104, i32 152, i32 256, i32 3, i32 6, i32 39, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1440, i32 900, i32 0, i32 2, i64 182750000, i32 48, i32 32, i32 80, i32 3, i32 6, i32 44, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1600, i32 900, i32 0, i32 3, i64 108000000, i32 24, i32 80, i32 96, i32 1, i32 3, i32 96, i32 0, i32 0, i32 0, i32 2, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1600, i32 1200, i32 0, i32 3, i64 162000000, i32 64, i32 192, i32 304, i32 1, i32 3, i32 46, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1600, i32 1200, i32 0, i32 3, i64 175500000, i32 64, i32 192, i32 304, i32 1, i32 3, i32 46, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1600, i32 1200, i32 0, i32 3, i64 189000000, i32 64, i32 192, i32 304, i32 1, i32 3, i32 46, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1600, i32 1200, i32 0, i32 3, i64 202500000, i32 64, i32 192, i32 304, i32 1, i32 3, i32 46, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1600, i32 1200, i32 0, i32 3, i64 229500000, i32 64, i32 192, i32 304, i32 1, i32 3, i32 46, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1600, i32 1200, i32 0, i32 2, i64 268250000, i32 48, i32 32, i32 80, i32 3, i32 4, i32 64, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1680, i32 1050, i32 0, i32 2, i64 119000000, i32 48, i32 32, i32 80, i32 3, i32 6, i32 21, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1680, i32 1050, i32 0, i32 1, i64 146250000, i32 104, i32 176, i32 280, i32 3, i32 6, i32 30, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1680, i32 1050, i32 0, i32 1, i64 187000000, i32 120, i32 176, i32 296, i32 3, i32 6, i32 40, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1680, i32 1050, i32 0, i32 1, i64 214750000, i32 128, i32 176, i32 304, i32 3, i32 6, i32 46, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1680, i32 1050, i32 0, i32 2, i64 245500000, i32 48, i32 32, i32 80, i32 3, i32 6, i32 53, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1792, i32 1344, i32 0, i32 1, i64 204750000, i32 128, i32 200, i32 328, i32 1, i32 3, i32 46, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1792, i32 1344, i32 0, i32 1, i64 261000000, i32 96, i32 216, i32 352, i32 1, i32 3, i32 69, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1792, i32 1344, i32 0, i32 2, i64 333250000, i32 48, i32 32, i32 80, i32 3, i32 4, i32 72, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1856, i32 1392, i32 0, i32 1, i64 218250000, i32 96, i32 224, i32 352, i32 1, i32 3, i32 43, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1856, i32 1392, i32 0, i32 1, i64 288000000, i32 128, i32 224, i32 352, i32 1, i32 3, i32 104, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1856, i32 1392, i32 0, i32 2, i64 356500000, i32 48, i32 32, i32 80, i32 3, i32 4, i32 75, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1200, i32 0, i32 2, i64 154000000, i32 48, i32 32, i32 80, i32 3, i32 6, i32 26, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1200, i32 0, i32 1, i64 193250000, i32 136, i32 200, i32 336, i32 3, i32 6, i32 36, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1200, i32 0, i32 1, i64 245250000, i32 136, i32 208, i32 344, i32 3, i32 6, i32 46, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1200, i32 0, i32 1, i64 281250000, i32 144, i32 208, i32 352, i32 3, i32 6, i32 53, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1200, i32 0, i32 2, i64 317000000, i32 48, i32 32, i32 80, i32 3, i32 6, i32 62, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1440, i32 0, i32 1, i64 234000000, i32 128, i32 208, i32 344, i32 1, i32 3, i32 56, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1440, i32 0, i32 1, i64 297000000, i32 144, i32 224, i32 352, i32 1, i32 3, i32 56, i32 0, i32 0, i32 0, i32 2, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1440, i32 0, i32 2, i64 380500000, i32 48, i32 32, i32 80, i32 3, i32 4, i32 78, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 2048, i32 1152, i32 0, i32 3, i64 162000000, i32 26, i32 80, i32 96, i32 1, i32 3, i32 44, i32 0, i32 0, i32 0, i32 2, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 2560, i32 1600, i32 0, i32 2, i64 268500000, i32 48, i32 32, i32 80, i32 3, i32 6, i32 37, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 2560, i32 1600, i32 0, i32 1, i64 348500000, i32 192, i32 280, i32 472, i32 3, i32 6, i32 49, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 2560, i32 1600, i32 0, i32 1, i64 443250000, i32 208, i32 280, i32 488, i32 3, i32 6, i32 63, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 2560, i32 1600, i32 0, i32 1, i64 505250000, i32 208, i32 280, i32 488, i32 3, i32 6, i32 73, i32 0, i32 0, i32 0, i32 6, i32 0, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 2560, i32 1600, i32 0, i32 2, i64 552750000, i32 48, i32 32, i32 80, i32 3, i32 6, i32 85, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 3840, i32 2160, i32 0, i32 3, i64 297000000, i32 1276, i32 88, i32 296, i32 8, i32 10, i32 72, i32 0, i32 0, i32 0, i32 1, i32 402, %struct.v4l2_fract zeroinitializer, i8 93, i8 3, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 3840, i32 2160, i32 0, i32 3, i64 297000000, i32 1056, i32 88, i32 296, i32 8, i32 10, i32 72, i32 0, i32 0, i32 0, i32 1, i32 400, %struct.v4l2_fract zeroinitializer, i8 94, i8 2, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 3840, i32 2160, i32 0, i32 3, i64 297000000, i32 176, i32 88, i32 296, i32 8, i32 10, i32 72, i32 0, i32 0, i32 0, i32 1, i32 402, %struct.v4l2_fract zeroinitializer, i8 95, i8 1, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 3840, i32 2160, i32 0, i32 3, i64 594000000, i32 1056, i32 88, i32 296, i32 8, i32 10, i32 72, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 96, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 3840, i32 2160, i32 0, i32 3, i64 594000000, i32 176, i32 88, i32 296, i32 8, i32 10, i32 72, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 97, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 4096, i32 2160, i32 0, i32 3, i64 297000000, i32 1020, i32 88, i32 296, i32 8, i32 10, i32 72, i32 0, i32 0, i32 0, i32 1, i32 402, %struct.v4l2_fract zeroinitializer, i8 98, i8 4, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 4096, i32 2160, i32 0, i32 3, i64 297000000, i32 968, i32 88, i32 128, i32 8, i32 10, i32 72, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 99, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 4096, i32 2160, i32 0, i32 3, i64 297000000, i32 88, i32 88, i32 128, i32 8, i32 10, i32 72, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 100, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 4096, i32 2160, i32 0, i32 3, i64 594000000, i32 968, i32 88, i32 128, i32 8, i32 10, i32 72, i32 0, i32 0, i32 0, i32 1, i32 144, %struct.v4l2_fract zeroinitializer, i8 101, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 4096, i32 2160, i32 0, i32 2, i64 556188000, i32 8, i32 32, i32 40, i32 48, i32 8, i32 6, i32 0, i32 0, i32 0, i32 6, i32 1, %struct.v4l2_fract zeroinitializer, i8 0, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 4096, i32 2160, i32 0, i32 3, i64 594000000, i32 88, i32 88, i32 128, i32 8, i32 10, i32 72, i32 0, i32 0, i32 0, i32 1, i32 146, %struct.v4l2_fract zeroinitializer, i8 102, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, %struct.v4l2_dv_timings zeroinitializer }>, align 16, !dbg !168
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\016%s: %s%ux%u%s%u.%02u (%ux%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"\016%s: horizontal: fp = %u, %ssync = %u, bp = %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\016%s: vertical: fp = %u, %ssync = %u, bp = %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"\016%s: vertical bottom field: fp = %u, %ssync = %u, bp = %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"\016%s: pixelclock: %llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"\016%s: flags (0x%x):%s%s%s%s%s%s%s%s%s%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c" REDUCED_BLANKING\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" (V2)\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c" CAN_REDUCE_FPS\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c" REDUCED_FPS\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c" HALF_LINE\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c" CE_VIDEO\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c" FIRST_FIELD_EXTRA_LINE\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c" HAS_PICTURE_ASPECT\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c" HAS_CEA861_VIC\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c" HAS_HDMI_VIC\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"\016%s: standards (0x%x):%s%s%s%s%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c" CEA\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" DMT\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c" CVT\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c" GTF\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c" SDI\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"\016%s: picture aspect (hor:vert): %u:%u\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\016%s: CEA-861 VIC: %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"\016%s: HDMI VIC: %u\0A\00", align 1
@__const.v4l2_dv_timings_aspect_ratio.ratio = private unnamed_addr constant %struct.v4l2_fract { i32 1, i32 1 }, align 4
@__const.v4l2_calc_timeperframe.fps_fract = private unnamed_addr constant %struct.v4l2_fract { i32 1, i32 1 }, align 4
@__const.v4l2_calc_aspect_ratio.aspect = private unnamed_addr constant %struct.v4l2_fract { i32 16, i32 9 }, align 4
@__const.v4l2_hdmi_rx_colorimetry.c = private unnamed_addr constant %struct.v4l2_hdmi_colorimetry { i32 8, i32 0, i32 1, i32 2 }, align 4
@.str.30 = private unnamed_addr constant [42 x i8] c"drivers/media/v4l2-core/v4l2-dv-timings.c\00", align 1
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_author230, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_description231, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_file232, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_license233, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings* %t, %struct.v4l2_dv_timings_cap* %dvcap, i1 (%struct.v4l2_dv_timings*, i8*)* %fnc, i8* %fnc_handle) #0 !dbg !225 {
entry:
  %retval = alloca i1, align 1
  %t.addr = alloca %struct.v4l2_dv_timings*, align 8
  %dvcap.addr = alloca %struct.v4l2_dv_timings_cap*, align 8
  %fnc.addr = alloca i1 (%struct.v4l2_dv_timings*, i8*)*, align 8
  %fnc_handle.addr = alloca i8*, align 8
  %bt = alloca %struct.v4l2_bt_timings*, align 8
  %cap = alloca %struct.v4l2_bt_timings_cap*, align 8
  %caps = alloca i32, align 4
  store %struct.v4l2_dv_timings* %t, %struct.v4l2_dv_timings** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings** %t.addr, metadata !267, metadata !DIExpression()), !dbg !268
  store %struct.v4l2_dv_timings_cap* %dvcap, %struct.v4l2_dv_timings_cap** %dvcap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings_cap** %dvcap.addr, metadata !269, metadata !DIExpression()), !dbg !270
  store i1 (%struct.v4l2_dv_timings*, i8*)* %fnc, i1 (%struct.v4l2_dv_timings*, i8*)** %fnc.addr, align 8
  call void @llvm.dbg.declare(metadata i1 (%struct.v4l2_dv_timings*, i8*)** %fnc.addr, metadata !271, metadata !DIExpression()), !dbg !272
  store i8* %fnc_handle, i8** %fnc_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fnc_handle.addr, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata %struct.v4l2_bt_timings** %bt, metadata !275, metadata !DIExpression()), !dbg !278
  %0 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !279
  %1 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %0, i32 0, i32 1, !dbg !280
  %bt1 = bitcast %union.anon* %1 to %struct.v4l2_bt_timings*, !dbg !280
  store %struct.v4l2_bt_timings* %bt1, %struct.v4l2_bt_timings** %bt, align 8, !dbg !278
  call void @llvm.dbg.declare(metadata %struct.v4l2_bt_timings_cap** %cap, metadata !281, metadata !DIExpression()), !dbg !284
  %2 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %dvcap.addr, align 8, !dbg !285
  %3 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %2, i32 0, i32 3, !dbg !286
  %bt2 = bitcast %union.anon.0* %3 to %struct.v4l2_bt_timings_cap*, !dbg !286
  store %struct.v4l2_bt_timings_cap* %bt2, %struct.v4l2_bt_timings_cap** %cap, align 8, !dbg !284
  call void @llvm.dbg.declare(metadata i32* %caps, metadata !287, metadata !DIExpression()), !dbg !289
  %4 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %cap, align 8, !dbg !290
  %capabilities = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %4, i32 0, i32 7, !dbg !291
  %5 = load i32, i32* %capabilities, align 1, !dbg !291
  store i32 %5, i32* %caps, align 4, !dbg !289
  %6 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !292
  %type = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %6, i32 0, i32 0, !dbg !294
  %7 = load i32, i32* %type, align 1, !dbg !294
  %cmp = icmp ne i32 %7, 0, !dbg !295
  br i1 %cmp, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !297
  br label %return, !dbg !297

if.end:                                           ; preds = %entry
  %8 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !298
  %type3 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %8, i32 0, i32 0, !dbg !300
  %9 = load i32, i32* %type3, align 1, !dbg !300
  %10 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %dvcap.addr, align 8, !dbg !301
  %type4 = getelementptr inbounds %struct.v4l2_dv_timings_cap, %struct.v4l2_dv_timings_cap* %10, i32 0, i32 0, !dbg !302
  %11 = load i32, i32* %type4, align 4, !dbg !302
  %cmp5 = icmp ne i32 %9, %11, !dbg !303
  br i1 %cmp5, label %if.then41, label %lor.lhs.false, !dbg !304

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !305
  %height = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %12, i32 0, i32 1, !dbg !306
  %13 = load i32, i32* %height, align 1, !dbg !306
  %14 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %cap, align 8, !dbg !307
  %min_height = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %14, i32 0, i32 2, !dbg !308
  %15 = load i32, i32* %min_height, align 1, !dbg !308
  %cmp6 = icmp ult i32 %13, %15, !dbg !309
  br i1 %cmp6, label %if.then41, label %lor.lhs.false7, !dbg !310

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %16 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !311
  %height8 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %16, i32 0, i32 1, !dbg !312
  %17 = load i32, i32* %height8, align 1, !dbg !312
  %18 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %cap, align 8, !dbg !313
  %max_height = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %18, i32 0, i32 3, !dbg !314
  %19 = load i32, i32* %max_height, align 1, !dbg !314
  %cmp9 = icmp ugt i32 %17, %19, !dbg !315
  br i1 %cmp9, label %if.then41, label %lor.lhs.false10, !dbg !316

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %20 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !317
  %width = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %20, i32 0, i32 0, !dbg !318
  %21 = load i32, i32* %width, align 1, !dbg !318
  %22 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %cap, align 8, !dbg !319
  %min_width = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %22, i32 0, i32 0, !dbg !320
  %23 = load i32, i32* %min_width, align 1, !dbg !320
  %cmp11 = icmp ult i32 %21, %23, !dbg !321
  br i1 %cmp11, label %if.then41, label %lor.lhs.false12, !dbg !322

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %24 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !323
  %width13 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %24, i32 0, i32 0, !dbg !324
  %25 = load i32, i32* %width13, align 1, !dbg !324
  %26 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %cap, align 8, !dbg !325
  %max_width = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %26, i32 0, i32 1, !dbg !326
  %27 = load i32, i32* %max_width, align 1, !dbg !326
  %cmp14 = icmp ugt i32 %25, %27, !dbg !327
  br i1 %cmp14, label %if.then41, label %lor.lhs.false15, !dbg !328

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %28 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !329
  %pixelclock = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %28, i32 0, i32 4, !dbg !330
  %29 = load i64, i64* %pixelclock, align 1, !dbg !330
  %30 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %cap, align 8, !dbg !331
  %min_pixelclock = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %30, i32 0, i32 4, !dbg !332
  %31 = load i64, i64* %min_pixelclock, align 1, !dbg !332
  %cmp16 = icmp ult i64 %29, %31, !dbg !333
  br i1 %cmp16, label %if.then41, label %lor.lhs.false17, !dbg !334

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %32 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !335
  %pixelclock18 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %32, i32 0, i32 4, !dbg !336
  %33 = load i64, i64* %pixelclock18, align 1, !dbg !336
  %34 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %cap, align 8, !dbg !337
  %max_pixelclock = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %34, i32 0, i32 5, !dbg !338
  %35 = load i64, i64* %max_pixelclock, align 1, !dbg !338
  %cmp19 = icmp ugt i64 %33, %35, !dbg !339
  br i1 %cmp19, label %if.then41, label %lor.lhs.false20, !dbg !340

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %36 = load i32, i32* %caps, align 4, !dbg !341
  %and = and i32 %36, 8, !dbg !342
  %tobool = icmp ne i32 %and, 0, !dbg !342
  br i1 %tobool, label %lor.lhs.false30, label %land.lhs.true, !dbg !343

land.lhs.true:                                    ; preds = %lor.lhs.false20
  %37 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %cap, align 8, !dbg !344
  %standards = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %37, i32 0, i32 6, !dbg !345
  %38 = load i32, i32* %standards, align 1, !dbg !345
  %tobool21 = icmp ne i32 %38, 0, !dbg !344
  br i1 %tobool21, label %land.lhs.true22, label %lor.lhs.false30, !dbg !346

land.lhs.true22:                                  ; preds = %land.lhs.true
  %39 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !347
  %standards23 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %39, i32 0, i32 14, !dbg !348
  %40 = load i32, i32* %standards23, align 1, !dbg !348
  %tobool24 = icmp ne i32 %40, 0, !dbg !347
  br i1 %tobool24, label %land.lhs.true25, label %lor.lhs.false30, !dbg !349

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %41 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !350
  %standards26 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %41, i32 0, i32 14, !dbg !351
  %42 = load i32, i32* %standards26, align 1, !dbg !351
  %43 = load %struct.v4l2_bt_timings_cap*, %struct.v4l2_bt_timings_cap** %cap, align 8, !dbg !352
  %standards27 = getelementptr inbounds %struct.v4l2_bt_timings_cap, %struct.v4l2_bt_timings_cap* %43, i32 0, i32 6, !dbg !353
  %44 = load i32, i32* %standards27, align 1, !dbg !353
  %and28 = and i32 %42, %44, !dbg !354
  %tobool29 = icmp ne i32 %and28, 0, !dbg !354
  br i1 %tobool29, label %lor.lhs.false30, label %if.then41, !dbg !355

lor.lhs.false30:                                  ; preds = %land.lhs.true25, %land.lhs.true22, %land.lhs.true, %lor.lhs.false20
  %45 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !356
  %interlaced = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %45, i32 0, i32 2, !dbg !357
  %46 = load i32, i32* %interlaced, align 1, !dbg !357
  %tobool31 = icmp ne i32 %46, 0, !dbg !356
  br i1 %tobool31, label %land.lhs.true32, label %lor.lhs.false35, !dbg !358

land.lhs.true32:                                  ; preds = %lor.lhs.false30
  %47 = load i32, i32* %caps, align 4, !dbg !359
  %and33 = and i32 %47, 1, !dbg !360
  %tobool34 = icmp ne i32 %and33, 0, !dbg !360
  br i1 %tobool34, label %lor.lhs.false35, label %if.then41, !dbg !361

lor.lhs.false35:                                  ; preds = %land.lhs.true32, %lor.lhs.false30
  %48 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !362
  %interlaced36 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %48, i32 0, i32 2, !dbg !363
  %49 = load i32, i32* %interlaced36, align 1, !dbg !363
  %tobool37 = icmp ne i32 %49, 0, !dbg !362
  br i1 %tobool37, label %if.end42, label %land.lhs.true38, !dbg !364

land.lhs.true38:                                  ; preds = %lor.lhs.false35
  %50 = load i32, i32* %caps, align 4, !dbg !365
  %and39 = and i32 %50, 2, !dbg !366
  %tobool40 = icmp ne i32 %and39, 0, !dbg !366
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !367

if.then41:                                        ; preds = %land.lhs.true38, %land.lhs.true32, %land.lhs.true25, %lor.lhs.false17, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false7, %lor.lhs.false, %if.end
  store i1 false, i1* %retval, align 1, !dbg !368
  br label %return, !dbg !368

if.end42:                                         ; preds = %land.lhs.true38, %lor.lhs.false35
  %51 = load i1 (%struct.v4l2_dv_timings*, i8*)*, i1 (%struct.v4l2_dv_timings*, i8*)** %fnc.addr, align 8, !dbg !369
  %cmp43 = icmp eq i1 (%struct.v4l2_dv_timings*, i8*)* %51, null, !dbg !370
  br i1 %cmp43, label %lor.end, label %lor.rhs, !dbg !371

lor.rhs:                                          ; preds = %if.end42
  %52 = load i1 (%struct.v4l2_dv_timings*, i8*)*, i1 (%struct.v4l2_dv_timings*, i8*)** %fnc.addr, align 8, !dbg !372
  %53 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !373
  %54 = load i8*, i8** %fnc_handle.addr, align 8, !dbg !374
  %call = call zeroext i1 %52(%struct.v4l2_dv_timings* %53, i8* %54) #5, !dbg !372
  br label %lor.end, !dbg !371

lor.end:                                          ; preds = %lor.rhs, %if.end42
  %55 = phi i1 [ true, %if.end42 ], [ %call, %lor.rhs ]
  store i1 %55, i1* %retval, align 1, !dbg !375
  br label %return, !dbg !375

return:                                           ; preds = %lor.end, %if.then41, %if.then
  %56 = load i1, i1* %retval, align 1, !dbg !376
  ret i1 %56, !dbg !376
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @v4l2_enum_dv_timings_cap(%struct.v4l2_enum_dv_timings* %t, %struct.v4l2_dv_timings_cap* %cap, i1 (%struct.v4l2_dv_timings*, i8*)* %fnc, i8* %fnc_handle) #0 !dbg !377 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.v4l2_enum_dv_timings*, align 8
  %cap.addr = alloca %struct.v4l2_dv_timings_cap*, align 8
  %fnc.addr = alloca i1 (%struct.v4l2_dv_timings*, i8*)*, align 8
  %fnc_handle.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %idx = alloca i32, align 4
  store %struct.v4l2_enum_dv_timings* %t, %struct.v4l2_enum_dv_timings** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_enum_dv_timings** %t.addr, metadata !387, metadata !DIExpression()), !dbg !388
  store %struct.v4l2_dv_timings_cap* %cap, %struct.v4l2_dv_timings_cap** %cap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings_cap** %cap.addr, metadata !389, metadata !DIExpression()), !dbg !390
  store i1 (%struct.v4l2_dv_timings*, i8*)* %fnc, i1 (%struct.v4l2_dv_timings*, i8*)** %fnc.addr, align 8
  call void @llvm.dbg.declare(metadata i1 (%struct.v4l2_dv_timings*, i8*)** %fnc.addr, metadata !391, metadata !DIExpression()), !dbg !392
  store i8* %fnc_handle, i8** %fnc_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fnc_handle.addr, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata i32* %i, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %t.addr, align 8, !dbg !399
  %reserved = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %0, i32 0, i32 2, !dbg !400
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %reserved, i64 0, i64 0, !dbg !401
  %1 = bitcast i32* %arraydecay to i8*, !dbg !401
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 8, i1 false), !dbg !401
  store i32 0, i32* %idx, align 4, !dbg !402
  store i32 0, i32* %i, align 4, !dbg !404
  br label %for.cond, !dbg !405

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !406
  %idxprom = zext i32 %2 to i64, !dbg !408
  %arrayidx = getelementptr [112 x %struct.v4l2_dv_timings], [112 x %struct.v4l2_dv_timings]* bitcast (<{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }>* @v4l2_dv_timings_presets to [112 x %struct.v4l2_dv_timings]*), i64 0, i64 %idxprom, !dbg !408
  %3 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %arrayidx, i32 0, i32 1, !dbg !409
  %bt = bitcast %union.anon* %3 to %struct.v4l2_bt_timings*, !dbg !409
  %width = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt, i32 0, i32 0, !dbg !410
  %4 = load i32, i32* %width, align 4, !dbg !410
  %tobool = icmp ne i32 %4, 0, !dbg !411
  br i1 %tobool, label %for.body, label %for.end, !dbg !411

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !412
  %idx.ext = zext i32 %5 to i64, !dbg !415
  %add.ptr = getelementptr %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* getelementptr inbounds ([112 x %struct.v4l2_dv_timings], [112 x %struct.v4l2_dv_timings]* bitcast (<{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }>* @v4l2_dv_timings_presets to [112 x %struct.v4l2_dv_timings]*), i64 0, i64 0), i64 %idx.ext, !dbg !415
  %6 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %cap.addr, align 8, !dbg !416
  %7 = load i1 (%struct.v4l2_dv_timings*, i8*)*, i1 (%struct.v4l2_dv_timings*, i8*)** %fnc.addr, align 8, !dbg !417
  %8 = load i8*, i8** %fnc_handle.addr, align 8, !dbg !418
  %call = call zeroext i1 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings* %add.ptr, %struct.v4l2_dv_timings_cap* %6, i1 (%struct.v4l2_dv_timings*, i8*)* %7, i8* %8) #5, !dbg !419
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !420

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %idx, align 4, !dbg !421
  %inc = add i32 %9, 1, !dbg !421
  store i32 %inc, i32* %idx, align 4, !dbg !421
  %10 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %t.addr, align 8, !dbg !422
  %index = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %10, i32 0, i32 0, !dbg !423
  %11 = load i32, i32* %index, align 4, !dbg !423
  %cmp = icmp eq i32 %9, %11, !dbg !424
  br i1 %cmp, label %if.then, label %if.end, !dbg !425

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %t.addr, align 8, !dbg !426
  %timings = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %12, i32 0, i32 3, !dbg !428
  %13 = load i32, i32* %i, align 4, !dbg !429
  %idxprom1 = zext i32 %13 to i64, !dbg !430
  %arrayidx2 = getelementptr [112 x %struct.v4l2_dv_timings], [112 x %struct.v4l2_dv_timings]* bitcast (<{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }>* @v4l2_dv_timings_presets to [112 x %struct.v4l2_dv_timings]*), i64 0, i64 %idxprom1, !dbg !430
  %14 = bitcast %struct.v4l2_dv_timings* %timings to i8*, !dbg !430
  %15 = bitcast %struct.v4l2_dv_timings* %arrayidx2 to i8*, !dbg !430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 132, i1 false), !dbg !430
  store i32 0, i32* %retval, align 4, !dbg !431
  br label %return, !dbg !431

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !432

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !dbg !433
  %inc3 = add i32 %16, 1, !dbg !433
  store i32 %inc3, i32* %i, align 4, !dbg !433
  br label %for.cond, !dbg !434, !llvm.loop !435

for.end:                                          ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !437
  br label %return, !dbg !437

return:                                           ; preds = %for.end, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !438
  ret i32 %17, !dbg !438
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @v4l2_find_dv_timings_cap(%struct.v4l2_dv_timings* %t, %struct.v4l2_dv_timings_cap* %cap, i32 %pclock_delta, i1 (%struct.v4l2_dv_timings*, i8*)* %fnc, i8* %fnc_handle) #0 !dbg !439 {
entry:
  %retval = alloca i1, align 1
  %t.addr = alloca %struct.v4l2_dv_timings*, align 8
  %cap.addr = alloca %struct.v4l2_dv_timings_cap*, align 8
  %pclock_delta.addr = alloca i32, align 4
  %fnc.addr = alloca i1 (%struct.v4l2_dv_timings*, i8*)*, align 8
  %fnc_handle.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %flags = alloca i32, align 4
  store %struct.v4l2_dv_timings* %t, %struct.v4l2_dv_timings** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings** %t.addr, metadata !443, metadata !DIExpression()), !dbg !444
  store %struct.v4l2_dv_timings_cap* %cap, %struct.v4l2_dv_timings_cap** %cap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings_cap** %cap.addr, metadata !445, metadata !DIExpression()), !dbg !446
  store i32 %pclock_delta, i32* %pclock_delta.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pclock_delta.addr, metadata !447, metadata !DIExpression()), !dbg !448
  store i1 (%struct.v4l2_dv_timings*, i8*)* %fnc, i1 (%struct.v4l2_dv_timings*, i8*)** %fnc.addr, align 8
  call void @llvm.dbg.declare(metadata i1 (%struct.v4l2_dv_timings*, i8*)** %fnc.addr, metadata !449, metadata !DIExpression()), !dbg !450
  store i8* %fnc_handle, i8** %fnc_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fnc_handle.addr, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i32* %i, metadata !453, metadata !DIExpression()), !dbg !454
  %0 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !455
  %1 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %cap.addr, align 8, !dbg !457
  %2 = load i1 (%struct.v4l2_dv_timings*, i8*)*, i1 (%struct.v4l2_dv_timings*, i8*)** %fnc.addr, align 8, !dbg !458
  %3 = load i8*, i8** %fnc_handle.addr, align 8, !dbg !459
  %call = call zeroext i1 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings* %0, %struct.v4l2_dv_timings_cap* %1, i1 (%struct.v4l2_dv_timings*, i8*)* %2, i8* %3) #5, !dbg !460
  br i1 %call, label %if.end, label %if.then, !dbg !461

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !462
  br label %return, !dbg !462

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !463
  br label %for.cond, !dbg !465

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4, !dbg !466
  %5 = load i32, i32* %i, align 4, !dbg !468
  %idxprom = sext i32 %5 to i64, !dbg !469
  %arrayidx = getelementptr [112 x %struct.v4l2_dv_timings], [112 x %struct.v4l2_dv_timings]* bitcast (<{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }>* @v4l2_dv_timings_presets to [112 x %struct.v4l2_dv_timings]*), i64 0, i64 %idxprom, !dbg !469
  %6 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %arrayidx, i32 0, i32 1, !dbg !470
  %bt = bitcast %union.anon* %6 to %struct.v4l2_bt_timings*, !dbg !470
  %width = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt, i32 0, i32 0, !dbg !471
  %7 = load i32, i32* %width, align 4, !dbg !471
  %cmp = icmp ult i32 %4, %7, !dbg !472
  br i1 %cmp, label %for.body, label %for.end, !dbg !473

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !474
  %idx.ext = sext i32 %8 to i64, !dbg !477
  %add.ptr = getelementptr %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* getelementptr inbounds ([112 x %struct.v4l2_dv_timings], [112 x %struct.v4l2_dv_timings]* bitcast (<{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }>* @v4l2_dv_timings_presets to [112 x %struct.v4l2_dv_timings]*), i64 0, i64 0), i64 %idx.ext, !dbg !477
  %9 = load %struct.v4l2_dv_timings_cap*, %struct.v4l2_dv_timings_cap** %cap.addr, align 8, !dbg !478
  %10 = load i1 (%struct.v4l2_dv_timings*, i8*)*, i1 (%struct.v4l2_dv_timings*, i8*)** %fnc.addr, align 8, !dbg !479
  %11 = load i8*, i8** %fnc_handle.addr, align 8, !dbg !480
  %call1 = call zeroext i1 @v4l2_valid_dv_timings(%struct.v4l2_dv_timings* %add.ptr, %struct.v4l2_dv_timings_cap* %9, i1 (%struct.v4l2_dv_timings*, i8*)* %10, i8* %11) #5, !dbg !481
  br i1 %call1, label %land.lhs.true, label %if.end16, !dbg !482

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !483
  %13 = load i32, i32* %i, align 4, !dbg !484
  %idx.ext2 = sext i32 %13 to i64, !dbg !485
  %add.ptr3 = getelementptr %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* getelementptr inbounds ([112 x %struct.v4l2_dv_timings], [112 x %struct.v4l2_dv_timings]* bitcast (<{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }>* @v4l2_dv_timings_presets to [112 x %struct.v4l2_dv_timings]*), i64 0, i64 0), i64 %idx.ext2, !dbg !485
  %14 = load i32, i32* %pclock_delta.addr, align 4, !dbg !486
  %call4 = call zeroext i1 @v4l2_match_dv_timings(%struct.v4l2_dv_timings* %12, %struct.v4l2_dv_timings* %add.ptr3, i32 %14, i1 zeroext false) #5, !dbg !487
  br i1 %call4, label %if.then5, label %if.end16, !dbg !488

if.then5:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !489, metadata !DIExpression()), !dbg !491
  %15 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !492
  %16 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %15, i32 0, i32 1, !dbg !493
  %bt6 = bitcast %union.anon* %16 to %struct.v4l2_bt_timings*, !dbg !493
  %flags7 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt6, i32 0, i32 15, !dbg !494
  %17 = load i32, i32* %flags7, align 1, !dbg !494
  %and = and i32 %17, 4, !dbg !495
  store i32 %and, i32* %flags, align 4, !dbg !491
  %18 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !496
  %19 = load i32, i32* %i, align 4, !dbg !497
  %idxprom8 = sext i32 %19 to i64, !dbg !498
  %arrayidx9 = getelementptr [112 x %struct.v4l2_dv_timings], [112 x %struct.v4l2_dv_timings]* bitcast (<{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }>* @v4l2_dv_timings_presets to [112 x %struct.v4l2_dv_timings]*), i64 0, i64 %idxprom8, !dbg !498
  %20 = bitcast %struct.v4l2_dv_timings* %18 to i8*, !dbg !498
  %21 = bitcast %struct.v4l2_dv_timings* %arrayidx9 to i8*, !dbg !498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 4 %21, i64 132, i1 false), !dbg !498
  %22 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !499
  %23 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %22, i32 0, i32 1, !dbg !501
  %bt10 = bitcast %union.anon* %23 to %struct.v4l2_bt_timings*, !dbg !501
  %call11 = call zeroext i1 @can_reduce_fps(%struct.v4l2_bt_timings* %bt10) #5, !dbg !502
  br i1 %call11, label %if.then12, label %if.end15, !dbg !503

if.then12:                                        ; preds = %if.then5
  %24 = load i32, i32* %flags, align 4, !dbg !504
  %25 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !505
  %26 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %25, i32 0, i32 1, !dbg !506
  %bt13 = bitcast %union.anon* %26 to %struct.v4l2_bt_timings*, !dbg !506
  %flags14 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt13, i32 0, i32 15, !dbg !507
  %27 = load i32, i32* %flags14, align 1, !dbg !508
  %or = or i32 %27, %24, !dbg !508
  store i32 %or, i32* %flags14, align 1, !dbg !508
  br label %if.end15, !dbg !505

if.end15:                                         ; preds = %if.then12, %if.then5
  store i1 true, i1* %retval, align 1, !dbg !509
  br label %return, !dbg !509

if.end16:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !510

for.inc:                                          ; preds = %if.end16
  %28 = load i32, i32* %i, align 4, !dbg !511
  %inc = add i32 %28, 1, !dbg !511
  store i32 %inc, i32* %i, align 4, !dbg !511
  br label %for.cond, !dbg !512, !llvm.loop !513

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !515
  br label %return, !dbg !515

return:                                           ; preds = %for.end, %if.end15, %if.then
  %29 = load i1, i1* %retval, align 1, !dbg !516
  ret i1 %29, !dbg !516
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @v4l2_match_dv_timings(%struct.v4l2_dv_timings* %t1, %struct.v4l2_dv_timings* %t2, i32 %pclock_delta, i1 zeroext %match_reduced_fps) #0 !dbg !517 {
entry:
  %retval = alloca i1, align 1
  %t1.addr = alloca %struct.v4l2_dv_timings*, align 8
  %t2.addr = alloca %struct.v4l2_dv_timings*, align 8
  %pclock_delta.addr = alloca i32, align 4
  %match_reduced_fps.addr = alloca i8, align 1
  store %struct.v4l2_dv_timings* %t1, %struct.v4l2_dv_timings** %t1.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings** %t1.addr, metadata !520, metadata !DIExpression()), !dbg !521
  store %struct.v4l2_dv_timings* %t2, %struct.v4l2_dv_timings** %t2.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings** %t2.addr, metadata !522, metadata !DIExpression()), !dbg !523
  store i32 %pclock_delta, i32* %pclock_delta.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pclock_delta.addr, metadata !524, metadata !DIExpression()), !dbg !525
  %frombool = zext i1 %match_reduced_fps to i8
  store i8 %frombool, i8* %match_reduced_fps.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %match_reduced_fps.addr, metadata !526, metadata !DIExpression()), !dbg !527
  %0 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !528
  %type = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %0, i32 0, i32 0, !dbg !530
  %1 = load i32, i32* %type, align 1, !dbg !530
  %2 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !531
  %type1 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %2, i32 0, i32 0, !dbg !532
  %3 = load i32, i32* %type1, align 1, !dbg !532
  %cmp = icmp ne i32 %1, %3, !dbg !533
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !534

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !535
  %type2 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %4, i32 0, i32 0, !dbg !536
  %5 = load i32, i32* %type2, align 1, !dbg !536
  %cmp3 = icmp ne i32 %5, 0, !dbg !537
  br i1 %cmp3, label %if.then, label %if.end, !dbg !538

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !539
  br label %return, !dbg !539

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !540
  %7 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %6, i32 0, i32 1, !dbg !542
  %bt = bitcast %union.anon* %7 to %struct.v4l2_bt_timings*, !dbg !542
  %width = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt, i32 0, i32 0, !dbg !543
  %8 = load i32, i32* %width, align 1, !dbg !543
  %9 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !544
  %10 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %9, i32 0, i32 1, !dbg !545
  %bt4 = bitcast %union.anon* %10 to %struct.v4l2_bt_timings*, !dbg !545
  %width5 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt4, i32 0, i32 0, !dbg !546
  %11 = load i32, i32* %width5, align 1, !dbg !546
  %cmp6 = icmp eq i32 %8, %11, !dbg !547
  br i1 %cmp6, label %land.lhs.true, label %if.end102, !dbg !548

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !549
  %13 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %12, i32 0, i32 1, !dbg !550
  %bt7 = bitcast %union.anon* %13 to %struct.v4l2_bt_timings*, !dbg !550
  %height = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt7, i32 0, i32 1, !dbg !551
  %14 = load i32, i32* %height, align 1, !dbg !551
  %15 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !552
  %16 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %15, i32 0, i32 1, !dbg !553
  %bt8 = bitcast %union.anon* %16 to %struct.v4l2_bt_timings*, !dbg !553
  %height9 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt8, i32 0, i32 1, !dbg !554
  %17 = load i32, i32* %height9, align 1, !dbg !554
  %cmp10 = icmp eq i32 %14, %17, !dbg !555
  br i1 %cmp10, label %land.lhs.true11, label %if.end102, !dbg !556

land.lhs.true11:                                  ; preds = %land.lhs.true
  %18 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !557
  %19 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %18, i32 0, i32 1, !dbg !558
  %bt12 = bitcast %union.anon* %19 to %struct.v4l2_bt_timings*, !dbg !558
  %interlaced = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt12, i32 0, i32 2, !dbg !559
  %20 = load i32, i32* %interlaced, align 1, !dbg !559
  %21 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !560
  %22 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %21, i32 0, i32 1, !dbg !561
  %bt13 = bitcast %union.anon* %22 to %struct.v4l2_bt_timings*, !dbg !561
  %interlaced14 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt13, i32 0, i32 2, !dbg !562
  %23 = load i32, i32* %interlaced14, align 1, !dbg !562
  %cmp15 = icmp eq i32 %20, %23, !dbg !563
  br i1 %cmp15, label %land.lhs.true16, label %if.end102, !dbg !564

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %24 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !565
  %25 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %24, i32 0, i32 1, !dbg !566
  %bt17 = bitcast %union.anon* %25 to %struct.v4l2_bt_timings*, !dbg !566
  %polarities = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt17, i32 0, i32 3, !dbg !567
  %26 = load i32, i32* %polarities, align 1, !dbg !567
  %27 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !568
  %28 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %27, i32 0, i32 1, !dbg !569
  %bt18 = bitcast %union.anon* %28 to %struct.v4l2_bt_timings*, !dbg !569
  %polarities19 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt18, i32 0, i32 3, !dbg !570
  %29 = load i32, i32* %polarities19, align 1, !dbg !570
  %cmp20 = icmp eq i32 %26, %29, !dbg !571
  br i1 %cmp20, label %land.lhs.true21, label %if.end102, !dbg !572

land.lhs.true21:                                  ; preds = %land.lhs.true16
  %30 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !573
  %31 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %30, i32 0, i32 1, !dbg !574
  %bt22 = bitcast %union.anon* %31 to %struct.v4l2_bt_timings*, !dbg !574
  %pixelclock = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt22, i32 0, i32 4, !dbg !575
  %32 = load i64, i64* %pixelclock, align 1, !dbg !575
  %33 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !576
  %34 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %33, i32 0, i32 1, !dbg !577
  %bt23 = bitcast %union.anon* %34 to %struct.v4l2_bt_timings*, !dbg !577
  %pixelclock24 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt23, i32 0, i32 4, !dbg !578
  %35 = load i64, i64* %pixelclock24, align 1, !dbg !578
  %36 = load i32, i32* %pclock_delta.addr, align 4, !dbg !579
  %conv = zext i32 %36 to i64, !dbg !579
  %sub = sub i64 %35, %conv, !dbg !580
  %cmp25 = icmp uge i64 %32, %sub, !dbg !581
  br i1 %cmp25, label %land.lhs.true27, label %if.end102, !dbg !582

land.lhs.true27:                                  ; preds = %land.lhs.true21
  %37 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !583
  %38 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %37, i32 0, i32 1, !dbg !584
  %bt28 = bitcast %union.anon* %38 to %struct.v4l2_bt_timings*, !dbg !584
  %pixelclock29 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt28, i32 0, i32 4, !dbg !585
  %39 = load i64, i64* %pixelclock29, align 1, !dbg !585
  %40 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !586
  %41 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %40, i32 0, i32 1, !dbg !587
  %bt30 = bitcast %union.anon* %41 to %struct.v4l2_bt_timings*, !dbg !587
  %pixelclock31 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt30, i32 0, i32 4, !dbg !588
  %42 = load i64, i64* %pixelclock31, align 1, !dbg !588
  %43 = load i32, i32* %pclock_delta.addr, align 4, !dbg !589
  %conv32 = zext i32 %43 to i64, !dbg !589
  %add = add i64 %42, %conv32, !dbg !590
  %cmp33 = icmp ule i64 %39, %add, !dbg !591
  br i1 %cmp33, label %land.lhs.true35, label %if.end102, !dbg !592

land.lhs.true35:                                  ; preds = %land.lhs.true27
  %44 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !593
  %45 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %44, i32 0, i32 1, !dbg !594
  %bt36 = bitcast %union.anon* %45 to %struct.v4l2_bt_timings*, !dbg !594
  %hfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt36, i32 0, i32 5, !dbg !595
  %46 = load i32, i32* %hfrontporch, align 1, !dbg !595
  %47 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !596
  %48 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %47, i32 0, i32 1, !dbg !597
  %bt37 = bitcast %union.anon* %48 to %struct.v4l2_bt_timings*, !dbg !597
  %hfrontporch38 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt37, i32 0, i32 5, !dbg !598
  %49 = load i32, i32* %hfrontporch38, align 1, !dbg !598
  %cmp39 = icmp eq i32 %46, %49, !dbg !599
  br i1 %cmp39, label %land.lhs.true41, label %if.end102, !dbg !600

land.lhs.true41:                                  ; preds = %land.lhs.true35
  %50 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !601
  %51 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %50, i32 0, i32 1, !dbg !602
  %bt42 = bitcast %union.anon* %51 to %struct.v4l2_bt_timings*, !dbg !602
  %hsync = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt42, i32 0, i32 6, !dbg !603
  %52 = load i32, i32* %hsync, align 1, !dbg !603
  %53 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !604
  %54 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %53, i32 0, i32 1, !dbg !605
  %bt43 = bitcast %union.anon* %54 to %struct.v4l2_bt_timings*, !dbg !605
  %hsync44 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt43, i32 0, i32 6, !dbg !606
  %55 = load i32, i32* %hsync44, align 1, !dbg !606
  %cmp45 = icmp eq i32 %52, %55, !dbg !607
  br i1 %cmp45, label %land.lhs.true47, label %if.end102, !dbg !608

land.lhs.true47:                                  ; preds = %land.lhs.true41
  %56 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !609
  %57 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %56, i32 0, i32 1, !dbg !610
  %bt48 = bitcast %union.anon* %57 to %struct.v4l2_bt_timings*, !dbg !610
  %hbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt48, i32 0, i32 7, !dbg !611
  %58 = load i32, i32* %hbackporch, align 1, !dbg !611
  %59 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !612
  %60 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %59, i32 0, i32 1, !dbg !613
  %bt49 = bitcast %union.anon* %60 to %struct.v4l2_bt_timings*, !dbg !613
  %hbackporch50 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt49, i32 0, i32 7, !dbg !614
  %61 = load i32, i32* %hbackporch50, align 1, !dbg !614
  %cmp51 = icmp eq i32 %58, %61, !dbg !615
  br i1 %cmp51, label %land.lhs.true53, label %if.end102, !dbg !616

land.lhs.true53:                                  ; preds = %land.lhs.true47
  %62 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !617
  %63 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %62, i32 0, i32 1, !dbg !618
  %bt54 = bitcast %union.anon* %63 to %struct.v4l2_bt_timings*, !dbg !618
  %vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt54, i32 0, i32 8, !dbg !619
  %64 = load i32, i32* %vfrontporch, align 1, !dbg !619
  %65 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !620
  %66 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %65, i32 0, i32 1, !dbg !621
  %bt55 = bitcast %union.anon* %66 to %struct.v4l2_bt_timings*, !dbg !621
  %vfrontporch56 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt55, i32 0, i32 8, !dbg !622
  %67 = load i32, i32* %vfrontporch56, align 1, !dbg !622
  %cmp57 = icmp eq i32 %64, %67, !dbg !623
  br i1 %cmp57, label %land.lhs.true59, label %if.end102, !dbg !624

land.lhs.true59:                                  ; preds = %land.lhs.true53
  %68 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !625
  %69 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %68, i32 0, i32 1, !dbg !626
  %bt60 = bitcast %union.anon* %69 to %struct.v4l2_bt_timings*, !dbg !626
  %vsync = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt60, i32 0, i32 9, !dbg !627
  %70 = load i32, i32* %vsync, align 1, !dbg !627
  %71 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !628
  %72 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %71, i32 0, i32 1, !dbg !629
  %bt61 = bitcast %union.anon* %72 to %struct.v4l2_bt_timings*, !dbg !629
  %vsync62 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt61, i32 0, i32 9, !dbg !630
  %73 = load i32, i32* %vsync62, align 1, !dbg !630
  %cmp63 = icmp eq i32 %70, %73, !dbg !631
  br i1 %cmp63, label %land.lhs.true65, label %if.end102, !dbg !632

land.lhs.true65:                                  ; preds = %land.lhs.true59
  %74 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !633
  %75 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %74, i32 0, i32 1, !dbg !634
  %bt66 = bitcast %union.anon* %75 to %struct.v4l2_bt_timings*, !dbg !634
  %vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt66, i32 0, i32 10, !dbg !635
  %76 = load i32, i32* %vbackporch, align 1, !dbg !635
  %77 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !636
  %78 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %77, i32 0, i32 1, !dbg !637
  %bt67 = bitcast %union.anon* %78 to %struct.v4l2_bt_timings*, !dbg !637
  %vbackporch68 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt67, i32 0, i32 10, !dbg !638
  %79 = load i32, i32* %vbackporch68, align 1, !dbg !638
  %cmp69 = icmp eq i32 %76, %79, !dbg !639
  br i1 %cmp69, label %land.lhs.true71, label %if.end102, !dbg !640

land.lhs.true71:                                  ; preds = %land.lhs.true65
  %80 = load i8, i8* %match_reduced_fps.addr, align 1, !dbg !641
  %tobool = trunc i8 %80 to i1, !dbg !641
  br i1 %tobool, label %lor.lhs.false72, label %land.lhs.true79, !dbg !642

lor.lhs.false72:                                  ; preds = %land.lhs.true71
  %81 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !643
  %82 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %81, i32 0, i32 1, !dbg !644
  %bt73 = bitcast %union.anon* %82 to %struct.v4l2_bt_timings*, !dbg !644
  %flags = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt73, i32 0, i32 15, !dbg !645
  %83 = load i32, i32* %flags, align 1, !dbg !645
  %and = and i32 %83, 4, !dbg !646
  %84 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !647
  %85 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %84, i32 0, i32 1, !dbg !648
  %bt74 = bitcast %union.anon* %85 to %struct.v4l2_bt_timings*, !dbg !648
  %flags75 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt74, i32 0, i32 15, !dbg !649
  %86 = load i32, i32* %flags75, align 1, !dbg !649
  %and76 = and i32 %86, 4, !dbg !650
  %cmp77 = icmp eq i32 %and, %and76, !dbg !651
  br i1 %cmp77, label %land.lhs.true79, label %if.end102, !dbg !652

land.lhs.true79:                                  ; preds = %lor.lhs.false72, %land.lhs.true71
  %87 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !653
  %88 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %87, i32 0, i32 1, !dbg !654
  %bt80 = bitcast %union.anon* %88 to %struct.v4l2_bt_timings*, !dbg !654
  %interlaced81 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt80, i32 0, i32 2, !dbg !655
  %89 = load i32, i32* %interlaced81, align 1, !dbg !655
  %tobool82 = icmp ne i32 %89, 0, !dbg !653
  br i1 %tobool82, label %lor.lhs.false83, label %if.then101, !dbg !656

lor.lhs.false83:                                  ; preds = %land.lhs.true79
  %90 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !657
  %91 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %90, i32 0, i32 1, !dbg !658
  %bt84 = bitcast %union.anon* %91 to %struct.v4l2_bt_timings*, !dbg !658
  %il_vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt84, i32 0, i32 11, !dbg !659
  %92 = load i32, i32* %il_vfrontporch, align 1, !dbg !659
  %93 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !660
  %94 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %93, i32 0, i32 1, !dbg !661
  %bt85 = bitcast %union.anon* %94 to %struct.v4l2_bt_timings*, !dbg !661
  %il_vfrontporch86 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt85, i32 0, i32 11, !dbg !662
  %95 = load i32, i32* %il_vfrontporch86, align 1, !dbg !662
  %cmp87 = icmp eq i32 %92, %95, !dbg !663
  br i1 %cmp87, label %land.lhs.true89, label %if.end102, !dbg !664

land.lhs.true89:                                  ; preds = %lor.lhs.false83
  %96 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !665
  %97 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %96, i32 0, i32 1, !dbg !666
  %bt90 = bitcast %union.anon* %97 to %struct.v4l2_bt_timings*, !dbg !666
  %il_vsync = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt90, i32 0, i32 12, !dbg !667
  %98 = load i32, i32* %il_vsync, align 1, !dbg !667
  %99 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !668
  %100 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %99, i32 0, i32 1, !dbg !669
  %bt91 = bitcast %union.anon* %100 to %struct.v4l2_bt_timings*, !dbg !669
  %il_vsync92 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt91, i32 0, i32 12, !dbg !670
  %101 = load i32, i32* %il_vsync92, align 1, !dbg !670
  %cmp93 = icmp eq i32 %98, %101, !dbg !671
  br i1 %cmp93, label %land.lhs.true95, label %if.end102, !dbg !672

land.lhs.true95:                                  ; preds = %land.lhs.true89
  %102 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t1.addr, align 8, !dbg !673
  %103 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %102, i32 0, i32 1, !dbg !674
  %bt96 = bitcast %union.anon* %103 to %struct.v4l2_bt_timings*, !dbg !674
  %il_vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt96, i32 0, i32 13, !dbg !675
  %104 = load i32, i32* %il_vbackporch, align 1, !dbg !675
  %105 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t2.addr, align 8, !dbg !676
  %106 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %105, i32 0, i32 1, !dbg !677
  %bt97 = bitcast %union.anon* %106 to %struct.v4l2_bt_timings*, !dbg !677
  %il_vbackporch98 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt97, i32 0, i32 13, !dbg !678
  %107 = load i32, i32* %il_vbackporch98, align 1, !dbg !678
  %cmp99 = icmp eq i32 %104, %107, !dbg !679
  br i1 %cmp99, label %if.then101, label %if.end102, !dbg !680

if.then101:                                       ; preds = %land.lhs.true95, %land.lhs.true79
  store i1 true, i1* %retval, align 1, !dbg !681
  br label %return, !dbg !681

if.end102:                                        ; preds = %land.lhs.true95, %land.lhs.true89, %lor.lhs.false83, %lor.lhs.false72, %land.lhs.true65, %land.lhs.true59, %land.lhs.true53, %land.lhs.true47, %land.lhs.true41, %land.lhs.true35, %land.lhs.true27, %land.lhs.true21, %land.lhs.true16, %land.lhs.true11, %land.lhs.true, %if.end
  store i1 false, i1* %retval, align 1, !dbg !682
  br label %return, !dbg !682

return:                                           ; preds = %if.end102, %if.then101, %if.then
  %108 = load i1, i1* %retval, align 1, !dbg !683
  ret i1 %108, !dbg !683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @can_reduce_fps(%struct.v4l2_bt_timings* %bt) #0 !dbg !684 {
entry:
  %retval = alloca i1, align 1
  %bt.addr = alloca %struct.v4l2_bt_timings*, align 8
  store %struct.v4l2_bt_timings* %bt, %struct.v4l2_bt_timings** %bt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_bt_timings** %bt.addr, metadata !688, metadata !DIExpression()), !dbg !689
  %0 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt.addr, align 8, !dbg !690
  %standards = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %0, i32 0, i32 14, !dbg !692
  %1 = load i32, i32* %standards, align 1, !dbg !692
  %and = and i32 %1, 4, !dbg !693
  %tobool = icmp ne i32 %and, 0, !dbg !693
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !694

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt.addr, align 8, !dbg !695
  %vsync = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %2, i32 0, i32 9, !dbg !696
  %3 = load i32, i32* %vsync, align 1, !dbg !696
  %cmp = icmp eq i32 %3, 8, !dbg !697
  br i1 %cmp, label %if.then, label %if.end, !dbg !698

if.then:                                          ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1, !dbg !699
  br label %return, !dbg !699

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt.addr, align 8, !dbg !700
  %standards1 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %4, i32 0, i32 14, !dbg !702
  %5 = load i32, i32* %standards1, align 1, !dbg !702
  %and2 = and i32 %5, 1, !dbg !703
  %tobool3 = icmp ne i32 %and2, 0, !dbg !703
  br i1 %tobool3, label %land.lhs.true4, label %if.end8, !dbg !704

land.lhs.true4:                                   ; preds = %if.end
  %6 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt.addr, align 8, !dbg !705
  %flags = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %6, i32 0, i32 15, !dbg !706
  %7 = load i32, i32* %flags, align 1, !dbg !706
  %and5 = and i32 %7, 2, !dbg !707
  %tobool6 = icmp ne i32 %and5, 0, !dbg !707
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !708

if.then7:                                         ; preds = %land.lhs.true4
  store i1 true, i1* %retval, align 1, !dbg !709
  br label %return, !dbg !709

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  store i1 false, i1* %retval, align 1, !dbg !710
  br label %return, !dbg !710

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %8 = load i1, i1* %retval, align 1, !dbg !711
  ret i1 %8, !dbg !711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @v4l2_find_dv_timings_cea861_vic(%struct.v4l2_dv_timings* %t, i8 zeroext %vic) #0 !dbg !712 {
entry:
  %retval = alloca i1, align 1
  %t.addr = alloca %struct.v4l2_dv_timings*, align 8
  %vic.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %bt1 = alloca %struct.v4l2_bt_timings*, align 8
  store %struct.v4l2_dv_timings* %t, %struct.v4l2_dv_timings** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings** %t.addr, metadata !716, metadata !DIExpression()), !dbg !717
  store i8 %vic, i8* %vic.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %vic.addr, metadata !718, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.declare(metadata i32* %i, metadata !720, metadata !DIExpression()), !dbg !721
  store i32 0, i32* %i, align 4, !dbg !722
  br label %for.cond, !dbg !724

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !725
  %1 = load i32, i32* %i, align 4, !dbg !727
  %idxprom = zext i32 %1 to i64, !dbg !728
  %arrayidx = getelementptr [112 x %struct.v4l2_dv_timings], [112 x %struct.v4l2_dv_timings]* bitcast (<{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }>* @v4l2_dv_timings_presets to [112 x %struct.v4l2_dv_timings]*), i64 0, i64 %idxprom, !dbg !728
  %2 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %arrayidx, i32 0, i32 1, !dbg !729
  %bt = bitcast %union.anon* %2 to %struct.v4l2_bt_timings*, !dbg !729
  %width = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt, i32 0, i32 0, !dbg !730
  %3 = load i32, i32* %width, align 4, !dbg !730
  %cmp = icmp ult i32 %0, %3, !dbg !731
  br i1 %cmp, label %for.body, label %for.end, !dbg !732

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.v4l2_bt_timings** %bt1, metadata !733, metadata !DIExpression()), !dbg !735
  %4 = load i32, i32* %i, align 4, !dbg !736
  %idxprom2 = zext i32 %4 to i64, !dbg !737
  %arrayidx3 = getelementptr [112 x %struct.v4l2_dv_timings], [112 x %struct.v4l2_dv_timings]* bitcast (<{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }>* @v4l2_dv_timings_presets to [112 x %struct.v4l2_dv_timings]*), i64 0, i64 %idxprom2, !dbg !737
  %5 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %arrayidx3, i32 0, i32 1, !dbg !738
  %bt4 = bitcast %union.anon* %5 to %struct.v4l2_bt_timings*, !dbg !738
  store %struct.v4l2_bt_timings* %bt4, %struct.v4l2_bt_timings** %bt1, align 8, !dbg !735
  %6 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt1, align 8, !dbg !739
  %flags = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %6, i32 0, i32 15, !dbg !741
  %7 = load i32, i32* %flags, align 1, !dbg !741
  %and = and i32 %7, 128, !dbg !742
  %tobool = icmp ne i32 %and, 0, !dbg !742
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !743

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt1, align 8, !dbg !744
  %cea861_vic = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %8, i32 0, i32 17, !dbg !745
  %9 = load i8, i8* %cea861_vic, align 1, !dbg !745
  %conv = zext i8 %9 to i32, !dbg !744
  %10 = load i8, i8* %vic.addr, align 1, !dbg !746
  %conv5 = zext i8 %10 to i32, !dbg !746
  %cmp6 = icmp eq i32 %conv, %conv5, !dbg !747
  br i1 %cmp6, label %if.then, label %if.end, !dbg !748

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !749
  %12 = load i32, i32* %i, align 4, !dbg !751
  %idxprom8 = zext i32 %12 to i64, !dbg !752
  %arrayidx9 = getelementptr [112 x %struct.v4l2_dv_timings], [112 x %struct.v4l2_dv_timings]* bitcast (<{ { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, %struct.v4l2_dv_timings }>* @v4l2_dv_timings_presets to [112 x %struct.v4l2_dv_timings]*), i64 0, i64 %idxprom8, !dbg !752
  %13 = bitcast %struct.v4l2_dv_timings* %11 to i8*, !dbg !752
  %14 = bitcast %struct.v4l2_dv_timings* %arrayidx9 to i8*, !dbg !752
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 4 %14, i64 132, i1 false), !dbg !752
  store i1 true, i1* %retval, align 1, !dbg !753
  br label %return, !dbg !753

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !754

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !dbg !755
  %inc = add i32 %15, 1, !dbg !755
  store i32 %inc, i32* %i, align 4, !dbg !755
  br label %for.cond, !dbg !756, !llvm.loop !757

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !759
  br label %return, !dbg !759

return:                                           ; preds = %for.end, %if.then
  %16 = load i1, i1* %retval, align 1, !dbg !760
  ret i1 %16, !dbg !760
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @v4l2_print_dv_timings(i8* %dev_prefix, i8* %prefix, %struct.v4l2_dv_timings* %t, i1 zeroext %detailed) #0 !dbg !761 {
entry:
  %dev_prefix.addr = alloca i8*, align 8
  %prefix.addr = alloca i8*, align 8
  %t.addr = alloca %struct.v4l2_dv_timings*, align 8
  %detailed.addr = alloca i8, align 1
  %bt = alloca %struct.v4l2_bt_timings*, align 8
  %htot = alloca i32, align 4
  %vtot = alloca i32, align 4
  %fps = alloca i32, align 4
  store i8* %dev_prefix, i8** %dev_prefix.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_prefix.addr, metadata !765, metadata !DIExpression()), !dbg !766
  store i8* %prefix, i8** %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prefix.addr, metadata !767, metadata !DIExpression()), !dbg !768
  store %struct.v4l2_dv_timings* %t, %struct.v4l2_dv_timings** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings** %t.addr, metadata !769, metadata !DIExpression()), !dbg !770
  %frombool = zext i1 %detailed to i8
  store i8 %frombool, i8* %detailed.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %detailed.addr, metadata !771, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.declare(metadata %struct.v4l2_bt_timings** %bt, metadata !773, metadata !DIExpression()), !dbg !774
  %0 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !775
  %1 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %0, i32 0, i32 1, !dbg !776
  %bt1 = bitcast %union.anon* %1 to %struct.v4l2_bt_timings*, !dbg !776
  store %struct.v4l2_bt_timings* %bt1, %struct.v4l2_bt_timings** %bt, align 8, !dbg !774
  call void @llvm.dbg.declare(metadata i32* %htot, metadata !777, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.declare(metadata i32* %vtot, metadata !779, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.declare(metadata i32* %fps, metadata !781, metadata !DIExpression()), !dbg !782
  %2 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !783
  %type = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %2, i32 0, i32 0, !dbg !785
  %3 = load i32, i32* %type, align 1, !dbg !785
  %cmp = icmp ne i32 %3, 0, !dbg !786
  br i1 %cmp, label %if.then, label %if.end, !dbg !787

if.then:                                          ; preds = %entry
  br label %if.end142, !dbg !788

if.end:                                           ; preds = %entry
  %4 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !789
  %width = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %4, i32 0, i32 0, !dbg !789
  %5 = load i32, i32* %width, align 1, !dbg !789
  %6 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !789
  %hfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %6, i32 0, i32 5, !dbg !789
  %7 = load i32, i32* %hfrontporch, align 1, !dbg !789
  %8 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !789
  %hsync = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %8, i32 0, i32 6, !dbg !789
  %9 = load i32, i32* %hsync, align 1, !dbg !789
  %add = add i32 %7, %9, !dbg !789
  %10 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !789
  %hbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %10, i32 0, i32 7, !dbg !789
  %11 = load i32, i32* %hbackporch, align 1, !dbg !789
  %add2 = add i32 %add, %11, !dbg !789
  %add3 = add i32 %5, %add2, !dbg !789
  store i32 %add3, i32* %htot, align 4, !dbg !790
  %12 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !791
  %height = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %12, i32 0, i32 1, !dbg !791
  %13 = load i32, i32* %height, align 1, !dbg !791
  %14 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !791
  %vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %14, i32 0, i32 8, !dbg !791
  %15 = load i32, i32* %vfrontporch, align 1, !dbg !791
  %16 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !791
  %vsync = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %16, i32 0, i32 9, !dbg !791
  %17 = load i32, i32* %vsync, align 1, !dbg !791
  %add4 = add i32 %15, %17, !dbg !791
  %18 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !791
  %vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %18, i32 0, i32 10, !dbg !791
  %19 = load i32, i32* %vbackporch, align 1, !dbg !791
  %add5 = add i32 %add4, %19, !dbg !791
  %20 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !791
  %il_vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %20, i32 0, i32 11, !dbg !791
  %21 = load i32, i32* %il_vfrontporch, align 1, !dbg !791
  %add6 = add i32 %add5, %21, !dbg !791
  %22 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !791
  %il_vsync = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %22, i32 0, i32 12, !dbg !791
  %23 = load i32, i32* %il_vsync, align 1, !dbg !791
  %add7 = add i32 %add6, %23, !dbg !791
  %24 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !791
  %il_vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %24, i32 0, i32 13, !dbg !791
  %25 = load i32, i32* %il_vbackporch, align 1, !dbg !791
  %add8 = add i32 %add7, %25, !dbg !791
  %add9 = add i32 %13, %add8, !dbg !791
  store i32 %add9, i32* %vtot, align 4, !dbg !792
  %26 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !793
  %interlaced = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %26, i32 0, i32 2, !dbg !795
  %27 = load i32, i32* %interlaced, align 1, !dbg !795
  %tobool = icmp ne i32 %27, 0, !dbg !793
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !796

if.then10:                                        ; preds = %if.end
  %28 = load i32, i32* %vtot, align 4, !dbg !797
  %div = udiv i32 %28, 2, !dbg !797
  store i32 %div, i32* %vtot, align 4, !dbg !797
  br label %if.end11, !dbg !798

if.end11:                                         ; preds = %if.then10, %if.end
  %29 = load i32, i32* %htot, align 4, !dbg !799
  %30 = load i32, i32* %vtot, align 4, !dbg !800
  %mul = mul i32 %29, %30, !dbg !801
  %cmp12 = icmp ugt i32 %mul, 0, !dbg !802
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !803

cond.true:                                        ; preds = %if.end11
  %31 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !804
  %pixelclock = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %31, i32 0, i32 4, !dbg !805
  %32 = load i64, i64* %pixelclock, align 1, !dbg !805
  %mul13 = mul i64 100, %32, !dbg !806
  %33 = load i32, i32* %htot, align 4, !dbg !807
  %34 = load i32, i32* %vtot, align 4, !dbg !808
  %mul14 = mul i32 %33, %34, !dbg !809
  %call = call i64 @div_u64(i64 %mul13, i32 %mul14) #5, !dbg !810
  br label %cond.end, !dbg !803

cond.false:                                       ; preds = %if.end11
  br label %cond.end, !dbg !803

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ], !dbg !803
  %conv = trunc i64 %cond to i32, !dbg !803
  store i32 %conv, i32* %fps, align 4, !dbg !811
  %35 = load i8*, i8** %prefix.addr, align 8, !dbg !812
  %cmp15 = icmp eq i8* %35, null, !dbg !814
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !815

if.then17:                                        ; preds = %cond.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %prefix.addr, align 8, !dbg !816
  br label %if.end18, !dbg !817

if.end18:                                         ; preds = %if.then17, %cond.end
  %36 = load i8*, i8** %dev_prefix.addr, align 8, !dbg !818
  %37 = load i8*, i8** %prefix.addr, align 8, !dbg !818
  %38 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !818
  %width19 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %38, i32 0, i32 0, !dbg !818
  %39 = load i32, i32* %width19, align 1, !dbg !818
  %40 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !818
  %height20 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %40, i32 0, i32 1, !dbg !818
  %41 = load i32, i32* %height20, align 1, !dbg !818
  %42 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !818
  %interlaced21 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %42, i32 0, i32 2, !dbg !818
  %43 = load i32, i32* %interlaced21, align 1, !dbg !818
  %tobool22 = icmp ne i32 %43, 0, !dbg !818
  %44 = zext i1 %tobool22 to i64, !dbg !818
  %cond23 = select i1 %tobool22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), !dbg !818
  %45 = load i32, i32* %fps, align 4, !dbg !818
  %div24 = udiv i32 %45, 100, !dbg !818
  %46 = load i32, i32* %fps, align 4, !dbg !818
  %rem = urem i32 %46, 100, !dbg !818
  %47 = load i32, i32* %htot, align 4, !dbg !818
  %48 = load i32, i32* %vtot, align 4, !dbg !818
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %37, i32 %39, i32 %41, i8* %cond23, i32 %div24, i32 %rem, i32 %47, i32 %48) #6, !dbg !818
  %49 = load i8, i8* %detailed.addr, align 1, !dbg !819
  %tobool26 = trunc i8 %49 to i1, !dbg !819
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !821

if.then27:                                        ; preds = %if.end18
  br label %if.end142, !dbg !822

if.end28:                                         ; preds = %if.end18
  %50 = load i8*, i8** %dev_prefix.addr, align 8, !dbg !823
  %51 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !823
  %hfrontporch29 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %51, i32 0, i32 5, !dbg !823
  %52 = load i32, i32* %hfrontporch29, align 1, !dbg !823
  %53 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !823
  %polarities = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %53, i32 0, i32 3, !dbg !823
  %54 = load i32, i32* %polarities, align 1, !dbg !823
  %and = and i32 %54, 2, !dbg !823
  %tobool30 = icmp ne i32 %and, 0, !dbg !823
  %55 = zext i1 %tobool30 to i64, !dbg !823
  %cond31 = select i1 %tobool30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), !dbg !823
  %56 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !823
  %hsync32 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %56, i32 0, i32 6, !dbg !823
  %57 = load i32, i32* %hsync32, align 1, !dbg !823
  %58 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !823
  %hbackporch33 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %58, i32 0, i32 7, !dbg !823
  %59 = load i32, i32* %hbackporch33, align 1, !dbg !823
  %call34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %50, i32 %52, i8* %cond31, i32 %57, i32 %59) #6, !dbg !823
  %60 = load i8*, i8** %dev_prefix.addr, align 8, !dbg !824
  %61 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !824
  %vfrontporch35 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %61, i32 0, i32 8, !dbg !824
  %62 = load i32, i32* %vfrontporch35, align 1, !dbg !824
  %63 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !824
  %polarities36 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %63, i32 0, i32 3, !dbg !824
  %64 = load i32, i32* %polarities36, align 1, !dbg !824
  %and37 = and i32 %64, 1, !dbg !824
  %tobool38 = icmp ne i32 %and37, 0, !dbg !824
  %65 = zext i1 %tobool38 to i64, !dbg !824
  %cond39 = select i1 %tobool38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), !dbg !824
  %66 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !824
  %vsync40 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %66, i32 0, i32 9, !dbg !824
  %67 = load i32, i32* %vsync40, align 1, !dbg !824
  %68 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !824
  %vbackporch41 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %68, i32 0, i32 10, !dbg !824
  %69 = load i32, i32* %vbackporch41, align 1, !dbg !824
  %call42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %60, i32 %62, i8* %cond39, i32 %67, i32 %69) #6, !dbg !824
  %70 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !825
  %interlaced43 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %70, i32 0, i32 2, !dbg !827
  %71 = load i32, i32* %interlaced43, align 1, !dbg !827
  %tobool44 = icmp ne i32 %71, 0, !dbg !825
  br i1 %tobool44, label %if.then45, label %if.end54, !dbg !828

if.then45:                                        ; preds = %if.end28
  %72 = load i8*, i8** %dev_prefix.addr, align 8, !dbg !829
  %73 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !829
  %il_vfrontporch46 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %73, i32 0, i32 11, !dbg !829
  %74 = load i32, i32* %il_vfrontporch46, align 1, !dbg !829
  %75 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !829
  %polarities47 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %75, i32 0, i32 3, !dbg !829
  %76 = load i32, i32* %polarities47, align 1, !dbg !829
  %and48 = and i32 %76, 1, !dbg !829
  %tobool49 = icmp ne i32 %and48, 0, !dbg !829
  %77 = zext i1 %tobool49 to i64, !dbg !829
  %cond50 = select i1 %tobool49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), !dbg !829
  %78 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !829
  %il_vsync51 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %78, i32 0, i32 12, !dbg !829
  %79 = load i32, i32* %il_vsync51, align 1, !dbg !829
  %80 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !829
  %il_vbackporch52 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %80, i32 0, i32 13, !dbg !829
  %81 = load i32, i32* %il_vbackporch52, align 1, !dbg !829
  %call53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i8* %72, i32 %74, i8* %cond50, i32 %79, i32 %81) #6, !dbg !829
  br label %if.end54, !dbg !829

if.end54:                                         ; preds = %if.then45, %if.end28
  %82 = load i8*, i8** %dev_prefix.addr, align 8, !dbg !830
  %83 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !830
  %pixelclock55 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %83, i32 0, i32 4, !dbg !830
  %84 = load i64, i64* %pixelclock55, align 1, !dbg !830
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %82, i64 %84) #6, !dbg !830
  %85 = load i8*, i8** %dev_prefix.addr, align 8, !dbg !831
  %86 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !831
  %flags = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %86, i32 0, i32 15, !dbg !831
  %87 = load i32, i32* %flags, align 1, !dbg !831
  %88 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !831
  %flags57 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %88, i32 0, i32 15, !dbg !831
  %89 = load i32, i32* %flags57, align 1, !dbg !831
  %and58 = and i32 %89, 1, !dbg !831
  %tobool59 = icmp ne i32 %and58, 0, !dbg !831
  %90 = zext i1 %tobool59 to i64, !dbg !831
  %cond60 = select i1 %tobool59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !831
  %91 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !831
  %flags61 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %91, i32 0, i32 15, !dbg !831
  %92 = load i32, i32* %flags61, align 1, !dbg !831
  %and62 = and i32 %92, 1, !dbg !831
  %tobool63 = icmp ne i32 %and62, 0, !dbg !831
  br i1 %tobool63, label %land.rhs, label %land.end, !dbg !831

land.rhs:                                         ; preds = %if.end54
  %93 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !831
  %vsync64 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %93, i32 0, i32 9, !dbg !831
  %94 = load i32, i32* %vsync64, align 1, !dbg !831
  %cmp65 = icmp eq i32 %94, 8, !dbg !831
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end54
  %95 = phi i1 [ false, %if.end54 ], [ %cmp65, %land.rhs ], !dbg !832
  %96 = zext i1 %95 to i64, !dbg !831
  %cond67 = select i1 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !831
  %97 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !831
  %flags68 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %97, i32 0, i32 15, !dbg !831
  %98 = load i32, i32* %flags68, align 1, !dbg !831
  %and69 = and i32 %98, 2, !dbg !831
  %tobool70 = icmp ne i32 %and69, 0, !dbg !831
  %99 = zext i1 %tobool70 to i64, !dbg !831
  %cond71 = select i1 %tobool70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !831
  %100 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !831
  %flags72 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %100, i32 0, i32 15, !dbg !831
  %101 = load i32, i32* %flags72, align 1, !dbg !831
  %and73 = and i32 %101, 4, !dbg !831
  %tobool74 = icmp ne i32 %and73, 0, !dbg !831
  %102 = zext i1 %tobool74 to i64, !dbg !831
  %cond75 = select i1 %tobool74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !831
  %103 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !831
  %flags76 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %103, i32 0, i32 15, !dbg !831
  %104 = load i32, i32* %flags76, align 1, !dbg !831
  %and77 = and i32 %104, 8, !dbg !831
  %tobool78 = icmp ne i32 %and77, 0, !dbg !831
  %105 = zext i1 %tobool78 to i64, !dbg !831
  %cond79 = select i1 %tobool78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !831
  %106 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !831
  %flags80 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %106, i32 0, i32 15, !dbg !831
  %107 = load i32, i32* %flags80, align 1, !dbg !831
  %and81 = and i32 %107, 16, !dbg !831
  %tobool82 = icmp ne i32 %and81, 0, !dbg !831
  %108 = zext i1 %tobool82 to i64, !dbg !831
  %cond83 = select i1 %tobool82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !831
  %109 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !831
  %flags84 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %109, i32 0, i32 15, !dbg !831
  %110 = load i32, i32* %flags84, align 1, !dbg !831
  %and85 = and i32 %110, 32, !dbg !831
  %tobool86 = icmp ne i32 %and85, 0, !dbg !831
  %111 = zext i1 %tobool86 to i64, !dbg !831
  %cond87 = select i1 %tobool86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !831
  %112 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !831
  %flags88 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %112, i32 0, i32 15, !dbg !831
  %113 = load i32, i32* %flags88, align 1, !dbg !831
  %and89 = and i32 %113, 64, !dbg !831
  %tobool90 = icmp ne i32 %and89, 0, !dbg !831
  %114 = zext i1 %tobool90 to i64, !dbg !831
  %cond91 = select i1 %tobool90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !831
  %115 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !831
  %flags92 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %115, i32 0, i32 15, !dbg !831
  %116 = load i32, i32* %flags92, align 1, !dbg !831
  %and93 = and i32 %116, 128, !dbg !831
  %tobool94 = icmp ne i32 %and93, 0, !dbg !831
  %117 = zext i1 %tobool94 to i64, !dbg !831
  %cond95 = select i1 %tobool94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !831
  %118 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !831
  %flags96 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %118, i32 0, i32 15, !dbg !831
  %119 = load i32, i32* %flags96, align 1, !dbg !831
  %and97 = and i32 %119, 256, !dbg !831
  %tobool98 = icmp ne i32 %and97, 0, !dbg !831
  %120 = zext i1 %tobool98 to i64, !dbg !831
  %cond99 = select i1 %tobool98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !831
  %call100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* %85, i32 %87, i8* %cond60, i8* %cond67, i8* %cond71, i8* %cond75, i8* %cond79, i8* %cond83, i8* %cond87, i8* %cond91, i8* %cond95, i8* %cond99) #6, !dbg !831
  %121 = load i8*, i8** %dev_prefix.addr, align 8, !dbg !833
  %122 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !833
  %standards = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %122, i32 0, i32 14, !dbg !833
  %123 = load i32, i32* %standards, align 1, !dbg !833
  %124 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !833
  %standards101 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %124, i32 0, i32 14, !dbg !833
  %125 = load i32, i32* %standards101, align 1, !dbg !833
  %and102 = and i32 %125, 1, !dbg !833
  %tobool103 = icmp ne i32 %and102, 0, !dbg !833
  %126 = zext i1 %tobool103 to i64, !dbg !833
  %cond104 = select i1 %tobool103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !833
  %127 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !833
  %standards105 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %127, i32 0, i32 14, !dbg !833
  %128 = load i32, i32* %standards105, align 1, !dbg !833
  %and106 = and i32 %128, 2, !dbg !833
  %tobool107 = icmp ne i32 %and106, 0, !dbg !833
  %129 = zext i1 %tobool107 to i64, !dbg !833
  %cond108 = select i1 %tobool107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !833
  %130 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !833
  %standards109 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %130, i32 0, i32 14, !dbg !833
  %131 = load i32, i32* %standards109, align 1, !dbg !833
  %and110 = and i32 %131, 4, !dbg !833
  %tobool111 = icmp ne i32 %and110, 0, !dbg !833
  %132 = zext i1 %tobool111 to i64, !dbg !833
  %cond112 = select i1 %tobool111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !833
  %133 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !833
  %standards113 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %133, i32 0, i32 14, !dbg !833
  %134 = load i32, i32* %standards113, align 1, !dbg !833
  %and114 = and i32 %134, 8, !dbg !833
  %tobool115 = icmp ne i32 %and114, 0, !dbg !833
  %135 = zext i1 %tobool115 to i64, !dbg !833
  %cond116 = select i1 %tobool115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !833
  %136 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !833
  %standards117 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %136, i32 0, i32 14, !dbg !833
  %137 = load i32, i32* %standards117, align 1, !dbg !833
  %and118 = and i32 %137, 16, !dbg !833
  %tobool119 = icmp ne i32 %and118, 0, !dbg !833
  %138 = zext i1 %tobool119 to i64, !dbg !833
  %cond120 = select i1 %tobool119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), !dbg !833
  %call121 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i8* %121, i32 %123, i8* %cond104, i8* %cond108, i8* %cond112, i8* %cond116, i8* %cond120) #6, !dbg !833
  %139 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !834
  %flags122 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %139, i32 0, i32 15, !dbg !836
  %140 = load i32, i32* %flags122, align 1, !dbg !836
  %and123 = and i32 %140, 64, !dbg !837
  %tobool124 = icmp ne i32 %and123, 0, !dbg !837
  br i1 %tobool124, label %if.then125, label %if.end128, !dbg !838

if.then125:                                       ; preds = %land.end
  %141 = load i8*, i8** %dev_prefix.addr, align 8, !dbg !839
  %142 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !839
  %picture_aspect = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %142, i32 0, i32 16, !dbg !839
  %numerator = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %picture_aspect, i32 0, i32 0, !dbg !839
  %143 = load i32, i32* %numerator, align 1, !dbg !839
  %144 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !839
  %picture_aspect126 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %144, i32 0, i32 16, !dbg !839
  %denominator = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %picture_aspect126, i32 0, i32 1, !dbg !839
  %145 = load i32, i32* %denominator, align 1, !dbg !839
  %call127 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i8* %141, i32 %143, i32 %145) #6, !dbg !839
  br label %if.end128, !dbg !839

if.end128:                                        ; preds = %if.then125, %land.end
  %146 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !840
  %flags129 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %146, i32 0, i32 15, !dbg !842
  %147 = load i32, i32* %flags129, align 1, !dbg !842
  %and130 = and i32 %147, 128, !dbg !843
  %tobool131 = icmp ne i32 %and130, 0, !dbg !843
  br i1 %tobool131, label %if.then132, label %if.end135, !dbg !844

if.then132:                                       ; preds = %if.end128
  %148 = load i8*, i8** %dev_prefix.addr, align 8, !dbg !845
  %149 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !845
  %cea861_vic = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %149, i32 0, i32 17, !dbg !845
  %150 = load i8, i8* %cea861_vic, align 1, !dbg !845
  %conv133 = zext i8 %150 to i32, !dbg !845
  %call134 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i8* %148, i32 %conv133) #6, !dbg !845
  br label %if.end135, !dbg !845

if.end135:                                        ; preds = %if.then132, %if.end128
  %151 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !846
  %flags136 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %151, i32 0, i32 15, !dbg !848
  %152 = load i32, i32* %flags136, align 1, !dbg !848
  %and137 = and i32 %152, 256, !dbg !849
  %tobool138 = icmp ne i32 %and137, 0, !dbg !849
  br i1 %tobool138, label %if.then139, label %if.end142, !dbg !850

if.then139:                                       ; preds = %if.end135
  %153 = load i8*, i8** %dev_prefix.addr, align 8, !dbg !851
  %154 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !851
  %hdmi_vic = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %154, i32 0, i32 18, !dbg !851
  %155 = load i8, i8* %hdmi_vic, align 1, !dbg !851
  %conv140 = zext i8 %155 to i32, !dbg !851
  %call141 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i8* %153, i32 %conv140) #6, !dbg !851
  br label %if.end142, !dbg !851

if.end142:                                        ; preds = %if.then, %if.then27, %if.then139, %if.end135
  ret void, !dbg !852
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64(i64 %dividend, i32 %divisor) #0 !dbg !853 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !857, metadata !DIExpression()), !dbg !858
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !859, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !861, metadata !DIExpression()), !dbg !862
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !863
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !864
  %call = call i64 @div_u64_rem(i64 %0, i32 %1, i32* %remainder) #5, !dbg !865
  ret i64 %call, !dbg !866
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @v4l2_dv_timings_aspect_ratio(%struct.v4l2_dv_timings* %t) #0 !dbg !867 {
entry:
  %retval = alloca %struct.v4l2_fract, align 4
  %t.addr = alloca %struct.v4l2_dv_timings*, align 8
  %n = alloca i64, align 8
  %d = alloca i64, align 8
  store %struct.v4l2_dv_timings* %t, %struct.v4l2_dv_timings** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings** %t.addr, metadata !870, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.declare(metadata %struct.v4l2_fract* %retval, metadata !872, metadata !DIExpression()), !dbg !873
  %0 = bitcast %struct.v4l2_fract* %retval to i8*, !dbg !873
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%struct.v4l2_fract* @__const.v4l2_dv_timings_aspect_ratio.ratio to i8*), i64 8, i1 false), !dbg !873
  call void @llvm.dbg.declare(metadata i64* %n, metadata !874, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.declare(metadata i64* %d, metadata !877, metadata !DIExpression()), !dbg !878
  %1 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !879
  %type = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %1, i32 0, i32 0, !dbg !881
  %2 = load i32, i32* %type, align 1, !dbg !881
  %cmp = icmp ne i32 %2, 0, !dbg !882
  br i1 %cmp, label %if.then, label %if.end, !dbg !883

if.then:                                          ; preds = %entry
  br label %return, !dbg !884

if.end:                                           ; preds = %entry
  %3 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !885
  %4 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %3, i32 0, i32 1, !dbg !887
  %bt = bitcast %union.anon* %4 to %struct.v4l2_bt_timings*, !dbg !887
  %flags = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt, i32 0, i32 15, !dbg !888
  %5 = load i32, i32* %flags, align 1, !dbg !888
  %and = and i32 %5, 64, !dbg !889
  %tobool = icmp ne i32 %and, 0, !dbg !889
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !890

if.then1:                                         ; preds = %if.end
  br label %return, !dbg !891

if.end2:                                          ; preds = %if.end
  %6 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !892
  %7 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %6, i32 0, i32 1, !dbg !893
  %bt3 = bitcast %union.anon* %7 to %struct.v4l2_bt_timings*, !dbg !893
  %width = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt3, i32 0, i32 0, !dbg !894
  %8 = load i32, i32* %width, align 1, !dbg !894
  %9 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !895
  %10 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %9, i32 0, i32 1, !dbg !896
  %bt4 = bitcast %union.anon* %10 to %struct.v4l2_bt_timings*, !dbg !896
  %picture_aspect = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt4, i32 0, i32 16, !dbg !897
  %denominator = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %picture_aspect, i32 0, i32 1, !dbg !898
  %11 = load i32, i32* %denominator, align 1, !dbg !898
  %mul = mul i32 %8, %11, !dbg !899
  %numerator = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 0, !dbg !900
  store i32 %mul, i32* %numerator, align 4, !dbg !901
  %12 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !902
  %13 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %12, i32 0, i32 1, !dbg !903
  %bt5 = bitcast %union.anon* %13 to %struct.v4l2_bt_timings*, !dbg !903
  %height = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt5, i32 0, i32 1, !dbg !904
  %14 = load i32, i32* %height, align 1, !dbg !904
  %15 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !905
  %16 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %15, i32 0, i32 1, !dbg !906
  %bt6 = bitcast %union.anon* %16 to %struct.v4l2_bt_timings*, !dbg !906
  %picture_aspect7 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt6, i32 0, i32 16, !dbg !907
  %numerator8 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %picture_aspect7, i32 0, i32 0, !dbg !908
  %17 = load i32, i32* %numerator8, align 1, !dbg !908
  %mul9 = mul i32 %14, %17, !dbg !909
  %denominator10 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 1, !dbg !910
  store i32 %mul9, i32* %denominator10, align 4, !dbg !911
  %numerator11 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 0, !dbg !912
  %18 = load i32, i32* %numerator11, align 4, !dbg !912
  %conv = zext i32 %18 to i64, !dbg !913
  %denominator12 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 1, !dbg !914
  %19 = load i32, i32* %denominator12, align 4, !dbg !914
  %conv13 = zext i32 %19 to i64, !dbg !915
  %numerator14 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 0, !dbg !916
  %20 = load i32, i32* %numerator14, align 4, !dbg !916
  %conv15 = zext i32 %20 to i64, !dbg !917
  %denominator16 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 1, !dbg !918
  %21 = load i32, i32* %denominator16, align 4, !dbg !918
  %conv17 = zext i32 %21 to i64, !dbg !919
  call void @rational_best_approximation(i64 %conv, i64 %conv13, i64 %conv15, i64 %conv17, i64* %n, i64* %d) #5, !dbg !920
  %22 = load i64, i64* %n, align 8, !dbg !921
  %conv18 = trunc i64 %22 to i32, !dbg !921
  %numerator19 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 0, !dbg !922
  store i32 %conv18, i32* %numerator19, align 4, !dbg !923
  %23 = load i64, i64* %d, align 8, !dbg !924
  %conv20 = trunc i64 %23 to i32, !dbg !924
  %denominator21 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 1, !dbg !925
  store i32 %conv20, i32* %denominator21, align 4, !dbg !926
  br label %return, !dbg !927

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %24 = bitcast %struct.v4l2_fract* %retval to i64*, !dbg !928
  %25 = load i64, i64* %24, align 4, !dbg !928
  ret i64 %25, !dbg !928
}

; Function Attrs: noredzone
declare dso_local void @rational_best_approximation(i64, i64, i64, i64, i64*, i64*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @v4l2_calc_timeperframe(%struct.v4l2_dv_timings* %t) #0 !dbg !929 {
entry:
  %retval = alloca %struct.v4l2_fract, align 4
  %t.addr = alloca %struct.v4l2_dv_timings*, align 8
  %bt = alloca %struct.v4l2_bt_timings*, align 8
  %n = alloca i64, align 8
  %d = alloca i64, align 8
  %htot = alloca i32, align 4
  %vtot = alloca i32, align 4
  %fps = alloca i32, align 4
  %pclk = alloca i64, align 8
  store %struct.v4l2_dv_timings* %t, %struct.v4l2_dv_timings** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings** %t.addr, metadata !930, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.declare(metadata %struct.v4l2_bt_timings** %bt, metadata !932, metadata !DIExpression()), !dbg !933
  %0 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !934
  %1 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %0, i32 0, i32 1, !dbg !935
  %bt1 = bitcast %union.anon* %1 to %struct.v4l2_bt_timings*, !dbg !935
  store %struct.v4l2_bt_timings* %bt1, %struct.v4l2_bt_timings** %bt, align 8, !dbg !933
  call void @llvm.dbg.declare(metadata %struct.v4l2_fract* %retval, metadata !936, metadata !DIExpression()), !dbg !937
  %2 = bitcast %struct.v4l2_fract* %retval to i8*, !dbg !937
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.v4l2_fract* @__const.v4l2_calc_timeperframe.fps_fract to i8*), i64 8, i1 false), !dbg !937
  call void @llvm.dbg.declare(metadata i64* %n, metadata !938, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.declare(metadata i64* %d, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata i32* %htot, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.declare(metadata i32* %vtot, metadata !944, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.declare(metadata i32* %fps, metadata !946, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata i64* %pclk, metadata !948, metadata !DIExpression()), !dbg !949
  %3 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %t.addr, align 8, !dbg !950
  %type = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %3, i32 0, i32 0, !dbg !952
  %4 = load i32, i32* %type, align 1, !dbg !952
  %cmp = icmp ne i32 %4, 0, !dbg !953
  br i1 %cmp, label %if.then, label %if.end, !dbg !954

if.then:                                          ; preds = %entry
  br label %return, !dbg !955

if.end:                                           ; preds = %entry
  %5 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !956
  %width = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %5, i32 0, i32 0, !dbg !956
  %6 = load i32, i32* %width, align 1, !dbg !956
  %7 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !956
  %hfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %7, i32 0, i32 5, !dbg !956
  %8 = load i32, i32* %hfrontporch, align 1, !dbg !956
  %9 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !956
  %hsync = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %9, i32 0, i32 6, !dbg !956
  %10 = load i32, i32* %hsync, align 1, !dbg !956
  %add = add i32 %8, %10, !dbg !956
  %11 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !956
  %hbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %11, i32 0, i32 7, !dbg !956
  %12 = load i32, i32* %hbackporch, align 1, !dbg !956
  %add2 = add i32 %add, %12, !dbg !956
  %add3 = add i32 %6, %add2, !dbg !956
  store i32 %add3, i32* %htot, align 4, !dbg !957
  %13 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !958
  %height = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %13, i32 0, i32 1, !dbg !958
  %14 = load i32, i32* %height, align 1, !dbg !958
  %15 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !958
  %vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %15, i32 0, i32 8, !dbg !958
  %16 = load i32, i32* %vfrontporch, align 1, !dbg !958
  %17 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !958
  %vsync = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %17, i32 0, i32 9, !dbg !958
  %18 = load i32, i32* %vsync, align 1, !dbg !958
  %add4 = add i32 %16, %18, !dbg !958
  %19 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !958
  %vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %19, i32 0, i32 10, !dbg !958
  %20 = load i32, i32* %vbackporch, align 1, !dbg !958
  %add5 = add i32 %add4, %20, !dbg !958
  %21 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !958
  %il_vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %21, i32 0, i32 11, !dbg !958
  %22 = load i32, i32* %il_vfrontporch, align 1, !dbg !958
  %add6 = add i32 %add5, %22, !dbg !958
  %23 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !958
  %il_vsync = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %23, i32 0, i32 12, !dbg !958
  %24 = load i32, i32* %il_vsync, align 1, !dbg !958
  %add7 = add i32 %add6, %24, !dbg !958
  %25 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !958
  %il_vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %25, i32 0, i32 13, !dbg !958
  %26 = load i32, i32* %il_vbackporch, align 1, !dbg !958
  %add8 = add i32 %add7, %26, !dbg !958
  %add9 = add i32 %14, %add8, !dbg !958
  store i32 %add9, i32* %vtot, align 4, !dbg !959
  %27 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !960
  %pixelclock = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %27, i32 0, i32 4, !dbg !961
  %28 = load i64, i64* %pixelclock, align 1, !dbg !961
  store i64 %28, i64* %pclk, align 8, !dbg !962
  %29 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !963
  %flags = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %29, i32 0, i32 15, !dbg !965
  %30 = load i32, i32* %flags, align 1, !dbg !965
  %and = and i32 %30, 512, !dbg !966
  %tobool = icmp ne i32 %and, 0, !dbg !966
  br i1 %tobool, label %land.lhs.true, label %if.end14, !dbg !967

land.lhs.true:                                    ; preds = %if.end
  %31 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %bt, align 8, !dbg !968
  %flags10 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %31, i32 0, i32 15, !dbg !969
  %32 = load i32, i32* %flags10, align 1, !dbg !969
  %and11 = and i32 %32, 4, !dbg !970
  %tobool12 = icmp ne i32 %and11, 0, !dbg !970
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !971

if.then13:                                        ; preds = %land.lhs.true
  %33 = load i64, i64* %pclk, align 8, !dbg !972
  %mul = mul i64 %33, 1000, !dbg !973
  %call = call i64 @div_u64(i64 %mul, i32 1001) #5, !dbg !974
  store i64 %call, i64* %pclk, align 8, !dbg !975
  br label %if.end14, !dbg !976

if.end14:                                         ; preds = %if.then13, %land.lhs.true, %if.end
  %34 = load i32, i32* %htot, align 4, !dbg !977
  %35 = load i32, i32* %vtot, align 4, !dbg !978
  %mul15 = mul i32 %34, %35, !dbg !979
  %cmp16 = icmp ugt i32 %mul15, 0, !dbg !980
  br i1 %cmp16, label %cond.true, label %cond.false, !dbg !981

cond.true:                                        ; preds = %if.end14
  %36 = load i64, i64* %pclk, align 8, !dbg !982
  %mul17 = mul i64 100, %36, !dbg !983
  %37 = load i32, i32* %htot, align 4, !dbg !984
  %38 = load i32, i32* %vtot, align 4, !dbg !985
  %mul18 = mul i32 %37, %38, !dbg !986
  %call19 = call i64 @div_u64(i64 %mul17, i32 %mul18) #5, !dbg !987
  br label %cond.end, !dbg !981

cond.false:                                       ; preds = %if.end14
  br label %cond.end, !dbg !981

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call19, %cond.true ], [ 0, %cond.false ], !dbg !981
  %conv = trunc i64 %cond to i32, !dbg !981
  store i32 %conv, i32* %fps, align 4, !dbg !988
  %39 = load i32, i32* %fps, align 4, !dbg !989
  %tobool20 = icmp ne i32 %39, 0, !dbg !989
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !991

if.then21:                                        ; preds = %cond.end
  br label %return, !dbg !992

if.end22:                                         ; preds = %cond.end
  %40 = load i32, i32* %fps, align 4, !dbg !993
  %conv23 = zext i32 %40 to i64, !dbg !993
  %41 = load i32, i32* %fps, align 4, !dbg !994
  %conv24 = zext i32 %41 to i64, !dbg !994
  call void @rational_best_approximation(i64 %conv23, i64 100, i64 %conv24, i64 100, i64* %n, i64* %d) #5, !dbg !995
  %42 = load i64, i64* %d, align 8, !dbg !996
  %conv25 = trunc i64 %42 to i32, !dbg !996
  %numerator = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 0, !dbg !997
  store i32 %conv25, i32* %numerator, align 4, !dbg !998
  %43 = load i64, i64* %n, align 8, !dbg !999
  %conv26 = trunc i64 %43 to i32, !dbg !999
  %denominator = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 1, !dbg !1000
  store i32 %conv26, i32* %denominator, align 4, !dbg !1001
  br label %return, !dbg !1002

return:                                           ; preds = %if.end22, %if.then21, %if.then
  %44 = bitcast %struct.v4l2_fract* %retval to i64*, !dbg !1003
  %45 = load i64, i64* %44, align 4, !dbg !1003
  ret i64 %45, !dbg !1003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @v4l2_detect_cvt(i32 %frame_height, i32 %hfreq, i32 %vsync, i32 %active_width, i32 %polarities, i1 zeroext %interlaced, %struct.v4l2_dv_timings* %fmt) #0 !dbg !1004 {
entry:
  %retval = alloca i1, align 1
  %frame_height.addr = alloca i32, align 4
  %hfreq.addr = alloca i32, align 4
  %vsync.addr = alloca i32, align 4
  %active_width.addr = alloca i32, align 4
  %polarities.addr = alloca i32, align 4
  %interlaced.addr = alloca i8, align 1
  %fmt.addr = alloca %struct.v4l2_dv_timings*, align 8
  %v_fp = alloca i32, align 4
  %v_bp = alloca i32, align 4
  %h_fp = alloca i32, align 4
  %h_bp = alloca i32, align 4
  %hsync = alloca i32, align 4
  %frame_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %image_width = alloca i32, align 4
  %reduced_blanking = alloca i8, align 1
  %rb_v2 = alloca i8, align 1
  %pix_clk = alloca i32, align 4
  %h_blank = alloca i32, align 4
  %clk_gran = alloca i32, align 4
  %ideal_duty_cycle_per_myriad = alloca i32, align 4
  %h_blank112 = alloca i32, align 4
  store i32 %frame_height, i32* %frame_height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %frame_height.addr, metadata !1007, metadata !DIExpression()), !dbg !1008
  store i32 %hfreq, i32* %hfreq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hfreq.addr, metadata !1009, metadata !DIExpression()), !dbg !1010
  store i32 %vsync, i32* %vsync.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vsync.addr, metadata !1011, metadata !DIExpression()), !dbg !1012
  store i32 %active_width, i32* %active_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %active_width.addr, metadata !1013, metadata !DIExpression()), !dbg !1014
  store i32 %polarities, i32* %polarities.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %polarities.addr, metadata !1015, metadata !DIExpression()), !dbg !1016
  %frombool = zext i1 %interlaced to i8
  store i8 %frombool, i8* %interlaced.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %interlaced.addr, metadata !1017, metadata !DIExpression()), !dbg !1018
  store %struct.v4l2_dv_timings* %fmt, %struct.v4l2_dv_timings** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings** %fmt.addr, metadata !1019, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.declare(metadata i32* %v_fp, metadata !1021, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.declare(metadata i32* %v_bp, metadata !1023, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.declare(metadata i32* %h_fp, metadata !1025, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.declare(metadata i32* %h_bp, metadata !1027, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.declare(metadata i32* %hsync, metadata !1029, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.declare(metadata i32* %frame_width, metadata !1031, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.declare(metadata i32* %image_height, metadata !1033, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.declare(metadata i32* %image_width, metadata !1035, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.declare(metadata i8* %reduced_blanking, metadata !1037, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.declare(metadata i8* %rb_v2, metadata !1039, metadata !DIExpression()), !dbg !1040
  store i8 0, i8* %rb_v2, align 1, !dbg !1040
  call void @llvm.dbg.declare(metadata i32* %pix_clk, metadata !1041, metadata !DIExpression()), !dbg !1042
  %0 = load i32, i32* %vsync.addr, align 4, !dbg !1043
  %cmp = icmp ult i32 %0, 4, !dbg !1045
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1046

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %vsync.addr, align 4, !dbg !1047
  %cmp1 = icmp ugt i32 %1, 8, !dbg !1048
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1049

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !1050
  br label %return, !dbg !1050

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %polarities.addr, align 4, !dbg !1051
  %cmp2 = icmp eq i32 %2, 1, !dbg !1053
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !1054

if.then3:                                         ; preds = %if.end
  store i8 0, i8* %reduced_blanking, align 1, !dbg !1055
  br label %if.end8, !dbg !1056

if.else:                                          ; preds = %if.end
  %3 = load i32, i32* %polarities.addr, align 4, !dbg !1057
  %cmp4 = icmp eq i32 %3, 2, !dbg !1059
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !1060

if.then5:                                         ; preds = %if.else
  store i8 1, i8* %reduced_blanking, align 1, !dbg !1061
  br label %if.end7, !dbg !1062

if.else6:                                         ; preds = %if.else
  store i1 false, i1* %retval, align 1, !dbg !1063
  br label %return, !dbg !1063

if.end7:                                          ; preds = %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then3
  %4 = load i8, i8* %reduced_blanking, align 1, !dbg !1064
  %tobool = trunc i8 %4 to i1, !dbg !1064
  br i1 %tobool, label %land.lhs.true, label %if.end11, !dbg !1066

land.lhs.true:                                    ; preds = %if.end8
  %5 = load i32, i32* %vsync.addr, align 4, !dbg !1067
  %cmp9 = icmp eq i32 %5, 8, !dbg !1068
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1069

if.then10:                                        ; preds = %land.lhs.true
  store i8 1, i8* %rb_v2, align 1, !dbg !1070
  br label %if.end11, !dbg !1071

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %if.end8
  %6 = load i8, i8* %rb_v2, align 1, !dbg !1072
  %tobool12 = trunc i8 %6 to i1, !dbg !1072
  br i1 %tobool12, label %land.lhs.true13, label %if.end16, !dbg !1074

land.lhs.true13:                                  ; preds = %if.end11
  %7 = load i32, i32* %active_width.addr, align 4, !dbg !1075
  %cmp14 = icmp eq i32 %7, 0, !dbg !1076
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1077

if.then15:                                        ; preds = %land.lhs.true13
  store i1 false, i1* %retval, align 1, !dbg !1078
  br label %return, !dbg !1078

if.end16:                                         ; preds = %land.lhs.true13, %if.end11
  %8 = load i8, i8* %rb_v2, align 1, !dbg !1079
  %tobool17 = trunc i8 %8 to i1, !dbg !1079
  br i1 %tobool17, label %if.end21, label %land.lhs.true18, !dbg !1081

land.lhs.true18:                                  ; preds = %if.end16
  %9 = load i32, i32* %vsync.addr, align 4, !dbg !1082
  %cmp19 = icmp ugt i32 %9, 7, !dbg !1083
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1084

if.then20:                                        ; preds = %land.lhs.true18
  store i1 false, i1* %retval, align 1, !dbg !1085
  br label %return, !dbg !1085

if.end21:                                         ; preds = %land.lhs.true18, %if.end16
  %10 = load i32, i32* %hfreq.addr, align 4, !dbg !1086
  %cmp22 = icmp eq i32 %10, 0, !dbg !1088
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !1089

if.then23:                                        ; preds = %if.end21
  store i1 false, i1* %retval, align 1, !dbg !1090
  br label %return, !dbg !1090

if.end24:                                         ; preds = %if.end21
  %11 = load i8, i8* %reduced_blanking, align 1, !dbg !1091
  %tobool25 = trunc i8 %11 to i1, !dbg !1091
  br i1 %tobool25, label %if.then26, label %if.else43, !dbg !1093

if.then26:                                        ; preds = %if.end24
  %12 = load i8, i8* %rb_v2, align 1, !dbg !1094
  %tobool27 = trunc i8 %12 to i1, !dbg !1094
  br i1 %tobool27, label %if.then28, label %if.else33, !dbg !1097

if.then28:                                        ; preds = %if.then26
  store i32 6, i32* %v_bp, align 4, !dbg !1098
  %13 = load i32, i32* %hfreq.addr, align 4, !dbg !1100
  %mul = mul i32 460, %13, !dbg !1101
  %div = udiv i32 %mul, 1000000, !dbg !1102
  %add = add i32 %div, 1, !dbg !1103
  store i32 %add, i32* %v_fp, align 4, !dbg !1104
  %14 = load i32, i32* %vsync.addr, align 4, !dbg !1105
  %15 = load i32, i32* %v_bp, align 4, !dbg !1106
  %add29 = add i32 %14, %15, !dbg !1107
  %16 = load i32, i32* %v_fp, align 4, !dbg !1108
  %sub = sub i32 %16, %add29, !dbg !1108
  store i32 %sub, i32* %v_fp, align 4, !dbg !1108
  %17 = load i32, i32* %v_fp, align 4, !dbg !1109
  %cmp30 = icmp slt i32 %17, 1, !dbg !1111
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1112

if.then31:                                        ; preds = %if.then28
  store i32 1, i32* %v_fp, align 4, !dbg !1113
  br label %if.end32, !dbg !1114

if.end32:                                         ; preds = %if.then31, %if.then28
  br label %if.end42, !dbg !1115

if.else33:                                        ; preds = %if.then26
  store i32 3, i32* %v_fp, align 4, !dbg !1116
  %18 = load i32, i32* %hfreq.addr, align 4, !dbg !1118
  %mul34 = mul i32 460, %18, !dbg !1119
  %div35 = udiv i32 %mul34, 1000000, !dbg !1120
  %add36 = add i32 %div35, 1, !dbg !1121
  store i32 %add36, i32* %v_bp, align 4, !dbg !1122
  %19 = load i32, i32* %vsync.addr, align 4, !dbg !1123
  %20 = load i32, i32* %v_fp, align 4, !dbg !1124
  %add37 = add i32 %19, %20, !dbg !1125
  %21 = load i32, i32* %v_bp, align 4, !dbg !1126
  %sub38 = sub i32 %21, %add37, !dbg !1126
  store i32 %sub38, i32* %v_bp, align 4, !dbg !1126
  %22 = load i32, i32* %v_bp, align 4, !dbg !1127
  %cmp39 = icmp slt i32 %22, 7, !dbg !1129
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1130

if.then40:                                        ; preds = %if.else33
  store i32 7, i32* %v_bp, align 4, !dbg !1131
  br label %if.end41, !dbg !1132

if.end41:                                         ; preds = %if.then40, %if.else33
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end32
  br label %if.end51, !dbg !1133

if.else43:                                        ; preds = %if.end24
  store i32 3, i32* %v_fp, align 4, !dbg !1134
  %23 = load i32, i32* %hfreq.addr, align 4, !dbg !1136
  %mul44 = mul i32 550, %23, !dbg !1137
  %div45 = udiv i32 %mul44, 1000000, !dbg !1138
  %add46 = add i32 %div45, 1, !dbg !1139
  %24 = load i32, i32* %vsync.addr, align 4, !dbg !1140
  %sub47 = sub i32 %add46, %24, !dbg !1141
  store i32 %sub47, i32* %v_bp, align 4, !dbg !1142
  %25 = load i32, i32* %v_bp, align 4, !dbg !1143
  %cmp48 = icmp slt i32 %25, 7, !dbg !1145
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1146

if.then49:                                        ; preds = %if.else43
  store i32 7, i32* %v_bp, align 4, !dbg !1147
  br label %if.end50, !dbg !1148

if.end50:                                         ; preds = %if.then49, %if.else43
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end42
  %26 = load i8, i8* %interlaced.addr, align 1, !dbg !1149
  %tobool52 = trunc i8 %26 to i1, !dbg !1149
  br i1 %tobool52, label %if.then53, label %if.else60, !dbg !1151

if.then53:                                        ; preds = %if.end51
  %27 = load i32, i32* %frame_height.addr, align 4, !dbg !1152
  %28 = load i32, i32* %v_fp, align 4, !dbg !1153
  %mul54 = mul i32 2, %28, !dbg !1154
  %sub55 = sub i32 %27, %mul54, !dbg !1155
  %29 = load i32, i32* %vsync.addr, align 4, !dbg !1156
  %mul56 = mul i32 2, %29, !dbg !1157
  %sub57 = sub i32 %sub55, %mul56, !dbg !1158
  %30 = load i32, i32* %v_bp, align 4, !dbg !1159
  %mul58 = mul i32 2, %30, !dbg !1160
  %sub59 = sub i32 %sub57, %mul58, !dbg !1161
  %and = and i32 %sub59, -2, !dbg !1162
  store i32 %and, i32* %image_height, align 4, !dbg !1163
  br label %if.end66, !dbg !1164

if.else60:                                        ; preds = %if.end51
  %31 = load i32, i32* %frame_height.addr, align 4, !dbg !1165
  %32 = load i32, i32* %v_fp, align 4, !dbg !1166
  %sub61 = sub i32 %31, %32, !dbg !1167
  %33 = load i32, i32* %vsync.addr, align 4, !dbg !1168
  %sub62 = sub i32 %sub61, %33, !dbg !1169
  %34 = load i32, i32* %v_bp, align 4, !dbg !1170
  %sub63 = sub i32 %sub62, %34, !dbg !1171
  %add64 = add i32 %sub63, 1, !dbg !1172
  %and65 = and i32 %add64, -2, !dbg !1173
  store i32 %and65, i32* %image_height, align 4, !dbg !1174
  br label %if.end66

if.end66:                                         ; preds = %if.else60, %if.then53
  %35 = load i32, i32* %image_height, align 4, !dbg !1175
  %cmp67 = icmp slt i32 %35, 0, !dbg !1177
  br i1 %cmp67, label %if.then68, label %if.end69, !dbg !1178

if.then68:                                        ; preds = %if.end66
  store i1 false, i1* %retval, align 1, !dbg !1179
  br label %return, !dbg !1179

if.end69:                                         ; preds = %if.end66
  %36 = load i32, i32* %vsync.addr, align 4, !dbg !1180
  switch i32 %36, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb72
    i32 6, label %sw.bb75
    i32 7, label %sw.bb78
    i32 8, label %sw.bb91
  ], !dbg !1181

sw.bb:                                            ; preds = %if.end69
  %37 = load i32, i32* %image_height, align 4, !dbg !1182
  %mul70 = mul i32 %37, 4, !dbg !1184
  %div71 = sdiv i32 %mul70, 3, !dbg !1185
  store i32 %div71, i32* %image_width, align 4, !dbg !1186
  br label %sw.epilog, !dbg !1187

sw.bb72:                                          ; preds = %if.end69
  %38 = load i32, i32* %image_height, align 4, !dbg !1188
  %mul73 = mul i32 %38, 16, !dbg !1189
  %div74 = sdiv i32 %mul73, 9, !dbg !1190
  store i32 %div74, i32* %image_width, align 4, !dbg !1191
  br label %sw.epilog, !dbg !1192

sw.bb75:                                          ; preds = %if.end69
  %39 = load i32, i32* %image_height, align 4, !dbg !1193
  %mul76 = mul i32 %39, 16, !dbg !1194
  %div77 = sdiv i32 %mul76, 10, !dbg !1195
  store i32 %div77, i32* %image_width, align 4, !dbg !1196
  br label %sw.epilog, !dbg !1197

sw.bb78:                                          ; preds = %if.end69
  %40 = load i32, i32* %image_height, align 4, !dbg !1198
  %cmp79 = icmp eq i32 %40, 1024, !dbg !1200
  br i1 %cmp79, label %if.then80, label %if.else83, !dbg !1201

if.then80:                                        ; preds = %sw.bb78
  %41 = load i32, i32* %image_height, align 4, !dbg !1202
  %mul81 = mul i32 %41, 5, !dbg !1203
  %div82 = sdiv i32 %mul81, 4, !dbg !1204
  store i32 %div82, i32* %image_width, align 4, !dbg !1205
  br label %if.end90, !dbg !1206

if.else83:                                        ; preds = %sw.bb78
  %42 = load i32, i32* %image_height, align 4, !dbg !1207
  %cmp84 = icmp eq i32 %42, 768, !dbg !1209
  br i1 %cmp84, label %if.then85, label %if.else88, !dbg !1210

if.then85:                                        ; preds = %if.else83
  %43 = load i32, i32* %image_height, align 4, !dbg !1211
  %mul86 = mul i32 %43, 15, !dbg !1212
  %div87 = sdiv i32 %mul86, 9, !dbg !1213
  store i32 %div87, i32* %image_width, align 4, !dbg !1214
  br label %if.end89, !dbg !1215

if.else88:                                        ; preds = %if.else83
  store i1 false, i1* %retval, align 1, !dbg !1216
  br label %return, !dbg !1216

if.end89:                                         ; preds = %if.then85
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then80
  br label %sw.epilog, !dbg !1217

sw.bb91:                                          ; preds = %if.end69
  %44 = load i32, i32* %active_width.addr, align 4, !dbg !1218
  store i32 %44, i32* %image_width, align 4, !dbg !1219
  br label %sw.epilog, !dbg !1220

sw.default:                                       ; preds = %if.end69
  store i1 false, i1* %retval, align 1, !dbg !1221
  br label %return, !dbg !1221

sw.epilog:                                        ; preds = %sw.bb91, %if.end90, %sw.bb75, %sw.bb72, %sw.bb
  %45 = load i8, i8* %rb_v2, align 1, !dbg !1222
  %tobool92 = trunc i8 %45 to i1, !dbg !1222
  br i1 %tobool92, label %if.end95, label %if.then93, !dbg !1224

if.then93:                                        ; preds = %sw.epilog
  %46 = load i32, i32* %image_width, align 4, !dbg !1225
  %and94 = and i32 %46, -8, !dbg !1226
  store i32 %and94, i32* %image_width, align 4, !dbg !1227
  br label %if.end95, !dbg !1228

if.end95:                                         ; preds = %if.then93, %sw.epilog
  %47 = load i8, i8* %reduced_blanking, align 1, !dbg !1229
  %tobool96 = trunc i8 %47 to i1, !dbg !1229
  br i1 %tobool96, label %if.then97, label %if.else109, !dbg !1231

if.then97:                                        ; preds = %if.end95
  call void @llvm.dbg.declare(metadata i32* %h_blank, metadata !1232, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.declare(metadata i32* %clk_gran, metadata !1235, metadata !DIExpression()), !dbg !1236
  %48 = load i8, i8* %rb_v2, align 1, !dbg !1237
  %tobool98 = trunc i8 %48 to i1, !dbg !1237
  %49 = zext i1 %tobool98 to i64, !dbg !1237
  %cond = select i1 %tobool98, i32 80, i32 160, !dbg !1237
  store i32 %cond, i32* %h_blank, align 4, !dbg !1238
  %50 = load i8, i8* %rb_v2, align 1, !dbg !1239
  %tobool99 = trunc i8 %50 to i1, !dbg !1239
  %51 = zext i1 %tobool99 to i64, !dbg !1239
  %cond100 = select i1 %tobool99, i32 1000, i32 250000, !dbg !1239
  store i32 %cond100, i32* %clk_gran, align 4, !dbg !1240
  %52 = load i32, i32* %image_width, align 4, !dbg !1241
  %53 = load i32, i32* %h_blank, align 4, !dbg !1242
  %add101 = add i32 %52, %53, !dbg !1243
  %54 = load i32, i32* %hfreq.addr, align 4, !dbg !1244
  %mul102 = mul i32 %add101, %54, !dbg !1245
  store i32 %mul102, i32* %pix_clk, align 4, !dbg !1246
  %55 = load i32, i32* %pix_clk, align 4, !dbg !1247
  %56 = load i32, i32* %clk_gran, align 4, !dbg !1248
  %div103 = udiv i32 %55, %56, !dbg !1249
  %57 = load i32, i32* %clk_gran, align 4, !dbg !1250
  %mul104 = mul i32 %div103, %57, !dbg !1251
  store i32 %mul104, i32* %pix_clk, align 4, !dbg !1252
  %58 = load i32, i32* %h_blank, align 4, !dbg !1253
  %div105 = sdiv i32 %58, 2, !dbg !1254
  store i32 %div105, i32* %h_bp, align 4, !dbg !1255
  store i32 32, i32* %hsync, align 4, !dbg !1256
  %59 = load i32, i32* %h_blank, align 4, !dbg !1257
  %60 = load i32, i32* %h_bp, align 4, !dbg !1258
  %sub106 = sub i32 %59, %60, !dbg !1259
  %61 = load i32, i32* %hsync, align 4, !dbg !1260
  %sub107 = sub i32 %sub106, %61, !dbg !1261
  store i32 %sub107, i32* %h_fp, align 4, !dbg !1262
  %62 = load i32, i32* %image_width, align 4, !dbg !1263
  %63 = load i32, i32* %h_blank, align 4, !dbg !1264
  %add108 = add i32 %62, %63, !dbg !1265
  store i32 %add108, i32* %frame_width, align 4, !dbg !1266
  br label %if.end134, !dbg !1267

if.else109:                                       ; preds = %if.end95
  call void @llvm.dbg.declare(metadata i32* %ideal_duty_cycle_per_myriad, metadata !1268, metadata !DIExpression()), !dbg !1270
  %64 = load i32, i32* %hfreq.addr, align 4, !dbg !1271
  %div110 = udiv i32 30000000, %64, !dbg !1272
  %sub111 = sub i32 3000, %div110, !dbg !1273
  store i32 %sub111, i32* %ideal_duty_cycle_per_myriad, align 4, !dbg !1270
  call void @llvm.dbg.declare(metadata i32* %h_blank112, metadata !1274, metadata !DIExpression()), !dbg !1275
  %65 = load i32, i32* %ideal_duty_cycle_per_myriad, align 4, !dbg !1276
  %cmp113 = icmp ult i32 %65, 2000, !dbg !1278
  br i1 %cmp113, label %if.then114, label %if.end115, !dbg !1279

if.then114:                                       ; preds = %if.else109
  store i32 2000, i32* %ideal_duty_cycle_per_myriad, align 4, !dbg !1280
  br label %if.end115, !dbg !1281

if.end115:                                        ; preds = %if.then114, %if.else109
  %66 = load i32, i32* %image_width, align 4, !dbg !1282
  %67 = load i32, i32* %ideal_duty_cycle_per_myriad, align 4, !dbg !1283
  %mul116 = mul i32 %66, %67, !dbg !1284
  %68 = load i32, i32* %ideal_duty_cycle_per_myriad, align 4, !dbg !1285
  %sub117 = sub i32 10000, %68, !dbg !1286
  %div118 = udiv i32 %mul116, %sub117, !dbg !1287
  store i32 %div118, i32* %h_blank112, align 4, !dbg !1288
  %69 = load i32, i32* %h_blank112, align 4, !dbg !1289
  %div119 = sdiv i32 %69, 16, !dbg !1290
  %mul120 = mul i32 %div119, 2, !dbg !1291
  %mul121 = mul i32 %mul120, 8, !dbg !1292
  store i32 %mul121, i32* %h_blank112, align 4, !dbg !1293
  %70 = load i32, i32* %image_width, align 4, !dbg !1294
  %71 = load i32, i32* %h_blank112, align 4, !dbg !1295
  %add122 = add i32 %70, %71, !dbg !1296
  %72 = load i32, i32* %hfreq.addr, align 4, !dbg !1297
  %mul123 = mul i32 %add122, %72, !dbg !1298
  store i32 %mul123, i32* %pix_clk, align 4, !dbg !1299
  %73 = load i32, i32* %pix_clk, align 4, !dbg !1300
  %div124 = udiv i32 %73, 250000, !dbg !1301
  %mul125 = mul i32 %div124, 250000, !dbg !1302
  store i32 %mul125, i32* %pix_clk, align 4, !dbg !1303
  %74 = load i32, i32* %h_blank112, align 4, !dbg !1304
  %div126 = sdiv i32 %74, 2, !dbg !1305
  store i32 %div126, i32* %h_bp, align 4, !dbg !1306
  %75 = load i32, i32* %image_width, align 4, !dbg !1307
  %76 = load i32, i32* %h_blank112, align 4, !dbg !1308
  %add127 = add i32 %75, %76, !dbg !1309
  store i32 %add127, i32* %frame_width, align 4, !dbg !1310
  %77 = load i32, i32* %frame_width, align 4, !dbg !1311
  %mul128 = mul i32 %77, 8, !dbg !1312
  %div129 = sdiv i32 %mul128, 100, !dbg !1313
  store i32 %div129, i32* %hsync, align 4, !dbg !1314
  %78 = load i32, i32* %hsync, align 4, !dbg !1315
  %div130 = sdiv i32 %78, 8, !dbg !1316
  %mul131 = mul i32 %div130, 8, !dbg !1317
  store i32 %mul131, i32* %hsync, align 4, !dbg !1318
  %79 = load i32, i32* %h_blank112, align 4, !dbg !1319
  %80 = load i32, i32* %hsync, align 4, !dbg !1320
  %sub132 = sub i32 %79, %80, !dbg !1321
  %81 = load i32, i32* %h_bp, align 4, !dbg !1322
  %sub133 = sub i32 %sub132, %81, !dbg !1323
  store i32 %sub133, i32* %h_fp, align 4, !dbg !1324
  br label %if.end134

if.end134:                                        ; preds = %if.end115, %if.then97
  %82 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1325
  %type = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %82, i32 0, i32 0, !dbg !1326
  store i32 0, i32* %type, align 1, !dbg !1327
  %83 = load i32, i32* %polarities.addr, align 4, !dbg !1328
  %84 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1329
  %85 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %84, i32 0, i32 1, !dbg !1330
  %bt = bitcast %union.anon* %85 to %struct.v4l2_bt_timings*, !dbg !1330
  %polarities135 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt, i32 0, i32 3, !dbg !1331
  store i32 %83, i32* %polarities135, align 1, !dbg !1332
  %86 = load i32, i32* %image_width, align 4, !dbg !1333
  %87 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1334
  %88 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %87, i32 0, i32 1, !dbg !1335
  %bt136 = bitcast %union.anon* %88 to %struct.v4l2_bt_timings*, !dbg !1335
  %width = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt136, i32 0, i32 0, !dbg !1336
  store i32 %86, i32* %width, align 1, !dbg !1337
  %89 = load i32, i32* %image_height, align 4, !dbg !1338
  %90 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1339
  %91 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %90, i32 0, i32 1, !dbg !1340
  %bt137 = bitcast %union.anon* %91 to %struct.v4l2_bt_timings*, !dbg !1340
  %height = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt137, i32 0, i32 1, !dbg !1341
  store i32 %89, i32* %height, align 1, !dbg !1342
  %92 = load i32, i32* %h_fp, align 4, !dbg !1343
  %93 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1344
  %94 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %93, i32 0, i32 1, !dbg !1345
  %bt138 = bitcast %union.anon* %94 to %struct.v4l2_bt_timings*, !dbg !1345
  %hfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt138, i32 0, i32 5, !dbg !1346
  store i32 %92, i32* %hfrontporch, align 1, !dbg !1347
  %95 = load i32, i32* %v_fp, align 4, !dbg !1348
  %96 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1349
  %97 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %96, i32 0, i32 1, !dbg !1350
  %bt139 = bitcast %union.anon* %97 to %struct.v4l2_bt_timings*, !dbg !1350
  %vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt139, i32 0, i32 8, !dbg !1351
  store i32 %95, i32* %vfrontporch, align 1, !dbg !1352
  %98 = load i32, i32* %hsync, align 4, !dbg !1353
  %99 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1354
  %100 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %99, i32 0, i32 1, !dbg !1355
  %bt140 = bitcast %union.anon* %100 to %struct.v4l2_bt_timings*, !dbg !1355
  %hsync141 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt140, i32 0, i32 6, !dbg !1356
  store i32 %98, i32* %hsync141, align 1, !dbg !1357
  %101 = load i32, i32* %vsync.addr, align 4, !dbg !1358
  %102 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1359
  %103 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %102, i32 0, i32 1, !dbg !1360
  %bt142 = bitcast %union.anon* %103 to %struct.v4l2_bt_timings*, !dbg !1360
  %vsync143 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt142, i32 0, i32 9, !dbg !1361
  store i32 %101, i32* %vsync143, align 1, !dbg !1362
  %104 = load i32, i32* %frame_width, align 4, !dbg !1363
  %105 = load i32, i32* %image_width, align 4, !dbg !1364
  %sub144 = sub i32 %104, %105, !dbg !1365
  %106 = load i32, i32* %h_fp, align 4, !dbg !1366
  %sub145 = sub i32 %sub144, %106, !dbg !1367
  %107 = load i32, i32* %hsync, align 4, !dbg !1368
  %sub146 = sub i32 %sub145, %107, !dbg !1369
  %108 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1370
  %109 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %108, i32 0, i32 1, !dbg !1371
  %bt147 = bitcast %union.anon* %109 to %struct.v4l2_bt_timings*, !dbg !1371
  %hbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt147, i32 0, i32 7, !dbg !1372
  store i32 %sub146, i32* %hbackporch, align 1, !dbg !1373
  %110 = load i8, i8* %interlaced.addr, align 1, !dbg !1374
  %tobool148 = trunc i8 %110 to i1, !dbg !1374
  br i1 %tobool148, label %if.else156, label %if.then149, !dbg !1376

if.then149:                                       ; preds = %if.end134
  %111 = load i32, i32* %frame_height.addr, align 4, !dbg !1377
  %112 = load i32, i32* %image_height, align 4, !dbg !1379
  %sub150 = sub i32 %111, %112, !dbg !1380
  %113 = load i32, i32* %v_fp, align 4, !dbg !1381
  %sub151 = sub i32 %sub150, %113, !dbg !1382
  %114 = load i32, i32* %vsync.addr, align 4, !dbg !1383
  %sub152 = sub i32 %sub151, %114, !dbg !1384
  %115 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1385
  %116 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %115, i32 0, i32 1, !dbg !1386
  %bt153 = bitcast %union.anon* %116 to %struct.v4l2_bt_timings*, !dbg !1386
  %vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt153, i32 0, i32 10, !dbg !1387
  store i32 %sub152, i32* %vbackporch, align 1, !dbg !1388
  %117 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1389
  %118 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %117, i32 0, i32 1, !dbg !1390
  %bt154 = bitcast %union.anon* %118 to %struct.v4l2_bt_timings*, !dbg !1390
  %interlaced155 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt154, i32 0, i32 2, !dbg !1391
  store i32 0, i32* %interlaced155, align 1, !dbg !1392
  br label %if.end179, !dbg !1393

if.else156:                                       ; preds = %if.end134
  %119 = load i32, i32* %frame_height.addr, align 4, !dbg !1394
  %120 = load i32, i32* %image_height, align 4, !dbg !1396
  %sub157 = sub i32 %119, %120, !dbg !1397
  %121 = load i32, i32* %v_fp, align 4, !dbg !1398
  %mul158 = mul i32 2, %121, !dbg !1399
  %sub159 = sub i32 %sub157, %mul158, !dbg !1400
  %122 = load i32, i32* %vsync.addr, align 4, !dbg !1401
  %mul160 = mul i32 2, %122, !dbg !1402
  %sub161 = sub i32 %sub159, %mul160, !dbg !1403
  %div162 = udiv i32 %sub161, 2, !dbg !1404
  %123 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1405
  %124 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %123, i32 0, i32 1, !dbg !1406
  %bt163 = bitcast %union.anon* %124 to %struct.v4l2_bt_timings*, !dbg !1406
  %vbackporch164 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt163, i32 0, i32 10, !dbg !1407
  store i32 %div162, i32* %vbackporch164, align 1, !dbg !1408
  %125 = load i32, i32* %frame_height.addr, align 4, !dbg !1409
  %126 = load i32, i32* %image_height, align 4, !dbg !1410
  %sub165 = sub i32 %125, %126, !dbg !1411
  %127 = load i32, i32* %v_fp, align 4, !dbg !1412
  %mul166 = mul i32 2, %127, !dbg !1413
  %sub167 = sub i32 %sub165, %mul166, !dbg !1414
  %128 = load i32, i32* %vsync.addr, align 4, !dbg !1415
  %mul168 = mul i32 2, %128, !dbg !1416
  %sub169 = sub i32 %sub167, %mul168, !dbg !1417
  %129 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1418
  %130 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %129, i32 0, i32 1, !dbg !1419
  %bt170 = bitcast %union.anon* %130 to %struct.v4l2_bt_timings*, !dbg !1419
  %vbackporch171 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt170, i32 0, i32 10, !dbg !1420
  %131 = load i32, i32* %vbackporch171, align 1, !dbg !1420
  %sub172 = sub i32 %sub169, %131, !dbg !1421
  %132 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1422
  %133 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %132, i32 0, i32 1, !dbg !1423
  %bt173 = bitcast %union.anon* %133 to %struct.v4l2_bt_timings*, !dbg !1423
  %il_vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt173, i32 0, i32 13, !dbg !1424
  store i32 %sub172, i32* %il_vbackporch, align 1, !dbg !1425
  %134 = load i32, i32* %v_fp, align 4, !dbg !1426
  %135 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1427
  %136 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %135, i32 0, i32 1, !dbg !1428
  %bt174 = bitcast %union.anon* %136 to %struct.v4l2_bt_timings*, !dbg !1428
  %il_vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt174, i32 0, i32 11, !dbg !1429
  store i32 %134, i32* %il_vfrontporch, align 1, !dbg !1430
  %137 = load i32, i32* %vsync.addr, align 4, !dbg !1431
  %138 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1432
  %139 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %138, i32 0, i32 1, !dbg !1433
  %bt175 = bitcast %union.anon* %139 to %struct.v4l2_bt_timings*, !dbg !1433
  %il_vsync = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt175, i32 0, i32 12, !dbg !1434
  store i32 %137, i32* %il_vsync, align 1, !dbg !1435
  %140 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1436
  %141 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %140, i32 0, i32 1, !dbg !1437
  %bt176 = bitcast %union.anon* %141 to %struct.v4l2_bt_timings*, !dbg !1437
  %flags = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt176, i32 0, i32 15, !dbg !1438
  %142 = load i32, i32* %flags, align 1, !dbg !1439
  %or = or i32 %142, 8, !dbg !1439
  store i32 %or, i32* %flags, align 1, !dbg !1439
  %143 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1440
  %144 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %143, i32 0, i32 1, !dbg !1441
  %bt177 = bitcast %union.anon* %144 to %struct.v4l2_bt_timings*, !dbg !1441
  %interlaced178 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt177, i32 0, i32 2, !dbg !1442
  store i32 1, i32* %interlaced178, align 1, !dbg !1443
  br label %if.end179

if.end179:                                        ; preds = %if.else156, %if.then149
  %145 = load i32, i32* %pix_clk, align 4, !dbg !1444
  %conv = zext i32 %145 to i64, !dbg !1444
  %146 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1445
  %147 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %146, i32 0, i32 1, !dbg !1446
  %bt180 = bitcast %union.anon* %147 to %struct.v4l2_bt_timings*, !dbg !1446
  %pixelclock = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt180, i32 0, i32 4, !dbg !1447
  store i64 %conv, i64* %pixelclock, align 1, !dbg !1448
  %148 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1449
  %149 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %148, i32 0, i32 1, !dbg !1450
  %bt181 = bitcast %union.anon* %149 to %struct.v4l2_bt_timings*, !dbg !1450
  %standards = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt181, i32 0, i32 14, !dbg !1451
  store i32 4, i32* %standards, align 1, !dbg !1452
  %150 = load i8, i8* %reduced_blanking, align 1, !dbg !1453
  %tobool182 = trunc i8 %150 to i1, !dbg !1453
  br i1 %tobool182, label %if.then183, label %if.end187, !dbg !1455

if.then183:                                       ; preds = %if.end179
  %151 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1456
  %152 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %151, i32 0, i32 1, !dbg !1457
  %bt184 = bitcast %union.anon* %152 to %struct.v4l2_bt_timings*, !dbg !1457
  %flags185 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt184, i32 0, i32 15, !dbg !1458
  %153 = load i32, i32* %flags185, align 1, !dbg !1459
  %or186 = or i32 %153, 1, !dbg !1459
  store i32 %or186, i32* %flags185, align 1, !dbg !1459
  br label %if.end187, !dbg !1456

if.end187:                                        ; preds = %if.then183, %if.end179
  store i1 true, i1* %retval, align 1, !dbg !1460
  br label %return, !dbg !1460

return:                                           ; preds = %if.end187, %sw.default, %if.else88, %if.then68, %if.then23, %if.then20, %if.then15, %if.else6, %if.then
  %154 = load i1, i1* %retval, align 1, !dbg !1461
  ret i1 %154, !dbg !1461
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @v4l2_detect_gtf(i32 %frame_height, i32 %hfreq, i32 %vsync, i32 %polarities, i1 zeroext %interlaced, i64 %aspect.coerce, %struct.v4l2_dv_timings* %fmt) #0 !dbg !1462 {
entry:
  %retval = alloca i1, align 1
  %aspect = alloca %struct.v4l2_fract, align 4
  %frame_height.addr = alloca i32, align 4
  %hfreq.addr = alloca i32, align 4
  %vsync.addr = alloca i32, align 4
  %polarities.addr = alloca i32, align 4
  %interlaced.addr = alloca i8, align 1
  %fmt.addr = alloca %struct.v4l2_dv_timings*, align 8
  %pix_clk = alloca i32, align 4
  %v_fp = alloca i32, align 4
  %v_bp = alloca i32, align 4
  %h_fp = alloca i32, align 4
  %hsync = alloca i32, align 4
  %frame_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %image_width = alloca i32, align 4
  %default_gtf = alloca i8, align 1
  %h_blank = alloca i32, align 4
  %num = alloca i64, align 8
  %den = alloca i32, align 4
  %num57 = alloca i64, align 8
  %den58 = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  %0 = bitcast %struct.v4l2_fract* %aspect to i64*
  store i64 %aspect.coerce, i64* %0, align 4
  store i32 %frame_height, i32* %frame_height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %frame_height.addr, metadata !1465, metadata !DIExpression()), !dbg !1466
  store i32 %hfreq, i32* %hfreq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hfreq.addr, metadata !1467, metadata !DIExpression()), !dbg !1468
  store i32 %vsync, i32* %vsync.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vsync.addr, metadata !1469, metadata !DIExpression()), !dbg !1470
  store i32 %polarities, i32* %polarities.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %polarities.addr, metadata !1471, metadata !DIExpression()), !dbg !1472
  %frombool = zext i1 %interlaced to i8
  store i8 %frombool, i8* %interlaced.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %interlaced.addr, metadata !1473, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.declare(metadata %struct.v4l2_fract* %aspect, metadata !1475, metadata !DIExpression()), !dbg !1476
  store %struct.v4l2_dv_timings* %fmt, %struct.v4l2_dv_timings** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_dv_timings** %fmt.addr, metadata !1477, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.declare(metadata i32* %pix_clk, metadata !1479, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.declare(metadata i32* %v_fp, metadata !1481, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.declare(metadata i32* %v_bp, metadata !1483, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.declare(metadata i32* %h_fp, metadata !1485, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.declare(metadata i32* %hsync, metadata !1487, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.declare(metadata i32* %frame_width, metadata !1489, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.declare(metadata i32* %image_height, metadata !1491, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.declare(metadata i32* %image_width, metadata !1493, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.declare(metadata i8* %default_gtf, metadata !1495, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.declare(metadata i32* %h_blank, metadata !1497, metadata !DIExpression()), !dbg !1498
  %1 = load i32, i32* %vsync.addr, align 4, !dbg !1499
  %cmp = icmp ne i32 %1, 3, !dbg !1501
  br i1 %cmp, label %if.then, label %if.end, !dbg !1502

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !1503
  br label %return, !dbg !1503

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %polarities.addr, align 4, !dbg !1504
  %cmp1 = icmp eq i32 %2, 1, !dbg !1506
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !1507

if.then2:                                         ; preds = %if.end
  store i8 1, i8* %default_gtf, align 1, !dbg !1508
  br label %if.end7, !dbg !1509

if.else:                                          ; preds = %if.end
  %3 = load i32, i32* %polarities.addr, align 4, !dbg !1510
  %cmp3 = icmp eq i32 %3, 2, !dbg !1512
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1513

if.then4:                                         ; preds = %if.else
  store i8 0, i8* %default_gtf, align 1, !dbg !1514
  br label %if.end6, !dbg !1515

if.else5:                                         ; preds = %if.else
  store i1 false, i1* %retval, align 1, !dbg !1516
  br label %return, !dbg !1516

if.end6:                                          ; preds = %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then2
  %4 = load i32, i32* %hfreq.addr, align 4, !dbg !1517
  %cmp8 = icmp eq i32 %4, 0, !dbg !1519
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1520

if.then9:                                         ; preds = %if.end7
  store i1 false, i1* %retval, align 1, !dbg !1521
  br label %return, !dbg !1521

if.end10:                                         ; preds = %if.end7
  store i32 1, i32* %v_fp, align 4, !dbg !1522
  %5 = load i32, i32* %hfreq.addr, align 4, !dbg !1523
  %mul = mul i32 550, %5, !dbg !1524
  %add = add i32 %mul, 500000, !dbg !1525
  %div = udiv i32 %add, 1000000, !dbg !1526
  %6 = load i32, i32* %vsync.addr, align 4, !dbg !1527
  %sub = sub i32 %div, %6, !dbg !1528
  store i32 %sub, i32* %v_bp, align 4, !dbg !1529
  %7 = load i8, i8* %interlaced.addr, align 1, !dbg !1530
  %tobool = trunc i8 %7 to i1, !dbg !1530
  br i1 %tobool, label %if.then11, label %if.else18, !dbg !1532

if.then11:                                        ; preds = %if.end10
  %8 = load i32, i32* %frame_height.addr, align 4, !dbg !1533
  %9 = load i32, i32* %v_fp, align 4, !dbg !1534
  %mul12 = mul i32 2, %9, !dbg !1535
  %sub13 = sub i32 %8, %mul12, !dbg !1536
  %10 = load i32, i32* %vsync.addr, align 4, !dbg !1537
  %mul14 = mul i32 2, %10, !dbg !1538
  %sub15 = sub i32 %sub13, %mul14, !dbg !1539
  %11 = load i32, i32* %v_bp, align 4, !dbg !1540
  %mul16 = mul i32 2, %11, !dbg !1541
  %sub17 = sub i32 %sub15, %mul16, !dbg !1542
  %and = and i32 %sub17, -2, !dbg !1543
  store i32 %and, i32* %image_height, align 4, !dbg !1544
  br label %if.end24, !dbg !1545

if.else18:                                        ; preds = %if.end10
  %12 = load i32, i32* %frame_height.addr, align 4, !dbg !1546
  %13 = load i32, i32* %v_fp, align 4, !dbg !1547
  %sub19 = sub i32 %12, %13, !dbg !1548
  %14 = load i32, i32* %vsync.addr, align 4, !dbg !1549
  %sub20 = sub i32 %sub19, %14, !dbg !1550
  %15 = load i32, i32* %v_bp, align 4, !dbg !1551
  %sub21 = sub i32 %sub20, %15, !dbg !1552
  %add22 = add i32 %sub21, 1, !dbg !1553
  %and23 = and i32 %add22, -2, !dbg !1554
  store i32 %and23, i32* %image_height, align 4, !dbg !1555
  br label %if.end24

if.end24:                                         ; preds = %if.else18, %if.then11
  %16 = load i32, i32* %image_height, align 4, !dbg !1556
  %cmp25 = icmp slt i32 %16, 0, !dbg !1558
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1559

if.then26:                                        ; preds = %if.end24
  store i1 false, i1* %retval, align 1, !dbg !1560
  br label %return, !dbg !1560

if.end27:                                         ; preds = %if.end24
  %numerator = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %aspect, i32 0, i32 0, !dbg !1561
  %17 = load i32, i32* %numerator, align 4, !dbg !1561
  %cmp28 = icmp eq i32 %17, 0, !dbg !1563
  br i1 %cmp28, label %if.then30, label %lor.lhs.false, !dbg !1564

lor.lhs.false:                                    ; preds = %if.end27
  %denominator = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %aspect, i32 0, i32 1, !dbg !1565
  %18 = load i32, i32* %denominator, align 4, !dbg !1565
  %cmp29 = icmp eq i32 %18, 0, !dbg !1566
  br i1 %cmp29, label %if.then30, label %if.end33, !dbg !1567

if.then30:                                        ; preds = %lor.lhs.false, %if.end27
  %numerator31 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %aspect, i32 0, i32 0, !dbg !1568
  store i32 16, i32* %numerator31, align 4, !dbg !1570
  %denominator32 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %aspect, i32 0, i32 1, !dbg !1571
  store i32 9, i32* %denominator32, align 4, !dbg !1572
  br label %if.end33, !dbg !1573

if.end33:                                         ; preds = %if.then30, %lor.lhs.false
  %19 = load i32, i32* %image_height, align 4, !dbg !1574
  %numerator34 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %aspect, i32 0, i32 0, !dbg !1575
  %20 = load i32, i32* %numerator34, align 4, !dbg !1575
  %mul35 = mul i32 %19, %20, !dbg !1576
  %denominator36 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %aspect, i32 0, i32 1, !dbg !1577
  %21 = load i32, i32* %denominator36, align 4, !dbg !1577
  %div37 = udiv i32 %mul35, %21, !dbg !1578
  store i32 %div37, i32* %image_width, align 4, !dbg !1579
  %22 = load i32, i32* %image_width, align 4, !dbg !1580
  %add38 = add i32 %22, 4, !dbg !1581
  %and39 = and i32 %add38, -8, !dbg !1582
  store i32 %and39, i32* %image_width, align 4, !dbg !1583
  %23 = load i8, i8* %default_gtf, align 1, !dbg !1584
  %tobool40 = trunc i8 %23 to i1, !dbg !1584
  br i1 %tobool40, label %if.then41, label %if.else56, !dbg !1586

if.then41:                                        ; preds = %if.end33
  call void @llvm.dbg.declare(metadata i64* %num, metadata !1587, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.declare(metadata i32* %den, metadata !1590, metadata !DIExpression()), !dbg !1591
  %24 = load i32, i32* %image_width, align 4, !dbg !1592
  %mul42 = mul i32 %24, 30, !dbg !1593
  %conv = sext i32 %mul42 to i64, !dbg !1592
  %25 = load i32, i32* %hfreq.addr, align 4, !dbg !1594
  %conv43 = zext i32 %25 to i64, !dbg !1595
  %mul44 = mul i64 %conv, %conv43, !dbg !1596
  %26 = load i32, i32* %image_width, align 4, !dbg !1597
  %conv45 = sext i32 %26 to i64, !dbg !1598
  %mul46 = mul i64 %conv45, 300, !dbg !1599
  %mul47 = mul i64 %mul46, 1000, !dbg !1600
  %sub48 = sub i64 %mul44, %mul47, !dbg !1601
  store i64 %sub48, i64* %num, align 8, !dbg !1602
  %27 = load i32, i32* %hfreq.addr, align 4, !dbg !1603
  %mul49 = mul i32 %27, 70, !dbg !1604
  %add50 = add i32 %mul49, 300000, !dbg !1605
  %mul51 = mul i32 %add50, 16, !dbg !1606
  store i32 %mul51, i32* %den, align 4, !dbg !1607
  %28 = load i64, i64* %num, align 8, !dbg !1608
  %29 = load i32, i32* %den, align 4, !dbg !1609
  %shr = lshr i32 %29, 1, !dbg !1610
  %conv52 = zext i32 %shr to i64, !dbg !1611
  %add53 = add i64 %28, %conv52, !dbg !1612
  %30 = load i32, i32* %den, align 4, !dbg !1613
  %call = call i64 @div_u64(i64 %add53, i32 %30) #5, !dbg !1614
  %conv54 = trunc i64 %call to i32, !dbg !1614
  store i32 %conv54, i32* %h_blank, align 4, !dbg !1615
  %31 = load i32, i32* %h_blank, align 4, !dbg !1616
  %mul55 = mul i32 %31, 16, !dbg !1616
  store i32 %mul55, i32* %h_blank, align 4, !dbg !1616
  br label %if.end76, !dbg !1617

if.else56:                                        ; preds = %if.end33
  call void @llvm.dbg.declare(metadata i64* %num57, metadata !1618, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.declare(metadata i32* %den58, metadata !1621, metadata !DIExpression()), !dbg !1622
  %32 = load i32, i32* %image_width, align 4, !dbg !1623
  %mul59 = mul i32 %32, 37, !dbg !1624
  %conv60 = sext i32 %mul59 to i64, !dbg !1623
  %33 = load i32, i32* %hfreq.addr, align 4, !dbg !1625
  %conv61 = zext i32 %33 to i64, !dbg !1626
  %mul62 = mul i64 %conv60, %conv61, !dbg !1627
  %34 = load i32, i32* %image_width, align 4, !dbg !1628
  %conv63 = sext i32 %34 to i64, !dbg !1629
  %mul64 = mul i64 %conv63, 1800, !dbg !1630
  %mul65 = mul i64 %mul64, 1000, !dbg !1631
  %sub66 = sub i64 %mul62, %mul65, !dbg !1632
  store i64 %sub66, i64* %num57, align 8, !dbg !1633
  %35 = load i32, i32* %hfreq.addr, align 4, !dbg !1634
  %mul67 = mul i32 %35, 63, !dbg !1635
  %add68 = add i32 %mul67, 1800000, !dbg !1636
  %mul69 = mul i32 %add68, 16, !dbg !1637
  store i32 %mul69, i32* %den58, align 4, !dbg !1638
  %36 = load i64, i64* %num57, align 8, !dbg !1639
  %37 = load i32, i32* %den58, align 4, !dbg !1640
  %shr70 = lshr i32 %37, 1, !dbg !1641
  %conv71 = zext i32 %shr70 to i64, !dbg !1642
  %add72 = add i64 %36, %conv71, !dbg !1643
  %38 = load i32, i32* %den58, align 4, !dbg !1644
  %call73 = call i64 @div_u64(i64 %add72, i32 %38) #5, !dbg !1645
  %conv74 = trunc i64 %call73 to i32, !dbg !1645
  store i32 %conv74, i32* %h_blank, align 4, !dbg !1646
  %39 = load i32, i32* %h_blank, align 4, !dbg !1647
  %mul75 = mul i32 %39, 16, !dbg !1647
  store i32 %mul75, i32* %h_blank, align 4, !dbg !1647
  br label %if.end76

if.end76:                                         ; preds = %if.else56, %if.then41
  %40 = load i32, i32* %image_width, align 4, !dbg !1648
  %41 = load i32, i32* %h_blank, align 4, !dbg !1649
  %add77 = add i32 %40, %41, !dbg !1650
  store i32 %add77, i32* %frame_width, align 4, !dbg !1651
  %42 = load i32, i32* %image_width, align 4, !dbg !1652
  %43 = load i32, i32* %h_blank, align 4, !dbg !1653
  %add78 = add i32 %42, %43, !dbg !1654
  %44 = load i32, i32* %hfreq.addr, align 4, !dbg !1655
  %mul79 = mul i32 %add78, %44, !dbg !1656
  store i32 %mul79, i32* %pix_clk, align 4, !dbg !1657
  %45 = load i32, i32* %pix_clk, align 4, !dbg !1658
  %div80 = sdiv i32 %45, 250000, !dbg !1659
  %mul81 = mul i32 %div80, 250000, !dbg !1660
  store i32 %mul81, i32* %pix_clk, align 4, !dbg !1661
  %46 = load i32, i32* %frame_width, align 4, !dbg !1662
  %mul82 = mul i32 %46, 8, !dbg !1663
  %add83 = add i32 %mul82, 50, !dbg !1664
  %div84 = sdiv i32 %add83, 100, !dbg !1665
  store i32 %div84, i32* %hsync, align 4, !dbg !1666
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !1667, metadata !DIExpression()), !dbg !1669
  %47 = load i32, i32* %hsync, align 4, !dbg !1669
  store i32 %47, i32* %__x, align 4, !dbg !1669
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !1670, metadata !DIExpression()), !dbg !1669
  store i32 8, i32* %__d, align 4, !dbg !1669
  %48 = load i32, i32* %__x, align 4, !dbg !1669
  %cmp85 = icmp sgt i32 %48, 0, !dbg !1669
  %conv86 = zext i1 %cmp85 to i32, !dbg !1669
  %49 = load i32, i32* %__d, align 4, !dbg !1669
  %cmp87 = icmp sgt i32 %49, 0, !dbg !1669
  %conv88 = zext i1 %cmp87 to i32, !dbg !1669
  %cmp89 = icmp eq i32 %conv86, %conv88, !dbg !1669
  br i1 %cmp89, label %cond.true, label %cond.false, !dbg !1669

cond.true:                                        ; preds = %if.end76
  %50 = load i32, i32* %__x, align 4, !dbg !1669
  %51 = load i32, i32* %__d, align 4, !dbg !1669
  %div91 = sdiv i32 %51, 2, !dbg !1669
  %add92 = add i32 %50, %div91, !dbg !1669
  %52 = load i32, i32* %__d, align 4, !dbg !1669
  %div93 = sdiv i32 %add92, %52, !dbg !1669
  br label %cond.end, !dbg !1669

cond.false:                                       ; preds = %if.end76
  %53 = load i32, i32* %__x, align 4, !dbg !1669
  %54 = load i32, i32* %__d, align 4, !dbg !1669
  %div94 = sdiv i32 %54, 2, !dbg !1669
  %sub95 = sub i32 %53, %div94, !dbg !1669
  %55 = load i32, i32* %__d, align 4, !dbg !1669
  %div96 = sdiv i32 %sub95, %55, !dbg !1669
  br label %cond.end, !dbg !1669

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div93, %cond.true ], [ %div96, %cond.false ], !dbg !1669
  store i32 %cond, i32* %tmp, align 4, !dbg !1669
  %56 = load i32, i32* %tmp, align 4, !dbg !1669
  %mul97 = mul i32 %56, 8, !dbg !1671
  store i32 %mul97, i32* %hsync, align 4, !dbg !1672
  %57 = load i32, i32* %h_blank, align 4, !dbg !1673
  %div98 = sdiv i32 %57, 2, !dbg !1674
  %58 = load i32, i32* %hsync, align 4, !dbg !1675
  %sub99 = sub i32 %div98, %58, !dbg !1676
  store i32 %sub99, i32* %h_fp, align 4, !dbg !1677
  %59 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1678
  %type = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %59, i32 0, i32 0, !dbg !1679
  store i32 0, i32* %type, align 1, !dbg !1680
  %60 = load i32, i32* %polarities.addr, align 4, !dbg !1681
  %61 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1682
  %62 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %61, i32 0, i32 1, !dbg !1683
  %bt = bitcast %union.anon* %62 to %struct.v4l2_bt_timings*, !dbg !1683
  %polarities100 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt, i32 0, i32 3, !dbg !1684
  store i32 %60, i32* %polarities100, align 1, !dbg !1685
  %63 = load i32, i32* %image_width, align 4, !dbg !1686
  %64 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1687
  %65 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %64, i32 0, i32 1, !dbg !1688
  %bt101 = bitcast %union.anon* %65 to %struct.v4l2_bt_timings*, !dbg !1688
  %width = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt101, i32 0, i32 0, !dbg !1689
  store i32 %63, i32* %width, align 1, !dbg !1690
  %66 = load i32, i32* %image_height, align 4, !dbg !1691
  %67 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1692
  %68 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %67, i32 0, i32 1, !dbg !1693
  %bt102 = bitcast %union.anon* %68 to %struct.v4l2_bt_timings*, !dbg !1693
  %height = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt102, i32 0, i32 1, !dbg !1694
  store i32 %66, i32* %height, align 1, !dbg !1695
  %69 = load i32, i32* %h_fp, align 4, !dbg !1696
  %70 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1697
  %71 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %70, i32 0, i32 1, !dbg !1698
  %bt103 = bitcast %union.anon* %71 to %struct.v4l2_bt_timings*, !dbg !1698
  %hfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt103, i32 0, i32 5, !dbg !1699
  store i32 %69, i32* %hfrontporch, align 1, !dbg !1700
  %72 = load i32, i32* %v_fp, align 4, !dbg !1701
  %73 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1702
  %74 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %73, i32 0, i32 1, !dbg !1703
  %bt104 = bitcast %union.anon* %74 to %struct.v4l2_bt_timings*, !dbg !1703
  %vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt104, i32 0, i32 8, !dbg !1704
  store i32 %72, i32* %vfrontporch, align 1, !dbg !1705
  %75 = load i32, i32* %hsync, align 4, !dbg !1706
  %76 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1707
  %77 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %76, i32 0, i32 1, !dbg !1708
  %bt105 = bitcast %union.anon* %77 to %struct.v4l2_bt_timings*, !dbg !1708
  %hsync106 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt105, i32 0, i32 6, !dbg !1709
  store i32 %75, i32* %hsync106, align 1, !dbg !1710
  %78 = load i32, i32* %vsync.addr, align 4, !dbg !1711
  %79 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1712
  %80 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %79, i32 0, i32 1, !dbg !1713
  %bt107 = bitcast %union.anon* %80 to %struct.v4l2_bt_timings*, !dbg !1713
  %vsync108 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt107, i32 0, i32 9, !dbg !1714
  store i32 %78, i32* %vsync108, align 1, !dbg !1715
  %81 = load i32, i32* %frame_width, align 4, !dbg !1716
  %82 = load i32, i32* %image_width, align 4, !dbg !1717
  %sub109 = sub i32 %81, %82, !dbg !1718
  %83 = load i32, i32* %h_fp, align 4, !dbg !1719
  %sub110 = sub i32 %sub109, %83, !dbg !1720
  %84 = load i32, i32* %hsync, align 4, !dbg !1721
  %sub111 = sub i32 %sub110, %84, !dbg !1722
  %85 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1723
  %86 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %85, i32 0, i32 1, !dbg !1724
  %bt112 = bitcast %union.anon* %86 to %struct.v4l2_bt_timings*, !dbg !1724
  %hbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt112, i32 0, i32 7, !dbg !1725
  store i32 %sub111, i32* %hbackporch, align 1, !dbg !1726
  %87 = load i8, i8* %interlaced.addr, align 1, !dbg !1727
  %tobool113 = trunc i8 %87 to i1, !dbg !1727
  br i1 %tobool113, label %if.else121, label %if.then114, !dbg !1729

if.then114:                                       ; preds = %cond.end
  %88 = load i32, i32* %frame_height.addr, align 4, !dbg !1730
  %89 = load i32, i32* %image_height, align 4, !dbg !1732
  %sub115 = sub i32 %88, %89, !dbg !1733
  %90 = load i32, i32* %v_fp, align 4, !dbg !1734
  %sub116 = sub i32 %sub115, %90, !dbg !1735
  %91 = load i32, i32* %vsync.addr, align 4, !dbg !1736
  %sub117 = sub i32 %sub116, %91, !dbg !1737
  %92 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1738
  %93 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %92, i32 0, i32 1, !dbg !1739
  %bt118 = bitcast %union.anon* %93 to %struct.v4l2_bt_timings*, !dbg !1739
  %vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt118, i32 0, i32 10, !dbg !1740
  store i32 %sub117, i32* %vbackporch, align 1, !dbg !1741
  %94 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1742
  %95 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %94, i32 0, i32 1, !dbg !1743
  %bt119 = bitcast %union.anon* %95 to %struct.v4l2_bt_timings*, !dbg !1743
  %interlaced120 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt119, i32 0, i32 2, !dbg !1744
  store i32 0, i32* %interlaced120, align 1, !dbg !1745
  br label %if.end144, !dbg !1746

if.else121:                                       ; preds = %cond.end
  %96 = load i32, i32* %frame_height.addr, align 4, !dbg !1747
  %97 = load i32, i32* %image_height, align 4, !dbg !1749
  %sub122 = sub i32 %96, %97, !dbg !1750
  %98 = load i32, i32* %v_fp, align 4, !dbg !1751
  %mul123 = mul i32 2, %98, !dbg !1752
  %sub124 = sub i32 %sub122, %mul123, !dbg !1753
  %99 = load i32, i32* %vsync.addr, align 4, !dbg !1754
  %mul125 = mul i32 2, %99, !dbg !1755
  %sub126 = sub i32 %sub124, %mul125, !dbg !1756
  %div127 = udiv i32 %sub126, 2, !dbg !1757
  %100 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1758
  %101 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %100, i32 0, i32 1, !dbg !1759
  %bt128 = bitcast %union.anon* %101 to %struct.v4l2_bt_timings*, !dbg !1759
  %vbackporch129 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt128, i32 0, i32 10, !dbg !1760
  store i32 %div127, i32* %vbackporch129, align 1, !dbg !1761
  %102 = load i32, i32* %frame_height.addr, align 4, !dbg !1762
  %103 = load i32, i32* %image_height, align 4, !dbg !1763
  %sub130 = sub i32 %102, %103, !dbg !1764
  %104 = load i32, i32* %v_fp, align 4, !dbg !1765
  %mul131 = mul i32 2, %104, !dbg !1766
  %sub132 = sub i32 %sub130, %mul131, !dbg !1767
  %105 = load i32, i32* %vsync.addr, align 4, !dbg !1768
  %mul133 = mul i32 2, %105, !dbg !1769
  %sub134 = sub i32 %sub132, %mul133, !dbg !1770
  %106 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1771
  %107 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %106, i32 0, i32 1, !dbg !1772
  %bt135 = bitcast %union.anon* %107 to %struct.v4l2_bt_timings*, !dbg !1772
  %vbackporch136 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt135, i32 0, i32 10, !dbg !1773
  %108 = load i32, i32* %vbackporch136, align 1, !dbg !1773
  %sub137 = sub i32 %sub134, %108, !dbg !1774
  %109 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1775
  %110 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %109, i32 0, i32 1, !dbg !1776
  %bt138 = bitcast %union.anon* %110 to %struct.v4l2_bt_timings*, !dbg !1776
  %il_vbackporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt138, i32 0, i32 13, !dbg !1777
  store i32 %sub137, i32* %il_vbackporch, align 1, !dbg !1778
  %111 = load i32, i32* %v_fp, align 4, !dbg !1779
  %112 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1780
  %113 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %112, i32 0, i32 1, !dbg !1781
  %bt139 = bitcast %union.anon* %113 to %struct.v4l2_bt_timings*, !dbg !1781
  %il_vfrontporch = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt139, i32 0, i32 11, !dbg !1782
  store i32 %111, i32* %il_vfrontporch, align 1, !dbg !1783
  %114 = load i32, i32* %vsync.addr, align 4, !dbg !1784
  %115 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1785
  %116 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %115, i32 0, i32 1, !dbg !1786
  %bt140 = bitcast %union.anon* %116 to %struct.v4l2_bt_timings*, !dbg !1786
  %il_vsync = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt140, i32 0, i32 12, !dbg !1787
  store i32 %114, i32* %il_vsync, align 1, !dbg !1788
  %117 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1789
  %118 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %117, i32 0, i32 1, !dbg !1790
  %bt141 = bitcast %union.anon* %118 to %struct.v4l2_bt_timings*, !dbg !1790
  %flags = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt141, i32 0, i32 15, !dbg !1791
  %119 = load i32, i32* %flags, align 1, !dbg !1792
  %or = or i32 %119, 8, !dbg !1792
  store i32 %or, i32* %flags, align 1, !dbg !1792
  %120 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1793
  %121 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %120, i32 0, i32 1, !dbg !1794
  %bt142 = bitcast %union.anon* %121 to %struct.v4l2_bt_timings*, !dbg !1794
  %interlaced143 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt142, i32 0, i32 2, !dbg !1795
  store i32 1, i32* %interlaced143, align 1, !dbg !1796
  br label %if.end144

if.end144:                                        ; preds = %if.else121, %if.then114
  %122 = load i32, i32* %pix_clk, align 4, !dbg !1797
  %conv145 = sext i32 %122 to i64, !dbg !1797
  %123 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1798
  %124 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %123, i32 0, i32 1, !dbg !1799
  %bt146 = bitcast %union.anon* %124 to %struct.v4l2_bt_timings*, !dbg !1799
  %pixelclock = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt146, i32 0, i32 4, !dbg !1800
  store i64 %conv145, i64* %pixelclock, align 1, !dbg !1801
  %125 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1802
  %126 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %125, i32 0, i32 1, !dbg !1803
  %bt147 = bitcast %union.anon* %126 to %struct.v4l2_bt_timings*, !dbg !1803
  %standards = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt147, i32 0, i32 14, !dbg !1804
  store i32 8, i32* %standards, align 1, !dbg !1805
  %127 = load i8, i8* %default_gtf, align 1, !dbg !1806
  %tobool148 = trunc i8 %127 to i1, !dbg !1806
  br i1 %tobool148, label %if.end153, label %if.then149, !dbg !1808

if.then149:                                       ; preds = %if.end144
  %128 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %fmt.addr, align 8, !dbg !1809
  %129 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %128, i32 0, i32 1, !dbg !1810
  %bt150 = bitcast %union.anon* %129 to %struct.v4l2_bt_timings*, !dbg !1810
  %flags151 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %bt150, i32 0, i32 15, !dbg !1811
  %130 = load i32, i32* %flags151, align 1, !dbg !1812
  %or152 = or i32 %130, 1, !dbg !1812
  store i32 %or152, i32* %flags151, align 1, !dbg !1812
  br label %if.end153, !dbg !1809

if.end153:                                        ; preds = %if.then149, %if.end144
  store i1 true, i1* %retval, align 1, !dbg !1813
  br label %return, !dbg !1813

return:                                           ; preds = %if.end153, %if.then26, %if.then9, %if.else5, %if.then
  %131 = load i1, i1* %retval, align 1, !dbg !1814
  ret i1 %131, !dbg !1814
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @v4l2_calc_aspect_ratio(i8 zeroext %hor_landscape, i8 zeroext %vert_portrait) #0 !dbg !1815 {
entry:
  %retval = alloca %struct.v4l2_fract, align 4
  %hor_landscape.addr = alloca i8, align 1
  %vert_portrait.addr = alloca i8, align 1
  %ratio = alloca i8, align 1
  %__tmp = alloca i32, align 4
  store i8 %hor_landscape, i8* %hor_landscape.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %hor_landscape.addr, metadata !1818, metadata !DIExpression()), !dbg !1819
  store i8 %vert_portrait, i8* %vert_portrait.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %vert_portrait.addr, metadata !1820, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.declare(metadata %struct.v4l2_fract* %retval, metadata !1822, metadata !DIExpression()), !dbg !1823
  %0 = bitcast %struct.v4l2_fract* %retval to i8*, !dbg !1823
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%struct.v4l2_fract* @__const.v4l2_calc_aspect_ratio.aspect to i8*), i64 8, i1 false), !dbg !1823
  call void @llvm.dbg.declare(metadata i8* %ratio, metadata !1824, metadata !DIExpression()), !dbg !1825
  %1 = load i8, i8* %hor_landscape.addr, align 1, !dbg !1826
  %tobool = icmp ne i8 %1, 0, !dbg !1826
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1828

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, i8* %vert_portrait.addr, align 1, !dbg !1829
  %tobool1 = icmp ne i8 %2, 0, !dbg !1829
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1830

if.then:                                          ; preds = %land.lhs.true
  br label %return, !dbg !1831

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8, i8* %hor_landscape.addr, align 1, !dbg !1832
  %conv = zext i8 %3 to i32, !dbg !1832
  %tobool2 = icmp ne i32 %conv, 0, !dbg !1832
  br i1 %tobool2, label %land.lhs.true3, label %if.end9, !dbg !1834

land.lhs.true3:                                   ; preds = %if.end
  %4 = load i8, i8* %vert_portrait.addr, align 1, !dbg !1835
  %conv4 = zext i8 %4 to i32, !dbg !1835
  %tobool5 = icmp ne i32 %conv4, 0, !dbg !1835
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !1836

if.then6:                                         ; preds = %land.lhs.true3
  %5 = load i8, i8* %hor_landscape.addr, align 1, !dbg !1837
  %conv7 = zext i8 %5 to i32, !dbg !1837
  %numerator = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 0, !dbg !1839
  store i32 %conv7, i32* %numerator, align 4, !dbg !1840
  %6 = load i8, i8* %vert_portrait.addr, align 1, !dbg !1841
  %conv8 = zext i8 %6 to i32, !dbg !1841
  %denominator = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 1, !dbg !1842
  store i32 %conv8, i32* %denominator, align 4, !dbg !1843
  br label %return, !dbg !1844

if.end9:                                          ; preds = %land.lhs.true3, %if.end
  %7 = load i8, i8* %hor_landscape.addr, align 1, !dbg !1845
  %conv10 = zext i8 %7 to i32, !dbg !1845
  %8 = load i8, i8* %vert_portrait.addr, align 1, !dbg !1846
  %conv11 = zext i8 %8 to i32, !dbg !1846
  %or = or i32 %conv10, %conv11, !dbg !1847
  %conv12 = trunc i32 %or to i8, !dbg !1845
  store i8 %conv12, i8* %ratio, align 1, !dbg !1848
  %9 = load i8, i8* %ratio, align 1, !dbg !1849
  %conv13 = zext i8 %9 to i32, !dbg !1849
  %cmp = icmp eq i32 %conv13, 79, !dbg !1851
  br i1 %cmp, label %if.then15, label %if.else, !dbg !1852

if.then15:                                        ; preds = %if.end9
  %numerator16 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 0, !dbg !1853
  store i32 16, i32* %numerator16, align 4, !dbg !1855
  %denominator17 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 1, !dbg !1856
  store i32 9, i32* %denominator17, align 4, !dbg !1857
  br label %if.end37, !dbg !1858

if.else:                                          ; preds = %if.end9
  %10 = load i8, i8* %ratio, align 1, !dbg !1859
  %conv18 = zext i8 %10 to i32, !dbg !1859
  %cmp19 = icmp eq i32 %conv18, 34, !dbg !1861
  br i1 %cmp19, label %if.then21, label %if.else24, !dbg !1862

if.then21:                                        ; preds = %if.else
  %numerator22 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 0, !dbg !1863
  store i32 4, i32* %numerator22, align 4, !dbg !1865
  %denominator23 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 1, !dbg !1866
  store i32 3, i32* %denominator23, align 4, !dbg !1867
  br label %if.end36, !dbg !1868

if.else24:                                        ; preds = %if.else
  %11 = load i8, i8* %ratio, align 1, !dbg !1869
  %conv25 = zext i8 %11 to i32, !dbg !1869
  %cmp26 = icmp eq i32 %conv25, 68, !dbg !1871
  br i1 %cmp26, label %if.then28, label %if.else31, !dbg !1872

if.then28:                                        ; preds = %if.else24
  %numerator29 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 0, !dbg !1873
  store i32 15, i32* %numerator29, align 4, !dbg !1875
  %denominator30 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 1, !dbg !1876
  store i32 9, i32* %denominator30, align 4, !dbg !1877
  br label %if.end35, !dbg !1878

if.else31:                                        ; preds = %if.else24
  %12 = load i8, i8* %hor_landscape.addr, align 1, !dbg !1879
  %conv32 = zext i8 %12 to i32, !dbg !1879
  %add = add i32 %conv32, 99, !dbg !1881
  %numerator33 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 0, !dbg !1882
  store i32 %add, i32* %numerator33, align 4, !dbg !1883
  %denominator34 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 1, !dbg !1884
  store i32 100, i32* %denominator34, align 4, !dbg !1885
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %if.then28
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then21
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then15
  %13 = load i8, i8* %hor_landscape.addr, align 1, !dbg !1886
  %tobool38 = icmp ne i8 %13, 0, !dbg !1886
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !1888

if.then39:                                        ; preds = %if.end37
  br label %return, !dbg !1889

if.end40:                                         ; preds = %if.end37
  br label %do.body, !dbg !1890

do.body:                                          ; preds = %if.end40
  call void @llvm.dbg.declare(metadata i32* %__tmp, metadata !1891, metadata !DIExpression()), !dbg !1893
  %denominator41 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 1, !dbg !1893
  %14 = load i32, i32* %denominator41, align 4, !dbg !1893
  store i32 %14, i32* %__tmp, align 4, !dbg !1893
  %numerator42 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 0, !dbg !1893
  %15 = load i32, i32* %numerator42, align 4, !dbg !1893
  %denominator43 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 1, !dbg !1893
  store i32 %15, i32* %denominator43, align 4, !dbg !1893
  %16 = load i32, i32* %__tmp, align 4, !dbg !1893
  %numerator44 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %retval, i32 0, i32 0, !dbg !1893
  store i32 %16, i32* %numerator44, align 4, !dbg !1893
  br label %do.end, !dbg !1893

do.end:                                           ; preds = %do.body
  br label %return, !dbg !1894

return:                                           ; preds = %do.end, %if.then39, %if.then6, %if.then
  %17 = bitcast %struct.v4l2_fract* %retval to i64*, !dbg !1895
  %18 = load i64, i64* %17, align 4, !dbg !1895
  ret i64 %18, !dbg !1895
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local { i64, i64 } @v4l2_hdmi_rx_colorimetry(%struct.hdmi_avi_infoframe* %avi, %struct.hdmi_vendor_infoframe* %hdmi, i32 %height) #0 !dbg !1896 {
entry:
  %retval = alloca %struct.v4l2_hdmi_colorimetry, align 4
  %avi.addr = alloca %struct.hdmi_avi_infoframe*, align 8
  %hdmi.addr = alloca %struct.hdmi_vendor_infoframe*, align 8
  %height.addr = alloca i32, align 4
  %is_ce = alloca i8, align 1
  %is_sdtv = alloca i8, align 1
  %default_is_lim_range_rgb = alloca i8, align 1
  store %struct.hdmi_avi_infoframe* %avi, %struct.hdmi_avi_infoframe** %avi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_avi_infoframe** %avi.addr, metadata !1941, metadata !DIExpression()), !dbg !1942
  store %struct.hdmi_vendor_infoframe* %hdmi, %struct.hdmi_vendor_infoframe** %hdmi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hdmi_vendor_infoframe** %hdmi.addr, metadata !1943, metadata !DIExpression()), !dbg !1944
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !1945, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.declare(metadata %struct.v4l2_hdmi_colorimetry* %retval, metadata !1947, metadata !DIExpression()), !dbg !1948
  %0 = bitcast %struct.v4l2_hdmi_colorimetry* %retval to i8*, !dbg !1948
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%struct.v4l2_hdmi_colorimetry* @__const.v4l2_hdmi_rx_colorimetry.c to i8*), i64 16, i1 false), !dbg !1948
  call void @llvm.dbg.declare(metadata i8* %is_ce, metadata !1949, metadata !DIExpression()), !dbg !1950
  %1 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %avi.addr, align 8, !dbg !1951
  %video_code = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %1, i32 0, i32 12, !dbg !1952
  %2 = load i8, i8* %video_code, align 4, !dbg !1952
  %conv = zext i8 %2 to i32, !dbg !1951
  %tobool = icmp ne i32 %conv, 0, !dbg !1951
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1953

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hdmi.addr, align 8, !dbg !1954
  %tobool1 = icmp ne %struct.hdmi_vendor_infoframe* %3, null, !dbg !1954
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !1955

land.rhs:                                         ; preds = %lor.rhs
  %4 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %hdmi.addr, align 8, !dbg !1956
  %vic = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %4, i32 0, i32 4, !dbg !1957
  %5 = load i8, i8* %vic, align 4, !dbg !1957
  %conv2 = zext i8 %5 to i32, !dbg !1956
  %tobool3 = icmp ne i32 %conv2, 0, !dbg !1955
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %tobool3, %land.rhs ], !dbg !1958
  br label %lor.end, !dbg !1953

lor.end:                                          ; preds = %land.end, %entry
  %7 = phi i1 [ true, %entry ], [ %6, %land.end ]
  %frombool = zext i1 %7 to i8, !dbg !1950
  store i8 %frombool, i8* %is_ce, align 1, !dbg !1950
  call void @llvm.dbg.declare(metadata i8* %is_sdtv, metadata !1959, metadata !DIExpression()), !dbg !1960
  %8 = load i32, i32* %height.addr, align 4, !dbg !1961
  %cmp = icmp ule i32 %8, 576, !dbg !1962
  %frombool5 = zext i1 %cmp to i8, !dbg !1960
  store i8 %frombool5, i8* %is_sdtv, align 1, !dbg !1960
  call void @llvm.dbg.declare(metadata i8* %default_is_lim_range_rgb, metadata !1963, metadata !DIExpression()), !dbg !1964
  %9 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %avi.addr, align 8, !dbg !1965
  %video_code6 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %9, i32 0, i32 12, !dbg !1966
  %10 = load i8, i8* %video_code6, align 4, !dbg !1966
  %conv7 = zext i8 %10 to i32, !dbg !1965
  %cmp8 = icmp sgt i32 %conv7, 1, !dbg !1967
  %frombool10 = zext i1 %cmp8 to i8, !dbg !1964
  store i8 %frombool10, i8* %default_is_lim_range_rgb, align 1, !dbg !1964
  %11 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %avi.addr, align 8, !dbg !1968
  %colorspace = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %11, i32 0, i32 3, !dbg !1969
  %12 = load i32, i32* %colorspace, align 4, !dbg !1969
  switch i32 %12, label %sw.default25 [
    i32 0, label %sw.bb
  ], !dbg !1970

sw.bb:                                            ; preds = %lor.end
  %13 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %avi.addr, align 8, !dbg !1971
  %colorimetry = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %13, i32 0, i32 5, !dbg !1973
  %14 = load i32, i32* %colorimetry, align 4, !dbg !1973
  switch i32 %14, label %sw.default17 [
    i32 3, label %sw.bb11
  ], !dbg !1974

sw.bb11:                                          ; preds = %sw.bb
  %15 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %avi.addr, align 8, !dbg !1975
  %extended_colorimetry = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %15, i32 0, i32 9, !dbg !1977
  %16 = load i32, i32* %extended_colorimetry, align 4, !dbg !1977
  switch i32 %16, label %sw.default [
    i32 4, label %sw.bb12
    i32 6, label %sw.bb14
  ], !dbg !1978

sw.bb12:                                          ; preds = %sw.bb11
  %colorspace13 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !1979
  store i32 9, i32* %colorspace13, align 4, !dbg !1981
  %xfer_func = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 3, !dbg !1982
  store i32 3, i32* %xfer_func, align 4, !dbg !1983
  br label %sw.epilog, !dbg !1984

sw.bb14:                                          ; preds = %sw.bb11
  %colorspace15 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !1985
  store i32 10, i32* %colorspace15, align 4, !dbg !1986
  %xfer_func16 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 3, !dbg !1987
  store i32 1, i32* %xfer_func16, align 4, !dbg !1988
  br label %sw.epilog, !dbg !1989

sw.default:                                       ; preds = %sw.bb11
  br label %sw.epilog, !dbg !1990

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb12
  br label %sw.epilog18, !dbg !1991

sw.default17:                                     ; preds = %sw.bb
  br label %sw.epilog18, !dbg !1992

sw.epilog18:                                      ; preds = %sw.default17, %sw.epilog
  %17 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %avi.addr, align 8, !dbg !1993
  %quantization_range = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %17, i32 0, i32 10, !dbg !1994
  %18 = load i32, i32* %quantization_range, align 4, !dbg !1994
  switch i32 %18, label %sw.default21 [
    i32 1, label %sw.bb19
    i32 2, label %sw.bb20
  ], !dbg !1995

sw.bb19:                                          ; preds = %sw.epilog18
  %quantization = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 2, !dbg !1996
  store i32 2, i32* %quantization, align 4, !dbg !1998
  br label %sw.epilog24, !dbg !1999

sw.bb20:                                          ; preds = %sw.epilog18
  br label %sw.epilog24, !dbg !2000

sw.default21:                                     ; preds = %sw.epilog18
  %19 = load i8, i8* %default_is_lim_range_rgb, align 1, !dbg !2001
  %tobool22 = trunc i8 %19 to i1, !dbg !2001
  br i1 %tobool22, label %if.then, label %if.end, !dbg !2003

if.then:                                          ; preds = %sw.default21
  %quantization23 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 2, !dbg !2004
  store i32 2, i32* %quantization23, align 4, !dbg !2005
  br label %if.end, !dbg !2006

if.end:                                           ; preds = %if.then, %sw.default21
  br label %sw.epilog24, !dbg !2007

sw.epilog24:                                      ; preds = %if.end, %sw.bb20, %sw.bb19
  br label %sw.epilog80, !dbg !2008

sw.default25:                                     ; preds = %lor.end
  %quantization26 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 2, !dbg !2009
  store i32 2, i32* %quantization26, align 4, !dbg !2010
  %20 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %avi.addr, align 8, !dbg !2011
  %colorimetry27 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %20, i32 0, i32 5, !dbg !2012
  %21 = load i32, i32* %colorimetry27, align 4, !dbg !2012
  switch i32 %21, label %sw.default78 [
    i32 0, label %sw.bb28
    i32 1, label %sw.bb39
    i32 2, label %sw.bb43
    i32 3, label %sw.bb47
  ], !dbg !2013

sw.bb28:                                          ; preds = %sw.default25
  %22 = load i8, i8* %is_ce, align 1, !dbg !2014
  %tobool29 = trunc i8 %22 to i1, !dbg !2014
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !2017

if.then30:                                        ; preds = %sw.bb28
  br label %sw.epilog79, !dbg !2018

if.end31:                                         ; preds = %sw.bb28
  %23 = load i8, i8* %is_sdtv, align 1, !dbg !2019
  %tobool32 = trunc i8 %23 to i1, !dbg !2019
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !2021

if.then33:                                        ; preds = %if.end31
  %colorspace34 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !2022
  store i32 1, i32* %colorspace34, align 4, !dbg !2024
  %ycbcr_enc = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 1, !dbg !2025
  store i32 1, i32* %ycbcr_enc, align 4, !dbg !2026
  br label %if.end37, !dbg !2027

if.else:                                          ; preds = %if.end31
  %colorspace35 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !2028
  store i32 3, i32* %colorspace35, align 4, !dbg !2030
  %ycbcr_enc36 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 1, !dbg !2031
  store i32 2, i32* %ycbcr_enc36, align 4, !dbg !2032
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then33
  %xfer_func38 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 3, !dbg !2033
  store i32 1, i32* %xfer_func38, align 4, !dbg !2034
  br label %sw.epilog79, !dbg !2035

sw.bb39:                                          ; preds = %sw.default25
  %colorspace40 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !2036
  store i32 1, i32* %colorspace40, align 4, !dbg !2037
  %ycbcr_enc41 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 1, !dbg !2038
  store i32 1, i32* %ycbcr_enc41, align 4, !dbg !2039
  %xfer_func42 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 3, !dbg !2040
  store i32 1, i32* %xfer_func42, align 4, !dbg !2041
  br label %sw.epilog79, !dbg !2042

sw.bb43:                                          ; preds = %sw.default25
  %colorspace44 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !2043
  store i32 3, i32* %colorspace44, align 4, !dbg !2044
  %ycbcr_enc45 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 1, !dbg !2045
  store i32 2, i32* %ycbcr_enc45, align 4, !dbg !2046
  %xfer_func46 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 3, !dbg !2047
  store i32 1, i32* %xfer_func46, align 4, !dbg !2048
  br label %sw.epilog79, !dbg !2049

sw.bb47:                                          ; preds = %sw.default25
  %24 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %avi.addr, align 8, !dbg !2050
  %extended_colorimetry48 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %24, i32 0, i32 9, !dbg !2051
  %25 = load i32, i32* %extended_colorimetry48, align 4, !dbg !2051
  switch i32 %25, label %sw.default73 [
    i32 0, label %sw.bb49
    i32 1, label %sw.bb53
    i32 2, label %sw.bb57
    i32 3, label %sw.bb61
    i32 6, label %sw.bb65
    i32 5, label %sw.bb69
  ], !dbg !2052

sw.bb49:                                          ; preds = %sw.bb47
  %colorspace50 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !2053
  store i32 3, i32* %colorspace50, align 4, !dbg !2055
  %ycbcr_enc51 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 1, !dbg !2056
  store i32 4, i32* %ycbcr_enc51, align 4, !dbg !2057
  %xfer_func52 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 3, !dbg !2058
  store i32 1, i32* %xfer_func52, align 4, !dbg !2059
  br label %sw.epilog77, !dbg !2060

sw.bb53:                                          ; preds = %sw.bb47
  %colorspace54 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !2061
  store i32 3, i32* %colorspace54, align 4, !dbg !2062
  %ycbcr_enc55 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 1, !dbg !2063
  store i32 3, i32* %ycbcr_enc55, align 4, !dbg !2064
  %xfer_func56 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 3, !dbg !2065
  store i32 1, i32* %xfer_func56, align 4, !dbg !2066
  br label %sw.epilog77, !dbg !2067

sw.bb57:                                          ; preds = %sw.bb47
  %colorspace58 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !2068
  store i32 8, i32* %colorspace58, align 4, !dbg !2069
  %ycbcr_enc59 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 1, !dbg !2070
  store i32 1, i32* %ycbcr_enc59, align 4, !dbg !2071
  %xfer_func60 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 3, !dbg !2072
  store i32 2, i32* %xfer_func60, align 4, !dbg !2073
  br label %sw.epilog77, !dbg !2074

sw.bb61:                                          ; preds = %sw.bb47
  %colorspace62 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !2075
  store i32 9, i32* %colorspace62, align 4, !dbg !2076
  %ycbcr_enc63 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 1, !dbg !2077
  store i32 1, i32* %ycbcr_enc63, align 4, !dbg !2078
  %xfer_func64 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 3, !dbg !2079
  store i32 3, i32* %xfer_func64, align 4, !dbg !2080
  br label %sw.epilog77, !dbg !2081

sw.bb65:                                          ; preds = %sw.bb47
  %colorspace66 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !2082
  store i32 10, i32* %colorspace66, align 4, !dbg !2083
  %ycbcr_enc67 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 1, !dbg !2084
  store i32 6, i32* %ycbcr_enc67, align 4, !dbg !2085
  %xfer_func68 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 3, !dbg !2086
  store i32 1, i32* %xfer_func68, align 4, !dbg !2087
  br label %sw.epilog77, !dbg !2088

sw.bb69:                                          ; preds = %sw.bb47
  %colorspace70 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !2089
  store i32 10, i32* %colorspace70, align 4, !dbg !2090
  %ycbcr_enc71 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 1, !dbg !2091
  store i32 7, i32* %ycbcr_enc71, align 4, !dbg !2092
  %xfer_func72 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 3, !dbg !2093
  store i32 1, i32* %xfer_func72, align 4, !dbg !2094
  br label %sw.epilog77, !dbg !2095

sw.default73:                                     ; preds = %sw.bb47
  %colorspace74 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 0, !dbg !2096
  store i32 3, i32* %colorspace74, align 4, !dbg !2097
  %ycbcr_enc75 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 1, !dbg !2098
  store i32 2, i32* %ycbcr_enc75, align 4, !dbg !2099
  %xfer_func76 = getelementptr inbounds %struct.v4l2_hdmi_colorimetry, %struct.v4l2_hdmi_colorimetry* %retval, i32 0, i32 3, !dbg !2100
  store i32 1, i32* %xfer_func76, align 4, !dbg !2101
  br label %sw.epilog77, !dbg !2102

sw.epilog77:                                      ; preds = %sw.default73, %sw.bb69, %sw.bb65, %sw.bb61, %sw.bb57, %sw.bb53, %sw.bb49
  br label %sw.epilog79, !dbg !2103

sw.default78:                                     ; preds = %sw.default25
  br label %sw.epilog79, !dbg !2104

sw.epilog79:                                      ; preds = %sw.default78, %sw.epilog77, %sw.bb43, %sw.bb39, %if.end37, %if.then30
  br label %sw.epilog80, !dbg !2105

sw.epilog80:                                      ; preds = %sw.epilog79, %sw.epilog24
  %26 = bitcast %struct.v4l2_hdmi_colorimetry* %retval to { i64, i64 }*, !dbg !2106
  %27 = load { i64, i64 }, { i64, i64 }* %26, align 4, !dbg !2106
  ret { i64, i64 } %27, !dbg !2106
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i16 @v4l2_get_edid_phys_addr(i8* %edid, i32 %size, i32* %offset) #0 !dbg !2107 {
entry:
  %retval = alloca i16, align 2
  %edid.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %offset.addr = alloca i32*, align 8
  %loc = alloca i32, align 4
  store i8* %edid, i8** %edid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %edid.addr, metadata !2115, metadata !DIExpression()), !dbg !2116
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2117, metadata !DIExpression()), !dbg !2118
  store i32* %offset, i32** %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %offset.addr, metadata !2119, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.declare(metadata i32* %loc, metadata !2121, metadata !DIExpression()), !dbg !2122
  %0 = load i8*, i8** %edid.addr, align 8, !dbg !2123
  %1 = load i32, i32* %size.addr, align 4, !dbg !2124
  %call = call i32 @cec_get_edid_spa_location(i8* %0, i32 %1) #5, !dbg !2125
  store i32 %call, i32* %loc, align 4, !dbg !2122
  %2 = load i32*, i32** %offset.addr, align 8, !dbg !2126
  %tobool = icmp ne i32* %2, null, !dbg !2126
  br i1 %tobool, label %if.then, label %if.end, !dbg !2128

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %loc, align 4, !dbg !2129
  %4 = load i32*, i32** %offset.addr, align 8, !dbg !2130
  store i32 %3, i32* %4, align 4, !dbg !2131
  br label %if.end, !dbg !2132

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %loc, align 4, !dbg !2133
  %cmp = icmp eq i32 %5, 0, !dbg !2135
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2136

if.then1:                                         ; preds = %if.end
  store i16 -1, i16* %retval, align 2, !dbg !2137
  br label %return, !dbg !2137

if.end2:                                          ; preds = %if.end
  %6 = load i8*, i8** %edid.addr, align 8, !dbg !2138
  %7 = load i32, i32* %loc, align 4, !dbg !2139
  %idxprom = zext i32 %7 to i64, !dbg !2138
  %arrayidx = getelementptr i8, i8* %6, i64 %idxprom, !dbg !2138
  %8 = load i8, i8* %arrayidx, align 1, !dbg !2138
  %conv = zext i8 %8 to i32, !dbg !2138
  %shl = shl i32 %conv, 8, !dbg !2140
  %9 = load i8*, i8** %edid.addr, align 8, !dbg !2141
  %10 = load i32, i32* %loc, align 4, !dbg !2142
  %add = add i32 %10, 1, !dbg !2143
  %idxprom3 = zext i32 %add to i64, !dbg !2141
  %arrayidx4 = getelementptr i8, i8* %9, i64 %idxprom3, !dbg !2141
  %11 = load i8, i8* %arrayidx4, align 1, !dbg !2141
  %conv5 = zext i8 %11 to i32, !dbg !2141
  %or = or i32 %shl, %conv5, !dbg !2144
  %conv6 = trunc i32 %or to i16, !dbg !2145
  store i16 %conv6, i16* %retval, align 2, !dbg !2146
  br label %return, !dbg !2146

return:                                           ; preds = %if.end2, %if.then1
  %12 = load i16, i16* %retval, align 2, !dbg !2147
  ret i16 %12, !dbg !2147
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cec_get_edid_spa_location(i8* %edid, i32 %size) #0 !dbg !2148 {
entry:
  %retval = alloca i32, align 4
  %edid.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %blocks = alloca i32, align 4
  %block = alloca i32, align 4
  %d = alloca i8, align 1
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  %end = alloca i32, align 4
  %tag = alloca i8, align 1
  %len = alloca i8, align 1
  store i8* %edid, i8** %edid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %edid.addr, metadata !2152, metadata !DIExpression()), !dbg !2153
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2154, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.declare(metadata i32* %blocks, metadata !2156, metadata !DIExpression()), !dbg !2157
  %0 = load i32, i32* %size.addr, align 4, !dbg !2158
  %div = udiv i32 %0, 128, !dbg !2159
  store i32 %div, i32* %blocks, align 4, !dbg !2157
  call void @llvm.dbg.declare(metadata i32* %block, metadata !2160, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.declare(metadata i8* %d, metadata !2162, metadata !DIExpression()), !dbg !2163
  %1 = load i32, i32* %blocks, align 4, !dbg !2164
  %cmp = icmp ult i32 %1, 2, !dbg !2166
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2167

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %size.addr, align 4, !dbg !2168
  %rem = urem i32 %2, 128, !dbg !2169
  %tobool = icmp ne i32 %rem, 0, !dbg !2169
  br i1 %tobool, label %if.then, label %if.end, !dbg !2170

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !2171
  br label %return, !dbg !2171

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %edid.addr, align 8, !dbg !2172
  %arrayidx = getelementptr i8, i8* %3, i64 126, !dbg !2172
  %4 = load i8, i8* %arrayidx, align 1, !dbg !2172
  %conv = zext i8 %4 to i32, !dbg !2172
  %add = add i32 %conv, 1, !dbg !2174
  %5 = load i32, i32* %blocks, align 4, !dbg !2175
  %cmp1 = icmp ult i32 %add, %5, !dbg !2176
  br i1 %cmp1, label %if.then3, label %if.end7, !dbg !2177

if.then3:                                         ; preds = %if.end
  %6 = load i8*, i8** %edid.addr, align 8, !dbg !2178
  %arrayidx4 = getelementptr i8, i8* %6, i64 126, !dbg !2178
  %7 = load i8, i8* %arrayidx4, align 1, !dbg !2178
  %conv5 = zext i8 %7 to i32, !dbg !2178
  %add6 = add i32 %conv5, 1, !dbg !2179
  store i32 %add6, i32* %blocks, align 4, !dbg !2180
  br label %if.end7, !dbg !2181

if.end7:                                          ; preds = %if.then3, %if.end
  store i32 1, i32* %block, align 4, !dbg !2182
  br label %for.cond, !dbg !2184

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %block, align 4, !dbg !2185
  %9 = load i32, i32* %blocks, align 4, !dbg !2187
  %cmp8 = icmp ult i32 %8, %9, !dbg !2188
  br i1 %cmp8, label %for.body, label %for.end, !dbg !2189

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !2190, metadata !DIExpression()), !dbg !2192
  %10 = load i32, i32* %block, align 4, !dbg !2193
  %mul = mul i32 %10, 128, !dbg !2194
  store i32 %mul, i32* %offset, align 4, !dbg !2192
  %11 = load i8*, i8** %edid.addr, align 8, !dbg !2195
  %12 = load i32, i32* %offset, align 4, !dbg !2197
  %idxprom = zext i32 %12 to i64, !dbg !2195
  %arrayidx10 = getelementptr i8, i8* %11, i64 %idxprom, !dbg !2195
  %13 = load i8, i8* %arrayidx10, align 1, !dbg !2195
  %conv11 = zext i8 %13 to i32, !dbg !2195
  %cmp12 = icmp ne i32 %conv11, 2, !dbg !2198
  br i1 %cmp12, label %if.then21, label %lor.lhs.false14, !dbg !2199

lor.lhs.false14:                                  ; preds = %for.body
  %14 = load i8*, i8** %edid.addr, align 8, !dbg !2200
  %15 = load i32, i32* %offset, align 4, !dbg !2201
  %add15 = add i32 %15, 1, !dbg !2202
  %idxprom16 = zext i32 %add15 to i64, !dbg !2200
  %arrayidx17 = getelementptr i8, i8* %14, i64 %idxprom16, !dbg !2200
  %16 = load i8, i8* %arrayidx17, align 1, !dbg !2200
  %conv18 = zext i8 %16 to i32, !dbg !2200
  %cmp19 = icmp ne i32 %conv18, 3, !dbg !2203
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2204

if.then21:                                        ; preds = %lor.lhs.false14, %for.body
  br label %for.inc, !dbg !2205

if.end22:                                         ; preds = %lor.lhs.false14
  %17 = load i8*, i8** %edid.addr, align 8, !dbg !2206
  %18 = load i32, i32* %offset, align 4, !dbg !2207
  %add23 = add i32 %18, 2, !dbg !2208
  %idxprom24 = zext i32 %add23 to i64, !dbg !2206
  %arrayidx25 = getelementptr i8, i8* %17, i64 %idxprom24, !dbg !2206
  %19 = load i8, i8* %arrayidx25, align 1, !dbg !2206
  %conv26 = zext i8 %19 to i32, !dbg !2206
  %and = and i32 %conv26, 127, !dbg !2209
  %conv27 = trunc i32 %and to i8, !dbg !2206
  store i8 %conv27, i8* %d, align 1, !dbg !2210
  %20 = load i8, i8* %d, align 1, !dbg !2211
  %conv28 = zext i8 %20 to i32, !dbg !2211
  %cmp29 = icmp sle i32 %conv28, 4, !dbg !2213
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !2214

if.then31:                                        ; preds = %if.end22
  br label %for.inc, !dbg !2215

if.end32:                                         ; preds = %if.end22
  %21 = load i8, i8* %d, align 1, !dbg !2216
  %conv33 = zext i8 %21 to i32, !dbg !2216
  %cmp34 = icmp sgt i32 %conv33, 4, !dbg !2218
  br i1 %cmp34, label %if.then36, label %if.end89, !dbg !2219

if.then36:                                        ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2220, metadata !DIExpression()), !dbg !2222
  %22 = load i32, i32* %offset, align 4, !dbg !2223
  %add37 = add i32 %22, 4, !dbg !2224
  store i32 %add37, i32* %i, align 4, !dbg !2222
  call void @llvm.dbg.declare(metadata i32* %end, metadata !2225, metadata !DIExpression()), !dbg !2226
  %23 = load i32, i32* %offset, align 4, !dbg !2227
  %24 = load i8, i8* %d, align 1, !dbg !2228
  %conv38 = zext i8 %24 to i32, !dbg !2228
  %add39 = add i32 %23, %conv38, !dbg !2229
  store i32 %add39, i32* %end, align 4, !dbg !2226
  br label %do.body, !dbg !2230

do.body:                                          ; preds = %do.cond, %if.then36
  call void @llvm.dbg.declare(metadata i8* %tag, metadata !2231, metadata !DIExpression()), !dbg !2233
  %25 = load i8*, i8** %edid.addr, align 8, !dbg !2234
  %26 = load i32, i32* %i, align 4, !dbg !2235
  %idxprom40 = zext i32 %26 to i64, !dbg !2234
  %arrayidx41 = getelementptr i8, i8* %25, i64 %idxprom40, !dbg !2234
  %27 = load i8, i8* %arrayidx41, align 1, !dbg !2234
  %conv42 = zext i8 %27 to i32, !dbg !2234
  %shr = ashr i32 %conv42, 5, !dbg !2236
  %conv43 = trunc i32 %shr to i8, !dbg !2234
  store i8 %conv43, i8* %tag, align 1, !dbg !2233
  call void @llvm.dbg.declare(metadata i8* %len, metadata !2237, metadata !DIExpression()), !dbg !2238
  %28 = load i8*, i8** %edid.addr, align 8, !dbg !2239
  %29 = load i32, i32* %i, align 4, !dbg !2240
  %idxprom44 = zext i32 %29 to i64, !dbg !2239
  %arrayidx45 = getelementptr i8, i8* %28, i64 %idxprom44, !dbg !2239
  %30 = load i8, i8* %arrayidx45, align 1, !dbg !2239
  %conv46 = zext i8 %30 to i32, !dbg !2239
  %and47 = and i32 %conv46, 31, !dbg !2241
  %conv48 = trunc i32 %and47 to i8, !dbg !2239
  store i8 %conv48, i8* %len, align 1, !dbg !2238
  %31 = load i8, i8* %tag, align 1, !dbg !2242
  %conv49 = zext i8 %31 to i32, !dbg !2242
  %cmp50 = icmp eq i32 %conv49, 3, !dbg !2244
  br i1 %cmp50, label %land.lhs.true, label %if.end83, !dbg !2245

land.lhs.true:                                    ; preds = %do.body
  %32 = load i8, i8* %len, align 1, !dbg !2246
  %conv52 = zext i8 %32 to i32, !dbg !2246
  %cmp53 = icmp sge i32 %conv52, 5, !dbg !2247
  br i1 %cmp53, label %land.lhs.true55, label %if.end83, !dbg !2248

land.lhs.true55:                                  ; preds = %land.lhs.true
  %33 = load i32, i32* %i, align 4, !dbg !2249
  %34 = load i8, i8* %len, align 1, !dbg !2250
  %conv56 = zext i8 %34 to i32, !dbg !2250
  %add57 = add i32 %33, %conv56, !dbg !2251
  %35 = load i32, i32* %end, align 4, !dbg !2252
  %cmp58 = icmp ule i32 %add57, %35, !dbg !2253
  br i1 %cmp58, label %land.lhs.true60, label %if.end83, !dbg !2254

land.lhs.true60:                                  ; preds = %land.lhs.true55
  %36 = load i8*, i8** %edid.addr, align 8, !dbg !2255
  %37 = load i32, i32* %i, align 4, !dbg !2256
  %add61 = add i32 %37, 1, !dbg !2257
  %idxprom62 = zext i32 %add61 to i64, !dbg !2255
  %arrayidx63 = getelementptr i8, i8* %36, i64 %idxprom62, !dbg !2255
  %38 = load i8, i8* %arrayidx63, align 1, !dbg !2255
  %conv64 = zext i8 %38 to i32, !dbg !2255
  %cmp65 = icmp eq i32 %conv64, 3, !dbg !2258
  br i1 %cmp65, label %land.lhs.true67, label %if.end83, !dbg !2259

land.lhs.true67:                                  ; preds = %land.lhs.true60
  %39 = load i8*, i8** %edid.addr, align 8, !dbg !2260
  %40 = load i32, i32* %i, align 4, !dbg !2261
  %add68 = add i32 %40, 2, !dbg !2262
  %idxprom69 = zext i32 %add68 to i64, !dbg !2260
  %arrayidx70 = getelementptr i8, i8* %39, i64 %idxprom69, !dbg !2260
  %41 = load i8, i8* %arrayidx70, align 1, !dbg !2260
  %conv71 = zext i8 %41 to i32, !dbg !2260
  %cmp72 = icmp eq i32 %conv71, 12, !dbg !2263
  br i1 %cmp72, label %land.lhs.true74, label %if.end83, !dbg !2264

land.lhs.true74:                                  ; preds = %land.lhs.true67
  %42 = load i8*, i8** %edid.addr, align 8, !dbg !2265
  %43 = load i32, i32* %i, align 4, !dbg !2266
  %add75 = add i32 %43, 3, !dbg !2267
  %idxprom76 = zext i32 %add75 to i64, !dbg !2265
  %arrayidx77 = getelementptr i8, i8* %42, i64 %idxprom76, !dbg !2265
  %44 = load i8, i8* %arrayidx77, align 1, !dbg !2265
  %conv78 = zext i8 %44 to i32, !dbg !2265
  %cmp79 = icmp eq i32 %conv78, 0, !dbg !2268
  br i1 %cmp79, label %if.then81, label %if.end83, !dbg !2269

if.then81:                                        ; preds = %land.lhs.true74
  %45 = load i32, i32* %i, align 4, !dbg !2270
  %add82 = add i32 %45, 4, !dbg !2271
  store i32 %add82, i32* %retval, align 4, !dbg !2272
  br label %return, !dbg !2272

if.end83:                                         ; preds = %land.lhs.true74, %land.lhs.true67, %land.lhs.true60, %land.lhs.true55, %land.lhs.true, %do.body
  %46 = load i8, i8* %len, align 1, !dbg !2273
  %conv84 = zext i8 %46 to i32, !dbg !2273
  %add85 = add i32 %conv84, 1, !dbg !2274
  %47 = load i32, i32* %i, align 4, !dbg !2275
  %add86 = add i32 %47, %add85, !dbg !2275
  store i32 %add86, i32* %i, align 4, !dbg !2275
  br label %do.cond, !dbg !2276

do.cond:                                          ; preds = %if.end83
  %48 = load i32, i32* %i, align 4, !dbg !2277
  %49 = load i32, i32* %end, align 4, !dbg !2278
  %cmp87 = icmp ult i32 %48, %49, !dbg !2279
  br i1 %cmp87, label %do.body, label %do.end, !dbg !2276, !llvm.loop !2280

do.end:                                           ; preds = %do.cond
  br label %if.end89, !dbg !2282

if.end89:                                         ; preds = %do.end, %if.end32
  br label %for.inc, !dbg !2283

for.inc:                                          ; preds = %if.end89, %if.then31, %if.then21
  %50 = load i32, i32* %block, align 4, !dbg !2284
  %inc = add i32 %50, 1, !dbg !2284
  store i32 %inc, i32* %block, align 4, !dbg !2284
  br label %for.cond, !dbg !2285, !llvm.loop !2286

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2288
  br label %return, !dbg !2288

return:                                           ; preds = %for.end, %if.then81, %if.then
  %51 = load i32, i32* %retval, align 4, !dbg !2289
  ret i32 %51, !dbg !2289
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @v4l2_set_edid_phys_addr(i8* %edid, i32 %size, i16 zeroext %phys_addr) #0 !dbg !2290 {
entry:
  %edid.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %phys_addr.addr = alloca i16, align 2
  %loc = alloca i32, align 4
  %sum = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %edid, i8** %edid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %edid.addr, metadata !2294, metadata !DIExpression()), !dbg !2295
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2296, metadata !DIExpression()), !dbg !2297
  store i16 %phys_addr, i16* %phys_addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %phys_addr.addr, metadata !2298, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.declare(metadata i32* %loc, metadata !2300, metadata !DIExpression()), !dbg !2301
  %0 = load i8*, i8** %edid.addr, align 8, !dbg !2302
  %1 = load i32, i32* %size.addr, align 4, !dbg !2303
  %call = call i32 @cec_get_edid_spa_location(i8* %0, i32 %1) #5, !dbg !2304
  store i32 %call, i32* %loc, align 4, !dbg !2301
  call void @llvm.dbg.declare(metadata i8* %sum, metadata !2305, metadata !DIExpression()), !dbg !2306
  store i8 0, i8* %sum, align 1, !dbg !2306
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2307, metadata !DIExpression()), !dbg !2308
  %2 = load i32, i32* %loc, align 4, !dbg !2309
  %cmp = icmp eq i32 %2, 0, !dbg !2311
  br i1 %cmp, label %if.then, label %if.end, !dbg !2312

if.then:                                          ; preds = %entry
  br label %return, !dbg !2313

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %phys_addr.addr, align 2, !dbg !2314
  %conv = zext i16 %3 to i32, !dbg !2314
  %shr = ashr i32 %conv, 8, !dbg !2315
  %conv1 = trunc i32 %shr to i8, !dbg !2314
  %4 = load i8*, i8** %edid.addr, align 8, !dbg !2316
  %5 = load i32, i32* %loc, align 4, !dbg !2317
  %idxprom = zext i32 %5 to i64, !dbg !2316
  %arrayidx = getelementptr i8, i8* %4, i64 %idxprom, !dbg !2316
  store i8 %conv1, i8* %arrayidx, align 1, !dbg !2318
  %6 = load i16, i16* %phys_addr.addr, align 2, !dbg !2319
  %conv2 = zext i16 %6 to i32, !dbg !2319
  %and = and i32 %conv2, 255, !dbg !2320
  %conv3 = trunc i32 %and to i8, !dbg !2319
  %7 = load i8*, i8** %edid.addr, align 8, !dbg !2321
  %8 = load i32, i32* %loc, align 4, !dbg !2322
  %add = add i32 %8, 1, !dbg !2323
  %idxprom4 = zext i32 %add to i64, !dbg !2321
  %arrayidx5 = getelementptr i8, i8* %7, i64 %idxprom4, !dbg !2321
  store i8 %conv3, i8* %arrayidx5, align 1, !dbg !2324
  %9 = load i32, i32* %loc, align 4, !dbg !2325
  %and6 = and i32 %9, -128, !dbg !2325
  store i32 %and6, i32* %loc, align 4, !dbg !2325
  %10 = load i32, i32* %loc, align 4, !dbg !2326
  store i32 %10, i32* %i, align 4, !dbg !2328
  br label %for.cond, !dbg !2329

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !dbg !2330
  %12 = load i32, i32* %loc, align 4, !dbg !2332
  %add7 = add i32 %12, 127, !dbg !2333
  %cmp8 = icmp ult i32 %11, %add7, !dbg !2334
  br i1 %cmp8, label %for.body, label %for.end, !dbg !2335

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %edid.addr, align 8, !dbg !2336
  %14 = load i32, i32* %i, align 4, !dbg !2337
  %idxprom10 = zext i32 %14 to i64, !dbg !2336
  %arrayidx11 = getelementptr i8, i8* %13, i64 %idxprom10, !dbg !2336
  %15 = load i8, i8* %arrayidx11, align 1, !dbg !2336
  %conv12 = zext i8 %15 to i32, !dbg !2336
  %16 = load i8, i8* %sum, align 1, !dbg !2338
  %conv13 = zext i8 %16 to i32, !dbg !2338
  %add14 = add i32 %conv13, %conv12, !dbg !2338
  %conv15 = trunc i32 %add14 to i8, !dbg !2338
  store i8 %conv15, i8* %sum, align 1, !dbg !2338
  br label %for.inc, !dbg !2339

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !2340
  %inc = add i32 %17, 1, !dbg !2340
  store i32 %inc, i32* %i, align 4, !dbg !2340
  br label %for.cond, !dbg !2341, !llvm.loop !2342

for.end:                                          ; preds = %for.cond
  %18 = load i8, i8* %sum, align 1, !dbg !2344
  %conv16 = zext i8 %18 to i32, !dbg !2344
  %sub = sub i32 256, %conv16, !dbg !2345
  %conv17 = trunc i32 %sub to i8, !dbg !2346
  %19 = load i8*, i8** %edid.addr, align 8, !dbg !2347
  %20 = load i32, i32* %i, align 4, !dbg !2348
  %idxprom18 = zext i32 %20 to i64, !dbg !2347
  %arrayidx19 = getelementptr i8, i8* %19, i64 %idxprom18, !dbg !2347
  store i8 %conv17, i8* %arrayidx19, align 1, !dbg !2349
  br label %return, !dbg !2350

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !2350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i16 @v4l2_phys_addr_for_input(i16 zeroext %phys_addr, i8 zeroext %input) #0 !dbg !2351 {
entry:
  %retval = alloca i16, align 2
  %phys_addr.addr = alloca i16, align 2
  %input.addr = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i16 %phys_addr, i16* %phys_addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %phys_addr.addr, metadata !2354, metadata !DIExpression()), !dbg !2355
  store i8 %input, i8* %input.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %input.addr, metadata !2356, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2358, metadata !DIExpression()), !dbg !2361
  %0 = load i8, i8* %input.addr, align 1, !dbg !2361
  %conv = zext i8 %0 to i32, !dbg !2361
  %cmp = icmp eq i32 %conv, 0, !dbg !2361
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2361

lor.rhs:                                          ; preds = %entry
  %1 = load i8, i8* %input.addr, align 1, !dbg !2361
  %conv2 = zext i8 %1 to i32, !dbg !2361
  %cmp3 = icmp sgt i32 %conv2, 15, !dbg !2361
  br label %lor.end, !dbg !2361

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lnot = xor i1 %2, true, !dbg !2361
  %lnot5 = xor i1 %lnot, true, !dbg !2361
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !2361
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2361
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2362
  %tobool = icmp ne i32 %3, 0, !dbg !2362
  %lnot6 = xor i1 %tobool, true, !dbg !2362
  %lnot8 = xor i1 %lnot6, true, !dbg !2362
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2362
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !2362
  %tobool11 = icmp ne i64 %conv10, 0, !dbg !2362
  br i1 %tobool11, label %if.then, label %if.end, !dbg !2361

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !2362

do.body:                                          ; preds = %if.then
  br label %do.body12, !dbg !2364

do.body12:                                        ; preds = %do.body
  br label %do.end, !dbg !2366

do.end:                                           ; preds = %do.body12
  br label %do.body13, !dbg !2364

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0), i32 1063, i32 2305, i64 12) #7, !dbg !2368, !srcloc !2370
  br label %do.end14, !dbg !2368

do.end14:                                         ; preds = %do.body13
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 234) #7, !dbg !2371, !srcloc !2373
  br label %do.body15, !dbg !2364

do.body15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !2374

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !2364

do.end17:                                         ; preds = %do.end16
  br label %if.end, !dbg !2364

if.end:                                           ; preds = %do.end17, %lor.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2361
  %tobool18 = icmp ne i32 %4, 0, !dbg !2361
  %lnot19 = xor i1 %tobool18, true, !dbg !2361
  %lnot21 = xor i1 %lnot19, true, !dbg !2361
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !2361
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !2361
  store i64 %conv23, i64* %tmp, align 8, !dbg !2362
  %5 = load i64, i64* %tmp, align 8, !dbg !2361
  %tobool24 = icmp ne i64 %5, 0, !dbg !2376
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !2377

if.then25:                                        ; preds = %if.end
  store i16 -1, i16* %retval, align 2, !dbg !2378
  br label %return, !dbg !2378

if.end26:                                         ; preds = %if.end
  %6 = load i16, i16* %phys_addr.addr, align 2, !dbg !2379
  %conv27 = zext i16 %6 to i32, !dbg !2379
  %cmp28 = icmp eq i32 %conv27, 0, !dbg !2381
  br i1 %cmp28, label %if.then30, label %if.end33, !dbg !2382

if.then30:                                        ; preds = %if.end26
  %7 = load i8, i8* %input.addr, align 1, !dbg !2383
  %conv31 = zext i8 %7 to i32, !dbg !2383
  %shl = shl i32 %conv31, 12, !dbg !2384
  %conv32 = trunc i32 %shl to i16, !dbg !2383
  store i16 %conv32, i16* %retval, align 2, !dbg !2385
  br label %return, !dbg !2385

if.end33:                                         ; preds = %if.end26
  %8 = load i16, i16* %phys_addr.addr, align 2, !dbg !2386
  %conv34 = zext i16 %8 to i32, !dbg !2386
  %and = and i32 %conv34, 4095, !dbg !2388
  %cmp35 = icmp eq i32 %and, 0, !dbg !2389
  br i1 %cmp35, label %if.then37, label %if.end42, !dbg !2390

if.then37:                                        ; preds = %if.end33
  %9 = load i16, i16* %phys_addr.addr, align 2, !dbg !2391
  %conv38 = zext i16 %9 to i32, !dbg !2391
  %10 = load i8, i8* %input.addr, align 1, !dbg !2392
  %conv39 = zext i8 %10 to i32, !dbg !2392
  %shl40 = shl i32 %conv39, 8, !dbg !2393
  %or = or i32 %conv38, %shl40, !dbg !2394
  %conv41 = trunc i32 %or to i16, !dbg !2391
  store i16 %conv41, i16* %retval, align 2, !dbg !2395
  br label %return, !dbg !2395

if.end42:                                         ; preds = %if.end33
  %11 = load i16, i16* %phys_addr.addr, align 2, !dbg !2396
  %conv43 = zext i16 %11 to i32, !dbg !2396
  %and44 = and i32 %conv43, 255, !dbg !2398
  %cmp45 = icmp eq i32 %and44, 0, !dbg !2399
  br i1 %cmp45, label %if.then47, label %if.end53, !dbg !2400

if.then47:                                        ; preds = %if.end42
  %12 = load i16, i16* %phys_addr.addr, align 2, !dbg !2401
  %conv48 = zext i16 %12 to i32, !dbg !2401
  %13 = load i8, i8* %input.addr, align 1, !dbg !2402
  %conv49 = zext i8 %13 to i32, !dbg !2402
  %shl50 = shl i32 %conv49, 4, !dbg !2403
  %or51 = or i32 %conv48, %shl50, !dbg !2404
  %conv52 = trunc i32 %or51 to i16, !dbg !2401
  store i16 %conv52, i16* %retval, align 2, !dbg !2405
  br label %return, !dbg !2405

if.end53:                                         ; preds = %if.end42
  %14 = load i16, i16* %phys_addr.addr, align 2, !dbg !2406
  %conv54 = zext i16 %14 to i32, !dbg !2406
  %and55 = and i32 %conv54, 15, !dbg !2408
  %cmp56 = icmp eq i32 %and55, 0, !dbg !2409
  br i1 %cmp56, label %if.then58, label %if.end63, !dbg !2410

if.then58:                                        ; preds = %if.end53
  %15 = load i16, i16* %phys_addr.addr, align 2, !dbg !2411
  %conv59 = zext i16 %15 to i32, !dbg !2411
  %16 = load i8, i8* %input.addr, align 1, !dbg !2412
  %conv60 = zext i8 %16 to i32, !dbg !2412
  %or61 = or i32 %conv59, %conv60, !dbg !2413
  %conv62 = trunc i32 %or61 to i16, !dbg !2411
  store i16 %conv62, i16* %retval, align 2, !dbg !2414
  br label %return, !dbg !2414

if.end63:                                         ; preds = %if.end53
  store i16 -1, i16* %retval, align 2, !dbg !2415
  br label %return, !dbg !2415

return:                                           ; preds = %if.end63, %if.then58, %if.then47, %if.then37, %if.then30, %if.then25
  %17 = load i16, i16* %retval, align 2, !dbg !2416
  ret i16 %17, !dbg !2416
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @v4l2_phys_addr_validate(i16 zeroext %phys_addr, i16* %parent, i16* %port) #0 !dbg !2417 {
entry:
  %retval = alloca i32, align 4
  %phys_addr.addr = alloca i16, align 2
  %parent.addr = alloca i16*, align 8
  %port.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i16 %phys_addr, i16* %phys_addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %phys_addr.addr, metadata !2421, metadata !DIExpression()), !dbg !2422
  store i16* %parent, i16** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %parent.addr, metadata !2423, metadata !DIExpression()), !dbg !2424
  store i16* %port, i16** %port.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %port.addr, metadata !2425, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2427, metadata !DIExpression()), !dbg !2428
  %0 = load i16*, i16** %parent.addr, align 8, !dbg !2429
  %tobool = icmp ne i16* %0, null, !dbg !2429
  br i1 %tobool, label %if.then, label %if.end, !dbg !2431

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %phys_addr.addr, align 2, !dbg !2432
  %2 = load i16*, i16** %parent.addr, align 8, !dbg !2433
  store i16 %1, i16* %2, align 2, !dbg !2434
  br label %if.end, !dbg !2435

if.end:                                           ; preds = %if.then, %entry
  %3 = load i16*, i16** %port.addr, align 8, !dbg !2436
  %tobool1 = icmp ne i16* %3, null, !dbg !2436
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2438

if.then2:                                         ; preds = %if.end
  %4 = load i16*, i16** %port.addr, align 8, !dbg !2439
  store i16 0, i16* %4, align 2, !dbg !2440
  br label %if.end3, !dbg !2441

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i16, i16* %phys_addr.addr, align 2, !dbg !2442
  %conv = zext i16 %5 to i32, !dbg !2442
  %cmp = icmp eq i32 %conv, 65535, !dbg !2444
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2445

if.then5:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !2446
  br label %return, !dbg !2446

if.end6:                                          ; preds = %if.end3
  store i32 0, i32* %i, align 4, !dbg !2447
  br label %for.cond, !dbg !2449

for.cond:                                         ; preds = %for.inc, %if.end6
  %6 = load i32, i32* %i, align 4, !dbg !2450
  %cmp7 = icmp slt i32 %6, 16, !dbg !2452
  br i1 %cmp7, label %for.body, label %for.end, !dbg !2453

for.body:                                         ; preds = %for.cond
  %7 = load i16, i16* %phys_addr.addr, align 2, !dbg !2454
  %conv9 = zext i16 %7 to i32, !dbg !2454
  %8 = load i32, i32* %i, align 4, !dbg !2456
  %shl = shl i32 15, %8, !dbg !2457
  %and = and i32 %conv9, %shl, !dbg !2458
  %tobool10 = icmp ne i32 %and, 0, !dbg !2458
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2459

if.then11:                                        ; preds = %for.body
  br label %for.end, !dbg !2460

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !2461

for.inc:                                          ; preds = %if.end12
  %9 = load i32, i32* %i, align 4, !dbg !2462
  %add = add i32 %9, 4, !dbg !2462
  store i32 %add, i32* %i, align 4, !dbg !2462
  br label %for.cond, !dbg !2463, !llvm.loop !2464

for.end:                                          ; preds = %if.then11, %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !2466
  %cmp13 = icmp eq i32 %10, 16, !dbg !2468
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !2469

if.then15:                                        ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !2470
  br label %return, !dbg !2470

if.end16:                                         ; preds = %for.end
  %11 = load i16*, i16** %parent.addr, align 8, !dbg !2471
  %tobool17 = icmp ne i16* %11, null, !dbg !2471
  br i1 %tobool17, label %if.then18, label %if.end23, !dbg !2473

if.then18:                                        ; preds = %if.end16
  %12 = load i16, i16* %phys_addr.addr, align 2, !dbg !2474
  %conv19 = zext i16 %12 to i32, !dbg !2474
  %13 = load i32, i32* %i, align 4, !dbg !2475
  %shl20 = shl i32 65520, %13, !dbg !2476
  %and21 = and i32 %conv19, %shl20, !dbg !2477
  %conv22 = trunc i32 %and21 to i16, !dbg !2474
  %14 = load i16*, i16** %parent.addr, align 8, !dbg !2478
  store i16 %conv22, i16* %14, align 2, !dbg !2479
  br label %if.end23, !dbg !2480

if.end23:                                         ; preds = %if.then18, %if.end16
  %15 = load i16*, i16** %port.addr, align 8, !dbg !2481
  %tobool24 = icmp ne i16* %15, null, !dbg !2481
  br i1 %tobool24, label %if.then25, label %if.end29, !dbg !2483

if.then25:                                        ; preds = %if.end23
  %16 = load i16, i16* %phys_addr.addr, align 2, !dbg !2484
  %conv26 = zext i16 %16 to i32, !dbg !2484
  %17 = load i32, i32* %i, align 4, !dbg !2485
  %shr = ashr i32 %conv26, %17, !dbg !2486
  %and27 = and i32 %shr, 15, !dbg !2487
  %conv28 = trunc i32 %and27 to i16, !dbg !2488
  %18 = load i16*, i16** %port.addr, align 8, !dbg !2489
  store i16 %conv28, i16* %18, align 2, !dbg !2490
  br label %if.end29, !dbg !2491

if.end29:                                         ; preds = %if.then25, %if.end23
  %19 = load i32, i32* %i, align 4, !dbg !2492
  %add30 = add i32 %19, 4, !dbg !2492
  store i32 %add30, i32* %i, align 4, !dbg !2492
  br label %for.cond31, !dbg !2494

for.cond31:                                       ; preds = %for.inc42, %if.end29
  %20 = load i32, i32* %i, align 4, !dbg !2495
  %cmp32 = icmp slt i32 %20, 16, !dbg !2497
  br i1 %cmp32, label %for.body34, label %for.end44, !dbg !2498

for.body34:                                       ; preds = %for.cond31
  %21 = load i16, i16* %phys_addr.addr, align 2, !dbg !2499
  %conv35 = zext i16 %21 to i32, !dbg !2499
  %22 = load i32, i32* %i, align 4, !dbg !2501
  %shl36 = shl i32 15, %22, !dbg !2502
  %and37 = and i32 %conv35, %shl36, !dbg !2503
  %cmp38 = icmp eq i32 %and37, 0, !dbg !2504
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !2505

if.then40:                                        ; preds = %for.body34
  store i32 -22, i32* %retval, align 4, !dbg !2506
  br label %return, !dbg !2506

if.end41:                                         ; preds = %for.body34
  br label %for.inc42, !dbg !2507

for.inc42:                                        ; preds = %if.end41
  %23 = load i32, i32* %i, align 4, !dbg !2508
  %add43 = add i32 %23, 4, !dbg !2508
  store i32 %add43, i32* %i, align 4, !dbg !2508
  br label %for.cond31, !dbg !2509, !llvm.loop !2510

for.end44:                                        ; preds = %for.cond31
  store i32 0, i32* %retval, align 4, !dbg !2512
  br label %return, !dbg !2512

return:                                           ; preds = %for.end44, %if.then40, %if.then15, %if.then5
  %24 = load i32, i32* %retval, align 4, !dbg !2513
  ret i32 %24, !dbg !2513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @div_u64_rem(i64 %dividend, i32 %divisor, i32* %remainder) #0 !dbg !2514 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca i32*, align 8
  store i64 %dividend, i64* %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %dividend.addr, metadata !2518, metadata !DIExpression()), !dbg !2519
  store i32 %divisor, i32* %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %divisor.addr, metadata !2520, metadata !DIExpression()), !dbg !2521
  store i32* %remainder, i32** %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %remainder.addr, metadata !2522, metadata !DIExpression()), !dbg !2523
  %0 = load i64, i64* %dividend.addr, align 8, !dbg !2524
  %1 = load i32, i32* %divisor.addr, align 4, !dbg !2525
  %conv = zext i32 %1 to i64, !dbg !2525
  %rem = urem i64 %0, %conv, !dbg !2526
  %conv1 = trunc i64 %rem to i32, !dbg !2524
  %2 = load i32*, i32** %remainder.addr, align 8, !dbg !2527
  store i32 %conv1, i32* %2, align 4, !dbg !2528
  %3 = load i64, i64* %dividend.addr, align 8, !dbg !2529
  %4 = load i32, i32* %divisor.addr, align 4, !dbg !2530
  %conv2 = zext i32 %4 to i64, !dbg !2530
  %div = udiv i64 %3, %conv2, !dbg !2531
  ret i64 %div, !dbg !2532
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author230", scope: !2, file: !3, line: 20, type: !217, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146, globals: !153, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/v4l2-core/v4l2-dv-timings.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !27, !37, !42, !52, !60, !70, !76, !82, !90, !102, !112, !118, !124, !128, !134}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_colorspace", file: !12, line: 195, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/uapi/linux/videodev2.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!14 = !DIEnumerator(name: "V4L2_COLORSPACE_DEFAULT", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "V4L2_COLORSPACE_SMPTE170M", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "V4L2_COLORSPACE_SMPTE240M", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "V4L2_COLORSPACE_REC709", value: 3, isUnsigned: true)
!18 = !DIEnumerator(name: "V4L2_COLORSPACE_BT878", value: 4, isUnsigned: true)
!19 = !DIEnumerator(name: "V4L2_COLORSPACE_470_SYSTEM_M", value: 5, isUnsigned: true)
!20 = !DIEnumerator(name: "V4L2_COLORSPACE_470_SYSTEM_BG", value: 6, isUnsigned: true)
!21 = !DIEnumerator(name: "V4L2_COLORSPACE_JPEG", value: 7, isUnsigned: true)
!22 = !DIEnumerator(name: "V4L2_COLORSPACE_SRGB", value: 8, isUnsigned: true)
!23 = !DIEnumerator(name: "V4L2_COLORSPACE_OPRGB", value: 9, isUnsigned: true)
!24 = !DIEnumerator(name: "V4L2_COLORSPACE_BT2020", value: 10, isUnsigned: true)
!25 = !DIEnumerator(name: "V4L2_COLORSPACE_RAW", value: 11, isUnsigned: true)
!26 = !DIEnumerator(name: "V4L2_COLORSPACE_DCI_P3", value: 12, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_ycbcr_encoding", file: !12, line: 302, baseType: !7, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36}
!29 = !DIEnumerator(name: "V4L2_YCBCR_ENC_DEFAULT", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "V4L2_YCBCR_ENC_601", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "V4L2_YCBCR_ENC_709", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "V4L2_YCBCR_ENC_XV601", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "V4L2_YCBCR_ENC_XV709", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "V4L2_YCBCR_ENC_BT2020", value: 6, isUnsigned: true)
!35 = !DIEnumerator(name: "V4L2_YCBCR_ENC_BT2020_CONST_LUM", value: 7, isUnsigned: true)
!36 = !DIEnumerator(name: "V4L2_YCBCR_ENC_SMPTE240M", value: 8, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_quantization", file: !12, line: 374, baseType: !7, size: 32, elements: !38)
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "V4L2_QUANTIZATION_DEFAULT", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "V4L2_QUANTIZATION_FULL_RANGE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "V4L2_QUANTIZATION_LIM_RANGE", value: 2, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_xfer_func", file: !12, line: 261, baseType: !7, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51}
!44 = !DIEnumerator(name: "V4L2_XFER_FUNC_DEFAULT", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "V4L2_XFER_FUNC_709", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "V4L2_XFER_FUNC_SRGB", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "V4L2_XFER_FUNC_OPRGB", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "V4L2_XFER_FUNC_SMPTE240M", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "V4L2_XFER_FUNC_NONE", value: 5, isUnsigned: true)
!50 = !DIEnumerator(name: "V4L2_XFER_FUNC_DCI_P3", value: 6, isUnsigned: true)
!51 = !DIEnumerator(name: "V4L2_XFER_FUNC_SMPTE2084", value: 7, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_infoframe_type", file: !53, line: 45, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/lizy2001/genbc/linux")
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIEnumerator(name: "HDMI_INFOFRAME_TYPE_VENDOR", value: 129, isUnsigned: true)
!56 = !DIEnumerator(name: "HDMI_INFOFRAME_TYPE_AVI", value: 130, isUnsigned: true)
!57 = !DIEnumerator(name: "HDMI_INFOFRAME_TYPE_SPD", value: 131, isUnsigned: true)
!58 = !DIEnumerator(name: "HDMI_INFOFRAME_TYPE_AUDIO", value: 132, isUnsigned: true)
!59 = !DIEnumerator(name: "HDMI_INFOFRAME_TYPE_DRM", value: 135, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_colorspace", file: !53, line: 71, baseType: !7, size: 32, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69}
!62 = !DIEnumerator(name: "HDMI_COLORSPACE_RGB", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "HDMI_COLORSPACE_YUV422", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "HDMI_COLORSPACE_YUV444", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "HDMI_COLORSPACE_YUV420", value: 3, isUnsigned: true)
!66 = !DIEnumerator(name: "HDMI_COLORSPACE_RESERVED4", value: 4, isUnsigned: true)
!67 = !DIEnumerator(name: "HDMI_COLORSPACE_RESERVED5", value: 5, isUnsigned: true)
!68 = !DIEnumerator(name: "HDMI_COLORSPACE_RESERVED6", value: 6, isUnsigned: true)
!69 = !DIEnumerator(name: "HDMI_COLORSPACE_IDO_DEFINED", value: 7, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_scan_mode", file: !53, line: 82, baseType: !7, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "HDMI_SCAN_MODE_NONE", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "HDMI_SCAN_MODE_OVERSCAN", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "HDMI_SCAN_MODE_UNDERSCAN", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "HDMI_SCAN_MODE_RESERVED", value: 3, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_colorimetry", file: !53, line: 89, baseType: !7, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "HDMI_COLORIMETRY_NONE", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "HDMI_COLORIMETRY_ITU_601", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "HDMI_COLORIMETRY_ITU_709", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "HDMI_COLORIMETRY_EXTENDED", value: 3, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !53, line: 96, baseType: !7, size: 32, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89}
!84 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2, isUnsigned: true)
!87 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3, isUnsigned: true)
!88 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4, isUnsigned: true)
!89 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5, isUnsigned: true)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_active_aspect", file: !53, line: 105, baseType: !7, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!92 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_16_9_TOP", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_14_9_TOP", value: 3, isUnsigned: true)
!94 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_16_9_CENTER", value: 4, isUnsigned: true)
!95 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_PICTURE", value: 8, isUnsigned: true)
!96 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_4_3", value: 9, isUnsigned: true)
!97 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_16_9", value: 10, isUnsigned: true)
!98 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_14_9", value: 11, isUnsigned: true)
!99 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_4_3_SP_14_9", value: 13, isUnsigned: true)
!100 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_16_9_SP_14_9", value: 14, isUnsigned: true)
!101 = !DIEnumerator(name: "HDMI_ACTIVE_ASPECT_16_9_SP_4_3", value: 15, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_extended_colorimetry", file: !53, line: 118, baseType: !7, size: 32, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111}
!104 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_XV_YCC_601", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_XV_YCC_709", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_S_YCC_601", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_OPYCC_601", value: 3, isUnsigned: true)
!108 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_OPRGB", value: 4, isUnsigned: true)
!109 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_BT2020_CONST_LUM", value: 5, isUnsigned: true)
!110 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_BT2020", value: 6, isUnsigned: true)
!111 = !DIEnumerator(name: "HDMI_EXTENDED_COLORIMETRY_RESERVED", value: 7, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_quantization_range", file: !53, line: 131, baseType: !7, size: 32, elements: !113)
!113 = !{!114, !115, !116, !117}
!114 = !DIEnumerator(name: "HDMI_QUANTIZATION_RANGE_DEFAULT", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "HDMI_QUANTIZATION_RANGE_LIMITED", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "HDMI_QUANTIZATION_RANGE_FULL", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "HDMI_QUANTIZATION_RANGE_RESERVED", value: 3, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_nups", file: !53, line: 139, baseType: !7, size: 32, elements: !119)
!119 = !{!120, !121, !122, !123}
!120 = !DIEnumerator(name: "HDMI_NUPS_UNKNOWN", value: 0, isUnsigned: true)
!121 = !DIEnumerator(name: "HDMI_NUPS_HORIZONTAL", value: 1, isUnsigned: true)
!122 = !DIEnumerator(name: "HDMI_NUPS_VERTICAL", value: 2, isUnsigned: true)
!123 = !DIEnumerator(name: "HDMI_NUPS_BOTH", value: 3, isUnsigned: true)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_ycc_quantization_range", file: !53, line: 146, baseType: !7, size: 32, elements: !125)
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "HDMI_YCC_QUANTIZATION_RANGE_LIMITED", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "HDMI_YCC_QUANTIZATION_RANGE_FULL", value: 1, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_content_type", file: !53, line: 151, baseType: !7, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "HDMI_CONTENT_TYPE_GRAPHICS", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "HDMI_CONTENT_TYPE_PHOTO", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "HDMI_CONTENT_TYPE_CINEMA", value: 2, isUnsigned: true)
!133 = !DIEnumerator(name: "HDMI_CONTENT_TYPE_GAME", value: 3, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_3d_structure", file: !53, line: 341, baseType: !135, size: 32, elements: !136)
!135 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145}
!137 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_INVALID", value: -1)
!138 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_FRAME_PACKING", value: 0)
!139 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_FIELD_ALTERNATIVE", value: 1)
!140 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_LINE_ALTERNATIVE", value: 2)
!141 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_SIDE_BY_SIDE_FULL", value: 3)
!142 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_L_DEPTH", value: 4)
!143 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_L_DEPTH_GFX_GFX_DEPTH", value: 5)
!144 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_TOP_AND_BOTTOM", value: 6)
!145 = !DIEnumerator(name: "HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF", value: 8)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !149, line: 23, baseType: !150)
!149 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !151, line: 31, baseType: !152)
!151 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!152 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!153 = !{!0, !154, !161, !163, !168}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description231", scope: !2, file: !3, line: 21, type: !156, isLocal: true, isDefinition: true, align: 8)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 488, elements: !159)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!159 = !{!160}
!160 = !DISubrange(count: 61)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file232", scope: !2, file: !3, line: 22, type: !156, isLocal: true, isDefinition: true, align: 8)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license233", scope: !2, file: !3, line: 22, type: !165, isLocal: true, isDefinition: true, align: 8)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 224, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 28)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "v4l2_dv_timings_presets", scope: !2, file: !3, line: 24, type: !170, isLocal: false, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 118272, elements: !215)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_dv_timings", file: !12, line: 1563, size: 1056, elements: !173)
!173 = !{!174, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !172, file: !12, line: 1564, baseType: !175, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !151, line: 27, baseType: !7)
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !12, line: 1565, baseType: !177, size: 1024, offset: 32)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !12, line: 1565, size: 1024, elements: !178)
!178 = !{!179, !211}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "bt", scope: !177, file: !12, line: 1566, baseType: !180, size: 992)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_bt_timings", file: !12, line: 1440, size: 992, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !203, !206, !207}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !180, file: !12, line: 1441, baseType: !175, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !180, file: !12, line: 1442, baseType: !175, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !180, file: !12, line: 1443, baseType: !175, size: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "polarities", scope: !180, file: !12, line: 1444, baseType: !175, size: 32, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pixelclock", scope: !180, file: !12, line: 1445, baseType: !150, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "hfrontporch", scope: !180, file: !12, line: 1446, baseType: !175, size: 32, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "hsync", scope: !180, file: !12, line: 1447, baseType: !175, size: 32, offset: 224)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "hbackporch", scope: !180, file: !12, line: 1448, baseType: !175, size: 32, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "vfrontporch", scope: !180, file: !12, line: 1449, baseType: !175, size: 32, offset: 288)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "vsync", scope: !180, file: !12, line: 1450, baseType: !175, size: 32, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "vbackporch", scope: !180, file: !12, line: 1451, baseType: !175, size: 32, offset: 352)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "il_vfrontporch", scope: !180, file: !12, line: 1452, baseType: !175, size: 32, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "il_vsync", scope: !180, file: !12, line: 1453, baseType: !175, size: 32, offset: 416)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "il_vbackporch", scope: !180, file: !12, line: 1454, baseType: !175, size: 32, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "standards", scope: !180, file: !12, line: 1455, baseType: !175, size: 32, offset: 480)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !180, file: !12, line: 1456, baseType: !175, size: 32, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect", scope: !180, file: !12, line: 1457, baseType: !199, size: 64, offset: 544)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_fract", file: !12, line: 421, size: 64, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "numerator", scope: !199, file: !12, line: 422, baseType: !175, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "denominator", scope: !199, file: !12, line: 423, baseType: !175, size: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "cea861_vic", scope: !180, file: !12, line: 1458, baseType: !204, size: 8, offset: 608)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !151, line: 21, baseType: !205)
!205 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_vic", scope: !180, file: !12, line: 1459, baseType: !204, size: 8, offset: 616)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !180, file: !12, line: 1460, baseType: !208, size: 368, offset: 624)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 368, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 46)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !177, file: !12, line: 1567, baseType: !212, size: 1024)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 1024, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 32)
!215 = !{!216}
!216 = !DISubrange(count: 112)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 288, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 36)
!220 = !{i32 7, !"Dwarf Version", i32 4}
!221 = !{i32 2, !"Debug Info Version", i32 3}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"Code Model", i32 2}
!224 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!225 = distinct !DISubprogram(name: "v4l2_valid_dv_timings", scope: !3, file: !3, line: 140, type: !226, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !231, !232, !261, !147}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !229, line: 30, baseType: !230)
!229 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!230 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_dv_timings_cap", file: !12, line: 1627, size: 1152, elements: !235)
!235 = !{!236, !237, !238, !242}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !234, file: !12, line: 1628, baseType: !175, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !234, file: !12, line: 1629, baseType: !175, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !234, file: !12, line: 1630, baseType: !239, size: 64, offset: 64)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 64, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 2)
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !12, line: 1631, baseType: !243, size: 1024, offset: 128)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !12, line: 1631, size: 1024, elements: !244)
!244 = !{!245, !260}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "bt", scope: !243, file: !12, line: 1632, baseType: !246, size: 832)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_bt_timings_cap", file: !12, line: 1600, size: 832, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !246, file: !12, line: 1601, baseType: !175, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !246, file: !12, line: 1602, baseType: !175, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !246, file: !12, line: 1603, baseType: !175, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !246, file: !12, line: 1604, baseType: !175, size: 32, offset: 96)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "min_pixelclock", scope: !246, file: !12, line: 1605, baseType: !150, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "max_pixelclock", scope: !246, file: !12, line: 1606, baseType: !150, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "standards", scope: !246, file: !12, line: 1607, baseType: !175, size: 32, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !246, file: !12, line: 1608, baseType: !175, size: 32, offset: 288)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !246, file: !12, line: 1609, baseType: !257, size: 512, offset: 320)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 512, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 16)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !243, file: !12, line: 1633, baseType: !212, size: 1024)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "v4l2_check_dv_timings_fnc", file: !263, line: 37, baseType: !264)
!263 = !DIFile(filename: "./include/media/v4l2-dv-timings.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DISubroutineType(types: !265)
!265 = !{!228, !231, !147}
!266 = !{}
!267 = !DILocalVariable(name: "t", arg: 1, scope: !225, file: !3, line: 140, type: !231)
!268 = !DILocation(line: 140, column: 58, scope: !225)
!269 = !DILocalVariable(name: "dvcap", arg: 2, scope: !225, file: !3, line: 141, type: !232)
!270 = !DILocation(line: 141, column: 41, scope: !225)
!271 = !DILocalVariable(name: "fnc", arg: 3, scope: !225, file: !3, line: 142, type: !261)
!272 = !DILocation(line: 142, column: 33, scope: !225)
!273 = !DILocalVariable(name: "fnc_handle", arg: 4, scope: !225, file: !3, line: 143, type: !147)
!274 = !DILocation(line: 143, column: 13, scope: !225)
!275 = !DILocalVariable(name: "bt", scope: !225, file: !3, line: 145, type: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!278 = !DILocation(line: 145, column: 32, scope: !225)
!279 = !DILocation(line: 145, column: 38, scope: !225)
!280 = !DILocation(line: 145, column: 41, scope: !225)
!281 = !DILocalVariable(name: "cap", scope: !225, file: !3, line: 146, type: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!284 = !DILocation(line: 146, column: 36, scope: !225)
!285 = !DILocation(line: 146, column: 43, scope: !225)
!286 = !DILocation(line: 146, column: 50, scope: !225)
!287 = !DILocalVariable(name: "caps", scope: !225, file: !3, line: 147, type: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !149, line: 21, baseType: !175)
!289 = !DILocation(line: 147, column: 6, scope: !225)
!290 = !DILocation(line: 147, column: 13, scope: !225)
!291 = !DILocation(line: 147, column: 18, scope: !225)
!292 = !DILocation(line: 149, column: 6, scope: !293)
!293 = distinct !DILexicalBlock(scope: !225, file: !3, line: 149, column: 6)
!294 = !DILocation(line: 149, column: 9, scope: !293)
!295 = !DILocation(line: 149, column: 14, scope: !293)
!296 = !DILocation(line: 149, column: 6, scope: !225)
!297 = !DILocation(line: 150, column: 3, scope: !293)
!298 = !DILocation(line: 151, column: 6, scope: !299)
!299 = distinct !DILexicalBlock(scope: !225, file: !3, line: 151, column: 6)
!300 = !DILocation(line: 151, column: 9, scope: !299)
!301 = !DILocation(line: 151, column: 17, scope: !299)
!302 = !DILocation(line: 151, column: 24, scope: !299)
!303 = !DILocation(line: 151, column: 14, scope: !299)
!304 = !DILocation(line: 151, column: 29, scope: !299)
!305 = !DILocation(line: 152, column: 6, scope: !299)
!306 = !DILocation(line: 152, column: 10, scope: !299)
!307 = !DILocation(line: 152, column: 19, scope: !299)
!308 = !DILocation(line: 152, column: 24, scope: !299)
!309 = !DILocation(line: 152, column: 17, scope: !299)
!310 = !DILocation(line: 152, column: 35, scope: !299)
!311 = !DILocation(line: 153, column: 6, scope: !299)
!312 = !DILocation(line: 153, column: 10, scope: !299)
!313 = !DILocation(line: 153, column: 19, scope: !299)
!314 = !DILocation(line: 153, column: 24, scope: !299)
!315 = !DILocation(line: 153, column: 17, scope: !299)
!316 = !DILocation(line: 153, column: 35, scope: !299)
!317 = !DILocation(line: 154, column: 6, scope: !299)
!318 = !DILocation(line: 154, column: 10, scope: !299)
!319 = !DILocation(line: 154, column: 18, scope: !299)
!320 = !DILocation(line: 154, column: 23, scope: !299)
!321 = !DILocation(line: 154, column: 16, scope: !299)
!322 = !DILocation(line: 154, column: 33, scope: !299)
!323 = !DILocation(line: 155, column: 6, scope: !299)
!324 = !DILocation(line: 155, column: 10, scope: !299)
!325 = !DILocation(line: 155, column: 18, scope: !299)
!326 = !DILocation(line: 155, column: 23, scope: !299)
!327 = !DILocation(line: 155, column: 16, scope: !299)
!328 = !DILocation(line: 155, column: 33, scope: !299)
!329 = !DILocation(line: 156, column: 6, scope: !299)
!330 = !DILocation(line: 156, column: 10, scope: !299)
!331 = !DILocation(line: 156, column: 23, scope: !299)
!332 = !DILocation(line: 156, column: 28, scope: !299)
!333 = !DILocation(line: 156, column: 21, scope: !299)
!334 = !DILocation(line: 156, column: 43, scope: !299)
!335 = !DILocation(line: 157, column: 6, scope: !299)
!336 = !DILocation(line: 157, column: 10, scope: !299)
!337 = !DILocation(line: 157, column: 23, scope: !299)
!338 = !DILocation(line: 157, column: 28, scope: !299)
!339 = !DILocation(line: 157, column: 21, scope: !299)
!340 = !DILocation(line: 157, column: 43, scope: !299)
!341 = !DILocation(line: 158, column: 9, scope: !299)
!342 = !DILocation(line: 158, column: 14, scope: !299)
!343 = !DILocation(line: 158, column: 39, scope: !299)
!344 = !DILocation(line: 159, column: 7, scope: !299)
!345 = !DILocation(line: 159, column: 12, scope: !299)
!346 = !DILocation(line: 159, column: 22, scope: !299)
!347 = !DILocation(line: 159, column: 25, scope: !299)
!348 = !DILocation(line: 159, column: 29, scope: !299)
!349 = !DILocation(line: 159, column: 39, scope: !299)
!350 = !DILocation(line: 160, column: 9, scope: !299)
!351 = !DILocation(line: 160, column: 13, scope: !299)
!352 = !DILocation(line: 160, column: 25, scope: !299)
!353 = !DILocation(line: 160, column: 30, scope: !299)
!354 = !DILocation(line: 160, column: 23, scope: !299)
!355 = !DILocation(line: 160, column: 42, scope: !299)
!356 = !DILocation(line: 161, column: 7, scope: !299)
!357 = !DILocation(line: 161, column: 11, scope: !299)
!358 = !DILocation(line: 161, column: 22, scope: !299)
!359 = !DILocation(line: 161, column: 27, scope: !299)
!360 = !DILocation(line: 161, column: 32, scope: !299)
!361 = !DILocation(line: 161, column: 62, scope: !299)
!362 = !DILocation(line: 162, column: 8, scope: !299)
!363 = !DILocation(line: 162, column: 12, scope: !299)
!364 = !DILocation(line: 162, column: 23, scope: !299)
!365 = !DILocation(line: 162, column: 28, scope: !299)
!366 = !DILocation(line: 162, column: 33, scope: !299)
!367 = !DILocation(line: 151, column: 6, scope: !225)
!368 = !DILocation(line: 163, column: 3, scope: !299)
!369 = !DILocation(line: 164, column: 9, scope: !225)
!370 = !DILocation(line: 164, column: 13, scope: !225)
!371 = !DILocation(line: 164, column: 21, scope: !225)
!372 = !DILocation(line: 164, column: 24, scope: !225)
!373 = !DILocation(line: 164, column: 28, scope: !225)
!374 = !DILocation(line: 164, column: 31, scope: !225)
!375 = !DILocation(line: 164, column: 2, scope: !225)
!376 = !DILocation(line: 165, column: 1, scope: !225)
!377 = distinct !DISubprogram(name: "v4l2_enum_dv_timings_cap", scope: !3, file: !3, line: 168, type: !378, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!378 = !DISubroutineType(types: !379)
!379 = !{!135, !380, !232, !261, !147}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_enum_dv_timings", file: !12, line: 1582, size: 1184, elements: !382)
!382 = !{!383, !384, !385, !386}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !381, file: !12, line: 1583, baseType: !175, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !381, file: !12, line: 1584, baseType: !175, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !381, file: !12, line: 1585, baseType: !239, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !381, file: !12, line: 1586, baseType: !172, size: 1056, offset: 128)
!387 = !DILocalVariable(name: "t", arg: 1, scope: !377, file: !3, line: 168, type: !380)
!388 = !DILocation(line: 168, column: 59, scope: !377)
!389 = !DILocalVariable(name: "cap", arg: 2, scope: !377, file: !3, line: 169, type: !232)
!390 = !DILocation(line: 169, column: 43, scope: !377)
!391 = !DILocalVariable(name: "fnc", arg: 3, scope: !377, file: !3, line: 170, type: !261)
!392 = !DILocation(line: 170, column: 35, scope: !377)
!393 = !DILocalVariable(name: "fnc_handle", arg: 4, scope: !377, file: !3, line: 171, type: !147)
!394 = !DILocation(line: 171, column: 15, scope: !377)
!395 = !DILocalVariable(name: "i", scope: !377, file: !3, line: 173, type: !288)
!396 = !DILocation(line: 173, column: 6, scope: !377)
!397 = !DILocalVariable(name: "idx", scope: !377, file: !3, line: 173, type: !288)
!398 = !DILocation(line: 173, column: 9, scope: !377)
!399 = !DILocation(line: 175, column: 9, scope: !377)
!400 = !DILocation(line: 175, column: 12, scope: !377)
!401 = !DILocation(line: 175, column: 2, scope: !377)
!402 = !DILocation(line: 176, column: 15, scope: !403)
!403 = distinct !DILexicalBlock(scope: !377, file: !3, line: 176, column: 2)
!404 = !DILocation(line: 176, column: 9, scope: !403)
!405 = !DILocation(line: 176, column: 7, scope: !403)
!406 = !DILocation(line: 176, column: 44, scope: !407)
!407 = distinct !DILexicalBlock(scope: !403, file: !3, line: 176, column: 2)
!408 = !DILocation(line: 176, column: 20, scope: !407)
!409 = !DILocation(line: 176, column: 47, scope: !407)
!410 = !DILocation(line: 176, column: 50, scope: !407)
!411 = !DILocation(line: 176, column: 2, scope: !403)
!412 = !DILocation(line: 177, column: 55, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 177, column: 7)
!414 = distinct !DILexicalBlock(scope: !407, file: !3, line: 176, column: 62)
!415 = !DILocation(line: 177, column: 53, scope: !413)
!416 = !DILocation(line: 177, column: 58, scope: !413)
!417 = !DILocation(line: 178, column: 8, scope: !413)
!418 = !DILocation(line: 178, column: 13, scope: !413)
!419 = !DILocation(line: 177, column: 7, scope: !413)
!420 = !DILocation(line: 178, column: 25, scope: !413)
!421 = !DILocation(line: 179, column: 10, scope: !413)
!422 = !DILocation(line: 179, column: 16, scope: !413)
!423 = !DILocation(line: 179, column: 19, scope: !413)
!424 = !DILocation(line: 179, column: 13, scope: !413)
!425 = !DILocation(line: 177, column: 7, scope: !414)
!426 = !DILocation(line: 180, column: 4, scope: !427)
!427 = distinct !DILexicalBlock(scope: !413, file: !3, line: 179, column: 26)
!428 = !DILocation(line: 180, column: 7, scope: !427)
!429 = !DILocation(line: 180, column: 41, scope: !427)
!430 = !DILocation(line: 180, column: 17, scope: !427)
!431 = !DILocation(line: 181, column: 4, scope: !427)
!432 = !DILocation(line: 183, column: 2, scope: !414)
!433 = !DILocation(line: 176, column: 58, scope: !407)
!434 = !DILocation(line: 176, column: 2, scope: !407)
!435 = distinct !{!435, !411, !436}
!436 = !DILocation(line: 183, column: 2, scope: !403)
!437 = !DILocation(line: 184, column: 2, scope: !377)
!438 = !DILocation(line: 185, column: 1, scope: !377)
!439 = distinct !DISubprogram(name: "v4l2_find_dv_timings_cap", scope: !3, file: !3, line: 188, type: !440, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!440 = !DISubroutineType(types: !441)
!441 = !{!228, !442, !232, !7, !261, !147}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!443 = !DILocalVariable(name: "t", arg: 1, scope: !439, file: !3, line: 188, type: !442)
!444 = !DILocation(line: 188, column: 55, scope: !439)
!445 = !DILocalVariable(name: "cap", arg: 2, scope: !439, file: !3, line: 189, type: !232)
!446 = !DILocation(line: 189, column: 44, scope: !439)
!447 = !DILocalVariable(name: "pclock_delta", arg: 3, scope: !439, file: !3, line: 190, type: !7)
!448 = !DILocation(line: 190, column: 19, scope: !439)
!449 = !DILocalVariable(name: "fnc", arg: 4, scope: !439, file: !3, line: 191, type: !261)
!450 = !DILocation(line: 191, column: 36, scope: !439)
!451 = !DILocalVariable(name: "fnc_handle", arg: 5, scope: !439, file: !3, line: 192, type: !147)
!452 = !DILocation(line: 192, column: 16, scope: !439)
!453 = !DILocalVariable(name: "i", scope: !439, file: !3, line: 194, type: !135)
!454 = !DILocation(line: 194, column: 6, scope: !439)
!455 = !DILocation(line: 196, column: 29, scope: !456)
!456 = distinct !DILexicalBlock(scope: !439, file: !3, line: 196, column: 6)
!457 = !DILocation(line: 196, column: 32, scope: !456)
!458 = !DILocation(line: 196, column: 37, scope: !456)
!459 = !DILocation(line: 196, column: 42, scope: !456)
!460 = !DILocation(line: 196, column: 7, scope: !456)
!461 = !DILocation(line: 196, column: 6, scope: !439)
!462 = !DILocation(line: 197, column: 3, scope: !456)
!463 = !DILocation(line: 199, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !439, file: !3, line: 199, column: 2)
!465 = !DILocation(line: 199, column: 7, scope: !464)
!466 = !DILocation(line: 199, column: 14, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !3, line: 199, column: 2)
!468 = !DILocation(line: 199, column: 42, scope: !467)
!469 = !DILocation(line: 199, column: 18, scope: !467)
!470 = !DILocation(line: 199, column: 45, scope: !467)
!471 = !DILocation(line: 199, column: 48, scope: !467)
!472 = !DILocation(line: 199, column: 16, scope: !467)
!473 = !DILocation(line: 199, column: 2, scope: !464)
!474 = !DILocation(line: 200, column: 55, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !3, line: 200, column: 7)
!476 = distinct !DILexicalBlock(scope: !467, file: !3, line: 199, column: 60)
!477 = !DILocation(line: 200, column: 53, scope: !475)
!478 = !DILocation(line: 200, column: 58, scope: !475)
!479 = !DILocation(line: 201, column: 8, scope: !475)
!480 = !DILocation(line: 201, column: 13, scope: !475)
!481 = !DILocation(line: 200, column: 7, scope: !475)
!482 = !DILocation(line: 201, column: 25, scope: !475)
!483 = !DILocation(line: 202, column: 29, scope: !475)
!484 = !DILocation(line: 202, column: 58, scope: !475)
!485 = !DILocation(line: 202, column: 56, scope: !475)
!486 = !DILocation(line: 203, column: 8, scope: !475)
!487 = !DILocation(line: 202, column: 7, scope: !475)
!488 = !DILocation(line: 200, column: 7, scope: !476)
!489 = !DILocalVariable(name: "flags", scope: !490, file: !3, line: 204, type: !288)
!490 = distinct !DILexicalBlock(scope: !475, file: !3, line: 203, column: 30)
!491 = !DILocation(line: 204, column: 8, scope: !490)
!492 = !DILocation(line: 204, column: 16, scope: !490)
!493 = !DILocation(line: 204, column: 19, scope: !490)
!494 = !DILocation(line: 204, column: 22, scope: !490)
!495 = !DILocation(line: 204, column: 28, scope: !490)
!496 = !DILocation(line: 206, column: 5, scope: !490)
!497 = !DILocation(line: 206, column: 33, scope: !490)
!498 = !DILocation(line: 206, column: 9, scope: !490)
!499 = !DILocation(line: 207, column: 24, scope: !500)
!500 = distinct !DILexicalBlock(scope: !490, file: !3, line: 207, column: 8)
!501 = !DILocation(line: 207, column: 27, scope: !500)
!502 = !DILocation(line: 207, column: 8, scope: !500)
!503 = !DILocation(line: 207, column: 8, scope: !490)
!504 = !DILocation(line: 208, column: 20, scope: !500)
!505 = !DILocation(line: 208, column: 5, scope: !500)
!506 = !DILocation(line: 208, column: 8, scope: !500)
!507 = !DILocation(line: 208, column: 11, scope: !500)
!508 = !DILocation(line: 208, column: 17, scope: !500)
!509 = !DILocation(line: 210, column: 4, scope: !490)
!510 = !DILocation(line: 212, column: 2, scope: !476)
!511 = !DILocation(line: 199, column: 56, scope: !467)
!512 = !DILocation(line: 199, column: 2, scope: !467)
!513 = distinct !{!513, !473, !514}
!514 = !DILocation(line: 212, column: 2, scope: !464)
!515 = !DILocation(line: 213, column: 2, scope: !439)
!516 = !DILocation(line: 214, column: 1, scope: !439)
!517 = distinct !DISubprogram(name: "v4l2_match_dv_timings", scope: !3, file: !3, line: 245, type: !518, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!518 = !DISubroutineType(types: !519)
!519 = !{!228, !231, !231, !7, !228}
!520 = !DILocalVariable(name: "t1", arg: 1, scope: !517, file: !3, line: 245, type: !231)
!521 = !DILocation(line: 245, column: 58, scope: !517)
!522 = !DILocalVariable(name: "t2", arg: 2, scope: !517, file: !3, line: 246, type: !231)
!523 = !DILocation(line: 246, column: 37, scope: !517)
!524 = !DILocalVariable(name: "pclock_delta", arg: 3, scope: !517, file: !3, line: 247, type: !7)
!525 = !DILocation(line: 247, column: 16, scope: !517)
!526 = !DILocalVariable(name: "match_reduced_fps", arg: 4, scope: !517, file: !3, line: 247, type: !228)
!527 = !DILocation(line: 247, column: 35, scope: !517)
!528 = !DILocation(line: 249, column: 6, scope: !529)
!529 = distinct !DILexicalBlock(scope: !517, file: !3, line: 249, column: 6)
!530 = !DILocation(line: 249, column: 10, scope: !529)
!531 = !DILocation(line: 249, column: 18, scope: !529)
!532 = !DILocation(line: 249, column: 22, scope: !529)
!533 = !DILocation(line: 249, column: 15, scope: !529)
!534 = !DILocation(line: 249, column: 27, scope: !529)
!535 = !DILocation(line: 249, column: 30, scope: !529)
!536 = !DILocation(line: 249, column: 34, scope: !529)
!537 = !DILocation(line: 249, column: 39, scope: !529)
!538 = !DILocation(line: 249, column: 6, scope: !517)
!539 = !DILocation(line: 250, column: 3, scope: !529)
!540 = !DILocation(line: 251, column: 6, scope: !541)
!541 = distinct !DILexicalBlock(scope: !517, file: !3, line: 251, column: 6)
!542 = !DILocation(line: 251, column: 10, scope: !541)
!543 = !DILocation(line: 251, column: 13, scope: !541)
!544 = !DILocation(line: 251, column: 22, scope: !541)
!545 = !DILocation(line: 251, column: 26, scope: !541)
!546 = !DILocation(line: 251, column: 29, scope: !541)
!547 = !DILocation(line: 251, column: 19, scope: !541)
!548 = !DILocation(line: 251, column: 35, scope: !541)
!549 = !DILocation(line: 252, column: 6, scope: !541)
!550 = !DILocation(line: 252, column: 10, scope: !541)
!551 = !DILocation(line: 252, column: 13, scope: !541)
!552 = !DILocation(line: 252, column: 23, scope: !541)
!553 = !DILocation(line: 252, column: 27, scope: !541)
!554 = !DILocation(line: 252, column: 30, scope: !541)
!555 = !DILocation(line: 252, column: 20, scope: !541)
!556 = !DILocation(line: 252, column: 37, scope: !541)
!557 = !DILocation(line: 253, column: 6, scope: !541)
!558 = !DILocation(line: 253, column: 10, scope: !541)
!559 = !DILocation(line: 253, column: 13, scope: !541)
!560 = !DILocation(line: 253, column: 27, scope: !541)
!561 = !DILocation(line: 253, column: 31, scope: !541)
!562 = !DILocation(line: 253, column: 34, scope: !541)
!563 = !DILocation(line: 253, column: 24, scope: !541)
!564 = !DILocation(line: 253, column: 45, scope: !541)
!565 = !DILocation(line: 254, column: 6, scope: !541)
!566 = !DILocation(line: 254, column: 10, scope: !541)
!567 = !DILocation(line: 254, column: 13, scope: !541)
!568 = !DILocation(line: 254, column: 27, scope: !541)
!569 = !DILocation(line: 254, column: 31, scope: !541)
!570 = !DILocation(line: 254, column: 34, scope: !541)
!571 = !DILocation(line: 254, column: 24, scope: !541)
!572 = !DILocation(line: 254, column: 45, scope: !541)
!573 = !DILocation(line: 255, column: 6, scope: !541)
!574 = !DILocation(line: 255, column: 10, scope: !541)
!575 = !DILocation(line: 255, column: 13, scope: !541)
!576 = !DILocation(line: 255, column: 27, scope: !541)
!577 = !DILocation(line: 255, column: 31, scope: !541)
!578 = !DILocation(line: 255, column: 34, scope: !541)
!579 = !DILocation(line: 255, column: 47, scope: !541)
!580 = !DILocation(line: 255, column: 45, scope: !541)
!581 = !DILocation(line: 255, column: 24, scope: !541)
!582 = !DILocation(line: 255, column: 60, scope: !541)
!583 = !DILocation(line: 256, column: 6, scope: !541)
!584 = !DILocation(line: 256, column: 10, scope: !541)
!585 = !DILocation(line: 256, column: 13, scope: !541)
!586 = !DILocation(line: 256, column: 27, scope: !541)
!587 = !DILocation(line: 256, column: 31, scope: !541)
!588 = !DILocation(line: 256, column: 34, scope: !541)
!589 = !DILocation(line: 256, column: 47, scope: !541)
!590 = !DILocation(line: 256, column: 45, scope: !541)
!591 = !DILocation(line: 256, column: 24, scope: !541)
!592 = !DILocation(line: 256, column: 60, scope: !541)
!593 = !DILocation(line: 257, column: 6, scope: !541)
!594 = !DILocation(line: 257, column: 10, scope: !541)
!595 = !DILocation(line: 257, column: 13, scope: !541)
!596 = !DILocation(line: 257, column: 28, scope: !541)
!597 = !DILocation(line: 257, column: 32, scope: !541)
!598 = !DILocation(line: 257, column: 35, scope: !541)
!599 = !DILocation(line: 257, column: 25, scope: !541)
!600 = !DILocation(line: 257, column: 47, scope: !541)
!601 = !DILocation(line: 258, column: 6, scope: !541)
!602 = !DILocation(line: 258, column: 10, scope: !541)
!603 = !DILocation(line: 258, column: 13, scope: !541)
!604 = !DILocation(line: 258, column: 22, scope: !541)
!605 = !DILocation(line: 258, column: 26, scope: !541)
!606 = !DILocation(line: 258, column: 29, scope: !541)
!607 = !DILocation(line: 258, column: 19, scope: !541)
!608 = !DILocation(line: 258, column: 35, scope: !541)
!609 = !DILocation(line: 259, column: 6, scope: !541)
!610 = !DILocation(line: 259, column: 10, scope: !541)
!611 = !DILocation(line: 259, column: 13, scope: !541)
!612 = !DILocation(line: 259, column: 27, scope: !541)
!613 = !DILocation(line: 259, column: 31, scope: !541)
!614 = !DILocation(line: 259, column: 34, scope: !541)
!615 = !DILocation(line: 259, column: 24, scope: !541)
!616 = !DILocation(line: 259, column: 45, scope: !541)
!617 = !DILocation(line: 260, column: 6, scope: !541)
!618 = !DILocation(line: 260, column: 10, scope: !541)
!619 = !DILocation(line: 260, column: 13, scope: !541)
!620 = !DILocation(line: 260, column: 28, scope: !541)
!621 = !DILocation(line: 260, column: 32, scope: !541)
!622 = !DILocation(line: 260, column: 35, scope: !541)
!623 = !DILocation(line: 260, column: 25, scope: !541)
!624 = !DILocation(line: 260, column: 47, scope: !541)
!625 = !DILocation(line: 261, column: 6, scope: !541)
!626 = !DILocation(line: 261, column: 10, scope: !541)
!627 = !DILocation(line: 261, column: 13, scope: !541)
!628 = !DILocation(line: 261, column: 22, scope: !541)
!629 = !DILocation(line: 261, column: 26, scope: !541)
!630 = !DILocation(line: 261, column: 29, scope: !541)
!631 = !DILocation(line: 261, column: 19, scope: !541)
!632 = !DILocation(line: 261, column: 35, scope: !541)
!633 = !DILocation(line: 262, column: 6, scope: !541)
!634 = !DILocation(line: 262, column: 10, scope: !541)
!635 = !DILocation(line: 262, column: 13, scope: !541)
!636 = !DILocation(line: 262, column: 27, scope: !541)
!637 = !DILocation(line: 262, column: 31, scope: !541)
!638 = !DILocation(line: 262, column: 34, scope: !541)
!639 = !DILocation(line: 262, column: 24, scope: !541)
!640 = !DILocation(line: 262, column: 45, scope: !541)
!641 = !DILocation(line: 263, column: 8, scope: !541)
!642 = !DILocation(line: 263, column: 26, scope: !541)
!643 = !DILocation(line: 264, column: 8, scope: !541)
!644 = !DILocation(line: 264, column: 12, scope: !541)
!645 = !DILocation(line: 264, column: 15, scope: !541)
!646 = !DILocation(line: 264, column: 21, scope: !541)
!647 = !DILocation(line: 265, column: 4, scope: !541)
!648 = !DILocation(line: 265, column: 8, scope: !541)
!649 = !DILocation(line: 265, column: 11, scope: !541)
!650 = !DILocation(line: 265, column: 17, scope: !541)
!651 = !DILocation(line: 264, column: 47, scope: !541)
!652 = !DILocation(line: 265, column: 44, scope: !541)
!653 = !DILocation(line: 266, column: 8, scope: !541)
!654 = !DILocation(line: 266, column: 12, scope: !541)
!655 = !DILocation(line: 266, column: 15, scope: !541)
!656 = !DILocation(line: 266, column: 26, scope: !541)
!657 = !DILocation(line: 267, column: 4, scope: !541)
!658 = !DILocation(line: 267, column: 8, scope: !541)
!659 = !DILocation(line: 267, column: 11, scope: !541)
!660 = !DILocation(line: 267, column: 29, scope: !541)
!661 = !DILocation(line: 267, column: 33, scope: !541)
!662 = !DILocation(line: 267, column: 36, scope: !541)
!663 = !DILocation(line: 267, column: 26, scope: !541)
!664 = !DILocation(line: 267, column: 51, scope: !541)
!665 = !DILocation(line: 268, column: 4, scope: !541)
!666 = !DILocation(line: 268, column: 8, scope: !541)
!667 = !DILocation(line: 268, column: 11, scope: !541)
!668 = !DILocation(line: 268, column: 23, scope: !541)
!669 = !DILocation(line: 268, column: 27, scope: !541)
!670 = !DILocation(line: 268, column: 30, scope: !541)
!671 = !DILocation(line: 268, column: 20, scope: !541)
!672 = !DILocation(line: 268, column: 39, scope: !541)
!673 = !DILocation(line: 269, column: 4, scope: !541)
!674 = !DILocation(line: 269, column: 8, scope: !541)
!675 = !DILocation(line: 269, column: 11, scope: !541)
!676 = !DILocation(line: 269, column: 28, scope: !541)
!677 = !DILocation(line: 269, column: 32, scope: !541)
!678 = !DILocation(line: 269, column: 35, scope: !541)
!679 = !DILocation(line: 269, column: 25, scope: !541)
!680 = !DILocation(line: 251, column: 6, scope: !517)
!681 = !DILocation(line: 270, column: 3, scope: !541)
!682 = !DILocation(line: 271, column: 2, scope: !517)
!683 = !DILocation(line: 272, column: 1, scope: !517)
!684 = distinct !DISubprogram(name: "can_reduce_fps", scope: !263, file: !263, line: 214, type: !685, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!685 = !DISubroutineType(types: !686)
!686 = !{!228, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!688 = !DILocalVariable(name: "bt", arg: 1, scope: !684, file: !263, line: 214, type: !687)
!689 = !DILocation(line: 214, column: 60, scope: !684)
!690 = !DILocation(line: 216, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !684, file: !263, line: 216, column: 6)
!692 = !DILocation(line: 216, column: 11, scope: !691)
!693 = !DILocation(line: 216, column: 21, scope: !691)
!694 = !DILocation(line: 216, column: 43, scope: !691)
!695 = !DILocation(line: 216, column: 47, scope: !691)
!696 = !DILocation(line: 216, column: 51, scope: !691)
!697 = !DILocation(line: 216, column: 57, scope: !691)
!698 = !DILocation(line: 216, column: 6, scope: !684)
!699 = !DILocation(line: 217, column: 3, scope: !691)
!700 = !DILocation(line: 219, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !684, file: !263, line: 219, column: 6)
!702 = !DILocation(line: 219, column: 11, scope: !701)
!703 = !DILocation(line: 219, column: 21, scope: !701)
!704 = !DILocation(line: 219, column: 46, scope: !701)
!705 = !DILocation(line: 220, column: 7, scope: !701)
!706 = !DILocation(line: 220, column: 11, scope: !701)
!707 = !DILocation(line: 220, column: 17, scope: !701)
!708 = !DILocation(line: 219, column: 6, scope: !684)
!709 = !DILocation(line: 221, column: 3, scope: !701)
!710 = !DILocation(line: 223, column: 2, scope: !684)
!711 = !DILocation(line: 224, column: 1, scope: !684)
!712 = distinct !DISubprogram(name: "v4l2_find_dv_timings_cea861_vic", scope: !3, file: !3, line: 217, type: !713, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!713 = !DISubroutineType(types: !714)
!714 = !{!228, !442, !715}
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !149, line: 17, baseType: !204)
!716 = !DILocalVariable(name: "t", arg: 1, scope: !712, file: !3, line: 217, type: !442)
!717 = !DILocation(line: 217, column: 62, scope: !712)
!718 = !DILocalVariable(name: "vic", arg: 2, scope: !712, file: !3, line: 217, type: !715)
!719 = !DILocation(line: 217, column: 68, scope: !712)
!720 = !DILocalVariable(name: "i", scope: !712, file: !3, line: 219, type: !7)
!721 = !DILocation(line: 219, column: 15, scope: !712)
!722 = !DILocation(line: 221, column: 9, scope: !723)
!723 = distinct !DILexicalBlock(scope: !712, file: !3, line: 221, column: 2)
!724 = !DILocation(line: 221, column: 7, scope: !723)
!725 = !DILocation(line: 221, column: 14, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !3, line: 221, column: 2)
!727 = !DILocation(line: 221, column: 42, scope: !726)
!728 = !DILocation(line: 221, column: 18, scope: !726)
!729 = !DILocation(line: 221, column: 45, scope: !726)
!730 = !DILocation(line: 221, column: 48, scope: !726)
!731 = !DILocation(line: 221, column: 16, scope: !726)
!732 = !DILocation(line: 221, column: 2, scope: !723)
!733 = !DILocalVariable(name: "bt", scope: !734, file: !3, line: 222, type: !276)
!734 = distinct !DILexicalBlock(scope: !726, file: !3, line: 221, column: 60)
!735 = !DILocation(line: 222, column: 33, scope: !734)
!736 = !DILocation(line: 223, column: 29, scope: !734)
!737 = !DILocation(line: 223, column: 5, scope: !734)
!738 = !DILocation(line: 223, column: 32, scope: !734)
!739 = !DILocation(line: 225, column: 8, scope: !740)
!740 = distinct !DILexicalBlock(scope: !734, file: !3, line: 225, column: 7)
!741 = !DILocation(line: 225, column: 12, scope: !740)
!742 = !DILocation(line: 225, column: 18, scope: !740)
!743 = !DILocation(line: 225, column: 47, scope: !740)
!744 = !DILocation(line: 226, column: 7, scope: !740)
!745 = !DILocation(line: 226, column: 11, scope: !740)
!746 = !DILocation(line: 226, column: 25, scope: !740)
!747 = !DILocation(line: 226, column: 22, scope: !740)
!748 = !DILocation(line: 225, column: 7, scope: !734)
!749 = !DILocation(line: 227, column: 5, scope: !750)
!750 = distinct !DILexicalBlock(scope: !740, file: !3, line: 226, column: 30)
!751 = !DILocation(line: 227, column: 33, scope: !750)
!752 = !DILocation(line: 227, column: 9, scope: !750)
!753 = !DILocation(line: 228, column: 4, scope: !750)
!754 = !DILocation(line: 230, column: 2, scope: !734)
!755 = !DILocation(line: 221, column: 56, scope: !726)
!756 = !DILocation(line: 221, column: 2, scope: !726)
!757 = distinct !{!757, !732, !758}
!758 = !DILocation(line: 230, column: 2, scope: !723)
!759 = !DILocation(line: 231, column: 2, scope: !712)
!760 = !DILocation(line: 232, column: 1, scope: !712)
!761 = distinct !DISubprogram(name: "v4l2_print_dv_timings", scope: !3, file: !3, line: 275, type: !762, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !764, !764, !231, !228}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!765 = !DILocalVariable(name: "dev_prefix", arg: 1, scope: !761, file: !3, line: 275, type: !764)
!766 = !DILocation(line: 275, column: 40, scope: !761)
!767 = !DILocalVariable(name: "prefix", arg: 2, scope: !761, file: !3, line: 275, type: !764)
!768 = !DILocation(line: 275, column: 64, scope: !761)
!769 = !DILocalVariable(name: "t", arg: 3, scope: !761, file: !3, line: 276, type: !231)
!770 = !DILocation(line: 276, column: 37, scope: !761)
!771 = !DILocalVariable(name: "detailed", arg: 4, scope: !761, file: !3, line: 276, type: !228)
!772 = !DILocation(line: 276, column: 45, scope: !761)
!773 = !DILocalVariable(name: "bt", scope: !761, file: !3, line: 278, type: !276)
!774 = !DILocation(line: 278, column: 32, scope: !761)
!775 = !DILocation(line: 278, column: 38, scope: !761)
!776 = !DILocation(line: 278, column: 41, scope: !761)
!777 = !DILocalVariable(name: "htot", scope: !761, file: !3, line: 279, type: !288)
!778 = !DILocation(line: 279, column: 6, scope: !761)
!779 = !DILocalVariable(name: "vtot", scope: !761, file: !3, line: 279, type: !288)
!780 = !DILocation(line: 279, column: 12, scope: !761)
!781 = !DILocalVariable(name: "fps", scope: !761, file: !3, line: 280, type: !288)
!782 = !DILocation(line: 280, column: 6, scope: !761)
!783 = !DILocation(line: 282, column: 6, scope: !784)
!784 = distinct !DILexicalBlock(scope: !761, file: !3, line: 282, column: 6)
!785 = !DILocation(line: 282, column: 9, scope: !784)
!786 = !DILocation(line: 282, column: 14, scope: !784)
!787 = !DILocation(line: 282, column: 6, scope: !761)
!788 = !DILocation(line: 283, column: 3, scope: !784)
!789 = !DILocation(line: 285, column: 9, scope: !761)
!790 = !DILocation(line: 285, column: 7, scope: !761)
!791 = !DILocation(line: 286, column: 9, scope: !761)
!792 = !DILocation(line: 286, column: 7, scope: !761)
!793 = !DILocation(line: 287, column: 6, scope: !794)
!794 = distinct !DILexicalBlock(scope: !761, file: !3, line: 287, column: 6)
!795 = !DILocation(line: 287, column: 10, scope: !794)
!796 = !DILocation(line: 287, column: 6, scope: !761)
!797 = !DILocation(line: 288, column: 8, scope: !794)
!798 = !DILocation(line: 288, column: 3, scope: !794)
!799 = !DILocation(line: 290, column: 9, scope: !761)
!800 = !DILocation(line: 290, column: 16, scope: !761)
!801 = !DILocation(line: 290, column: 14, scope: !761)
!802 = !DILocation(line: 290, column: 22, scope: !761)
!803 = !DILocation(line: 290, column: 8, scope: !761)
!804 = !DILocation(line: 290, column: 48, scope: !761)
!805 = !DILocation(line: 290, column: 52, scope: !761)
!806 = !DILocation(line: 290, column: 41, scope: !761)
!807 = !DILocation(line: 291, column: 8, scope: !761)
!808 = !DILocation(line: 291, column: 15, scope: !761)
!809 = !DILocation(line: 291, column: 13, scope: !761)
!810 = !DILocation(line: 290, column: 28, scope: !761)
!811 = !DILocation(line: 290, column: 6, scope: !761)
!812 = !DILocation(line: 293, column: 6, scope: !813)
!813 = distinct !DILexicalBlock(scope: !761, file: !3, line: 293, column: 6)
!814 = !DILocation(line: 293, column: 13, scope: !813)
!815 = !DILocation(line: 293, column: 6, scope: !761)
!816 = !DILocation(line: 294, column: 10, scope: !813)
!817 = !DILocation(line: 294, column: 3, scope: !813)
!818 = !DILocation(line: 296, column: 2, scope: !761)
!819 = !DILocation(line: 300, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !761, file: !3, line: 300, column: 6)
!821 = !DILocation(line: 300, column: 6, scope: !761)
!822 = !DILocation(line: 301, column: 3, scope: !820)
!823 = !DILocation(line: 303, column: 2, scope: !761)
!824 = !DILocation(line: 307, column: 2, scope: !761)
!825 = !DILocation(line: 311, column: 6, scope: !826)
!826 = distinct !DILexicalBlock(scope: !761, file: !3, line: 311, column: 6)
!827 = !DILocation(line: 311, column: 10, scope: !826)
!828 = !DILocation(line: 311, column: 6, scope: !761)
!829 = !DILocation(line: 312, column: 3, scope: !826)
!830 = !DILocation(line: 316, column: 2, scope: !761)
!831 = !DILocation(line: 317, column: 2, scope: !761)
!832 = !DILocation(line: 0, scope: !761)
!833 = !DILocation(line: 339, column: 2, scope: !761)
!834 = !DILocation(line: 345, column: 6, scope: !835)
!835 = distinct !DILexicalBlock(scope: !761, file: !3, line: 345, column: 6)
!836 = !DILocation(line: 345, column: 10, scope: !835)
!837 = !DILocation(line: 345, column: 16, scope: !835)
!838 = !DILocation(line: 345, column: 6, scope: !761)
!839 = !DILocation(line: 346, column: 3, scope: !835)
!840 = !DILocation(line: 349, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !761, file: !3, line: 349, column: 6)
!842 = !DILocation(line: 349, column: 10, scope: !841)
!843 = !DILocation(line: 349, column: 16, scope: !841)
!844 = !DILocation(line: 349, column: 6, scope: !761)
!845 = !DILocation(line: 350, column: 3, scope: !841)
!846 = !DILocation(line: 351, column: 6, scope: !847)
!847 = distinct !DILexicalBlock(scope: !761, file: !3, line: 351, column: 6)
!848 = !DILocation(line: 351, column: 10, scope: !847)
!849 = !DILocation(line: 351, column: 16, scope: !847)
!850 = !DILocation(line: 351, column: 6, scope: !761)
!851 = !DILocation(line: 352, column: 3, scope: !847)
!852 = !DILocation(line: 353, column: 1, scope: !761)
!853 = distinct !DISubprogram(name: "div_u64", scope: !854, file: !854, line: 124, type: !855, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!854 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!855 = !DISubroutineType(types: !856)
!856 = !{!148, !148, !288}
!857 = !DILocalVariable(name: "dividend", arg: 1, scope: !853, file: !854, line: 124, type: !148)
!858 = !DILocation(line: 124, column: 31, scope: !853)
!859 = !DILocalVariable(name: "divisor", arg: 2, scope: !853, file: !854, line: 124, type: !288)
!860 = !DILocation(line: 124, column: 45, scope: !853)
!861 = !DILocalVariable(name: "remainder", scope: !853, file: !854, line: 126, type: !288)
!862 = !DILocation(line: 126, column: 6, scope: !853)
!863 = !DILocation(line: 127, column: 21, scope: !853)
!864 = !DILocation(line: 127, column: 31, scope: !853)
!865 = !DILocation(line: 127, column: 9, scope: !853)
!866 = !DILocation(line: 127, column: 2, scope: !853)
!867 = distinct !DISubprogram(name: "v4l2_dv_timings_aspect_ratio", scope: !3, file: !3, line: 356, type: !868, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!868 = !DISubroutineType(types: !869)
!869 = !{!199, !231}
!870 = !DILocalVariable(name: "t", arg: 1, scope: !867, file: !3, line: 356, type: !231)
!871 = !DILocation(line: 356, column: 78, scope: !867)
!872 = !DILocalVariable(name: "ratio", scope: !867, file: !3, line: 358, type: !199)
!873 = !DILocation(line: 358, column: 20, scope: !867)
!874 = !DILocalVariable(name: "n", scope: !867, file: !3, line: 359, type: !875)
!875 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!876 = !DILocation(line: 359, column: 16, scope: !867)
!877 = !DILocalVariable(name: "d", scope: !867, file: !3, line: 359, type: !875)
!878 = !DILocation(line: 359, column: 19, scope: !867)
!879 = !DILocation(line: 361, column: 6, scope: !880)
!880 = distinct !DILexicalBlock(scope: !867, file: !3, line: 361, column: 6)
!881 = !DILocation(line: 361, column: 9, scope: !880)
!882 = !DILocation(line: 361, column: 14, scope: !880)
!883 = !DILocation(line: 361, column: 6, scope: !867)
!884 = !DILocation(line: 362, column: 3, scope: !880)
!885 = !DILocation(line: 363, column: 8, scope: !886)
!886 = distinct !DILexicalBlock(scope: !867, file: !3, line: 363, column: 6)
!887 = !DILocation(line: 363, column: 11, scope: !886)
!888 = !DILocation(line: 363, column: 14, scope: !886)
!889 = !DILocation(line: 363, column: 20, scope: !886)
!890 = !DILocation(line: 363, column: 6, scope: !867)
!891 = !DILocation(line: 364, column: 3, scope: !886)
!892 = !DILocation(line: 366, column: 20, scope: !867)
!893 = !DILocation(line: 366, column: 23, scope: !867)
!894 = !DILocation(line: 366, column: 26, scope: !867)
!895 = !DILocation(line: 366, column: 34, scope: !867)
!896 = !DILocation(line: 366, column: 37, scope: !867)
!897 = !DILocation(line: 366, column: 40, scope: !867)
!898 = !DILocation(line: 366, column: 55, scope: !867)
!899 = !DILocation(line: 366, column: 32, scope: !867)
!900 = !DILocation(line: 366, column: 8, scope: !867)
!901 = !DILocation(line: 366, column: 18, scope: !867)
!902 = !DILocation(line: 367, column: 22, scope: !867)
!903 = !DILocation(line: 367, column: 25, scope: !867)
!904 = !DILocation(line: 367, column: 28, scope: !867)
!905 = !DILocation(line: 367, column: 37, scope: !867)
!906 = !DILocation(line: 367, column: 40, scope: !867)
!907 = !DILocation(line: 367, column: 43, scope: !867)
!908 = !DILocation(line: 367, column: 58, scope: !867)
!909 = !DILocation(line: 367, column: 35, scope: !867)
!910 = !DILocation(line: 367, column: 8, scope: !867)
!911 = !DILocation(line: 367, column: 20, scope: !867)
!912 = !DILocation(line: 369, column: 36, scope: !867)
!913 = !DILocation(line: 369, column: 30, scope: !867)
!914 = !DILocation(line: 369, column: 53, scope: !867)
!915 = !DILocation(line: 369, column: 47, scope: !867)
!916 = !DILocation(line: 370, column: 15, scope: !867)
!917 = !DILocation(line: 370, column: 9, scope: !867)
!918 = !DILocation(line: 370, column: 32, scope: !867)
!919 = !DILocation(line: 370, column: 26, scope: !867)
!920 = !DILocation(line: 369, column: 2, scope: !867)
!921 = !DILocation(line: 371, column: 20, scope: !867)
!922 = !DILocation(line: 371, column: 8, scope: !867)
!923 = !DILocation(line: 371, column: 18, scope: !867)
!924 = !DILocation(line: 372, column: 22, scope: !867)
!925 = !DILocation(line: 372, column: 8, scope: !867)
!926 = !DILocation(line: 372, column: 20, scope: !867)
!927 = !DILocation(line: 373, column: 2, scope: !867)
!928 = !DILocation(line: 374, column: 1, scope: !867)
!929 = distinct !DISubprogram(name: "v4l2_calc_timeperframe", scope: !3, file: !3, line: 385, type: !868, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!930 = !DILocalVariable(name: "t", arg: 1, scope: !929, file: !3, line: 385, type: !231)
!931 = !DILocation(line: 385, column: 72, scope: !929)
!932 = !DILocalVariable(name: "bt", scope: !929, file: !3, line: 387, type: !276)
!933 = !DILocation(line: 387, column: 32, scope: !929)
!934 = !DILocation(line: 387, column: 38, scope: !929)
!935 = !DILocation(line: 387, column: 41, scope: !929)
!936 = !DILocalVariable(name: "fps_fract", scope: !929, file: !3, line: 388, type: !199)
!937 = !DILocation(line: 388, column: 20, scope: !929)
!938 = !DILocalVariable(name: "n", scope: !929, file: !3, line: 389, type: !875)
!939 = !DILocation(line: 389, column: 16, scope: !929)
!940 = !DILocalVariable(name: "d", scope: !929, file: !3, line: 389, type: !875)
!941 = !DILocation(line: 389, column: 19, scope: !929)
!942 = !DILocalVariable(name: "htot", scope: !929, file: !3, line: 390, type: !288)
!943 = !DILocation(line: 390, column: 6, scope: !929)
!944 = !DILocalVariable(name: "vtot", scope: !929, file: !3, line: 390, type: !288)
!945 = !DILocation(line: 390, column: 12, scope: !929)
!946 = !DILocalVariable(name: "fps", scope: !929, file: !3, line: 390, type: !288)
!947 = !DILocation(line: 390, column: 18, scope: !929)
!948 = !DILocalVariable(name: "pclk", scope: !929, file: !3, line: 391, type: !148)
!949 = !DILocation(line: 391, column: 6, scope: !929)
!950 = !DILocation(line: 393, column: 6, scope: !951)
!951 = distinct !DILexicalBlock(scope: !929, file: !3, line: 393, column: 6)
!952 = !DILocation(line: 393, column: 9, scope: !951)
!953 = !DILocation(line: 393, column: 14, scope: !951)
!954 = !DILocation(line: 393, column: 6, scope: !929)
!955 = !DILocation(line: 394, column: 3, scope: !951)
!956 = !DILocation(line: 396, column: 9, scope: !929)
!957 = !DILocation(line: 396, column: 7, scope: !929)
!958 = !DILocation(line: 397, column: 9, scope: !929)
!959 = !DILocation(line: 397, column: 7, scope: !929)
!960 = !DILocation(line: 398, column: 9, scope: !929)
!961 = !DILocation(line: 398, column: 13, scope: !929)
!962 = !DILocation(line: 398, column: 7, scope: !929)
!963 = !DILocation(line: 400, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !929, file: !3, line: 400, column: 6)
!965 = !DILocation(line: 400, column: 11, scope: !964)
!966 = !DILocation(line: 400, column: 17, scope: !964)
!967 = !DILocation(line: 400, column: 54, scope: !964)
!968 = !DILocation(line: 401, column: 7, scope: !964)
!969 = !DILocation(line: 401, column: 11, scope: !964)
!970 = !DILocation(line: 401, column: 17, scope: !964)
!971 = !DILocation(line: 400, column: 6, scope: !929)
!972 = !DILocation(line: 402, column: 18, scope: !964)
!973 = !DILocation(line: 402, column: 23, scope: !964)
!974 = !DILocation(line: 402, column: 10, scope: !964)
!975 = !DILocation(line: 402, column: 8, scope: !964)
!976 = !DILocation(line: 402, column: 3, scope: !964)
!977 = !DILocation(line: 404, column: 9, scope: !929)
!978 = !DILocation(line: 404, column: 16, scope: !929)
!979 = !DILocation(line: 404, column: 14, scope: !929)
!980 = !DILocation(line: 404, column: 22, scope: !929)
!981 = !DILocation(line: 404, column: 8, scope: !929)
!982 = !DILocation(line: 404, column: 43, scope: !929)
!983 = !DILocation(line: 404, column: 41, scope: !929)
!984 = !DILocation(line: 404, column: 51, scope: !929)
!985 = !DILocation(line: 404, column: 58, scope: !929)
!986 = !DILocation(line: 404, column: 56, scope: !929)
!987 = !DILocation(line: 404, column: 28, scope: !929)
!988 = !DILocation(line: 404, column: 6, scope: !929)
!989 = !DILocation(line: 405, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !929, file: !3, line: 405, column: 6)
!991 = !DILocation(line: 405, column: 6, scope: !929)
!992 = !DILocation(line: 406, column: 3, scope: !990)
!993 = !DILocation(line: 408, column: 30, scope: !929)
!994 = !DILocation(line: 408, column: 40, scope: !929)
!995 = !DILocation(line: 408, column: 2, scope: !929)
!996 = !DILocation(line: 410, column: 24, scope: !929)
!997 = !DILocation(line: 410, column: 12, scope: !929)
!998 = !DILocation(line: 410, column: 22, scope: !929)
!999 = !DILocation(line: 411, column: 26, scope: !929)
!1000 = !DILocation(line: 411, column: 12, scope: !929)
!1001 = !DILocation(line: 411, column: 24, scope: !929)
!1002 = !DILocation(line: 412, column: 2, scope: !929)
!1003 = !DILocation(line: 413, column: 1, scope: !929)
!1004 = distinct !DISubprogram(name: "v4l2_detect_cvt", scope: !3, file: !3, line: 468, type: !1005, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!228, !7, !7, !7, !7, !288, !228, !442}
!1007 = !DILocalVariable(name: "frame_height", arg: 1, scope: !1004, file: !3, line: 468, type: !7)
!1008 = !DILocation(line: 468, column: 31, scope: !1004)
!1009 = !DILocalVariable(name: "hfreq", arg: 2, scope: !1004, file: !3, line: 469, type: !7)
!1010 = !DILocation(line: 469, column: 17, scope: !1004)
!1011 = !DILocalVariable(name: "vsync", arg: 3, scope: !1004, file: !3, line: 470, type: !7)
!1012 = !DILocation(line: 470, column: 17, scope: !1004)
!1013 = !DILocalVariable(name: "active_width", arg: 4, scope: !1004, file: !3, line: 471, type: !7)
!1014 = !DILocation(line: 471, column: 17, scope: !1004)
!1015 = !DILocalVariable(name: "polarities", arg: 5, scope: !1004, file: !3, line: 472, type: !288)
!1016 = !DILocation(line: 472, column: 12, scope: !1004)
!1017 = !DILocalVariable(name: "interlaced", arg: 6, scope: !1004, file: !3, line: 473, type: !228)
!1018 = !DILocation(line: 473, column: 13, scope: !1004)
!1019 = !DILocalVariable(name: "fmt", arg: 7, scope: !1004, file: !3, line: 474, type: !442)
!1020 = !DILocation(line: 474, column: 32, scope: !1004)
!1021 = !DILocalVariable(name: "v_fp", scope: !1004, file: !3, line: 476, type: !135)
!1022 = !DILocation(line: 476, column: 7, scope: !1004)
!1023 = !DILocalVariable(name: "v_bp", scope: !1004, file: !3, line: 476, type: !135)
!1024 = !DILocation(line: 476, column: 13, scope: !1004)
!1025 = !DILocalVariable(name: "h_fp", scope: !1004, file: !3, line: 476, type: !135)
!1026 = !DILocation(line: 476, column: 19, scope: !1004)
!1027 = !DILocalVariable(name: "h_bp", scope: !1004, file: !3, line: 476, type: !135)
!1028 = !DILocation(line: 476, column: 25, scope: !1004)
!1029 = !DILocalVariable(name: "hsync", scope: !1004, file: !3, line: 476, type: !135)
!1030 = !DILocation(line: 476, column: 31, scope: !1004)
!1031 = !DILocalVariable(name: "frame_width", scope: !1004, file: !3, line: 477, type: !135)
!1032 = !DILocation(line: 477, column: 7, scope: !1004)
!1033 = !DILocalVariable(name: "image_height", scope: !1004, file: !3, line: 477, type: !135)
!1034 = !DILocation(line: 477, column: 20, scope: !1004)
!1035 = !DILocalVariable(name: "image_width", scope: !1004, file: !3, line: 477, type: !135)
!1036 = !DILocation(line: 477, column: 34, scope: !1004)
!1037 = !DILocalVariable(name: "reduced_blanking", scope: !1004, file: !3, line: 478, type: !228)
!1038 = !DILocation(line: 478, column: 7, scope: !1004)
!1039 = !DILocalVariable(name: "rb_v2", scope: !1004, file: !3, line: 479, type: !228)
!1040 = !DILocation(line: 479, column: 7, scope: !1004)
!1041 = !DILocalVariable(name: "pix_clk", scope: !1004, file: !3, line: 480, type: !7)
!1042 = !DILocation(line: 480, column: 11, scope: !1004)
!1043 = !DILocation(line: 482, column: 6, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 482, column: 6)
!1045 = !DILocation(line: 482, column: 12, scope: !1044)
!1046 = !DILocation(line: 482, column: 16, scope: !1044)
!1047 = !DILocation(line: 482, column: 19, scope: !1044)
!1048 = !DILocation(line: 482, column: 25, scope: !1044)
!1049 = !DILocation(line: 482, column: 6, scope: !1004)
!1050 = !DILocation(line: 483, column: 3, scope: !1044)
!1051 = !DILocation(line: 485, column: 6, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 485, column: 6)
!1053 = !DILocation(line: 485, column: 17, scope: !1052)
!1054 = !DILocation(line: 485, column: 6, scope: !1004)
!1055 = !DILocation(line: 486, column: 20, scope: !1052)
!1056 = !DILocation(line: 486, column: 3, scope: !1052)
!1057 = !DILocation(line: 487, column: 11, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 487, column: 11)
!1059 = !DILocation(line: 487, column: 22, scope: !1058)
!1060 = !DILocation(line: 487, column: 11, scope: !1052)
!1061 = !DILocation(line: 488, column: 20, scope: !1058)
!1062 = !DILocation(line: 488, column: 3, scope: !1058)
!1063 = !DILocation(line: 490, column: 3, scope: !1058)
!1064 = !DILocation(line: 492, column: 6, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 492, column: 6)
!1066 = !DILocation(line: 492, column: 23, scope: !1065)
!1067 = !DILocation(line: 492, column: 26, scope: !1065)
!1068 = !DILocation(line: 492, column: 32, scope: !1065)
!1069 = !DILocation(line: 492, column: 6, scope: !1004)
!1070 = !DILocation(line: 493, column: 9, scope: !1065)
!1071 = !DILocation(line: 493, column: 3, scope: !1065)
!1072 = !DILocation(line: 495, column: 6, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 495, column: 6)
!1074 = !DILocation(line: 495, column: 12, scope: !1073)
!1075 = !DILocation(line: 495, column: 15, scope: !1073)
!1076 = !DILocation(line: 495, column: 28, scope: !1073)
!1077 = !DILocation(line: 495, column: 6, scope: !1004)
!1078 = !DILocation(line: 496, column: 3, scope: !1073)
!1079 = !DILocation(line: 498, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 498, column: 6)
!1081 = !DILocation(line: 498, column: 13, scope: !1080)
!1082 = !DILocation(line: 498, column: 16, scope: !1080)
!1083 = !DILocation(line: 498, column: 22, scope: !1080)
!1084 = !DILocation(line: 498, column: 6, scope: !1004)
!1085 = !DILocation(line: 499, column: 3, scope: !1080)
!1086 = !DILocation(line: 501, column: 6, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 501, column: 6)
!1088 = !DILocation(line: 501, column: 12, scope: !1087)
!1089 = !DILocation(line: 501, column: 6, scope: !1004)
!1090 = !DILocation(line: 502, column: 3, scope: !1087)
!1091 = !DILocation(line: 505, column: 6, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 505, column: 6)
!1093 = !DILocation(line: 505, column: 6, scope: !1004)
!1094 = !DILocation(line: 506, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 506, column: 7)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 505, column: 24)
!1097 = !DILocation(line: 506, column: 7, scope: !1096)
!1098 = !DILocation(line: 507, column: 9, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 506, column: 14)
!1100 = !DILocation(line: 508, column: 33, scope: !1099)
!1101 = !DILocation(line: 508, column: 31, scope: !1099)
!1102 = !DILocation(line: 508, column: 40, scope: !1099)
!1103 = !DILocation(line: 508, column: 50, scope: !1099)
!1104 = !DILocation(line: 508, column: 9, scope: !1099)
!1105 = !DILocation(line: 509, column: 12, scope: !1099)
!1106 = !DILocation(line: 509, column: 20, scope: !1099)
!1107 = !DILocation(line: 509, column: 18, scope: !1099)
!1108 = !DILocation(line: 509, column: 9, scope: !1099)
!1109 = !DILocation(line: 511, column: 8, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 511, column: 8)
!1111 = !DILocation(line: 511, column: 13, scope: !1110)
!1112 = !DILocation(line: 511, column: 8, scope: !1099)
!1113 = !DILocation(line: 512, column: 10, scope: !1110)
!1114 = !DILocation(line: 512, column: 5, scope: !1110)
!1115 = !DILocation(line: 513, column: 3, scope: !1099)
!1116 = !DILocation(line: 514, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 513, column: 10)
!1118 = !DILocation(line: 515, column: 33, scope: !1117)
!1119 = !DILocation(line: 515, column: 31, scope: !1117)
!1120 = !DILocation(line: 515, column: 40, scope: !1117)
!1121 = !DILocation(line: 515, column: 50, scope: !1117)
!1122 = !DILocation(line: 515, column: 9, scope: !1117)
!1123 = !DILocation(line: 516, column: 12, scope: !1117)
!1124 = !DILocation(line: 516, column: 20, scope: !1117)
!1125 = !DILocation(line: 516, column: 18, scope: !1117)
!1126 = !DILocation(line: 516, column: 9, scope: !1117)
!1127 = !DILocation(line: 518, column: 8, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 518, column: 8)
!1129 = !DILocation(line: 518, column: 13, scope: !1128)
!1130 = !DILocation(line: 518, column: 8, scope: !1117)
!1131 = !DILocation(line: 519, column: 10, scope: !1128)
!1132 = !DILocation(line: 519, column: 5, scope: !1128)
!1133 = !DILocation(line: 521, column: 2, scope: !1096)
!1134 = !DILocation(line: 522, column: 8, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 521, column: 9)
!1136 = !DILocation(line: 523, column: 30, scope: !1135)
!1137 = !DILocation(line: 523, column: 28, scope: !1135)
!1138 = !DILocation(line: 523, column: 37, scope: !1135)
!1139 = !DILocation(line: 523, column: 47, scope: !1135)
!1140 = !DILocation(line: 523, column: 53, scope: !1135)
!1141 = !DILocation(line: 523, column: 51, scope: !1135)
!1142 = !DILocation(line: 523, column: 8, scope: !1135)
!1143 = !DILocation(line: 525, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 525, column: 7)
!1145 = !DILocation(line: 525, column: 12, scope: !1144)
!1146 = !DILocation(line: 525, column: 7, scope: !1135)
!1147 = !DILocation(line: 526, column: 9, scope: !1144)
!1148 = !DILocation(line: 526, column: 4, scope: !1144)
!1149 = !DILocation(line: 529, column: 6, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 529, column: 6)
!1151 = !DILocation(line: 529, column: 6, scope: !1004)
!1152 = !DILocation(line: 530, column: 19, scope: !1150)
!1153 = !DILocation(line: 530, column: 38, scope: !1150)
!1154 = !DILocation(line: 530, column: 36, scope: !1150)
!1155 = !DILocation(line: 530, column: 32, scope: !1150)
!1156 = !DILocation(line: 530, column: 49, scope: !1150)
!1157 = !DILocation(line: 530, column: 47, scope: !1150)
!1158 = !DILocation(line: 530, column: 43, scope: !1150)
!1159 = !DILocation(line: 530, column: 61, scope: !1150)
!1160 = !DILocation(line: 530, column: 59, scope: !1150)
!1161 = !DILocation(line: 530, column: 55, scope: !1150)
!1162 = !DILocation(line: 530, column: 67, scope: !1150)
!1163 = !DILocation(line: 530, column: 16, scope: !1150)
!1164 = !DILocation(line: 530, column: 3, scope: !1150)
!1165 = !DILocation(line: 532, column: 19, scope: !1150)
!1166 = !DILocation(line: 532, column: 34, scope: !1150)
!1167 = !DILocation(line: 532, column: 32, scope: !1150)
!1168 = !DILocation(line: 532, column: 41, scope: !1150)
!1169 = !DILocation(line: 532, column: 39, scope: !1150)
!1170 = !DILocation(line: 532, column: 49, scope: !1150)
!1171 = !DILocation(line: 532, column: 47, scope: !1150)
!1172 = !DILocation(line: 532, column: 54, scope: !1150)
!1173 = !DILocation(line: 532, column: 59, scope: !1150)
!1174 = !DILocation(line: 532, column: 16, scope: !1150)
!1175 = !DILocation(line: 534, column: 6, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 534, column: 6)
!1177 = !DILocation(line: 534, column: 19, scope: !1176)
!1178 = !DILocation(line: 534, column: 6, scope: !1004)
!1179 = !DILocation(line: 535, column: 3, scope: !1176)
!1180 = !DILocation(line: 538, column: 10, scope: !1004)
!1181 = !DILocation(line: 538, column: 2, scope: !1004)
!1182 = !DILocation(line: 540, column: 18, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 538, column: 17)
!1184 = !DILocation(line: 540, column: 31, scope: !1183)
!1185 = !DILocation(line: 540, column: 36, scope: !1183)
!1186 = !DILocation(line: 540, column: 15, scope: !1183)
!1187 = !DILocation(line: 541, column: 3, scope: !1183)
!1188 = !DILocation(line: 543, column: 18, scope: !1183)
!1189 = !DILocation(line: 543, column: 31, scope: !1183)
!1190 = !DILocation(line: 543, column: 37, scope: !1183)
!1191 = !DILocation(line: 543, column: 15, scope: !1183)
!1192 = !DILocation(line: 544, column: 3, scope: !1183)
!1193 = !DILocation(line: 546, column: 18, scope: !1183)
!1194 = !DILocation(line: 546, column: 31, scope: !1183)
!1195 = !DILocation(line: 546, column: 37, scope: !1183)
!1196 = !DILocation(line: 546, column: 15, scope: !1183)
!1197 = !DILocation(line: 547, column: 3, scope: !1183)
!1198 = !DILocation(line: 550, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 550, column: 7)
!1200 = !DILocation(line: 550, column: 20, scope: !1199)
!1201 = !DILocation(line: 550, column: 7, scope: !1183)
!1202 = !DILocation(line: 551, column: 19, scope: !1199)
!1203 = !DILocation(line: 551, column: 32, scope: !1199)
!1204 = !DILocation(line: 551, column: 37, scope: !1199)
!1205 = !DILocation(line: 551, column: 16, scope: !1199)
!1206 = !DILocation(line: 551, column: 4, scope: !1199)
!1207 = !DILocation(line: 552, column: 12, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 552, column: 12)
!1209 = !DILocation(line: 552, column: 25, scope: !1208)
!1210 = !DILocation(line: 552, column: 12, scope: !1199)
!1211 = !DILocation(line: 553, column: 19, scope: !1208)
!1212 = !DILocation(line: 553, column: 32, scope: !1208)
!1213 = !DILocation(line: 553, column: 38, scope: !1208)
!1214 = !DILocation(line: 553, column: 16, scope: !1208)
!1215 = !DILocation(line: 553, column: 4, scope: !1208)
!1216 = !DILocation(line: 555, column: 4, scope: !1208)
!1217 = !DILocation(line: 556, column: 3, scope: !1183)
!1218 = !DILocation(line: 558, column: 17, scope: !1183)
!1219 = !DILocation(line: 558, column: 15, scope: !1183)
!1220 = !DILocation(line: 559, column: 3, scope: !1183)
!1221 = !DILocation(line: 561, column: 3, scope: !1183)
!1222 = !DILocation(line: 564, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 564, column: 6)
!1224 = !DILocation(line: 564, column: 6, scope: !1004)
!1225 = !DILocation(line: 565, column: 17, scope: !1223)
!1226 = !DILocation(line: 565, column: 29, scope: !1223)
!1227 = !DILocation(line: 565, column: 15, scope: !1223)
!1228 = !DILocation(line: 565, column: 3, scope: !1223)
!1229 = !DILocation(line: 568, column: 6, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 568, column: 6)
!1231 = !DILocation(line: 568, column: 6, scope: !1004)
!1232 = !DILocalVariable(name: "h_blank", scope: !1233, file: !3, line: 569, type: !135)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 568, column: 24)
!1234 = !DILocation(line: 569, column: 7, scope: !1233)
!1235 = !DILocalVariable(name: "clk_gran", scope: !1233, file: !3, line: 570, type: !135)
!1236 = !DILocation(line: 570, column: 7, scope: !1233)
!1237 = !DILocation(line: 572, column: 13, scope: !1233)
!1238 = !DILocation(line: 572, column: 11, scope: !1233)
!1239 = !DILocation(line: 573, column: 14, scope: !1233)
!1240 = !DILocation(line: 573, column: 12, scope: !1233)
!1241 = !DILocation(line: 575, column: 14, scope: !1233)
!1242 = !DILocation(line: 575, column: 28, scope: !1233)
!1243 = !DILocation(line: 575, column: 26, scope: !1233)
!1244 = !DILocation(line: 575, column: 39, scope: !1233)
!1245 = !DILocation(line: 575, column: 37, scope: !1233)
!1246 = !DILocation(line: 575, column: 11, scope: !1233)
!1247 = !DILocation(line: 576, column: 14, scope: !1233)
!1248 = !DILocation(line: 576, column: 24, scope: !1233)
!1249 = !DILocation(line: 576, column: 22, scope: !1233)
!1250 = !DILocation(line: 576, column: 36, scope: !1233)
!1251 = !DILocation(line: 576, column: 34, scope: !1233)
!1252 = !DILocation(line: 576, column: 11, scope: !1233)
!1253 = !DILocation(line: 578, column: 11, scope: !1233)
!1254 = !DILocation(line: 578, column: 19, scope: !1233)
!1255 = !DILocation(line: 578, column: 9, scope: !1233)
!1256 = !DILocation(line: 579, column: 9, scope: !1233)
!1257 = !DILocation(line: 580, column: 11, scope: !1233)
!1258 = !DILocation(line: 580, column: 21, scope: !1233)
!1259 = !DILocation(line: 580, column: 19, scope: !1233)
!1260 = !DILocation(line: 580, column: 28, scope: !1233)
!1261 = !DILocation(line: 580, column: 26, scope: !1233)
!1262 = !DILocation(line: 580, column: 9, scope: !1233)
!1263 = !DILocation(line: 582, column: 17, scope: !1233)
!1264 = !DILocation(line: 582, column: 31, scope: !1233)
!1265 = !DILocation(line: 582, column: 29, scope: !1233)
!1266 = !DILocation(line: 582, column: 15, scope: !1233)
!1267 = !DILocation(line: 583, column: 2, scope: !1233)
!1268 = !DILocalVariable(name: "ideal_duty_cycle_per_myriad", scope: !1269, file: !3, line: 584, type: !7)
!1269 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 583, column: 9)
!1270 = !DILocation(line: 584, column: 12, scope: !1269)
!1271 = !DILocation(line: 585, column: 49, scope: !1269)
!1272 = !DILocation(line: 585, column: 47, scope: !1269)
!1273 = !DILocation(line: 585, column: 22, scope: !1269)
!1274 = !DILocalVariable(name: "h_blank", scope: !1269, file: !3, line: 586, type: !135)
!1275 = !DILocation(line: 586, column: 7, scope: !1269)
!1276 = !DILocation(line: 588, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 588, column: 7)
!1278 = !DILocation(line: 588, column: 35, scope: !1277)
!1279 = !DILocation(line: 588, column: 7, scope: !1269)
!1280 = !DILocation(line: 589, column: 32, scope: !1277)
!1281 = !DILocation(line: 589, column: 4, scope: !1277)
!1282 = !DILocation(line: 591, column: 13, scope: !1269)
!1283 = !DILocation(line: 591, column: 27, scope: !1269)
!1284 = !DILocation(line: 591, column: 25, scope: !1269)
!1285 = !DILocation(line: 592, column: 15, scope: !1269)
!1286 = !DILocation(line: 592, column: 13, scope: !1269)
!1287 = !DILocation(line: 591, column: 55, scope: !1269)
!1288 = !DILocation(line: 591, column: 11, scope: !1269)
!1289 = !DILocation(line: 593, column: 14, scope: !1269)
!1290 = !DILocation(line: 593, column: 22, scope: !1269)
!1291 = !DILocation(line: 593, column: 45, scope: !1269)
!1292 = !DILocation(line: 593, column: 49, scope: !1269)
!1293 = !DILocation(line: 593, column: 11, scope: !1269)
!1294 = !DILocation(line: 595, column: 14, scope: !1269)
!1295 = !DILocation(line: 595, column: 28, scope: !1269)
!1296 = !DILocation(line: 595, column: 26, scope: !1269)
!1297 = !DILocation(line: 595, column: 39, scope: !1269)
!1298 = !DILocation(line: 595, column: 37, scope: !1269)
!1299 = !DILocation(line: 595, column: 11, scope: !1269)
!1300 = !DILocation(line: 596, column: 14, scope: !1269)
!1301 = !DILocation(line: 596, column: 22, scope: !1269)
!1302 = !DILocation(line: 596, column: 42, scope: !1269)
!1303 = !DILocation(line: 596, column: 11, scope: !1269)
!1304 = !DILocation(line: 598, column: 10, scope: !1269)
!1305 = !DILocation(line: 598, column: 18, scope: !1269)
!1306 = !DILocation(line: 598, column: 8, scope: !1269)
!1307 = !DILocation(line: 599, column: 17, scope: !1269)
!1308 = !DILocation(line: 599, column: 31, scope: !1269)
!1309 = !DILocation(line: 599, column: 29, scope: !1269)
!1310 = !DILocation(line: 599, column: 15, scope: !1269)
!1311 = !DILocation(line: 601, column: 11, scope: !1269)
!1312 = !DILocation(line: 601, column: 23, scope: !1269)
!1313 = !DILocation(line: 601, column: 43, scope: !1269)
!1314 = !DILocation(line: 601, column: 9, scope: !1269)
!1315 = !DILocation(line: 602, column: 12, scope: !1269)
!1316 = !DILocation(line: 602, column: 18, scope: !1269)
!1317 = !DILocation(line: 602, column: 35, scope: !1269)
!1318 = !DILocation(line: 602, column: 9, scope: !1269)
!1319 = !DILocation(line: 603, column: 10, scope: !1269)
!1320 = !DILocation(line: 603, column: 20, scope: !1269)
!1321 = !DILocation(line: 603, column: 18, scope: !1269)
!1322 = !DILocation(line: 603, column: 28, scope: !1269)
!1323 = !DILocation(line: 603, column: 26, scope: !1269)
!1324 = !DILocation(line: 603, column: 8, scope: !1269)
!1325 = !DILocation(line: 606, column: 2, scope: !1004)
!1326 = !DILocation(line: 606, column: 7, scope: !1004)
!1327 = !DILocation(line: 606, column: 12, scope: !1004)
!1328 = !DILocation(line: 607, column: 23, scope: !1004)
!1329 = !DILocation(line: 607, column: 2, scope: !1004)
!1330 = !DILocation(line: 607, column: 7, scope: !1004)
!1331 = !DILocation(line: 607, column: 10, scope: !1004)
!1332 = !DILocation(line: 607, column: 21, scope: !1004)
!1333 = !DILocation(line: 608, column: 18, scope: !1004)
!1334 = !DILocation(line: 608, column: 2, scope: !1004)
!1335 = !DILocation(line: 608, column: 7, scope: !1004)
!1336 = !DILocation(line: 608, column: 10, scope: !1004)
!1337 = !DILocation(line: 608, column: 16, scope: !1004)
!1338 = !DILocation(line: 609, column: 19, scope: !1004)
!1339 = !DILocation(line: 609, column: 2, scope: !1004)
!1340 = !DILocation(line: 609, column: 7, scope: !1004)
!1341 = !DILocation(line: 609, column: 10, scope: !1004)
!1342 = !DILocation(line: 609, column: 17, scope: !1004)
!1343 = !DILocation(line: 610, column: 24, scope: !1004)
!1344 = !DILocation(line: 610, column: 2, scope: !1004)
!1345 = !DILocation(line: 610, column: 7, scope: !1004)
!1346 = !DILocation(line: 610, column: 10, scope: !1004)
!1347 = !DILocation(line: 610, column: 22, scope: !1004)
!1348 = !DILocation(line: 611, column: 24, scope: !1004)
!1349 = !DILocation(line: 611, column: 2, scope: !1004)
!1350 = !DILocation(line: 611, column: 7, scope: !1004)
!1351 = !DILocation(line: 611, column: 10, scope: !1004)
!1352 = !DILocation(line: 611, column: 22, scope: !1004)
!1353 = !DILocation(line: 612, column: 18, scope: !1004)
!1354 = !DILocation(line: 612, column: 2, scope: !1004)
!1355 = !DILocation(line: 612, column: 7, scope: !1004)
!1356 = !DILocation(line: 612, column: 10, scope: !1004)
!1357 = !DILocation(line: 612, column: 16, scope: !1004)
!1358 = !DILocation(line: 613, column: 18, scope: !1004)
!1359 = !DILocation(line: 613, column: 2, scope: !1004)
!1360 = !DILocation(line: 613, column: 7, scope: !1004)
!1361 = !DILocation(line: 613, column: 10, scope: !1004)
!1362 = !DILocation(line: 613, column: 16, scope: !1004)
!1363 = !DILocation(line: 614, column: 23, scope: !1004)
!1364 = !DILocation(line: 614, column: 37, scope: !1004)
!1365 = !DILocation(line: 614, column: 35, scope: !1004)
!1366 = !DILocation(line: 614, column: 51, scope: !1004)
!1367 = !DILocation(line: 614, column: 49, scope: !1004)
!1368 = !DILocation(line: 614, column: 58, scope: !1004)
!1369 = !DILocation(line: 614, column: 56, scope: !1004)
!1370 = !DILocation(line: 614, column: 2, scope: !1004)
!1371 = !DILocation(line: 614, column: 7, scope: !1004)
!1372 = !DILocation(line: 614, column: 10, scope: !1004)
!1373 = !DILocation(line: 614, column: 21, scope: !1004)
!1374 = !DILocation(line: 616, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 616, column: 6)
!1376 = !DILocation(line: 616, column: 6, scope: !1004)
!1377 = !DILocation(line: 617, column: 24, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 616, column: 19)
!1379 = !DILocation(line: 617, column: 39, scope: !1378)
!1380 = !DILocation(line: 617, column: 37, scope: !1378)
!1381 = !DILocation(line: 617, column: 54, scope: !1378)
!1382 = !DILocation(line: 617, column: 52, scope: !1378)
!1383 = !DILocation(line: 617, column: 61, scope: !1378)
!1384 = !DILocation(line: 617, column: 59, scope: !1378)
!1385 = !DILocation(line: 617, column: 3, scope: !1378)
!1386 = !DILocation(line: 617, column: 8, scope: !1378)
!1387 = !DILocation(line: 617, column: 11, scope: !1378)
!1388 = !DILocation(line: 617, column: 22, scope: !1378)
!1389 = !DILocation(line: 618, column: 3, scope: !1378)
!1390 = !DILocation(line: 618, column: 8, scope: !1378)
!1391 = !DILocation(line: 618, column: 11, scope: !1378)
!1392 = !DILocation(line: 618, column: 22, scope: !1378)
!1393 = !DILocation(line: 619, column: 2, scope: !1378)
!1394 = !DILocation(line: 620, column: 25, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 619, column: 9)
!1396 = !DILocation(line: 620, column: 40, scope: !1395)
!1397 = !DILocation(line: 620, column: 38, scope: !1395)
!1398 = !DILocation(line: 620, column: 59, scope: !1395)
!1399 = !DILocation(line: 620, column: 57, scope: !1395)
!1400 = !DILocation(line: 620, column: 53, scope: !1395)
!1401 = !DILocation(line: 621, column: 15, scope: !1395)
!1402 = !DILocation(line: 621, column: 13, scope: !1395)
!1403 = !DILocation(line: 620, column: 64, scope: !1395)
!1404 = !DILocation(line: 621, column: 22, scope: !1395)
!1405 = !DILocation(line: 620, column: 3, scope: !1395)
!1406 = !DILocation(line: 620, column: 8, scope: !1395)
!1407 = !DILocation(line: 620, column: 11, scope: !1395)
!1408 = !DILocation(line: 620, column: 22, scope: !1395)
!1409 = !DILocation(line: 622, column: 27, scope: !1395)
!1410 = !DILocation(line: 622, column: 42, scope: !1395)
!1411 = !DILocation(line: 622, column: 40, scope: !1395)
!1412 = !DILocation(line: 622, column: 61, scope: !1395)
!1413 = !DILocation(line: 622, column: 59, scope: !1395)
!1414 = !DILocation(line: 622, column: 55, scope: !1395)
!1415 = !DILocation(line: 623, column: 10, scope: !1395)
!1416 = !DILocation(line: 623, column: 8, scope: !1395)
!1417 = !DILocation(line: 622, column: 66, scope: !1395)
!1418 = !DILocation(line: 623, column: 18, scope: !1395)
!1419 = !DILocation(line: 623, column: 23, scope: !1395)
!1420 = !DILocation(line: 623, column: 26, scope: !1395)
!1421 = !DILocation(line: 623, column: 16, scope: !1395)
!1422 = !DILocation(line: 622, column: 3, scope: !1395)
!1423 = !DILocation(line: 622, column: 8, scope: !1395)
!1424 = !DILocation(line: 622, column: 11, scope: !1395)
!1425 = !DILocation(line: 622, column: 25, scope: !1395)
!1426 = !DILocation(line: 624, column: 28, scope: !1395)
!1427 = !DILocation(line: 624, column: 3, scope: !1395)
!1428 = !DILocation(line: 624, column: 8, scope: !1395)
!1429 = !DILocation(line: 624, column: 11, scope: !1395)
!1430 = !DILocation(line: 624, column: 26, scope: !1395)
!1431 = !DILocation(line: 625, column: 22, scope: !1395)
!1432 = !DILocation(line: 625, column: 3, scope: !1395)
!1433 = !DILocation(line: 625, column: 8, scope: !1395)
!1434 = !DILocation(line: 625, column: 11, scope: !1395)
!1435 = !DILocation(line: 625, column: 20, scope: !1395)
!1436 = !DILocation(line: 626, column: 3, scope: !1395)
!1437 = !DILocation(line: 626, column: 8, scope: !1395)
!1438 = !DILocation(line: 626, column: 11, scope: !1395)
!1439 = !DILocation(line: 626, column: 17, scope: !1395)
!1440 = !DILocation(line: 627, column: 3, scope: !1395)
!1441 = !DILocation(line: 627, column: 8, scope: !1395)
!1442 = !DILocation(line: 627, column: 11, scope: !1395)
!1443 = !DILocation(line: 627, column: 22, scope: !1395)
!1444 = !DILocation(line: 630, column: 23, scope: !1004)
!1445 = !DILocation(line: 630, column: 2, scope: !1004)
!1446 = !DILocation(line: 630, column: 7, scope: !1004)
!1447 = !DILocation(line: 630, column: 10, scope: !1004)
!1448 = !DILocation(line: 630, column: 21, scope: !1004)
!1449 = !DILocation(line: 631, column: 2, scope: !1004)
!1450 = !DILocation(line: 631, column: 7, scope: !1004)
!1451 = !DILocation(line: 631, column: 10, scope: !1004)
!1452 = !DILocation(line: 631, column: 20, scope: !1004)
!1453 = !DILocation(line: 633, column: 6, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 633, column: 6)
!1455 = !DILocation(line: 633, column: 6, scope: !1004)
!1456 = !DILocation(line: 634, column: 3, scope: !1454)
!1457 = !DILocation(line: 634, column: 8, scope: !1454)
!1458 = !DILocation(line: 634, column: 11, scope: !1454)
!1459 = !DILocation(line: 634, column: 17, scope: !1454)
!1460 = !DILocation(line: 636, column: 2, scope: !1004)
!1461 = !DILocation(line: 637, column: 1, scope: !1004)
!1462 = distinct !DISubprogram(name: "v4l2_detect_gtf", scope: !3, file: !3, line: 686, type: !1463, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!228, !7, !7, !7, !288, !228, !199, !442}
!1465 = !DILocalVariable(name: "frame_height", arg: 1, scope: !1462, file: !3, line: 686, type: !7)
!1466 = !DILocation(line: 686, column: 31, scope: !1462)
!1467 = !DILocalVariable(name: "hfreq", arg: 2, scope: !1462, file: !3, line: 687, type: !7)
!1468 = !DILocation(line: 687, column: 12, scope: !1462)
!1469 = !DILocalVariable(name: "vsync", arg: 3, scope: !1462, file: !3, line: 688, type: !7)
!1470 = !DILocation(line: 688, column: 12, scope: !1462)
!1471 = !DILocalVariable(name: "polarities", arg: 4, scope: !1462, file: !3, line: 689, type: !288)
!1472 = !DILocation(line: 689, column: 7, scope: !1462)
!1473 = !DILocalVariable(name: "interlaced", arg: 5, scope: !1462, file: !3, line: 690, type: !228)
!1474 = !DILocation(line: 690, column: 8, scope: !1462)
!1475 = !DILocalVariable(name: "aspect", arg: 6, scope: !1462, file: !3, line: 691, type: !199)
!1476 = !DILocation(line: 691, column: 21, scope: !1462)
!1477 = !DILocalVariable(name: "fmt", arg: 7, scope: !1462, file: !3, line: 692, type: !442)
!1478 = !DILocation(line: 692, column: 27, scope: !1462)
!1479 = !DILocalVariable(name: "pix_clk", scope: !1462, file: !3, line: 694, type: !135)
!1480 = !DILocation(line: 694, column: 6, scope: !1462)
!1481 = !DILocalVariable(name: "v_fp", scope: !1462, file: !3, line: 695, type: !135)
!1482 = !DILocation(line: 695, column: 7, scope: !1462)
!1483 = !DILocalVariable(name: "v_bp", scope: !1462, file: !3, line: 695, type: !135)
!1484 = !DILocation(line: 695, column: 13, scope: !1462)
!1485 = !DILocalVariable(name: "h_fp", scope: !1462, file: !3, line: 695, type: !135)
!1486 = !DILocation(line: 695, column: 19, scope: !1462)
!1487 = !DILocalVariable(name: "hsync", scope: !1462, file: !3, line: 695, type: !135)
!1488 = !DILocation(line: 695, column: 25, scope: !1462)
!1489 = !DILocalVariable(name: "frame_width", scope: !1462, file: !3, line: 696, type: !135)
!1490 = !DILocation(line: 696, column: 6, scope: !1462)
!1491 = !DILocalVariable(name: "image_height", scope: !1462, file: !3, line: 696, type: !135)
!1492 = !DILocation(line: 696, column: 19, scope: !1462)
!1493 = !DILocalVariable(name: "image_width", scope: !1462, file: !3, line: 696, type: !135)
!1494 = !DILocation(line: 696, column: 33, scope: !1462)
!1495 = !DILocalVariable(name: "default_gtf", scope: !1462, file: !3, line: 697, type: !228)
!1496 = !DILocation(line: 697, column: 7, scope: !1462)
!1497 = !DILocalVariable(name: "h_blank", scope: !1462, file: !3, line: 698, type: !135)
!1498 = !DILocation(line: 698, column: 6, scope: !1462)
!1499 = !DILocation(line: 700, column: 6, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 700, column: 6)
!1501 = !DILocation(line: 700, column: 12, scope: !1500)
!1502 = !DILocation(line: 700, column: 6, scope: !1462)
!1503 = !DILocation(line: 701, column: 3, scope: !1500)
!1504 = !DILocation(line: 703, column: 6, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 703, column: 6)
!1506 = !DILocation(line: 703, column: 17, scope: !1505)
!1507 = !DILocation(line: 703, column: 6, scope: !1462)
!1508 = !DILocation(line: 704, column: 15, scope: !1505)
!1509 = !DILocation(line: 704, column: 3, scope: !1505)
!1510 = !DILocation(line: 705, column: 11, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 705, column: 11)
!1512 = !DILocation(line: 705, column: 22, scope: !1511)
!1513 = !DILocation(line: 705, column: 11, scope: !1505)
!1514 = !DILocation(line: 706, column: 15, scope: !1511)
!1515 = !DILocation(line: 706, column: 3, scope: !1511)
!1516 = !DILocation(line: 708, column: 3, scope: !1511)
!1517 = !DILocation(line: 710, column: 6, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 710, column: 6)
!1519 = !DILocation(line: 710, column: 12, scope: !1518)
!1520 = !DILocation(line: 710, column: 6, scope: !1462)
!1521 = !DILocation(line: 711, column: 3, scope: !1518)
!1522 = !DILocation(line: 714, column: 7, scope: !1462)
!1523 = !DILocation(line: 715, column: 29, scope: !1462)
!1524 = !DILocation(line: 715, column: 27, scope: !1462)
!1525 = !DILocation(line: 715, column: 35, scope: !1462)
!1526 = !DILocation(line: 715, column: 45, scope: !1462)
!1527 = !DILocation(line: 715, column: 57, scope: !1462)
!1528 = !DILocation(line: 715, column: 55, scope: !1462)
!1529 = !DILocation(line: 715, column: 7, scope: !1462)
!1530 = !DILocation(line: 716, column: 6, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 716, column: 6)
!1532 = !DILocation(line: 716, column: 6, scope: !1462)
!1533 = !DILocation(line: 717, column: 19, scope: !1531)
!1534 = !DILocation(line: 717, column: 38, scope: !1531)
!1535 = !DILocation(line: 717, column: 36, scope: !1531)
!1536 = !DILocation(line: 717, column: 32, scope: !1531)
!1537 = !DILocation(line: 717, column: 49, scope: !1531)
!1538 = !DILocation(line: 717, column: 47, scope: !1531)
!1539 = !DILocation(line: 717, column: 43, scope: !1531)
!1540 = !DILocation(line: 717, column: 61, scope: !1531)
!1541 = !DILocation(line: 717, column: 59, scope: !1531)
!1542 = !DILocation(line: 717, column: 55, scope: !1531)
!1543 = !DILocation(line: 717, column: 67, scope: !1531)
!1544 = !DILocation(line: 717, column: 16, scope: !1531)
!1545 = !DILocation(line: 717, column: 3, scope: !1531)
!1546 = !DILocation(line: 719, column: 19, scope: !1531)
!1547 = !DILocation(line: 719, column: 34, scope: !1531)
!1548 = !DILocation(line: 719, column: 32, scope: !1531)
!1549 = !DILocation(line: 719, column: 41, scope: !1531)
!1550 = !DILocation(line: 719, column: 39, scope: !1531)
!1551 = !DILocation(line: 719, column: 49, scope: !1531)
!1552 = !DILocation(line: 719, column: 47, scope: !1531)
!1553 = !DILocation(line: 719, column: 54, scope: !1531)
!1554 = !DILocation(line: 719, column: 59, scope: !1531)
!1555 = !DILocation(line: 719, column: 16, scope: !1531)
!1556 = !DILocation(line: 721, column: 6, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 721, column: 6)
!1558 = !DILocation(line: 721, column: 19, scope: !1557)
!1559 = !DILocation(line: 721, column: 6, scope: !1462)
!1560 = !DILocation(line: 722, column: 3, scope: !1557)
!1561 = !DILocation(line: 724, column: 13, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 724, column: 6)
!1563 = !DILocation(line: 724, column: 23, scope: !1562)
!1564 = !DILocation(line: 724, column: 28, scope: !1562)
!1565 = !DILocation(line: 724, column: 38, scope: !1562)
!1566 = !DILocation(line: 724, column: 50, scope: !1562)
!1567 = !DILocation(line: 724, column: 6, scope: !1462)
!1568 = !DILocation(line: 725, column: 10, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 724, column: 56)
!1570 = !DILocation(line: 725, column: 20, scope: !1569)
!1571 = !DILocation(line: 726, column: 10, scope: !1569)
!1572 = !DILocation(line: 726, column: 22, scope: !1569)
!1573 = !DILocation(line: 727, column: 2, scope: !1569)
!1574 = !DILocation(line: 728, column: 18, scope: !1462)
!1575 = !DILocation(line: 728, column: 40, scope: !1462)
!1576 = !DILocation(line: 728, column: 31, scope: !1462)
!1577 = !DILocation(line: 728, column: 60, scope: !1462)
!1578 = !DILocation(line: 728, column: 51, scope: !1462)
!1579 = !DILocation(line: 728, column: 14, scope: !1462)
!1580 = !DILocation(line: 729, column: 17, scope: !1462)
!1581 = !DILocation(line: 729, column: 29, scope: !1462)
!1582 = !DILocation(line: 729, column: 48, scope: !1462)
!1583 = !DILocation(line: 729, column: 14, scope: !1462)
!1584 = !DILocation(line: 732, column: 6, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 732, column: 6)
!1586 = !DILocation(line: 732, column: 6, scope: !1462)
!1587 = !DILocalVariable(name: "num", scope: !1588, file: !3, line: 733, type: !148)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 732, column: 19)
!1589 = !DILocation(line: 733, column: 7, scope: !1588)
!1590 = !DILocalVariable(name: "den", scope: !1588, file: !3, line: 734, type: !288)
!1591 = !DILocation(line: 734, column: 7, scope: !1588)
!1592 = !DILocation(line: 736, column: 11, scope: !1588)
!1593 = !DILocation(line: 736, column: 23, scope: !1588)
!1594 = !DILocation(line: 736, column: 46, scope: !1588)
!1595 = !DILocation(line: 736, column: 41, scope: !1588)
!1596 = !DILocation(line: 736, column: 39, scope: !1588)
!1597 = !DILocation(line: 737, column: 15, scope: !1588)
!1598 = !DILocation(line: 737, column: 10, scope: !1588)
!1599 = !DILocation(line: 737, column: 27, scope: !1588)
!1600 = !DILocation(line: 737, column: 43, scope: !1588)
!1601 = !DILocation(line: 736, column: 53, scope: !1588)
!1602 = !DILocation(line: 736, column: 7, scope: !1588)
!1603 = !DILocation(line: 738, column: 10, scope: !1588)
!1604 = !DILocation(line: 738, column: 16, scope: !1588)
!1605 = !DILocation(line: 738, column: 40, scope: !1588)
!1606 = !DILocation(line: 738, column: 64, scope: !1588)
!1607 = !DILocation(line: 738, column: 7, scope: !1588)
!1608 = !DILocation(line: 740, column: 22, scope: !1588)
!1609 = !DILocation(line: 740, column: 29, scope: !1588)
!1610 = !DILocation(line: 740, column: 33, scope: !1588)
!1611 = !DILocation(line: 740, column: 28, scope: !1588)
!1612 = !DILocation(line: 740, column: 26, scope: !1588)
!1613 = !DILocation(line: 740, column: 41, scope: !1588)
!1614 = !DILocation(line: 740, column: 13, scope: !1588)
!1615 = !DILocation(line: 740, column: 11, scope: !1588)
!1616 = !DILocation(line: 741, column: 11, scope: !1588)
!1617 = !DILocation(line: 742, column: 2, scope: !1588)
!1618 = !DILocalVariable(name: "num", scope: !1619, file: !3, line: 743, type: !148)
!1619 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 742, column: 9)
!1620 = !DILocation(line: 743, column: 7, scope: !1619)
!1621 = !DILocalVariable(name: "den", scope: !1619, file: !3, line: 744, type: !288)
!1622 = !DILocation(line: 744, column: 7, scope: !1619)
!1623 = !DILocation(line: 746, column: 11, scope: !1619)
!1624 = !DILocation(line: 746, column: 23, scope: !1619)
!1625 = !DILocation(line: 746, column: 46, scope: !1619)
!1626 = !DILocation(line: 746, column: 41, scope: !1619)
!1627 = !DILocation(line: 746, column: 39, scope: !1619)
!1628 = !DILocation(line: 747, column: 15, scope: !1619)
!1629 = !DILocation(line: 747, column: 10, scope: !1619)
!1630 = !DILocation(line: 747, column: 27, scope: !1619)
!1631 = !DILocation(line: 747, column: 43, scope: !1619)
!1632 = !DILocation(line: 746, column: 53, scope: !1619)
!1633 = !DILocation(line: 746, column: 7, scope: !1619)
!1634 = !DILocation(line: 748, column: 10, scope: !1619)
!1635 = !DILocation(line: 748, column: 16, scope: !1619)
!1636 = !DILocation(line: 748, column: 40, scope: !1619)
!1637 = !DILocation(line: 748, column: 64, scope: !1619)
!1638 = !DILocation(line: 748, column: 7, scope: !1619)
!1639 = !DILocation(line: 750, column: 22, scope: !1619)
!1640 = !DILocation(line: 750, column: 29, scope: !1619)
!1641 = !DILocation(line: 750, column: 33, scope: !1619)
!1642 = !DILocation(line: 750, column: 28, scope: !1619)
!1643 = !DILocation(line: 750, column: 26, scope: !1619)
!1644 = !DILocation(line: 750, column: 41, scope: !1619)
!1645 = !DILocation(line: 750, column: 13, scope: !1619)
!1646 = !DILocation(line: 750, column: 11, scope: !1619)
!1647 = !DILocation(line: 751, column: 11, scope: !1619)
!1648 = !DILocation(line: 754, column: 16, scope: !1462)
!1649 = !DILocation(line: 754, column: 30, scope: !1462)
!1650 = !DILocation(line: 754, column: 28, scope: !1462)
!1651 = !DILocation(line: 754, column: 14, scope: !1462)
!1652 = !DILocation(line: 756, column: 13, scope: !1462)
!1653 = !DILocation(line: 756, column: 27, scope: !1462)
!1654 = !DILocation(line: 756, column: 25, scope: !1462)
!1655 = !DILocation(line: 756, column: 38, scope: !1462)
!1656 = !DILocation(line: 756, column: 36, scope: !1462)
!1657 = !DILocation(line: 756, column: 10, scope: !1462)
!1658 = !DILocation(line: 757, column: 12, scope: !1462)
!1659 = !DILocation(line: 757, column: 20, scope: !1462)
!1660 = !DILocation(line: 757, column: 39, scope: !1462)
!1661 = !DILocation(line: 757, column: 10, scope: !1462)
!1662 = !DILocation(line: 759, column: 11, scope: !1462)
!1663 = !DILocation(line: 759, column: 23, scope: !1462)
!1664 = !DILocation(line: 759, column: 27, scope: !1462)
!1665 = !DILocation(line: 759, column: 33, scope: !1462)
!1666 = !DILocation(line: 759, column: 8, scope: !1462)
!1667 = !DILocalVariable(name: "__x", scope: !1668, file: !3, line: 760, type: !135)
!1668 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 760, column: 10)
!1669 = !DILocation(line: 760, column: 10, scope: !1668)
!1670 = !DILocalVariable(name: "__d", scope: !1668, file: !3, line: 760, type: !135)
!1671 = !DILocation(line: 760, column: 50, scope: !1462)
!1672 = !DILocation(line: 760, column: 8, scope: !1462)
!1673 = !DILocation(line: 762, column: 9, scope: !1462)
!1674 = !DILocation(line: 762, column: 17, scope: !1462)
!1675 = !DILocation(line: 762, column: 23, scope: !1462)
!1676 = !DILocation(line: 762, column: 21, scope: !1462)
!1677 = !DILocation(line: 762, column: 7, scope: !1462)
!1678 = !DILocation(line: 764, column: 2, scope: !1462)
!1679 = !DILocation(line: 764, column: 7, scope: !1462)
!1680 = !DILocation(line: 764, column: 12, scope: !1462)
!1681 = !DILocation(line: 765, column: 23, scope: !1462)
!1682 = !DILocation(line: 765, column: 2, scope: !1462)
!1683 = !DILocation(line: 765, column: 7, scope: !1462)
!1684 = !DILocation(line: 765, column: 10, scope: !1462)
!1685 = !DILocation(line: 765, column: 21, scope: !1462)
!1686 = !DILocation(line: 766, column: 18, scope: !1462)
!1687 = !DILocation(line: 766, column: 2, scope: !1462)
!1688 = !DILocation(line: 766, column: 7, scope: !1462)
!1689 = !DILocation(line: 766, column: 10, scope: !1462)
!1690 = !DILocation(line: 766, column: 16, scope: !1462)
!1691 = !DILocation(line: 767, column: 19, scope: !1462)
!1692 = !DILocation(line: 767, column: 2, scope: !1462)
!1693 = !DILocation(line: 767, column: 7, scope: !1462)
!1694 = !DILocation(line: 767, column: 10, scope: !1462)
!1695 = !DILocation(line: 767, column: 17, scope: !1462)
!1696 = !DILocation(line: 768, column: 24, scope: !1462)
!1697 = !DILocation(line: 768, column: 2, scope: !1462)
!1698 = !DILocation(line: 768, column: 7, scope: !1462)
!1699 = !DILocation(line: 768, column: 10, scope: !1462)
!1700 = !DILocation(line: 768, column: 22, scope: !1462)
!1701 = !DILocation(line: 769, column: 24, scope: !1462)
!1702 = !DILocation(line: 769, column: 2, scope: !1462)
!1703 = !DILocation(line: 769, column: 7, scope: !1462)
!1704 = !DILocation(line: 769, column: 10, scope: !1462)
!1705 = !DILocation(line: 769, column: 22, scope: !1462)
!1706 = !DILocation(line: 770, column: 18, scope: !1462)
!1707 = !DILocation(line: 770, column: 2, scope: !1462)
!1708 = !DILocation(line: 770, column: 7, scope: !1462)
!1709 = !DILocation(line: 770, column: 10, scope: !1462)
!1710 = !DILocation(line: 770, column: 16, scope: !1462)
!1711 = !DILocation(line: 771, column: 18, scope: !1462)
!1712 = !DILocation(line: 771, column: 2, scope: !1462)
!1713 = !DILocation(line: 771, column: 7, scope: !1462)
!1714 = !DILocation(line: 771, column: 10, scope: !1462)
!1715 = !DILocation(line: 771, column: 16, scope: !1462)
!1716 = !DILocation(line: 772, column: 23, scope: !1462)
!1717 = !DILocation(line: 772, column: 37, scope: !1462)
!1718 = !DILocation(line: 772, column: 35, scope: !1462)
!1719 = !DILocation(line: 772, column: 51, scope: !1462)
!1720 = !DILocation(line: 772, column: 49, scope: !1462)
!1721 = !DILocation(line: 772, column: 58, scope: !1462)
!1722 = !DILocation(line: 772, column: 56, scope: !1462)
!1723 = !DILocation(line: 772, column: 2, scope: !1462)
!1724 = !DILocation(line: 772, column: 7, scope: !1462)
!1725 = !DILocation(line: 772, column: 10, scope: !1462)
!1726 = !DILocation(line: 772, column: 21, scope: !1462)
!1727 = !DILocation(line: 774, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 774, column: 6)
!1729 = !DILocation(line: 774, column: 6, scope: !1462)
!1730 = !DILocation(line: 775, column: 24, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 774, column: 19)
!1732 = !DILocation(line: 775, column: 39, scope: !1731)
!1733 = !DILocation(line: 775, column: 37, scope: !1731)
!1734 = !DILocation(line: 775, column: 54, scope: !1731)
!1735 = !DILocation(line: 775, column: 52, scope: !1731)
!1736 = !DILocation(line: 775, column: 61, scope: !1731)
!1737 = !DILocation(line: 775, column: 59, scope: !1731)
!1738 = !DILocation(line: 775, column: 3, scope: !1731)
!1739 = !DILocation(line: 775, column: 8, scope: !1731)
!1740 = !DILocation(line: 775, column: 11, scope: !1731)
!1741 = !DILocation(line: 775, column: 22, scope: !1731)
!1742 = !DILocation(line: 776, column: 3, scope: !1731)
!1743 = !DILocation(line: 776, column: 8, scope: !1731)
!1744 = !DILocation(line: 776, column: 11, scope: !1731)
!1745 = !DILocation(line: 776, column: 22, scope: !1731)
!1746 = !DILocation(line: 777, column: 2, scope: !1731)
!1747 = !DILocation(line: 778, column: 25, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 777, column: 9)
!1749 = !DILocation(line: 778, column: 40, scope: !1748)
!1750 = !DILocation(line: 778, column: 38, scope: !1748)
!1751 = !DILocation(line: 778, column: 59, scope: !1748)
!1752 = !DILocation(line: 778, column: 57, scope: !1748)
!1753 = !DILocation(line: 778, column: 53, scope: !1748)
!1754 = !DILocation(line: 779, column: 15, scope: !1748)
!1755 = !DILocation(line: 779, column: 13, scope: !1748)
!1756 = !DILocation(line: 778, column: 64, scope: !1748)
!1757 = !DILocation(line: 779, column: 22, scope: !1748)
!1758 = !DILocation(line: 778, column: 3, scope: !1748)
!1759 = !DILocation(line: 778, column: 8, scope: !1748)
!1760 = !DILocation(line: 778, column: 11, scope: !1748)
!1761 = !DILocation(line: 778, column: 22, scope: !1748)
!1762 = !DILocation(line: 780, column: 27, scope: !1748)
!1763 = !DILocation(line: 780, column: 42, scope: !1748)
!1764 = !DILocation(line: 780, column: 40, scope: !1748)
!1765 = !DILocation(line: 780, column: 61, scope: !1748)
!1766 = !DILocation(line: 780, column: 59, scope: !1748)
!1767 = !DILocation(line: 780, column: 55, scope: !1748)
!1768 = !DILocation(line: 781, column: 10, scope: !1748)
!1769 = !DILocation(line: 781, column: 8, scope: !1748)
!1770 = !DILocation(line: 780, column: 66, scope: !1748)
!1771 = !DILocation(line: 781, column: 18, scope: !1748)
!1772 = !DILocation(line: 781, column: 23, scope: !1748)
!1773 = !DILocation(line: 781, column: 26, scope: !1748)
!1774 = !DILocation(line: 781, column: 16, scope: !1748)
!1775 = !DILocation(line: 780, column: 3, scope: !1748)
!1776 = !DILocation(line: 780, column: 8, scope: !1748)
!1777 = !DILocation(line: 780, column: 11, scope: !1748)
!1778 = !DILocation(line: 780, column: 25, scope: !1748)
!1779 = !DILocation(line: 782, column: 28, scope: !1748)
!1780 = !DILocation(line: 782, column: 3, scope: !1748)
!1781 = !DILocation(line: 782, column: 8, scope: !1748)
!1782 = !DILocation(line: 782, column: 11, scope: !1748)
!1783 = !DILocation(line: 782, column: 26, scope: !1748)
!1784 = !DILocation(line: 783, column: 22, scope: !1748)
!1785 = !DILocation(line: 783, column: 3, scope: !1748)
!1786 = !DILocation(line: 783, column: 8, scope: !1748)
!1787 = !DILocation(line: 783, column: 11, scope: !1748)
!1788 = !DILocation(line: 783, column: 20, scope: !1748)
!1789 = !DILocation(line: 784, column: 3, scope: !1748)
!1790 = !DILocation(line: 784, column: 8, scope: !1748)
!1791 = !DILocation(line: 784, column: 11, scope: !1748)
!1792 = !DILocation(line: 784, column: 17, scope: !1748)
!1793 = !DILocation(line: 785, column: 3, scope: !1748)
!1794 = !DILocation(line: 785, column: 8, scope: !1748)
!1795 = !DILocation(line: 785, column: 11, scope: !1748)
!1796 = !DILocation(line: 785, column: 22, scope: !1748)
!1797 = !DILocation(line: 788, column: 23, scope: !1462)
!1798 = !DILocation(line: 788, column: 2, scope: !1462)
!1799 = !DILocation(line: 788, column: 7, scope: !1462)
!1800 = !DILocation(line: 788, column: 10, scope: !1462)
!1801 = !DILocation(line: 788, column: 21, scope: !1462)
!1802 = !DILocation(line: 789, column: 2, scope: !1462)
!1803 = !DILocation(line: 789, column: 7, scope: !1462)
!1804 = !DILocation(line: 789, column: 10, scope: !1462)
!1805 = !DILocation(line: 789, column: 20, scope: !1462)
!1806 = !DILocation(line: 791, column: 7, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 791, column: 6)
!1808 = !DILocation(line: 791, column: 6, scope: !1462)
!1809 = !DILocation(line: 792, column: 3, scope: !1807)
!1810 = !DILocation(line: 792, column: 8, scope: !1807)
!1811 = !DILocation(line: 792, column: 11, scope: !1807)
!1812 = !DILocation(line: 792, column: 17, scope: !1807)
!1813 = !DILocation(line: 794, column: 2, scope: !1462)
!1814 = !DILocation(line: 795, column: 1, scope: !1462)
!1815 = distinct !DISubprogram(name: "v4l2_calc_aspect_ratio", scope: !3, file: !3, line: 807, type: !1816, scopeLine: 808, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!199, !715, !715}
!1818 = !DILocalVariable(name: "hor_landscape", arg: 1, scope: !1815, file: !3, line: 807, type: !715)
!1819 = !DILocation(line: 807, column: 45, scope: !1815)
!1820 = !DILocalVariable(name: "vert_portrait", arg: 2, scope: !1815, file: !3, line: 807, type: !715)
!1821 = !DILocation(line: 807, column: 63, scope: !1815)
!1822 = !DILocalVariable(name: "aspect", scope: !1815, file: !3, line: 809, type: !199)
!1823 = !DILocation(line: 809, column: 20, scope: !1815)
!1824 = !DILocalVariable(name: "ratio", scope: !1815, file: !3, line: 810, type: !715)
!1825 = !DILocation(line: 810, column: 5, scope: !1815)
!1826 = !DILocation(line: 813, column: 7, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 813, column: 6)
!1828 = !DILocation(line: 813, column: 21, scope: !1827)
!1829 = !DILocation(line: 813, column: 25, scope: !1827)
!1830 = !DILocation(line: 813, column: 6, scope: !1815)
!1831 = !DILocation(line: 814, column: 3, scope: !1827)
!1832 = !DILocation(line: 816, column: 6, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 816, column: 6)
!1834 = !DILocation(line: 816, column: 20, scope: !1833)
!1835 = !DILocation(line: 816, column: 23, scope: !1833)
!1836 = !DILocation(line: 816, column: 6, scope: !1815)
!1837 = !DILocation(line: 817, column: 22, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 816, column: 38)
!1839 = !DILocation(line: 817, column: 10, scope: !1838)
!1840 = !DILocation(line: 817, column: 20, scope: !1838)
!1841 = !DILocation(line: 818, column: 24, scope: !1838)
!1842 = !DILocation(line: 818, column: 10, scope: !1838)
!1843 = !DILocation(line: 818, column: 22, scope: !1838)
!1844 = !DILocation(line: 819, column: 3, scope: !1838)
!1845 = !DILocation(line: 823, column: 10, scope: !1815)
!1846 = !DILocation(line: 823, column: 26, scope: !1815)
!1847 = !DILocation(line: 823, column: 24, scope: !1815)
!1848 = !DILocation(line: 823, column: 8, scope: !1815)
!1849 = !DILocation(line: 825, column: 6, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 825, column: 6)
!1851 = !DILocation(line: 825, column: 12, scope: !1850)
!1852 = !DILocation(line: 825, column: 6, scope: !1815)
!1853 = !DILocation(line: 826, column: 10, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 825, column: 19)
!1855 = !DILocation(line: 826, column: 20, scope: !1854)
!1856 = !DILocation(line: 827, column: 10, scope: !1854)
!1857 = !DILocation(line: 827, column: 22, scope: !1854)
!1858 = !DILocation(line: 828, column: 2, scope: !1854)
!1859 = !DILocation(line: 828, column: 13, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 828, column: 13)
!1861 = !DILocation(line: 828, column: 19, scope: !1860)
!1862 = !DILocation(line: 828, column: 13, scope: !1850)
!1863 = !DILocation(line: 829, column: 10, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 828, column: 26)
!1865 = !DILocation(line: 829, column: 20, scope: !1864)
!1866 = !DILocation(line: 830, column: 10, scope: !1864)
!1867 = !DILocation(line: 830, column: 22, scope: !1864)
!1868 = !DILocation(line: 831, column: 2, scope: !1864)
!1869 = !DILocation(line: 831, column: 13, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 831, column: 13)
!1871 = !DILocation(line: 831, column: 19, scope: !1870)
!1872 = !DILocation(line: 831, column: 13, scope: !1860)
!1873 = !DILocation(line: 832, column: 10, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 831, column: 26)
!1875 = !DILocation(line: 832, column: 20, scope: !1874)
!1876 = !DILocation(line: 833, column: 10, scope: !1874)
!1877 = !DILocation(line: 833, column: 22, scope: !1874)
!1878 = !DILocation(line: 834, column: 2, scope: !1874)
!1879 = !DILocation(line: 835, column: 22, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 834, column: 9)
!1881 = !DILocation(line: 835, column: 36, scope: !1880)
!1882 = !DILocation(line: 835, column: 10, scope: !1880)
!1883 = !DILocation(line: 835, column: 20, scope: !1880)
!1884 = !DILocation(line: 836, column: 10, scope: !1880)
!1885 = !DILocation(line: 836, column: 22, scope: !1880)
!1886 = !DILocation(line: 838, column: 6, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 838, column: 6)
!1888 = !DILocation(line: 838, column: 6, scope: !1815)
!1889 = !DILocation(line: 839, column: 3, scope: !1887)
!1890 = !DILocation(line: 841, column: 2, scope: !1815)
!1891 = !DILocalVariable(name: "__tmp", scope: !1892, file: !3, line: 841, type: !175)
!1892 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 841, column: 2)
!1893 = !DILocation(line: 841, column: 2, scope: !1892)
!1894 = !DILocation(line: 842, column: 2, scope: !1815)
!1895 = !DILocation(line: 843, column: 1, scope: !1815)
!1896 = distinct !DISubprogram(name: "v4l2_hdmi_rx_colorimetry", scope: !3, file: !3, line: 860, type: !1897, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!1899, !1905, !1930, !7}
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_hdmi_colorimetry", file: !263, line: 233, size: 128, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !1899, file: !263, line: 234, baseType: !11, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_enc", scope: !1899, file: !263, line: 235, baseType: !27, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "quantization", scope: !1899, file: !263, line: 236, baseType: !37, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_func", scope: !1899, file: !263, line: 237, baseType: !42, size: 32, offset: 96)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdmi_avi_infoframe", file: !53, line: 169, size: 544, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1927, !1928, !1929}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1907, file: !53, line: 170, baseType: !52, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1907, file: !53, line: 171, baseType: !205, size: 8, offset: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1907, file: !53, line: 172, baseType: !205, size: 8, offset: 40)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !1907, file: !53, line: 173, baseType: !60, size: 32, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "scan_mode", scope: !1907, file: !53, line: 174, baseType: !70, size: 32, offset: 96)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "colorimetry", scope: !1907, file: !53, line: 175, baseType: !76, size: 32, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect", scope: !1907, file: !53, line: 176, baseType: !82, size: 32, offset: 160)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "active_aspect", scope: !1907, file: !53, line: 177, baseType: !90, size: 32, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "itc", scope: !1907, file: !53, line: 178, baseType: !228, size: 8, offset: 224)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "extended_colorimetry", scope: !1907, file: !53, line: 179, baseType: !102, size: 32, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "quantization_range", scope: !1907, file: !53, line: 180, baseType: !112, size: 32, offset: 288)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !1907, file: !53, line: 181, baseType: !118, size: 32, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "video_code", scope: !1907, file: !53, line: 182, baseType: !205, size: 8, offset: 352)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ycc_quantization_range", scope: !1907, file: !53, line: 183, baseType: !124, size: 32, offset: 384)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1907, file: !53, line: 184, baseType: !128, size: 32, offset: 416)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_repeat", scope: !1907, file: !53, line: 185, baseType: !205, size: 8, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "top_bar", scope: !1907, file: !53, line: 186, baseType: !1926, size: 16, offset: 464)
!1926 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_bar", scope: !1907, file: !53, line: 187, baseType: !1926, size: 16, offset: 480)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "left_bar", scope: !1907, file: !53, line: 188, baseType: !1926, size: 16, offset: 496)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "right_bar", scope: !1907, file: !53, line: 189, baseType: !1926, size: 16, offset: 512)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdmi_vendor_infoframe", file: !53, line: 354, size: 192, elements: !1933)
!1933 = !{!1934, !1935, !1936, !1937, !1938, !1939, !1940}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1932, file: !53, line: 355, baseType: !52, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1932, file: !53, line: 356, baseType: !205, size: 8, offset: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1932, file: !53, line: 357, baseType: !205, size: 8, offset: 40)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "oui", scope: !1932, file: !53, line: 358, baseType: !7, size: 32, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "vic", scope: !1932, file: !53, line: 359, baseType: !715, size: 8, offset: 96)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "s3d_struct", scope: !1932, file: !53, line: 360, baseType: !134, size: 32, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "s3d_ext_data", scope: !1932, file: !53, line: 361, baseType: !7, size: 32, offset: 160)
!1941 = !DILocalVariable(name: "avi", arg: 1, scope: !1896, file: !3, line: 860, type: !1905)
!1942 = !DILocation(line: 860, column: 59, scope: !1896)
!1943 = !DILocalVariable(name: "hdmi", arg: 2, scope: !1896, file: !3, line: 861, type: !1930)
!1944 = !DILocation(line: 861, column: 41, scope: !1896)
!1945 = !DILocalVariable(name: "height", arg: 3, scope: !1896, file: !3, line: 862, type: !7)
!1946 = !DILocation(line: 862, column: 18, scope: !1896)
!1947 = !DILocalVariable(name: "c", scope: !1896, file: !3, line: 864, type: !1899)
!1948 = !DILocation(line: 864, column: 31, scope: !1896)
!1949 = !DILocalVariable(name: "is_ce", scope: !1896, file: !3, line: 870, type: !228)
!1950 = !DILocation(line: 870, column: 7, scope: !1896)
!1951 = !DILocation(line: 870, column: 15, scope: !1896)
!1952 = !DILocation(line: 870, column: 20, scope: !1896)
!1953 = !DILocation(line: 870, column: 31, scope: !1896)
!1954 = !DILocation(line: 870, column: 35, scope: !1896)
!1955 = !DILocation(line: 870, column: 40, scope: !1896)
!1956 = !DILocation(line: 870, column: 43, scope: !1896)
!1957 = !DILocation(line: 870, column: 49, scope: !1896)
!1958 = !DILocation(line: 0, scope: !1896)
!1959 = !DILocalVariable(name: "is_sdtv", scope: !1896, file: !3, line: 871, type: !228)
!1960 = !DILocation(line: 871, column: 7, scope: !1896)
!1961 = !DILocation(line: 871, column: 17, scope: !1896)
!1962 = !DILocation(line: 871, column: 24, scope: !1896)
!1963 = !DILocalVariable(name: "default_is_lim_range_rgb", scope: !1896, file: !3, line: 872, type: !228)
!1964 = !DILocation(line: 872, column: 7, scope: !1896)
!1965 = !DILocation(line: 872, column: 34, scope: !1896)
!1966 = !DILocation(line: 872, column: 39, scope: !1896)
!1967 = !DILocation(line: 872, column: 50, scope: !1896)
!1968 = !DILocation(line: 874, column: 10, scope: !1896)
!1969 = !DILocation(line: 874, column: 15, scope: !1896)
!1970 = !DILocation(line: 874, column: 2, scope: !1896)
!1971 = !DILocation(line: 877, column: 11, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 874, column: 27)
!1973 = !DILocation(line: 877, column: 16, scope: !1972)
!1974 = !DILocation(line: 877, column: 3, scope: !1972)
!1975 = !DILocation(line: 879, column: 12, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 877, column: 29)
!1977 = !DILocation(line: 879, column: 17, scope: !1976)
!1978 = !DILocation(line: 879, column: 4, scope: !1976)
!1979 = !DILocation(line: 881, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 879, column: 39)
!1981 = !DILocation(line: 881, column: 18, scope: !1980)
!1982 = !DILocation(line: 882, column: 7, scope: !1980)
!1983 = !DILocation(line: 882, column: 17, scope: !1980)
!1984 = !DILocation(line: 883, column: 5, scope: !1980)
!1985 = !DILocation(line: 885, column: 7, scope: !1980)
!1986 = !DILocation(line: 885, column: 18, scope: !1980)
!1987 = !DILocation(line: 886, column: 7, scope: !1980)
!1988 = !DILocation(line: 886, column: 17, scope: !1980)
!1989 = !DILocation(line: 887, column: 5, scope: !1980)
!1990 = !DILocation(line: 889, column: 5, scope: !1980)
!1991 = !DILocation(line: 891, column: 4, scope: !1976)
!1992 = !DILocation(line: 893, column: 4, scope: !1976)
!1993 = !DILocation(line: 895, column: 11, scope: !1972)
!1994 = !DILocation(line: 895, column: 16, scope: !1972)
!1995 = !DILocation(line: 895, column: 3, scope: !1972)
!1996 = !DILocation(line: 897, column: 6, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 895, column: 36)
!1998 = !DILocation(line: 897, column: 19, scope: !1997)
!1999 = !DILocation(line: 898, column: 4, scope: !1997)
!2000 = !DILocation(line: 900, column: 4, scope: !1997)
!2001 = !DILocation(line: 902, column: 8, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 902, column: 8)
!2003 = !DILocation(line: 902, column: 8, scope: !1997)
!2004 = !DILocation(line: 903, column: 7, scope: !2002)
!2005 = !DILocation(line: 903, column: 20, scope: !2002)
!2006 = !DILocation(line: 903, column: 5, scope: !2002)
!2007 = !DILocation(line: 904, column: 4, scope: !1997)
!2008 = !DILocation(line: 906, column: 3, scope: !1972)
!2009 = !DILocation(line: 910, column: 5, scope: !1972)
!2010 = !DILocation(line: 910, column: 18, scope: !1972)
!2011 = !DILocation(line: 911, column: 11, scope: !1972)
!2012 = !DILocation(line: 911, column: 16, scope: !1972)
!2013 = !DILocation(line: 911, column: 3, scope: !1972)
!2014 = !DILocation(line: 913, column: 9, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 913, column: 8)
!2016 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 911, column: 29)
!2017 = !DILocation(line: 913, column: 8, scope: !2016)
!2018 = !DILocation(line: 914, column: 5, scope: !2015)
!2019 = !DILocation(line: 915, column: 8, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 915, column: 8)
!2021 = !DILocation(line: 915, column: 8, scope: !2016)
!2022 = !DILocation(line: 916, column: 7, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 915, column: 17)
!2024 = !DILocation(line: 916, column: 18, scope: !2023)
!2025 = !DILocation(line: 917, column: 7, scope: !2023)
!2026 = !DILocation(line: 917, column: 17, scope: !2023)
!2027 = !DILocation(line: 918, column: 4, scope: !2023)
!2028 = !DILocation(line: 919, column: 7, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 918, column: 11)
!2030 = !DILocation(line: 919, column: 18, scope: !2029)
!2031 = !DILocation(line: 920, column: 7, scope: !2029)
!2032 = !DILocation(line: 920, column: 17, scope: !2029)
!2033 = !DILocation(line: 922, column: 6, scope: !2016)
!2034 = !DILocation(line: 922, column: 16, scope: !2016)
!2035 = !DILocation(line: 923, column: 4, scope: !2016)
!2036 = !DILocation(line: 925, column: 6, scope: !2016)
!2037 = !DILocation(line: 925, column: 17, scope: !2016)
!2038 = !DILocation(line: 926, column: 6, scope: !2016)
!2039 = !DILocation(line: 926, column: 16, scope: !2016)
!2040 = !DILocation(line: 927, column: 6, scope: !2016)
!2041 = !DILocation(line: 927, column: 16, scope: !2016)
!2042 = !DILocation(line: 928, column: 4, scope: !2016)
!2043 = !DILocation(line: 930, column: 6, scope: !2016)
!2044 = !DILocation(line: 930, column: 17, scope: !2016)
!2045 = !DILocation(line: 931, column: 6, scope: !2016)
!2046 = !DILocation(line: 931, column: 16, scope: !2016)
!2047 = !DILocation(line: 932, column: 6, scope: !2016)
!2048 = !DILocation(line: 932, column: 16, scope: !2016)
!2049 = !DILocation(line: 933, column: 4, scope: !2016)
!2050 = !DILocation(line: 935, column: 12, scope: !2016)
!2051 = !DILocation(line: 935, column: 17, scope: !2016)
!2052 = !DILocation(line: 935, column: 4, scope: !2016)
!2053 = !DILocation(line: 937, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 935, column: 39)
!2055 = !DILocation(line: 937, column: 18, scope: !2054)
!2056 = !DILocation(line: 938, column: 7, scope: !2054)
!2057 = !DILocation(line: 938, column: 17, scope: !2054)
!2058 = !DILocation(line: 939, column: 7, scope: !2054)
!2059 = !DILocation(line: 939, column: 17, scope: !2054)
!2060 = !DILocation(line: 940, column: 5, scope: !2054)
!2061 = !DILocation(line: 942, column: 7, scope: !2054)
!2062 = !DILocation(line: 942, column: 18, scope: !2054)
!2063 = !DILocation(line: 943, column: 7, scope: !2054)
!2064 = !DILocation(line: 943, column: 17, scope: !2054)
!2065 = !DILocation(line: 944, column: 7, scope: !2054)
!2066 = !DILocation(line: 944, column: 17, scope: !2054)
!2067 = !DILocation(line: 945, column: 5, scope: !2054)
!2068 = !DILocation(line: 947, column: 7, scope: !2054)
!2069 = !DILocation(line: 947, column: 18, scope: !2054)
!2070 = !DILocation(line: 948, column: 7, scope: !2054)
!2071 = !DILocation(line: 948, column: 17, scope: !2054)
!2072 = !DILocation(line: 949, column: 7, scope: !2054)
!2073 = !DILocation(line: 949, column: 17, scope: !2054)
!2074 = !DILocation(line: 950, column: 5, scope: !2054)
!2075 = !DILocation(line: 952, column: 7, scope: !2054)
!2076 = !DILocation(line: 952, column: 18, scope: !2054)
!2077 = !DILocation(line: 953, column: 7, scope: !2054)
!2078 = !DILocation(line: 953, column: 17, scope: !2054)
!2079 = !DILocation(line: 954, column: 7, scope: !2054)
!2080 = !DILocation(line: 954, column: 17, scope: !2054)
!2081 = !DILocation(line: 955, column: 5, scope: !2054)
!2082 = !DILocation(line: 957, column: 7, scope: !2054)
!2083 = !DILocation(line: 957, column: 18, scope: !2054)
!2084 = !DILocation(line: 958, column: 7, scope: !2054)
!2085 = !DILocation(line: 958, column: 17, scope: !2054)
!2086 = !DILocation(line: 959, column: 7, scope: !2054)
!2087 = !DILocation(line: 959, column: 17, scope: !2054)
!2088 = !DILocation(line: 960, column: 5, scope: !2054)
!2089 = !DILocation(line: 962, column: 7, scope: !2054)
!2090 = !DILocation(line: 962, column: 18, scope: !2054)
!2091 = !DILocation(line: 963, column: 7, scope: !2054)
!2092 = !DILocation(line: 963, column: 17, scope: !2054)
!2093 = !DILocation(line: 964, column: 7, scope: !2054)
!2094 = !DILocation(line: 964, column: 17, scope: !2054)
!2095 = !DILocation(line: 965, column: 5, scope: !2054)
!2096 = !DILocation(line: 967, column: 7, scope: !2054)
!2097 = !DILocation(line: 967, column: 18, scope: !2054)
!2098 = !DILocation(line: 968, column: 7, scope: !2054)
!2099 = !DILocation(line: 968, column: 17, scope: !2054)
!2100 = !DILocation(line: 969, column: 7, scope: !2054)
!2101 = !DILocation(line: 969, column: 17, scope: !2054)
!2102 = !DILocation(line: 970, column: 5, scope: !2054)
!2103 = !DILocation(line: 972, column: 4, scope: !2016)
!2104 = !DILocation(line: 974, column: 4, scope: !2016)
!2105 = !DILocation(line: 980, column: 3, scope: !1972)
!2106 = !DILocation(line: 982, column: 2, scope: !1896)
!2107 = distinct !DISubprogram(name: "v4l2_get_edid_phys_addr", scope: !3, file: !3, line: 997, type: !2108, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!2110, !2112, !7, !2114}
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !149, line: 19, baseType: !2111)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !151, line: 24, baseType: !1926)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2115 = !DILocalVariable(name: "edid", arg: 1, scope: !2107, file: !3, line: 997, type: !2112)
!2116 = !DILocation(line: 997, column: 39, scope: !2107)
!2117 = !DILocalVariable(name: "size", arg: 2, scope: !2107, file: !3, line: 997, type: !7)
!2118 = !DILocation(line: 997, column: 58, scope: !2107)
!2119 = !DILocalVariable(name: "offset", arg: 3, scope: !2107, file: !3, line: 998, type: !2114)
!2120 = !DILocation(line: 998, column: 22, scope: !2107)
!2121 = !DILocalVariable(name: "loc", scope: !2107, file: !3, line: 1000, type: !7)
!2122 = !DILocation(line: 1000, column: 15, scope: !2107)
!2123 = !DILocation(line: 1000, column: 47, scope: !2107)
!2124 = !DILocation(line: 1000, column: 53, scope: !2107)
!2125 = !DILocation(line: 1000, column: 21, scope: !2107)
!2126 = !DILocation(line: 1002, column: 6, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 1002, column: 6)
!2128 = !DILocation(line: 1002, column: 6, scope: !2107)
!2129 = !DILocation(line: 1003, column: 13, scope: !2127)
!2130 = !DILocation(line: 1003, column: 4, scope: !2127)
!2131 = !DILocation(line: 1003, column: 11, scope: !2127)
!2132 = !DILocation(line: 1003, column: 3, scope: !2127)
!2133 = !DILocation(line: 1004, column: 6, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 1004, column: 6)
!2135 = !DILocation(line: 1004, column: 10, scope: !2134)
!2136 = !DILocation(line: 1004, column: 6, scope: !2107)
!2137 = !DILocation(line: 1005, column: 3, scope: !2134)
!2138 = !DILocation(line: 1006, column: 10, scope: !2107)
!2139 = !DILocation(line: 1006, column: 15, scope: !2107)
!2140 = !DILocation(line: 1006, column: 20, scope: !2107)
!2141 = !DILocation(line: 1006, column: 28, scope: !2107)
!2142 = !DILocation(line: 1006, column: 33, scope: !2107)
!2143 = !DILocation(line: 1006, column: 37, scope: !2107)
!2144 = !DILocation(line: 1006, column: 26, scope: !2107)
!2145 = !DILocation(line: 1006, column: 9, scope: !2107)
!2146 = !DILocation(line: 1006, column: 2, scope: !2107)
!2147 = !DILocation(line: 1007, column: 1, scope: !2107)
!2148 = distinct !DISubprogram(name: "cec_get_edid_spa_location", scope: !2149, file: !2149, line: 469, type: !2150, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!2149 = !DIFile(filename: "./include/media/cec.h", directory: "/home/lizy2001/genbc/linux")
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!7, !2112, !7}
!2152 = !DILocalVariable(name: "edid", arg: 1, scope: !2148, file: !2149, line: 469, type: !2112)
!2153 = !DILocation(line: 469, column: 64, scope: !2148)
!2154 = !DILocalVariable(name: "size", arg: 2, scope: !2148, file: !2149, line: 470, type: !7)
!2155 = !DILocation(line: 470, column: 25, scope: !2148)
!2156 = !DILocalVariable(name: "blocks", scope: !2148, file: !2149, line: 472, type: !7)
!2157 = !DILocation(line: 472, column: 15, scope: !2148)
!2158 = !DILocation(line: 472, column: 24, scope: !2148)
!2159 = !DILocation(line: 472, column: 29, scope: !2148)
!2160 = !DILocalVariable(name: "block", scope: !2148, file: !2149, line: 473, type: !7)
!2161 = !DILocation(line: 473, column: 15, scope: !2148)
!2162 = !DILocalVariable(name: "d", scope: !2148, file: !2149, line: 474, type: !715)
!2163 = !DILocation(line: 474, column: 5, scope: !2148)
!2164 = !DILocation(line: 477, column: 6, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2148, file: !2149, line: 477, column: 6)
!2166 = !DILocation(line: 477, column: 13, scope: !2165)
!2167 = !DILocation(line: 477, column: 17, scope: !2165)
!2168 = !DILocation(line: 477, column: 20, scope: !2165)
!2169 = !DILocation(line: 477, column: 25, scope: !2165)
!2170 = !DILocation(line: 477, column: 6, scope: !2148)
!2171 = !DILocation(line: 478, column: 3, scope: !2165)
!2172 = !DILocation(line: 487, column: 6, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2148, file: !2149, line: 487, column: 6)
!2174 = !DILocation(line: 487, column: 17, scope: !2173)
!2175 = !DILocation(line: 487, column: 23, scope: !2173)
!2176 = !DILocation(line: 487, column: 21, scope: !2173)
!2177 = !DILocation(line: 487, column: 6, scope: !2148)
!2178 = !DILocation(line: 488, column: 12, scope: !2173)
!2179 = !DILocation(line: 488, column: 23, scope: !2173)
!2180 = !DILocation(line: 488, column: 10, scope: !2173)
!2181 = !DILocation(line: 488, column: 3, scope: !2173)
!2182 = !DILocation(line: 490, column: 13, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2148, file: !2149, line: 490, column: 2)
!2184 = !DILocation(line: 490, column: 7, scope: !2183)
!2185 = !DILocation(line: 490, column: 18, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2183, file: !2149, line: 490, column: 2)
!2187 = !DILocation(line: 490, column: 26, scope: !2186)
!2188 = !DILocation(line: 490, column: 24, scope: !2186)
!2189 = !DILocation(line: 490, column: 2, scope: !2183)
!2190 = !DILocalVariable(name: "offset", scope: !2191, file: !2149, line: 491, type: !7)
!2191 = distinct !DILexicalBlock(scope: !2186, file: !2149, line: 490, column: 43)
!2192 = !DILocation(line: 491, column: 16, scope: !2191)
!2193 = !DILocation(line: 491, column: 25, scope: !2191)
!2194 = !DILocation(line: 491, column: 31, scope: !2191)
!2195 = !DILocation(line: 494, column: 7, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2191, file: !2149, line: 494, column: 7)
!2197 = !DILocation(line: 494, column: 12, scope: !2196)
!2198 = !DILocation(line: 494, column: 20, scope: !2196)
!2199 = !DILocation(line: 494, column: 28, scope: !2196)
!2200 = !DILocation(line: 494, column: 31, scope: !2196)
!2201 = !DILocation(line: 494, column: 36, scope: !2196)
!2202 = !DILocation(line: 494, column: 43, scope: !2196)
!2203 = !DILocation(line: 494, column: 48, scope: !2196)
!2204 = !DILocation(line: 494, column: 7, scope: !2191)
!2205 = !DILocation(line: 495, column: 4, scope: !2196)
!2206 = !DILocation(line: 498, column: 7, scope: !2191)
!2207 = !DILocation(line: 498, column: 12, scope: !2191)
!2208 = !DILocation(line: 498, column: 19, scope: !2191)
!2209 = !DILocation(line: 498, column: 24, scope: !2191)
!2210 = !DILocation(line: 498, column: 5, scope: !2191)
!2211 = !DILocation(line: 500, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2191, file: !2149, line: 500, column: 7)
!2213 = !DILocation(line: 500, column: 9, scope: !2212)
!2214 = !DILocation(line: 500, column: 7, scope: !2191)
!2215 = !DILocation(line: 501, column: 4, scope: !2212)
!2216 = !DILocation(line: 502, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2191, file: !2149, line: 502, column: 7)
!2218 = !DILocation(line: 502, column: 9, scope: !2217)
!2219 = !DILocation(line: 502, column: 7, scope: !2191)
!2220 = !DILocalVariable(name: "i", scope: !2221, file: !2149, line: 503, type: !7)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !2149, line: 502, column: 14)
!2222 = !DILocation(line: 503, column: 17, scope: !2221)
!2223 = !DILocation(line: 503, column: 21, scope: !2221)
!2224 = !DILocation(line: 503, column: 28, scope: !2221)
!2225 = !DILocalVariable(name: "end", scope: !2221, file: !2149, line: 504, type: !7)
!2226 = !DILocation(line: 504, column: 17, scope: !2221)
!2227 = !DILocation(line: 504, column: 23, scope: !2221)
!2228 = !DILocation(line: 504, column: 32, scope: !2221)
!2229 = !DILocation(line: 504, column: 30, scope: !2221)
!2230 = !DILocation(line: 507, column: 4, scope: !2221)
!2231 = !DILocalVariable(name: "tag", scope: !2232, file: !2149, line: 508, type: !715)
!2232 = distinct !DILexicalBlock(scope: !2221, file: !2149, line: 507, column: 7)
!2233 = !DILocation(line: 508, column: 8, scope: !2232)
!2234 = !DILocation(line: 508, column: 14, scope: !2232)
!2235 = !DILocation(line: 508, column: 19, scope: !2232)
!2236 = !DILocation(line: 508, column: 22, scope: !2232)
!2237 = !DILocalVariable(name: "len", scope: !2232, file: !2149, line: 509, type: !715)
!2238 = !DILocation(line: 509, column: 8, scope: !2232)
!2239 = !DILocation(line: 509, column: 14, scope: !2232)
!2240 = !DILocation(line: 509, column: 19, scope: !2232)
!2241 = !DILocation(line: 509, column: 22, scope: !2232)
!2242 = !DILocation(line: 511, column: 9, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2232, file: !2149, line: 511, column: 9)
!2244 = !DILocation(line: 511, column: 13, scope: !2243)
!2245 = !DILocation(line: 511, column: 18, scope: !2243)
!2246 = !DILocation(line: 511, column: 21, scope: !2243)
!2247 = !DILocation(line: 511, column: 25, scope: !2243)
!2248 = !DILocation(line: 511, column: 30, scope: !2243)
!2249 = !DILocation(line: 511, column: 33, scope: !2243)
!2250 = !DILocation(line: 511, column: 37, scope: !2243)
!2251 = !DILocation(line: 511, column: 35, scope: !2243)
!2252 = !DILocation(line: 511, column: 44, scope: !2243)
!2253 = !DILocation(line: 511, column: 41, scope: !2243)
!2254 = !DILocation(line: 511, column: 48, scope: !2243)
!2255 = !DILocation(line: 512, column: 9, scope: !2243)
!2256 = !DILocation(line: 512, column: 14, scope: !2243)
!2257 = !DILocation(line: 512, column: 16, scope: !2243)
!2258 = !DILocation(line: 512, column: 21, scope: !2243)
!2259 = !DILocation(line: 512, column: 29, scope: !2243)
!2260 = !DILocation(line: 513, column: 9, scope: !2243)
!2261 = !DILocation(line: 513, column: 14, scope: !2243)
!2262 = !DILocation(line: 513, column: 16, scope: !2243)
!2263 = !DILocation(line: 513, column: 21, scope: !2243)
!2264 = !DILocation(line: 513, column: 29, scope: !2243)
!2265 = !DILocation(line: 514, column: 9, scope: !2243)
!2266 = !DILocation(line: 514, column: 14, scope: !2243)
!2267 = !DILocation(line: 514, column: 16, scope: !2243)
!2268 = !DILocation(line: 514, column: 21, scope: !2243)
!2269 = !DILocation(line: 511, column: 9, scope: !2232)
!2270 = !DILocation(line: 515, column: 13, scope: !2243)
!2271 = !DILocation(line: 515, column: 15, scope: !2243)
!2272 = !DILocation(line: 515, column: 6, scope: !2243)
!2273 = !DILocation(line: 516, column: 10, scope: !2232)
!2274 = !DILocation(line: 516, column: 14, scope: !2232)
!2275 = !DILocation(line: 516, column: 7, scope: !2232)
!2276 = !DILocation(line: 517, column: 4, scope: !2232)
!2277 = !DILocation(line: 517, column: 13, scope: !2221)
!2278 = !DILocation(line: 517, column: 17, scope: !2221)
!2279 = !DILocation(line: 517, column: 15, scope: !2221)
!2280 = distinct !{!2280, !2230, !2281}
!2281 = !DILocation(line: 517, column: 20, scope: !2221)
!2282 = !DILocation(line: 518, column: 3, scope: !2221)
!2283 = !DILocation(line: 519, column: 2, scope: !2191)
!2284 = !DILocation(line: 490, column: 39, scope: !2186)
!2285 = !DILocation(line: 490, column: 2, scope: !2186)
!2286 = distinct !{!2286, !2189, !2287}
!2287 = !DILocation(line: 519, column: 2, scope: !2183)
!2288 = !DILocation(line: 520, column: 2, scope: !2148)
!2289 = !DILocation(line: 521, column: 1, scope: !2148)
!2290 = distinct !DISubprogram(name: "v4l2_set_edid_phys_addr", scope: !3, file: !3, line: 1022, type: !2291, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{null, !2293, !7, !2110}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!2294 = !DILocalVariable(name: "edid", arg: 1, scope: !2290, file: !3, line: 1022, type: !2293)
!2295 = !DILocation(line: 1022, column: 34, scope: !2290)
!2296 = !DILocalVariable(name: "size", arg: 2, scope: !2290, file: !3, line: 1022, type: !7)
!2297 = !DILocation(line: 1022, column: 53, scope: !2290)
!2298 = !DILocalVariable(name: "phys_addr", arg: 3, scope: !2290, file: !3, line: 1022, type: !2110)
!2299 = !DILocation(line: 1022, column: 63, scope: !2290)
!2300 = !DILocalVariable(name: "loc", scope: !2290, file: !3, line: 1024, type: !7)
!2301 = !DILocation(line: 1024, column: 15, scope: !2290)
!2302 = !DILocation(line: 1024, column: 47, scope: !2290)
!2303 = !DILocation(line: 1024, column: 53, scope: !2290)
!2304 = !DILocation(line: 1024, column: 21, scope: !2290)
!2305 = !DILocalVariable(name: "sum", scope: !2290, file: !3, line: 1025, type: !715)
!2306 = !DILocation(line: 1025, column: 5, scope: !2290)
!2307 = !DILocalVariable(name: "i", scope: !2290, file: !3, line: 1026, type: !7)
!2308 = !DILocation(line: 1026, column: 15, scope: !2290)
!2309 = !DILocation(line: 1028, column: 6, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 1028, column: 6)
!2311 = !DILocation(line: 1028, column: 10, scope: !2310)
!2312 = !DILocation(line: 1028, column: 6, scope: !2290)
!2313 = !DILocation(line: 1029, column: 3, scope: !2310)
!2314 = !DILocation(line: 1030, column: 14, scope: !2290)
!2315 = !DILocation(line: 1030, column: 24, scope: !2290)
!2316 = !DILocation(line: 1030, column: 2, scope: !2290)
!2317 = !DILocation(line: 1030, column: 7, scope: !2290)
!2318 = !DILocation(line: 1030, column: 12, scope: !2290)
!2319 = !DILocation(line: 1031, column: 18, scope: !2290)
!2320 = !DILocation(line: 1031, column: 28, scope: !2290)
!2321 = !DILocation(line: 1031, column: 2, scope: !2290)
!2322 = !DILocation(line: 1031, column: 7, scope: !2290)
!2323 = !DILocation(line: 1031, column: 11, scope: !2290)
!2324 = !DILocation(line: 1031, column: 16, scope: !2290)
!2325 = !DILocation(line: 1032, column: 6, scope: !2290)
!2326 = !DILocation(line: 1035, column: 11, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 1035, column: 2)
!2328 = !DILocation(line: 1035, column: 9, scope: !2327)
!2329 = !DILocation(line: 1035, column: 7, scope: !2327)
!2330 = !DILocation(line: 1035, column: 16, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 1035, column: 2)
!2332 = !DILocation(line: 1035, column: 20, scope: !2331)
!2333 = !DILocation(line: 1035, column: 24, scope: !2331)
!2334 = !DILocation(line: 1035, column: 18, scope: !2331)
!2335 = !DILocation(line: 1035, column: 2, scope: !2327)
!2336 = !DILocation(line: 1036, column: 10, scope: !2331)
!2337 = !DILocation(line: 1036, column: 15, scope: !2331)
!2338 = !DILocation(line: 1036, column: 7, scope: !2331)
!2339 = !DILocation(line: 1036, column: 3, scope: !2331)
!2340 = !DILocation(line: 1035, column: 32, scope: !2331)
!2341 = !DILocation(line: 1035, column: 2, scope: !2331)
!2342 = distinct !{!2342, !2335, !2343}
!2343 = !DILocation(line: 1036, column: 16, scope: !2327)
!2344 = !DILocation(line: 1037, column: 18, scope: !2290)
!2345 = !DILocation(line: 1037, column: 16, scope: !2290)
!2346 = !DILocation(line: 1037, column: 12, scope: !2290)
!2347 = !DILocation(line: 1037, column: 2, scope: !2290)
!2348 = !DILocation(line: 1037, column: 7, scope: !2290)
!2349 = !DILocation(line: 1037, column: 10, scope: !2290)
!2350 = !DILocation(line: 1038, column: 1, scope: !2290)
!2351 = distinct !DISubprogram(name: "v4l2_phys_addr_for_input", scope: !3, file: !3, line: 1060, type: !2352, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!2110, !2110, !715}
!2354 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !2351, file: !3, line: 1060, type: !2110)
!2355 = !DILocation(line: 1060, column: 34, scope: !2351)
!2356 = !DILocalVariable(name: "input", arg: 2, scope: !2351, file: !3, line: 1060, type: !715)
!2357 = !DILocation(line: 1060, column: 48, scope: !2351)
!2358 = !DILocalVariable(name: "__ret_warn_on", scope: !2359, file: !3, line: 1063, type: !135)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 1063, column: 6)
!2360 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1063, column: 6)
!2361 = !DILocation(line: 1063, column: 6, scope: !2359)
!2362 = !DILocation(line: 1063, column: 6, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 1063, column: 6)
!2364 = !DILocation(line: 1063, column: 6, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 1063, column: 6)
!2366 = !DILocation(line: 1063, column: 6, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 1063, column: 6)
!2368 = !DILocation(line: 1063, column: 6, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 1063, column: 6)
!2370 = !{i32 -2141548378, i32 -2141548349, i32 -2141548303, i32 -2141548245, i32 -2141548191, i32 -2141548137, i32 -2141548082, i32 -2141548051}
!2371 = !DILocation(line: 1063, column: 6, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 1063, column: 6)
!2373 = !{i32 -2141547627, i32 -2141547620, i32 -2141547568, i32 -2141547537, i32 -2141547507}
!2374 = !DILocation(line: 1063, column: 6, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 1063, column: 6)
!2376 = !DILocation(line: 1063, column: 6, scope: !2360)
!2377 = !DILocation(line: 1063, column: 6, scope: !2351)
!2378 = !DILocation(line: 1064, column: 3, scope: !2360)
!2379 = !DILocation(line: 1066, column: 6, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1066, column: 6)
!2381 = !DILocation(line: 1066, column: 16, scope: !2380)
!2382 = !DILocation(line: 1066, column: 6, scope: !2351)
!2383 = !DILocation(line: 1067, column: 10, scope: !2380)
!2384 = !DILocation(line: 1067, column: 16, scope: !2380)
!2385 = !DILocation(line: 1067, column: 3, scope: !2380)
!2386 = !DILocation(line: 1069, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1069, column: 6)
!2388 = !DILocation(line: 1069, column: 17, scope: !2387)
!2389 = !DILocation(line: 1069, column: 27, scope: !2387)
!2390 = !DILocation(line: 1069, column: 6, scope: !2351)
!2391 = !DILocation(line: 1070, column: 10, scope: !2387)
!2392 = !DILocation(line: 1070, column: 23, scope: !2387)
!2393 = !DILocation(line: 1070, column: 29, scope: !2387)
!2394 = !DILocation(line: 1070, column: 20, scope: !2387)
!2395 = !DILocation(line: 1070, column: 3, scope: !2387)
!2396 = !DILocation(line: 1072, column: 7, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1072, column: 6)
!2398 = !DILocation(line: 1072, column: 17, scope: !2397)
!2399 = !DILocation(line: 1072, column: 27, scope: !2397)
!2400 = !DILocation(line: 1072, column: 6, scope: !2351)
!2401 = !DILocation(line: 1073, column: 10, scope: !2397)
!2402 = !DILocation(line: 1073, column: 23, scope: !2397)
!2403 = !DILocation(line: 1073, column: 29, scope: !2397)
!2404 = !DILocation(line: 1073, column: 20, scope: !2397)
!2405 = !DILocation(line: 1073, column: 3, scope: !2397)
!2406 = !DILocation(line: 1075, column: 7, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1075, column: 6)
!2408 = !DILocation(line: 1075, column: 17, scope: !2407)
!2409 = !DILocation(line: 1075, column: 27, scope: !2407)
!2410 = !DILocation(line: 1075, column: 6, scope: !2351)
!2411 = !DILocation(line: 1076, column: 10, scope: !2407)
!2412 = !DILocation(line: 1076, column: 22, scope: !2407)
!2413 = !DILocation(line: 1076, column: 20, scope: !2407)
!2414 = !DILocation(line: 1076, column: 3, scope: !2407)
!2415 = !DILocation(line: 1082, column: 2, scope: !2351)
!2416 = !DILocation(line: 1083, column: 1, scope: !2351)
!2417 = distinct !DISubprogram(name: "v4l2_phys_addr_validate", scope: !3, file: !3, line: 1110, type: !2418, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !266)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!135, !2110, !2420, !2420}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2421 = !DILocalVariable(name: "phys_addr", arg: 1, scope: !2417, file: !3, line: 1110, type: !2110)
!2422 = !DILocation(line: 1110, column: 33, scope: !2417)
!2423 = !DILocalVariable(name: "parent", arg: 2, scope: !2417, file: !3, line: 1110, type: !2420)
!2424 = !DILocation(line: 1110, column: 49, scope: !2417)
!2425 = !DILocalVariable(name: "port", arg: 3, scope: !2417, file: !3, line: 1110, type: !2420)
!2426 = !DILocation(line: 1110, column: 62, scope: !2417)
!2427 = !DILocalVariable(name: "i", scope: !2417, file: !3, line: 1112, type: !135)
!2428 = !DILocation(line: 1112, column: 6, scope: !2417)
!2429 = !DILocation(line: 1114, column: 6, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1114, column: 6)
!2431 = !DILocation(line: 1114, column: 6, scope: !2417)
!2432 = !DILocation(line: 1115, column: 13, scope: !2430)
!2433 = !DILocation(line: 1115, column: 4, scope: !2430)
!2434 = !DILocation(line: 1115, column: 11, scope: !2430)
!2435 = !DILocation(line: 1115, column: 3, scope: !2430)
!2436 = !DILocation(line: 1116, column: 6, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1116, column: 6)
!2438 = !DILocation(line: 1116, column: 6, scope: !2417)
!2439 = !DILocation(line: 1117, column: 4, scope: !2437)
!2440 = !DILocation(line: 1117, column: 9, scope: !2437)
!2441 = !DILocation(line: 1117, column: 3, scope: !2437)
!2442 = !DILocation(line: 1118, column: 6, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1118, column: 6)
!2444 = !DILocation(line: 1118, column: 16, scope: !2443)
!2445 = !DILocation(line: 1118, column: 6, scope: !2417)
!2446 = !DILocation(line: 1119, column: 3, scope: !2443)
!2447 = !DILocation(line: 1120, column: 9, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1120, column: 2)
!2449 = !DILocation(line: 1120, column: 7, scope: !2448)
!2450 = !DILocation(line: 1120, column: 14, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1120, column: 2)
!2452 = !DILocation(line: 1120, column: 16, scope: !2451)
!2453 = !DILocation(line: 1120, column: 2, scope: !2448)
!2454 = !DILocation(line: 1121, column: 7, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1121, column: 7)
!2456 = !DILocation(line: 1121, column: 27, scope: !2455)
!2457 = !DILocation(line: 1121, column: 24, scope: !2455)
!2458 = !DILocation(line: 1121, column: 17, scope: !2455)
!2459 = !DILocation(line: 1121, column: 7, scope: !2451)
!2460 = !DILocation(line: 1122, column: 4, scope: !2455)
!2461 = !DILocation(line: 1121, column: 28, scope: !2455)
!2462 = !DILocation(line: 1120, column: 24, scope: !2451)
!2463 = !DILocation(line: 1120, column: 2, scope: !2451)
!2464 = distinct !{!2464, !2453, !2465}
!2465 = !DILocation(line: 1122, column: 4, scope: !2448)
!2466 = !DILocation(line: 1123, column: 6, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1123, column: 6)
!2468 = !DILocation(line: 1123, column: 8, scope: !2467)
!2469 = !DILocation(line: 1123, column: 6, scope: !2417)
!2470 = !DILocation(line: 1124, column: 3, scope: !2467)
!2471 = !DILocation(line: 1125, column: 6, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1125, column: 6)
!2473 = !DILocation(line: 1125, column: 6, scope: !2417)
!2474 = !DILocation(line: 1126, column: 13, scope: !2472)
!2475 = !DILocation(line: 1126, column: 36, scope: !2472)
!2476 = !DILocation(line: 1126, column: 33, scope: !2472)
!2477 = !DILocation(line: 1126, column: 23, scope: !2472)
!2478 = !DILocation(line: 1126, column: 4, scope: !2472)
!2479 = !DILocation(line: 1126, column: 11, scope: !2472)
!2480 = !DILocation(line: 1126, column: 3, scope: !2472)
!2481 = !DILocation(line: 1127, column: 6, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1127, column: 6)
!2483 = !DILocation(line: 1127, column: 6, scope: !2417)
!2484 = !DILocation(line: 1128, column: 12, scope: !2482)
!2485 = !DILocation(line: 1128, column: 25, scope: !2482)
!2486 = !DILocation(line: 1128, column: 22, scope: !2482)
!2487 = !DILocation(line: 1128, column: 28, scope: !2482)
!2488 = !DILocation(line: 1128, column: 11, scope: !2482)
!2489 = !DILocation(line: 1128, column: 4, scope: !2482)
!2490 = !DILocation(line: 1128, column: 9, scope: !2482)
!2491 = !DILocation(line: 1128, column: 3, scope: !2482)
!2492 = !DILocation(line: 1129, column: 9, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1129, column: 2)
!2494 = !DILocation(line: 1129, column: 7, scope: !2493)
!2495 = !DILocation(line: 1129, column: 15, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1129, column: 2)
!2497 = !DILocation(line: 1129, column: 17, scope: !2496)
!2498 = !DILocation(line: 1129, column: 2, scope: !2493)
!2499 = !DILocation(line: 1130, column: 8, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 1130, column: 7)
!2501 = !DILocation(line: 1130, column: 28, scope: !2500)
!2502 = !DILocation(line: 1130, column: 25, scope: !2500)
!2503 = !DILocation(line: 1130, column: 18, scope: !2500)
!2504 = !DILocation(line: 1130, column: 32, scope: !2500)
!2505 = !DILocation(line: 1130, column: 7, scope: !2496)
!2506 = !DILocation(line: 1131, column: 4, scope: !2500)
!2507 = !DILocation(line: 1130, column: 35, scope: !2500)
!2508 = !DILocation(line: 1129, column: 25, scope: !2496)
!2509 = !DILocation(line: 1129, column: 2, scope: !2496)
!2510 = distinct !{!2510, !2498, !2511}
!2511 = !DILocation(line: 1131, column: 12, scope: !2493)
!2512 = !DILocation(line: 1132, column: 2, scope: !2417)
!2513 = !DILocation(line: 1133, column: 1, scope: !2417)
!2514 = distinct !DISubprogram(name: "div_u64_rem", scope: !854, file: !854, line: 25, type: !2515, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !266)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!148, !148, !288, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!2518 = !DILocalVariable(name: "dividend", arg: 1, scope: !2514, file: !854, line: 25, type: !148)
!2519 = !DILocation(line: 25, column: 35, scope: !2514)
!2520 = !DILocalVariable(name: "divisor", arg: 2, scope: !2514, file: !854, line: 25, type: !288)
!2521 = !DILocation(line: 25, column: 49, scope: !2514)
!2522 = !DILocalVariable(name: "remainder", arg: 3, scope: !2514, file: !854, line: 25, type: !2517)
!2523 = !DILocation(line: 25, column: 63, scope: !2514)
!2524 = !DILocation(line: 27, column: 15, scope: !2514)
!2525 = !DILocation(line: 27, column: 26, scope: !2514)
!2526 = !DILocation(line: 27, column: 24, scope: !2514)
!2527 = !DILocation(line: 27, column: 3, scope: !2514)
!2528 = !DILocation(line: 27, column: 13, scope: !2514)
!2529 = !DILocation(line: 28, column: 9, scope: !2514)
!2530 = !DILocation(line: 28, column: 20, scope: !2514)
!2531 = !DILocation(line: 28, column: 18, scope: !2514)
!2532 = !DILocation(line: 28, column: 2, scope: !2514)
