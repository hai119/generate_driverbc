; ModuleID = '../bcout/drivers/acpi/blacklist.llvm.bc'
source_filename = "drivers/acpi/blacklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_platform_list = type { [7 x i8], [9 x i8], i32, i8*, i32, i8*, i32 }
%struct.dmi_system_id = type { {}*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }

@acpi_blacklist = internal global [5 x %struct.acpi_platform_list] [%struct.acpi_platform_list { [7 x i8] c"PTLTD \00", [9 x i8] c"  DSDT  \00", i32 100925440, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 1 }, %struct.acpi_platform_list { [7 x i8] c"SONY  \00", [9 x i8] c"U0      \00", i32 536937235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i32 1 }, %struct.acpi_platform_list { [7 x i8] c"INT440\00", [9 x i8] c"SYSFexxx\00", i32 4097, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0), i32 1 }, %struct.acpi_platform_list { [7 x i8] c"IBM   \00", [9 x i8] c"TP600E  \00", i32 261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 1 }, %struct.acpi_platform_list zeroinitializer], section ".init.data", align 16, !dbg !0
@.str = private unnamed_addr constant [84 x i8] c"\013ACPI: Vendor \22%6.6s\22 System \22%8.8s\22 Revision 0x%x has a known ACPI BIOS problem.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\013ACPI: Reason: %s. This is a %s error\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"non-recoverable\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"recoverable\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Multiple problems\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ACPI driver problem\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Does not use _REG to protect EC OpRegions\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Incorrect _ADR\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"DELL XPS 13 (2015)\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"DELL Precision 5520\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"DELL Precision 3520\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"DELL Latitude 3350\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"DELL Inspiron 7537\00", align 1
@acpi_rev_dmi_table = internal constant [6 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }] [{ i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_enable_rev_override, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"XPS 13 9343\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_enable_rev_override, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Precision 5520\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_enable_rev_override, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Precision 3520\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_enable_rev_override, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Latitude 3350\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* @dmi_enable_rev_override, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Inspiron 7537\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } zeroinitializer], section ".init.rodata", align 16, !dbg !14
@.str.16 = private unnamed_addr constant [49 x i8] c"\015ACPI: DMI detected: %s (force ACPI _REV to 5)\0A\00", align 1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_blacklisted() #0 section ".init.text" !dbg !76 {
entry:
  %i = alloca i32, align 4
  %blacklisted = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %blacklisted, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %blacklisted, align 4, !dbg !83
  %call = call i32 @acpi_match_platform_list(%struct.acpi_platform_list* getelementptr inbounds ([5 x %struct.acpi_platform_list], [5 x %struct.acpi_platform_list]* @acpi_blacklist, i64 0, i64 0)) #4, !dbg !84
  store i32 %call, i32* %i, align 4, !dbg !85
  %0 = load i32, i32* %i, align 4, !dbg !86
  %cmp = icmp sge i32 %0, 0, !dbg !88
  br i1 %cmp, label %if.then, label %if.end, !dbg !89

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i, align 4, !dbg !90
  %idxprom = sext i32 %1 to i64, !dbg !90
  %arrayidx = getelementptr [5 x %struct.acpi_platform_list], [5 x %struct.acpi_platform_list]* @acpi_blacklist, i64 0, i64 %idxprom, !dbg !90
  %oem_id = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %arrayidx, i32 0, i32 0, !dbg !90
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %oem_id, i64 0, i64 0, !dbg !90
  %2 = load i32, i32* %i, align 4, !dbg !90
  %idxprom1 = sext i32 %2 to i64, !dbg !90
  %arrayidx2 = getelementptr [5 x %struct.acpi_platform_list], [5 x %struct.acpi_platform_list]* @acpi_blacklist, i64 0, i64 %idxprom1, !dbg !90
  %oem_table_id = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %arrayidx2, i32 0, i32 1, !dbg !90
  %arraydecay3 = getelementptr inbounds [9 x i8], [9 x i8]* %oem_table_id, i64 0, i64 0, !dbg !90
  %3 = load i32, i32* %i, align 4, !dbg !90
  %idxprom4 = sext i32 %3 to i64, !dbg !90
  %arrayidx5 = getelementptr [5 x %struct.acpi_platform_list], [5 x %struct.acpi_platform_list]* @acpi_blacklist, i64 0, i64 %idxprom4, !dbg !90
  %oem_revision = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %arrayidx5, i32 0, i32 2, !dbg !90
  %4 = load i32, i32* %oem_revision, align 8, !dbg !90
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay3, i32 %4) #5, !dbg !90
  %5 = load i32, i32* %i, align 4, !dbg !92
  %idxprom7 = sext i32 %5 to i64, !dbg !92
  %arrayidx8 = getelementptr [5 x %struct.acpi_platform_list], [5 x %struct.acpi_platform_list]* @acpi_blacklist, i64 0, i64 %idxprom7, !dbg !92
  %reason = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %arrayidx8, i32 0, i32 5, !dbg !92
  %6 = load i8*, i8** %reason, align 8, !dbg !92
  %7 = load i32, i32* %i, align 4, !dbg !92
  %idxprom9 = sext i32 %7 to i64, !dbg !92
  %arrayidx10 = getelementptr [5 x %struct.acpi_platform_list], [5 x %struct.acpi_platform_list]* @acpi_blacklist, i64 0, i64 %idxprom9, !dbg !92
  %data = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %arrayidx10, i32 0, i32 6, !dbg !92
  %8 = load i32, i32* %data, align 8, !dbg !92
  %tobool = icmp ne i32 %8, 0, !dbg !92
  %9 = zext i1 %tobool to i64, !dbg !92
  %cond = select i1 %tobool, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), !dbg !92
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %6, i8* %cond) #5, !dbg !92
  %10 = load i32, i32* %i, align 4, !dbg !93
  %idxprom12 = sext i32 %10 to i64, !dbg !94
  %arrayidx13 = getelementptr [5 x %struct.acpi_platform_list], [5 x %struct.acpi_platform_list]* @acpi_blacklist, i64 0, i64 %idxprom12, !dbg !94
  %data14 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %arrayidx13, i32 0, i32 6, !dbg !95
  %11 = load i32, i32* %data14, align 8, !dbg !95
  store i32 %11, i32* %blacklisted, align 4, !dbg !96
  br label %if.end, !dbg !97

if.end:                                           ; preds = %if.then, %entry
  %call15 = call i32 @early_acpi_osi_init() #4, !dbg !98
  %call16 = call i32 @dmi_check_system(%struct.dmi_system_id* getelementptr inbounds ([6 x %struct.dmi_system_id], [6 x %struct.dmi_system_id]* bitcast ([6 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }]* @acpi_rev_dmi_table to [6 x %struct.dmi_system_id]*), i64 0, i64 0)) #4, !dbg !99
  %12 = load i32, i32* %blacklisted, align 4, !dbg !100
  ret i32 %12, !dbg !101
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_match_platform_list(%struct.acpi_platform_list*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @early_acpi_osi_init() #2

; Function Attrs: noredzone
declare dso_local i32 @dmi_check_system(%struct.dmi_system_id*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @dmi_enable_rev_override(%struct.dmi_system_id* %d) #0 section ".init.text" !dbg !102 {
entry:
  %d.addr = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %d, %struct.dmi_system_id** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dmi_system_id** %d.addr, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = load %struct.dmi_system_id*, %struct.dmi_system_id** %d.addr, align 8, !dbg !105
  %ident = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %0, i32 0, i32 1, !dbg !106
  %1 = load i8*, i8** %ident, align 8, !dbg !106
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i8* %1) #5, !dbg !107
  %call1 = call i32 @acpi_rev_override_setup(i8* null) #4, !dbg !108
  ret i32 0, !dbg !109
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_rev_override_setup(i8*) #2

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_blacklist", scope: !2, file: !3, line: 28, type: !48, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/blacklist.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_predicate", file: !6, line: 622, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "all_versions", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "less_than_or_equal", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "equal", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "greater_than_or_equal", value: 3, isUnsigned: true)
!13 = !{!0, !14}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "acpi_rev_dmi_table", scope: !2, file: !3, line: 83, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 16512, elements: !46)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !19, line: 566, size: 2752, elements: !20)
!19 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !27, !31, !44}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !18, file: !19, line: 567, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !26}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !18, file: !19, line: 568, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !18, file: !19, line: 569, baseType: !32, size: 2560, offset: 128)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2560, elements: !42)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !19, line: 560, size: 640, elements: !34)
!34 = !{!35, !37, !38}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !33, file: !19, line: 561, baseType: !36, size: 7, flags: DIFlagBitField, extraData: i64 0)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !33, file: !19, line: 562, baseType: !36, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !33, file: !19, line: 563, baseType: !39, size: 632, offset: 8)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 632, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 79)
!42 = !{!43}
!43 = !DISubrange(count: 4)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !18, file: !19, line: 570, baseType: !45, size: 64, offset: 2688)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !{!47}
!47 = !DISubrange(count: 6)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2240, elements: !69)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_platform_list", file: !6, line: 630, size: 448, elements: !50)
!50 = !{!51, !55, !59, !64, !66, !67, !68}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !49, file: !6, line: 631, baseType: !52, size: 56)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 56, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 7)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !49, file: !6, line: 632, baseType: !56, size: 72, offset: 56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 72, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 9)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !49, file: !6, line: 633, baseType: !60, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !61, line: 21, baseType: !62)
!61 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !63, line: 27, baseType: !7)
!63 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!64 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !49, file: !6, line: 634, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !49, file: !6, line: 635, baseType: !5, size: 32, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !49, file: !6, line: 636, baseType: !65, size: 64, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !49, file: !6, line: 637, baseType: !60, size: 32, offset: 384)
!69 = !{!70}
!70 = !DISubrange(count: 5)
!71 = !{i32 7, !"Dwarf Version", i32 4}
!72 = !{i32 2, !"Debug Info Version", i32 3}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"Code Model", i32 2}
!75 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!76 = distinct !DISubprogram(name: "acpi_blacklisted", scope: !3, file: !3, line: 45, type: !77, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{!25}
!79 = !{}
!80 = !DILocalVariable(name: "i", scope: !76, file: !3, line: 47, type: !25)
!81 = !DILocation(line: 47, column: 6, scope: !76)
!82 = !DILocalVariable(name: "blacklisted", scope: !76, file: !3, line: 48, type: !25)
!83 = !DILocation(line: 48, column: 6, scope: !76)
!84 = !DILocation(line: 50, column: 6, scope: !76)
!85 = !DILocation(line: 50, column: 4, scope: !76)
!86 = !DILocation(line: 51, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !76, file: !3, line: 51, column: 6)
!88 = !DILocation(line: 51, column: 8, scope: !87)
!89 = !DILocation(line: 51, column: 6, scope: !76)
!90 = !DILocation(line: 52, column: 3, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 51, column: 14)
!92 = !DILocation(line: 57, column: 3, scope: !91)
!93 = !DILocation(line: 62, column: 32, scope: !91)
!94 = !DILocation(line: 62, column: 17, scope: !91)
!95 = !DILocation(line: 62, column: 35, scope: !91)
!96 = !DILocation(line: 62, column: 15, scope: !91)
!97 = !DILocation(line: 63, column: 2, scope: !91)
!98 = !DILocation(line: 65, column: 8, scope: !76)
!99 = !DILocation(line: 67, column: 2, scope: !76)
!100 = !DILocation(line: 70, column: 9, scope: !76)
!101 = !DILocation(line: 70, column: 2, scope: !76)
!102 = distinct !DISubprogram(name: "dmi_enable_rev_override", scope: !3, file: !3, line: 74, type: !23, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !79)
!103 = !DILocalVariable(name: "d", arg: 1, scope: !102, file: !3, line: 74, type: !26)
!104 = !DILocation(line: 74, column: 71, scope: !102)
!105 = !DILocation(line: 77, column: 9, scope: !102)
!106 = !DILocation(line: 77, column: 12, scope: !102)
!107 = !DILocation(line: 76, column: 2, scope: !102)
!108 = !DILocation(line: 78, column: 2, scope: !102)
!109 = !DILocation(line: 79, column: 2, scope: !102)
