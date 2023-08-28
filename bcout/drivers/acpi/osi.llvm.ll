; ModuleID = '../bcout/drivers/acpi/osi.llvm.bc'
source_filename = "drivers/acpi/osi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_osi_config = type { i8, i8, [2 x i8] }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.acpi_osi_entry = type { [64 x i8], i8 }
%struct.dmi_system_id = type { {}*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }

@acpi_gbl_create_osi_method = external dso_local global i8, align 1
@.str = private unnamed_addr constant [30 x i8] c"\016ACPI: _OSI method disabled\0A\00", align 1
@osi_config = internal global %struct.acpi_osi_config zeroinitializer, align 4, !dbg !0
@__setup_str_osi_setup = internal constant [10 x i8] c"acpi_osi=\00", section ".init.rodata", align 1, !dbg !45
@__setup_osi_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__setup_str_osi_setup, i32 0, i32 0), i32 (i8*)* @osi_setup, i32 0 }, section ".init.setup", align 8, !dbg !14
@acpi_gbl_osi_data = external dso_local global i8, align 1
@osi_setup_entries = internal global <{ %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, [9 x %struct.acpi_osi_entry] }> <{ %struct.acpi_osi_entry { [64 x i8] c"Module Device\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1 }, %struct.acpi_osi_entry { [64 x i8] c"Processor Device\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1 }, %struct.acpi_osi_entry { [64 x i8] c"3.0 _SCP Extensions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1 }, %struct.acpi_osi_entry { [64 x i8] c"Processor Aggregator Device\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1 }, %struct.acpi_osi_entry { [64 x i8] c"Linux-Dell-Video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1 }, %struct.acpi_osi_entry { [64 x i8] c"Linux-Lenovo-NV-HDMI-Audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1 }, %struct.acpi_osi_entry { [64 x i8] c"Linux-HPI-Hybrid-Graphics\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1 }, [9 x %struct.acpi_osi_entry] zeroinitializer }>, section ".init.data", align 16, !dbg !30
@.str.2 = private unnamed_addr constant [6 x i8] c"Linux\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"!Linux\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Darwin\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"!Darwin\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"!!\00", align 1
@x86_apple_machine = external dso_local global i8, align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Fujitsu Siemens\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"MSI GX723\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Sony VGN-NS10J_S\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Sony VGN-SR290J\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"VGN-NS50B_L\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"VGN-SR19XN\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Toshiba Satellite L355\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"ASUS K50IJ\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Toshiba P305D\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Toshiba NB100\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Dell Inspiron 7737\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Dell Inspiron 7537\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Dell Inspiron 5437\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Dell Inspiron 3437\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Dell Vostro 3446\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"Dell Vostro 3546\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Asus EEE PC 1015PX\00", align 1
@acpi_osi_dmi_table = internal constant [18 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }] [{ i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_vista, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"FUJITSU SIEMENS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ESPRIMO Mobile V5505\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_vista, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Micro-Star International\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"GX723\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_vista, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Sony Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"VGN-NS10J_S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_vista, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Sony Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"VGN-SR290J\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_vista, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Sony Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"VGN-NS50B_L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_vista, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Sony Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"VGN-SR19XN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_vista, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"TOSHIBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 8, [79 x i8] c"Satellite L355\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_win7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK Computer Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"K50IJ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_vista, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"TOSHIBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Satellite P305D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_vista, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"TOSHIBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"NB100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_win8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Inspiron 7737\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_win8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Inspiron 7537\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_win8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Inspiron 5437\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_win8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Inspiron 3437\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_win8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Vostro 3446\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_disable_osi_win8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Vostro 3546\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_enable_osi_linux, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"ASUSTeK Computer INC.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"1015PX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } zeroinitializer], section ".init.rodata", align 16, !dbg !50
@.str.26 = private unnamed_addr constant [26 x i8] c"\015ACPI: DMI detected: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"!Windows 2006\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"!Windows 2006 SP1\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"!Windows 2006 SP2\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"!Windows 2009\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"!Windows 2012\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"\015ACPI: DMI detected to setup _OSI(\22Linux\22): %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [62 x i8] c"\015ACPI: DMI detected to setup _OSI(\22Darwin\22): Apple hardware\0A\00", align 1
@acpi_osi_handler.__print_once = internal global i8 0, section ".data.once", align 1, !dbg !79
@.str.34 = private unnamed_addr constant [53 x i8] c"\015ACPI: [Firmware Bug]: BIOS _OSI(Linux) query %s%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"honored\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c" via cmdline\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c" via DMI\00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@acpi_osi_handler.__print_once.40 = internal global i8 0, section ".data.once", align 1, !dbg !91
@.str.41 = private unnamed_addr constant [38 x i8] c"\015ACPI: BIOS _OSI(Darwin) query %s%s\0A\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"\016ACPI: Disabled all _OSI OS vendors%s\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c" and feature groups\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"\016ACPI: Added _OSI(%s)\0A\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"\016ACPI: Deleted _OSI(%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_osi_setup to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_osi_setup(i8* %str) #0 section ".init.text" !dbg !109 {
entry:
  %str.addr = alloca i8*, align 8
  %osi = alloca %struct.acpi_osi_entry*, align 8
  %enable = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata %struct.acpi_osi_entry** %osi, metadata !114, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i8* %enable, metadata !117, metadata !DIExpression()), !dbg !118
  store i8 1, i8* %enable, align 1, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %i, metadata !119, metadata !DIExpression()), !dbg !120
  %0 = load i8, i8* @acpi_gbl_create_osi_method, align 1, !dbg !121
  %tobool = icmp ne i8 %0, 0, !dbg !121
  br i1 %tobool, label %if.end, label %if.then, !dbg !123

if.then:                                          ; preds = %entry
  br label %for.end60, !dbg !124

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8, !dbg !125
  %cmp = icmp eq i8* %1, null, !dbg !127
  br i1 %cmp, label %if.then3, label %lor.lhs.false, !dbg !128

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8*, i8** %str.addr, align 8, !dbg !129
  %3 = load i8, i8* %2, align 1, !dbg !130
  %conv = sext i8 %3 to i32, !dbg !130
  %cmp1 = icmp eq i32 %conv, 0, !dbg !131
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !132

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #5, !dbg !133
  store i8 0, i8* @acpi_gbl_create_osi_method, align 1, !dbg !135
  br label %for.end60, !dbg !136

if.end4:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %str.addr, align 8, !dbg !137
  %5 = load i8, i8* %4, align 1, !dbg !139
  %conv5 = sext i8 %5 to i32, !dbg !139
  %cmp6 = icmp eq i32 %conv5, 33, !dbg !140
  br i1 %cmp6, label %if.then8, label %if.end31, !dbg !141

if.then8:                                         ; preds = %if.end4
  %6 = load i8*, i8** %str.addr, align 8, !dbg !142
  %incdec.ptr = getelementptr i8, i8* %6, i32 1, !dbg !142
  store i8* %incdec.ptr, i8** %str.addr, align 8, !dbg !142
  %7 = load i8*, i8** %str.addr, align 8, !dbg !144
  %8 = load i8, i8* %7, align 1, !dbg !146
  %conv9 = sext i8 %8 to i32, !dbg !146
  %cmp10 = icmp eq i32 %conv9, 0, !dbg !147
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !148

if.then12:                                        ; preds = %if.then8
  %9 = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 0), align 4, !dbg !149
  %tobool13 = icmp ne i8 %9, 0, !dbg !152
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !153

if.then14:                                        ; preds = %if.then12
  store i8 5, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 0), align 4, !dbg !154
  br label %if.end15, !dbg !155

if.end15:                                         ; preds = %if.then14, %if.then12
  br label %for.end60, !dbg !156

if.else:                                          ; preds = %if.then8
  %10 = load i8*, i8** %str.addr, align 8, !dbg !157
  %11 = load i8, i8* %10, align 1, !dbg !159
  %conv16 = sext i8 %11 to i32, !dbg !159
  %cmp17 = icmp eq i32 %conv16, 42, !dbg !160
  br i1 %cmp17, label %if.then19, label %if.else23, !dbg !161

if.then19:                                        ; preds = %if.else
  store i8 7, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 0), align 4, !dbg !162
  store i32 0, i32* %i, align 4, !dbg !164
  br label %for.cond, !dbg !166

for.cond:                                         ; preds = %for.inc, %if.then19
  %12 = load i32, i32* %i, align 4, !dbg !167
  %cmp20 = icmp slt i32 %12, 16, !dbg !169
  br i1 %cmp20, label %for.body, label %for.end, !dbg !170

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !171
  %idxprom = sext i32 %13 to i64, !dbg !173
  %arrayidx = getelementptr [16 x %struct.acpi_osi_entry], [16 x %struct.acpi_osi_entry]* bitcast (<{ %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, [9 x %struct.acpi_osi_entry] }>* @osi_setup_entries to [16 x %struct.acpi_osi_entry]*), i64 0, i64 %idxprom, !dbg !173
  store %struct.acpi_osi_entry* %arrayidx, %struct.acpi_osi_entry** %osi, align 8, !dbg !174
  %14 = load %struct.acpi_osi_entry*, %struct.acpi_osi_entry** %osi, align 8, !dbg !175
  %enable22 = getelementptr inbounds %struct.acpi_osi_entry, %struct.acpi_osi_entry* %14, i32 0, i32 1, !dbg !176
  store i8 0, i8* %enable22, align 1, !dbg !177
  br label %for.inc, !dbg !178

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !179
  %inc = add i32 %15, 1, !dbg !179
  store i32 %inc, i32* %i, align 4, !dbg !179
  br label %for.cond, !dbg !180, !llvm.loop !181

for.end:                                          ; preds = %for.cond
  br label %for.end60, !dbg !183

if.else23:                                        ; preds = %if.else
  %16 = load i8*, i8** %str.addr, align 8, !dbg !184
  %17 = load i8, i8* %16, align 1, !dbg !186
  %conv24 = sext i8 %17 to i32, !dbg !186
  %cmp25 = icmp eq i32 %conv24, 33, !dbg !187
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !188

if.then27:                                        ; preds = %if.else23
  store i8 0, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 0), align 4, !dbg !189
  br label %for.end60, !dbg !191

if.end28:                                         ; preds = %if.else23
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  store i8 0, i8* %enable, align 1, !dbg !192
  br label %if.end31, !dbg !193

if.end31:                                         ; preds = %if.end30, %if.end4
  store i32 0, i32* %i, align 4, !dbg !194
  br label %for.cond32, !dbg !196

for.cond32:                                       ; preds = %for.inc58, %if.end31
  %18 = load i32, i32* %i, align 4, !dbg !197
  %cmp33 = icmp slt i32 %18, 16, !dbg !199
  br i1 %cmp33, label %for.body35, label %for.end60, !dbg !200

for.body35:                                       ; preds = %for.cond32
  %19 = load i32, i32* %i, align 4, !dbg !201
  %idxprom36 = sext i32 %19 to i64, !dbg !203
  %arrayidx37 = getelementptr [16 x %struct.acpi_osi_entry], [16 x %struct.acpi_osi_entry]* bitcast (<{ %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, [9 x %struct.acpi_osi_entry] }>* @osi_setup_entries to [16 x %struct.acpi_osi_entry]*), i64 0, i64 %idxprom36, !dbg !203
  store %struct.acpi_osi_entry* %arrayidx37, %struct.acpi_osi_entry** %osi, align 8, !dbg !204
  %20 = load %struct.acpi_osi_entry*, %struct.acpi_osi_entry** %osi, align 8, !dbg !205
  %string = getelementptr inbounds %struct.acpi_osi_entry, %struct.acpi_osi_entry* %20, i32 0, i32 0, !dbg !207
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %string, i64 0, i64 0, !dbg !205
  %21 = load i8*, i8** %str.addr, align 8, !dbg !208
  %call38 = call i32 @strcmp(i8* %arraydecay, i8* %21) #6, !dbg !209
  %tobool39 = icmp ne i32 %call38, 0, !dbg !209
  br i1 %tobool39, label %if.else43, label %if.then40, !dbg !210

if.then40:                                        ; preds = %for.body35
  %22 = load i8, i8* %enable, align 1, !dbg !211
  %tobool41 = trunc i8 %22 to i1, !dbg !211
  %23 = load %struct.acpi_osi_entry*, %struct.acpi_osi_entry** %osi, align 8, !dbg !213
  %enable42 = getelementptr inbounds %struct.acpi_osi_entry, %struct.acpi_osi_entry* %23, i32 0, i32 1, !dbg !214
  %frombool = zext i1 %tobool41 to i8, !dbg !215
  store i8 %frombool, i8* %enable42, align 1, !dbg !215
  br label %for.end60, !dbg !216

if.else43:                                        ; preds = %for.body35
  %24 = load %struct.acpi_osi_entry*, %struct.acpi_osi_entry** %osi, align 8, !dbg !217
  %string44 = getelementptr inbounds %struct.acpi_osi_entry, %struct.acpi_osi_entry* %24, i32 0, i32 0, !dbg !219
  %arrayidx45 = getelementptr [64 x i8], [64 x i8]* %string44, i64 0, i64 0, !dbg !217
  %25 = load i8, i8* %arrayidx45, align 1, !dbg !217
  %conv46 = sext i8 %25 to i32, !dbg !217
  %cmp47 = icmp eq i32 %conv46, 0, !dbg !220
  br i1 %cmp47, label %if.then49, label %if.end56, !dbg !221

if.then49:                                        ; preds = %if.else43
  %26 = load i8, i8* %enable, align 1, !dbg !222
  %tobool50 = trunc i8 %26 to i1, !dbg !222
  %27 = load %struct.acpi_osi_entry*, %struct.acpi_osi_entry** %osi, align 8, !dbg !224
  %enable51 = getelementptr inbounds %struct.acpi_osi_entry, %struct.acpi_osi_entry* %27, i32 0, i32 1, !dbg !225
  %frombool52 = zext i1 %tobool50 to i8, !dbg !226
  store i8 %frombool52, i8* %enable51, align 1, !dbg !226
  %28 = load %struct.acpi_osi_entry*, %struct.acpi_osi_entry** %osi, align 8, !dbg !227
  %string53 = getelementptr inbounds %struct.acpi_osi_entry, %struct.acpi_osi_entry* %28, i32 0, i32 0, !dbg !228
  %arraydecay54 = getelementptr inbounds [64 x i8], [64 x i8]* %string53, i64 0, i64 0, !dbg !227
  %29 = load i8*, i8** %str.addr, align 8, !dbg !229
  %call55 = call i8* @strncpy(i8* %arraydecay54, i8* %29, i64 64) #6, !dbg !230
  br label %for.end60, !dbg !231

if.end56:                                         ; preds = %if.else43
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  br label %for.inc58, !dbg !232

for.inc58:                                        ; preds = %if.end57
  %30 = load i32, i32* %i, align 4, !dbg !233
  %inc59 = add i32 %30, 1, !dbg !233
  store i32 %inc59, i32* %i, align 4, !dbg !233
  br label %for.cond32, !dbg !234, !llvm.loop !235

for.end60:                                        ; preds = %if.then, %if.then3, %if.end15, %for.end, %if.then27, %if.then49, %if.then40, %for.cond32
  ret void, !dbg !237
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @osi_setup(i8* %str) #0 section ".init.text" !dbg !238 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load i8*, i8** %str.addr, align 8, !dbg !241
  %tobool = icmp ne i8* %0, null, !dbg !241
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !243

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8, !dbg !244
  %call = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %1) #6, !dbg !245
  %tobool1 = icmp ne i32 %call, 0, !dbg !245
  br i1 %tobool1, label %if.else, label %if.then, !dbg !246

if.then:                                          ; preds = %land.lhs.true
  call void @acpi_osi_setup_linux(i1 zeroext true) #5, !dbg !247
  br label %if.end22, !dbg !247

if.else:                                          ; preds = %land.lhs.true, %entry
  %2 = load i8*, i8** %str.addr, align 8, !dbg !248
  %tobool2 = icmp ne i8* %2, null, !dbg !248
  br i1 %tobool2, label %land.lhs.true3, label %if.else7, !dbg !250

land.lhs.true3:                                   ; preds = %if.else
  %3 = load i8*, i8** %str.addr, align 8, !dbg !251
  %call4 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %3) #6, !dbg !252
  %tobool5 = icmp ne i32 %call4, 0, !dbg !252
  br i1 %tobool5, label %if.else7, label %if.then6, !dbg !253

if.then6:                                         ; preds = %land.lhs.true3
  call void @acpi_osi_setup_linux(i1 zeroext false) #5, !dbg !254
  br label %if.end21, !dbg !254

if.else7:                                         ; preds = %land.lhs.true3, %if.else
  %4 = load i8*, i8** %str.addr, align 8, !dbg !255
  %tobool8 = icmp ne i8* %4, null, !dbg !255
  br i1 %tobool8, label %land.lhs.true9, label %if.else13, !dbg !257

land.lhs.true9:                                   ; preds = %if.else7
  %5 = load i8*, i8** %str.addr, align 8, !dbg !258
  %call10 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %5) #6, !dbg !259
  %tobool11 = icmp ne i32 %call10, 0, !dbg !259
  br i1 %tobool11, label %if.else13, label %if.then12, !dbg !260

if.then12:                                        ; preds = %land.lhs.true9
  call void @acpi_osi_setup_darwin(i1 zeroext true) #5, !dbg !261
  br label %if.end20, !dbg !261

if.else13:                                        ; preds = %land.lhs.true9, %if.else7
  %6 = load i8*, i8** %str.addr, align 8, !dbg !262
  %tobool14 = icmp ne i8* %6, null, !dbg !262
  br i1 %tobool14, label %land.lhs.true15, label %if.else19, !dbg !264

land.lhs.true15:                                  ; preds = %if.else13
  %7 = load i8*, i8** %str.addr, align 8, !dbg !265
  %call16 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %7) #6, !dbg !266
  %tobool17 = icmp ne i32 %call16, 0, !dbg !266
  br i1 %tobool17, label %if.else19, label %if.then18, !dbg !267

if.then18:                                        ; preds = %land.lhs.true15
  call void @acpi_osi_setup_darwin(i1 zeroext false) #5, !dbg !268
  br label %if.end, !dbg !268

if.else19:                                        ; preds = %land.lhs.true15, %if.else13
  %8 = load i8*, i8** %str.addr, align 8, !dbg !269
  call void @acpi_osi_setup(i8* %8) #5, !dbg !270
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then18
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then12
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then6
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  ret i32 1, !dbg !271
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @acpi_osi_is_win8() #4 !dbg !272 {
entry:
  %0 = load i8, i8* @acpi_gbl_osi_data, align 1, !dbg !275
  %conv = zext i8 %0 to i32, !dbg !275
  %cmp = icmp sge i32 %conv, 12, !dbg !276
  ret i1 %cmp, !dbg !277
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @early_acpi_osi_init() #0 section ".init.text" !dbg !278 {
entry:
  call void @acpi_osi_dmi_blacklisted() #5, !dbg !281
  ret i32 0, !dbg !282
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_osi_dmi_blacklisted() #0 section ".init.text" !dbg !283 {
entry:
  %call = call i32 @dmi_check_system(%struct.dmi_system_id* getelementptr inbounds ([18 x %struct.dmi_system_id], [18 x %struct.dmi_system_id]* bitcast ([18 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }]* @acpi_osi_dmi_table to [18 x %struct.dmi_system_id]*), i64 0, i64 0)) #6, !dbg !286
  %0 = load i8, i8* @x86_apple_machine, align 1, !dbg !287
  %tobool = trunc i8 %0 to i1, !dbg !287
  br i1 %tobool, label %if.then, label %if.end, !dbg !289

if.then:                                          ; preds = %entry
  call void @acpi_osi_dmi_darwin() #5, !dbg !290
  br label %if.end, !dbg !290

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !291
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_osi_init() #0 section ".init.text" !dbg !292 {
entry:
  %call = call i32 @acpi_install_interface_handler(i32 (i8*, i32)* @acpi_osi_handler) #6, !dbg !293
  call void @acpi_osi_setup_late() #5, !dbg !294
  ret i32 0, !dbg !295
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_interface_handler(i32 (i8*, i32)*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_osi_handler(i8* %interface, i32 %supported) #4 !dbg !81 {
entry:
  %interface.addr = alloca i8*, align 8
  %supported.addr = alloca i32, align 4
  %__ret_print_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_print_once24 = alloca i8, align 1
  %tmp54 = alloca i64, align 8
  store i8* %interface, i8** %interface.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %interface.addr, metadata !296, metadata !DIExpression()), !dbg !297
  store i32 %supported, i32* %supported.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %supported.addr, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = load i8*, i8** %interface.addr, align 8, !dbg !300
  %call = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %0) #6, !dbg !302
  %tobool = icmp ne i32 %call, 0, !dbg !302
  br i1 %tobool, label %if.end20, label %if.then, !dbg !303

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %__ret_print_once, metadata !304, metadata !DIExpression()), !dbg !307
  %1 = load i8, i8* @acpi_osi_handler.__print_once, align 1, !dbg !307
  %tobool1 = trunc i8 %1 to i1, !dbg !307
  %lnot = xor i1 %tobool1, true, !dbg !307
  %frombool = zext i1 %lnot to i8, !dbg !307
  store i8 %frombool, i8* %__ret_print_once, align 1, !dbg !307
  %2 = load i8, i8* @acpi_osi_handler.__print_once, align 1, !dbg !308
  %tobool2 = trunc i8 %2 to i1, !dbg !308
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !307

if.then3:                                         ; preds = %if.then
  store i8 1, i8* @acpi_osi_handler.__print_once, align 1, !dbg !310
  %bf.load = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !310
  %bf.clear = and i8 %bf.load, 1, !dbg !310
  %bf.cast = zext i8 %bf.clear to i32, !dbg !310
  %tobool4 = icmp ne i32 %bf.cast, 0, !dbg !310
  %3 = zext i1 %tobool4 to i64, !dbg !310
  %cond = select i1 %tobool4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), !dbg !310
  %bf.load5 = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !310
  %bf.lshr = lshr i8 %bf.load5, 2, !dbg !310
  %bf.clear6 = and i8 %bf.lshr, 1, !dbg !310
  %bf.cast7 = zext i8 %bf.clear6 to i32, !dbg !310
  %tobool8 = icmp ne i32 %bf.cast7, 0, !dbg !310
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !310

cond.true:                                        ; preds = %if.then3
  br label %cond.end, !dbg !310

cond.false:                                       ; preds = %if.then3
  %bf.load9 = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !310
  %bf.lshr10 = lshr i8 %bf.load9, 1, !dbg !310
  %bf.clear11 = and i8 %bf.lshr10, 1, !dbg !310
  %bf.cast12 = zext i8 %bf.clear11 to i32, !dbg !310
  %tobool13 = icmp ne i32 %bf.cast12, 0, !dbg !310
  %4 = zext i1 %tobool13 to i64, !dbg !310
  %cond14 = select i1 %tobool13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i64 0, i64 0), !dbg !310
  br label %cond.end, !dbg !310

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), %cond.true ], [ %cond14, %cond.false ], !dbg !310
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.34, i64 0, i64 0), i8* %cond, i8* %cond15) #5, !dbg !310
  br label %if.end, !dbg !310

if.end:                                           ; preds = %cond.end, %if.then
  %5 = load i8, i8* %__ret_print_once, align 1, !dbg !307
  %tobool17 = trunc i8 %5 to i1, !dbg !307
  %lnot18 = xor i1 %tobool17, true, !dbg !307
  %lnot19 = xor i1 %lnot18, true, !dbg !307
  %lnot.ext = zext i1 %lnot19 to i32, !dbg !307
  %conv = sext i32 %lnot.ext to i64, !dbg !307
  store i64 %conv, i64* %tmp, align 8, !dbg !308
  %6 = load i64, i64* %tmp, align 8, !dbg !307
  br label %if.end20, !dbg !312

if.end20:                                         ; preds = %if.end, %entry
  %7 = load i8*, i8** %interface.addr, align 8, !dbg !313
  %call21 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %7) #6, !dbg !315
  %tobool22 = icmp ne i32 %call21, 0, !dbg !315
  br i1 %tobool22, label %if.end61, label %if.then23, !dbg !316

if.then23:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i8* %__ret_print_once24, metadata !317, metadata !DIExpression()), !dbg !320
  %8 = load i8, i8* @acpi_osi_handler.__print_once.40, align 1, !dbg !320
  %tobool25 = trunc i8 %8 to i1, !dbg !320
  %lnot26 = xor i1 %tobool25, true, !dbg !320
  %frombool28 = zext i1 %lnot26 to i8, !dbg !320
  store i8 %frombool28, i8* %__ret_print_once24, align 1, !dbg !320
  %9 = load i8, i8* @acpi_osi_handler.__print_once.40, align 1, !dbg !321
  %tobool29 = trunc i8 %9 to i1, !dbg !321
  br i1 %tobool29, label %if.end53, label %if.then30, !dbg !320

if.then30:                                        ; preds = %if.then23
  store i8 1, i8* @acpi_osi_handler.__print_once.40, align 1, !dbg !323
  %bf.load31 = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !323
  %bf.lshr32 = lshr i8 %bf.load31, 3, !dbg !323
  %bf.clear33 = and i8 %bf.lshr32, 1, !dbg !323
  %bf.cast34 = zext i8 %bf.clear33 to i32, !dbg !323
  %tobool35 = icmp ne i32 %bf.cast34, 0, !dbg !323
  %10 = zext i1 %tobool35 to i64, !dbg !323
  %cond36 = select i1 %tobool35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), !dbg !323
  %bf.load37 = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !323
  %bf.lshr38 = lshr i8 %bf.load37, 5, !dbg !323
  %bf.clear39 = and i8 %bf.lshr38, 1, !dbg !323
  %bf.cast40 = zext i8 %bf.clear39 to i32, !dbg !323
  %tobool41 = icmp ne i32 %bf.cast40, 0, !dbg !323
  br i1 %tobool41, label %cond.true42, label %cond.false43, !dbg !323

cond.true42:                                      ; preds = %if.then30
  br label %cond.end50, !dbg !323

cond.false43:                                     ; preds = %if.then30
  %bf.load44 = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !323
  %bf.lshr45 = lshr i8 %bf.load44, 4, !dbg !323
  %bf.clear46 = and i8 %bf.lshr45, 1, !dbg !323
  %bf.cast47 = zext i8 %bf.clear46 to i32, !dbg !323
  %tobool48 = icmp ne i32 %bf.cast47, 0, !dbg !323
  %11 = zext i1 %tobool48 to i64, !dbg !323
  %cond49 = select i1 %tobool48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i64 0, i64 0), !dbg !323
  br label %cond.end50, !dbg !323

cond.end50:                                       ; preds = %cond.false43, %cond.true42
  %cond51 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), %cond.true42 ], [ %cond49, %cond.false43 ], !dbg !323
  %call52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i64 0, i64 0), i8* %cond36, i8* %cond51) #5, !dbg !323
  br label %if.end53, !dbg !323

if.end53:                                         ; preds = %cond.end50, %if.then23
  %12 = load i8, i8* %__ret_print_once24, align 1, !dbg !320
  %tobool55 = trunc i8 %12 to i1, !dbg !320
  %lnot56 = xor i1 %tobool55, true, !dbg !320
  %lnot58 = xor i1 %lnot56, true, !dbg !320
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !320
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !320
  store i64 %conv60, i64* %tmp54, align 8, !dbg !321
  %13 = load i64, i64* %tmp54, align 8, !dbg !320
  br label %if.end61, !dbg !325

if.end61:                                         ; preds = %if.end53, %if.end20
  %14 = load i32, i32* %supported.addr, align 4, !dbg !326
  ret i32 %14, !dbg !327
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_osi_setup_late() #0 section ".init.text" !dbg !328 {
entry:
  %osi = alloca %struct.acpi_osi_entry*, align 8
  %str = alloca i8*, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.acpi_osi_entry** %osi, metadata !329, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata i8** %str, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %i, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata i32* %status, metadata !335, metadata !DIExpression()), !dbg !337
  %0 = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 0), align 4, !dbg !338
  %tobool = icmp ne i8 %0, 0, !dbg !340
  br i1 %tobool, label %if.then, label %if.end5, !dbg !341

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 0), align 4, !dbg !342
  %call = call i32 @acpi_update_interfaces(i8 zeroext %1) #6, !dbg !344
  store i32 %call, i32* %status, align 4, !dbg !345
  %2 = load i32, i32* %status, align 4, !dbg !346
  %tobool1 = icmp ne i32 %2, 0, !dbg !346
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !348

if.then2:                                         ; preds = %if.then
  %3 = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 0), align 4, !dbg !349
  %conv = zext i8 %3 to i32, !dbg !349
  %cmp = icmp eq i32 %conv, 7, !dbg !349
  %4 = zext i1 %cmp to i64, !dbg !349
  %cond = select i1 %cmp, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i64 0, i64 0), !dbg !349
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* %cond) #5, !dbg !349
  br label %if.end, !dbg !349

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !350

if.end5:                                          ; preds = %if.end, %entry
  store i32 0, i32* %i, align 4, !dbg !351
  br label %for.cond, !dbg !353

for.cond:                                         ; preds = %for.inc, %if.end5
  %5 = load i32, i32* %i, align 4, !dbg !354
  %cmp6 = icmp slt i32 %5, 16, !dbg !356
  br i1 %cmp6, label %for.body, label %for.end, !dbg !357

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !358
  %idxprom = sext i32 %6 to i64, !dbg !360
  %arrayidx = getelementptr [16 x %struct.acpi_osi_entry], [16 x %struct.acpi_osi_entry]* bitcast (<{ %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, %struct.acpi_osi_entry, [9 x %struct.acpi_osi_entry] }>* @osi_setup_entries to [16 x %struct.acpi_osi_entry]*), i64 0, i64 %idxprom, !dbg !360
  store %struct.acpi_osi_entry* %arrayidx, %struct.acpi_osi_entry** %osi, align 8, !dbg !361
  %7 = load %struct.acpi_osi_entry*, %struct.acpi_osi_entry** %osi, align 8, !dbg !362
  %string = getelementptr inbounds %struct.acpi_osi_entry, %struct.acpi_osi_entry* %7, i32 0, i32 0, !dbg !363
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %string, i64 0, i64 0, !dbg !362
  store i8* %arraydecay, i8** %str, align 8, !dbg !364
  %8 = load i8*, i8** %str, align 8, !dbg !365
  %9 = load i8, i8* %8, align 1, !dbg !367
  %conv8 = sext i8 %9 to i32, !dbg !367
  %cmp9 = icmp eq i32 %conv8, 0, !dbg !368
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !369

if.then11:                                        ; preds = %for.body
  br label %for.end, !dbg !370

if.end12:                                         ; preds = %for.body
  %10 = load %struct.acpi_osi_entry*, %struct.acpi_osi_entry** %osi, align 8, !dbg !371
  %enable = getelementptr inbounds %struct.acpi_osi_entry, %struct.acpi_osi_entry* %10, i32 0, i32 1, !dbg !373
  %11 = load i8, i8* %enable, align 1, !dbg !373
  %tobool13 = trunc i8 %11 to i1, !dbg !373
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !374

if.then14:                                        ; preds = %if.end12
  %12 = load i8*, i8** %str, align 8, !dbg !375
  %call15 = call i32 @acpi_install_interface(i8* %12) #6, !dbg !377
  store i32 %call15, i32* %status, align 4, !dbg !378
  %13 = load i32, i32* %status, align 4, !dbg !379
  %tobool16 = icmp ne i32 %13, 0, !dbg !379
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !381

if.then17:                                        ; preds = %if.then14
  %14 = load i8*, i8** %str, align 8, !dbg !382
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i64 0, i64 0), i8* %14) #5, !dbg !382
  br label %if.end19, !dbg !382

if.end19:                                         ; preds = %if.then17, %if.then14
  br label %if.end25, !dbg !383

if.else:                                          ; preds = %if.end12
  %15 = load i8*, i8** %str, align 8, !dbg !384
  %call20 = call i32 @acpi_remove_interface(i8* %15) #6, !dbg !386
  store i32 %call20, i32* %status, align 4, !dbg !387
  %16 = load i32, i32* %status, align 4, !dbg !388
  %tobool21 = icmp ne i32 %16, 0, !dbg !388
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !390

if.then22:                                        ; preds = %if.else
  %17 = load i8*, i8** %str, align 8, !dbg !391
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), i8* %17) #5, !dbg !391
  br label %if.end24, !dbg !391

if.end24:                                         ; preds = %if.then22, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end19
  br label %for.inc, !dbg !392

for.inc:                                          ; preds = %if.end25
  %18 = load i32, i32* %i, align 4, !dbg !393
  %inc = add i32 %18, 1, !dbg !393
  store i32 %inc, i32* %i, align 4, !dbg !393
  br label %for.cond, !dbg !394, !llvm.loop !395

for.end:                                          ; preds = %if.then11, %for.cond
  ret void, !dbg !397
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_osi_setup_linux(i1 zeroext %enable) #0 section ".init.text" !dbg !398 {
entry:
  %enable.addr = alloca i8, align 1
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %bf.load = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !403
  %bf.clear = and i8 %bf.load, -3, !dbg !403
  store i8 %bf.clear, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !403
  %bf.load1 = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !404
  %bf.clear2 = and i8 %bf.load1, -5, !dbg !404
  %bf.set = or i8 %bf.clear2, 4, !dbg !404
  store i8 %bf.set, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !404
  %0 = load i8, i8* %enable.addr, align 1, !dbg !405
  %tobool = trunc i8 %0 to i1, !dbg !405
  call void @__acpi_osi_setup_linux(i1 zeroext %tobool) #5, !dbg !406
  ret void, !dbg !407
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_osi_setup_darwin(i1 zeroext %enable) #0 section ".init.text" !dbg !408 {
entry:
  %enable.addr = alloca i8, align 1
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %bf.load = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !411
  %bf.clear = and i8 %bf.load, -17, !dbg !411
  store i8 %bf.clear, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !411
  %bf.load1 = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !412
  %bf.clear2 = and i8 %bf.load1, -33, !dbg !412
  %bf.set = or i8 %bf.clear2, 32, !dbg !412
  store i8 %bf.set, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !412
  %0 = load i8, i8* %enable.addr, align 1, !dbg !413
  %tobool = trunc i8 %0 to i1, !dbg !413
  call void @__acpi_osi_setup_darwin(i1 zeroext %tobool) #5, !dbg !414
  ret void, !dbg !415
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @__acpi_osi_setup_linux(i1 zeroext %enable) #0 section ".init.text" !dbg !416 {
entry:
  %enable.addr = alloca i8, align 1
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i8, i8* %enable.addr, align 1, !dbg !419
  %tobool = trunc i8 %0 to i1, !dbg !419
  %lnot = xor i1 %tobool, true, !dbg !420
  %lnot1 = xor i1 %lnot, true, !dbg !421
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !421
  %1 = trunc i32 %lnot.ext to i8, !dbg !422
  %bf.load = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !422
  %bf.value = and i8 %1, 1, !dbg !422
  %bf.clear = and i8 %bf.load, -2, !dbg !422
  %bf.set = or i8 %bf.clear, %bf.value, !dbg !422
  store i8 %bf.set, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !422
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !422
  %2 = load i8, i8* %enable.addr, align 1, !dbg !423
  %tobool2 = trunc i8 %2 to i1, !dbg !423
  br i1 %tobool2, label %if.then, label %if.else, !dbg !425

if.then:                                          ; preds = %entry
  call void @acpi_osi_setup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !426
  br label %if.end, !dbg !426

if.else:                                          ; preds = %entry
  call void @acpi_osi_setup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !427
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !428
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @__acpi_osi_setup_darwin(i1 zeroext %enable) #0 section ".init.text" !dbg !429 {
entry:
  %enable.addr = alloca i8, align 1
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load i8, i8* %enable.addr, align 1, !dbg !432
  %tobool = trunc i8 %0 to i1, !dbg !432
  %lnot = xor i1 %tobool, true, !dbg !433
  %lnot1 = xor i1 %lnot, true, !dbg !434
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !434
  %1 = trunc i32 %lnot.ext to i8, !dbg !435
  %bf.load = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !435
  %bf.value = and i8 %1, 1, !dbg !435
  %bf.shl = shl i8 %bf.value, 3, !dbg !435
  %bf.clear = and i8 %bf.load, -9, !dbg !435
  %bf.set = or i8 %bf.clear, %bf.shl, !dbg !435
  store i8 %bf.set, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !435
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !435
  %2 = load i8, i8* %enable.addr, align 1, !dbg !436
  %tobool2 = trunc i8 %2 to i1, !dbg !436
  br i1 %tobool2, label %if.then, label %if.else, !dbg !438

if.then:                                          ; preds = %entry
  call void @acpi_osi_setup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !439
  call void @acpi_osi_setup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !441
  br label %if.end, !dbg !442

if.else:                                          ; preds = %entry
  call void @acpi_osi_setup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !443
  call void @acpi_osi_setup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !445
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !446
}

; Function Attrs: noredzone
declare dso_local i32 @dmi_check_system(%struct.dmi_system_id*) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_osi_dmi_darwin() #0 section ".init.text" !dbg !447 {
entry:
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.33, i64 0, i64 0)) #5, !dbg !448
  %bf.load = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !449
  %bf.clear = and i8 %bf.load, -17, !dbg !449
  %bf.set = or i8 %bf.clear, 16, !dbg !449
  store i8 %bf.set, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !449
  call void @__acpi_osi_setup_darwin(i1 zeroext true) #5, !dbg !450
  ret void, !dbg !451
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dmi_disable_osi_vista(%struct.dmi_system_id* %d) #0 section ".init.text" !dbg !452 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !453, metadata !DIExpression()), !dbg !454
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d.addr, align 8, !dbg !455
  %ident = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %0, i32 0, i32 1, !dbg !455
  %1 = load i8*, i8** %ident, align 8, !dbg !455
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i8* %1) #5, !dbg !455
  call void @acpi_osi_setup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0)) #5, !dbg !456
  call void @acpi_osi_setup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0)) #5, !dbg !457
  call void @acpi_osi_setup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0)) #5, !dbg !458
  ret i32 0, !dbg !459
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dmi_disable_osi_win7(%struct.dmi_system_id* %d) #0 section ".init.text" !dbg !460 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d.addr, align 8, !dbg !463
  %ident = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %0, i32 0, i32 1, !dbg !463
  %1 = load i8*, i8** %ident, align 8, !dbg !463
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i8* %1) #5, !dbg !463
  call void @acpi_osi_setup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0)) #5, !dbg !464
  ret i32 0, !dbg !465
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dmi_disable_osi_win8(%struct.dmi_system_id* %d) #0 section ".init.text" !dbg !466 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d.addr, align 8, !dbg !469
  %ident = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %0, i32 0, i32 1, !dbg !469
  %1 = load i8*, i8** %ident, align 8, !dbg !469
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i8* %1) #5, !dbg !469
  call void @acpi_osi_setup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0)) #5, !dbg !470
  ret i32 0, !dbg !471
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dmi_enable_osi_linux(%struct.dmi_system_id* %d) #0 section ".init.text" !dbg !472 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d.addr, align 8, !dbg !475
  call void @acpi_osi_dmi_linux(i1 zeroext true, %struct.dmi_system_id* %0) #5, !dbg !476
  ret i32 0, !dbg !477
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_osi_dmi_linux(i1 zeroext %enable, %struct.dmi_system_id* %d) #0 section ".init.text" !dbg !478 {
entry:
  %enable.addr = alloca i8, align 1
  %d.addr = alloca %struct.dmi_system_id*, align 8
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !481, metadata !DIExpression()), !dbg !482
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !483, metadata !DIExpression()), !dbg !484
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d.addr, align 8, !dbg !485
  %ident = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %0, i32 0, i32 1, !dbg !485
  %1 = load i8*, i8** %ident, align 8, !dbg !485
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i64 0, i64 0), i8* %1) #5, !dbg !485
  %bf.load = load i8, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !486
  %bf.clear = and i8 %bf.load, -3, !dbg !486
  %bf.set = or i8 %bf.clear, 2, !dbg !486
  store i8 %bf.set, i8* getelementptr inbounds (%struct.acpi_osi_config, %struct.acpi_osi_config* @osi_config, i32 0, i32 1), align 1, !dbg !486
  %2 = load i8, i8* %enable.addr, align 1, !dbg !487
  %tobool = trunc i8 %2 to i1, !dbg !487
  call void @__acpi_osi_setup_linux(i1 zeroext %tobool) #5, !dbg !488
  ret void, !dbg !489
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_update_interfaces(i8 zeroext) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_interface(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_remove_interface(i8*) #3

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "osi_config", scope: !2, file: !3, line: 40, type: !93, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/osi.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!14, !0, !30, !45, !50, !79, !91}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__setup_osi_setup", scope: !2, file: !3, line: 264, type: !16, isLocal: true, isDefinition: true, align: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !17, line: 241, size: 192, elements: !18)
!17 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !23, !29}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !16, file: !17, line: 242, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !16, file: !17, line: 243, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !28}
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !16, file: !17, line: 244, baseType: !27, size: 32, offset: 128)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "osi_setup_entries", scope: !2, file: !3, line: 42, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8320, elements: !43)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_osi_entry", file: !3, line: 25, size: 520, elements: !34)
!34 = !{!35, !39}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !33, file: !3, line: 26, baseType: !36, size: 512)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !33, file: !3, line: 27, baseType: !40, size: 8, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 30, baseType: !42)
!41 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!42 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!43 = !{!44}
!44 = !DISubrange(count: 16)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__setup_str_osi_setup", scope: !2, file: !3, line: 264, type: !47, isLocal: true, isDefinition: true, align: 8)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 80, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 10)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "acpi_osi_dmi_table", scope: !2, file: !3, line: 326, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 49536, elements: !77)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !55, line: 566, size: 2752, elements: !56)
!55 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !62, !63, !76}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !54, file: !55, line: 567, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!27, !61}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !54, file: !55, line: 568, baseType: !20, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !54, file: !55, line: 569, baseType: !64, size: 2560, offset: 128)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 2560, elements: !74)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !55, line: 560, size: 640, elements: !66)
!66 = !{!67, !69, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !65, file: !55, line: 561, baseType: !68, size: 7, flags: DIFlagBitField, extraData: i64 0)
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !65, file: !55, line: 562, baseType: !68, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !65, file: !55, line: 563, baseType: !71, size: 632, offset: 8)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 632, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 79)
!74 = !{!75}
!75 = !DISubrange(count: 4)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !54, file: !55, line: 570, baseType: !12, size: 64, offset: 2688)
!77 = !{!78}
!78 = !DISubrange(count: 18)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "__print_once", scope: !81, file: !3, line: 76, type: !40, isLocal: true, isDefinition: true)
!81 = distinct !DISubprogram(name: "acpi_osi_handler", scope: !3, file: !3, line: 73, type: !82, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !88, !84}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !85, line: 21, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !87, line: 27, baseType: !7)
!87 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !89, line: 423, baseType: !28)
!89 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!90 = !{}
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "__print_once", scope: !81, file: !3, line: 83, type: !40, isLocal: true, isDefinition: true)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_osi_config", file: !3, line: 30, size: 32, elements: !94)
!94 = !{!95, !98, !99, !100, !101, !102, !103}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "default_disabling", scope: !93, file: !3, line: 31, baseType: !96, size: 8)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !85, line: 17, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !87, line: 21, baseType: !68)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "linux_enable", scope: !93, file: !3, line: 32, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "linux_dmi", scope: !93, file: !3, line: 33, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "linux_cmdline", scope: !93, file: !3, line: 34, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "darwin_enable", scope: !93, file: !3, line: 35, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "darwin_dmi", scope: !93, file: !3, line: 36, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "darwin_cmdline", scope: !93, file: !3, line: 37, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!104 = !{i32 7, !"Dwarf Version", i32 4}
!105 = !{i32 2, !"Debug Info Version", i32 3}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"Code Model", i32 2}
!108 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!109 = distinct !DISubprogram(name: "acpi_osi_setup", scope: !3, file: !3, line: 93, type: !110, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !90)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !28}
!112 = !DILocalVariable(name: "str", arg: 1, scope: !109, file: !3, line: 93, type: !28)
!113 = !DILocation(line: 93, column: 34, scope: !109)
!114 = !DILocalVariable(name: "osi", scope: !109, file: !3, line: 95, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!116 = !DILocation(line: 95, column: 25, scope: !109)
!117 = !DILocalVariable(name: "enable", scope: !109, file: !3, line: 96, type: !40)
!118 = !DILocation(line: 96, column: 7, scope: !109)
!119 = !DILocalVariable(name: "i", scope: !109, file: !3, line: 97, type: !27)
!120 = !DILocation(line: 97, column: 6, scope: !109)
!121 = !DILocation(line: 99, column: 7, scope: !122)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 99, column: 6)
!123 = !DILocation(line: 99, column: 6, scope: !109)
!124 = !DILocation(line: 100, column: 3, scope: !122)
!125 = !DILocation(line: 102, column: 6, scope: !126)
!126 = distinct !DILexicalBlock(scope: !109, file: !3, line: 102, column: 6)
!127 = !DILocation(line: 102, column: 10, scope: !126)
!128 = !DILocation(line: 102, column: 18, scope: !126)
!129 = !DILocation(line: 102, column: 22, scope: !126)
!130 = !DILocation(line: 102, column: 21, scope: !126)
!131 = !DILocation(line: 102, column: 26, scope: !126)
!132 = !DILocation(line: 102, column: 6, scope: !109)
!133 = !DILocation(line: 103, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !126, file: !3, line: 102, column: 35)
!135 = !DILocation(line: 104, column: 30, scope: !134)
!136 = !DILocation(line: 105, column: 3, scope: !134)
!137 = !DILocation(line: 108, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !109, file: !3, line: 108, column: 6)
!139 = !DILocation(line: 108, column: 6, scope: !138)
!140 = !DILocation(line: 108, column: 11, scope: !138)
!141 = !DILocation(line: 108, column: 6, scope: !109)
!142 = !DILocation(line: 109, column: 6, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !3, line: 108, column: 19)
!144 = !DILocation(line: 110, column: 8, scope: !145)
!145 = distinct !DILexicalBlock(scope: !143, file: !3, line: 110, column: 7)
!146 = !DILocation(line: 110, column: 7, scope: !145)
!147 = !DILocation(line: 110, column: 12, scope: !145)
!148 = !DILocation(line: 110, column: 7, scope: !143)
!149 = !DILocation(line: 112, column: 20, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 112, column: 8)
!151 = distinct !DILexicalBlock(scope: !145, file: !3, line: 110, column: 21)
!152 = !DILocation(line: 112, column: 9, scope: !150)
!153 = !DILocation(line: 112, column: 8, scope: !151)
!154 = !DILocation(line: 113, column: 34, scope: !150)
!155 = !DILocation(line: 113, column: 5, scope: !150)
!156 = !DILocation(line: 115, column: 4, scope: !151)
!157 = !DILocation(line: 116, column: 15, scope: !158)
!158 = distinct !DILexicalBlock(scope: !145, file: !3, line: 116, column: 14)
!159 = !DILocation(line: 116, column: 14, scope: !158)
!160 = !DILocation(line: 116, column: 19, scope: !158)
!161 = !DILocation(line: 116, column: 14, scope: !145)
!162 = !DILocation(line: 117, column: 33, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !3, line: 116, column: 27)
!164 = !DILocation(line: 118, column: 11, scope: !165)
!165 = distinct !DILexicalBlock(scope: !163, file: !3, line: 118, column: 4)
!166 = !DILocation(line: 118, column: 9, scope: !165)
!167 = !DILocation(line: 118, column: 16, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !3, line: 118, column: 4)
!169 = !DILocation(line: 118, column: 18, scope: !168)
!170 = !DILocation(line: 118, column: 4, scope: !165)
!171 = !DILocation(line: 119, column: 30, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !3, line: 118, column: 49)
!173 = !DILocation(line: 119, column: 12, scope: !172)
!174 = !DILocation(line: 119, column: 9, scope: !172)
!175 = !DILocation(line: 120, column: 5, scope: !172)
!176 = !DILocation(line: 120, column: 10, scope: !172)
!177 = !DILocation(line: 120, column: 17, scope: !172)
!178 = !DILocation(line: 121, column: 4, scope: !172)
!179 = !DILocation(line: 118, column: 45, scope: !168)
!180 = !DILocation(line: 118, column: 4, scope: !168)
!181 = distinct !{!181, !170, !182}
!182 = !DILocation(line: 121, column: 4, scope: !165)
!183 = !DILocation(line: 122, column: 4, scope: !163)
!184 = !DILocation(line: 123, column: 15, scope: !185)
!185 = distinct !DILexicalBlock(scope: !158, file: !3, line: 123, column: 14)
!186 = !DILocation(line: 123, column: 14, scope: !185)
!187 = !DILocation(line: 123, column: 19, scope: !185)
!188 = !DILocation(line: 123, column: 14, scope: !158)
!189 = !DILocation(line: 124, column: 33, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 123, column: 27)
!191 = !DILocation(line: 125, column: 4, scope: !190)
!192 = !DILocation(line: 127, column: 10, scope: !143)
!193 = !DILocation(line: 128, column: 2, scope: !143)
!194 = !DILocation(line: 130, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !109, file: !3, line: 130, column: 2)
!196 = !DILocation(line: 130, column: 7, scope: !195)
!197 = !DILocation(line: 130, column: 14, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !3, line: 130, column: 2)
!199 = !DILocation(line: 130, column: 16, scope: !198)
!200 = !DILocation(line: 130, column: 2, scope: !195)
!201 = !DILocation(line: 131, column: 28, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !3, line: 130, column: 47)
!203 = !DILocation(line: 131, column: 10, scope: !202)
!204 = !DILocation(line: 131, column: 7, scope: !202)
!205 = !DILocation(line: 132, column: 15, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !3, line: 132, column: 7)
!207 = !DILocation(line: 132, column: 20, scope: !206)
!208 = !DILocation(line: 132, column: 28, scope: !206)
!209 = !DILocation(line: 132, column: 8, scope: !206)
!210 = !DILocation(line: 132, column: 7, scope: !202)
!211 = !DILocation(line: 133, column: 18, scope: !212)
!212 = distinct !DILexicalBlock(scope: !206, file: !3, line: 132, column: 34)
!213 = !DILocation(line: 133, column: 4, scope: !212)
!214 = !DILocation(line: 133, column: 9, scope: !212)
!215 = !DILocation(line: 133, column: 16, scope: !212)
!216 = !DILocation(line: 134, column: 4, scope: !212)
!217 = !DILocation(line: 135, column: 14, scope: !218)
!218 = distinct !DILexicalBlock(scope: !206, file: !3, line: 135, column: 14)
!219 = !DILocation(line: 135, column: 19, scope: !218)
!220 = !DILocation(line: 135, column: 29, scope: !218)
!221 = !DILocation(line: 135, column: 14, scope: !206)
!222 = !DILocation(line: 136, column: 18, scope: !223)
!223 = distinct !DILexicalBlock(scope: !218, file: !3, line: 135, column: 38)
!224 = !DILocation(line: 136, column: 4, scope: !223)
!225 = !DILocation(line: 136, column: 9, scope: !223)
!226 = !DILocation(line: 136, column: 16, scope: !223)
!227 = !DILocation(line: 137, column: 12, scope: !223)
!228 = !DILocation(line: 137, column: 17, scope: !223)
!229 = !DILocation(line: 137, column: 25, scope: !223)
!230 = !DILocation(line: 137, column: 4, scope: !223)
!231 = !DILocation(line: 138, column: 4, scope: !223)
!232 = !DILocation(line: 140, column: 2, scope: !202)
!233 = !DILocation(line: 130, column: 43, scope: !198)
!234 = !DILocation(line: 130, column: 2, scope: !198)
!235 = distinct !{!235, !200, !236}
!236 = !DILocation(line: 140, column: 2, scope: !195)
!237 = !DILocation(line: 141, column: 1, scope: !109)
!238 = distinct !DISubprogram(name: "osi_setup", scope: !3, file: !3, line: 249, type: !25, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!239 = !DILocalVariable(name: "str", arg: 1, scope: !238, file: !3, line: 249, type: !28)
!240 = !DILocation(line: 249, column: 35, scope: !238)
!241 = !DILocation(line: 251, column: 6, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !3, line: 251, column: 6)
!243 = !DILocation(line: 251, column: 10, scope: !242)
!244 = !DILocation(line: 251, column: 30, scope: !242)
!245 = !DILocation(line: 251, column: 14, scope: !242)
!246 = !DILocation(line: 251, column: 6, scope: !238)
!247 = !DILocation(line: 252, column: 3, scope: !242)
!248 = !DILocation(line: 253, column: 11, scope: !249)
!249 = distinct !DILexicalBlock(scope: !242, file: !3, line: 253, column: 11)
!250 = !DILocation(line: 253, column: 15, scope: !249)
!251 = !DILocation(line: 253, column: 36, scope: !249)
!252 = !DILocation(line: 253, column: 19, scope: !249)
!253 = !DILocation(line: 253, column: 11, scope: !242)
!254 = !DILocation(line: 254, column: 3, scope: !249)
!255 = !DILocation(line: 255, column: 11, scope: !256)
!256 = distinct !DILexicalBlock(scope: !249, file: !3, line: 255, column: 11)
!257 = !DILocation(line: 255, column: 15, scope: !256)
!258 = !DILocation(line: 255, column: 36, scope: !256)
!259 = !DILocation(line: 255, column: 19, scope: !256)
!260 = !DILocation(line: 255, column: 11, scope: !249)
!261 = !DILocation(line: 256, column: 3, scope: !256)
!262 = !DILocation(line: 257, column: 11, scope: !263)
!263 = distinct !DILexicalBlock(scope: !256, file: !3, line: 257, column: 11)
!264 = !DILocation(line: 257, column: 15, scope: !263)
!265 = !DILocation(line: 257, column: 37, scope: !263)
!266 = !DILocation(line: 257, column: 19, scope: !263)
!267 = !DILocation(line: 257, column: 11, scope: !256)
!268 = !DILocation(line: 258, column: 3, scope: !263)
!269 = !DILocation(line: 260, column: 18, scope: !263)
!270 = !DILocation(line: 260, column: 3, scope: !263)
!271 = !DILocation(line: 262, column: 2, scope: !238)
!272 = distinct !DISubprogram(name: "acpi_osi_is_win8", scope: !3, file: !3, line: 266, type: !273, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !90)
!273 = !DISubroutineType(types: !274)
!274 = !{!40}
!275 = !DILocation(line: 268, column: 9, scope: !272)
!276 = !DILocation(line: 268, column: 27, scope: !272)
!277 = !DILocation(line: 268, column: 2, scope: !272)
!278 = distinct !DISubprogram(name: "early_acpi_osi_init", scope: !3, file: !3, line: 500, type: !279, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !90)
!279 = !DISubroutineType(types: !280)
!280 = !{!27}
!281 = !DILocation(line: 502, column: 2, scope: !278)
!282 = !DILocation(line: 504, column: 2, scope: !278)
!283 = distinct !DISubprogram(name: "acpi_osi_dmi_blacklisted", scope: !3, file: !3, line: 491, type: !284, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!284 = !DISubroutineType(types: !285)
!285 = !{null}
!286 = !DILocation(line: 493, column: 2, scope: !283)
!287 = !DILocation(line: 496, column: 6, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !3, line: 496, column: 6)
!289 = !DILocation(line: 496, column: 6, scope: !283)
!290 = !DILocation(line: 497, column: 3, scope: !288)
!291 = !DILocation(line: 498, column: 1, scope: !283)
!292 = distinct !DISubprogram(name: "acpi_osi_init", scope: !3, file: !3, line: 507, type: !279, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !90)
!293 = !DILocation(line: 509, column: 2, scope: !292)
!294 = !DILocation(line: 510, column: 2, scope: !292)
!295 = !DILocation(line: 512, column: 2, scope: !292)
!296 = !DILocalVariable(name: "interface", arg: 1, scope: !81, file: !3, line: 73, type: !88)
!297 = !DILocation(line: 73, column: 41, scope: !81)
!298 = !DILocalVariable(name: "supported", arg: 2, scope: !81, file: !3, line: 73, type: !84)
!299 = !DILocation(line: 73, column: 56, scope: !81)
!300 = !DILocation(line: 75, column: 23, scope: !301)
!301 = distinct !DILexicalBlock(scope: !81, file: !3, line: 75, column: 6)
!302 = !DILocation(line: 75, column: 7, scope: !301)
!303 = !DILocation(line: 75, column: 6, scope: !81)
!304 = !DILocalVariable(name: "__ret_print_once", scope: !305, file: !3, line: 76, type: !40)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 76, column: 3)
!306 = distinct !DILexicalBlock(scope: !301, file: !3, line: 75, column: 35)
!307 = !DILocation(line: 76, column: 3, scope: !305)
!308 = !DILocation(line: 76, column: 3, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !3, line: 76, column: 3)
!310 = !DILocation(line: 76, column: 3, scope: !311)
!311 = distinct !DILexicalBlock(scope: !309, file: !3, line: 76, column: 3)
!312 = !DILocation(line: 81, column: 2, scope: !306)
!313 = !DILocation(line: 82, column: 24, scope: !314)
!314 = distinct !DILexicalBlock(scope: !81, file: !3, line: 82, column: 6)
!315 = !DILocation(line: 82, column: 7, scope: !314)
!316 = !DILocation(line: 82, column: 6, scope: !81)
!317 = !DILocalVariable(name: "__ret_print_once", scope: !318, file: !3, line: 83, type: !40)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 83, column: 3)
!319 = distinct !DILexicalBlock(scope: !314, file: !3, line: 82, column: 36)
!320 = !DILocation(line: 83, column: 3, scope: !318)
!321 = !DILocation(line: 83, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !3, line: 83, column: 3)
!323 = !DILocation(line: 83, column: 3, scope: !324)
!324 = distinct !DILexicalBlock(scope: !322, file: !3, line: 83, column: 3)
!325 = !DILocation(line: 88, column: 2, scope: !319)
!326 = !DILocation(line: 90, column: 9, scope: !81)
!327 = !DILocation(line: 90, column: 2, scope: !81)
!328 = distinct !DISubprogram(name: "acpi_osi_setup_late", scope: !3, file: !3, line: 216, type: !284, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!329 = !DILocalVariable(name: "osi", scope: !328, file: !3, line: 218, type: !115)
!330 = !DILocation(line: 218, column: 25, scope: !328)
!331 = !DILocalVariable(name: "str", scope: !328, file: !3, line: 219, type: !28)
!332 = !DILocation(line: 219, column: 8, scope: !328)
!333 = !DILocalVariable(name: "i", scope: !328, file: !3, line: 220, type: !27)
!334 = !DILocation(line: 220, column: 6, scope: !328)
!335 = !DILocalVariable(name: "status", scope: !328, file: !3, line: 221, type: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !89, line: 421, baseType: !84)
!337 = !DILocation(line: 221, column: 14, scope: !328)
!338 = !DILocation(line: 223, column: 17, scope: !339)
!339 = distinct !DILexicalBlock(scope: !328, file: !3, line: 223, column: 6)
!340 = !DILocation(line: 223, column: 6, scope: !339)
!341 = !DILocation(line: 223, column: 6, scope: !328)
!342 = !DILocation(line: 224, column: 46, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !3, line: 223, column: 36)
!344 = !DILocation(line: 224, column: 12, scope: !343)
!345 = !DILocation(line: 224, column: 10, scope: !343)
!346 = !DILocation(line: 225, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !3, line: 225, column: 7)
!348 = !DILocation(line: 225, column: 7, scope: !343)
!349 = !DILocation(line: 226, column: 4, scope: !347)
!350 = !DILocation(line: 230, column: 2, scope: !343)
!351 = !DILocation(line: 232, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !328, file: !3, line: 232, column: 2)
!353 = !DILocation(line: 232, column: 7, scope: !352)
!354 = !DILocation(line: 232, column: 14, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !3, line: 232, column: 2)
!356 = !DILocation(line: 232, column: 16, scope: !355)
!357 = !DILocation(line: 232, column: 2, scope: !352)
!358 = !DILocation(line: 233, column: 28, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !3, line: 232, column: 47)
!360 = !DILocation(line: 233, column: 10, scope: !359)
!361 = !DILocation(line: 233, column: 7, scope: !359)
!362 = !DILocation(line: 234, column: 9, scope: !359)
!363 = !DILocation(line: 234, column: 14, scope: !359)
!364 = !DILocation(line: 234, column: 7, scope: !359)
!365 = !DILocation(line: 235, column: 8, scope: !366)
!366 = distinct !DILexicalBlock(scope: !359, file: !3, line: 235, column: 7)
!367 = !DILocation(line: 235, column: 7, scope: !366)
!368 = !DILocation(line: 235, column: 12, scope: !366)
!369 = !DILocation(line: 235, column: 7, scope: !359)
!370 = !DILocation(line: 236, column: 4, scope: !366)
!371 = !DILocation(line: 237, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !359, file: !3, line: 237, column: 7)
!373 = !DILocation(line: 237, column: 12, scope: !372)
!374 = !DILocation(line: 237, column: 7, scope: !359)
!375 = !DILocation(line: 238, column: 36, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !3, line: 237, column: 20)
!377 = !DILocation(line: 238, column: 13, scope: !376)
!378 = !DILocation(line: 238, column: 11, scope: !376)
!379 = !DILocation(line: 239, column: 8, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !3, line: 239, column: 8)
!381 = !DILocation(line: 239, column: 8, scope: !376)
!382 = !DILocation(line: 240, column: 5, scope: !380)
!383 = !DILocation(line: 241, column: 3, scope: !376)
!384 = !DILocation(line: 242, column: 35, scope: !385)
!385 = distinct !DILexicalBlock(scope: !372, file: !3, line: 241, column: 10)
!386 = !DILocation(line: 242, column: 13, scope: !385)
!387 = !DILocation(line: 242, column: 11, scope: !385)
!388 = !DILocation(line: 243, column: 8, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !3, line: 243, column: 8)
!390 = !DILocation(line: 243, column: 8, scope: !385)
!391 = !DILocation(line: 244, column: 5, scope: !389)
!392 = !DILocation(line: 246, column: 2, scope: !359)
!393 = !DILocation(line: 232, column: 43, scope: !355)
!394 = !DILocation(line: 232, column: 2, scope: !355)
!395 = distinct !{!395, !357, !396}
!396 = !DILocation(line: 246, column: 2, scope: !352)
!397 = !DILocation(line: 247, column: 1, scope: !328)
!398 = distinct !DISubprogram(name: "acpi_osi_setup_linux", scope: !3, file: !3, line: 201, type: !399, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !40}
!401 = !DILocalVariable(name: "enable", arg: 1, scope: !398, file: !3, line: 201, type: !40)
!402 = !DILocation(line: 201, column: 46, scope: !398)
!403 = !DILocation(line: 204, column: 23, scope: !398)
!404 = !DILocation(line: 205, column: 27, scope: !398)
!405 = !DILocation(line: 206, column: 25, scope: !398)
!406 = !DILocation(line: 206, column: 2, scope: !398)
!407 = !DILocation(line: 207, column: 1, scope: !398)
!408 = distinct !DISubprogram(name: "acpi_osi_setup_darwin", scope: !3, file: !3, line: 155, type: !399, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!409 = !DILocalVariable(name: "enable", arg: 1, scope: !408, file: !3, line: 155, type: !40)
!410 = !DILocation(line: 155, column: 47, scope: !408)
!411 = !DILocation(line: 158, column: 24, scope: !408)
!412 = !DILocation(line: 159, column: 28, scope: !408)
!413 = !DILocation(line: 160, column: 26, scope: !408)
!414 = !DILocation(line: 160, column: 2, scope: !408)
!415 = !DILocation(line: 161, column: 1, scope: !408)
!416 = distinct !DISubprogram(name: "__acpi_osi_setup_linux", scope: !3, file: !3, line: 192, type: !399, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!417 = !DILocalVariable(name: "enable", arg: 1, scope: !416, file: !3, line: 192, type: !40)
!418 = !DILocation(line: 192, column: 48, scope: !416)
!419 = !DILocation(line: 194, column: 30, scope: !416)
!420 = !DILocation(line: 194, column: 29, scope: !416)
!421 = !DILocation(line: 194, column: 28, scope: !416)
!422 = !DILocation(line: 194, column: 26, scope: !416)
!423 = !DILocation(line: 195, column: 6, scope: !424)
!424 = distinct !DILexicalBlock(scope: !416, file: !3, line: 195, column: 6)
!425 = !DILocation(line: 195, column: 6, scope: !416)
!426 = !DILocation(line: 196, column: 3, scope: !424)
!427 = !DILocation(line: 198, column: 3, scope: !424)
!428 = !DILocation(line: 199, column: 1, scope: !416)
!429 = distinct !DISubprogram(name: "__acpi_osi_setup_darwin", scope: !3, file: !3, line: 143, type: !399, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!430 = !DILocalVariable(name: "enable", arg: 1, scope: !429, file: !3, line: 143, type: !40)
!431 = !DILocation(line: 143, column: 49, scope: !429)
!432 = !DILocation(line: 145, column: 31, scope: !429)
!433 = !DILocation(line: 145, column: 30, scope: !429)
!434 = !DILocation(line: 145, column: 29, scope: !429)
!435 = !DILocation(line: 145, column: 27, scope: !429)
!436 = !DILocation(line: 146, column: 6, scope: !437)
!437 = distinct !DILexicalBlock(scope: !429, file: !3, line: 146, column: 6)
!438 = !DILocation(line: 146, column: 6, scope: !429)
!439 = !DILocation(line: 147, column: 3, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !3, line: 146, column: 14)
!441 = !DILocation(line: 148, column: 3, scope: !440)
!442 = !DILocation(line: 149, column: 2, scope: !440)
!443 = !DILocation(line: 150, column: 3, scope: !444)
!444 = distinct !DILexicalBlock(scope: !437, file: !3, line: 149, column: 9)
!445 = !DILocation(line: 151, column: 3, scope: !444)
!446 = !DILocation(line: 153, column: 1, scope: !429)
!447 = distinct !DISubprogram(name: "acpi_osi_dmi_darwin", scope: !3, file: !3, line: 272, type: !284, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!448 = !DILocation(line: 274, column: 2, scope: !447)
!449 = !DILocation(line: 275, column: 24, scope: !447)
!450 = !DILocation(line: 276, column: 2, scope: !447)
!451 = !DILocation(line: 277, column: 1, scope: !447)
!452 = distinct !DISubprogram(name: "dmi_disable_osi_vista", scope: !3, file: !3, line: 294, type: !59, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!453 = !DILocalVariable(name: "d", arg: 1, scope: !452, file: !3, line: 294, type: !61)
!454 = !DILocation(line: 294, column: 69, scope: !452)
!455 = !DILocation(line: 296, column: 2, scope: !452)
!456 = !DILocation(line: 297, column: 2, scope: !452)
!457 = !DILocation(line: 298, column: 2, scope: !452)
!458 = !DILocation(line: 299, column: 2, scope: !452)
!459 = !DILocation(line: 301, column: 2, scope: !452)
!460 = distinct !DISubprogram(name: "dmi_disable_osi_win7", scope: !3, file: !3, line: 304, type: !59, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!461 = !DILocalVariable(name: "d", arg: 1, scope: !460, file: !3, line: 304, type: !61)
!462 = !DILocation(line: 304, column: 68, scope: !460)
!463 = !DILocation(line: 306, column: 2, scope: !460)
!464 = !DILocation(line: 307, column: 2, scope: !460)
!465 = !DILocation(line: 309, column: 2, scope: !460)
!466 = distinct !DISubprogram(name: "dmi_disable_osi_win8", scope: !3, file: !3, line: 312, type: !59, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!467 = !DILocalVariable(name: "d", arg: 1, scope: !466, file: !3, line: 312, type: !61)
!468 = !DILocation(line: 312, column: 68, scope: !466)
!469 = !DILocation(line: 314, column: 2, scope: !466)
!470 = !DILocation(line: 315, column: 2, scope: !466)
!471 = !DILocation(line: 317, column: 2, scope: !466)
!472 = distinct !DISubprogram(name: "dmi_enable_osi_linux", scope: !3, file: !3, line: 287, type: !59, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!473 = !DILocalVariable(name: "d", arg: 1, scope: !472, file: !3, line: 287, type: !61)
!474 = !DILocation(line: 287, column: 68, scope: !472)
!475 = !DILocation(line: 289, column: 27, scope: !472)
!476 = !DILocation(line: 289, column: 2, scope: !472)
!477 = !DILocation(line: 291, column: 2, scope: !472)
!478 = distinct !DISubprogram(name: "acpi_osi_dmi_linux", scope: !3, file: !3, line: 279, type: !479, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !90)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !40, !61}
!481 = !DILocalVariable(name: "enable", arg: 1, scope: !478, file: !3, line: 279, type: !40)
!482 = !DILocation(line: 279, column: 44, scope: !478)
!483 = !DILocalVariable(name: "d", arg: 2, scope: !478, file: !3, line: 280, type: !61)
!484 = !DILocation(line: 280, column: 39, scope: !478)
!485 = !DILocation(line: 282, column: 2, scope: !478)
!486 = !DILocation(line: 283, column: 23, scope: !478)
!487 = !DILocation(line: 284, column: 25, scope: !478)
!488 = !DILocation(line: 284, column: 2, scope: !478)
!489 = !DILocation(line: 285, column: 1, scope: !478)
