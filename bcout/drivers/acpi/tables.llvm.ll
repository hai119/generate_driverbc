; ModuleID = '../bcout/drivers/acpi/tables.llvm.bc'
source_filename = "drivers/acpi/tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_desc = type { i64, %struct.acpi_table_header*, i32, %union.acpi_name_union, i16, i8, i16 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%union.acpi_name_union = type { i32 }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.acpi_subtable_header = type { i8, i8 }
%struct.acpi_madt_local_apic = type { %struct.acpi_subtable_header, i8, i8, i32 }
%struct.acpi_madt_local_x2apic = type { %struct.acpi_subtable_header, i16, i32, i32, i32 }
%struct.acpi_madt_io_apic = type { %struct.acpi_subtable_header, i8, i8, i32, i32 }
%struct.acpi_madt_interrupt_override = type <{ %struct.acpi_subtable_header, i8, i8, i32, i16 }>
%struct.acpi_madt_nmi_source = type { %struct.acpi_subtable_header, i16, i32 }
%struct.acpi_madt_local_apic_nmi = type <{ %struct.acpi_subtable_header, i8, i16, i8 }>
%struct.acpi_madt_local_x2apic_nmi = type { %struct.acpi_subtable_header, i16, i32, i8, [3 x i8] }
%struct.acpi_madt_local_apic_override = type <{ %struct.acpi_subtable_header, i16, i64 }>
%struct.acpi_madt_io_sapic = type { %struct.acpi_subtable_header, i8, i8, i32, i64 }
%struct.acpi_madt_local_sapic = type <{ %struct.acpi_subtable_header, i8, i8, i8, [3 x i8], i32, i32, [1 x i8] }>
%struct.acpi_madt_interrupt_source = type { %struct.acpi_subtable_header, i16, i8, i8, i8, i8, i32, i32 }
%struct.acpi_madt_generic_interrupt = type <{ %struct.acpi_subtable_header, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i64, i8, [1 x i8], i16 }>
%struct.acpi_madt_generic_distributor = type { %struct.acpi_subtable_header, i16, i32, i64, i32, i8, [3 x i8] }
%struct.acpi_subtable_proc = type { i32, i32 (%union.acpi_subtable_headers*, i64)*, i32 }
%union.acpi_subtable_headers = type { %struct.acpi_hmat_structure }
%struct.acpi_hmat_structure = type { i16, i16, i32 }
%struct.acpi_subtable_entry = type { %union.acpi_subtable_headers*, i32 }

@.str = private unnamed_addr constant [61 x i8] c"\016ACPI: INT_SRC_OVR (bus %d bus_irq %d global_irq %d %s %s)\0A\00", align 1
@mps_inti_flags_polarity = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)], align 16, !dbg !0
@mps_inti_flags_trigger = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)], align 16, !dbg !264
@.str.1 = private unnamed_addr constant [53 x i8] c"\016ACPI: INT_SRC_OVR unexpected reserved flags: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\016ACPI: NMI_SRC (%s %s global_irq %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\016ACPI: LAPIC_NMI (acpi_id[0x%02x] %s %s lint[0x%x])\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"\016ACPI: X2APIC_NMI (uid[0x%02x] %s %s lint[0x%x])\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\016ACPI: LAPIC_ADDR_OVR (address[%p])\0A\00", align 1
@.str.6 = private unnamed_addr constant [99 x i8] c"\016ACPI: PLAT_INT_SRC (%s %s type[0x%x] id[0x%04x] eid[0x%x] iosapic_vector[0x%x] global_irq[0x%x]\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"\014ACPI: Found unsupported MADT entry (type = 0x%x)\0A\00", align 1
@acpi_disabled = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"APIC\00", align 1
@acpi_apic_instance = internal global i32 0, section ".init.data", align 4, !dbg !262
@.str.9 = private unnamed_addr constant [27 x i8] c"\014ACPI: %4.4s not present\0A\00", align 1
@acpi_verify_table_checksum = internal global i8 0, section ".init.data", align 1, !dbg !267
@.str.10 = private unnamed_addr constant [51 x i8] c"\016ACPI: Early table checksum verification enabled\0A\00", align 1
@acpi_gbl_enable_table_validation = external dso_local global i8, align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"\016ACPI: Early table checksum verification disabled\0A\00", align 1
@initial_tables = internal global [128 x %struct.acpi_table_desc] zeroinitializer, section ".init.data", align 16, !dbg !220
@__setup_str_acpi_parse_apic_instance = internal constant [19 x i8] c"acpi_apic_instance\00", section ".init.rodata", align 1, !dbg !272
@__setup_acpi_parse_apic_instance = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__setup_str_acpi_parse_apic_instance, i32 0, i32 0), i32 (i8*)* @acpi_parse_apic_instance, i32 1 }, section ".init.setup", align 8, !dbg !201
@__setup_str_acpi_force_table_verification_setup = internal constant [30 x i8] c"acpi_force_table_verification\00", section ".init.rodata", align 1, !dbg !277
@__setup_acpi_force_table_verification_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__setup_str_acpi_force_table_verification_setup, i32 0, i32 0), i32 (i8*)* @acpi_force_table_verification_setup, i32 1 }, section ".init.setup", align 8, !dbg !216
@__setup_str_acpi_force_32bit_fadt_addr = internal constant [27 x i8] c"acpi_force_32bit_fadt_addr\00", section ".init.rodata", align 1, !dbg !282
@__setup_acpi_force_32bit_fadt_addr = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__setup_str_acpi_force_32bit_fadt_addr, i32 0, i32 0), i32 (i8*)* @acpi_force_32bit_fadt_addr, i32 1 }, section ".init.setup", align 8, !dbg !218
@.str.12 = private unnamed_addr constant [4 x i8] c"dfl\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"res\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"\013ACPI: [%4.4s:0x%02x] Invalid zero length\0A\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"\014ACPI: [%4.4s:0x%02x] found the maximum %i entries\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"HMAT\00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"\014ACPI: Override [%4.4s-%8.8s], this is unsafe: tainting kernel\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"\014ACPI: BIOS bug: multiple APIC/MADT found, using %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [84 x i8] c"\014ACPI: If \22acpi_apic_instance=%d\22 works better, notify linux-acpi@vger.kernel.org\0A\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"\015ACPI: Shall use APIC/MADT table %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"\016ACPI: Forcing 32 Bit FADT addresses\0A\00", align 1
@acpi_gbl_use32_bit_fadt_addresses = external dso_local global i8, align 1
@llvm.used = appending global [3 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_acpi_parse_apic_instance to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_acpi_force_table_verification_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_acpi_force_32bit_fadt_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_table_print_madt_entry(%struct.acpi_subtable_header* %header) #0 !dbg !292 {
entry:
  %header.addr = alloca %struct.acpi_subtable_header*, align 8
  %p = alloca %struct.acpi_madt_local_apic*, align 8
  %tmp = alloca i32, align 4
  %p2 = alloca %struct.acpi_madt_local_x2apic*, align 8
  %tmp3 = alloca i32, align 4
  %p5 = alloca %struct.acpi_madt_io_apic*, align 8
  %tmp6 = alloca i32, align 4
  %p8 = alloca %struct.acpi_madt_interrupt_override*, align 8
  %p28 = alloca %struct.acpi_madt_nmi_source*, align 8
  %p43 = alloca %struct.acpi_madt_local_apic_nmi*, align 8
  %polarity = alloca i16, align 2
  %trigger = alloca i16, align 2
  %p59 = alloca %struct.acpi_madt_local_x2apic_nmi*, align 8
  %p77 = alloca %struct.acpi_madt_local_apic_override*, align 8
  %p80 = alloca %struct.acpi_madt_io_sapic*, align 8
  %tmp81 = alloca i32, align 4
  %p83 = alloca %struct.acpi_madt_local_sapic*, align 8
  %tmp84 = alloca i32, align 4
  %p86 = alloca %struct.acpi_madt_interrupt_source*, align 8
  %p106 = alloca %struct.acpi_madt_generic_interrupt*, align 8
  %tmp107 = alloca i32, align 4
  %p109 = alloca %struct.acpi_madt_generic_distributor*, align 8
  %tmp110 = alloca i32, align 4
  store %struct.acpi_subtable_header* %header, %struct.acpi_subtable_header** %header.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_header** %header.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !299
  %tobool = icmp ne %struct.acpi_subtable_header* %0, null, !dbg !299
  br i1 %tobool, label %if.end, label %if.then, !dbg !301

if.then:                                          ; preds = %entry
  br label %sw.epilog, !dbg !302

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !303
  %type = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %1, i32 0, i32 0, !dbg !304
  %2 = load i8, i8* %type, align 1, !dbg !304
  %conv = zext i8 %2 to i32, !dbg !303
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 9, label %sw.bb1
    i32 1, label %sw.bb4
    i32 2, label %sw.bb7
    i32 3, label %sw.bb27
    i32 4, label %sw.bb42
    i32 10, label %sw.bb58
    i32 5, label %sw.bb76
    i32 6, label %sw.bb79
    i32 7, label %sw.bb82
    i32 8, label %sw.bb85
    i32 11, label %sw.bb105
    i32 12, label %sw.bb108
  ], !dbg !305

sw.bb:                                            ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_local_apic** %p, metadata !306, metadata !DIExpression()), !dbg !309
  %3 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !310
  %4 = bitcast %struct.acpi_subtable_header* %3 to %struct.acpi_madt_local_apic*, !dbg !311
  store %struct.acpi_madt_local_apic* %4, %struct.acpi_madt_local_apic** %p, align 8, !dbg !309
  store i32 0, i32* %tmp, align 4, !dbg !312
  %5 = load i32, i32* %tmp, align 4, !dbg !315
  br label %sw.epilog, !dbg !316

sw.bb1:                                           ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_local_x2apic** %p2, metadata !317, metadata !DIExpression()), !dbg !319
  %6 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !320
  %7 = bitcast %struct.acpi_subtable_header* %6 to %struct.acpi_madt_local_x2apic*, !dbg !321
  store %struct.acpi_madt_local_x2apic* %7, %struct.acpi_madt_local_x2apic** %p2, align 8, !dbg !319
  store i32 0, i32* %tmp3, align 4, !dbg !322
  %8 = load i32, i32* %tmp3, align 4, !dbg !325
  br label %sw.epilog, !dbg !326

sw.bb4:                                           ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_io_apic** %p5, metadata !327, metadata !DIExpression()), !dbg !329
  %9 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !330
  %10 = bitcast %struct.acpi_subtable_header* %9 to %struct.acpi_madt_io_apic*, !dbg !331
  store %struct.acpi_madt_io_apic* %10, %struct.acpi_madt_io_apic** %p5, align 8, !dbg !329
  store i32 0, i32* %tmp6, align 4, !dbg !332
  %11 = load i32, i32* %tmp6, align 4, !dbg !335
  br label %sw.epilog, !dbg !336

sw.bb7:                                           ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_interrupt_override** %p8, metadata !337, metadata !DIExpression()), !dbg !339
  %12 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !340
  %13 = bitcast %struct.acpi_subtable_header* %12 to %struct.acpi_madt_interrupt_override*, !dbg !341
  store %struct.acpi_madt_interrupt_override* %13, %struct.acpi_madt_interrupt_override** %p8, align 8, !dbg !339
  %14 = load %struct.acpi_madt_interrupt_override*, %struct.acpi_madt_interrupt_override** %p8, align 8, !dbg !342
  %bus = getelementptr inbounds %struct.acpi_madt_interrupt_override, %struct.acpi_madt_interrupt_override* %14, i32 0, i32 1, !dbg !342
  %15 = load i8, i8* %bus, align 1, !dbg !342
  %conv9 = zext i8 %15 to i32, !dbg !342
  %16 = load %struct.acpi_madt_interrupt_override*, %struct.acpi_madt_interrupt_override** %p8, align 8, !dbg !342
  %source_irq = getelementptr inbounds %struct.acpi_madt_interrupt_override, %struct.acpi_madt_interrupt_override* %16, i32 0, i32 2, !dbg !342
  %17 = load i8, i8* %source_irq, align 1, !dbg !342
  %conv10 = zext i8 %17 to i32, !dbg !342
  %18 = load %struct.acpi_madt_interrupt_override*, %struct.acpi_madt_interrupt_override** %p8, align 8, !dbg !342
  %global_irq = getelementptr inbounds %struct.acpi_madt_interrupt_override, %struct.acpi_madt_interrupt_override* %18, i32 0, i32 3, !dbg !342
  %19 = load i32, i32* %global_irq, align 1, !dbg !342
  %20 = load %struct.acpi_madt_interrupt_override*, %struct.acpi_madt_interrupt_override** %p8, align 8, !dbg !342
  %inti_flags = getelementptr inbounds %struct.acpi_madt_interrupt_override, %struct.acpi_madt_interrupt_override* %20, i32 0, i32 4, !dbg !342
  %21 = load i16, i16* %inti_flags, align 1, !dbg !342
  %conv11 = zext i16 %21 to i32, !dbg !342
  %and = and i32 %conv11, 3, !dbg !342
  %idxprom = sext i32 %and to i64, !dbg !342
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @mps_inti_flags_polarity, i64 0, i64 %idxprom, !dbg !342
  %22 = load i8*, i8** %arrayidx, align 8, !dbg !342
  %23 = load %struct.acpi_madt_interrupt_override*, %struct.acpi_madt_interrupt_override** %p8, align 8, !dbg !342
  %inti_flags12 = getelementptr inbounds %struct.acpi_madt_interrupt_override, %struct.acpi_madt_interrupt_override* %23, i32 0, i32 4, !dbg !342
  %24 = load i16, i16* %inti_flags12, align 1, !dbg !342
  %conv13 = zext i16 %24 to i32, !dbg !342
  %and14 = and i32 %conv13, 12, !dbg !342
  %shr = ashr i32 %and14, 2, !dbg !342
  %idxprom15 = sext i32 %shr to i64, !dbg !342
  %arrayidx16 = getelementptr [4 x i8*], [4 x i8*]* @mps_inti_flags_trigger, i64 0, i64 %idxprom15, !dbg !342
  %25 = load i8*, i8** %arrayidx16, align 8, !dbg !342
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %conv9, i32 %conv10, i32 %19, i8* %22, i8* %25) #5, !dbg !342
  %26 = load %struct.acpi_madt_interrupt_override*, %struct.acpi_madt_interrupt_override** %p8, align 8, !dbg !343
  %inti_flags17 = getelementptr inbounds %struct.acpi_madt_interrupt_override, %struct.acpi_madt_interrupt_override* %26, i32 0, i32 4, !dbg !345
  %27 = load i16, i16* %inti_flags17, align 1, !dbg !345
  %conv18 = zext i16 %27 to i32, !dbg !343
  %and19 = and i32 %conv18, -16, !dbg !346
  %tobool20 = icmp ne i32 %and19, 0, !dbg !346
  br i1 %tobool20, label %if.then21, label %if.end26, !dbg !347

if.then21:                                        ; preds = %sw.bb7
  %28 = load %struct.acpi_madt_interrupt_override*, %struct.acpi_madt_interrupt_override** %p8, align 8, !dbg !348
  %inti_flags22 = getelementptr inbounds %struct.acpi_madt_interrupt_override, %struct.acpi_madt_interrupt_override* %28, i32 0, i32 4, !dbg !348
  %29 = load i16, i16* %inti_flags22, align 1, !dbg !348
  %conv23 = zext i16 %29 to i32, !dbg !348
  %and24 = and i32 %conv23, -16, !dbg !348
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %and24) #5, !dbg !348
  br label %if.end26, !dbg !348

if.end26:                                         ; preds = %if.then21, %sw.bb7
  br label %sw.epilog, !dbg !349

sw.bb27:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_nmi_source** %p28, metadata !350, metadata !DIExpression()), !dbg !352
  %30 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !353
  %31 = bitcast %struct.acpi_subtable_header* %30 to %struct.acpi_madt_nmi_source*, !dbg !354
  store %struct.acpi_madt_nmi_source* %31, %struct.acpi_madt_nmi_source** %p28, align 8, !dbg !352
  %32 = load %struct.acpi_madt_nmi_source*, %struct.acpi_madt_nmi_source** %p28, align 8, !dbg !355
  %inti_flags29 = getelementptr inbounds %struct.acpi_madt_nmi_source, %struct.acpi_madt_nmi_source* %32, i32 0, i32 1, !dbg !355
  %33 = load i16, i16* %inti_flags29, align 1, !dbg !355
  %conv30 = zext i16 %33 to i32, !dbg !355
  %and31 = and i32 %conv30, 3, !dbg !355
  %idxprom32 = sext i32 %and31 to i64, !dbg !355
  %arrayidx33 = getelementptr [4 x i8*], [4 x i8*]* @mps_inti_flags_polarity, i64 0, i64 %idxprom32, !dbg !355
  %34 = load i8*, i8** %arrayidx33, align 8, !dbg !355
  %35 = load %struct.acpi_madt_nmi_source*, %struct.acpi_madt_nmi_source** %p28, align 8, !dbg !355
  %inti_flags34 = getelementptr inbounds %struct.acpi_madt_nmi_source, %struct.acpi_madt_nmi_source* %35, i32 0, i32 1, !dbg !355
  %36 = load i16, i16* %inti_flags34, align 1, !dbg !355
  %conv35 = zext i16 %36 to i32, !dbg !355
  %and36 = and i32 %conv35, 12, !dbg !355
  %shr37 = ashr i32 %and36, 2, !dbg !355
  %idxprom38 = sext i32 %shr37 to i64, !dbg !355
  %arrayidx39 = getelementptr [4 x i8*], [4 x i8*]* @mps_inti_flags_trigger, i64 0, i64 %idxprom38, !dbg !355
  %37 = load i8*, i8** %arrayidx39, align 8, !dbg !355
  %38 = load %struct.acpi_madt_nmi_source*, %struct.acpi_madt_nmi_source** %p28, align 8, !dbg !355
  %global_irq40 = getelementptr inbounds %struct.acpi_madt_nmi_source, %struct.acpi_madt_nmi_source* %38, i32 0, i32 2, !dbg !355
  %39 = load i32, i32* %global_irq40, align 1, !dbg !355
  %call41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* %37, i32 %39) #5, !dbg !355
  br label %sw.epilog, !dbg !356

sw.bb42:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_local_apic_nmi** %p43, metadata !357, metadata !DIExpression()), !dbg !359
  %40 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !360
  %41 = bitcast %struct.acpi_subtable_header* %40 to %struct.acpi_madt_local_apic_nmi*, !dbg !361
  store %struct.acpi_madt_local_apic_nmi* %41, %struct.acpi_madt_local_apic_nmi** %p43, align 8, !dbg !359
  %42 = load %struct.acpi_madt_local_apic_nmi*, %struct.acpi_madt_local_apic_nmi** %p43, align 8, !dbg !362
  %processor_id = getelementptr inbounds %struct.acpi_madt_local_apic_nmi, %struct.acpi_madt_local_apic_nmi* %42, i32 0, i32 1, !dbg !362
  %43 = load i8, i8* %processor_id, align 1, !dbg !362
  %conv44 = zext i8 %43 to i32, !dbg !362
  %44 = load %struct.acpi_madt_local_apic_nmi*, %struct.acpi_madt_local_apic_nmi** %p43, align 8, !dbg !362
  %inti_flags45 = getelementptr inbounds %struct.acpi_madt_local_apic_nmi, %struct.acpi_madt_local_apic_nmi* %44, i32 0, i32 2, !dbg !362
  %45 = load i16, i16* %inti_flags45, align 1, !dbg !362
  %conv46 = zext i16 %45 to i32, !dbg !362
  %and47 = and i32 %conv46, 3, !dbg !362
  %idxprom48 = sext i32 %and47 to i64, !dbg !362
  %arrayidx49 = getelementptr [4 x i8*], [4 x i8*]* @mps_inti_flags_polarity, i64 0, i64 %idxprom48, !dbg !362
  %46 = load i8*, i8** %arrayidx49, align 8, !dbg !362
  %47 = load %struct.acpi_madt_local_apic_nmi*, %struct.acpi_madt_local_apic_nmi** %p43, align 8, !dbg !362
  %inti_flags50 = getelementptr inbounds %struct.acpi_madt_local_apic_nmi, %struct.acpi_madt_local_apic_nmi* %47, i32 0, i32 2, !dbg !362
  %48 = load i16, i16* %inti_flags50, align 1, !dbg !362
  %conv51 = zext i16 %48 to i32, !dbg !362
  %and52 = and i32 %conv51, 12, !dbg !362
  %shr53 = ashr i32 %and52, 2, !dbg !362
  %idxprom54 = sext i32 %shr53 to i64, !dbg !362
  %arrayidx55 = getelementptr [4 x i8*], [4 x i8*]* @mps_inti_flags_trigger, i64 0, i64 %idxprom54, !dbg !362
  %49 = load i8*, i8** %arrayidx55, align 8, !dbg !362
  %50 = load %struct.acpi_madt_local_apic_nmi*, %struct.acpi_madt_local_apic_nmi** %p43, align 8, !dbg !362
  %lint = getelementptr inbounds %struct.acpi_madt_local_apic_nmi, %struct.acpi_madt_local_apic_nmi* %50, i32 0, i32 3, !dbg !362
  %51 = load i8, i8* %lint, align 1, !dbg !362
  %conv56 = zext i8 %51 to i32, !dbg !362
  %call57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %conv44, i8* %46, i8* %49, i32 %conv56) #5, !dbg !362
  br label %sw.epilog, !dbg !363

sw.bb58:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i16* %polarity, metadata !364, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata i16* %trigger, metadata !367, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_local_x2apic_nmi** %p59, metadata !369, metadata !DIExpression()), !dbg !370
  %52 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !371
  %53 = bitcast %struct.acpi_subtable_header* %52 to %struct.acpi_madt_local_x2apic_nmi*, !dbg !372
  store %struct.acpi_madt_local_x2apic_nmi* %53, %struct.acpi_madt_local_x2apic_nmi** %p59, align 8, !dbg !370
  %54 = load %struct.acpi_madt_local_x2apic_nmi*, %struct.acpi_madt_local_x2apic_nmi** %p59, align 8, !dbg !373
  %inti_flags60 = getelementptr inbounds %struct.acpi_madt_local_x2apic_nmi, %struct.acpi_madt_local_x2apic_nmi* %54, i32 0, i32 1, !dbg !374
  %55 = load i16, i16* %inti_flags60, align 1, !dbg !374
  %conv61 = zext i16 %55 to i32, !dbg !373
  %and62 = and i32 %conv61, 3, !dbg !375
  %conv63 = trunc i32 %and62 to i16, !dbg !373
  store i16 %conv63, i16* %polarity, align 2, !dbg !376
  %56 = load %struct.acpi_madt_local_x2apic_nmi*, %struct.acpi_madt_local_x2apic_nmi** %p59, align 8, !dbg !377
  %inti_flags64 = getelementptr inbounds %struct.acpi_madt_local_x2apic_nmi, %struct.acpi_madt_local_x2apic_nmi* %56, i32 0, i32 1, !dbg !378
  %57 = load i16, i16* %inti_flags64, align 1, !dbg !378
  %conv65 = zext i16 %57 to i32, !dbg !377
  %and66 = and i32 %conv65, 12, !dbg !379
  %shr67 = ashr i32 %and66, 2, !dbg !380
  %conv68 = trunc i32 %shr67 to i16, !dbg !381
  store i16 %conv68, i16* %trigger, align 2, !dbg !382
  %58 = load %struct.acpi_madt_local_x2apic_nmi*, %struct.acpi_madt_local_x2apic_nmi** %p59, align 8, !dbg !383
  %uid = getelementptr inbounds %struct.acpi_madt_local_x2apic_nmi, %struct.acpi_madt_local_x2apic_nmi* %58, i32 0, i32 2, !dbg !383
  %59 = load i32, i32* %uid, align 1, !dbg !383
  %60 = load i16, i16* %polarity, align 2, !dbg !383
  %idxprom69 = zext i16 %60 to i64, !dbg !383
  %arrayidx70 = getelementptr [4 x i8*], [4 x i8*]* @mps_inti_flags_polarity, i64 0, i64 %idxprom69, !dbg !383
  %61 = load i8*, i8** %arrayidx70, align 8, !dbg !383
  %62 = load i16, i16* %trigger, align 2, !dbg !383
  %idxprom71 = zext i16 %62 to i64, !dbg !383
  %arrayidx72 = getelementptr [4 x i8*], [4 x i8*]* @mps_inti_flags_trigger, i64 0, i64 %idxprom71, !dbg !383
  %63 = load i8*, i8** %arrayidx72, align 8, !dbg !383
  %64 = load %struct.acpi_madt_local_x2apic_nmi*, %struct.acpi_madt_local_x2apic_nmi** %p59, align 8, !dbg !383
  %lint73 = getelementptr inbounds %struct.acpi_madt_local_x2apic_nmi, %struct.acpi_madt_local_x2apic_nmi* %64, i32 0, i32 3, !dbg !383
  %65 = load i8, i8* %lint73, align 1, !dbg !383
  %conv74 = zext i8 %65 to i32, !dbg !383
  %call75 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %59, i8* %61, i8* %63, i32 %conv74) #5, !dbg !383
  br label %sw.epilog, !dbg !384

sw.bb76:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_local_apic_override** %p77, metadata !385, metadata !DIExpression()), !dbg !387
  %66 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !388
  %67 = bitcast %struct.acpi_subtable_header* %66 to %struct.acpi_madt_local_apic_override*, !dbg !389
  store %struct.acpi_madt_local_apic_override* %67, %struct.acpi_madt_local_apic_override** %p77, align 8, !dbg !387
  %68 = load %struct.acpi_madt_local_apic_override*, %struct.acpi_madt_local_apic_override** %p77, align 8, !dbg !390
  %address = getelementptr inbounds %struct.acpi_madt_local_apic_override, %struct.acpi_madt_local_apic_override* %68, i32 0, i32 2, !dbg !390
  %69 = load i64, i64* %address, align 1, !dbg !390
  %70 = inttoptr i64 %69 to i8*, !dbg !390
  %call78 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %70) #5, !dbg !390
  br label %sw.epilog, !dbg !391

sw.bb79:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_io_sapic** %p80, metadata !392, metadata !DIExpression()), !dbg !394
  %71 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !395
  %72 = bitcast %struct.acpi_subtable_header* %71 to %struct.acpi_madt_io_sapic*, !dbg !396
  store %struct.acpi_madt_io_sapic* %72, %struct.acpi_madt_io_sapic** %p80, align 8, !dbg !394
  store i32 0, i32* %tmp81, align 4, !dbg !397
  %73 = load i32, i32* %tmp81, align 4, !dbg !400
  br label %sw.epilog, !dbg !401

sw.bb82:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_local_sapic** %p83, metadata !402, metadata !DIExpression()), !dbg !404
  %74 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !405
  %75 = bitcast %struct.acpi_subtable_header* %74 to %struct.acpi_madt_local_sapic*, !dbg !406
  store %struct.acpi_madt_local_sapic* %75, %struct.acpi_madt_local_sapic** %p83, align 8, !dbg !404
  store i32 0, i32* %tmp84, align 4, !dbg !407
  %76 = load i32, i32* %tmp84, align 4, !dbg !410
  br label %sw.epilog, !dbg !411

sw.bb85:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_interrupt_source** %p86, metadata !412, metadata !DIExpression()), !dbg !414
  %77 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !415
  %78 = bitcast %struct.acpi_subtable_header* %77 to %struct.acpi_madt_interrupt_source*, !dbg !416
  store %struct.acpi_madt_interrupt_source* %78, %struct.acpi_madt_interrupt_source** %p86, align 8, !dbg !414
  %79 = load %struct.acpi_madt_interrupt_source*, %struct.acpi_madt_interrupt_source** %p86, align 8, !dbg !417
  %inti_flags87 = getelementptr inbounds %struct.acpi_madt_interrupt_source, %struct.acpi_madt_interrupt_source* %79, i32 0, i32 1, !dbg !417
  %80 = load i16, i16* %inti_flags87, align 1, !dbg !417
  %conv88 = zext i16 %80 to i32, !dbg !417
  %and89 = and i32 %conv88, 3, !dbg !417
  %idxprom90 = sext i32 %and89 to i64, !dbg !417
  %arrayidx91 = getelementptr [4 x i8*], [4 x i8*]* @mps_inti_flags_polarity, i64 0, i64 %idxprom90, !dbg !417
  %81 = load i8*, i8** %arrayidx91, align 8, !dbg !417
  %82 = load %struct.acpi_madt_interrupt_source*, %struct.acpi_madt_interrupt_source** %p86, align 8, !dbg !417
  %inti_flags92 = getelementptr inbounds %struct.acpi_madt_interrupt_source, %struct.acpi_madt_interrupt_source* %82, i32 0, i32 1, !dbg !417
  %83 = load i16, i16* %inti_flags92, align 1, !dbg !417
  %conv93 = zext i16 %83 to i32, !dbg !417
  %and94 = and i32 %conv93, 12, !dbg !417
  %shr95 = ashr i32 %and94, 2, !dbg !417
  %idxprom96 = sext i32 %shr95 to i64, !dbg !417
  %arrayidx97 = getelementptr [4 x i8*], [4 x i8*]* @mps_inti_flags_trigger, i64 0, i64 %idxprom96, !dbg !417
  %84 = load i8*, i8** %arrayidx97, align 8, !dbg !417
  %85 = load %struct.acpi_madt_interrupt_source*, %struct.acpi_madt_interrupt_source** %p86, align 8, !dbg !417
  %type98 = getelementptr inbounds %struct.acpi_madt_interrupt_source, %struct.acpi_madt_interrupt_source* %85, i32 0, i32 2, !dbg !417
  %86 = load i8, i8* %type98, align 1, !dbg !417
  %conv99 = zext i8 %86 to i32, !dbg !417
  %87 = load %struct.acpi_madt_interrupt_source*, %struct.acpi_madt_interrupt_source** %p86, align 8, !dbg !417
  %id = getelementptr inbounds %struct.acpi_madt_interrupt_source, %struct.acpi_madt_interrupt_source* %87, i32 0, i32 3, !dbg !417
  %88 = load i8, i8* %id, align 1, !dbg !417
  %conv100 = zext i8 %88 to i32, !dbg !417
  %89 = load %struct.acpi_madt_interrupt_source*, %struct.acpi_madt_interrupt_source** %p86, align 8, !dbg !417
  %eid = getelementptr inbounds %struct.acpi_madt_interrupt_source, %struct.acpi_madt_interrupt_source* %89, i32 0, i32 4, !dbg !417
  %90 = load i8, i8* %eid, align 1, !dbg !417
  %conv101 = zext i8 %90 to i32, !dbg !417
  %91 = load %struct.acpi_madt_interrupt_source*, %struct.acpi_madt_interrupt_source** %p86, align 8, !dbg !417
  %io_sapic_vector = getelementptr inbounds %struct.acpi_madt_interrupt_source, %struct.acpi_madt_interrupt_source* %91, i32 0, i32 5, !dbg !417
  %92 = load i8, i8* %io_sapic_vector, align 1, !dbg !417
  %conv102 = zext i8 %92 to i32, !dbg !417
  %93 = load %struct.acpi_madt_interrupt_source*, %struct.acpi_madt_interrupt_source** %p86, align 8, !dbg !417
  %global_irq103 = getelementptr inbounds %struct.acpi_madt_interrupt_source, %struct.acpi_madt_interrupt_source* %93, i32 0, i32 6, !dbg !417
  %94 = load i32, i32* %global_irq103, align 1, !dbg !417
  %call104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.6, i64 0, i64 0), i8* %81, i8* %84, i32 %conv99, i32 %conv100, i32 %conv101, i32 %conv102, i32 %94) #5, !dbg !417
  br label %sw.epilog, !dbg !418

sw.bb105:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_generic_interrupt** %p106, metadata !419, metadata !DIExpression()), !dbg !421
  %95 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !422
  %96 = bitcast %struct.acpi_subtable_header* %95 to %struct.acpi_madt_generic_interrupt*, !dbg !423
  store %struct.acpi_madt_generic_interrupt* %96, %struct.acpi_madt_generic_interrupt** %p106, align 8, !dbg !421
  store i32 0, i32* %tmp107, align 4, !dbg !424
  %97 = load i32, i32* %tmp107, align 4, !dbg !427
  br label %sw.epilog, !dbg !428

sw.bb108:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.acpi_madt_generic_distributor** %p109, metadata !429, metadata !DIExpression()), !dbg !431
  %98 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !432
  %99 = bitcast %struct.acpi_subtable_header* %98 to %struct.acpi_madt_generic_distributor*, !dbg !433
  store %struct.acpi_madt_generic_distributor* %99, %struct.acpi_madt_generic_distributor** %p109, align 8, !dbg !431
  store i32 0, i32* %tmp110, align 4, !dbg !434
  %100 = load i32, i32* %tmp110, align 4, !dbg !437
  br label %sw.epilog, !dbg !438

sw.default:                                       ; preds = %if.end
  %101 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %header.addr, align 8, !dbg !439
  %type111 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %101, i32 0, i32 0, !dbg !439
  %102 = load i8, i8* %type111, align 1, !dbg !439
  %conv112 = zext i8 %102 to i32, !dbg !439
  %call113 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %conv112) #5, !dbg !439
  br label %sw.epilog, !dbg !440

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb108, %sw.bb105, %sw.bb85, %sw.bb82, %sw.bb79, %sw.bb76, %sw.bb58, %sw.bb42, %sw.bb27, %if.end26, %sw.bb4, %sw.bb1, %sw.bb
  ret void, !dbg !441
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_table_parse_entries_array(i8* %id, i64 %table_size, %struct.acpi_subtable_proc* %proc, i32 %proc_num, i32 %max_entries) #3 section ".init.text" !dbg !442 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca i8*, align 8
  %table_size.addr = alloca i64, align 8
  %proc.addr = alloca %struct.acpi_subtable_proc*, align 8
  %proc_num.addr = alloca i32, align 4
  %max_entries.addr = alloca i32, align 4
  %table_header = alloca %struct.acpi_table_header*, align 8
  %count = alloca i32, align 4
  %instance = alloca i32, align 4
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !456, metadata !DIExpression()), !dbg !457
  store i64 %table_size, i64* %table_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %table_size.addr, metadata !458, metadata !DIExpression()), !dbg !459
  store %struct.acpi_subtable_proc* %proc, %struct.acpi_subtable_proc** %proc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_proc** %proc.addr, metadata !460, metadata !DIExpression()), !dbg !461
  store i32 %proc_num, i32* %proc_num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %proc_num.addr, metadata !462, metadata !DIExpression()), !dbg !463
  store i32 %max_entries, i32* %max_entries.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_entries.addr, metadata !464, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table_header, metadata !466, metadata !DIExpression()), !dbg !467
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %table_header, align 8, !dbg !467
  call void @llvm.dbg.declare(metadata i32* %count, metadata !468, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.declare(metadata i32* %instance, metadata !470, metadata !DIExpression()), !dbg !471
  store i32 0, i32* %instance, align 4, !dbg !471
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !472
  %tobool = icmp ne i32 %0, 0, !dbg !472
  br i1 %tobool, label %if.then, label %if.end, !dbg !474

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !475
  br label %return, !dbg !475

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %id.addr, align 8, !dbg !476
  %tobool1 = icmp ne i8* %1, null, !dbg !476
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !478

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !479
  br label %return, !dbg !479

if.end3:                                          ; preds = %if.end
  %2 = load i64, i64* %table_size.addr, align 8, !dbg !480
  %tobool4 = icmp ne i64 %2, 0, !dbg !480
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !482

if.then5:                                         ; preds = %if.end3
  store i32 -22, i32* %retval, align 4, !dbg !483
  br label %return, !dbg !483

if.end6:                                          ; preds = %if.end3
  %3 = load i8*, i8** %id.addr, align 8, !dbg !484
  %call = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4) #6, !dbg !486
  %tobool7 = icmp ne i32 %call, 0, !dbg !486
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !487

if.then8:                                         ; preds = %if.end6
  %4 = load i32, i32* @acpi_apic_instance, align 4, !dbg !488
  store i32 %4, i32* %instance, align 4, !dbg !489
  br label %if.end9, !dbg !490

if.end9:                                          ; preds = %if.then8, %if.end6
  %5 = load i8*, i8** %id.addr, align 8, !dbg !491
  %6 = load i32, i32* %instance, align 4, !dbg !492
  %call10 = call i32 @acpi_get_table(i8* %5, i32 %6, %struct.acpi_table_header** %table_header) #6, !dbg !493
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !494
  %tobool11 = icmp ne %struct.acpi_table_header* %7, null, !dbg !494
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !496

if.then12:                                        ; preds = %if.end9
  %8 = load i8*, i8** %id.addr, align 8, !dbg !497
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %8) #5, !dbg !497
  store i32 -19, i32* %retval, align 4, !dbg !499
  br label %return, !dbg !499

if.end14:                                         ; preds = %if.end9
  %9 = load i8*, i8** %id.addr, align 8, !dbg !500
  %10 = load i64, i64* %table_size.addr, align 8, !dbg !501
  %11 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !502
  %12 = load %struct.acpi_subtable_proc*, %struct.acpi_subtable_proc** %proc.addr, align 8, !dbg !503
  %13 = load i32, i32* %proc_num.addr, align 4, !dbg !504
  %14 = load i32, i32* %max_entries.addr, align 4, !dbg !505
  %call15 = call i32 @acpi_parse_entries_array(i8* %9, i64 %10, %struct.acpi_table_header* %11, %struct.acpi_subtable_proc* %12, i32 %13, i32 %14) #5, !dbg !506
  store i32 %call15, i32* %count, align 4, !dbg !507
  %15 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !508
  call void @acpi_put_table(%struct.acpi_table_header* %15) #6, !dbg !509
  %16 = load i32, i32* %count, align 4, !dbg !510
  store i32 %16, i32* %retval, align 4, !dbg !511
  br label %return, !dbg !511

return:                                           ; preds = %if.end14, %if.then12, %if.then5, %if.then2, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !512
  ret i32 %17, !dbg !512
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_table(i8*, i32, %struct.acpi_table_header**) #4

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_parse_entries_array(i8* %id, i64 %table_size, %struct.acpi_table_header* %table_header, %struct.acpi_subtable_proc* %proc, i32 %proc_num, i32 %max_entries) #3 section ".init.text" !dbg !513 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca i8*, align 8
  %table_size.addr = alloca i64, align 8
  %table_header.addr = alloca %struct.acpi_table_header*, align 8
  %proc.addr = alloca %struct.acpi_subtable_proc*, align 8
  %proc_num.addr = alloca i32, align 4
  %max_entries.addr = alloca i32, align 4
  %entry1 = alloca %struct.acpi_subtable_entry, align 8
  %table_end = alloca i64, align 8
  %subtable_len = alloca i64, align 8
  %entry_len = alloca i64, align 8
  %count = alloca i32, align 4
  %errs = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !516, metadata !DIExpression()), !dbg !517
  store i64 %table_size, i64* %table_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %table_size.addr, metadata !518, metadata !DIExpression()), !dbg !519
  store %struct.acpi_table_header* %table_header, %struct.acpi_table_header** %table_header.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table_header.addr, metadata !520, metadata !DIExpression()), !dbg !521
  store %struct.acpi_subtable_proc* %proc, %struct.acpi_subtable_proc** %proc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_proc** %proc.addr, metadata !522, metadata !DIExpression()), !dbg !523
  store i32 %proc_num, i32* %proc_num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %proc_num.addr, metadata !524, metadata !DIExpression()), !dbg !525
  store i32 %max_entries, i32* %max_entries.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_entries.addr, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_entry* %entry1, metadata !528, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.declare(metadata i64* %table_end, metadata !534, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.declare(metadata i64* %subtable_len, metadata !536, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.declare(metadata i64* %entry_len, metadata !538, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.declare(metadata i32* %count, metadata !540, metadata !DIExpression()), !dbg !541
  store i32 0, i32* %count, align 4, !dbg !541
  call void @llvm.dbg.declare(metadata i32* %errs, metadata !542, metadata !DIExpression()), !dbg !543
  store i32 0, i32* %errs, align 4, !dbg !543
  call void @llvm.dbg.declare(metadata i32* %i, metadata !544, metadata !DIExpression()), !dbg !545
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header.addr, align 8, !dbg !546
  %1 = ptrtoint %struct.acpi_table_header* %0 to i64, !dbg !547
  %2 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header.addr, align 8, !dbg !548
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %2, i32 0, i32 1, !dbg !549
  %3 = load i32, i32* %length, align 1, !dbg !549
  %conv = zext i32 %3 to i64, !dbg !548
  %add = add i64 %1, %conv, !dbg !550
  store i64 %add, i64* %table_end, align 8, !dbg !551
  %4 = load i8*, i8** %id.addr, align 8, !dbg !552
  %call = call i32 @acpi_get_subtable_type(i8* %4) #5, !dbg !553
  %type = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %entry1, i32 0, i32 1, !dbg !554
  store i32 %call, i32* %type, align 8, !dbg !555
  %5 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header.addr, align 8, !dbg !556
  %6 = ptrtoint %struct.acpi_table_header* %5 to i64, !dbg !557
  %7 = load i64, i64* %table_size.addr, align 8, !dbg !558
  %add2 = add i64 %6, %7, !dbg !559
  %8 = inttoptr i64 %add2 to %union.acpi_subtable_headers*, !dbg !560
  %hdr = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %entry1, i32 0, i32 0, !dbg !561
  store %union.acpi_subtable_headers* %8, %union.acpi_subtable_headers** %hdr, align 8, !dbg !562
  %call3 = call i64 @acpi_get_subtable_header_length(%struct.acpi_subtable_entry* %entry1) #5, !dbg !563
  store i64 %call3, i64* %subtable_len, align 8, !dbg !564
  br label %while.cond, !dbg !565

while.cond:                                       ; preds = %if.end47, %entry
  %hdr4 = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %entry1, i32 0, i32 0, !dbg !566
  %9 = load %union.acpi_subtable_headers*, %union.acpi_subtable_headers** %hdr4, align 8, !dbg !566
  %10 = ptrtoint %union.acpi_subtable_headers* %9 to i64, !dbg !567
  %11 = load i64, i64* %subtable_len, align 8, !dbg !568
  %add5 = add i64 %10, %11, !dbg !569
  %12 = load i64, i64* %table_end, align 8, !dbg !570
  %cmp = icmp ult i64 %add5, %12, !dbg !571
  br i1 %cmp, label %while.body, label %while.end, !dbg !565

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* %max_entries.addr, align 4, !dbg !572
  %tobool = icmp ne i32 %13, 0, !dbg !572
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !575

land.lhs.true:                                    ; preds = %while.body
  %14 = load i32, i32* %count, align 4, !dbg !576
  %15 = load i32, i32* %max_entries.addr, align 4, !dbg !577
  %cmp7 = icmp uge i32 %14, %15, !dbg !578
  br i1 %cmp7, label %if.then, label %if.end, !dbg !579

if.then:                                          ; preds = %land.lhs.true
  br label %while.end, !dbg !580

if.end:                                           ; preds = %land.lhs.true, %while.body
  store i32 0, i32* %i, align 4, !dbg !581
  br label %for.cond, !dbg !583

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4, !dbg !584
  %17 = load i32, i32* %proc_num.addr, align 4, !dbg !586
  %cmp9 = icmp slt i32 %16, %17, !dbg !587
  br i1 %cmp9, label %for.body, label %for.end, !dbg !588

for.body:                                         ; preds = %for.cond
  %call11 = call i64 @acpi_get_entry_type(%struct.acpi_subtable_entry* %entry1) #5, !dbg !589
  %18 = load %struct.acpi_subtable_proc*, %struct.acpi_subtable_proc** %proc.addr, align 8, !dbg !592
  %19 = load i32, i32* %i, align 4, !dbg !593
  %idxprom = sext i32 %19 to i64, !dbg !592
  %arrayidx = getelementptr %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %18, i64 %idxprom, !dbg !592
  %id12 = getelementptr inbounds %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %arrayidx, i32 0, i32 0, !dbg !594
  %20 = load i32, i32* %id12, align 8, !dbg !594
  %conv13 = sext i32 %20 to i64, !dbg !592
  %cmp14 = icmp ne i64 %call11, %conv13, !dbg !595
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !596

if.then16:                                        ; preds = %for.body
  br label %for.inc, !dbg !597

if.end17:                                         ; preds = %for.body
  %21 = load %struct.acpi_subtable_proc*, %struct.acpi_subtable_proc** %proc.addr, align 8, !dbg !598
  %22 = load i32, i32* %i, align 4, !dbg !600
  %idxprom18 = sext i32 %22 to i64, !dbg !598
  %arrayidx19 = getelementptr %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %21, i64 %idxprom18, !dbg !598
  %handler = getelementptr inbounds %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %arrayidx19, i32 0, i32 1, !dbg !601
  %23 = load i32 (%union.acpi_subtable_headers*, i64)*, i32 (%union.acpi_subtable_headers*, i64)** %handler, align 8, !dbg !601
  %tobool20 = icmp ne i32 (%union.acpi_subtable_headers*, i64)* %23, null, !dbg !598
  br i1 %tobool20, label %lor.lhs.false, label %if.then29, !dbg !602

lor.lhs.false:                                    ; preds = %if.end17
  %24 = load i32, i32* %errs, align 4, !dbg !603
  %tobool21 = icmp ne i32 %24, 0, !dbg !603
  br i1 %tobool21, label %if.end30, label %land.lhs.true22, !dbg !604

land.lhs.true22:                                  ; preds = %lor.lhs.false
  %25 = load %struct.acpi_subtable_proc*, %struct.acpi_subtable_proc** %proc.addr, align 8, !dbg !605
  %26 = load i32, i32* %i, align 4, !dbg !606
  %idxprom23 = sext i32 %26 to i64, !dbg !605
  %arrayidx24 = getelementptr %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %25, i64 %idxprom23, !dbg !605
  %handler25 = getelementptr inbounds %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %arrayidx24, i32 0, i32 1, !dbg !607
  %27 = load i32 (%union.acpi_subtable_headers*, i64)*, i32 (%union.acpi_subtable_headers*, i64)** %handler25, align 8, !dbg !607
  %hdr26 = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %entry1, i32 0, i32 0, !dbg !608
  %28 = load %union.acpi_subtable_headers*, %union.acpi_subtable_headers** %hdr26, align 8, !dbg !608
  %29 = load i64, i64* %table_end, align 8, !dbg !609
  %call27 = call i32 %27(%union.acpi_subtable_headers* %28, i64 %29) #6, !dbg !605
  %tobool28 = icmp ne i32 %call27, 0, !dbg !605
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !610

if.then29:                                        ; preds = %land.lhs.true22, %if.end17
  %30 = load i32, i32* %errs, align 4, !dbg !611
  %inc = add i32 %30, 1, !dbg !611
  store i32 %inc, i32* %errs, align 4, !dbg !611
  br label %for.inc, !dbg !613

if.end30:                                         ; preds = %land.lhs.true22, %lor.lhs.false
  %31 = load %struct.acpi_subtable_proc*, %struct.acpi_subtable_proc** %proc.addr, align 8, !dbg !614
  %32 = load i32, i32* %i, align 4, !dbg !615
  %idxprom31 = sext i32 %32 to i64, !dbg !614
  %arrayidx32 = getelementptr %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %31, i64 %idxprom31, !dbg !614
  %count33 = getelementptr inbounds %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %arrayidx32, i32 0, i32 2, !dbg !616
  %33 = load i32, i32* %count33, align 8, !dbg !617
  %inc34 = add i32 %33, 1, !dbg !617
  store i32 %inc34, i32* %count33, align 8, !dbg !617
  br label %for.end, !dbg !618

for.inc:                                          ; preds = %if.then29, %if.then16
  %34 = load i32, i32* %i, align 4, !dbg !619
  %inc35 = add i32 %34, 1, !dbg !619
  store i32 %inc35, i32* %i, align 4, !dbg !619
  br label %for.cond, !dbg !620, !llvm.loop !621

for.end:                                          ; preds = %if.end30, %for.cond
  %35 = load i32, i32* %i, align 4, !dbg !623
  %36 = load i32, i32* %proc_num.addr, align 4, !dbg !625
  %cmp36 = icmp ne i32 %35, %36, !dbg !626
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !627

if.then38:                                        ; preds = %for.end
  %37 = load i32, i32* %count, align 4, !dbg !628
  %inc39 = add i32 %37, 1, !dbg !628
  store i32 %inc39, i32* %count, align 4, !dbg !628
  br label %if.end40, !dbg !629

if.end40:                                         ; preds = %if.then38, %for.end
  %call41 = call i64 @acpi_get_entry_length(%struct.acpi_subtable_entry* %entry1) #5, !dbg !630
  store i64 %call41, i64* %entry_len, align 8, !dbg !631
  %38 = load i64, i64* %entry_len, align 8, !dbg !632
  %cmp42 = icmp eq i64 %38, 0, !dbg !634
  br i1 %cmp42, label %if.then44, label %if.end47, !dbg !635

if.then44:                                        ; preds = %if.end40
  %39 = load i8*, i8** %id.addr, align 8, !dbg !636
  %40 = load %struct.acpi_subtable_proc*, %struct.acpi_subtable_proc** %proc.addr, align 8, !dbg !636
  %id45 = getelementptr inbounds %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %40, i32 0, i32 0, !dbg !636
  %41 = load i32, i32* %id45, align 8, !dbg !636
  %call46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i8* %39, i32 %41) #5, !dbg !636
  store i32 -22, i32* %retval, align 4, !dbg !638
  br label %return, !dbg !638

if.end47:                                         ; preds = %if.end40
  %hdr48 = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %entry1, i32 0, i32 0, !dbg !639
  %42 = load %union.acpi_subtable_headers*, %union.acpi_subtable_headers** %hdr48, align 8, !dbg !639
  %43 = ptrtoint %union.acpi_subtable_headers* %42 to i64, !dbg !640
  %44 = load i64, i64* %entry_len, align 8, !dbg !641
  %add49 = add i64 %43, %44, !dbg !642
  %45 = inttoptr i64 %add49 to %union.acpi_subtable_headers*, !dbg !643
  %hdr50 = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %entry1, i32 0, i32 0, !dbg !644
  store %union.acpi_subtable_headers* %45, %union.acpi_subtable_headers** %hdr50, align 8, !dbg !645
  br label %while.cond, !dbg !565, !llvm.loop !646

while.end:                                        ; preds = %if.then, %while.cond
  %46 = load i32, i32* %max_entries.addr, align 4, !dbg !648
  %tobool51 = icmp ne i32 %46, 0, !dbg !648
  br i1 %tobool51, label %land.lhs.true52, label %if.end58, !dbg !650

land.lhs.true52:                                  ; preds = %while.end
  %47 = load i32, i32* %count, align 4, !dbg !651
  %48 = load i32, i32* %max_entries.addr, align 4, !dbg !652
  %cmp53 = icmp ugt i32 %47, %48, !dbg !653
  br i1 %cmp53, label %if.then55, label %if.end58, !dbg !654

if.then55:                                        ; preds = %land.lhs.true52
  %49 = load i8*, i8** %id.addr, align 8, !dbg !655
  %50 = load %struct.acpi_subtable_proc*, %struct.acpi_subtable_proc** %proc.addr, align 8, !dbg !655
  %id56 = getelementptr inbounds %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %50, i32 0, i32 0, !dbg !655
  %51 = load i32, i32* %id56, align 8, !dbg !655
  %52 = load i32, i32* %count, align 4, !dbg !655
  %call57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0), i8* %49, i32 %51, i32 %52) #5, !dbg !655
  br label %if.end58, !dbg !657

if.end58:                                         ; preds = %if.then55, %land.lhs.true52, %while.end
  %53 = load i32, i32* %errs, align 4, !dbg !658
  %tobool59 = icmp ne i32 %53, 0, !dbg !658
  br i1 %tobool59, label %cond.true, label %cond.false, !dbg !658

cond.true:                                        ; preds = %if.end58
  br label %cond.end, !dbg !658

cond.false:                                       ; preds = %if.end58
  %54 = load i32, i32* %count, align 4, !dbg !659
  br label %cond.end, !dbg !658

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -22, %cond.true ], [ %54, %cond.false ], !dbg !658
  store i32 %cond, i32* %retval, align 4, !dbg !660
  br label %return, !dbg !660

return:                                           ; preds = %cond.end, %if.then44
  %55 = load i32, i32* %retval, align 4, !dbg !661
  ret i32 %55, !dbg !661
}

; Function Attrs: noredzone
declare dso_local void @acpi_put_table(%struct.acpi_table_header*) #4

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_table_parse_entries(i8* %id, i64 %table_size, i32 %entry_id, i32 (%union.acpi_subtable_headers*, i64)* %handler, i32 %max_entries) #3 section ".init.text" !dbg !662 {
entry:
  %id.addr = alloca i8*, align 8
  %table_size.addr = alloca i64, align 8
  %entry_id.addr = alloca i32, align 4
  %handler.addr = alloca i32 (%union.acpi_subtable_headers*, i64)*, align 8
  %max_entries.addr = alloca i32, align 4
  %proc = alloca %struct.acpi_subtable_proc, align 8
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !665, metadata !DIExpression()), !dbg !666
  store i64 %table_size, i64* %table_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %table_size.addr, metadata !667, metadata !DIExpression()), !dbg !668
  store i32 %entry_id, i32* %entry_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %entry_id.addr, metadata !669, metadata !DIExpression()), !dbg !670
  store i32 (%union.acpi_subtable_headers*, i64)* %handler, i32 (%union.acpi_subtable_headers*, i64)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%union.acpi_subtable_headers*, i64)** %handler.addr, metadata !671, metadata !DIExpression()), !dbg !672
  store i32 %max_entries, i32* %max_entries.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_entries.addr, metadata !673, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_proc* %proc, metadata !675, metadata !DIExpression()), !dbg !676
  %id1 = getelementptr inbounds %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %proc, i32 0, i32 0, !dbg !677
  %0 = load i32, i32* %entry_id.addr, align 4, !dbg !678
  store i32 %0, i32* %id1, align 8, !dbg !677
  %handler2 = getelementptr inbounds %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %proc, i32 0, i32 1, !dbg !677
  %1 = load i32 (%union.acpi_subtable_headers*, i64)*, i32 (%union.acpi_subtable_headers*, i64)** %handler.addr, align 8, !dbg !679
  store i32 (%union.acpi_subtable_headers*, i64)* %1, i32 (%union.acpi_subtable_headers*, i64)** %handler2, align 8, !dbg !677
  %count = getelementptr inbounds %struct.acpi_subtable_proc, %struct.acpi_subtable_proc* %proc, i32 0, i32 2, !dbg !677
  store i32 0, i32* %count, align 8, !dbg !677
  %2 = load i8*, i8** %id.addr, align 8, !dbg !680
  %3 = load i64, i64* %table_size.addr, align 8, !dbg !681
  %4 = load i32, i32* %max_entries.addr, align 4, !dbg !682
  %call = call i32 @acpi_table_parse_entries_array(i8* %2, i64 %3, %struct.acpi_subtable_proc* %proc, i32 1, i32 %4) #5, !dbg !683
  ret i32 %call, !dbg !684
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_table_parse_madt(i32 %id, i32 (%union.acpi_subtable_headers*, i64)* %handler, i32 %max_entries) #3 section ".init.text" !dbg !685 {
entry:
  %id.addr = alloca i32, align 4
  %handler.addr = alloca i32 (%union.acpi_subtable_headers*, i64)*, align 8
  %max_entries.addr = alloca i32, align 4
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !688, metadata !DIExpression()), !dbg !689
  store i32 (%union.acpi_subtable_headers*, i64)* %handler, i32 (%union.acpi_subtable_headers*, i64)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%union.acpi_subtable_headers*, i64)** %handler.addr, metadata !690, metadata !DIExpression()), !dbg !691
  store i32 %max_entries, i32* %max_entries.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_entries.addr, metadata !692, metadata !DIExpression()), !dbg !693
  %0 = load i32, i32* %id.addr, align 4, !dbg !694
  %1 = load i32 (%union.acpi_subtable_headers*, i64)*, i32 (%union.acpi_subtable_headers*, i64)** %handler.addr, align 8, !dbg !695
  %2 = load i32, i32* %max_entries.addr, align 4, !dbg !696
  %call = call i32 @acpi_table_parse_entries(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 44, i32 %0, i32 (%union.acpi_subtable_headers*, i64)* %1, i32 %2) #5, !dbg !697
  ret i32 %call, !dbg !698
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_table_parse(i8* %id, i32 (%struct.acpi_table_header*)* %handler) #3 section ".init.text" !dbg !699 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca i8*, align 8
  %handler.addr = alloca i32 (%struct.acpi_table_header*)*, align 8
  %table = alloca %struct.acpi_table_header*, align 8
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !706, metadata !DIExpression()), !dbg !707
  store i32 (%struct.acpi_table_header*)* %handler, i32 (%struct.acpi_table_header*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.acpi_table_header*)** %handler.addr, metadata !708, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !710, metadata !DIExpression()), !dbg !711
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %table, align 8, !dbg !711
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !712
  %tobool = icmp ne i32 %0, 0, !dbg !712
  br i1 %tobool, label %if.then, label %if.end, !dbg !714

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !715
  br label %return, !dbg !715

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %id.addr, align 8, !dbg !716
  %tobool1 = icmp ne i8* %1, null, !dbg !716
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !718

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32 (%struct.acpi_table_header*)*, i32 (%struct.acpi_table_header*)** %handler.addr, align 8, !dbg !719
  %tobool2 = icmp ne i32 (%struct.acpi_table_header*)* %2, null, !dbg !719
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !720

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !721
  br label %return, !dbg !721

if.end4:                                          ; preds = %lor.lhs.false
  %3 = load i8*, i8** %id.addr, align 8, !dbg !722
  %call = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4) #6, !dbg !724
  %cmp = icmp eq i32 %call, 0, !dbg !725
  br i1 %cmp, label %if.then5, label %if.else, !dbg !726

if.then5:                                         ; preds = %if.end4
  %4 = load i8*, i8** %id.addr, align 8, !dbg !727
  %5 = load i32, i32* @acpi_apic_instance, align 4, !dbg !728
  %call6 = call i32 @acpi_get_table(i8* %4, i32 %5, %struct.acpi_table_header** %table) #6, !dbg !729
  br label %if.end8, !dbg !729

if.else:                                          ; preds = %if.end4
  %6 = load i8*, i8** %id.addr, align 8, !dbg !730
  %call7 = call i32 @acpi_get_table(i8* %6, i32 0, %struct.acpi_table_header** %table) #6, !dbg !731
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !732
  %tobool9 = icmp ne %struct.acpi_table_header* %7, null, !dbg !732
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !734

if.then10:                                        ; preds = %if.end8
  %8 = load i32 (%struct.acpi_table_header*)*, i32 (%struct.acpi_table_header*)** %handler.addr, align 8, !dbg !735
  %9 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !737
  %call11 = call i32 %8(%struct.acpi_table_header* %9) #6, !dbg !735
  %10 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !738
  call void @acpi_put_table(%struct.acpi_table_header* %10) #6, !dbg !739
  store i32 0, i32* %retval, align 4, !dbg !740
  br label %return, !dbg !740

if.else12:                                        ; preds = %if.end8
  store i32 -19, i32* %retval, align 4, !dbg !741
  br label %return, !dbg !741

return:                                           ; preds = %if.else12, %if.then10, %if.then3, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !742
  ret i32 %11, !dbg !742
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_os_physical_table_override(%struct.acpi_table_header* %existing_table, i64* %address, i32* %table_length) #0 !dbg !743 {
entry:
  %existing_table.addr = alloca %struct.acpi_table_header*, align 8
  %address.addr = alloca i64*, align 8
  %table_length.addr = alloca i32*, align 8
  store %struct.acpi_table_header* %existing_table, %struct.acpi_table_header** %existing_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %existing_table.addr, metadata !748, metadata !DIExpression()), !dbg !749
  store i64* %address, i64** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %address.addr, metadata !750, metadata !DIExpression()), !dbg !751
  store i32* %table_length, i32** %table_length.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table_length.addr, metadata !752, metadata !DIExpression()), !dbg !753
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %existing_table.addr, align 8, !dbg !754
  %1 = load i64*, i64** %address.addr, align 8, !dbg !755
  %2 = load i32*, i32** %table_length.addr, align 8, !dbg !756
  %call = call i32 @acpi_table_initrd_override(%struct.acpi_table_header* %0, i64* %1, i32* %2) #6, !dbg !757
  ret i32 %call, !dbg !758
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_table_initrd_override(%struct.acpi_table_header* %existing_table, i64* %address, i32* %table_length) #0 !dbg !759 {
entry:
  %existing_table.addr = alloca %struct.acpi_table_header*, align 8
  %address.addr = alloca i64*, align 8
  %table_length.addr = alloca i32*, align 8
  store %struct.acpi_table_header* %existing_table, %struct.acpi_table_header** %existing_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %existing_table.addr, metadata !760, metadata !DIExpression()), !dbg !761
  store i64* %address, i64** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %address.addr, metadata !762, metadata !DIExpression()), !dbg !763
  store i32* %table_length, i32** %table_length.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table_length.addr, metadata !764, metadata !DIExpression()), !dbg !765
  %0 = load i32*, i32** %table_length.addr, align 8, !dbg !766
  store i32 0, i32* %0, align 4, !dbg !767
  %1 = load i64*, i64** %address.addr, align 8, !dbg !768
  store i64 0, i64* %1, align 8, !dbg !769
  ret i32 0, !dbg !770
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_os_table_override(%struct.acpi_table_header* %existing_table, %struct.acpi_table_header** %new_table) #0 !dbg !771 {
entry:
  %retval = alloca i32, align 4
  %existing_table.addr = alloca %struct.acpi_table_header*, align 8
  %new_table.addr = alloca %struct.acpi_table_header**, align 8
  store %struct.acpi_table_header* %existing_table, %struct.acpi_table_header** %existing_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %existing_table.addr, metadata !775, metadata !DIExpression()), !dbg !776
  store %struct.acpi_table_header** %new_table, %struct.acpi_table_header*** %new_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header*** %new_table.addr, metadata !777, metadata !DIExpression()), !dbg !778
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %existing_table.addr, align 8, !dbg !779
  %tobool = icmp ne %struct.acpi_table_header* %0, null, !dbg !779
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !781

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %new_table.addr, align 8, !dbg !782
  %tobool1 = icmp ne %struct.acpi_table_header** %1, null, !dbg !782
  br i1 %tobool1, label %if.end, label %if.then, !dbg !783

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !784
  br label %return, !dbg !784

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %new_table.addr, align 8, !dbg !785
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %2, align 8, !dbg !786
  %3 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %new_table.addr, align 8, !dbg !787
  %4 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8, !dbg !789
  %cmp = icmp ne %struct.acpi_table_header* %4, null, !dbg !790
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !791

if.then2:                                         ; preds = %if.end
  %5 = load %struct.acpi_table_header*, %struct.acpi_table_header** %existing_table.addr, align 8, !dbg !792
  call void @acpi_table_taint(%struct.acpi_table_header* %5) #6, !dbg !793
  br label %if.end3, !dbg !793

if.end3:                                          ; preds = %if.then2, %if.end
  store i32 0, i32* %retval, align 4, !dbg !794
  br label %return, !dbg !794

return:                                           ; preds = %if.end3, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !795
  ret i32 %6, !dbg !795
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_table_taint(%struct.acpi_table_header* %table) #0 !dbg !796 {
entry:
  %table.addr = alloca %struct.acpi_table_header*, align 8
  store %struct.acpi_table_header* %table, %struct.acpi_table_header** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table.addr, metadata !799, metadata !DIExpression()), !dbg !800
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !801
  %signature = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %0, i32 0, i32 0, !dbg !801
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i64 0, i64 0, !dbg !801
  %1 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !801
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %1, i32 0, i32 5, !dbg !801
  %arraydecay1 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id, i64 0, i64 0, !dbg !801
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay1) #5, !dbg !801
  call void @add_taint(i32 8, i32 1) #6, !dbg !802
  ret void, !dbg !803
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_table_init() #3 section ".init.text" !dbg !804 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !807, metadata !DIExpression()), !dbg !808
  %0 = load i8, i8* @acpi_verify_table_checksum, align 1, !dbg !809
  %tobool = trunc i8 %0 to i1, !dbg !809
  br i1 %tobool, label %if.then, label %if.else, !dbg !811

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !812
  store i8 1, i8* @acpi_gbl_enable_table_validation, align 1, !dbg !814
  br label %if.end, !dbg !815

if.else:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0)) #5, !dbg !816
  store i8 0, i8* @acpi_gbl_enable_table_validation, align 1, !dbg !818
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @acpi_initialize_tables(%struct.acpi_table_desc* getelementptr inbounds ([128 x %struct.acpi_table_desc], [128 x %struct.acpi_table_desc]* @initial_tables, i64 0, i64 0), i32 128, i8 zeroext 0) #5, !dbg !819
  store i32 %call2, i32* %status, align 4, !dbg !820
  %1 = load i32, i32* %status, align 4, !dbg !821
  %tobool3 = icmp ne i32 %1, 0, !dbg !821
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !823

if.then4:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !824
  br label %return, !dbg !824

if.end5:                                          ; preds = %if.end
  call void @acpi_table_initrd_scan() #5, !dbg !825
  call void @check_multiple_madt() #5, !dbg !826
  store i32 0, i32* %retval, align 4, !dbg !827
  br label %return, !dbg !827

return:                                           ; preds = %if.end5, %if.then4
  %2 = load i32, i32* %retval, align 4, !dbg !828
  ret i32 %2, !dbg !828
}

; Function Attrs: cold noredzone
declare dso_local i32 @acpi_initialize_tables(%struct.acpi_table_desc*, i32, i8 zeroext) #2 section ".init.text"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_table_initrd_scan() #3 section ".init.text" !dbg !829 {
entry:
  ret void, !dbg !832
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @check_multiple_madt() #3 section ".init.text" !dbg !833 {
entry:
  %table = alloca %struct.acpi_table_header*, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !834, metadata !DIExpression()), !dbg !835
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %table, align 8, !dbg !835
  %call = call i32 @acpi_get_table(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 2, %struct.acpi_table_header** %table) #6, !dbg !836
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !837
  %tobool = icmp ne %struct.acpi_table_header* %0, null, !dbg !837
  br i1 %tobool, label %if.then, label %if.else, !dbg !839

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @acpi_apic_instance, align 4, !dbg !840
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i32 %1) #5, !dbg !840
  %2 = load i32, i32* @acpi_apic_instance, align 4, !dbg !842
  %tobool2 = icmp ne i32 %2, 0, !dbg !842
  %3 = zext i1 %tobool2 to i64, !dbg !842
  %cond = select i1 %tobool2, i32 0, i32 2, !dbg !842
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.23, i64 0, i64 0), i32 %cond) #5, !dbg !842
  %4 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !843
  call void @acpi_put_table(%struct.acpi_table_header* %4) #6, !dbg !844
  br label %if.end, !dbg !845

if.else:                                          ; preds = %entry
  store i32 0, i32* @acpi_apic_instance, align 4, !dbg !846
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !847
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_parse_apic_instance(i8* %str) #3 section ".init.text" !dbg !848 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !849, metadata !DIExpression()), !dbg !850
  %0 = load i8*, i8** %str.addr, align 8, !dbg !851
  %tobool = icmp ne i8* %0, null, !dbg !851
  br i1 %tobool, label %if.end, label %if.then, !dbg !853

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !854
  br label %return, !dbg !854

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8, !dbg !855
  %call = call i32 @kstrtoint(i8* %1, i32 0, i32* @acpi_apic_instance) #6, !dbg !857
  %tobool1 = icmp ne i32 %call, 0, !dbg !857
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !858

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !859
  br label %return, !dbg !859

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* @acpi_apic_instance, align 4, !dbg !860
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0), i32 %2) #5, !dbg !860
  store i32 0, i32* %retval, align 4, !dbg !861
  br label %return, !dbg !861

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !862
  ret i32 %3, !dbg !862
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_force_table_verification_setup(i8* %s) #3 section ".init.text" !dbg !863 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !864, metadata !DIExpression()), !dbg !865
  store i8 1, i8* @acpi_verify_table_checksum, align 1, !dbg !866
  ret i32 0, !dbg !867
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_force_32bit_fadt_addr(i8* %s) #3 section ".init.text" !dbg !868 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !869, metadata !DIExpression()), !dbg !870
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #5, !dbg !871
  store i8 1, i8* @acpi_gbl_use32_bit_fadt_addresses, align 1, !dbg !872
  ret i32 0, !dbg !873
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_get_subtable_type(i8* %id) #3 section ".init.text" !dbg !874 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca i8*, align 8
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !877, metadata !DIExpression()), !dbg !878
  %0 = load i8*, i8** %id.addr, align 8, !dbg !879
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i64 4) #6, !dbg !881
  %cmp = icmp eq i32 %call, 0, !dbg !882
  br i1 %cmp, label %if.then, label %if.end, !dbg !883

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !884
  br label %return, !dbg !884

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !885
  br label %return, !dbg !885

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !886
  ret i32 %1, !dbg !886
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_get_subtable_header_length(%struct.acpi_subtable_entry* %entry1) #3 section ".init.text" !dbg !887 {
entry:
  %retval = alloca i64, align 8
  %entry.addr = alloca %struct.acpi_subtable_entry*, align 8
  store %struct.acpi_subtable_entry* %entry1, %struct.acpi_subtable_entry** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_entry** %entry.addr, metadata !891, metadata !DIExpression()), !dbg !892
  %0 = load %struct.acpi_subtable_entry*, %struct.acpi_subtable_entry** %entry.addr, align 8, !dbg !893
  %type = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %0, i32 0, i32 1, !dbg !894
  %1 = load i32, i32* %type, align 8, !dbg !894
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !895

sw.bb:                                            ; preds = %entry
  store i64 2, i64* %retval, align 8, !dbg !896
  br label %return, !dbg !896

sw.bb2:                                           ; preds = %entry
  store i64 8, i64* %retval, align 8, !dbg !898
  br label %return, !dbg !898

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !899
  br label %return, !dbg !899

return:                                           ; preds = %sw.epilog, %sw.bb2, %sw.bb
  %2 = load i64, i64* %retval, align 8, !dbg !900
  ret i64 %2, !dbg !900
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_get_entry_type(%struct.acpi_subtable_entry* %entry1) #3 section ".init.text" !dbg !901 {
entry:
  %retval = alloca i64, align 8
  %entry.addr = alloca %struct.acpi_subtable_entry*, align 8
  store %struct.acpi_subtable_entry* %entry1, %struct.acpi_subtable_entry** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_entry** %entry.addr, metadata !902, metadata !DIExpression()), !dbg !903
  %0 = load %struct.acpi_subtable_entry*, %struct.acpi_subtable_entry** %entry.addr, align 8, !dbg !904
  %type = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %0, i32 0, i32 1, !dbg !905
  %1 = load i32, i32* %type, align 8, !dbg !905
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ], !dbg !906

sw.bb:                                            ; preds = %entry
  %2 = load %struct.acpi_subtable_entry*, %struct.acpi_subtable_entry** %entry.addr, align 8, !dbg !907
  %hdr = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %2, i32 0, i32 0, !dbg !909
  %3 = load %union.acpi_subtable_headers*, %union.acpi_subtable_headers** %hdr, align 8, !dbg !909
  %common = bitcast %union.acpi_subtable_headers* %3 to %struct.acpi_subtable_header*, !dbg !910
  %type2 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %common, i32 0, i32 0, !dbg !911
  %4 = load i8, i8* %type2, align 1, !dbg !911
  %conv = zext i8 %4 to i64, !dbg !907
  store i64 %conv, i64* %retval, align 8, !dbg !912
  br label %return, !dbg !912

sw.bb3:                                           ; preds = %entry
  %5 = load %struct.acpi_subtable_entry*, %struct.acpi_subtable_entry** %entry.addr, align 8, !dbg !913
  %hdr4 = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %5, i32 0, i32 0, !dbg !914
  %6 = load %union.acpi_subtable_headers*, %union.acpi_subtable_headers** %hdr4, align 8, !dbg !914
  %hmat = bitcast %union.acpi_subtable_headers* %6 to %struct.acpi_hmat_structure*, !dbg !915
  %type5 = getelementptr inbounds %struct.acpi_hmat_structure, %struct.acpi_hmat_structure* %hmat, i32 0, i32 0, !dbg !916
  %7 = load i16, i16* %type5, align 1, !dbg !916
  %conv6 = zext i16 %7 to i64, !dbg !913
  store i64 %conv6, i64* %retval, align 8, !dbg !917
  br label %return, !dbg !917

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !918
  br label %return, !dbg !918

return:                                           ; preds = %sw.epilog, %sw.bb3, %sw.bb
  %8 = load i64, i64* %retval, align 8, !dbg !919
  ret i64 %8, !dbg !919
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_get_entry_length(%struct.acpi_subtable_entry* %entry1) #3 section ".init.text" !dbg !920 {
entry:
  %retval = alloca i64, align 8
  %entry.addr = alloca %struct.acpi_subtable_entry*, align 8
  store %struct.acpi_subtable_entry* %entry1, %struct.acpi_subtable_entry** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_subtable_entry** %entry.addr, metadata !921, metadata !DIExpression()), !dbg !922
  %0 = load %struct.acpi_subtable_entry*, %struct.acpi_subtable_entry** %entry.addr, align 8, !dbg !923
  %type = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %0, i32 0, i32 1, !dbg !924
  %1 = load i32, i32* %type, align 8, !dbg !924
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !925

sw.bb:                                            ; preds = %entry
  %2 = load %struct.acpi_subtable_entry*, %struct.acpi_subtable_entry** %entry.addr, align 8, !dbg !926
  %hdr = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %2, i32 0, i32 0, !dbg !928
  %3 = load %union.acpi_subtable_headers*, %union.acpi_subtable_headers** %hdr, align 8, !dbg !928
  %common = bitcast %union.acpi_subtable_headers* %3 to %struct.acpi_subtable_header*, !dbg !929
  %length = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %common, i32 0, i32 1, !dbg !930
  %4 = load i8, i8* %length, align 1, !dbg !930
  %conv = zext i8 %4 to i64, !dbg !926
  store i64 %conv, i64* %retval, align 8, !dbg !931
  br label %return, !dbg !931

sw.bb2:                                           ; preds = %entry
  %5 = load %struct.acpi_subtable_entry*, %struct.acpi_subtable_entry** %entry.addr, align 8, !dbg !932
  %hdr3 = getelementptr inbounds %struct.acpi_subtable_entry, %struct.acpi_subtable_entry* %5, i32 0, i32 0, !dbg !933
  %6 = load %union.acpi_subtable_headers*, %union.acpi_subtable_headers** %hdr3, align 8, !dbg !933
  %hmat = bitcast %union.acpi_subtable_headers* %6 to %struct.acpi_hmat_structure*, !dbg !934
  %length4 = getelementptr inbounds %struct.acpi_hmat_structure, %struct.acpi_hmat_structure* %hmat, i32 0, i32 2, !dbg !935
  %7 = load i32, i32* %length4, align 1, !dbg !935
  %conv5 = zext i32 %7 to i64, !dbg !932
  store i64 %conv5, i64* %retval, align 8, !dbg !936
  br label %return, !dbg !936

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !937
  br label %return, !dbg !937

return:                                           ; preds = %sw.epilog, %sw.bb2, %sw.bb
  %8 = load i64, i64* %retval, align 8, !dbg !938
  ret i64 %8, !dbg !938
}

; Function Attrs: noredzone
declare dso_local void @add_taint(i32, i32) #4

; Function Attrs: noredzone
declare dso_local i32 @kstrtoint(i8*, i32, i32*) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!287, !288, !289, !290}
!llvm.ident = !{!291}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mps_inti_flags_polarity", scope: !2, file: !3, line: 32, type: !266, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !40, globals: !200, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/tables.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !26, !30, !35}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_madt_type", file: !6, line: 503, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/acpi/actbl2.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!9 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_APIC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_MADT_TYPE_IO_APIC", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_MADT_TYPE_INTERRUPT_OVERRIDE", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "ACPI_MADT_TYPE_NMI_SOURCE", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_APIC_NMI", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_APIC_OVERRIDE", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "ACPI_MADT_TYPE_IO_SAPIC", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_SAPIC", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "ACPI_MADT_TYPE_INTERRUPT_SOURCE", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_X2APIC", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "ACPI_MADT_TYPE_LOCAL_X2APIC_NMI", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_INTERRUPT", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_DISTRIBUTOR", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_MSI_FRAME", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_REDISTRIBUTOR", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "ACPI_MADT_TYPE_GENERIC_TRANSLATOR", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "ACPI_MADT_TYPE_RESERVED", value: 16, isUnsigned: true)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_subtable_type", file: !3, line: 39, baseType: !7, size: 32, elements: !27)
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "ACPI_SUBTABLE_COMMON", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "ACPI_SUBTABLE_HMAT", value: 1, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdep_ok", file: !31, line: 561, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "LOCKDEP_STILL_OK", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "LOCKDEP_NOW_UNRELIABLE", value: 1, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 10, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!40 = !{!41, !60, !71, !79, !87, !93, !100, !111, !120, !121, !122, !130, !145, !156, !177, !187, !189}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_apic", file: !6, line: 529, size: 64, elements: !43)
!43 = !{!44, !55, !56, !57}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !42, file: !6, line: 530, baseType: !45, size: 16)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_header", file: !46, line: 90, size: 16, elements: !47)
!46 = !DIFile(filename: "./include/acpi/actbl1.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !54}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !45, file: !46, line: 91, baseType: !49, size: 8)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !50, line: 17, baseType: !51)
!50 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !52, line: 21, baseType: !53)
!52 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !45, file: !46, line: 92, baseType: !49, size: 8, offset: 8)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", scope: !42, file: !6, line: 531, baseType: !49, size: 8, offset: 16)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !42, file: !6, line: 532, baseType: !49, size: 8, offset: 24)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_flags", scope: !42, file: !6, line: 533, baseType: !58, size: 32, offset: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !50, line: 21, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !52, line: 27, baseType: !7)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_x2apic", file: !6, line: 623, size: 128, elements: !62)
!62 = !{!63, !64, !68, !69, !70}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !61, file: !6, line: 624, baseType: !45, size: 16)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !61, file: !6, line: 625, baseType: !65, size: 16, offset: 16)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !50, line: 19, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !52, line: 24, baseType: !67)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "local_apic_id", scope: !61, file: !6, line: 626, baseType: !58, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_flags", scope: !61, file: !6, line: 627, baseType: !58, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !61, file: !6, line: 628, baseType: !58, size: 32, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_io_apic", file: !6, line: 538, size: 96, elements: !73)
!73 = !{!74, !75, !76, !77, !78}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !72, file: !6, line: 539, baseType: !45, size: 16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !72, file: !6, line: 540, baseType: !49, size: 8, offset: 16)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !72, file: !6, line: 541, baseType: !49, size: 8, offset: 24)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !72, file: !6, line: 542, baseType: !58, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq_base", scope: !72, file: !6, line: 543, baseType: !58, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_interrupt_override", file: !6, line: 548, size: 80, elements: !81)
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !80, file: !6, line: 549, baseType: !45, size: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !80, file: !6, line: 550, baseType: !49, size: 8, offset: 16)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "source_irq", scope: !80, file: !6, line: 551, baseType: !49, size: 8, offset: 24)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq", scope: !80, file: !6, line: 552, baseType: !58, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "inti_flags", scope: !80, file: !6, line: 553, baseType: !65, size: 16, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_nmi_source", file: !6, line: 558, size: 64, elements: !89)
!89 = !{!90, !91, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !88, file: !6, line: 559, baseType: !45, size: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "inti_flags", scope: !88, file: !6, line: 560, baseType: !65, size: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq", scope: !88, file: !6, line: 561, baseType: !58, size: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_apic_nmi", file: !6, line: 566, size: 48, elements: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !94, file: !6, line: 567, baseType: !45, size: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", scope: !94, file: !6, line: 568, baseType: !49, size: 8, offset: 16)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "inti_flags", scope: !94, file: !6, line: 569, baseType: !65, size: 16, offset: 24)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "lint", scope: !94, file: !6, line: 570, baseType: !49, size: 8, offset: 40)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_x2apic_nmi", file: !6, line: 633, size: 96, elements: !102)
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !101, file: !6, line: 634, baseType: !45, size: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "inti_flags", scope: !101, file: !6, line: 635, baseType: !65, size: 16, offset: 16)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !101, file: !6, line: 636, baseType: !58, size: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "lint", scope: !101, file: !6, line: 637, baseType: !49, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !101, file: !6, line: 638, baseType: !108, size: 24, offset: 72)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 24, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 3)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_apic_override", file: !6, line: 575, size: 96, elements: !113)
!113 = !{!114, !115, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !112, file: !6, line: 576, baseType: !45, size: 16)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !112, file: !6, line: 577, baseType: !65, size: 16, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !112, file: !6, line: 578, baseType: !117, size: 64, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !50, line: 23, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !52, line: 31, baseType: !119)
!119 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!121 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_io_sapic", file: !6, line: 583, size: 128, elements: !124)
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !123, file: !6, line: 584, baseType: !45, size: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !123, file: !6, line: 585, baseType: !49, size: 8, offset: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !123, file: !6, line: 586, baseType: !49, size: 8, offset: 24)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq_base", scope: !123, file: !6, line: 587, baseType: !58, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !123, file: !6, line: 588, baseType: !117, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_local_sapic", file: !6, line: 593, size: 136, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !131, file: !6, line: 594, baseType: !45, size: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", scope: !131, file: !6, line: 595, baseType: !49, size: 8, offset: 16)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !131, file: !6, line: 596, baseType: !49, size: 8, offset: 24)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !131, file: !6, line: 597, baseType: !49, size: 8, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !131, file: !6, line: 598, baseType: !108, size: 24, offset: 40)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "lapic_flags", scope: !131, file: !6, line: 599, baseType: !58, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !131, file: !6, line: 600, baseType: !58, size: 32, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "uid_string", scope: !131, file: !6, line: 601, baseType: !141, size: 8, offset: 128)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 8, elements: !143)
!142 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!143 = !{!144}
!144 = !DISubrange(count: 1)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_interrupt_source", file: !6, line: 606, size: 128, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !146, file: !6, line: 607, baseType: !45, size: 16)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "inti_flags", scope: !146, file: !6, line: 608, baseType: !65, size: 16, offset: 16)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !6, line: 609, baseType: !49, size: 8, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !146, file: !6, line: 610, baseType: !49, size: 8, offset: 40)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !146, file: !6, line: 611, baseType: !49, size: 8, offset: 48)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "io_sapic_vector", scope: !146, file: !6, line: 612, baseType: !49, size: 8, offset: 56)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq", scope: !146, file: !6, line: 613, baseType: !58, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !6, line: 614, baseType: !58, size: 32, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_generic_interrupt", file: !6, line: 643, size: 640, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !176}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !157, file: !6, line: 644, baseType: !45, size: 16)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !157, file: !6, line: 645, baseType: !65, size: 16, offset: 16)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_interface_number", scope: !157, file: !6, line: 646, baseType: !58, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !157, file: !6, line: 647, baseType: !58, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !6, line: 648, baseType: !58, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parking_version", scope: !157, file: !6, line: 649, baseType: !58, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "performance_interrupt", scope: !157, file: !6, line: 650, baseType: !58, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parked_address", scope: !157, file: !6, line: 651, baseType: !117, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !157, file: !6, line: 652, baseType: !117, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "gicv_base_address", scope: !157, file: !6, line: 653, baseType: !117, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "gich_base_address", scope: !157, file: !6, line: 654, baseType: !117, size: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "vgic_interrupt", scope: !157, file: !6, line: 655, baseType: !58, size: 32, offset: 448)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "gicr_base_address", scope: !157, file: !6, line: 656, baseType: !117, size: 64, offset: 480)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "arm_mpidr", scope: !157, file: !6, line: 657, baseType: !117, size: 64, offset: 544)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "efficiency_class", scope: !157, file: !6, line: 658, baseType: !49, size: 8, offset: 608)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !157, file: !6, line: 659, baseType: !175, size: 8, offset: 616)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, elements: !143)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "spe_interrupt", scope: !157, file: !6, line: 660, baseType: !65, size: 16, offset: 624)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_madt_generic_distributor", file: !6, line: 671, size: 192, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !186}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !178, file: !6, line: 672, baseType: !45, size: 16)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !178, file: !6, line: 673, baseType: !65, size: 16, offset: 16)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "gic_id", scope: !178, file: !6, line: 674, baseType: !58, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !178, file: !6, line: 675, baseType: !117, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "global_irq_base", scope: !178, file: !6, line: 676, baseType: !58, size: 32, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !178, file: !6, line: 677, baseType: !49, size: 8, offset: 160)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !178, file: !6, line: 678, baseType: !108, size: 24, offset: 168)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !188, line: 421, baseType: !58)
!188 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_subtable_headers", file: !191, line: 132, size: 64, elements: !192)
!191 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !190, file: !191, line: 133, baseType: !45, size: 16)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "hmat", scope: !190, file: !191, line: 134, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hmat_structure", file: !46, line: 1404, size: 64, elements: !196)
!196 = !{!197, !198, !199}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !195, file: !46, line: 1405, baseType: !65, size: 16)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !195, file: !46, line: 1406, baseType: !65, size: 16, offset: 16)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !195, file: !46, line: 1407, baseType: !58, size: 32, offset: 32)
!200 = !{!201, !216, !218, !220, !262, !0, !264, !267, !272, !277, !282}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "__setup_acpi_parse_apic_instance", scope: !2, file: !3, line: 824, type: !203, isLocal: true, isDefinition: true, align: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !204, line: 241, size: 192, elements: !205)
!204 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!205 = !{!206, !209, !215}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !203, file: !204, line: 242, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !203, file: !204, line: 243, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !214}
!213 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !203, file: !204, line: 244, baseType: !213, size: 32, offset: 128)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "__setup_acpi_force_table_verification_setup", scope: !2, file: !3, line: 832, type: !203, isLocal: true, isDefinition: true, align: 64)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "__setup_acpi_force_32bit_fadt_addr", scope: !2, file: !3, line: 841, type: !203, isLocal: true, isDefinition: true, align: 64)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "initial_tables", scope: !2, file: !3, line: 35, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 32768, elements: !260)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !224, line: 334, size: 256, elements: !225)
!224 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!225 = !{!226, !228, !250, !251, !256, !258, !259}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !223, file: !224, line: 335, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !188, line: 129, baseType: !117)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !223, file: !224, line: 336, baseType: !229, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !224, line: 68, size: 288, elements: !231)
!231 = !{!232, !236, !237, !238, !239, !243, !247, !248, !249}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !230, file: !224, line: 69, baseType: !233, size: 32)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 32, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 4)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !230, file: !224, line: 70, baseType: !58, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !230, file: !224, line: 71, baseType: !49, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !230, file: !224, line: 72, baseType: !49, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !230, file: !224, line: 73, baseType: !240, size: 48, offset: 80)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 48, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 6)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !230, file: !224, line: 74, baseType: !244, size: 64, offset: 128)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 8)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !230, file: !224, line: 75, baseType: !58, size: 32, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !230, file: !224, line: 76, baseType: !233, size: 32, offset: 224)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !230, file: !224, line: 77, baseType: !58, size: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !223, file: !224, line: 337, baseType: !58, size: 32, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !223, file: !224, line: 338, baseType: !252, size: 32, offset: 160)
!252 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !224, line: 327, size: 32, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !252, file: !224, line: 328, baseType: !58, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !252, file: !224, line: 329, baseType: !233, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !223, file: !224, line: 339, baseType: !257, size: 16, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !188, line: 445, baseType: !65)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !224, line: 340, baseType: !49, size: 8, offset: 208)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !223, file: !224, line: 341, baseType: !65, size: 16, offset: 224)
!260 = !{!261}
!261 = !DISubrange(count: 128)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "acpi_apic_instance", scope: !2, file: !3, line: 37, type: !213, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "mps_inti_flags_trigger", scope: !2, file: !3, line: 33, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 256, elements: !234)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "acpi_verify_table_checksum", scope: !2, file: !3, line: 53, type: !269, isLocal: true, isDefinition: true)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !270, line: 30, baseType: !271)
!270 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!271 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "__setup_str_acpi_parse_apic_instance", scope: !2, file: !3, line: 824, type: !274, isLocal: true, isDefinition: true, align: 8)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 152, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 19)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "__setup_str_acpi_force_table_verification_setup", scope: !2, file: !3, line: 832, type: !279, isLocal: true, isDefinition: true, align: 8)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 240, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 30)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "__setup_str_acpi_force_32bit_fadt_addr", scope: !2, file: !3, line: 841, type: !284, isLocal: true, isDefinition: true, align: 8)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 216, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 27)
!287 = !{i32 7, !"Dwarf Version", i32 4}
!288 = !{i32 2, !"Debug Info Version", i32 3}
!289 = !{i32 1, !"wchar_size", i32 2}
!290 = !{i32 1, !"Code Model", i32 2}
!291 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!292 = distinct !DISubprogram(name: "acpi_table_print_madt_entry", scope: !3, file: !3, line: 55, type: !293, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!296 = !{}
!297 = !DILocalVariable(name: "header", arg: 1, scope: !292, file: !3, line: 55, type: !295)
!298 = !DILocation(line: 55, column: 63, scope: !292)
!299 = !DILocation(line: 57, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !292, file: !3, line: 57, column: 6)
!301 = !DILocation(line: 57, column: 6, scope: !292)
!302 = !DILocation(line: 58, column: 3, scope: !300)
!303 = !DILocation(line: 60, column: 10, scope: !292)
!304 = !DILocation(line: 60, column: 18, scope: !292)
!305 = !DILocation(line: 60, column: 2, scope: !292)
!306 = !DILocalVariable(name: "p", scope: !307, file: !3, line: 64, type: !41)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 63, column: 3)
!308 = distinct !DILexicalBlock(scope: !292, file: !3, line: 60, column: 24)
!309 = !DILocation(line: 64, column: 33, scope: !307)
!310 = !DILocation(line: 65, column: 39, scope: !307)
!311 = !DILocation(line: 65, column: 8, scope: !307)
!312 = !DILocation(line: 66, column: 4, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 66, column: 4)
!314 = distinct !DILexicalBlock(scope: !307, file: !3, line: 66, column: 4)
!315 = !DILocation(line: 66, column: 4, scope: !314)
!316 = !DILocation(line: 70, column: 3, scope: !308)
!317 = !DILocalVariable(name: "p", scope: !318, file: !3, line: 74, type: !60)
!318 = distinct !DILexicalBlock(scope: !308, file: !3, line: 73, column: 3)
!319 = !DILocation(line: 74, column: 35, scope: !318)
!320 = !DILocation(line: 75, column: 41, scope: !318)
!321 = !DILocation(line: 75, column: 8, scope: !318)
!322 = !DILocation(line: 76, column: 4, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !3, line: 76, column: 4)
!324 = distinct !DILexicalBlock(scope: !318, file: !3, line: 76, column: 4)
!325 = !DILocation(line: 76, column: 4, scope: !324)
!326 = !DILocation(line: 80, column: 3, scope: !308)
!327 = !DILocalVariable(name: "p", scope: !328, file: !3, line: 84, type: !71)
!328 = distinct !DILexicalBlock(scope: !308, file: !3, line: 83, column: 3)
!329 = !DILocation(line: 84, column: 30, scope: !328)
!330 = !DILocation(line: 85, column: 36, scope: !328)
!331 = !DILocation(line: 85, column: 8, scope: !328)
!332 = !DILocation(line: 86, column: 4, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !3, line: 86, column: 4)
!334 = distinct !DILexicalBlock(scope: !328, file: !3, line: 86, column: 4)
!335 = !DILocation(line: 86, column: 4, scope: !334)
!336 = !DILocation(line: 89, column: 3, scope: !308)
!337 = !DILocalVariable(name: "p", scope: !338, file: !3, line: 93, type: !79)
!338 = distinct !DILexicalBlock(scope: !308, file: !3, line: 92, column: 3)
!339 = !DILocation(line: 93, column: 41, scope: !338)
!340 = !DILocation(line: 94, column: 47, scope: !338)
!341 = !DILocation(line: 94, column: 8, scope: !338)
!342 = !DILocation(line: 95, column: 4, scope: !338)
!343 = !DILocation(line: 99, column: 8, scope: !344)
!344 = distinct !DILexicalBlock(scope: !338, file: !3, line: 99, column: 8)
!345 = !DILocation(line: 99, column: 11, scope: !344)
!346 = !DILocation(line: 99, column: 23, scope: !344)
!347 = !DILocation(line: 99, column: 8, scope: !338)
!348 = !DILocation(line: 101, column: 5, scope: !344)
!349 = !DILocation(line: 105, column: 3, scope: !308)
!350 = !DILocalVariable(name: "p", scope: !351, file: !3, line: 109, type: !87)
!351 = distinct !DILexicalBlock(scope: !308, file: !3, line: 108, column: 3)
!352 = !DILocation(line: 109, column: 33, scope: !351)
!353 = !DILocation(line: 110, column: 39, scope: !351)
!354 = !DILocation(line: 110, column: 8, scope: !351)
!355 = !DILocation(line: 111, column: 4, scope: !351)
!356 = !DILocation(line: 116, column: 3, scope: !308)
!357 = !DILocalVariable(name: "p", scope: !358, file: !3, line: 120, type: !93)
!358 = distinct !DILexicalBlock(scope: !308, file: !3, line: 119, column: 3)
!359 = !DILocation(line: 120, column: 37, scope: !358)
!360 = !DILocation(line: 121, column: 43, scope: !358)
!361 = !DILocation(line: 121, column: 8, scope: !358)
!362 = !DILocation(line: 122, column: 4, scope: !358)
!363 = !DILocation(line: 128, column: 3, scope: !308)
!364 = !DILocalVariable(name: "polarity", scope: !365, file: !3, line: 132, type: !65)
!365 = distinct !DILexicalBlock(scope: !308, file: !3, line: 131, column: 3)
!366 = !DILocation(line: 132, column: 8, scope: !365)
!367 = !DILocalVariable(name: "trigger", scope: !365, file: !3, line: 132, type: !65)
!368 = !DILocation(line: 132, column: 18, scope: !365)
!369 = !DILocalVariable(name: "p", scope: !365, file: !3, line: 133, type: !100)
!370 = !DILocation(line: 133, column: 39, scope: !365)
!371 = !DILocation(line: 134, column: 45, scope: !365)
!372 = !DILocation(line: 134, column: 8, scope: !365)
!373 = !DILocation(line: 136, column: 15, scope: !365)
!374 = !DILocation(line: 136, column: 18, scope: !365)
!375 = !DILocation(line: 136, column: 29, scope: !365)
!376 = !DILocation(line: 136, column: 13, scope: !365)
!377 = !DILocation(line: 137, column: 15, scope: !365)
!378 = !DILocation(line: 137, column: 18, scope: !365)
!379 = !DILocation(line: 137, column: 29, scope: !365)
!380 = !DILocation(line: 137, column: 55, scope: !365)
!381 = !DILocation(line: 137, column: 14, scope: !365)
!382 = !DILocation(line: 137, column: 12, scope: !365)
!383 = !DILocation(line: 139, column: 4, scope: !365)
!384 = !DILocation(line: 145, column: 3, scope: !308)
!385 = !DILocalVariable(name: "p", scope: !386, file: !3, line: 149, type: !111)
!386 = distinct !DILexicalBlock(scope: !308, file: !3, line: 148, column: 3)
!387 = !DILocation(line: 149, column: 42, scope: !386)
!388 = !DILocation(line: 150, column: 48, scope: !386)
!389 = !DILocation(line: 150, column: 8, scope: !386)
!390 = !DILocation(line: 151, column: 4, scope: !386)
!391 = !DILocation(line: 154, column: 3, scope: !308)
!392 = !DILocalVariable(name: "p", scope: !393, file: !3, line: 158, type: !122)
!393 = distinct !DILexicalBlock(scope: !308, file: !3, line: 157, column: 3)
!394 = !DILocation(line: 158, column: 31, scope: !393)
!395 = !DILocation(line: 159, column: 37, scope: !393)
!396 = !DILocation(line: 159, column: 8, scope: !393)
!397 = !DILocation(line: 160, column: 4, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 160, column: 4)
!399 = distinct !DILexicalBlock(scope: !393, file: !3, line: 160, column: 4)
!400 = !DILocation(line: 160, column: 4, scope: !399)
!401 = !DILocation(line: 164, column: 3, scope: !308)
!402 = !DILocalVariable(name: "p", scope: !403, file: !3, line: 168, type: !130)
!403 = distinct !DILexicalBlock(scope: !308, file: !3, line: 167, column: 3)
!404 = !DILocation(line: 168, column: 34, scope: !403)
!405 = !DILocation(line: 169, column: 40, scope: !403)
!406 = !DILocation(line: 169, column: 8, scope: !403)
!407 = !DILocation(line: 170, column: 4, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 170, column: 4)
!409 = distinct !DILexicalBlock(scope: !403, file: !3, line: 170, column: 4)
!410 = !DILocation(line: 170, column: 4, scope: !409)
!411 = !DILocation(line: 174, column: 3, scope: !308)
!412 = !DILocalVariable(name: "p", scope: !413, file: !3, line: 178, type: !145)
!413 = distinct !DILexicalBlock(scope: !308, file: !3, line: 177, column: 3)
!414 = !DILocation(line: 178, column: 39, scope: !413)
!415 = !DILocation(line: 179, column: 45, scope: !413)
!416 = !DILocation(line: 179, column: 8, scope: !413)
!417 = !DILocation(line: 180, column: 4, scope: !413)
!418 = !DILocation(line: 186, column: 3, scope: !308)
!419 = !DILocalVariable(name: "p", scope: !420, file: !3, line: 190, type: !156)
!420 = distinct !DILexicalBlock(scope: !308, file: !3, line: 189, column: 3)
!421 = !DILocation(line: 190, column: 40, scope: !420)
!422 = !DILocation(line: 191, column: 43, scope: !420)
!423 = !DILocation(line: 191, column: 5, scope: !420)
!424 = !DILocation(line: 192, column: 4, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 192, column: 4)
!426 = distinct !DILexicalBlock(scope: !420, file: !3, line: 192, column: 4)
!427 = !DILocation(line: 192, column: 4, scope: !426)
!428 = !DILocation(line: 198, column: 3, scope: !308)
!429 = !DILocalVariable(name: "p", scope: !430, file: !3, line: 202, type: !177)
!430 = distinct !DILexicalBlock(scope: !308, file: !3, line: 201, column: 3)
!431 = !DILocation(line: 202, column: 42, scope: !430)
!432 = !DILocation(line: 203, column: 45, scope: !430)
!433 = !DILocation(line: 203, column: 5, scope: !430)
!434 = !DILocation(line: 204, column: 4, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 204, column: 4)
!436 = distinct !DILexicalBlock(scope: !430, file: !3, line: 204, column: 4)
!437 = !DILocation(line: 204, column: 4, scope: !436)
!438 = !DILocation(line: 208, column: 3, scope: !308)
!439 = !DILocation(line: 211, column: 3, scope: !308)
!440 = !DILocation(line: 213, column: 3, scope: !308)
!441 = !DILocation(line: 215, column: 1, scope: !292)
!442 = distinct !DISubprogram(name: "acpi_table_parse_entries_array", scope: !3, file: !3, line: 345, type: !443, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!443 = !DISubroutineType(types: !444)
!444 = !{!213, !214, !121, !445, !213, !7}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_proc", file: !191, line: 215, size: 192, elements: !447)
!447 = !{!448, !449, !455}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !446, file: !191, line: 216, baseType: !213, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !446, file: !191, line: 217, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_entry_handler", file: !191, line: 139, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!213, !189, !454}
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !446, file: !191, line: 218, baseType: !213, size: 32, offset: 128)
!456 = !DILocalVariable(name: "id", arg: 1, scope: !442, file: !3, line: 345, type: !214)
!457 = !DILocation(line: 345, column: 49, scope: !442)
!458 = !DILocalVariable(name: "table_size", arg: 2, scope: !442, file: !3, line: 346, type: !121)
!459 = !DILocation(line: 346, column: 19, scope: !442)
!460 = !DILocalVariable(name: "proc", arg: 3, scope: !442, file: !3, line: 347, type: !445)
!461 = !DILocation(line: 347, column: 32, scope: !442)
!462 = !DILocalVariable(name: "proc_num", arg: 4, scope: !442, file: !3, line: 347, type: !213)
!463 = !DILocation(line: 347, column: 42, scope: !442)
!464 = !DILocalVariable(name: "max_entries", arg: 5, scope: !442, file: !3, line: 348, type: !7)
!465 = !DILocation(line: 348, column: 18, scope: !442)
!466 = !DILocalVariable(name: "table_header", scope: !442, file: !3, line: 350, type: !229)
!467 = !DILocation(line: 350, column: 28, scope: !442)
!468 = !DILocalVariable(name: "count", scope: !442, file: !3, line: 351, type: !213)
!469 = !DILocation(line: 351, column: 6, scope: !442)
!470 = !DILocalVariable(name: "instance", scope: !442, file: !3, line: 352, type: !58)
!471 = !DILocation(line: 352, column: 6, scope: !442)
!472 = !DILocation(line: 354, column: 6, scope: !473)
!473 = distinct !DILexicalBlock(scope: !442, file: !3, line: 354, column: 6)
!474 = !DILocation(line: 354, column: 6, scope: !442)
!475 = !DILocation(line: 355, column: 3, scope: !473)
!476 = !DILocation(line: 357, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !442, file: !3, line: 357, column: 6)
!478 = !DILocation(line: 357, column: 6, scope: !442)
!479 = !DILocation(line: 358, column: 3, scope: !477)
!480 = !DILocation(line: 360, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !442, file: !3, line: 360, column: 6)
!482 = !DILocation(line: 360, column: 6, scope: !442)
!483 = !DILocation(line: 361, column: 3, scope: !481)
!484 = !DILocation(line: 363, column: 15, scope: !485)
!485 = distinct !DILexicalBlock(scope: !442, file: !3, line: 363, column: 6)
!486 = !DILocation(line: 363, column: 7, scope: !485)
!487 = !DILocation(line: 363, column: 6, scope: !442)
!488 = !DILocation(line: 364, column: 14, scope: !485)
!489 = !DILocation(line: 364, column: 12, scope: !485)
!490 = !DILocation(line: 364, column: 3, scope: !485)
!491 = !DILocation(line: 366, column: 17, scope: !442)
!492 = !DILocation(line: 366, column: 21, scope: !442)
!493 = !DILocation(line: 366, column: 2, scope: !442)
!494 = !DILocation(line: 367, column: 7, scope: !495)
!495 = distinct !DILexicalBlock(scope: !442, file: !3, line: 367, column: 6)
!496 = !DILocation(line: 367, column: 6, scope: !442)
!497 = !DILocation(line: 368, column: 3, scope: !498)
!498 = distinct !DILexicalBlock(scope: !495, file: !3, line: 367, column: 21)
!499 = !DILocation(line: 369, column: 3, scope: !498)
!500 = !DILocation(line: 372, column: 35, scope: !442)
!501 = !DILocation(line: 372, column: 39, scope: !442)
!502 = !DILocation(line: 372, column: 51, scope: !442)
!503 = !DILocation(line: 373, column: 4, scope: !442)
!504 = !DILocation(line: 373, column: 10, scope: !442)
!505 = !DILocation(line: 373, column: 20, scope: !442)
!506 = !DILocation(line: 372, column: 10, scope: !442)
!507 = !DILocation(line: 372, column: 8, scope: !442)
!508 = !DILocation(line: 375, column: 17, scope: !442)
!509 = !DILocation(line: 375, column: 2, scope: !442)
!510 = !DILocation(line: 376, column: 9, scope: !442)
!511 = !DILocation(line: 376, column: 2, scope: !442)
!512 = !DILocation(line: 377, column: 1, scope: !442)
!513 = distinct !DISubprogram(name: "acpi_parse_entries_array", scope: !3, file: !3, line: 284, type: !514, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!514 = !DISubroutineType(types: !515)
!515 = !{!213, !214, !121, !229, !445, !213, !7}
!516 = !DILocalVariable(name: "id", arg: 1, scope: !513, file: !3, line: 284, type: !214)
!517 = !DILocation(line: 284, column: 50, scope: !513)
!518 = !DILocalVariable(name: "table_size", arg: 2, scope: !513, file: !3, line: 284, type: !121)
!519 = !DILocation(line: 284, column: 68, scope: !513)
!520 = !DILocalVariable(name: "table_header", arg: 3, scope: !513, file: !3, line: 285, type: !229)
!521 = !DILocation(line: 285, column: 29, scope: !513)
!522 = !DILocalVariable(name: "proc", arg: 4, scope: !513, file: !3, line: 286, type: !445)
!523 = !DILocation(line: 286, column: 30, scope: !513)
!524 = !DILocalVariable(name: "proc_num", arg: 5, scope: !513, file: !3, line: 286, type: !213)
!525 = !DILocation(line: 286, column: 40, scope: !513)
!526 = !DILocalVariable(name: "max_entries", arg: 6, scope: !513, file: !3, line: 287, type: !7)
!527 = !DILocation(line: 287, column: 16, scope: !513)
!528 = !DILocalVariable(name: "entry", scope: !513, file: !3, line: 289, type: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_subtable_entry", file: !3, line: 44, size: 128, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !529, file: !3, line: 45, baseType: !189, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !529, file: !3, line: 46, baseType: !26, size: 32, offset: 64)
!533 = !DILocation(line: 289, column: 29, scope: !513)
!534 = !DILocalVariable(name: "table_end", scope: !513, file: !3, line: 290, type: !121)
!535 = !DILocation(line: 290, column: 16, scope: !513)
!536 = !DILocalVariable(name: "subtable_len", scope: !513, file: !3, line: 290, type: !121)
!537 = !DILocation(line: 290, column: 27, scope: !513)
!538 = !DILocalVariable(name: "entry_len", scope: !513, file: !3, line: 290, type: !121)
!539 = !DILocation(line: 290, column: 41, scope: !513)
!540 = !DILocalVariable(name: "count", scope: !513, file: !3, line: 291, type: !213)
!541 = !DILocation(line: 291, column: 6, scope: !513)
!542 = !DILocalVariable(name: "errs", scope: !513, file: !3, line: 292, type: !213)
!543 = !DILocation(line: 292, column: 6, scope: !513)
!544 = !DILocalVariable(name: "i", scope: !513, file: !3, line: 293, type: !213)
!545 = !DILocation(line: 293, column: 6, scope: !513)
!546 = !DILocation(line: 295, column: 29, scope: !513)
!547 = !DILocation(line: 295, column: 14, scope: !513)
!548 = !DILocation(line: 295, column: 44, scope: !513)
!549 = !DILocation(line: 295, column: 58, scope: !513)
!550 = !DILocation(line: 295, column: 42, scope: !513)
!551 = !DILocation(line: 295, column: 12, scope: !513)
!552 = !DILocation(line: 299, column: 38, scope: !513)
!553 = !DILocation(line: 299, column: 15, scope: !513)
!554 = !DILocation(line: 299, column: 8, scope: !513)
!555 = !DILocation(line: 299, column: 13, scope: !513)
!556 = !DILocation(line: 301, column: 22, scope: !513)
!557 = !DILocation(line: 301, column: 7, scope: !513)
!558 = !DILocation(line: 301, column: 37, scope: !513)
!559 = !DILocation(line: 301, column: 35, scope: !513)
!560 = !DILocation(line: 300, column: 14, scope: !513)
!561 = !DILocation(line: 300, column: 8, scope: !513)
!562 = !DILocation(line: 300, column: 12, scope: !513)
!563 = !DILocation(line: 302, column: 17, scope: !513)
!564 = !DILocation(line: 302, column: 15, scope: !513)
!565 = !DILocation(line: 304, column: 2, scope: !513)
!566 = !DILocation(line: 304, column: 31, scope: !513)
!567 = !DILocation(line: 304, column: 10, scope: !513)
!568 = !DILocation(line: 304, column: 38, scope: !513)
!569 = !DILocation(line: 304, column: 36, scope: !513)
!570 = !DILocation(line: 304, column: 54, scope: !513)
!571 = !DILocation(line: 304, column: 52, scope: !513)
!572 = !DILocation(line: 305, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 305, column: 7)
!574 = distinct !DILexicalBlock(scope: !513, file: !3, line: 304, column: 65)
!575 = !DILocation(line: 305, column: 19, scope: !573)
!576 = !DILocation(line: 305, column: 22, scope: !573)
!577 = !DILocation(line: 305, column: 31, scope: !573)
!578 = !DILocation(line: 305, column: 28, scope: !573)
!579 = !DILocation(line: 305, column: 7, scope: !574)
!580 = !DILocation(line: 306, column: 4, scope: !573)
!581 = !DILocation(line: 308, column: 10, scope: !582)
!582 = distinct !DILexicalBlock(scope: !574, file: !3, line: 308, column: 3)
!583 = !DILocation(line: 308, column: 8, scope: !582)
!584 = !DILocation(line: 308, column: 15, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !3, line: 308, column: 3)
!586 = !DILocation(line: 308, column: 19, scope: !585)
!587 = !DILocation(line: 308, column: 17, scope: !585)
!588 = !DILocation(line: 308, column: 3, scope: !582)
!589 = !DILocation(line: 309, column: 8, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !3, line: 309, column: 8)
!591 = distinct !DILexicalBlock(scope: !585, file: !3, line: 308, column: 34)
!592 = !DILocation(line: 309, column: 39, scope: !590)
!593 = !DILocation(line: 309, column: 44, scope: !590)
!594 = !DILocation(line: 309, column: 47, scope: !590)
!595 = !DILocation(line: 309, column: 36, scope: !590)
!596 = !DILocation(line: 309, column: 8, scope: !591)
!597 = !DILocation(line: 310, column: 5, scope: !590)
!598 = !DILocation(line: 311, column: 9, scope: !599)
!599 = distinct !DILexicalBlock(scope: !591, file: !3, line: 311, column: 8)
!600 = !DILocation(line: 311, column: 14, scope: !599)
!601 = !DILocation(line: 311, column: 17, scope: !599)
!602 = !DILocation(line: 311, column: 25, scope: !599)
!603 = !DILocation(line: 312, column: 11, scope: !599)
!604 = !DILocation(line: 312, column: 16, scope: !599)
!605 = !DILocation(line: 312, column: 19, scope: !599)
!606 = !DILocation(line: 312, column: 24, scope: !599)
!607 = !DILocation(line: 312, column: 27, scope: !599)
!608 = !DILocation(line: 312, column: 41, scope: !599)
!609 = !DILocation(line: 312, column: 46, scope: !599)
!610 = !DILocation(line: 311, column: 8, scope: !591)
!611 = !DILocation(line: 313, column: 9, scope: !612)
!612 = distinct !DILexicalBlock(scope: !599, file: !3, line: 312, column: 59)
!613 = !DILocation(line: 314, column: 5, scope: !612)
!614 = !DILocation(line: 317, column: 4, scope: !591)
!615 = !DILocation(line: 317, column: 9, scope: !591)
!616 = !DILocation(line: 317, column: 12, scope: !591)
!617 = !DILocation(line: 317, column: 17, scope: !591)
!618 = !DILocation(line: 318, column: 4, scope: !591)
!619 = !DILocation(line: 308, column: 30, scope: !585)
!620 = !DILocation(line: 308, column: 3, scope: !585)
!621 = distinct !{!621, !588, !622}
!622 = !DILocation(line: 319, column: 3, scope: !582)
!623 = !DILocation(line: 320, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !574, file: !3, line: 320, column: 7)
!625 = !DILocation(line: 320, column: 12, scope: !624)
!626 = !DILocation(line: 320, column: 9, scope: !624)
!627 = !DILocation(line: 320, column: 7, scope: !574)
!628 = !DILocation(line: 321, column: 9, scope: !624)
!629 = !DILocation(line: 321, column: 4, scope: !624)
!630 = !DILocation(line: 327, column: 15, scope: !574)
!631 = !DILocation(line: 327, column: 13, scope: !574)
!632 = !DILocation(line: 328, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !574, file: !3, line: 328, column: 7)
!634 = !DILocation(line: 328, column: 17, scope: !633)
!635 = !DILocation(line: 328, column: 7, scope: !574)
!636 = !DILocation(line: 329, column: 4, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !3, line: 328, column: 23)
!638 = !DILocation(line: 330, column: 4, scope: !637)
!639 = !DILocation(line: 334, column: 29, scope: !574)
!640 = !DILocation(line: 334, column: 8, scope: !574)
!641 = !DILocation(line: 334, column: 35, scope: !574)
!642 = !DILocation(line: 334, column: 33, scope: !574)
!643 = !DILocation(line: 333, column: 15, scope: !574)
!644 = !DILocation(line: 333, column: 9, scope: !574)
!645 = !DILocation(line: 333, column: 13, scope: !574)
!646 = distinct !{!646, !565, !647}
!647 = !DILocation(line: 335, column: 2, scope: !513)
!648 = !DILocation(line: 337, column: 6, scope: !649)
!649 = distinct !DILexicalBlock(scope: !513, file: !3, line: 337, column: 6)
!650 = !DILocation(line: 337, column: 18, scope: !649)
!651 = !DILocation(line: 337, column: 21, scope: !649)
!652 = !DILocation(line: 337, column: 29, scope: !649)
!653 = !DILocation(line: 337, column: 27, scope: !649)
!654 = !DILocation(line: 337, column: 6, scope: !513)
!655 = !DILocation(line: 338, column: 3, scope: !656)
!656 = distinct !DILexicalBlock(scope: !649, file: !3, line: 337, column: 42)
!657 = !DILocation(line: 340, column: 2, scope: !656)
!658 = !DILocation(line: 342, column: 9, scope: !513)
!659 = !DILocation(line: 342, column: 26, scope: !513)
!660 = !DILocation(line: 342, column: 2, scope: !513)
!661 = !DILocation(line: 343, column: 1, scope: !513)
!662 = distinct !DISubprogram(name: "acpi_table_parse_entries", scope: !3, file: !3, line: 379, type: !663, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!663 = !DISubroutineType(types: !664)
!664 = !{!213, !214, !121, !213, !450, !7}
!665 = !DILocalVariable(name: "id", arg: 1, scope: !662, file: !3, line: 379, type: !214)
!666 = !DILocation(line: 379, column: 43, scope: !662)
!667 = !DILocalVariable(name: "table_size", arg: 2, scope: !662, file: !3, line: 380, type: !121)
!668 = !DILocation(line: 380, column: 18, scope: !662)
!669 = !DILocalVariable(name: "entry_id", arg: 3, scope: !662, file: !3, line: 381, type: !213)
!670 = !DILocation(line: 381, column: 8, scope: !662)
!671 = !DILocalVariable(name: "handler", arg: 4, scope: !662, file: !3, line: 382, type: !450)
!672 = !DILocation(line: 382, column: 27, scope: !662)
!673 = !DILocalVariable(name: "max_entries", arg: 5, scope: !662, file: !3, line: 383, type: !7)
!674 = !DILocation(line: 383, column: 17, scope: !662)
!675 = !DILocalVariable(name: "proc", scope: !662, file: !3, line: 385, type: !446)
!676 = !DILocation(line: 385, column: 28, scope: !662)
!677 = !DILocation(line: 385, column: 35, scope: !662)
!678 = !DILocation(line: 386, column: 10, scope: !662)
!679 = !DILocation(line: 387, column: 14, scope: !662)
!680 = !DILocation(line: 390, column: 40, scope: !662)
!681 = !DILocation(line: 390, column: 44, scope: !662)
!682 = !DILocation(line: 391, column: 7, scope: !662)
!683 = !DILocation(line: 390, column: 9, scope: !662)
!684 = !DILocation(line: 390, column: 2, scope: !662)
!685 = distinct !DISubprogram(name: "acpi_table_parse_madt", scope: !3, file: !3, line: 394, type: !686, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!686 = !DISubroutineType(types: !687)
!687 = !{!213, !5, !450, !7}
!688 = !DILocalVariable(name: "id", arg: 1, scope: !685, file: !3, line: 394, type: !5)
!689 = !DILocation(line: 394, column: 54, scope: !685)
!690 = !DILocalVariable(name: "handler", arg: 2, scope: !685, file: !3, line: 395, type: !450)
!691 = !DILocation(line: 395, column: 32, scope: !685)
!692 = !DILocalVariable(name: "max_entries", arg: 3, scope: !685, file: !3, line: 395, type: !7)
!693 = !DILocation(line: 395, column: 54, scope: !685)
!694 = !DILocation(line: 398, column: 42, scope: !685)
!695 = !DILocation(line: 399, column: 10, scope: !685)
!696 = !DILocation(line: 399, column: 19, scope: !685)
!697 = !DILocation(line: 397, column: 9, scope: !685)
!698 = !DILocation(line: 397, column: 2, scope: !685)
!699 = distinct !DISubprogram(name: "acpi_table_parse", scope: !3, file: !3, line: 412, type: !700, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!700 = !DISubroutineType(types: !701)
!701 = !{!213, !214, !702}
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_tbl_table_handler", file: !191, line: 137, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!213, !229}
!706 = !DILocalVariable(name: "id", arg: 1, scope: !699, file: !3, line: 412, type: !214)
!707 = !DILocation(line: 412, column: 35, scope: !699)
!708 = !DILocalVariable(name: "handler", arg: 2, scope: !699, file: !3, line: 412, type: !702)
!709 = !DILocation(line: 412, column: 62, scope: !699)
!710 = !DILocalVariable(name: "table", scope: !699, file: !3, line: 414, type: !229)
!711 = !DILocation(line: 414, column: 28, scope: !699)
!712 = !DILocation(line: 416, column: 6, scope: !713)
!713 = distinct !DILexicalBlock(scope: !699, file: !3, line: 416, column: 6)
!714 = !DILocation(line: 416, column: 6, scope: !699)
!715 = !DILocation(line: 417, column: 3, scope: !713)
!716 = !DILocation(line: 419, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !699, file: !3, line: 419, column: 6)
!718 = !DILocation(line: 419, column: 10, scope: !717)
!719 = !DILocation(line: 419, column: 14, scope: !717)
!720 = !DILocation(line: 419, column: 6, scope: !699)
!721 = !DILocation(line: 420, column: 3, scope: !717)
!722 = !DILocation(line: 422, column: 14, scope: !723)
!723 = distinct !DILexicalBlock(scope: !699, file: !3, line: 422, column: 6)
!724 = !DILocation(line: 422, column: 6, scope: !723)
!725 = !DILocation(line: 422, column: 36, scope: !723)
!726 = !DILocation(line: 422, column: 6, scope: !699)
!727 = !DILocation(line: 423, column: 18, scope: !723)
!728 = !DILocation(line: 423, column: 22, scope: !723)
!729 = !DILocation(line: 423, column: 3, scope: !723)
!730 = !DILocation(line: 425, column: 18, scope: !723)
!731 = !DILocation(line: 425, column: 3, scope: !723)
!732 = !DILocation(line: 427, column: 6, scope: !733)
!733 = distinct !DILexicalBlock(scope: !699, file: !3, line: 427, column: 6)
!734 = !DILocation(line: 427, column: 6, scope: !699)
!735 = !DILocation(line: 428, column: 3, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !3, line: 427, column: 13)
!737 = !DILocation(line: 428, column: 11, scope: !736)
!738 = !DILocation(line: 429, column: 18, scope: !736)
!739 = !DILocation(line: 429, column: 3, scope: !736)
!740 = !DILocation(line: 430, column: 3, scope: !736)
!741 = !DILocation(line: 432, column: 3, scope: !733)
!742 = !DILocation(line: 433, column: 1, scope: !699)
!743 = distinct !DISubprogram(name: "acpi_os_physical_table_override", scope: !3, file: !3, line: 749, type: !744, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!744 = !DISubroutineType(types: !745)
!745 = !{!187, !229, !746, !747}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!748 = !DILocalVariable(name: "existing_table", arg: 1, scope: !743, file: !3, line: 749, type: !229)
!749 = !DILocation(line: 749, column: 59, scope: !743)
!750 = !DILocalVariable(name: "address", arg: 2, scope: !743, file: !3, line: 750, type: !746)
!751 = !DILocation(line: 750, column: 28, scope: !743)
!752 = !DILocalVariable(name: "table_length", arg: 3, scope: !743, file: !3, line: 751, type: !747)
!753 = !DILocation(line: 751, column: 10, scope: !743)
!754 = !DILocation(line: 753, column: 36, scope: !743)
!755 = !DILocation(line: 753, column: 52, scope: !743)
!756 = !DILocation(line: 754, column: 8, scope: !743)
!757 = !DILocation(line: 753, column: 9, scope: !743)
!758 = !DILocation(line: 753, column: 2, scope: !743)
!759 = distinct !DISubprogram(name: "acpi_table_initrd_override", scope: !3, file: !3, line: 734, type: !744, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!760 = !DILocalVariable(name: "existing_table", arg: 1, scope: !759, file: !3, line: 734, type: !229)
!761 = !DILocation(line: 734, column: 54, scope: !759)
!762 = !DILocalVariable(name: "address", arg: 2, scope: !759, file: !3, line: 735, type: !746)
!763 = !DILocation(line: 735, column: 30, scope: !759)
!764 = !DILocalVariable(name: "table_length", arg: 3, scope: !759, file: !3, line: 736, type: !747)
!765 = !DILocation(line: 736, column: 12, scope: !759)
!766 = !DILocation(line: 738, column: 3, scope: !759)
!767 = !DILocation(line: 738, column: 16, scope: !759)
!768 = !DILocation(line: 739, column: 3, scope: !759)
!769 = !DILocation(line: 739, column: 11, scope: !759)
!770 = !DILocation(line: 740, column: 2, scope: !759)
!771 = distinct !DISubprogram(name: "acpi_os_table_override", scope: !3, file: !3, line: 762, type: !772, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!772 = !DISubroutineType(types: !773)
!773 = !{!187, !229, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!775 = !DILocalVariable(name: "existing_table", arg: 1, scope: !771, file: !3, line: 762, type: !229)
!776 = !DILocation(line: 762, column: 62, scope: !771)
!777 = !DILocalVariable(name: "new_table", arg: 2, scope: !771, file: !3, line: 763, type: !774)
!778 = !DILocation(line: 763, column: 37, scope: !771)
!779 = !DILocation(line: 765, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !771, file: !3, line: 765, column: 6)
!781 = !DILocation(line: 765, column: 22, scope: !780)
!782 = !DILocation(line: 765, column: 26, scope: !780)
!783 = !DILocation(line: 765, column: 6, scope: !771)
!784 = !DILocation(line: 766, column: 3, scope: !780)
!785 = !DILocation(line: 768, column: 3, scope: !771)
!786 = !DILocation(line: 768, column: 13, scope: !771)
!787 = !DILocation(line: 777, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !771, file: !3, line: 777, column: 6)
!789 = !DILocation(line: 777, column: 6, scope: !788)
!790 = !DILocation(line: 777, column: 17, scope: !788)
!791 = !DILocation(line: 777, column: 6, scope: !771)
!792 = !DILocation(line: 778, column: 20, scope: !788)
!793 = !DILocation(line: 778, column: 3, scope: !788)
!794 = !DILocation(line: 779, column: 2, scope: !771)
!795 = !DILocation(line: 780, column: 1, scope: !771)
!796 = distinct !DISubprogram(name: "acpi_table_taint", scope: !3, file: !3, line: 459, type: !797, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !229}
!799 = !DILocalVariable(name: "table", arg: 1, scope: !796, file: !3, line: 459, type: !229)
!800 = !DILocation(line: 459, column: 56, scope: !796)
!801 = !DILocation(line: 461, column: 2, scope: !796)
!802 = !DILocation(line: 463, column: 2, scope: !796)
!803 = !DILocation(line: 464, column: 1, scope: !796)
!804 = distinct !DISubprogram(name: "acpi_table_init", scope: !3, file: !3, line: 791, type: !805, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !296)
!805 = !DISubroutineType(types: !806)
!806 = !{!213}
!807 = !DILocalVariable(name: "status", scope: !804, file: !3, line: 793, type: !187)
!808 = !DILocation(line: 793, column: 14, scope: !804)
!809 = !DILocation(line: 795, column: 6, scope: !810)
!810 = distinct !DILexicalBlock(scope: !804, file: !3, line: 795, column: 6)
!811 = !DILocation(line: 795, column: 6, scope: !804)
!812 = !DILocation(line: 796, column: 3, scope: !813)
!813 = distinct !DILexicalBlock(scope: !810, file: !3, line: 795, column: 34)
!814 = !DILocation(line: 797, column: 36, scope: !813)
!815 = !DILocation(line: 798, column: 2, scope: !813)
!816 = !DILocation(line: 799, column: 3, scope: !817)
!817 = distinct !DILexicalBlock(scope: !810, file: !3, line: 798, column: 9)
!818 = !DILocation(line: 800, column: 36, scope: !817)
!819 = !DILocation(line: 803, column: 11, scope: !804)
!820 = !DILocation(line: 803, column: 9, scope: !804)
!821 = !DILocation(line: 804, column: 6, scope: !822)
!822 = distinct !DILexicalBlock(scope: !804, file: !3, line: 804, column: 6)
!823 = !DILocation(line: 804, column: 6, scope: !804)
!824 = !DILocation(line: 805, column: 3, scope: !822)
!825 = !DILocation(line: 806, column: 2, scope: !804)
!826 = !DILocation(line: 808, column: 2, scope: !804)
!827 = !DILocation(line: 809, column: 2, scope: !804)
!828 = !DILocation(line: 810, column: 1, scope: !804)
!829 = distinct !DISubprogram(name: "acpi_table_initrd_scan", scope: !3, file: !3, line: 743, type: !830, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!830 = !DISubroutineType(types: !831)
!831 = !{null}
!832 = !DILocation(line: 745, column: 1, scope: !829)
!833 = distinct !DISubprogram(name: "check_multiple_madt", scope: !3, file: !3, line: 440, type: !830, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!834 = !DILocalVariable(name: "table", scope: !833, file: !3, line: 442, type: !229)
!835 = !DILocation(line: 442, column: 28, scope: !833)
!836 = !DILocation(line: 444, column: 2, scope: !833)
!837 = !DILocation(line: 445, column: 6, scope: !838)
!838 = distinct !DILexicalBlock(scope: !833, file: !3, line: 445, column: 6)
!839 = !DILocation(line: 445, column: 6, scope: !833)
!840 = !DILocation(line: 446, column: 3, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !3, line: 445, column: 13)
!842 = !DILocation(line: 448, column: 3, scope: !841)
!843 = !DILocation(line: 451, column: 18, scope: !841)
!844 = !DILocation(line: 451, column: 3, scope: !841)
!845 = !DILocation(line: 453, column: 2, scope: !841)
!846 = !DILocation(line: 454, column: 22, scope: !838)
!847 = !DILocation(line: 456, column: 2, scope: !833)
!848 = distinct !DISubprogram(name: "acpi_parse_apic_instance", scope: !3, file: !3, line: 812, type: !211, scopeLine: 813, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!849 = !DILocalVariable(name: "str", arg: 1, scope: !848, file: !3, line: 812, type: !214)
!850 = !DILocation(line: 812, column: 50, scope: !848)
!851 = !DILocation(line: 814, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !3, line: 814, column: 6)
!853 = !DILocation(line: 814, column: 6, scope: !848)
!854 = !DILocation(line: 815, column: 3, scope: !852)
!855 = !DILocation(line: 817, column: 16, scope: !856)
!856 = distinct !DILexicalBlock(scope: !848, file: !3, line: 817, column: 6)
!857 = !DILocation(line: 817, column: 6, scope: !856)
!858 = !DILocation(line: 817, column: 6, scope: !848)
!859 = !DILocation(line: 818, column: 3, scope: !856)
!860 = !DILocation(line: 820, column: 2, scope: !848)
!861 = !DILocation(line: 822, column: 2, scope: !848)
!862 = !DILocation(line: 823, column: 1, scope: !848)
!863 = distinct !DISubprogram(name: "acpi_force_table_verification_setup", scope: !3, file: !3, line: 826, type: !211, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!864 = !DILocalVariable(name: "s", arg: 1, scope: !863, file: !3, line: 826, type: !214)
!865 = !DILocation(line: 826, column: 61, scope: !863)
!866 = !DILocation(line: 828, column: 29, scope: !863)
!867 = !DILocation(line: 830, column: 2, scope: !863)
!868 = distinct !DISubprogram(name: "acpi_force_32bit_fadt_addr", scope: !3, file: !3, line: 834, type: !211, scopeLine: 835, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!869 = !DILocalVariable(name: "s", arg: 1, scope: !868, file: !3, line: 834, type: !214)
!870 = !DILocation(line: 834, column: 52, scope: !868)
!871 = !DILocation(line: 836, column: 2, scope: !868)
!872 = !DILocation(line: 837, column: 36, scope: !868)
!873 = !DILocation(line: 839, column: 2, scope: !868)
!874 = distinct !DISubprogram(name: "acpi_get_subtable_type", scope: !3, file: !3, line: 254, type: !875, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!875 = !DISubroutineType(types: !876)
!876 = !{!26, !214}
!877 = !DILocalVariable(name: "id", arg: 1, scope: !874, file: !3, line: 254, type: !214)
!878 = !DILocation(line: 254, column: 30, scope: !874)
!879 = !DILocation(line: 256, column: 14, scope: !880)
!880 = distinct !DILexicalBlock(scope: !874, file: !3, line: 256, column: 6)
!881 = !DILocation(line: 256, column: 6, scope: !880)
!882 = !DILocation(line: 256, column: 36, scope: !880)
!883 = !DILocation(line: 256, column: 6, scope: !874)
!884 = !DILocation(line: 257, column: 3, scope: !880)
!885 = !DILocation(line: 258, column: 2, scope: !874)
!886 = !DILocation(line: 259, column: 1, scope: !874)
!887 = distinct !DISubprogram(name: "acpi_get_subtable_header_length", scope: !3, file: !3, line: 242, type: !888, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!888 = !DISubroutineType(types: !889)
!889 = !{!121, !890}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!891 = !DILocalVariable(name: "entry", arg: 1, scope: !887, file: !3, line: 242, type: !890)
!892 = !DILocation(line: 242, column: 61, scope: !887)
!893 = !DILocation(line: 244, column: 10, scope: !887)
!894 = !DILocation(line: 244, column: 17, scope: !887)
!895 = !DILocation(line: 244, column: 2, scope: !887)
!896 = !DILocation(line: 246, column: 3, scope: !897)
!897 = distinct !DILexicalBlock(scope: !887, file: !3, line: 244, column: 23)
!898 = !DILocation(line: 248, column: 3, scope: !897)
!899 = !DILocation(line: 250, column: 2, scope: !887)
!900 = !DILocation(line: 251, column: 1, scope: !887)
!901 = distinct !DISubprogram(name: "acpi_get_entry_type", scope: !3, file: !3, line: 218, type: !888, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!902 = !DILocalVariable(name: "entry", arg: 1, scope: !901, file: !3, line: 218, type: !890)
!903 = !DILocation(line: 218, column: 49, scope: !901)
!904 = !DILocation(line: 220, column: 10, scope: !901)
!905 = !DILocation(line: 220, column: 17, scope: !901)
!906 = !DILocation(line: 220, column: 2, scope: !901)
!907 = !DILocation(line: 222, column: 10, scope: !908)
!908 = distinct !DILexicalBlock(scope: !901, file: !3, line: 220, column: 23)
!909 = !DILocation(line: 222, column: 17, scope: !908)
!910 = !DILocation(line: 222, column: 22, scope: !908)
!911 = !DILocation(line: 222, column: 29, scope: !908)
!912 = !DILocation(line: 222, column: 3, scope: !908)
!913 = !DILocation(line: 224, column: 10, scope: !908)
!914 = !DILocation(line: 224, column: 17, scope: !908)
!915 = !DILocation(line: 224, column: 22, scope: !908)
!916 = !DILocation(line: 224, column: 27, scope: !908)
!917 = !DILocation(line: 224, column: 3, scope: !908)
!918 = !DILocation(line: 226, column: 2, scope: !901)
!919 = !DILocation(line: 227, column: 1, scope: !901)
!920 = distinct !DISubprogram(name: "acpi_get_entry_length", scope: !3, file: !3, line: 230, type: !888, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !296)
!921 = !DILocalVariable(name: "entry", arg: 1, scope: !920, file: !3, line: 230, type: !890)
!922 = !DILocation(line: 230, column: 51, scope: !920)
!923 = !DILocation(line: 232, column: 10, scope: !920)
!924 = !DILocation(line: 232, column: 17, scope: !920)
!925 = !DILocation(line: 232, column: 2, scope: !920)
!926 = !DILocation(line: 234, column: 10, scope: !927)
!927 = distinct !DILexicalBlock(scope: !920, file: !3, line: 232, column: 23)
!928 = !DILocation(line: 234, column: 17, scope: !927)
!929 = !DILocation(line: 234, column: 22, scope: !927)
!930 = !DILocation(line: 234, column: 29, scope: !927)
!931 = !DILocation(line: 234, column: 3, scope: !927)
!932 = !DILocation(line: 236, column: 10, scope: !927)
!933 = !DILocation(line: 236, column: 17, scope: !927)
!934 = !DILocation(line: 236, column: 22, scope: !927)
!935 = !DILocation(line: 236, column: 27, scope: !927)
!936 = !DILocation(line: 236, column: 3, scope: !927)
!937 = !DILocation(line: 238, column: 2, scope: !920)
!938 = !DILocation(line: 239, column: 1, scope: !920)
