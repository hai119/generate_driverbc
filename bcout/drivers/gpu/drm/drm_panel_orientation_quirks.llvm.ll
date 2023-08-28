; ModuleID = '../bcout/drivers/gpu/drm/drm_panel_orientation_quirks.llvm.bc'
source_filename = "drivers/gpu/drm/drm_panel_orientation_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.dmi_system_id = type { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.drm_dmi_panel_orientation_data = type { i32, i32, i8**, i32 }

@orientation_data = internal constant [16 x %struct.dmi_system_id] [%struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"Acer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"One S1003\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @lcd800x1280_rightside_up to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"T100HAN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @asus_t100ha to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"T101HA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @lcd800x1280_rightside_up to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"ASUSTeK COMPUTER INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"T103HAF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @lcd800x1280_rightside_up to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -115, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -114, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @gpd_micropc to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"GPD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"MicroPC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @lcd720x1280_rightside_up to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -115, [79 x i8] c"AMI Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -114, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -112, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @gpd_pocket to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -115, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -114, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @gpd_pocket2 to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -115, [79 x i8] c"AMI Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -114, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -112, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @gpd_win to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -115, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -114, [79 x i8] c"Default string\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @gpd_win2 to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"To be filled by O.E.M.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"TW891\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -115, [79 x i8] c"To be filled by O.E.M.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -114, [79 x i8] c"TW891\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @itworks_tw891 to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"80SG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -120, [79 x i8] c"MIIX 310-10ICR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @lcd800x1280_rightside_up to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"80XF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -120, [79 x i8] c"Lenovo MIIX 320-10ICR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @lcd800x1280_rightside_up to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"81H3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -120, [79 x i8] c"Lenovo ideapad D330-10IGM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @lcd1200x1920_rightside_up to i8*) }, %struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"VIOS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -121, [79 x i8] c"LTH17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* bitcast (%struct.drm_dmi_panel_orientation_data* @lcd800x1280_rightside_up to i8*) }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !0
@__UNIQUE_ID_file232 = internal constant [79 x i8] c"drm_panel_orientation_quirks.file=drivers/gpu/drm/drm_panel_orientation_quirks\00", section ".modinfo", align 1, !dbg !44
@__UNIQUE_ID_license233 = internal constant [50 x i8] c"drm_panel_orientation_quirks.license=Dual MIT/GPL\00", section ".modinfo", align 1, !dbg !51
@lcd800x1280_rightside_up = internal constant %struct.drm_dmi_panel_orientation_data { i32 800, i32 1280, i8** null, i32 3 }, align 8, !dbg !56
@asus_t100ha = internal constant %struct.drm_dmi_panel_orientation_data { i32 800, i32 1280, i8** null, i32 2 }, align 8, !dbg !68
@gpd_micropc = internal constant %struct.drm_dmi_panel_orientation_data { i32 720, i32 1280, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @.compoundliteral, i32 0, i32 0), i32 3 }, align 8, !dbg !70
@lcd720x1280_rightside_up = internal constant %struct.drm_dmi_panel_orientation_data { i32 720, i32 1280, i8** null, i32 3 }, align 8, !dbg !72
@gpd_pocket = internal constant %struct.drm_dmi_panel_orientation_data { i32 1200, i32 1920, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @.compoundliteral.5, i32 0, i32 0), i32 3 }, align 8, !dbg !74
@gpd_pocket2 = internal constant %struct.drm_dmi_panel_orientation_data { i32 1200, i32 1920, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @.compoundliteral.9, i32 0, i32 0), i32 3 }, align 8, !dbg !76
@gpd_win = internal constant %struct.drm_dmi_panel_orientation_data { i32 720, i32 1280, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @.compoundliteral.17, i32 0, i32 0), i32 3 }, align 8, !dbg !78
@gpd_win2 = internal constant %struct.drm_dmi_panel_orientation_data { i32 720, i32 1280, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @.compoundliteral.21, i32 0, i32 0), i32 3 }, align 8, !dbg !80
@itworks_tw891 = internal constant %struct.drm_dmi_panel_orientation_data { i32 800, i32 1280, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @.compoundliteral.23, i32 0, i32 0), i32 3 }, align 8, !dbg !82
@lcd1200x1920_rightside_up = internal constant %struct.drm_dmi_panel_orientation_data { i32 1200, i32 1920, i8** null, i32 3 }, align 8, !dbg !84
@.str = private unnamed_addr constant [11 x i8] c"04/26/2019\00", align 1
@.compoundliteral = internal constant [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* null], align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"05/26/2017\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"06/28/2017\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"07/05/2017\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"08/07/2017\00", align 1
@.compoundliteral.5 = internal constant [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null], align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"06/28/2018\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"08/28/2018\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"12/07/2018\00", align 1
@.compoundliteral.9 = internal constant [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* null], align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"10/25/2016\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"11/18/2016\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"12/23/2016\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"12/26/2016\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"02/21/2017\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"03/20/2017\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"05/25/2017\00", align 1
@.compoundliteral.17 = internal constant [8 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* null], align 8
@.str.18 = private unnamed_addr constant [11 x i8] c"12/07/2017\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"05/24/2018\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"06/29/2018\00", align 1
@.compoundliteral.21 = internal constant [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* null], align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"10/16/2015\00", align 1
@.compoundliteral.23 = internal constant [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* null], align 8
@llvm.used = appending global [2 x i8*] [i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__UNIQUE_ID_file232, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_license233, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @drm_get_panel_orientation_quirk(i32 %width, i32 %height) #0 !dbg !116 {
entry:
  %retval = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %match = alloca %struct.dmi_system_id*, align 8
  %data = alloca %struct.drm_dmi_panel_orientation_data*, align 8
  %bios_date = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !120, metadata !DIExpression()), !dbg !121
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %match, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata %struct.drm_dmi_panel_orientation_data** %data, metadata !126, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i8** %bios_date, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %i, metadata !131, metadata !DIExpression()), !dbg !132
  %call = call %struct.dmi_system_id* @dmi_first_match(%struct.dmi_system_id* getelementptr inbounds ([16 x %struct.dmi_system_id], [16 x %struct.dmi_system_id]* @orientation_data, i64 0, i64 0)) #3, !dbg !133
  store %struct.dmi_system_id* %call, %struct.dmi_system_id** %match, align 8, !dbg !135
  br label %for.cond, !dbg !136

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %match, align 8, !dbg !137
  %tobool = icmp ne %struct.dmi_system_id* %0, null, !dbg !139
  br i1 %tobool, label %for.body, label %for.end, !dbg !139

for.body:                                         ; preds = %for.cond
  %1 = load %struct.dmi_system_id*, %struct.dmi_system_id** %match, align 8, !dbg !140
  %driver_data = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %1, i32 0, i32 3, !dbg !142
  %2 = load i8*, i8** %driver_data, align 8, !dbg !142
  %3 = bitcast i8* %2 to %struct.drm_dmi_panel_orientation_data*, !dbg !140
  store %struct.drm_dmi_panel_orientation_data* %3, %struct.drm_dmi_panel_orientation_data** %data, align 8, !dbg !143
  %4 = load %struct.drm_dmi_panel_orientation_data*, %struct.drm_dmi_panel_orientation_data** %data, align 8, !dbg !144
  %width1 = getelementptr inbounds %struct.drm_dmi_panel_orientation_data, %struct.drm_dmi_panel_orientation_data* %4, i32 0, i32 0, !dbg !146
  %5 = load i32, i32* %width1, align 8, !dbg !146
  %6 = load i32, i32* %width.addr, align 4, !dbg !147
  %cmp = icmp ne i32 %5, %6, !dbg !148
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !149

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.drm_dmi_panel_orientation_data*, %struct.drm_dmi_panel_orientation_data** %data, align 8, !dbg !150
  %height2 = getelementptr inbounds %struct.drm_dmi_panel_orientation_data, %struct.drm_dmi_panel_orientation_data* %7, i32 0, i32 1, !dbg !151
  %8 = load i32, i32* %height2, align 4, !dbg !151
  %9 = load i32, i32* %height.addr, align 4, !dbg !152
  %cmp3 = icmp ne i32 %8, %9, !dbg !153
  br i1 %cmp3, label %if.then, label %if.end, !dbg !154

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !155

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.drm_dmi_panel_orientation_data*, %struct.drm_dmi_panel_orientation_data** %data, align 8, !dbg !156
  %bios_dates = getelementptr inbounds %struct.drm_dmi_panel_orientation_data, %struct.drm_dmi_panel_orientation_data* %10, i32 0, i32 2, !dbg !158
  %11 = load i8**, i8*** %bios_dates, align 8, !dbg !158
  %tobool4 = icmp ne i8** %11, null, !dbg !156
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !159

if.then5:                                         ; preds = %if.end
  %12 = load %struct.drm_dmi_panel_orientation_data*, %struct.drm_dmi_panel_orientation_data** %data, align 8, !dbg !160
  %orientation = getelementptr inbounds %struct.drm_dmi_panel_orientation_data, %struct.drm_dmi_panel_orientation_data* %12, i32 0, i32 3, !dbg !161
  %13 = load i32, i32* %orientation, align 8, !dbg !161
  store i32 %13, i32* %retval, align 4, !dbg !162
  br label %return, !dbg !162

if.end6:                                          ; preds = %if.end
  %call7 = call i8* @dmi_get_system_info(i32 3) #3, !dbg !163
  store i8* %call7, i8** %bios_date, align 8, !dbg !164
  %14 = load i8*, i8** %bios_date, align 8, !dbg !165
  %tobool8 = icmp ne i8* %14, null, !dbg !165
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !167

if.then9:                                         ; preds = %if.end6
  br label %for.inc, !dbg !168

if.end10:                                         ; preds = %if.end6
  %15 = load %struct.drm_dmi_panel_orientation_data*, %struct.drm_dmi_panel_orientation_data** %data, align 8, !dbg !169
  %bios_dates11 = getelementptr inbounds %struct.drm_dmi_panel_orientation_data, %struct.drm_dmi_panel_orientation_data* %15, i32 0, i32 2, !dbg !170
  %16 = load i8**, i8*** %bios_dates11, align 8, !dbg !170
  %17 = load i8*, i8** %bios_date, align 8, !dbg !171
  %call12 = call i32 @match_string(i8** %16, i64 -1, i8* %17) #3, !dbg !172
  store i32 %call12, i32* %i, align 4, !dbg !173
  %18 = load i32, i32* %i, align 4, !dbg !174
  %cmp13 = icmp sge i32 %18, 0, !dbg !176
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !177

if.then14:                                        ; preds = %if.end10
  %19 = load %struct.drm_dmi_panel_orientation_data*, %struct.drm_dmi_panel_orientation_data** %data, align 8, !dbg !178
  %orientation15 = getelementptr inbounds %struct.drm_dmi_panel_orientation_data, %struct.drm_dmi_panel_orientation_data* %19, i32 0, i32 3, !dbg !179
  %20 = load i32, i32* %orientation15, align 8, !dbg !179
  store i32 %20, i32* %retval, align 4, !dbg !180
  br label %return, !dbg !180

if.end16:                                         ; preds = %if.end10
  br label %for.inc, !dbg !181

for.inc:                                          ; preds = %if.end16, %if.then9, %if.then
  %21 = load %struct.dmi_system_id*, %struct.dmi_system_id** %match, align 8, !dbg !182
  %add.ptr = getelementptr %struct.dmi_system_id, %struct.dmi_system_id* %21, i64 1, !dbg !183
  %call17 = call %struct.dmi_system_id* @dmi_first_match(%struct.dmi_system_id* %add.ptr) #3, !dbg !184
  store %struct.dmi_system_id* %call17, %struct.dmi_system_id** %match, align 8, !dbg !185
  br label %for.cond, !dbg !186, !llvm.loop !187

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4, !dbg !189
  br label %return, !dbg !189

return:                                           ; preds = %for.end, %if.then14, %if.then5
  %22 = load i32, i32* %retval, align 4, !dbg !190
  ret i32 %22, !dbg !190
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.dmi_system_id* @dmi_first_match(%struct.dmi_system_id*) #2

; Function Attrs: noredzone
declare dso_local i8* @dmi_get_system_info(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @match_string(i8**, i64, i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "orientation_data", scope: !2, file: !3, line: 105, type: !86, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !43, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_panel_orientation_quirks.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !34}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmi_field", file: !6, line: 532, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!9 = !DIEnumerator(name: "DMI_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "DMI_BIOS_VENDOR", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "DMI_BIOS_VERSION", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "DMI_BIOS_DATE", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "DMI_BIOS_RELEASE", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "DMI_EC_FIRMWARE_RELEASE", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "DMI_SYS_VENDOR", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "DMI_PRODUCT_NAME", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "DMI_PRODUCT_VERSION", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "DMI_PRODUCT_SERIAL", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "DMI_PRODUCT_UUID", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "DMI_PRODUCT_SKU", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "DMI_PRODUCT_FAMILY", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "DMI_BOARD_VENDOR", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "DMI_BOARD_NAME", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "DMI_BOARD_VERSION", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "DMI_BOARD_SERIAL", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "DMI_BOARD_ASSET_TAG", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "DMI_CHASSIS_VENDOR", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "DMI_CHASSIS_TYPE", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "DMI_CHASSIS_VERSION", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "DMI_CHASSIS_SERIAL", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "DMI_CHASSIS_ASSET_TAG", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "DMI_STRING_MAX", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "DMI_OEM_STRING", value: 24, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !35, line: 249, baseType: !36, size: 32, elements: !37)
!35 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/lizy2001/genbc/linux")
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!39 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!40 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!41 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!42 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!43 = !{!44, !51, !0, !56, !68, !70, !72, !74, !76, !78, !80, !82, !84}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file232", scope: !2, file: !3, line: 286, type: !46, isLocal: true, isDefinition: true, align: 8)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 632, elements: !49)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !{!50}
!50 = !DISubrange(count: 79)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license233", scope: !2, file: !3, line: 286, type: !53, isLocal: true, isDefinition: true, align: 8)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 400, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 50)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "lcd800x1280_rightside_up", scope: !2, file: !3, line: 93, type: !58, isLocal: true, isDefinition: true)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_dmi_panel_orientation_data", file: !3, line: 26, size: 192, elements: !60)
!60 = !{!61, !62, !63, !67}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !59, file: !3, line: 27, baseType: !36, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !59, file: !3, line: 28, baseType: !36, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "bios_dates", scope: !59, file: !3, line: 29, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !59, file: !3, line: 30, baseType: !36, size: 32, offset: 128)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "asus_t100ha", scope: !2, file: !3, line: 33, type: !58, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "gpd_micropc", scope: !2, file: !3, line: 39, type: !58, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "lcd720x1280_rightside_up", scope: !2, file: !3, line: 87, type: !58, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "gpd_pocket", scope: !2, file: !3, line: 47, type: !58, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "gpd_pocket2", scope: !2, file: !3, line: 55, type: !58, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "gpd_win", scope: !2, file: !3, line: 63, type: !58, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "gpd_win2", scope: !2, file: !3, line: 72, type: !58, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "itworks_tw891", scope: !2, file: !3, line: 80, type: !58, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "lcd1200x1920_rightside_up", scope: !2, file: !3, line: 99, type: !58, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 44032, elements: !109)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !6, line: 566, size: 2752, elements: !89)
!89 = !{!90, !95, !96, !107}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !88, file: !6, line: 567, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!36, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !88, file: !6, line: 568, baseType: !66, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !88, file: !6, line: 569, baseType: !97, size: 2560, offset: 128)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 2560, elements: !105)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !6, line: 560, size: 640, elements: !99)
!99 = !{!100, !102, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !98, file: !6, line: 561, baseType: !101, size: 7, flags: DIFlagBitField, extraData: i64 0)
!101 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !98, file: !6, line: 562, baseType: !101, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !98, file: !6, line: 563, baseType: !104, size: 632, offset: 8)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 632, elements: !49)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !88, file: !6, line: 570, baseType: !108, size: 64, offset: 2688)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !{!110}
!110 = !DISubrange(count: 16)
!111 = !{i32 7, !"Dwarf Version", i32 4}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"Code Model", i32 2}
!115 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!116 = distinct !DISubprogram(name: "drm_get_panel_orientation_quirk", scope: !3, file: !3, line: 243, type: !117, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{!36, !36, !36}
!119 = !{}
!120 = !DILocalVariable(name: "width", arg: 1, scope: !116, file: !3, line: 243, type: !36)
!121 = !DILocation(line: 243, column: 41, scope: !116)
!122 = !DILocalVariable(name: "height", arg: 2, scope: !116, file: !3, line: 243, type: !36)
!123 = !DILocation(line: 243, column: 52, scope: !116)
!124 = !DILocalVariable(name: "match", scope: !116, file: !3, line: 245, type: !94)
!125 = !DILocation(line: 245, column: 30, scope: !116)
!126 = !DILocalVariable(name: "data", scope: !116, file: !3, line: 246, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!128 = !DILocation(line: 246, column: 47, scope: !116)
!129 = !DILocalVariable(name: "bios_date", scope: !116, file: !3, line: 247, type: !66)
!130 = !DILocation(line: 247, column: 14, scope: !116)
!131 = !DILocalVariable(name: "i", scope: !116, file: !3, line: 248, type: !36)
!132 = !DILocation(line: 248, column: 6, scope: !116)
!133 = !DILocation(line: 250, column: 15, scope: !134)
!134 = distinct !DILexicalBlock(scope: !116, file: !3, line: 250, column: 2)
!135 = !DILocation(line: 250, column: 13, scope: !134)
!136 = !DILocation(line: 250, column: 7, scope: !134)
!137 = !DILocation(line: 251, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !134, file: !3, line: 250, column: 2)
!139 = !DILocation(line: 250, column: 2, scope: !134)
!140 = !DILocation(line: 253, column: 10, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !3, line: 252, column: 43)
!142 = !DILocation(line: 253, column: 17, scope: !141)
!143 = !DILocation(line: 253, column: 8, scope: !141)
!144 = !DILocation(line: 255, column: 7, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !3, line: 255, column: 7)
!146 = !DILocation(line: 255, column: 13, scope: !145)
!147 = !DILocation(line: 255, column: 22, scope: !145)
!148 = !DILocation(line: 255, column: 19, scope: !145)
!149 = !DILocation(line: 255, column: 28, scope: !145)
!150 = !DILocation(line: 256, column: 7, scope: !145)
!151 = !DILocation(line: 256, column: 13, scope: !145)
!152 = !DILocation(line: 256, column: 23, scope: !145)
!153 = !DILocation(line: 256, column: 20, scope: !145)
!154 = !DILocation(line: 255, column: 7, scope: !141)
!155 = !DILocation(line: 257, column: 4, scope: !145)
!156 = !DILocation(line: 259, column: 8, scope: !157)
!157 = distinct !DILexicalBlock(scope: !141, file: !3, line: 259, column: 7)
!158 = !DILocation(line: 259, column: 14, scope: !157)
!159 = !DILocation(line: 259, column: 7, scope: !141)
!160 = !DILocation(line: 260, column: 11, scope: !157)
!161 = !DILocation(line: 260, column: 17, scope: !157)
!162 = !DILocation(line: 260, column: 4, scope: !157)
!163 = !DILocation(line: 262, column: 15, scope: !141)
!164 = !DILocation(line: 262, column: 13, scope: !141)
!165 = !DILocation(line: 263, column: 8, scope: !166)
!166 = distinct !DILexicalBlock(scope: !141, file: !3, line: 263, column: 7)
!167 = !DILocation(line: 263, column: 7, scope: !141)
!168 = !DILocation(line: 264, column: 4, scope: !166)
!169 = !DILocation(line: 266, column: 20, scope: !141)
!170 = !DILocation(line: 266, column: 26, scope: !141)
!171 = !DILocation(line: 266, column: 42, scope: !141)
!172 = !DILocation(line: 266, column: 7, scope: !141)
!173 = !DILocation(line: 266, column: 5, scope: !141)
!174 = !DILocation(line: 267, column: 7, scope: !175)
!175 = distinct !DILexicalBlock(scope: !141, file: !3, line: 267, column: 7)
!176 = !DILocation(line: 267, column: 9, scope: !175)
!177 = !DILocation(line: 267, column: 7, scope: !141)
!178 = !DILocation(line: 268, column: 11, scope: !175)
!179 = !DILocation(line: 268, column: 17, scope: !175)
!180 = !DILocation(line: 268, column: 4, scope: !175)
!181 = !DILocation(line: 269, column: 2, scope: !141)
!182 = !DILocation(line: 252, column: 31, scope: !138)
!183 = !DILocation(line: 252, column: 37, scope: !138)
!184 = !DILocation(line: 252, column: 15, scope: !138)
!185 = !DILocation(line: 252, column: 13, scope: !138)
!186 = !DILocation(line: 250, column: 2, scope: !138)
!187 = distinct !{!187, !139, !188}
!188 = !DILocation(line: 269, column: 2, scope: !134)
!189 = !DILocation(line: 271, column: 2, scope: !116)
!190 = !DILocation(line: 272, column: 1, scope: !116)
